;; spelling settings

(setq ispell-program-name "aspell")
(setq ispell-list-command "list")
(setq ispell-dictionary "english")

;; flyspell fix for gnu/linux
(when (system-type-is-gnu)
  (setq flyspell-issue-welcome-flag nil)
)
