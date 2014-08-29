(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; custom color
(defface markdown-header-face-1
  '((((class color) (background light))
     (:foreground "OrangeRed" :underline "OrangeRed"))
    (((class color) (background dark))
     (:foreground "OrangeRed" :underline "OrangeRed")))
  "Face for level-1 headers.")

(defface markdown-header-face-2
  '((((class color) (background light))
     (:foreground "magenta1" :underline "magenta1"))
    (((class color) (background dark))
     (:foreground "magenta1" :underline "magenta1")))
  "Face for level-2 headers.")

(defface markdown-header-face-3
  '((((class color) (background light))
     (:foreground "gold" :underline "gold"))
    (((class color) (background dark))
     (:foreground "gold" :underline "gold")))
  "Face for level-3 headers.")

(defface markdown-header-face-4
  '((((class color) (background light))
     (:foreground "DeepPink4" :underline "DeepPink4"))
    (((class color) (background dark))
     (:foreground "DeepPink4" :underline "DeepPink4")))
  "Face for level-4 headers.")

(defface markdown-header-face-5
  '((((class color) (background light))
     (:foreground "magenta4" :underline "magenta4"))
    (((class color) (background dark))
     (:foreground "magenta4" :underline "magenta4")))
  "Face for level-5 headers.")

(defface markdown-header-face-6
  '((((class color) (background light))
     (:foreground "purple4" :underline "purple4"))
    (((class color) (background dark))
     (:foreground "purple4" :underline "purple4")))
  "Face for level-6 headers.")
