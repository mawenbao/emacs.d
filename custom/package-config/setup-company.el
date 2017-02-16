;; package: company
(provide 'setup-company)
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-backends
      '((company-files          ; files & directory
         company-keywords       ; keywords
         company-capf
         company-abbrev
         company-dabbrev
         company-yasnippet
         company-semantic
         company-cmake
         company-gtags
         )
        ))
