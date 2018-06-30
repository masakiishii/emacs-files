;; (require 'haskell-mode-autoloads)
;; (require 'haskell-cabal)

;; (add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;; (custom-set-variables
;;  '(haskell-indent-after-keywords (quote (("where" 4 0) ("of" 4) ("do" 4) ("mdo" 4) ("rec" 4) ("in" 4 0) ("{" 4) "if" "then" "else" "let")))
;;  '(haskell-indent-offset 4)
;;  '(haskell-indent-spaces 4))

;; (require 'haskell-mode)
;; (define-key haskell-mode-map "\C-ch" 'haskell-hoogle)
;; ;(setq haskell-hoogle-command "hoogle")


;; ;;ghc-mod
;; (add-to-list 'exec-path "~/.local/bin")

;; (autoload 'ghc-init "ghc" nil t)
;; (autoload 'ghc-debug "ghc" nil t)
;; (add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;;intero
(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)
