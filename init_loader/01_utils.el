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
(setq ns-command-modifier 'meta
      ns-alternate-modifier 'super
      ns-use-native-fullscreen nil ;; Don't use system fullscreen
      default-input-method "MacOSX"
      system-uses-terminfo nil)

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
