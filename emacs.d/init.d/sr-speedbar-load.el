;; nwh config for sr-speedbar.el

;; require
(require 'sr-speedbar)

;; set the keyboard command
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

;; make it go on the left
(setq sr-speedbar-right-side nil)

;; show all files
(setq speedbar-show-unknown-files t)

