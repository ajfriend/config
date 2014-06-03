;; programming style
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; load c++ mode for cuda files
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cu_thrust\\'" . c++-mode))

;; load octave-mode for .m files
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

;; load julia-mode
(when (file-directory-p "~/julia/contrib")
  (add-to-list 'load-path "~/julia/contrib")
  (require 'julia-mode)
)
