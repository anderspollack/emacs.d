(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tsdh-light)))
 '(custom-safe-themes
   (quote
    ("26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" default)))
 '(delete-selection-mode t)
 '(desktop-save-mode t)
 '(electric-pair-mode t)
 '(global-auto-revert-mode t)
 '(global-subword-mode t)
 '(global-undo-tree-mode t)
 '(global-visual-line-mode nil)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(lsp-ui-doc-border "#a0a1a7")
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-peek-always-show t)
 '(lsp-ui-peek-enable t)
 '(lsp-ui-sideline-enable nil)
 '(next-screen-context-lines 5)
 '(org-indent-indentation-per-level 1)
 '(org-indent-mode-turns-off-org-adapt-indentation nil)
 '(org-indent-mode-turns-on-hiding-stars t)
 '(org-startup-indented t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (lua-mode which-key flycheck lsp-ui company-lsp company yasnippet lsp-mode xclip yaml-mode multi-term magit evil-leader evil-surround evil-visual-mark-mode emmet-mode web-mode haskell-mode)))
 '(ring-bell-function (quote ignore))
 '(scroll-bar-mode nil)
 '(sentence-end-double-space nil)
 '(shift-select-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(visual-line-fringe-indicators (quote (nil nil)))
 '(which-key-mode t)
 '(winner-mode t)
 '(xterm-mouse-mode t))
(package-initialize)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono" :foundry "nil" :slant normal :weight normal :height 130 :width normal))))
 '(font-lock-comment-face ((t (:foreground "#a0a1a7" :slant italic))))
 '(lsp-ui-doc-background ((t (:background "gray95"))))
 '(lsp-ui-sideline-code-action ((t (:foreground "#a0a1a7" :slant italic))))
 '(org-block ((t (:family "JetBrains Mono"))))
 '(org-block-begin-line ((t (:foreground "#a0a1a7" :slant italic :family "JetBrains Mono"))))
 '(org-block-end-line ((t (:inherit org-block-begin-line))))
 '(org-code ((t (:inherit shadow :family "JetBrains Mono"))))
 '(org-meta-line ((t (:inherit font-lock-comment-face :family "JetBrains Mono"))))
 '(outline-1 ((t (:inherit variable-pitch :weight bold :height 1.3))))
 '(outline-2 ((t (:inherit outline-1 :weight normal :height 0.95))))
 '(outline-3 ((t (:inherit outline-1 :weight bold :height 0.9))))
 '(outline-4 ((t (:inherit outline-1 :weight normal :height 0.9))))
 '(outline-5 ((t (:inherit outline-1 :weight bold :height 120))))
 '(outline-6 ((t (:inherit outline-1 :weight bold :height 0.8))))
 '(outline-7 ((t (:inherit outline-1 :weight normal :height 0.8))))
 '(outline-8 ((t (:inherit outline-1 :weight bold :height 0.7))))
 '(variable-pitch ((t (:inherit default :foreground "gray30" :family "Libre Baskerville"))))
 '(web-mode-comment-face ((t (:inherit font-lock-comment-face)))))
