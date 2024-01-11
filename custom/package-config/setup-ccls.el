(provide 'setup-ccls)

(setq lsp-clients-clangd-executable "D:\\app\\scoop\\apps\\msys2\\2023-07-18\\clang64\\bin\\clangd.exe")

(use-package lsp-mode :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
;(use-package company-lsp :commands company-lsp)

(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda ()
           (require 'ccls)
           (lsp)
           (local-set-key (kbd "M-?") 'lsp-find-references)
           )))
