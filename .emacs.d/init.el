;;; 右から左に読む言語に対応させないことで描画高速化
(setq-default bidi-display-reordering nil)
;;; splash screenを無効にする
(setq inhibit-splash-screen t)
;;; 同じ内容を履歴に記録しないようにする
(setq history-delete-duplicates t)
;; C-u C-SPC C-SPC ...でどんどん過去のマークを遡る
(setq set-mark-command-repeat-pop t)
;;; 複数のディレクトリで同じファイル名のファイルを開いたときのバッファ名を調整する
(require 'uniquify)
;; filename<dir> 形式のバッファ名にする
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "[^*]+")
;;; ファイルを開いた位置を保存する
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))
;;; インデントにTABを使わないようにする
(setq-default indent-tabs-mode nil)
;;; 現在行に色をつける
;(global-hl-line-mode 1)
;;; ミニバッファ履歴を次回Emacs起動時にも保存する
(savehist-mode 1)
;;; シェルに合わせるため、C-hは後退に割り当てる
(global-set-key (kbd "C-h") 'delete-backward-char)
;;; モードラインに時刻を表示する
(display-time)
;;; 行番号・桁番号を表示する
(line-number-mode 1)
(column-number-mode 1)
;;; GCを減らして軽くする
(setq gc-cons-threshold (* 10 gc-cons-threshold))
;;; ログの記録行数を増やす
(setq message-log-max 10000)
;;; 履歴をたくさん保存する
(setq history-length 1000)
;;; メニューバーとツールバーとスクロールバーを消す
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
; set `bs-show` to default buffer list
(global-set-key (kbd "C-x C-b") 'bs-show)
;/ keybind C-h to dlete
(keyboard-translate ?\C-h ?\C-?)

; Highlight parenthesis
(show-paren-mode t)

; Not make backup file
(setq make-backup-files nil)

;;; Don't make auto-save-list
(setq auto-save-list-file-prefix nil)

;;; Don't inset magic comment in ruby-mode
(setq ruby-insert-encoding-magic-comment nil)

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
 '(package-selected-packages
   (quote
    (flycheck yasnippet helm-ls-git helm-git-grep helm recentf-ext git-gutter+ ruby-test-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Must write installed packages below!!!

;;; set git-gutter+
(require 'git-gutter+)
(global-git-gutter+-mode t)

;;; set yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;;; set recentf-ext
;; 最近のファイル500個を保存する
(setq recentf-max-saved-items 500)
;; 最近使ったファイルに加えないファイルを
;; 正規表現で指定する
(setq recentf-exclude
      '("/TAGS$" "/var/tmp/"))
(require 'recentf-ext)
;; キーバインド
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;; flycheck
(require 'flycheck) 
(global-flycheck-mode)

;;; set helm
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "C-x c f") 'helm-multi-files)
(global-set-key (kbd "C-x c r") 'helm-recentf)
(global-set-key (kbd "C-x c b") 'helm-mini)

;;; set helm-ls-git
(require 'helm-ls-git)
(global-set-key (kbd "C-x g l") 'helm-ls-git-ls)

;;; set helm-git-grep
(require 'helm-git-grep)
(global-set-key (kbd "C-x g g") 'helm-git-grep)
