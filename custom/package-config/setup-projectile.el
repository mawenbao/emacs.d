(provide 'setup-projectile)

(require 'projectile)
(require 'helm-projectile)
; (require 'helm-projectile-all)

(projectile-global-mode)
;; (projectile-mode 1)
;; (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
