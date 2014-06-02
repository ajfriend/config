(require 'package)

;; add melpa archive
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; add orgmode archive
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; initialize and install packages
(package-initialize)

;; refresh package descriptions
(unless package-archive-contents (package-refresh-contents))
;; list of packages to load
(setq package-load-list '(all))

;; make sure desired packages are installed
(unless (package-installed-p 'org-plus-contrib) (package-install 'org-plus-contrib))

;; initialize and install packages
;;(package-initialize)
