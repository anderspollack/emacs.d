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
 '(display-line-numbers-width-start t)
 '(electric-pair-inhibit-predicate
   (lambda
     (c)
     (if
         (char-equal c 60)
         t
       (electric-pair-default-inhibit c))))
 '(electric-pair-mode t)
 '(fringe-mode 10 nil (fringe))
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-undo-tree-mode t)
 '(global-visual-line-mode nil)
 '(linum-format "%d ")
 '(lsp-ui-doc-alignment (quote window))
 '(lsp-ui-doc-border "#a0a1a7")
 '(lsp-ui-doc-delay 0.5)
 '(lsp-ui-doc-enable nil)
 '(lsp-ui-doc-max-width 80)
 '(lsp-ui-doc-position (quote bottom))
 '(lsp-ui-doc-use-childframe t)
 '(lsp-ui-doc-use-webkit nil)
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-peek-always-show t)
 '(lsp-ui-peek-enable t)
 '(lsp-ui-sideline-enable nil)
 '(mode-line-format
   (quote
    ("%e"
     (:eval
      (let*
          ((active
            (powerline-selected-window-active))
           (mode-line-buffer-id
            (if active
                (quote mode-line-buffer-id)
              (quote mode-line-buffer-id-inactive)))
           (mode-line
            (if active
                (quote mode-line)
              (quote mode-line-inactive)))
           (face0
            (if active
                (quote powerline-active0)
              (quote powerline-inactive0)))
           (face1
            (if active
                (quote powerline-active1)
              (quote powerline-inactive1)))
           (face2
            (if active
                (quote powerline-active2)
              (quote powerline-inactive2)))
           (separator-left
            (intern
             (format "powerline-%s-%s"
                     (powerline-current-separator)
                     (car powerline-default-separator-dir))))
           (separator-right
            (intern
             (format "powerline-%s-%s"
                     (powerline-current-separator)
                     (cdr powerline-default-separator-dir))))
           (lhs
            (list
             (powerline-raw "%*" face0
                            (quote l))
             (when powerline-display-buffer-size
               (powerline-buffer-size face0
                                      (quote l)))
             (powerline-buffer-id
              (\`
               (mode-line-buffer-id
                (\, face0)))
              (quote l))
             (powerline-raw " " face0)
             (funcall separator-left face0 face1)
             (powerline-narrow face1
                               (quote l))
             (powerline-vc face1)))
           (rhs
            (list
             (powerline-raw global-mode-string face1
                            (quote r))
             (powerline-raw "%4l" face1
                            (quote r))
             (powerline-raw ":" face1)
             (powerline-raw "%3c" face1
                            (quote r))
             (funcall separator-right face1 face0)
             (powerline-raw " " face0)
             (powerline-raw "%6p" face0
                            (quote r))
             (when powerline-display-hud
               (powerline-hud face2 face1))))
           (center
            (append
             (list
              (powerline-raw " " face1)
              (funcall separator-left face1 face2)
              (when
                  (and
                   (boundp
                    (quote erc-track-minor-mode))
                   erc-track-minor-mode)
                (powerline-raw erc-modified-channels-object face2
                               (quote l)))
              (powerline-major-mode face2
                                    (quote l))
              (powerline-process face2)
              (powerline-raw " " face2))
             (if
                 (split-string
                  (format-mode-line minor-mode-alist))
                 (append
                  (if evil-mode
                      (list
                       (funcall separator-right face2 face1)
                       (powerline-raw evil-mode-line-tag face1
                                      (quote l))
                       (powerline-raw " " face1)
                       (funcall separator-left face1 face2)))
                  (list
                   (powerline-raw " " face2)
                   (funcall separator-right face2 face1)))
               (list
                (powerline-raw evil-mode-line-tag face2)
                (funcall separator-right face2 face1))))))
        (concat
         (powerline-render lhs)
         (powerline-fill-center face1
                                (/
                                 (powerline-width center)
                                 2.0))
         (powerline-render center)
         (powerline-fill face1
                         (powerline-width rhs))
         (powerline-render rhs)))))))
 '(next-screen-context-lines 5)
 '(package-selected-packages
   (quote
    (flycheck company-elisp haskell evil-magit evil-collection org evil-org lua-mode which-key lsp-ui company-lsp company yasnippet lsp-mode xclip yaml-mode magit evil-leader evil-surround evil-visual-mark-mode emmet-mode web-mode haskell-mode)))
 '(powerline-default-separator nil)
 '(prettier-js-command "prettier --ignore-path ~/.prettierignore")
 '(ring-bell-function (quote ignore))
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
 '(window-divider-default-bottom-width 13)
 '(window-divider-default-places t)
 '(window-divider-default-right-width 3)
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
 '(company-echo ((t nil)) t)
 '(company-tooltip ((t (:background "cornsilk" :foreground "black" :inherit fixed-pitch))))
 '(custom-group-tag ((t (:inherit (variable-pitch outline-1) :foreground "RoyalBlue" :weight bold :height 1.2))))
 '(custom-variable-tag ((t (:foreground "royalblue" :weight bold))))
 '(fixed-pitch ((t (:family "SF Mono"))))
 '(fixed-pitch-serif ((t (:family "SF Mono"))))
 '(fringe ((t (:background "grey98" :foreground "grey80"))))
 '(header-line ((t (:inherit mode-line :inverse-video t :box (:line-width 3 :color "#383a42")))))
 '(line-number ((t (:inherit default :foreground "grey90"))))
 '(line-number-current-line ((t (:inherit font-lock-comment-face))))
 '(linum ((t (:inherit default :foreground "grey90"))))
 '(lsp-ui-doc-background ((t (:background "gray95"))))
 '(lsp-ui-sideline-code-action ((t (:foreground "#a0a1a7" :slant italic))))
 '(markdown-header-face-1 ((t (:inherit outline-1))))
 '(markdown-header-face-2 ((t (:inherit outline-2))))
 '(markdown-header-face-3 ((t (:inherit outline-3))))
 '(markdown-header-face-4 ((t (:inherit outline-4))))
 '(markdown-header-face-5 ((t (:inherit outline-5))))
 '(markdown-header-face-6 ((t (:inherit outline-6))))
 '(minibuffer-prompt ((t (:foreground "#0184bc" :box (:line-width -1 :color "gray98") :weight bold))))
 '(mode-line ((t (:background "gray94" :box (:line-width 6 :color "gray94")))))
 '(mode-line-highlight ((t (:foreground "black" :box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "gray94" :foreground "#a0a1a7" :box (:line-width 6 :color "gray94")))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-block-begin-line ((t (:foreground "#a0a1a7" :slant italic :inherit fixed-pitch))))
 '(org-block-end-line ((t (:inherit org-block-begin-line))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-formula ((t (:foreground "Firebrick" :inherit fixed-pitch))))
 '(org-hide ((t (:inherit fixed-pitch :foreground "#fafafa"))))
 '(org-indent ((t (:inherit nil))))
 '(org-meta-line ((t (:inherit font-lock-comment-face :inherit fixed-pitch))))
 '(org-table ((t (:foreground "Blue1" :inherit fixed-pitch))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
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
 '(secondary-selection ((t (:background "LightGoldenrod1"))))
 '(transient-separator ((t (:background "grey98"))))
 '(variable-pitch ((t (:inherit default :foreground "gray30" :family "Libre Baskerville"))))
 '(web-mode-comment-face ((t (:inherit font-lock-comment-face))))
 '(window-divider ((t (:foreground "gray98"))))
 '(window-divider-first-pixel ((t (:foreground "gray94"))))
 '(window-divider-last-pixel ((t (:foreground "gray98")))))
