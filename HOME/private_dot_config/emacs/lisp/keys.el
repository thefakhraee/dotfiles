;; Key Bindings

(bind-keys*
 ("M-SPC" . consult-buffer)
 ("M-o" . consult-buffer-other-window)
 ("M--" . popper-toggle)
 ("M-[" . writeroom-mode)
 ("M-]" . kill-process))

(bind-keys* :prefix-map local-alt-bktk-map
	    :prefix "M-`"
	    ("M-`" . ace-window)
	    ("<tab>" . window-swap-states)
	    ("SPC" . local/window-split-toggle)
	    )

(bind-keys* :prefix-map local-alt-bkspc-map
	    :prefix "M-<backspace>"
	    ("M-<backspace>" . vterm-toggle)
	    ("e" . eshell)
	    ("h" . consult-history)
	    ("k" . vterm-send-next-key)
	    )

(bind-keys* :prefix-map local-alt-bkslsh-map
	    :prefix "M-\\"
	    ("`" . tmm-menubar)
	    ("?" . man)
	    ("0" . local/unsocks)
	    ("1" . local/socks)
	    (">" . writeroom-increase-width)
	    ("<" . writeroom-decrease-width)
	    ("SPC" . whitespace-mode)
	    )

(bind-keys* :prefix-map local-alt-smcol-map
	    :prefix "M-;"
	    ("b" . local/bidi)
	    ("c" . display-fill-column-indicator-mode)
	    ("f" . consult-recent-file)
	    ("g" . local/google-translate)
	    ("i" . ibuffer)
	    ("n" . customize-option)
	    ("r" . shr-render-buffer)
	    ("t" . trashed)
	    ("v" . revert-buffer)
	    ("x" . desktop-read)
	    ("X" . desktop-save-in-desktop-dir)
	    ("y" . consult-yank-from-kill-ring)
	    ("z" . customize-group)
	    )

(bind-keys* :prefix-map local-alt-p-map
	    :prefix "M-p"
	    ("M-p" . package-list-packages)
	    ("i" . package-install)
	    ("r" . package-autoremove)
	    ("g" . playerctl-play-pause-song)
	    ("n" . playerctl-next-song)
	    ("p" . playerctl-previous-song)
	    )

(bind-keys* :prefix-map local-alt-s-map
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
	    :prefix "C-;"
	    ("a" . embark-act)
	    ("b" . embark-become)
	    ("c" . embark-collect)
	    ("d" . embark-dwim)
	    ("e" . embark-export)
	    ("l" . embark-live)
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
