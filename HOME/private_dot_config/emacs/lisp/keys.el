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
	    ("M-<backspace>" . multi-vterm-dedicated-toggle)
	    ("<backspace>" . multi-vterm)
	    ("S-<backspace>" . multi-vterm-rename-buffer)
	    ("[" . multi-vterm-prev)
	    ("]" . multi-vterm-next)
	    ("e" . eat)
	    ("h" . consult-history)
	    ("k" . vterm-send-next-key)
	    ("l" . eshell)
	    )

(bind-keys* :prefix-map local-search-map
	    :prefix "M-s"
    	    ("M-s" . consult-line)
    	    ("c" . avy-goto-char)
	    ("f" . consult-find)
	    ("g" . consult-grep)
	    ("i" . consult-imenu)
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
	    ("*" . org-emphasize)
	    ("?" . man)
	    ("SPC" . whitespace-mode)
	    ("c" . comment-region)
	    ("f" . consult-recent-file)
	    ("i" . ibuffer)
	    ("m" . tmm-menubar)
	    ("n" . customize-option)
	    ("r" . package-autoremove)
	    ("s" . server-mode)
	    ("t" . trashed)
	    ("v" . revert-buffer)
	    ("z" . customize-group)
	    )

(bind-keys* :prefix-map local-2ndclass-map
	    :prefix "M-["
	    ("<" . writeroom-decrease-width)
	    (">" . writeroom-increase-width)
	    ("X" . desktop-save-in-desktop-dir)
	    ("c" . display-fill-column-indicator-mode)
	    ("g" . playerctl-play-pause-song)
	    ("i" . package-install)
	    ("n" . playerctl-next-song)
	    ("p" . playerctl-previous-song)
	    ("r" . shr-render-buffer)
	    ("x" . desktop-read)
	    ("y" . consult-yank-from-kill-ring)
	    )

(bind-keys* :prefix-map local-local-map
	    :prefix "M-]"
	    ("M-]" . local/memoir)
	    ("]" . local/google-translate)
	    ("0" . local/unsocks)
	    ("1" . local/socks)
	    ("b" . local/bidi)
	    ("f" . local/toggle-selective-display)
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
