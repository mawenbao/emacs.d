(provide 'setup-prog)

;; gdb config
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t
 ;; Non-nil means display source file containing the main routine at startup
 ;; gdb-show-main t
 )

(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq default-fill-column 85)

;; cmake tab width
(setq-default cmake-tab-width 4)

;; js2 mode for js
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; web mode for quicktemplate
(add-to-list 'auto-mode-alist '("\\.qtpl\\'" . web-mode))

;; golang
(require 'setup-golang)

;; python
;; (add-hook 'python-mode-hook 'jedi:setup)
;;(setq jedi:complete-on-dot t)

;; open .h files with c++-mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-hook 'c-mode-common-hook 'hs-minor-mode)
;; c/cpp complete
(add-hook 'c-mode-common-hook 'company-mode)
;; c/cpp style
(c-add-style "my-custom-style"
             '("stroustrup"
               (c-offsets-alist . ((innamespace . [0])))
               (c-basic-offset . 4)))
(defun my-custom-cpp-style-hook()
  (setq c-default-style "my-custom-style")
  (c-set-style "my-custom-style"))
(add-hook 'c-mode-common-hook 'my-custom-cpp-style-hook)

;; type script uses tide
(add-hook 'typescript-mode-hook
          (lambda ()
            (tide-setup)
            (flycheck-mode +1)
            (setq flycheck-check-syntax-automatically '(save mode-enabled))
            (eldoc-mode +1)
            ;; company is an optional dependency. You have to
            ;; install it separately via package-install
            (company-mode-on)))

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
