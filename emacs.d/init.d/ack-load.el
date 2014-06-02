;; I am using the ack interface from
;; https://github.com/leoliu/ack-el

;; add ack to load path
(add-to-list 'load-path "~/.emacs.d/external/ack-el")

;; require it
(require 'ack)
(autoload 'pcomplete/ack "pcmpl-ack")
