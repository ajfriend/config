;; emacs gui settings

;; Emacs gurus don't need no stinking scroll bars
(when (fboundp 'toggle-scroll-bar)
  (toggle-scroll-bar -1))

(tool-bar-mode -1)
;(menu-bar-mode -1)
;(scroll-bar-mode -1)
