(defun local/kill-that-buffer ()
  "Kill the buffer on other window."
  (interactive)
  (other-window 1)
  (kill-this-buffer)
  (delete-window)
  )

;;; Persian
(defun local/bidi ()
  "RTL mode for Persian."
  (interactive)
  (setq-local bidi-paragraph-direction 'nil)
;;  (set-fontset-font t 'arabic "Nika-13")
  (message "Persian Mode")
  )

;;; Socks 9050
(defun local/socks ()
  "Use Socks on 9050."
  (interactive)
  (setq-local socks-override-functions t)
  (setq-local socks-noproxy '("127.0.0.1"))
  (setq-local url-gateway-method 'socks)
  (setq-local socks-server '("Default server" "127.0.0.1" 9050 5))
  (message "Socks Proxy ON")
  )

(defun local/unsocks ()
  "Disable Socks."
  (interactive)
  (setq-local url-gateway-method 'native)
  (setq-local socks-override-functions nil)
  (message "Socks Proxy OFF")
  )

;;https://oleksandrmanzyuk.wordpress.com/2011/09/21/using-google-translate-from-emacs/
; (thing-at-point 'word 'no-properties)
(defun local/google-translate (text)
  "Translate using Google Translate."
  (interactive
   (list
    (read-from-minibuffer "Translate: ")))
    (with-output-to-temp-buffer "*Google Translate*"
    (set-buffer "*Google Translate*")
    (insert (format "%s" text))
    (insert (format "\n\n%s"
                    (shell-command-to-string
                     (format "trans -no-auto -d -no-bidi -t fa \"%s\"" text))))))

;; https://emacs.stackexchange.com/questions/5371/how-to-change-emacs-windows-from-vertical-split-to-horizontal-split
(defun local/window-split-toggle ()
  "Toggle between horizontal and vertical split with two windows."
  (interactive)
  (if (> (length (window-list)) 2)
      (error "Can't toggle with more than 2 windows!")
    (let ((func (if (window-full-height-p)
                    #'split-window-vertically
                  #'split-window-horizontally)))
      (delete-other-windows)
      (funcall func)
      (save-selected-window
        (other-window 1)
        (switch-to-buffer (other-buffer))))))
