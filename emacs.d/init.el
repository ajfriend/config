;; add this directory to the emacs load path
(add-to-list 'load-path "~/.emacs.d")

;; add import directory to load path
(add-to-list 'load-path "~/.emacs.d/import")

(setq custom-file "~/.emacs.d/settings/custom.el")
(load custom-file 'noerror)

;; load imports
(load "import/light-symbol")

;; load settings
(load "settings/defun")
(load "settings/env")
(load "settings/global")
(load "settings/font")
;;(load "settings/auctex")
(load "settings/utf-8")
(load "settings/org")
(load "settings/markdown")
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

;; Enable a backtrace when problems occur
;; (setq debug-on-error t)
