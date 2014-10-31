;;;; editing operations
;; Use regexp version as Default
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "M-%") 'anzu-query-replace-regexp)
(global-set-key (kbd "C-x M-%") 'anzu-query-replace-at-cursor)
(global-set-key (kbd "C-x %") 'anzu-replace-at-cursor-thing)
(global-set-key (kbd "C-M-s") 'isearch-forward-symbol-at-point)

;; my key mapping
(global-set-key "\M-t" 'gtags-find-tag)
(global-set-key "\M-r" 'gtags-find-rtag)
(global-set-key "\M-s" 'gtags-find-symbol)
(global-set-key "\M-p" 'gtags-find-pattern)
(global-set-key "\C-t" 'gtags-pop-stack)
(global-set-key "\M-c" 'compile)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-x\C-i" 'indent-region)
(global-set-key "\C-cc" 'comment-region)
(global-set-key "\C-cu" 'uncomment-region)
(global-set-key "\C-x\C-j" 'goto-line)
(global-set-key "\C-q" 'set-mark-command)
(global-set-key [f6] 'setnu-mode)
(global-set-key [f5] 'replace-string)
(windmove-default-keybindings)

;; helm binding
(global-set-key (kbd "C-x h")   'helm-mini)
(global-set-key (kbd "C-M-z")   'helm-resume)
(global-set-key (kbd "C-x C-x") 'helm-find-files)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "C-x C-l") 'helm-locate)
(global-set-key (kbd "M-y")     'helm-show-kill-ring)
;(global-set-key (kbd "C-h a")   'helm-apropos)
(global-set-key (kbd "C-x C-i") 'helm-imenu)
(global-set-key (kbd "C-x b")   'helm-buffers-list)

