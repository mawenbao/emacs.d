(provide 'setup-prog)

;; gdb config
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t
n
 ;; Non-nil means display source file containing the main routine at startup
 ;; gdb-show-main t
 )

(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq default-fill-column 85)

;; golang
(add-hook 'go-mode-hook 'auto-complete-mode)

;; python
(add-hook 'python-mode-hook 'jedi:setup)
;;(setq jedi:complete-on-dot t)

;; c/cpp complete
(add-hook 'c-mode-common-hook 'company-mode)

;; c/cpp style
(add-hook 'c-mode-common-hook 'my-custom-cpp-style-hook)

(c-add-style "my-custom-style"
             '("stroustrup"
               (c-offsets-alist . ((innamespace . [0])))
               (c-basic-offset . 4)))

(defun my-custom-cpp-style-hook()
  (setq c-default-style "my-custom-style")
  (c-set-style "my-custom-style"))
