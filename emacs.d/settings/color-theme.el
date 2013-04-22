;; color-theme

;; activate solarized if in gui mode
(when (display-graphic-p) ;; only load color-theme in emacs gui
  ;; load solarized
  (add-to-list 'custom-theme-load-path "~/.emacs.d/external/emacs-color-theme-solarized/")
  (load-theme 'solarized-dark t)
)
