;; line number setting
(require 'linum)
(global-linum-mode t)
(defvar linum-fomat "%4d ")
(set-face-attribute 'linum nil
                    :foreground "LightGoldenrod")
;                    :foreground "lemon chiffon")
(put 'upcase-region 'disabled nil)
