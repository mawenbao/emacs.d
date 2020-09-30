(provide 'setup-projectile)

(require 'projectile)
(require 'helm-projectile)
; (require 'helm-projectile-all)

(projectile-global-mode)
;; (projectile-mode 1)
;; (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(setq projectile-enable-caching t)
(setq projectile-indexing-method 'native)

(setq projectile-globally-ignored-files '("GTAGS" "GRTAGS" "GPATH"))
(setq projectile-globally-ignored-directories '())
(setq projectile-globally-ignored-file-suffixes '())

(setq projectile-completion-system 'helm)
(helm-projectile-on)
