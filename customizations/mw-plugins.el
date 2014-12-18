;; enable magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

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

;; enable ack
(require 'ack-and-a-half)
;; Create shorter aliases
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)
(defalias 'ack-with-args 'ack-and-a-half-with-args)

;; ;; enable doremi
;; (require 'doremi)
;; (require 'doremi-cmd)
;; (require 'doremi-frm)

(provide 'mw-plugins)
