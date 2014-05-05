
;;======================================================================
;;状态栏
;;======================================================================
;;显示时间
;;(display-time)
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
(setq display-time-24hr-format t);;时间使用24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间
;;(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置
(setq display-time-interval 10);;时间的变化频率，单位多少来着？

;;显示列号
(setq column-number-mode t)
;;显示标题栏 %f 缓冲区完整路径 %p 页面百分数 %l 行号
(setq frame-title-format "%f")

;;=======================================================================
;;缓冲区
;;=====================================================================
;;设定行距
(setq default-line-spaceing 4)
;;页宽
(setq default-fill-column 60)
;;缺省模式 text-mode
;;(setq default-major-mode 'text-mode)
;;设置删除记录
(setq kill-ring-max 200)
;;以空行结束
;;(setq require-final-newline t)
;;开启语法高亮。
(global-font-lock-mode 1)
;;高亮显示区域选择
(transient-mark-mode t)
;;高亮显示成对括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;鼠标指针避光标
(mouse-avoidance-mode 'animate)
;;粘贴于光标处,而不是鼠标指针处
(setq mouse-yank-at-point t)

;;=======================================================================
;;回显区
;;=======================================================================
;;闪屏报警
(setq visible-bell t)
;;使用y or n提问
(fset 'yes-or-no-p 'y-or-n-p)
;;锁定行高
(setq resize-mini-windows nil)
;;递归minibuffer
(setq enable-recursive-minibuffers t)
;;当使用M-x COMMAND后，过1秒显示该COMMAND绑定的键
(setq suggest-key-bindings-1)   ;;默认？

;;======================================================================
;;编辑器的设定
;;======================================================================
;;不产生备份文件
(setq make-backup-files nil)
;;不生成临时文件
(setq-default make-backup-files nil)
;;只渲染当前屏幕语法高亮，加快显示速度
(setq lazy-lock-defer-on-scrolling t)
;;(setq font-lock-support-mode 'lazy-lock-mode)
(setq font-lock-maximum-decoration t)
;; ;;将错误信息显示在回显区
;; (condition-case err
;; 	(progn
;; 	  (require 'xxx))
;;   (error
;;    (message "Can't load xxx-mode %s" (cdr err))))
;;使用X剪贴板
(setq x-select-enable-clipboard t)
;;设定剪贴板的内容格式 适应Firefox
(set-clipboard-coding-system 'ctext)

;;设置TAB宽度为4
(setq default-tab-width 4) 
;;以下设置缩进
;;用tab缩进
(setq indent-tabs-mode t)
(setq c-indent-level 4)
(setq c-continued-statement-offset 4)
(setq c-brace-offset -4)
(setq c-argdecl-indent 4)
(setq c-label-offset -4)
(setq c-basic-offset 4)
(global-set-key "\C-m" 'reindent-then-newline-and-indent)


;;===============================================================
;;外观设置
;;===============================================================
;; 去掉滚动条
(set-scroll-bar-mode nil)
;;关闭开启画面
(setq inhibit-startup-message t)
;;禁用工具栏
(tool-bar-mode nil)
;;禁用菜单栏
;;(menu-bar-mode nil)

;;-------------ibuffer,查看bufer
(require 'ibuffer)
(global-set-key ( kbd "C-x C-b")' ibuffer)

;;自动重载更改的文件
(global-auto-revert-mode 1)
;;custome的风格改为单一的树状风格
(setq custom-buffer-style 'brackets)

;;ido的配置,这个可以使你在用C-x C-f打开文件的时候在后面有提示;
;;这里是直接打开了ido的支持，在emacs23中这个是自带的.
(require 'ido)
(ido-mode t)

;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;可以递归的使用 minibuffer
(setq enable-recursive-minibuffers t)

;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文
(setq scroll-margin 3  scroll-conservatively 10000)

;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill) 

;; 当有两个文件名相同的缓冲时，使用前缀的目录名做 buffer 名字，不用原来的foobar<?> 形式。
;;(setq uniquify-buffer-name-style 'forward);;好像没起作用

;; 在行首 C-k 时，同时删除该行。
(setq-default kill-whole-line t)

;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码
(add-hook 'comint-output-filter-functions
      'comint-watch-for-password-prompt)

;;把这些缺省禁用的功能打开
(put 'scroll-left 'disabled nil)     ;允许屏幕左移
(put 'scroll-right 'disabled nil)    ;允许屏幕右移
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil) 
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;;使用鼠标中键可以粘贴
(setq mouse-yank-at-point t)

;; 自动的在文件末增加一新行
(setq require-final-newline t)

;;Non-nil if Transient-Mark mode is enabled.
(setq-default transient-mark-mode t)

;; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq track-eol t)

;; 当浏览 man page 时，直接跳转到 man buffer。
(setq Man-notify-method 'pushy)

;;Emacs 21 中已经是缺省设置。按 C-n 或向下键时不添加新行。
(setq next-line-add-newlines nil)

(setq speedbar-show-unknown-files t);;可以显示所有目录以及文件
;;(setq dframe-update-speed nil);;不自动刷新，手动 g 刷新
(setq speedbar-update-flag nil)
(setq speedbar-use-images nil);;不使用 image 的方式
(setq speedbar-verbosity-level 0)

;;让 dired 可以递归的拷贝和删除目录。
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;; 设置时间戳，标识出最后一次保存文件的时间。
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S chenyang")

;; 高亮当前行
(global-hl-line-mode 1)
                
;====================== rect-mark设置 =========================
;; 按下shift拖拽鼠标即可选择矩形区域
;; Support for marking a rectangle of text with highlighting.
(require 'rect-mark)
(define-key ctl-x-map "r\C-@" 'rm-set-mark)
(define-key ctl-x-map [?r ?\C-\ ] 'rm-set-mark)
(define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
(define-key ctl-x-map "r\C-w" 'rm-kill-region)
(define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
(define-key global-map [S-down-mouse-1] 'rm-mouse-drag-region)
(autoload 'rm-set-mark "rect-mark"
  "Set mark for rectangle." t)
(autoload 'rm-exchange-point-and-mark "rect-mark"
  "Exchange point and mark for rectangle." t)
(autoload 'rm-kill-region "rect-mark"
  "Kill a rectangular region and save it in the kill ring." t)
(autoload 'rm-kill-ring-save "rect-mark"
  "Copy a rectangular region to the kill ring." t)
(autoload 'rm-mouse-drag-region "rect-mark"
  "Drag out a rectangular region with the mouse." t)

;; Use this section in your "~/.emacs" to modify picture mode so that
;; it automatically uses the rect-mark equivalents of many commands.

;; One vision of a better picture mode.
(add-hook 'picture-mode-hook 'rm-example-picture-mode-bindings)
(autoload 'rm-example-picture-mode-bindings "rect-mark"
  "Example rect-mark key and mouse bindings for picture mode.")

;=====================  rect-mark设置结束 =========================
;
(setq ediff-split-window-function (quote split-window-horizontally))
(setq default-frame-alist
 '((height . 35)(width . 100)(menubar-lines . 20)(tool-bar-lines . 0)))
 
 ;;配置Semantic搜索范围
(setq semanticdb-project-roots
	  (list
	   (expand-file-name "/")))
;;自定义补全命令，如果单词在中间就补全，否则就tab
(defun my-indent-or-complete()
  (interactive)
  (if (looking-at "\\>")
	  (hippie-expand nil)
	  (indent-for-tab-command))
  )
;;补全快捷键，ctrl+tab用senator补全，不显示列表
;;alt+/补全，显示列表让选择
(global-set-key [(control tab)] 'my-indent-or-complete)
(autoload 'senator-try-expand-semantic "senator")
(setq hippie-expand-try-functions-list
	  '(
		senator-try-expand-semantic
		try-expand-dabbrev
		try-expand-dabbrev-visible
		try-expand-dabbrev-all-buffers
		try-expand-dabbrev-from-kill
		try-expand-list
		try-expand-list-all-buffers
		try-expand-line
		try-expand-line-all-buffers
		try-complete-file-name-partially
		try-complete-file-name
		try-expand-whole-kill
		)
	  )
(global-linum-mode 'linum-mode);;在左边显示行号	  

; 退出gdb的时候关闭gdb对应的buffer
(add-hook 'gdb-mode-hook 'kill-buffer-when-shell-command-exit)
;; 退出term的时候关闭term对应的buffer
;(add-hook 'term-mode-hook 'kill-buffer-when-shell-command-exit)


(defun my-common-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist  '(
    (? ? _ "''")
    (? ? _ """")
    (? ?  _ "()")
    (? ?  _ "[]")
    (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-common-mode-auto-pair)
(add-hook 'c++-mode-hook 'my-common-mode-auto-pair)
(add-hook 'lisp-mode-hook 'my-common-mode-auto-pair)
(add-hook 'text-mode-hook 'my-common-mode-auto-pair)
 
(setq x-select-enable-clipboard 1);支持emacs和外部程序的粘贴

(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(setq backward-delete-char-untabify-method nil) 

(setq indent-tabs-mode nil)  
(setq default-tab-width 4)  
(setq tab-width 4)  
(setq track-eol t)
(setq org-export-with-smart-quotes t)


(eval-after-load 'ox-html
  '(add-to-list 'org-export-filter-final-output-functions
             'fan/org-html-produce-inline-html))
(defun fan/org-html-produce-inline-html (string backend info)
  "replace < to < and > to >"
  (when (and (org-export-derived-backend-p backend 'html)
             (string-match "!!!!!" string))
    (replace-regexp-in-string (rx  (= 5 "!")
                                   (group (+? anything))
                                   (= 5 "@"))
                              "<\\1>"
                              string)))
   ;; use apsell as ispell backend
(setq-default ispell-program-name "aspell")
;; use American English as ispell default dictionary
(ispell-change-dictionary "american" t)                      
;;跟新3个下载包源
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("elpa" . "http://tromey.com/elpa/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)


(defun zxd-kill-ring-save (&optional n)
"If region is active, copy region. Otherwise, copy line."
(interactive "p")
(if mark-active
(kill-ring-save (region-beginning) (region-end))
(if (> n 0)
(kill-ring-save (line-beginning-position)
(line-end-position n))
(kill-ring-save (line-beginning-position n)
(line-end-position)))))
(global-set-key (kbd "M-w") 'zxd-kill-ring-save)


