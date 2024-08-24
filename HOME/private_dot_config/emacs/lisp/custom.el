(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(auto-save-file-name-transforms '((".*" "~/.cache/emacs/autosave/" t)))
 '(auto-save-list-file-prefix "~/.cache/emacs/auto-save-list/.saves-")
 '(aw-ignore-current t)
 '(aw-keys '(113 119 101 49 50 51 52 52 54))
 '(aw-minibuffer-flag t)
 '(backup-directory-alist '(("." . "~/.cache/emacs/backup")))
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(completion-cycle-threshold 3)
 '(completion-styles '(orderless basic))
 '(confirm-kill-emacs 'y-or-n-p)
 '(corfu-auto t)
 '(current-language-environment "Persian")
 '(custom-enabled-themes '(doom-material-dark))
 '(custom-safe-themes
   '("da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "c171012778b7cf795ac215b91e1ecab8e3946738d03095397a790ed41e0a3386" "37c8c2817010e59734fe1f9302a7e6a2b5e8cc648cf6a6cc8b85f3bf17fececf" "78e6be576f4a526d212d5f9a8798e5706990216e9be10174e3f3b015b8662e27" default))
 '(default-input-method "farsi-isiri-9147")
 '(delete-by-moving-to-trash t)
 '(desktop-base-file-name "emacs.desktop")
 '(desktop-path '("~/.cache/emacs/"))
 '(dired-auto-revert-buffer 'dired-directory-changed-p)
 '(dired-dwim-target t)
 '(dired-hide-details-hide-symlink-targets nil)
 '(dired-listing-switches "-AGFhlv --group-directories-first --time-style=long-iso")
 '(dired-mode-hook
   '(org-download-enable dired-hide-dotfiles-mode dired-hide-details-mode))
 '(dired-recursive-copies 'always)
 '(diredfl-global-mode t nil (diredfl))
 '(dirvish-override-dired-mode t)
 '(doc-view-resolution 144)
 '(ediff-split-window-function 'split-window-horizontally)
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(eshell-history-size 500)
 '(eshell-syntax-highlighting-global-mode t)
 '(eshell-visual-commands
   '("vi" "screen" "tmux" "top" "htop" "less" "more" "ncdu" "ssh"))
 '(eshell-visual-subcommands '(("chezmoi" "cd")))
 '(gc-cons-threshold 50000000)
 '(global-corfu-mode t)
 '(global-flycheck-mode t)
 '(global-visual-line-mode t)
 '(initial-buffer-choice t)
 '(marginalia-max-relative-age 0)
 '(marginalia-mode t)
 '(multi-vterm-dedicated-window-height 0)
 '(multi-vterm-dedicated-window-height-percent 35)
 '(org-download-screenshot-method "xfce4-screenshooter -r -o cat > %s")
 '(org-mode-hook
   '(#[0 "\300\301\302\303\304$\207"
	 [add-hook change-major-mode-hook org-show-all append local]
	 5]
     #[0 "\300\301\302\303\304$\207"
	 [add-hook change-major-mode-hook org-babel-show-result-all append local]
	 5]
     org-babel-result-hide-spec org-babel-hide-all-hashes display-fill-column-indicator-mode))
 '(org-startup-folded t)
 '(org-startup-numerated t)
 '(package-archives
   '(("gnu" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/gnu/")
     ("melpa" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/melpa/")
     ("nongnu" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/nongnu/")))
 '(package-selected-packages
   '(dirvish eat multi-vterm drag-stuff org-web-tools systemd mini-modeline writeroom-mode diredfl json-mode doom-themes xterm-color flycheck yaml-mode ox-reveal celestial-mode-line rainbow-delimiters eshell-syntax-highlighting trashed org-download dired-hide-dotfiles playerctl compat embark-consult ace-window crux org-modern corfu popper pulsar which-key vertico orderless marginalia embark bind-key bash-completion avy))
 '(popper-echo-mode t)
 '(popper-mode t)
 '(popper-reference-buffers
   '("\\*Messages\\*" "Output\\*$" "\\*Async Shell Command\\*" "\\*rg\\*" help-mode compilation-mode rg-mode))
 '(popper-window-height 0)
 '(prog-mode-hook
   '(display-line-numbers-mode display-fill-column-indicator-mode corfu-mode rainbow-delimiters-mode))
 '(pulsar-global-mode t)
 '(recentf-mode t)
 '(recentf-save-file "~/.cache/emacs/recentf")
 '(repeat-mode t)
 '(safe-local-variable-values '((sh_shell . "bash")))
 '(savehist-mode t)
 '(shell-dynamic-complete-functions
   '(comint-c-a-p-replace-by-expanded-history shell-environment-variable-completion shell-command-completion shell-c-a-p-replace-by-expanded-directory pcomplete-completions-at-point shell-filename-completion comint-filename-completion bash-completion-dynamic-complete))
 '(shell-file-name "/bin/zsh")
 '(tab-always-indent 'complete)
 '(use-dialog-box nil)
 '(use-file-dialog nil)
 '(use-short-answers t)
 '(user-full-name "Morteza Fakhraee")
 '(user-mail-address "thefakhraee@gmail.com")
 '(vertico-cycle t)
 '(vertico-mode t)
 '(vertico-resize nil)
 '(visible-bell t)
 '(vterm-eval-cmds
   '(("update-pwd"
      (lambda
	(path)
	(setq default-directory path)))
     ("vterm-clear-scrollback" vterm-clear-scrollback)))
 '(vterm-max-scrollback 10000)
 '(vterm-shell "/bin/zsh")
 '(warning-suppress-types '((comp)))
 '(which-key-idle-delay 0.5)
 '(which-key-mode t)
 '(which-key-popup-type 'side-window)
 '(which-key-side-window-max-height 0.9)
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:foreground "dark violet" :height 1.7))))
 '(mini-modeline-mode-line ((t (:background "#b3ee3a" :box nil :height 0.14))))
 '(mode-line-inactive ((t (:height 0.9))))
 '(region ((t nil))))
