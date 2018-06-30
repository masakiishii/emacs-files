;; encoding
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/mozc")
;;(require 'mozc)
(load-file "/usr/share/emacs/site-lisp/mozc/mozc.el")
(setq default-input-method "japanese-mozc")
;; (set-language-environment "Japanese")
;; (set-default-coding-systems 'utf-8-dos)

;; English font
(set-face-attribute 'default nil
             :family "Mono" ;; font
             :height 150)    ;; font size

;; Japanese font
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (font-spec :family "IPAゴシック" :height 150))
;;(set-fontset-font
;; nil 'japanese-jisx0208
;;  (font-spec :family "Hiragino Kaku Gothic ProN")) ;; font

;; Coloring
(global-font-lock-mode +1)

;; mode-line color
(set-face-attribute 'mode-line nil
                    :background "#333333" :foreground "#cccccd")
(set-face-attribute 'mode-line-buffer-id nil
                    :foreground "orange" :weight 'bold)

;; cursor
(set-cursor-color "chartreuse2")
(blink-cursor-mode t)

;; window
(if (boundp 'window-system)
    (setq initial-frame-alist
          (append (list '(alpha . 85)) initial-frame-alist)))
(if window-system (set-scroll-bar-mode 'right))
(file-name-shadow-mode t)
(setq default-frame-alist initial-frame-alist)
(setq truncate-lines nil)
(setq truncate-partial-width-windows t)

(set-face-attribute 'default nil
		    :height 150)

(set-frame-parameter nil 'fullscreen 'maximized)


;; set a higher limit for recursion
(setq max-specpdl-size 50000)
(setq max-lisp-eval-depth (max max-lisp-eval-depth 50000))
