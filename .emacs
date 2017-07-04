; keybind C-h to dlete
(keyboard-translate ?\C-h ?\C-?)

; Highlight parenthesis
(show-paren-mode t)

; Not make backup file
(setq make-backup-files nil)

; Not make save file
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)

;;; add other package list
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (term+mux term+ ruby-test-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
