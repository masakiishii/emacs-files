;; popwin(require 'popwin)(setq display-buffer-function 'popwin:display-buffer);; auto-async-byte-compile(push '(" *auto-async-byte-compile*" :stick t :height 14) popwin:special-display-config);; helm(push '("*helm-mode-execute-extended-command*" :stick t :height 15) popwin:special-display-config)(push '("*helm-mode-find-file*" :stick t :height 15) popwin:special-display-config)(push '("*helm-mode-load-file*" :stick t :height 15) popwin:special-display-config)(push '("*helm mini*" :stick t :height 15) popwin:special-display-config)(push '("*Helm Find Files*" :stick t :height 15) popwin:special-display-config)(push '("*helm recentf*" :stick t :height 15) popwin:special-display-config);; helm gtags(push '("*helm-mode-gtags-find-tag*" :stick t :height 15) popwin:special-display-config)(push '("*helm-mode-gtags-find-rtag*" :stick t :height 15) popwin:special-display-config)(push '("*helm-mode-gtags-find-symbol*" :stick t :height 15) popwin:special-display-config)