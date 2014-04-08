(defun kill-buffer-when-exit ()
"Close assotiated buffer when a process exited"
(let ((current-process (ignore-errors (get-buffer-process (current-buffer)))))
(when current-process
(set-process-sentinel current-process
(lambda (watch-process change-state)
(when (string-match "\\(finished\\|exited\\)" change-state)
(kill-buffer (process-buffer watch-process))))))))
(add-hook 'gdb-mode-hook 'kill-buffer-when-exit)
(add-hook 'term-mode-hook 'kill-buffer-when-exit)
