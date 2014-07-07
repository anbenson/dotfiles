(column-number-mode) ;; Shows the column number in the status bar.
(show-paren-mode) ;; Highlights the matching paren.
(global-linum-mode) ;; Shows the line numbers in a column on the left.
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; Trailing whitespace is pure evil.
(setq require-final-newline t) ;; Good practice.
