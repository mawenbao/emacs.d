(provide 'setup-session)

(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(add-to-list 'session-globals-exclude 'org-mark-ring)
(setq session-save-print-spec '(t nil 40000))
