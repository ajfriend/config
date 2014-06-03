;; orgmode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; settings
(setq org-todo-keywords
       '((sequence "TODO" "WAIT" "|" "DONE")))

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((sh . t)
   ))

;; turn on source highlighting in code blocks
(setq org-src-fontify-natively t)

;; simple function to align all tables
(defun org-table-align-all ()
  (interactive)
  (org-table-map-tables 'org-table-align 'quietly))
