(package-initialize)

(load (expand-file-name (concat (getenv "HOME") "/.emacs.d/init")))
(custom-set-variables
 '(conda-anaconda-home "~/anaconda3")
 '(package-selected-packages (quote (intero)))
 '(parens-require-spaces nil)
 '(show-paren-delay 0)
 '(show-paren-style (quote expression)))
