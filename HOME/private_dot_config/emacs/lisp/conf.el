; for reading .bashrc
(setopt shell-command-switch "-ic")

; drag-stuff
(drag-stuff-global-mode 1)
(setq drag-stuff-modifier '(meta shift))
(drag-stuff-define-keys)

; load all ssh hosts
(with-eval-after-load 'tramp
(tramp-set-completion-function
 "ssh" (append (tramp-get-completion-function "ssh")
               (mapcar (lambda (file) `(tramp-parse-sconfig ,file))
                       (directory-files
                        "~/.ssh/config.d/"
                        'full directory-files-no-dot-files-regexp)))))
