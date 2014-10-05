;; Line/column numbers
(column-number-mode) ;; Shows the column number in the status bar.
(global-linum-mode) ;; Shows the line numbers in a column on the left.

;; Whitespace fixes
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; Remove trailing whitespace
(setq require-final-newline t) ;; Good practice.
(setq default-tab-width 2) ;; tabs are 2-space width
(setq c-basic-offset 2) ;; 2-space tabs
(setq-default indent-tabs-mode nil) ;; tabs to spaces

;; Remove Emacs trash files
(setq make-backup-files nil) ;; Don't make backup files
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
    (setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t))) ;; Put autosave files in /tmp

(show-paren-mode) ;; Highlights the matching paren.

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1) ;; Smooth scrolling
