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

(defvar mw-packages
  '(
    anzu
    auctex
    auto-complete
    auto-complete-clang-async
    auto-dictionary
    avy
    better-defaults
    browse-kill-ring
    counsel
    counsel-projectile
    diff-hl
    diminish
    easy-kill
    ess
    expand-region
    flx
    gradle-mode
    groovy-mode
    guru-mode
    ivy
    magit
    markdown-mode
    operate-on-number
    org
    paredit
    projectile
    python
    rainbow-delimiters
    rainbow-mode
    scala-mode
    smartparens
    smartrep
    sml-mode
    swiper
    undo-tree
    volatile-highlights
    which-key
    yaml-mode
    xcscope
    zenburn-theme)
"A list of packages to ensure are installed at launch.")


(defun mw-packages-installed-p ()
  "Check if all packages in `mw-packages' are installed."
  (every #'package-installed-p mw-packages))

(defun mw-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package mw-packages)
    (add-to-list 'mw-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun mw-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'mw-require-package packages))

(defun mw-install-packages ()
  "Install all packages listed in `mw-packages'."
  (unless (mw-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (mw-require-packages mw-packages)))

;; Finish any required tasks before installing packages
(require 'mw-package-pre-install)

;; run package installation
(mw-install-packages)

(provide 'mw-package-setup)
