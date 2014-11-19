(provide 'setup-projectile)

(require 'projectile)
(require 'helm-projectile)
(require 'helm-projectile-all)

(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
