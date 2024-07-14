;; Customization
(setq custom-file (locate-user-emacs-file "lisp/custom.el"))
(load custom-file)
; this will make customize to clutter init.el file
;(load (locate-user-emacs-file "lisp/custom.el"))

;; Local Conf
(load (locate-user-emacs-file "lisp/conf.el"))

;; Local Functions
(load (locate-user-emacs-file "lisp/local.el"))

;; Key Bindings
(load (locate-user-emacs-file "lisp/keys.el"))

;;; Profile emacs startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "UP/GC: %s/%d"
                     (format "%.2f"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))

(windmove-default-keybindings)
;(call-interactively #'cd)
;(mini-modeline-mode)
