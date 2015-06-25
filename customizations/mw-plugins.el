;; enable magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(setq magit-last-seen-setup-instructions "1.4.0")

;; enable xcscope
(require 'xcscope)
(cscope-setup)

;; enable undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

;; enable helm
(require 'helm-config)
(global-set-key (kbd "C-c h") 'helm-mini)
(helm-mode 1)

;; ;; enable doremi
;; (require 'doremi)
;; (require 'doremi-cmd)
;; (require 'doremi-frm)

;; enable ess (emacs speaks statistics)
(require 'ess-site)

(provide 'mw-plugins)
