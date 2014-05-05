(require 'auto-complete-config)

;;; Code:

(defun get-include-dirs ()
  (let* ((command-result (shell-command-to-string "echo \"\" | g++ -v -x c++ -E -"))
         (start-string "#include <...> search starts here:\n")
         (end-string "End of search list.\n")
         (start-pos (string-match start-string command-result))
         (end-pos (string-match end-string command-result))
         (include-string (substring command-result (+ start-pos (length start-string)) end-pos)))
    (split-string include-string)))

(add-hook
 'c-mode-common-hook
 '(lambda ()
    (require 'auto-complete-c-headers)
    (require 'auto-complete-clang)
    (setq ac-sources (append '(ac-source-c-headers ac-source-clang) ac-sources))
    (setq ac-clang-flags
          (mapcar (lambda (item) (concat "-I" item)) (get-include-dirs)))
    ))

(provide 'auto-complete-clang-extension)
