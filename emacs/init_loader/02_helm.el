(require 'helm-config)
(global-set-key (kbd "C-c h") 'helm-mini)
(helm-mode 1)
(define-key helm-read-file-map (kbd "C-h") 'delete-backward-char) ;;ミニバッファでC-hをバックスペースに割り当て
