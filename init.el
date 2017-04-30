;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

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
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (ztree zenburn-theme yaml-mode xcscope volatile-highlights undo-tree sml-mode smartrep smartparens scala-mode rainbow-mode rainbow-delimiters projectile paredit operate-on-number markdown-mode magit helm-ag guru-mode groovy-mode gradle-mode flx expand-region ess easy-kill diminish diff-hl counsel browse-kill-ring better-defaults auto-dictionary auto-complete-clang-async auto-complete auctex anzu))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
