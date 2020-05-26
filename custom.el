(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(company-global-modes '(not org-mode text-mode markdown-mode))
 '(company-require-match nil)
 '(css-indent-offset 2)
 '(custom-enabled-themes '(solarized-light))
 '(custom-safe-themes
   '("c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" default))
 '(delete-selection-mode t)
 '(desktop-save-mode t)
 '(display-line-numbers-width-start t)
 '(electric-pair-inhibit-predicate
   (lambda
     (c)
     (if
         (char-equal c 60)
         t
       (electric-pair-default-inhibit c))))
 '(electric-pair-mode t)
 '(evil-want-C-u-delete t)
 '(fringe-mode 10 nil (fringe))
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-undo-tree-mode t)
 '(global-visual-line-mode nil)
 '(linum-format "%d ")
 '(lsp-ui-doc-alignment 'window)
 '(lsp-ui-doc-border "#a0a1a7")
 '(lsp-ui-doc-delay 0.5)
 '(lsp-ui-doc-enable nil)
 '(lsp-ui-doc-max-width 80)
 '(lsp-ui-doc-position 'bottom)
 '(lsp-ui-doc-use-childframe t)
 '(lsp-ui-doc-use-webkit nil)
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-peek-always-show t)
 '(lsp-ui-peek-enable t)
 '(lsp-ui-sideline-enable nil)
 '(next-screen-context-lines 5)
 '(package-selected-packages
   '(flycheck company-elisp haskell evil-magit evil-collection org evil-org lua-mode which-key lsp-ui company-lsp company yasnippet lsp-mode xclip yaml-mode magit evil-leader evil-surround evil-visual-mark-mode emmet-mode web-mode haskell-mode))
 '(powerline-default-separator 'utf-8)
 '(prettier-js-command "prettier --ignore-path ~/.prettierignore")
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(sentence-end-double-space nil)
 '(shift-select-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-pairing nil)
 '(web-mode-markup-indent-offset 2)
 '(web-mode-script-padding 0)
 '(web-mode-style-padding 0)
 '(web-mode-tests-directory "~/tests/")
 '(winner-mode t)
 '(xterm-mouse-mode t))
(package-initialize)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "SF Mono" :foundry "nil" :slant normal :weight normal :height 130 :width normal))))
 '(company-echo ((t nil)) t)
 '(fixed-pitch ((t (:family "SF Mono"))))
 '(fixed-pitch-serif ((t (:family "SF Mono"))))
 '(org-block ((t (:family "SF Mono"))))
 '(org-meta-line ((t (:foreground "#93a1a1" :slant italic :family "SF Mono"))))
 '(variable-pitch ((t (:family "Libre Baskerville")))))
