;; recursive loading elisp files under .emacs.d directory
(let ((default-directory (expand-file-name "~/.emacs.d/elisps")))
 (add-to-list 'load-path default-directory)
 (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
     (normal-top-level-add-subdirs-to-load-path)))

;; for cask
(let ((default-directory (expand-file-name "~/.emacs.d/.cask")))
 (add-to-list 'load-path default-directory)
 (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
     (normal-top-level-add-subdirs-to-load-path)))

;; set emacs theme
(require 'reverse-theme)
(load-theme 'reverse t t)
(enable-theme 'reverse)

;; init-loader
(require 'init-loader)
(init-loader-load (concat user-emacs-directory "init_loader"))
