;; add this directory to the emacs load path
(add-to-list 'load-path "~/.emacs.d")

;; add import directory to load path
(add-to-list 'load-path "~/.emacs.d/import")

;; custom-file settings
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; package manager settings
(load "init.d/packages.el")

;; load imports
(load "import/light-symbol")

;; load settings
(load "init.d/defun")
(load "init.d/env")
(load "init.d/global")
(load "init.d/font")
;;(load "init.d/auctex")
(load "init.d/utf-8")
(load "init.d/org-settings")
(load "init.d/markdown-settings")
(load "init.d/gui")
(load "init.d/tab")
(load "init.d/browser")
(load "init.d/windows")
(load "init.d/copy-paste")
(load "init.d/browser")
(load "init.d/cmake")
(load "init.d/color-theme")
(load "init.d/sr-speedbar-load")
(load "init.d/ack-load")
(load "init.d/programming")
(load "init.d/dired-settings")
(load "init.d/python-setup")
(load "init.d/unfill")
(load "init.d/keyboard.el")

;; Enable a backtrace when problems occur
;; (setq debug-on-error t)
