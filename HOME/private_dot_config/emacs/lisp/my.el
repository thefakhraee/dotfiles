(defun my/kill-that-buffer ()
  "Kill the buffer on other window."
  (interactive)
  (other-window 1)
  (kill-this-buffer)
  (delete-window)
  )

;;; Persian
(defun my/bidi ()
  "RTL mode for Persian."
  (interactive)
  (setq-local bidi-paragraph-direction 'nil)
;;  (set-fontset-font t 'arabic "Nika-13")
  (message "Persian Mode")
  )

;;; Socks 9050
(defun my/socks ()
  "Use Socks on 9050."
  (interactive)
  (setq-local socks-override-functions t)
  (setq-local socks-noproxy '("127.0.0.1"))
  (setq-local url-gateway-method 'socks)
  (setq-local socks-server '("Default server" "127.0.0.1" 9050 5))
  (message "Socks Proxy ON")
  )

(defun my/unsocks ()
  "Disable Socks."
  (interactive)
  (setq-local url-gateway-method 'native)
  (setq-local socks-override-functions nil)
  (message "Socks Proxy OFF")
  )

;;https://oleksandrmanzyuk.wordpress.com/2011/09/21/using-google-translate-from-emacs/
; (thing-at-point 'word 'no-properties)
(defun my/google-translate (text)
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
(defun my/window-split-toggle ()
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


(defun my/memoir ()
  "Open the memoir"
  (interactive)
  (setq memoir-file "~/Sync/Documents/org/me.org")
  (switch-to-buffer (find-file-noselect memoir-file))
  (set-window-point
     (get-buffer-window (current-buffer) 'visible)
     (point-max)))

"fucking ChatGPT did this"
(defun convert-persian-to-western (input-string)
  "Converts Persian (Eastern Arabic) numerals to Western Arabic numerals."
  (replace-regexp-in-string "۰" "0"
  (replace-regexp-in-string "۱" "1"
  (replace-regexp-in-string "۲" "2"
  (replace-regexp-in-string "۳" "3"
  (replace-regexp-in-string "۴" "4"
  (replace-regexp-in-string "۵" "5"
  (replace-regexp-in-string "۶" "6"
  (replace-regexp-in-string "۷" "7"
  (replace-regexp-in-string "۸" "8"
  (replace-regexp-in-string "۹" "9"
  input-string)))))))))))

(defun my/convert-pnumbers ()
  "Interactive function to convert Persian numerals to Western numerals."
  (interactive)
  (let* ((input-string (read-string "Enter a string with Persian numerals: ")))
    (message "Converted string: %s" (convert-persian-to-western input-string))))

(defun my/toggle-selective-display ()
  (interactive)
  (set-selective-display (if selective-display nil 1)))
