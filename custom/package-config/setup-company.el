;; package: company
(provide 'setup-company)
(require 'company)

(setq company-dabbrev-downcase nil)
(add-hook 'after-init-hook 'global-company-mode)

(setq company-backends
      '((company-files          ; files & directory
         company-keywords       ; keywords
         company-capf
         company-dabbrev-code
         company-yasnippet
         company-semantic
         ;; company-cmake
         ;; company-gtags
         ;; company-abbrev
         )
        ))
