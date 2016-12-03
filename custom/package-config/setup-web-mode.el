(provide 'setup-web-mode)

;; web-mode
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-current-element-highlight t)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-enable-auto-pairing t)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)
