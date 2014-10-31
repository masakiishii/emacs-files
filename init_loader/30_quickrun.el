(require 'quickrun)

(push '("*quickrun*") popwin:special-display-config)

(defun my-quickrun-output-fix ()
  (interactive)
  (quickrun)
  (sit-for 0.5)
  (beginning-of-buffer)
  (sit-for 0.5)
  (end-of-buffer)
  )

(global-set-key (kbd "M-g M-q") 'my-quickrun-output-fix)
(global-set-key (kbd "M-g M-w") 'quickrun-with-arg)
