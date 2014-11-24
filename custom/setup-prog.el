(provide 'setup-prog)

;; gdb config
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t
n
 ;; Non-nil means display source file containing the main routine at startup
 ;; gdb-show-main t
 )

;; set style to "linux"
(setq c-default-style "linux")

(add-hook 'c-mode-common-hook 'outline-minor-mode)
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq default-fill-column 85)

;; golang
(add-hook 'go-mode-hook 'auto-complete-mode)

;; python
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
