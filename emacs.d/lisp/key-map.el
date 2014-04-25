;;代码折叠
(semantic-mode 1)
;;折叠和打开整个buffer的所有代码
(global-set-key (kbd "C--") 'hs-hide-all)
(global-set-key (kbd "C-=") 'hs-show-all)
;;折叠和打开单个buffer的所有代码
(global-set-key (kbd "C-_") 'hs-hide-block)
(global-set-key (kbd "C-+") 'hs-show-block)
(hide-ifdef-mode 1)
;;折叠和打开整个ifdef的所有代码
(global-set-key (kbd "M--")'hide-ifdefs)
(global-set-key (kbd "M-=")'show-ifdefs)
;;折叠和打开单个ifdef的所有代码
(global-set-key (kbd "M-_") 'hide-ifdef-block)
(global-set-key (kbd "M-+")'show-ifdef-block)
;;全局查找定义
(global-set-key (kbd "M-n")'cscope-find-global-definition)
;;返回上次查找点
(global-set-key (kbd "M-m")'cscope-pop-mark)

(require 'redo)
(global-set-key ( kbd "C-.") 'redo)

;;f3为查找字符串,alt+f3关闭当前缓冲区
(global-set-key [f3] 'grep-o-matic-current-directory)
(global-set-key [M-f3] 'kill-this-buffer)

;;.emacs中设一个speedbar的快捷键
(global-set-key [(f4)] 'speedbar-get-focus)

;;F5显示/隐藏工具栏 方便调试
(global-set-key [f5] 'tool-bar-mode)
;;ctrl-F5显示/隐藏菜单栏 ;; M-x menu-bar-open
(global-set-key [C-f5] 'menu-bar-mode)

(global-set-key [f6] 'gdb)

;;  C-f7, 设置编译命令; f7, 保存所有文件然后编译当前窗口文件
(defun du-onekey-compile ()
  "Save buffers and start compile"
  (interactive)
  (save-some-buffers t)
  (switch-to-buffer-other-window "*compilation*")
  (compile compile-command))
  
(setq-default compile-command "make")    
(global-set-key [C-f7] 'compile)
(global-set-key [f7] 'du-onekey-compile)
 
(global-set-key [C-f8] 'shell)
 
 ;;设置F10为撤销
(global-set-key [C-f10] 'undo)
;;ecb 相关操作，
(global-set-key [C-f11] 'ecb-activate)
(global-set-key [M-f11] 'ecb-show-ecb-windows)
(global-set-key [S-f11] 'ecb-hide-ecb-windows)


;;设置C-F12 快速察查看书签
(global-set-key [C-f12] 'list-bookmarks)
;;F12调到函数定义
;;函数跳转功能
(global-set-key [f12] 'semantic-ia-fast-jump)
;; semantic toggle, Tag information  
(require 'semantic/ia)  
(setq-mode-local c-mode semanticdb-find-default-throttle  
         '(project unloaded system recursive))  
(setq-mode-local c++-mode semanticdb-find-default-throttle  
         '(project unloaded system recursive))


;;设置M-g为goto-line
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-c") 'goto-char)
;;设置home键指向buffer开头，end键指向buffer结尾
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)

;;关闭其他窗口,alt+1
(global-set-key (kbd "M-1") 'delete-other-windows)
;;水平分割窗口,alt+2
(global-set-key (kbd "M-2") 'split-window-vertically)
;;垂直分割窗口,alt+3
(global-set-key (kbd "M-3") 'split-window-horizontally)

;;窗口焦点切换
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c j") 'windmove-up)
(global-set-key (kbd "C-c k") 'windmove-down)
;;窗口大小变化
(global-set-key (kbd "M-9") 'enlarge-window)
(global-set-key (kbd "M-0") 'shrink-window)
(global-set-key (kbd "M-(") 'enlarge-window-horizontally)
(global-set-key (kbd "M-)") 'shrink-window-horizontally)

(require 'tabbar)
(tabbar-mode 1)
(global-set-key (kbd "C-,") 'tabbar-backward)
(global-set-key (kbd "C-.") 'tabbar-forward)
(global-set-key (kbd "M-,") 'tabbar-backward-group)
(global-set-key (kbd "M-.") 'tabbar-forward-group)
(global-set-key [C-f0] 'serial-term);迷你终端



(defun my-copy-word()
  "复制光标所在处的单词"
  (interactive)
  (setq old-pos (point))
  
  (forward-word)
  (backward-word)
  (setq pos1 (point))
  (forward-word)
  (setq pos2 (point))
  
  (kill-ring-save pos1 pos2)
  (goto-char old-pos)
  (message "copy word %i %i" pos1 pos2))

(defun my-copy-identifier()
  "复制光标所在处的标识符"
  (interactive)
  (setq old-pos (point))

  (c-beginning-of-current-token)
  (setq pos1 (point))
  (goto-char (+ (point) 1))
  (c-end-of-current-token)
  (setq pos2 (point))
  
  (kill-ring-save pos1 pos2)
  (goto-char old-pos)
  (message "copy identifier %i %i" pos1 pos2))
  
  ;;;; 当输入"."或">"时，在另一个窗口中列出结构体或类的成员
(defun my-c-mode-ac-complete-hook ()
	(local-set-key "." 'semantic-complete-self-insert) 
	(local-set-key ">" 'semantic-complete-self-insert))
(add-hook 'c-mode-common-hook 'my-c-mode-ac-complete-hook)

;;设置google 翻译快捷键 ，源语言-目标语言
(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "zh-CN")
(global-set-key (kbd "C-c a") 'google-translate-at-point)
;;设置天气预报快捷键，天气预报经纬度
(setq weather-metno-location-name "beijing"
      weather-metno-location-latitude 39
      weather-metno-location-longitude 116)
(global-set-key (kbd "C-c e") 'weather-metno-forecast)
