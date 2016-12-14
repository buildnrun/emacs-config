;; Set up the package manager as the very first thing
(require 'package)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/bootstrap/")
(add-to-list 'load-path "~/.emacs.d/customizations/")

(setq exec-path (append exec-path '("/usr/local/bin")))

(require 'mw-initial-setup)
(require 'mw-package-setup)
(require 'mw-run-customizations)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
