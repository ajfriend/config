;; set environment variables

(if (system-type-is-darwin)
  (progn 
    (setq exec-path (cons "/usr/local/bin" exec-path))
    (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
    (setq exec-path (cons "/usr/texbin" exec-path))
    (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
    (setq exec-path (cons "/Applications/Emacs.app/Contents/MacOS/bin" exec-path))
    (setenv "PATH" (concat "/Applications/Emacs.app/Contents/MacOS/bin:" (getenv "PATH")))
))