(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
(setq display-time-24hr-format t);;时间使用24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间
(setq display-time-interval 10);;时间的变化频率，单位多少来着？


;;显示列号
(setq column-number-mode t)
(setq linum-mode t)

;;显示标题栏 %f 缓冲区完整路径 %p 页面百分数 %l 行号
(setq frame-title-format "%f")
(autoload 'speedbar-frame-mode "speedbar" "Popup a speedbar frame" t)
(autoload 'speedbar-get-focus "speedbar" "Jump to speedbar frame" t)

;;主浮页和speedbar浮页之间的切换快捷键——不用设置，因为系统本身可以使用M-Tab来实现

;;设置speedbar默认出现在左侧
(add-hook 'speedbar-mode-hook
    (lambda ()
     (auto-raise-mode 1)
     (add-to-list 'speedbar-frame-parameters '(top . 0))
     (add-to-list 'speedbar-frame-parameters '(left . 0))
     ))
;显示所有文件
(setq speedbar-show-unknown-files t)
;;设置tags排列顺序为按照出现的先后次序排列
(setq speedbar-tag-hierarchy-method '(speedbar-prefix-group-tag-hierarchy))
(setq c-default-style "linux"
         c-basic-offset 4)

        
