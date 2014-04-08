(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/plugins/git-emacs/")
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.3.1/")
(add-to-list 'load-path "~/.emacs.d/elpa/org-20131209/")
(add-to-list 'load-path "~/.emacs.d/elpa/google-translate-20131124.1319/")
(add-to-list 'load-path "~/.emacs.d/elpa/ecb-20131116.1319/")
(add-to-list 'load-path "~/.emacs.d/elpa/alect-themes-20140106.1045/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/alect-themes-20140106.1045/")
(add-to-list 'load-path "~/.emacs.d/elpa/alpha-1.0/")
(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree-20140110.616/")
(add-to-list 'load-path "~/.emacs.d/elpa/workgroups-20110726.941/")
(require 'cal-china-x)
(setq mark-holidays-in-calendar t)
(setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
(setq calendar-holidays cal-china-x-important-holidays)
(require 'undo-tree)
;;(global-undo-tree-mode)
(require 'alpha)
(require 'auto-complete-config)
(ac-config-default)
(require 'ecb)
(require 'google-translate)
(require 'git-emacs)
(require 'xcscope)
(require 'color-theme)
(require 'bar-cursor);; 可以把光标由方块变成一个小长条
(require 'gud-settings)
(require 'gdb-mi)
(require 'ox-html)
(require 'workgroups)
;(load "chinese-calendar.el")
(load "speed-bar.el")
(load "base.el")
(load "key-map.el")
(load "auto-complete.el")
;(load "my_gmail.el")
(load "my-org.el")
(require 'package)
(load "my-desktop.el")
(require 'my-desktop)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("e585a0b60621dc3f912f6fa77a547693a614616974de303a7ab58acca076f55d" default)))
 '(emms-mode-line-icon-image-cache (quote (image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #528d8d\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };")))
 '(fci-rule-color "#f6f0e1")
 '(gnus-logo-colors (quote ("#0d7b72" "#bdbdbd")))
 '(gnus-mode-line-image-cache (quote (image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #528d8d\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };")))
 '(vc-annotate-background "#f6f0e1")
 '(vc-annotate-color-map (quote ((20 . "#e43838") (40 . "#f71010") (60 . "#ab9c3a") (80 . "#838a0b") (100 . "#ef8300") (120 . "#a0682d") (140 . "#1c9e28") (160 . "#3cb368") (180 . "#028902") (200 . "#008b45") (220 . "#077707") (240 . "#409e9f") (260 . "#528d8d") (280 . "#1fb3b3") (300 . "#2c53ca") (320 . "#0000ff") (340 . "#0505cc") (360 . "#a020f0"))))
 '(vc-annotate-very-old-color "#a020f0"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
