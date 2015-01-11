;;; 21_csharp.el ---

;; Copyright (C) 2015  masaki

;; Author: masaki <masaki@masaki-no-MacBook-Air.local>
;; Keywords:



(require 'csharp-mode)
(add-hook 'csharp-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq c-basic-offset 4)
             (c-set-offset 'substatement-open 0)
             (flycheck-mode 1)
             (omnisharp-mode)))

(require 'omnisharp)
;; (setq omnisharp-server-executable-path
;;       (expand-file-name "/Users/masaki/.emacs.d/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe"))

(defun my-omnisharp-start (sln)
  (interactive "fOpen sln: ")
  (omnisharp-start-omnisharp-server (expand-file-name sln)))

(define-key omnisharp-mode-map "\C-c\C-s" 'omnisharp-start-omnisharp-server)
(define-key omnisharp-mode-map "\M-/" 'omnisharp-auto-complete)
(define-key omnisharp-mode-map "." 'omnisharp-add-dot-and-auto-complete)
(define-key omnisharp-mode-map "\C-c\C-c" 'omnisharp-build-in-emacs)
(define-key omnisharp-mode-map "\C-c\C-N" 'omnisharp-navigate-to-solution-member)
(define-key omnisharp-mode-map "\C-c\C-n" 'omnisharp-navigate-to-current-file-member)
(define-key omnisharp-mode-map "\C-c\C-f" 'omnisharp-navigate-to-solution-file)
(define-key omnisharp-mode-map "\C-c\C-g" 'omnisharp-go-to-definition)
(define-key omnisharp-mode-map "\C-c\C-r" 'omnisharp-rename)
(define-key omnisharp-mode-map "\C-c\C-v" 'omnisharp-run-code-action-refactoring)
(define-key omnisharp-mode-map "\C-c\C-o" 'omnisharp-auto-complete-overrides)
(define-key omnisharp-mode-map "\C-c\C-u" 'omnisharp-helm-find-symbols)
(define-key omnisharp-mode-map "\C-c\C-t\C-s" (lambda() (interactive) (omnisharp-unit-test "single")))
(define-key omnisharp-mode-map "\C-c\C-t\C-r" (lambda() (interactive) (omnisharp-unit-test "fixture")))
(define-key omnisharp-mode-map "\C-c\C-t\C-e" (lambda() (interactive) (omnisharp-unit-test "all")))
