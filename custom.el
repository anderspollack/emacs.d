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
 '(mode-line-format
   '("%e"
     (:eval
      (let*
          ((active
            (powerline-selected-window-active))
           (mode-line-buffer-id
            (if active 'mode-line-buffer-id 'mode-line-buffer-id-inactive))
           (mode-line
            (if active 'mode-line 'mode-line-inactive))
           (face0
            (if active 'powerline-active0 'powerline-inactive0))
           (face1
            (if active 'powerline-active1 'powerline-inactive1))
           (face2
            (if active 'powerline-active2 'powerline-inactive2))
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
             (powerline-raw "%*" face0 'l)
             (when powerline-display-buffer-size
               (powerline-buffer-size face0 'l))
             (powerline-buffer-id
              `(mode-line-buffer-id ,face0)
              'l)
             (powerline-raw " " face0)
             (funcall separator-left face0 face1)
             (powerline-narrow face1 'l)
             (powerline-vc face1)))
           (rhs
            (list
             (powerline-raw global-mode-string face1 'r)
             (powerline-raw "%4l" face1 'r)
             (powerline-raw ":" face1)
             (powerline-raw "%3c" face1 'r)
             (funcall separator-right face1 face0)
             (powerline-raw " " face0)
             (powerline-raw "%6p" face0 'r)
             (when powerline-display-hud
               (powerline-hud face2 face1))))
           (center
            (append
             (list
              (powerline-raw " " face1)
              (funcall separator-left face1 face2)
              (when
                  (and
                   (boundp 'erc-track-minor-mode)
                   erc-track-minor-mode)
                (powerline-raw erc-modified-channels-object face2 'l))
              (powerline-major-mode face2 'l)
              (powerline-process face2)
              (powerline-raw " " face2))
             (if
                 (split-string
                  (format-mode-line minor-mode-alist))
                 (append
                  (if evil-mode
                      (list
                       (funcall separator-right face2 face1)
                       (powerline-raw evil-mode-line-tag face1 'l)
                       (powerline-raw " " face1))))))))
        (concat
         (powerline-render lhs)
         (powerline-fill-center face1
                                (/
                                 (powerline-width center)
                                 2.0))
         (powerline-render center)
         (powerline-fill face1
                         (powerline-width rhs))
         (powerline-render rhs))))))
 '(next-screen-context-lines 5)
 '(package-selected-packages
   '(solarized-theme flycheck company-elisp haskell evil-magit evil-collection org evil-org lua-mode which-key lsp-ui company-lsp company yasnippet lsp-mode xclip yaml-mode magit evil-leader evil-surround evil-visual-mark-mode emmet-mode web-mode haskell-mode))
 '(powerline-default-separator 'utf-8)
 '(prettier-js-command "prettier --ignore-path ~/.prettierignore")
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(sentence-end-double-space nil)
 '(shift-select-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(treemacs-no-png-images t)
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
 '(markdown-inline-code-face ((t (:foreground "#93a1a1" :family "SF Mono"))))
 '(markdown-pre-face ((t (:foreground "#93a1a1" :family "SF Mono"))))
 '(mode-line ((((class color) (min-colors 89)) (:inverse-video unspecified :overline "#eee8d5" :underline "#eee8d5" :foreground "#657b83" :background "#eee8d5" :box (:line-width 1 :color "#eee8d5" :style unspecified)))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:inverse-video unspecified :overline "#eee8d5" :underline "#eee8d5" :foreground "#93a1a1" :background "#fdf6e3" :box (:line-width 1 :color "#fdf6e3" :style unspecified)))))
 '(org-block ((t (:family "SF Mono"))))
 '(org-code ((t (:foreground "#93a1a1" :family "SF Mono"))))
 '(org-meta-line ((t (:foreground "#93a1a1" :slant italic :family "SF Mono"))))
 '(powerline-inactive1 ((t (:background "#eee8d5" :foreground "#93a1a1" :box (:line-width 1 :color "#eee8d5") :underline "#eee8d5"))))
 '(variable-pitch ((t (:family "Libre Baskerville")))))
