; Highlight parenthesis
(show-paren-mode t)

; Not make backup file
(setq make-backup-files nil)

;;; add other package list
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
