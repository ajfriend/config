;; default browser settings

;; for mac
(when (system-type-is-darwin)
  (setq browse-url-browser-function (quote browse-url-generic))
  (setq browse-url-generic-program "open")
)

;; for arch linux
(when (system-type-is-gnu)
  (setq browse-url-browser-function (quote browse-url-generic))
  (setq browse-url-generic-program "google-chrome")
)
