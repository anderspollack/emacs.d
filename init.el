;; load package.el with gnu and melpa archives
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

;; check if use-package is installed; if it isn't, use package.el to install it
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; activate use-package
(eval-when-compile
  (require 'use-package))

;; setup org-mode for org-babel using use-package
(use-package org
  :ensure t
  :config
  ;; enable easy template insert (<s TAB) for org 9.2
  (use-package org-tempo)
  ;; prevent org code execution confirmation
  (setq org-confirm-babel-evaluate nil)
  ;; enable source block syntax hightlighting
  (setq org-src-fontify-natively t)
  ;; setup org-babel to execute code in these languages:
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (C . t)
     (css . t)
     (emacs-lisp . t)
     (js . t)
     (shell . t)
     ;; (lua . t)
     ;; (processing . t)
     ;; (ruby . t)
     ))
  ;; enable native tab behavior in source code blocks
  (setq org-src-tab-acts-natively t)
  ;; make indentation look normal with mixed font styles
  (setq org-indent-indentation-per-level 1)
  (setq org-indent-mode-turns-off-org-adapt-indentation nil)
  ;; hide starts
  (setq org-indent-mode-turns-on-hiding-stars t)
  ;; align tables
  (setq org-startup-align-all-tables t)
  ;; ensure org starts up indented 
  (setq org-startup-indented t)
  ;; enable visual-line mode in all text-mode buffers (including org)
  (add-hook 'text-mode-hook 'visual-line-mode)
  )

;; set gc-cons-threshold (garbage collection) to maximum while loading config for fast startup
(let ((gc-cons-threshold most-positive-fixnum))
  ;; load org config file
  (org-babel-load-file
   (expand-file-name "config.org"
                     user-emacs-directory))
  )

;; this is where emacs enables commands that warn before executing?
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
