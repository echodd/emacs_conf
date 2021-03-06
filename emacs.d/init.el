(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'package) 
(setq package-archives '( 
						 ("gnu" . "http://elpa.gnu.org/packages/")  
						 ("melpa" . "http://melpa.milkbox.net/packages/") 
						 ("marmalade" . "http://marmalade-repo.org/packages/") 
						 )) 
(package-initialize) 

(when (not package-archive-contents) (package-refresh-contents)) 
(defvar my-packages  
  '(alpha alect-themes auto-complete undo-tree google-maps google-translate weather-metno workgroups2 org ecb auto-complete-c-headers ample-zen-theme grep-o-matic ) 
  "A list of packages to ensure are installed at launch." 
  ) 

(dolist (p my-packages) 
  (when (not (package-installed-p p)) 
    (package-install p) 
	))

(add-to-list 'load-path "~/.emacs.d/plugins/git-emacs/")
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete/")
(add-to-list 'load-path "~/.emacs.d/plugins/popup/")
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-c-headers/")
(require 'auto-complete-c-headers)
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(require 'yasnippet)
(yas/global-mode 1)
(yas/minor-mode-on)
(setq yas/root-directory "~/.emacs.d/plugins/yasnippet/snippets")
(yas/load-directory yas/root-directory)
(add-to-list 'load-path "~/.emacs.d/plugins/org/")
(add-to-list 'load-path "~/.emacs.d/plugins/google-translate/")
(add-to-list 'load-path "~/.emacs.d/plugins/ecb/")
(add-to-list 'load-path "~/.emacs.d/plugins/alect-themes/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/plugins/alect-themes/")
(add-to-list 'load-path "~/.emacs.d/plugins/alpha/")
(add-to-list 'load-path "~/.emacs.d/plugins/undo-tree/")
(add-to-list 'load-path "~/.emacs.d/plugins/workgroups2/")
(add-to-list 'load-path "~/.emacs.d/plugins/google-maps/")
(add-to-list 'load-path "~/.emacs.d/plugins/weather-metno/")
(require 'google-maps)
(require 'weather-metno)
(require 'cal-china-x)
(setq mark-holidays-in-calendar t)
(setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
(setq calendar-holidays cal-china-x-important-holidays)
(require 'undo-tree)
;(global-undo-tree-mode)
(require 'alpha)
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(require 'ecb)
(require 'google-translate)
(require 'git-emacs)
(require 'xcscope)
(require 'color-theme)
(require 'bar-cursor)
(require 'gud-settings)
(require 'gdb-mi)
(require 'ox-html)
(require 'workgroups2)
(load "speed-bar.el")
(load "base.el")
(load "key-map.el")
(load "my-auto-complete.el")
(load "my-mail.el")
(load "my-org.el")
(require 'package)
(load "my-desktop.el")
(require 'my-desktop)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "e585a0b60621dc3f912f6fa77a547693a614616974de303a7ab58acca076f55d" default)))
 '(ecb-options-version "2.40")
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
 '(git-baseline-alist (quote (("/home/zxd/work/Hip_DragonFly/Hip_DragonFly/3025.3/LINUX/android/hardware/qcom/sensors/" . "caf/LNX.LA.2.7.3") ("/home/zxd/work/Hip_DragonFly/Hip_DragonFly/3025.3/LINUX/android/hardware/qcom/bt/" . "caf/LNX.LA.2.7.3"))) t)
 '(gnus-logo-colors (quote ("#0d7b72" "#bdbdbd")) t)
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
\"###########.######\" };")) t)
 '(vc-annotate-background "#f6f0e1")
 '(vc-annotate-color-map (quote ((20 . "#e43838") (40 . "#f71010") (60 . "#ab9c3a") (80 . "#838a0b") (100 . "#ef8300") (120 . "#a0682d") (140 . "#1c9e28") (160 . "#3cb368") (180 . "#028902") (200 . "#008b45") (220 . "#077707") (240 . "#409e9f") (260 . "#528d8d") (280 . "#1fb3b3") (300 . "#2c53ca") (320 . "#0000ff") (340 . "#0505cc") (360 . "#a020f0"))))
 '(vc-annotate-very-old-color "#a020f0"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
