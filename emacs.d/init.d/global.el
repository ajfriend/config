;; generic emacs settings

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; Line-wrapping
(set-default 'fill-column 80)
(setq-default auto-fill-function 'do-auto-fill)

;; Prevent the annoying beep on errors
;; (setq visible-bell t)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Gotta see matching parens
(show-paren-mode t)

;; highlight the current line in gui mode
(when (display-graphic-p)
  (global-hl-line-mode t)
)

;; line truncation
(setq truncate-lines t)
(setq truncate-partial-width-windows nil)

;; For emacsclient
;; (server-start)

;; Trailing whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; allow downcase-region command 
(put 'downcase-region 'disabled nil)

;; allow downcase-region command 
(put 'upcase-region 'disabled nil)

;; add imenu to buffers that support it
(defun try-to-add-imenu ()
  (condition-case nil (imenu-add-to-menubar "imenu") (error nil)))
(add-hook 'font-lock-mode-hook 'try-to-add-imenu)

;; make buffer switch command show suggestions
(ido-mode 1)
