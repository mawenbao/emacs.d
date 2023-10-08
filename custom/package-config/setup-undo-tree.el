(provide 'setup-undo-tree)

(require 'undo-tree)
(global-undo-tree-mode)
(setq undo-tree-auto-save-history t)

(defvar undo-history-directory (concat user-emacs-directory "undo/")
  "Directory to save undo history files.")
(unless (file-exists-p undo-history-directory)
  (make-directory undo-history-directory t))
;; stop littering with *.~undo-tree~ files everywhere
(setq undo-tree-history-directory-alist `(("." . ,undo-history-directory)))
