;; スタートアップ非表示
(setq inhibit-startup-screen t)

;; メニューバーを非表示
(menu-bar-mode -1)

;; タブをスペースで扱う
(setq-default indent-tabs-mode nil)

;; タブ幅
(custom-set-variables '(tab-width 4))

;; バックアップを残さない
(setq make-backup-files nil)

;; バッファ自動再読み込み
(global-auto-revert-mode 1)

;; Ctrl-h = BS
(global-set-key "\C-h" 'delete-backward-char)

;; 折り返し表示ON/OFF
(defun toggle-truncate-lines ()
  (interactive)
  (if truncate-lines
      (setq truncate-lines nil)
    (setq truncate-lines t))
  (recenter))

(global-set-key "\C-c\C-l" 'toggle-truncate-lines)
(custom-set-variables '(tool-bar-mode nil)) (custom-set-faces )

;; Emacs package system
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; migemo
(require 'migemo)
(setq migemo-command "/usr/local/bin/cmigemo")
(setq migemo-options '("-q" "--emacs"))
(setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
(setq migemo-user-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(setq migemo-regex-dictionary nil)
(load-library "migemo")
(migemo-init)
