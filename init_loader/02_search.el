;; anzu
(require 'anzu)
(global-anzu-mode +1)
(custom-set-variables
 '(anzu-mode-lighter "")
 '(anzu-deactivate-region t)
 '(anzu-search-threshold 1000)
 '(anzu-replace-to-string-separator " => "))
(set-face-attribute 'anzu-mode-line nil
                    :foreground "yellow")
(set-face-attribute 'anzu-replace-to nil
                    :foreground "yellow" :background "grey10")
