(provide 'setup-packages)

(require 'setup-smartparens)
(require 'setup-golden-ratio)
(require 'setup-helm)
(require 'setup-helm-gtags)
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-company)
(require 'setup-projectile)
(require 'setup-yasnippet)

(require 'go-autocomplete)
(require 'auto-complete-config)

(require 'saveplace)
(toggle-save-place-globally 1)

(require 'function-args)
(require 'bookmark+)
(require 'dired+)
(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

(require 'dtrt-indent)
(dtrt-indent-mode 1)

(require 'ws-butler)
(add-hook 'prog-mode-hook 'ws-butler-mode)

(require 'yasnippet)
(yas-global-mode 1)

(require 'volatile-highlights)
(volatile-highlights-mode t)

(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

(require 'dtrt-indent)
(dtrt-indent-mode 1)
(setq dtrt-indent-verbosity 0)

(require 'ws-butler)
(add-hook 'c-mode-common-hook 'ws-butler-mode)
(add-hook 'text-mode 'ws-butler-mode)
(add-hook 'fundamental-mode 'ws-butler-mode)

(require 'undo-tree)
(global-undo-tree-mode)

;; package anzu
(require 'anzu)
(global-anzu-mode)

;; package iedit
(setq iedit-toggle-key-default nil)
(require 'iedit)

;; package duplicate-thing
(require 'duplicate-thing)

;; package session
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(add-to-list 'session-globals-exclude 'org-mark-ring)

;; misc package settings
