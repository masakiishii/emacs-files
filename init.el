(package-initialize)

(custom-set-variables
 '(conda-anaconda-home "~/anaconda3")
 '(parens-require-spaces nil)
 '(show-paren-delay 0)
 '(show-paren-style (quote expression)))


;; recursive loading elisp files under .emacs.d directory
(let ((default-directory (expand-file-name "~/.emacs.d/.cask")))
 (add-to-list 'load-path default-directory)
 (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
     (normal-top-level-add-subdirs-to-load-path)))

(require 'use-package)

(use-package doom-themes
  :custom
  (doom-themes-enable-italic t)
  (doom-themes-enable-bold t)
  :custom-face
  (doom-modeline-bar ((t (:background "#6272a4"))))
  :config
  (load-theme 'doom-dracula t)
  (doom-themes-neotree-config)
  (doom-themes-org-config))



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
		    :height 110)

(set-frame-parameter nil 'fullscreen 'maximized)


;; set a higher limit for recursion
(setq max-specpdl-size 50000)
(setq max-lisp-eval-depth (max max-lisp-eval-depth 50000))





;; invalid auto backup settings
(setq make-backup-files nil)
(setq auto-save-default nil)

;; input backslash instead of doller mark
(define-key global-map [?¥] [?\\])

;; set copy and paste settings
(defvar x-select-enable-primary t)
(defvar select-active-regions nil)
(defvar mouse-drag-copy-region t)
(global-set-key [mouse-2] 'mouse-yank-at-click)

;; Mac specified setting(Meta key, input method, terminfo)
;; (setq ns-command-modifier 'meta
;;       ns-alternate-modifier 'super
;;       ns-use-native-fullscreen nil ;; Don't use system fullscreen
;;       default-input-method "MacOSX"
;;       system-uses-terminfo nil)

;; util setting
(transient-mark-mode t)	                ; 選択部分のハイライト
(setq require-final-newline t)          ; always terminate last line in file
(setq major-mode 'text-mode)    ; default mode is text mode
(setq completion-ignore-case t)         ; file名の補完で大文字小文字を区別しない
(defvar partial-completion-mode 1)        ; 補完機能を使う
(setq inhibit-startup-message t)        ;hide start-up message
(setq make-backup-files nil)
(column-number-mode t)
(setq scroll-step 1)
(which-function-mode 1)
(if window-system (menu-bar-mode 1) (menu-bar-mode nil))



;; indent setting
(setq tab-width 4)
(setq indent-line-function 'indent-relative-maybe)

(require 'company)
(global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(setq company-selection-wrap-around t)

(set-face-attribute 'company-tooltip nil
                    :foreground "black" :background "lightgrey")
(set-face-attribute 'company-tooltip-common nil
                    :foreground "black" :background "lightgrey")
(set-face-attribute 'company-tooltip-common-selection nil
                    :foreground "white" :background "steelblue")
(set-face-attribute 'company-tooltip-selection nil
                    :foreground "black" :background "steelblue")
(set-face-attribute 'company-preview-common nil
                    :background nil :foreground "lightgrey" :underline t)
(set-face-attribute 'company-scrollbar-fg nil
                    :background "orange")
(set-face-attribute 'company-scrollbar-bg nil
                    :background "gray40")


(global-set-key (kbd "C-M-i") 'company-complete)

(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-search-map (kbd "C-n") 'company-select-next)
(define-key company-search-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-s") 'company-filter-candidates)
(define-key company-active-map (kbd "C-i") 'company-complete-selection)
(define-key emacs-lisp-mode-map (kbd "C-M-i") 'company-complete)

;; auto-insert setting
(auto-insert-mode 1)

(setq auto-insert-directory "~/.emacs.d/share/template/")
(define-auto-insert "\\.c" "template.c")
(define-auto-insert "\\.cs" "template.cs")




;; popwin
(require 'popwin)
(popwin-mode 1)
(setq pop-up-windows nil)



;; sequential-command setting
(require 'sequential-command-config)
(sequential-command-setup-keys)



;; flymake
(require 'flymake)



;; line number setting
(use-package display-line-numbers
  :ensure nil
  :hook
  ((prog-mode yaml-mode systemd-mode) . display-line-numbers-mode))




;; set paren highlight
(show-paren-mode 1)


(set-face-attribute 'show-paren-match nil
		    :background nil
		    :foreground nil
                    :underline "#ffff00"
		    :weight 'extra-bold)


;; cmake mode
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
		("\\.cmake\\'" . cmake-mode))
	      auto-mode-alist))



;; c and c++ mode setting

;; gtags
;;(autoload 'gtags-mode "gtags" "" t)


;; csharp-mode
;;(require 'my-csharp-mode)
;;(require 'dash)
;;(require 'json)
;;(require 'popup)
;;(require 'flycheck)
;;(add-hook 'after-init-hook #'global-flycheck-mode)
;; quickrun.el for csharp
;(require 'quickrun)





(use-package lsp-mode
  :commands lsp
  :general
  (lsp-prefer-flymake 'flymake)
  :custom
  (lsp-prefer-capf t)
  (company-lsp nil)
  ;;(lsp-enable-indentation nil)
  )

(use-package company-lsp)
(use-package lsp-ui
	:config
	(add-hook 'lsp-mode-hook 'lsp-ui-mode)
	:custom
	;; lsp-ui-imenu
	(lsp-ui-imenu-enable nil)
	)

(use-package company
	:config
	(global-company-mode)
	(push 'company-lsp company-backends))

(use-package python-mode
	:config
	(add-hook 'python-mode-hook #'lsp))

(use-package ccls
  :custom (ccls-executable "/usr/bin/ccls")
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))

(use-package conda
	:init
	(custom-set-variables '(conda-anaconda-home "~/anaconda3")))


(add-hook 'c-mode-hook
	  '(lambda ()
	     ;;(gtags-mode t)
	     (c-set-style "linux")
	     (setq tab-width 4)
	     (setq indent-tabs-mode t)
	     (setq c-basic-offset tab-width))
	  )

(add-hook 'c++-mode-hook
	  '(lambda ()
	     ;;(gtags-mode t)
	     (c-set-style "linux")
	     (setq tab-width 4)
	     (setq indent-tabs-mode t)
	     (setq c-basic-offset tab-width))
	  )


;; (use-package cc-mode
;;   :hook (c-mode-common . (lambda ()
;;                             (c-set-style "linux")
;;                             (setq tab-width 4)
;;                             (setq c-base-offset 4))))

;; elscreen setting
(require 'elscreen)
(elscreen-start)
(global-unset-key "\C-o")
(setq elscreen-prefix-key "\C-o")
(load "elscreen" "ElScreen" t)






;;;; editing operations
;; Use regexp version as Default
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward-symbol-at-point)

;; my key mapping
(global-set-key "\M-c" 'compile)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-x\C-i" 'indent-region)
(global-set-key "\C-cc" 'comment-region)
(global-set-key "\C-cu" 'uncomment-region)
(global-set-key "\C-q" 'set-mark-command)
(global-set-key "\C-j" 'newline-and-indent)
(windmove-default-keybindings)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-bar ((t (:background "#6272a4")))))



(use-package beacon
  :custom
  (beacon-color "yellow")
  :config
  (beacon-mode 1))
