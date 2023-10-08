(provide 'setup-rust)

(use-package lsp-mode
  :config
  (setq lsp-rust-analyzer-server-display-inlay-hints t)
  (setq lsp-ui-sideline-diagnostic-max-lines 1)
  (setq lsp-ui-sideline-show-diagnostics nil))
