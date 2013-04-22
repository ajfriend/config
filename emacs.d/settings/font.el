;; emacs font settings

;; for mac
(when (and (system-type-is-darwin) (display-graphic-p))
  (set-face-attribute 'default nil
                      :family "Menlo" :height 140 :weight 'normal)
)

;; for linux
(when (and (system-type-is-gnu) (display-graphic-p))
  ;; see http://emacswiki.org/emacs/SetFonts
  ;;(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-12"))
  (set-face-attribute 'default nil :font "Inconsolata-12")
)
