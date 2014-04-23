;; add this directory to the emacs load path
(add-to-list 'load-path "~/.emacs.d")

;; add import directory to load path
(add-to-list 'load-path "~/.emacs.d/import")

(setq custom-file "~/.emacs.d/settings/custom.el")
(load custom-file 'noerror)

;; package manager settings
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; load imports
(load "import/light-symbol")

;; load settings
(load "settings/defun")
(load "settings/env")
(load "settings/global")
(load "settings/font")
;;(load "settings/auctex")
(load "settings/utf-8")
(load "settings/org-settings")
(load "settings/markdown-load")
(load "settings/gui")
(load "settings/tab")
(load "settings/browser")
(load "settings/windows")
(load "settings/copy-paste")
(load "settings/browser")
(load "settings/cmake")
(load "settings/color-theme")
(load "settings/sr-speedbar-load")
(load "settings/magit-load")
(load "settings/ack-load")
(load "settings/programming")
(load "settings/dired-settings")
(load "settings/python-setup")
(load "settings/unfill")
(load "settings/keyboard.el")

;; Enable a backtrace when problems occur
;; (setq debug-on-error t)
