;; nwh emacs functions

;; system type functions
(defun system-type-is-darwin ()
  "Return true if system is darwin-based (Mac OS X)"
  (interactive)
  (string-equal system-type "darwin"))

(defun system-type-is-gnu ()
  "Return true if system is GNU/Linux-based"
  (interactive)
  (string-equal system-type "gnu/linux"))

;; remap windmove keys for mac terminal use
(defun windmove-mac-term ()
  "Remap windmove keys for use in mac terminal"
  (interactive)
  (global-set-key (kbd "ESC <left>")  'windmove-left)
  (global-set-key (kbd "ESC <right>") 'windmove-right)
  (global-set-key (kbd "ESC <up>")    'windmove-up)
  (global-set-key (kbd "ESC <down>")  'windmove-down)
)

;; show file name function
(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name))
  (kill-new (file-truename buffer-file-name))
)
;;(global-set-key "\C-cz" 'show-file-name)
