(defvar mw-packages
  '(ack-and-a-half
    anzu
    auctex
    auto-complete
    auto-complete-clang
    auto-complete-clang-async
    auto-dictionary
    better-defaults
    browse-kill-ring
    ;doremi
    ;doremi-cmd
    ;doremi-frm
    diff-hl
    diminish
    easy-kill
    ess
    expand-region
    guru-mode
    helm
    magit
    markdown-mode
    operate-on-number
    paredit
    projectile
    python
    rainbow-mode
    smartparens
    smartrep
    undo-tree
    volatile-highlights
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

;; run package installation
(mw-install-packages)

(provide 'mw-package-setup)
