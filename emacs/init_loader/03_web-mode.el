;; --------------------------------------------------
;; web-mode
;; http://rubikitch.com/2014/08/24/web-mode/
;; --------------------------------------------------
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.smarty\\'" . web-mode));; Smarty
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))   ;; Handlebars.js
