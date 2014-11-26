;;; 23_scala.el ---

;; Copyright (C) 2014  masaki

;; Author: masaki <masaki@masaki-no-MacBook-Air.local>
;; Keywords:

(require 'scala-mode2)
(require 'ensime)

(add-to-list 'auto-mode-alist
             '("\\.\\(scala\\|sbt\\)\\'" . scala-mode))
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
