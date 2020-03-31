(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(company-global-modes (quote (not org-mode text-mode markdown-mode)))
 '(company-require-match nil)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (tsdh-light)))
 '(custom-safe-themes
   (quote
    ("26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" default)))
 '(delete-selection-mode t)
 '(desktop-save-mode t)
 '(electric-pair-inhibit-predicate
   (lambda
     (c)
     (if
         (char-equal c 60)
         t
       (electric-pair-default-inhibit c))))
 '(electric-pair-mode t)
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-undo-tree-mode t)
 '(global-visual-line-mode nil)
 '(lsp-ui-doc-alignment (quote window))
 '(lsp-ui-doc-border "#a0a1a7")
 '(lsp-ui-doc-delay 0.5)
 '(lsp-ui-doc-enable t)
 '(lsp-ui-doc-max-width 80)
 '(lsp-ui-doc-position (quote bottom))
 '(lsp-ui-doc-use-childframe t)
 '(lsp-ui-doc-use-webkit nil)
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-peek-always-show t)
 '(lsp-ui-peek-enable t)
 '(lsp-ui-sideline-enable nil)
 '(next-screen-context-lines 5)
 '(package-selected-packages
   (quote
    (flycheck company-elisp haskell evil-magit evil-collection org evil-org lua-mode which-key lsp-ui company-lsp company yasnippet lsp-mode xclip yaml-mode multi-term magit evil-leader evil-surround evil-visual-mark-mode emmet-mode web-mode haskell-mode)))
 '(powerline-default-separator (quote alternate))
 '(powerline-height 21)
 '(ring-bell-function (quote ignore))
 '(scroll-bar-mode nil)
 '(sentence-end-double-space nil)
 '(shift-select-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(visual-line-fringe-indicators (quote (nil nil)))
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-pairing nil)
 '(web-mode-markup-indent-offset 2)
 '(web-mode-script-padding 0)
 '(web-mode-style-padding 0)
 '(web-mode-tests-directory "~/tests/")
 '(window-divider-mode t)
 '(winner-mode t)
 '(xterm-mouse-mode t))
(package-initialize)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "SF Mono" :foundry "nil" :slant normal :weight normal :height 130 :width normal))))
 '(font-lock-comment-face ((t (:foreground "#a0a1a7" :slant italic))))
 '(lsp-ui-doc-background ((t (:background "gray95"))))
 '(lsp-ui-sideline-code-action ((t (:foreground "#a0a1a7" :slant italic))))
 '(mode-line ((t (:background "gray80" :box (:line-width 1 :color "gray80")))))
 '(mode-line-highlight ((t (:background "grey90" :box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#f0f0f1" :foreground "#a0a1a7" :box (:line-width 1 :color "#f0f0f1")))))
 '(org-block ((t (:family "SF Mono"))))
 '(org-block-begin-line ((t (:foreground "#a0a1a7" :slant italic :family "SF Mono"))))
 '(org-block-end-line ((t (:inherit org-block-begin-line))))
 '(org-code ((t (:inherit shadow :family "SF Mono"))))
 '(org-formula ((t (:foreground "Firebrick" :family "SF Mono"))))
 '(org-meta-line ((t (:inherit font-lock-comment-face :family "SF Mono"))))
 '(org-table ((t (:foreground "Blue1" :family "SF Mono"))))
 '(org-verbatim ((t (:inherit shadow :family "SF Mono"))))
 '(outline-1 ((t (:inherit variable-pitch :weight bold :height 1.3))))
 '(outline-2 ((t (:inherit outline-1 :weight normal :height 0.95))))
 '(outline-3 ((t (:inherit outline-1 :weight bold :height 0.9))))
 '(outline-4 ((t (:inherit outline-1 :weight normal :height 0.9))))
 '(outline-5 ((t (:inherit outline-1 :weight bold :height 120))))
 '(outline-6 ((t (:inherit outline-1 :weight bold :height 0.8))))
 '(outline-7 ((t (:inherit outline-1 :weight normal :height 0.8))))
 '(outline-8 ((t (:inherit outline-1 :weight bold :height 0.7))))
 '(powerline-active1 ((t (:inherit mode-line))))
 '(powerline-active2 ((t (:inherit mode-line))))
 '(powerline-inactive1 ((t (:inherit mode-line-inactive))))
 '(powerline-inactive2 ((t (:inherit mode-line-inactive))))
 '(variable-pitch ((t (:inherit default :foreground "gray30" :family "Libre Baskerville"))))
 '(web-mode-comment-face ((t (:inherit font-lock-comment-face))))
 '(window-divider ((t (:foreground "gray80"))))
 '(window-divider-last-pixel ((t (:foreground "gray80")))))
