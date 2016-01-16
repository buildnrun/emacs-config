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

;; enable gradle
(require 'gradle-mode)
(gradle-mode 1)

;; enable sml-mode
(autoload 'sml-mode "sml-mode" "Major mode for editing SML." t)
(autoload 'run-sml "sml-proc" "Run an inferior SML process." t)
(setq sml-program-name "/usr/local/bin/sml")
(add-to-list 'auto-mode-alist '("\\.\\(sml\\|sig\\)\\'" . sml-mode))
(defun my-sml-mode-hook () "Local defaults for SML mode"
  (setq sml-indent-level 2)
  (setq words-include-escape t)
  (setq indent-tabs-mode nil))
(add-hook 'sml-mode-hook 'my-sml-mode-hook)

(provide 'mw-plugins)
