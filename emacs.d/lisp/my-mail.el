(setq user-full-name "xiandong")   
(setq user-mail-address "zxd641326@163.com")   
  
  
  
  
;;;;;;;;;;;;;;;;;;;;  
;;;;;;;;;;;;;;;;;;;;  
;(set-language-environment 'Chinese-GB)  
;(setq gnus-default-charset 'chinese-iso-8bit  
;     gnus-group-name-charset-group-alist '((".*" . cn-gb-2312))  
;      gnus-summary-show-article-charset-alist  
;      '((1 . cn-gb-2312)  
;    (2 . gb18030)  
;    (3 . chinese-iso-8bit)  
;    (4 . gbk)  
;    (5 . big5)  
;    (6 . utf-8))  
;      gnus-newsgroup-ignored-charsets  
;      '(unknown-8bit x-unknown iso-8859-1))  
  
  
  
;;;;;;;;;;;;;;;;;;;;  
;;
;;;;;;;;;;;;;;;;;;;;  
(auto-image-file-mode)  
(setq mm-inline-large-images t)  
;(add-to-list 'mm-attachment-override-types "image/*")  

(setq gnus-secondary-select-methods '((nnml "")))   
(setq mail-sources  
'((pop :server "pop.163.com"  
       :user "zxd641326@163.com"  
       :port "pop3"  
       :password "")))  
(setq gnus-secondary-select-methods '((nnfolder "")))  
(setq user-full-name "zxd641326")  
(setq user-mail-address "zxd641326@163.com")  
(setq smtpmail-auth-credentials  
'(("smtp.163.com"  
25  
"zxd641326"  
"")))  
(setq smtpmail-default-smtp-server "smtp.163.com")  
(setq smtpmail-smtp-server "smtp.163.com")  
(setq message-send-mail-function 'smtpmail-send-it)

;(set-language-environment 'Chinese-GB)  
;(setq gnus-default-charset 'chinese-iso-8bit  
;gnus-group-name-charset-group-alist '((".*" . chinese-iso-8bit))  
;gnus-summary-show-article-charset-alist  
;'((1 . chinese-iso-8bit)  
;(2 . gbk)  
;(3 . big5)  
;(4 . utf-8))  
;gnus-newsgroup-ignored-charsets  
;'(unknown-8bit x-unknown iso-8859-1))

;;(eval-after-load "mm-decode"  
;;'(progn  
;;(add-to-list 'mm-discouraged-alternatives "text/html")  
;;(add-to-list 'mm-discouraged-alternatives "text/richtext")))  
(setq gnus-default-subscribed-newsgroups  
'("gnu.emacs.help"  
"cn.comp.os.linux"  
"cn.bbs.comp.network.programming"  
"comp.std.c"  
"comp.protocols.tcp-ip"  
"comp.os.linux.development.system"  
"cn.bbs.comp.emacs"))  
  
(setq gnus-use-cache 'passive)  
(setq gnus-fetch-old-headers 'some)  
(setq gnus-message-archive-group  
'((if (message-news-p)  
"nnfolder:mail.sent.news"  
"nnfolder:mail.sent.mail")))
