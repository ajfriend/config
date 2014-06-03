;; color-theme

;; activate solarized if in gui mode
(when (display-graphic-p) ;; only load color-theme in emacs gui
  ;; load solarized
  (load-theme 'solarized-dark t)
)
