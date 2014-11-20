;; package: company
(provide 'setup-company)
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-semantic)
(setq company-backends (delete 'company-clang company-backends))
(define-key c-mode-map  [(control tab)] 'company-complete)
(define-key c++-mode-map  [(control tab)] 'company-complete)
(add-to-list 'company-backends 'company-c-headers)
