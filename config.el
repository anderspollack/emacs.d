(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))

(if (not (window-system))
    (global-set-key (kbd "<mouse-5>") 'scroll-up-line))
(if (not (window-system))
    (global-set-key (kbd "<mouse-4>") 'scroll-down-line))

(add-hook 'term-mode-hook
          (lambda ()
            (define-key term-raw-map (kbd "C-y") 'term-paste)))

(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

(set-mouse-color "#000000")

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(add-hook 'dired-mode-hook
          (lambda ()
            (dired-hide-details-mode)
            (dired-sort-toggle-or-edit)))

(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))

(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "C-x g") 'magit-status))

(use-package evil
  :ensure t
  :init
  (setq evil-search-module 'evil-search)
  (setq evil-ex-complete-emacs-commands nil)
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below t)
  ;; (setq evil-shift-round nil)
  (setq evil-want-C-d-scroll t)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-u-delete t)
  (setq evil-want-keybinding nil)
  (setq evil-want-fine-undo t)
  (setq evil-default-state 'normal)
  :config
  (evil-mode 1)
  (evil-set-initial-state 'shell-mode 'emacs)
  (evil-set-initial-state 'eshell-mode 'emacs)
  (evil-set-initial-state 'term-mode 'emacs)

  )

(use-package evil-leader
  :after evil
  :ensure t
  :config
  (global-evil-leader-mode t)
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
    "f" 'find-file
    "b" 'switch-to-buffer
    "d" 'ido-dired
    "s" 'save-buffer
    "1" 'delete-other-windows
    "2" 'evil-window-split
    "3" 'evil-window-vsplit
    "0" (lambda ()
          (interactive)
          (delete-window))
    "=" 'balance-windows
    "o" 'other-window
    "h" 'windmove-left
    "j" 'windmove-down
    "k" 'windmove-up
    "l" 'windmove-right
    "n" 'make-frame
    "w" 'delete-frame
    "r" 'font-lock-fontify-buffer
    "t" (lambda ()
          (interactive)
          (eshell))
    "g" 'magit-status
    )
  ;; set SPC-' to toggle editing of org-src blocks
  (evil-leader/set-key "'" 'org-edit-src-exit)
  (evil-leader/set-key-for-mode 'org-mode "'" 'org-edit-special)

  ;; set SPC-SPC to move forward in info mode
  (evil-leader/set-key-for-mode 'info-mode "SPC" 'Info-scroll-up)
  )

(use-package evil-surround
  :after evil
  :ensure t
  :config
  (global-evil-surround-mode t))

(use-package evil-magit
  :after evil
  :ensure t
  :config
  (global-evil-surround-mode t))

(use-package evil-org
  :after evil
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(require 'lsp-mode)
(add-hook 'web-mode-hook 'lsp-deferred)

(add-hook 'after-init-hook 'global-company-mode)

;; change default "Find File" directory
(setq default-directory "/Users/anders/")

;; Make eshell tab completion behave like Bash
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq pcomplete-cycle-completions nil)))

;; alias y/n to yes/no for prompts
(defalias 'yes-or-no-p 'y-or-n-p)

;; enable variable pitch for mixed font styles
(add-hook 'text-mode-hook
          (lambda ()
            (variable-pitch-mode 1)))

;; set M-i as keyboard shortcut for imenu, instead of tab-to-tab-stop
(global-set-key (kbd "M-i") 'imenu)

;; remember these modes:
;; artist-mode, snake. look into org-babel

;;
;; PACKAGE-SPECIFIC CUSTOMIZATIONS
;;

;; setup tidal
;; (setq load-path (cons "~/.emacs.d/tidal/" load-path))
;; (require 'tidal)
;; (setq tidal-interpreter "/usr/local/bin/ghci")

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tag?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.liquid?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue?\\'" . web-mode))
(setq web-mode-engines-alist
      '(
        ("riot" . "\\.tag\\'")
        ("liquid" . "\\.liquid\\'")
        ))

(setq web-mode-content-types-alist
      '(
        ("json" . "\\.json\\'")
        ("jsx" . "/Users/Anders/Sites/portfolio/src/.*\\.js\\'")
        ("jsx" . "/Users/Anders/Sites/talk-about/src/.*\\.js\\'")
        ("jsx" . "/Users/Anders/Sites/music-directory/client/src/.*\\.tsx\\'")
        ("css" . "/Users/Anders/Sites/super-deluxe-2018/.*\\.scss.liquid\\'")
        ("liquid" . "/Users/Anders/Sites/donpollack/donpollack/.*\\.liquid\\'")
        ))

;; set indentation level to 2/4 for html/markup
(setq web-mode-markup-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-code-indent-offset 4)
(setq web-mode-style-padding 0)
(setq web-mode-script-padding 0)

;; disable electric pair mode in web mode for liquid files
(add-hook 'web-mode-hook
          (lambda () (if (equal (file-name-extension(buffer-file-name))
                                "liquid")
                         (electric-pair-local-mode -1))))

;; emmet-mode
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

;; enable emmet mode whenever web-mode is active
(add-hook 'web-mode-hook 'emmet-mode)

;; yaml mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; setup magit status
(global-set-key (kbd "C-x g") 'magit-status)

;; yasnippet
;; (require 'yasnippet)
;; (yas-global-mode 1)
