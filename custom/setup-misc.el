(provide 'setup-misc)

;; auto reload
(global-auto-revert-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)
(column-number-mode t)
(global-linum-mode t)
(global-font-lock-mode t)
(transient-mark-mode t)

;; (cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; my own config
(defvar my-config-directory (concat user-emacs-directory "my-config/"))
(if (not (file-exists-p my-config-directory))
    (make-directory my-config-directory t))
(setq custom-file (concat my-config-directory "gui-config-save.el"))
(if (file-exists-p custom-file)
    (load-file custom-file))
(setq yas-snippet-dirs (list (concat my-config-directory "yasnippets/") 'yas-installed-snippets-dir))

;; save place, ~/.emacs.d/save.d
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
(setq save-place-file (concat my-save-directory "save-places.el"))
(setq eshell-directory-name (concat my-save-directory "eshell/"))

;; custom data directory, ~/.emacs.d/my-data
(defvar my-data-directory (concat user-emacs-directory "my-data/"))
(if (not (file-exists-p my-data-directory))
    (make-directory my-data-directory t))
(setq org-agenda-files (list (concat my-data-directory "org-files/2015/")))

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
(setq-default buffer-file-coding-system 'utf-8-unix)

(when (boundp 'w32-pipe-read-delay)
  (setq w32-pipe-read-delay 0))
;; Set the buffer size to 64K on Windows (from the original 4K)
(when (boundp 'w32-pipe-buffer-size)
  (setq irony-server-w32-pipe-buffer-size (* 64 1024)))

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
