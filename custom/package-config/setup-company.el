;; package: company
(provide 'setup-company)
(require 'company)

(setq company-dabbrev-downcase nil)
(add-hook 'after-init-hook 'global-company-mode)

(setq company-backends
      '((
         company-semantic
         company-keywords       ; keywords
         company-capf
         company-yasnippet
         company-files          ; files & directory
         ;; company-cmake
         ;; company-gtags
         company-abbrev
         company-dabbrev-code
        )))

(add-hook 'c-mode-common-hook
          (lambda ()
            (setq-local company-backends (copy-sequence company-backends))
            (add-to-list 'company-backends
                         '(company-semantic company-dabbrev-code))
            ))

(add-hook 'rust-mode-hook
          (lambda ()
            (setq-local company-backends (copy-sequence company-backends))
            (add-to-list 'company-backends
                         '(company-racer))
            ))

(add-hook 'go-mode-hook
          (lambda ()
            (setq-local company-backends (copy-sequence company-backends))
            (add-to-list 'company-backends
                         '(company-dabbrev-code))
            ))
