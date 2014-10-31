(require 'generic-x)
 
(defun list-interleave (ls res inserting)
  (cond
   ((not ls)  (reverse res))
   ((not res) (list-interleave (cdr ls) (cons (car ls) res) inserting))
   (t (list-interleave
       (cdr ls)
       (cons (car ls) (cons inserting res))
       inserting))))
 
(defvar infinterp-operators
  (apply 'concat (list-interleave
		  '("-" "=" ";")
                  '() "\\|")))
 
(defvar infinterp-builtins
  (mapcar (function (lambda (x) `(,x . font-lock-builtin-face)))
          '("mod" "div" "round" "display" "cons" "car" "cdr" "null" )))
 
(define-generic-mode 'infinterp-mode
  ;; 1. comment
  '("//")
  ;; 2. highlights for keywords
  '()
  ;; 3. highlights for each element
  `(("<<\\|>>"
     . font-lock-warning-face)
    ("/\\|=\\|;"
     . font-lock-constant-face)
    ("\\@"
     . font-lock-keyword-face)
    ("\\+\\|*\\|\\?"
     . font-lock-variable-name-face)
    ("(\\|)"
     . font-lock-function-name-face)
    ;; tag
    ("#[A-Za-z0-9_/]+"
     . font-lock-constant-face)
    ("^[A-Za-z]+"
     . font-lock-variable-name-face)
    ;; mu operator
    ("mu\\s-+\\([A-Za-z0-9_/]+\\)\\s-*\\."
     (1 font-lock-function-name-face))
    ;; lambda operator
    ("\\$\\s-*\\([A-Za-z0-9_/ ]+\\)\\s-*\\."
     (1 font-lock-function-name-face))
    . ,infinterp-builtins)
  ;; 4. file name
  '("\\.p4d$")
  ;; 5. hook function
  nil
  ;; 6. explanation
  "peg mode")
