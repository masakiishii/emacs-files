;;; 21_csharp.el ---

;; Copyright (C) 2015  masaki

;; Author: masaki <masaki@masaki-no-MacBook-Air.local>
;; Keywords:


(add-hook 'csharp-mode-hook 'omnisharp-mode)
(setq omnisharp-server-executable-path "~/developments/myrepo/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe")
