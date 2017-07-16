(require 'haskell-mode-autoloads)
(require 'haskell-cabal)

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(require 'haskell-mode)
(define-key haskell-mode-map "\C-ch" 'haskell-hoogle)
;(setq haskell-hoogle-command "hoogle")


;;ghc-mod
(add-to-list 'exec-path "~/.local/bin")

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
