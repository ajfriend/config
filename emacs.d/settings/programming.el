
;; programming stype
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; load c++ mode for cuda files
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cu_thrust\\'" . c++-mode))

;; Load CEDET
;; (when (system-type-is-gnu)
;;   (load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")
;;   (add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
;;   (require 'ecb-autoloads)
;; )
