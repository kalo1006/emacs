(package-initialize)

(electric-pair-mode 1)
(show-paren-mode t)
(custom-set-variables

 '(package-selected-packages (quote (company-irony-c-headers company))))
(custom-set-faces)

(add-to-list 'load-path "~/styleguide-gh-pages/")
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)


(require 'company)
(global-company-mode) 
(setq company-idle-delay 0.5) 
(setq company-minimum-prefix-length 2) 
(setq company-selection-wrap-around t)


(require 'irony)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-to-list'company-backends 'company-irony)

;;(require 'company-c-headers)
;;(add-to-list 'company-backends 'company-c-headers)
;;(require 'company-irony)
;;(add-to-list 'company-backends 'company-irony)
;;(require 'company-yasnippet)
;;(add-to-list 'company-backends 'company-yasnippet)
(require 'company-irony-c-headers)
(add-to-list 'company-backends 'company-irony-c-headers)


(setq c-auto-newline t) 
(setq c-hungry-delete t)
(setq kill-whole-line t)
(setq electric-indent-mode 1)
(setq-default c-basic-offset 4     ;;基本インデント量4
              tab-width 4          ;;タブ幅4
              indent-tabs-mode nil)  ;;インデント

(require 'package)
;; package.elが管理していないelisp置き場
(add-to-list 'load-path "~/.emacs.d/elisp/")
;; MELPAを追加(package.el)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; Marmaladeを追加(package.el)
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/"))

;; package.elの初期化
(package-initialize)



     
