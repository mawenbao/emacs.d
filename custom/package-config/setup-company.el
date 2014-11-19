;; package: company
(provide 'setup-company)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(delete 'company-semantic company-backends)
(define-key c-mode-map  [(control tab)] 'company-complete)
(define-key c++-mode-map  [(control tab)] 'company-complete)
(add-to-list 'company-backends 'company-c-headers)

;; for golang
(require 'company-go)
;; (add-hook 'go-mode-hook (lambda ()
                          ;; (set (make-local-variable 'company-backends) '(company-go))
                          ;; (company-mode)))
