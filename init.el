;; prevent org code execution confirmation, enable syntax hightlighting and native tab behavior in source code blocks
(setq org-confirm-babel-evaluate nil
      org-src-fontify-natively t
      org-src-tab-acts-natively t)

;; setup org-babel to execute code in these languages (C-c C-c in source code blocks):
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (C . t)
   (css . t)
   (emacs-lisp . t)
   (js . t)
   (lua . t)
   (processing . t)
   (ruby . t)
   (shell . t)
   ))

;; load org config file
(org-babel-load-file
 (expand-file-name "config.org"
                   user-emacs-directory))
