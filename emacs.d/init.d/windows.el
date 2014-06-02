;; windows settings

;; this allows me to use super-arrow to move between windows.
;; very useful and does not mess up orgmode
;;(windmove-default-keybindings 'super)
;;(windmove-default-keybindings 'meta)
(global-set-key (kbd "<M-s-up>")     'windmove-up)
(global-set-key (kbd "<M-s-down>")   'windmove-down)
(global-set-key (kbd "<M-s-left>")   'windmove-left)
(global-set-key (kbd "<M-s-right>")  'windmove-right)

;; keys to easily resize windows
(global-set-key (kbd "C-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-s-<down>") 'shrink-window)
(global-set-key (kbd "C-s-<up>") 'enlarge-window)

;; buffer move
(require 'buffer-move)
(global-set-key (kbd "<S-s-up>")     'buf-move-up)
(global-set-key (kbd "<S-s-down>")   'buf-move-down)
(global-set-key (kbd "<S-s-left>")   'buf-move-left)
(global-set-key (kbd "<S-s-right>")  'buf-move-right)
