;; auxtex settings

;; for mac
(when (system-type-is-darwin)
  (add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
  (require 'tex-site)
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  (setq TeX-PDF-mode t)
  (setq TeX-view-program-list '(("open" "open %o")))
  (setq TeX-view-program-selection '((output-pdf "open")))
)

;; for linux
(when (system-type-is-gnu)
  (load "auctex.el" nil t t)
  (load "preview-latex.el" nil t t)
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  (setq TeX-PDF-mode t)
  (setq TeX-view-program-list '(("evince" "evince %o")))
  (setq TeX-view-program-selection '((output-pdf "evince")))
  (setq preview-scale-function 1.15)
)
