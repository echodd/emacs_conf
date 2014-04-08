(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)


;; load .h
(defconst user-include-dirs
  (list "/usr/include" 
        "/usr/local/include" 
        "/usr/lib/gcc/x86_64-linux-gnu/4.4.5/include" 
        "/usr/lib/gcc/x86_64-linux-gnu/4.4.5/include-fixed" 
        "/usr/include/x86_64-linux-gnu"
        "/usr/include/gtk-2.0"
        "/usr/include/bits"
        "/usr/include/glib-2.0"
        "/usr/include/pango-1.0"))

(require 'auto-complete-clang)
(define-key ac-mode-map  [(control tab)] 'auto-complete) 
(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
(setq ac-clang-auto-save t)
;; ac-clang-flags
(setq ac-clang-flags
      (mapcar (lambda (item)(concat "-I" item))
              user-include-dirs))
;; my-ac-config
(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
;; my-ac-cc-mode-setup
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
(add-hook 'c++-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config) 
