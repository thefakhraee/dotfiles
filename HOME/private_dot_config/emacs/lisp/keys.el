;; Key Bindings

(bind-keys*
 ("M-SPC" . consult-buffer)
 ("M-S-SPC" . consult-buffer-other-window)
 ("M--" . popper-toggle)
 ("M-_" . writeroom-mode)
 ("M-\\" . kill-process)
 ("C-c l" . org-store-link))

(bind-keys* :prefix-map local-window-map
	    :prefix "M-`"
	    ("M-`" . ace-window)
	    ("<tab>" . window-swap-states)
	    ("SPC" . local/window-split-toggle)
	    )

(bind-keys* :prefix-map local-shell-map
	    :prefix "M-<backspace>"
	    ("M-<backspace>" . vterm-toggle)
	    ("<backspace>" . vterm)
	    ("e" . eshell)
	    ("h" . consult-history)
	    ("k" . vterm-send-next-key)
	    )

(bind-keys* :prefix-map local-search-map
	    :prefix "M-s"
    	    ("M-s" . consult-line)
    	    ("c" . avy-goto-char)
	    ("f" . consult-find)
	    ("g" . consult-grep)
	    ("l" . consult-goto-line)
	    ("m" . consult-line-multi)
	    ("o" . consult-outline)
	    ("r" . replace-string)
	    ("u" . consult-focus-lines)
	    )

(bind-keys* :prefix-map local-embark-map
	    :prefix "M-;"
	    ("a" . embark-act)
	    ("b" . embark-become)
	    ("c" . embark-collect)
	    ("d" . embark-dwim)
	    ("e" . embark-export)
	    ("l" . embark-live)
	    )

(bind-keys* :prefix-map local-firstclass-map
	    :prefix "M-o"
	    ("M-o" . package-list-packages)
	    ("i" . package-install)
	    ("r" . package-autoremove)
	    ("i" . ibuffer)
	    ("t" . trashed)
	    ("n" . customize-option)
	    ("z" . customize-group)
	    ("v" . revert-buffer)
	    ("c" . display-fill-column-indicator-mode)
	    ("m" . tmm-menubar)
	    ("?" . man)
	    ("SPC" . whitespace-mode)
	    ("f" . consult-recent-file)
	    ("s" . server-mode)
	    ("*" . org-emphasize)
	    )

(bind-keys* :prefix-map local-2ndclass-map
	    :prefix "M-["
	    ("r" . shr-render-buffer)
	    ("x" . desktop-read)
	    ("X" . desktop-save-in-desktop-dir)
	    ("y" . consult-yank-from-kill-ring)
	    ("g" . playerctl-play-pause-song)
	    ("n" . playerctl-next-song)
	    ("p" . playerctl-previous-song)
	    (">" . writeroom-increase-width)
	    ("<" . writeroom-decrease-width)
	    )

(bind-keys* :prefix-map local-local-map
	    :prefix "M-]"
	    ("M-]" . local/memoir)
	    ("]" . local/google-translate)
	    ("0" . local/unsocks)
	    ("1" . local/socks)
	    ("b" . local/bidi)
	    )

;;; In Persian Layout
(bind-keys*
 ("M-ط" . execute-extended-command)
 ("C-ط C-س" . save-buffer)
 ("C-x خ" . other-window)
 ("C-ب" . forward-char)
 ("C-ذ" . backward-char)
 ("M-ص" . kill-ring-save)
 ("C-ی" . delete-char)
 ("C-ش" . move-beginning-of-line)
 ("C-ث" . move-end-of-line)
 ("C-ح" . previous-line)
 ("C-د" . next-line)
 ("C-م" . recenter-top-bottom)
 ("M-ب" . forward-word)
 ("M-ذ" . backward-word)
 ("M-ن" . kill-line)
 ("M-چ" . local/bidi)
 ("M-ز" . display-fill-column-indicator-mode))

;;;
(with-eval-after-load 'dired
  (bind-keys :map dired-mode-map
	     ("." . dired-hide-dotfiles-mode)
	     ("b" . dired-up-directory)))
