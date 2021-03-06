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

;; enable ivy
(require 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; Let ivy use flx for fuzzy-matching
;; (but use regular regex matching for swiper.)
(require 'flx)
(setq ivy-re-builders-alist
      '((swiper . ivy--regex)
        (t . ivy--regex-fuzzy)))


; Use projectile and counsel-projectile
(projectile-mode)
(counsel-projectile-on)

;; Enable caching in projectile
(setq projectile-enable-caching t)

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

;; configure org mode
(setq org-todo-keywords '((sequence "TODO" "IN-PROGRESS" "WAITING" "|" "DONE" "CANCELED")))
(setq org-log-done 'note)

(provide 'mw-plugins)
