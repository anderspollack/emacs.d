(setq custom-file "~/.emacs.d/custom.el")
 (load custom-file)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))

(windmove-default-keybindings 'shift)
(global-set-key (kbd "C-M-h") 'windmove-left)
(global-set-key (kbd "C-j") nil)
(global-set-key (kbd "C-M-j") 'windmove-down)
(global-set-key (kbd "C-M-k") 'windmove-up)
(global-set-key (kbd "C-M-l") 'windmove-right)

(global-set-key (kbd "M-n") 'make-frame)
(global-set-key (kbd "M-w") (lambda () (interactive) (delete-window)))
(global-set-key [(meta W)] 'delete-frame)

(if (not (window-system))
    (xclip-mode t))

(if (not (window-system))
    (global-set-key (kbd "<mouse-5>") 'scroll-up-line))
(if (not (window-system))
    (global-set-key (kbd "<mouse-4>") 'scroll-down-line))

(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
	'(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

(set-mouse-color "#FFFFFF")

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; PACKAGE INSTALLATION
;; package list/update/install - should only be run once or else it slows
;; startup time significantly
(defun install-packages ()
  "run M-x package-install-selected-packages"
  (interactive)
  (package-refresh-contents)
  (package-install-selected-packages))
(install-packages)

;; suppress "ls does not support --dired"
(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil))

;; hide dired details, enable 's' toggle to sort be recently edited by default
(add-hook 'dired-mode-hook
    (lambda ()
      (dired-hide-details-mode)
      (dired-sort-toggle-or-edit)))

;; make org mode indent and word wrap
(with-eval-after-load 'org       
  (setq org-startup-indented t) ; Enable `org-indent-mode' by default
  (add-hook 'org-mode-hook #'visual-line-mode))

;; change default "Find File" directory
(setq default-directory "/Users/anders/")

;; press ESC twice to get out of minibuffer on Find File/Buffer, M-x, etc.
(global-set-key (kbd "ESC <escape>") 'keyboard-escape-quit)

;; make mac title bar transparent
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))

;; Make eshell tab completion behave like Bash
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq pcomplete-cycle-completions nil)))

;; alias y/n to yes/no for prompts
(defalias 'yes-or-no-p 'y-or-n-p)

;; resize windows with M-S-[arrow key]
(global-set-key [(meta shift right)] 'enlarge-window-horizontally)
(global-set-key [(meta shift left)] 'shrink-window-horizontally)
(global-set-key [(meta shift down)] 'enlarge-window)
(global-set-key [(meta shift up)] 'shrink-window)

;; enable variable pitch for mixed font styles
(add-hook 'text-mode-hook
          (lambda ()
            (variable-pitch-mode 1)))

;; font setup
(set-face-attribute 'default nil :family "Iosevka SS02" :height 130)
(set-face-attribute 'fixed-pitch nil :family "Iosevka SS02")
(set-face-attribute 'variable-pitch nil :family "Inter")

;; remember these modes:
;; artist-mode, snake. look into org-babel

;;
;;
;;
;; PACKAGE-SPECIFIC CUSTOMIZATIONS
;;
;;
;;

;; setup tidal
;; (setq load-path (cons "~/.emacs.d/tidal/" load-path))
;; (require 'tidal)
;; (setq tidal-interpreter "/usr/local/bin/ghci")

;; projectile mode
(projectile-mode +1)
(define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
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

;; enable emmet mode whenever web-mode is active
(add-hook 'web-mode-hook 'emmet-mode)

;; yaml mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; setup magit status
(global-set-key (kbd "C-x g") 'magit-status)

;; enable evil-leader
(global-evil-leader-mode)
;; set leader-key to SPACE
(evil-leader/set-leader "<SPC>")
;; setup evil-leader keybindings
(evil-leader/set-key
  "f" 'find-file
  "b" 'switch-to-buffer
  "s" 'save-buffer
  "=" 'balance-windows
  "g" 'magit-status
  "r" 'web-mode
  "i" 'indent-region
  "h" 'evil-window-left
  "j" 'evil-window-down
  "k" 'evil-window-up
  "l" 'evil-window-right
  "1" 'multi-term-dedicated-close-with-other-windows
  "2" 'evil-window-split
  "3" 'evil-window-vsplit
  "0" 'maximize-window
  "w" 'delete-window
  "t" 'mult-term-dedicated-open-select 
  "e" 'web-mode-set-engine
  "x" 'execute-extended-command
  "!" 'shell-command
  "%" 'query-replace
  "p" 'projectile-command-map
  "c" 'tidal-run-line
  "m" 'menu-bar-open
  )

(defun delete-all-other-windows ()
  "deletes all other windows including multi-term-dedicated"
  (interactive)
  (delete-other-windows)
  (if (multi-term-dedicated-exist-p)
      (multi-term-dedicated-close)))

(defun multi-term-dedicated-close-with-other-windows ()
  "deletes all other winows including multi-term dedicated, or close only multi-term-dedicated if it is the current window"
  (interactive)
  (if (multi-term-dedicated-window-p)
      (multi-term-dedicated-close)
    (delete-all-other-windows)))

(defun mult-term-dedicated-open-select ()
  "opens dedicated multi term and switches to it"
  (interactive)
  (if (multi-term-dedicated-exist-p)
      (multi-term-dedicated-close))
  (multi-term-dedicated-open)
  (multi-term-dedicated-select)
  (evil-insert-state)
  )

;; enable term-paste with C-y
;; (global-set-key (kbd "C-y") 'term-paste)

;; Enable evil mode
(require 'evil)
(evil-mode 1)

;; evil-mode page up/down keybindings
(global-set-key (kbd "M-j") nil)
(global-set-key (kbd "M-j") 'evil-scroll-page-down)
(global-set-key (kbd "M-k") nil)
(global-set-key (kbd "M-k") 'evil-scroll-page-up)

;; j/k for browsing wrapped lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;; setup evil mode exceptions
(loop for (mode . state) in '((inferior-emacs-lisp-mode . emacs)
                              (comint-mode . emacs)
                              (shell-mode . emacs)
                              (term-mode . insert)
                              (help-mode . emacs)
                              (dired-mode . emacs))
      do (evil-set-initial-state mode state))

;; enable fine undo
(setq evil-want-fine-undo t)

;; enable evil-surround mode
(global-evil-surround-mode 1)

(require 'multi-term)
(setq multi-term-program "/bin/bash")

;; yasnippet
;; (require 'yasnippet)
;; (yas-global-mode 1)

;; language server protocol
;; (require 'lsp-mode)
;; (add-hook 'prog-mode-hook #'lsp)
