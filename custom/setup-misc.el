(provide 'setup-misc)

(defalias 'yes-or-no-p 'y-or-n-p)
(column-number-mode t)
(global-linum-mode t)
(global-font-lock-mode t)
(transient-mark-mode t)

;; save place
(defvar my-save-directory (concat user-emacs-directory "save.d/"))
(if (not (file-exists-p my-save-directory))
    (make-directory my-save-directory t))
(setq bookmark-default-file (concat my-save-directory "bookmark-save.el"))
(setq ido-save-directory-list-file (concat my-save-directory "io-last-save.el"))
(setq abbrev-file-name (concat my-save-directory "abbrev-defs-save.el"))
(setq diary-file (concat my-save-directory "diary-save.txt"))
(setq semanticdb-default-save-directory (concat my-save-directory "semanticdb"))
(setq ede-project-placeholder-cache-file (concat my-save-directory "ede-projects-cache.el"))
(setq projectile-cache-file (concat my-save-directory "projectile.cache.el"))
(setq projectile-known-projects-file (concat my-save-directory "projectile-bookmarks.eld"))
(setq recentf-save-file (concat my-save-directory "recentf.el"))
(setq ac-comphist-file (concat my-save-directory "ac-comphist.dat"))
(setq auto-save-list-file-prefix (concat my-save-directory "auto-save-list-"))
(setq session-save-file (concat my-save-directory "emacs.session"))
(setq tramp-persistency-file-name (concat my-save-directory "tramp-conn-history"))

;; backup config(no backups)
(setq make-backup-files nil)

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(size-indication-mode t)
(setq frame-title-format
      '("" invocation-name " - " (:eval (if (buffer-file-name)
                                            (abbreviate-file-name (buffer-file-name))
                                          "%b"))))
(set-face-attribute 'italic nil
                    :family "Inconsolata-Italic")
(setq visible-bell t)
(setq global-mark-ring-max 5000         ; increase mark ring to contains 5000 entries
      mark-ring-max 5000                ; increase kill ring to contains 5000 entries
      mode-require-final-newline t      ; add a newline to end of file
      tab-width 4                       ; default to 4 visible spaces to display a tab
      )

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)
(delete-selection-mode)

(setq kill-ring-max 5000 ; increase kill-ring capacity
      kill-whole-line t  ; if NIL, kill whole line and move the next line up
      )

;; show whitespace in diff-mode
(add-hook 'diff-mode-hook (lambda ()
                            (setq-local whitespace-style
                                        '(face
                                          tabs
                                          tab-mark
                                          spaces
                                          space-mark
                                          trailing
                                          indentation::space
                                          indentation::tab
                                          newline
                                          newline-mark))
                            (whitespace-mode 1)))
