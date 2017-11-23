;; Inspired by prelude's prelude-ui

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

;; set up zenburn theme
(load-theme 'material t)

;; Enable recursive mini buffers
(setq enable-recursive-minibuffers t)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; make the fringe (gutter) smaller
;; the argument is a width in pixels (the default is 8)
(if (fboundp 'fringe-mode)
    (fringe-mode 4))

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '("" invocation-name " MyWay - " (:eval (if (buffer-file-name)
                                                    (abbreviate-file-name (buffer-file-name))
                                                  "%b"))))

;; enable guru mode
(require 'guru-mode)
(guru-global-mode +1)

;; enable windmove
(require 'windmove)

;; use meta + arrow keys to switch between visible buffers
(windmove-default-keybindings 'meta)

;; the esc + arrow keys are mac-specific and are needed in case we
;; want to use the meta key in iterm2
(global-set-key (kbd "ESC <up>") 'windmove-up)
(global-set-key (kbd "ESC <down>") 'windmove-down)
(global-set-key (kbd "ESC <right>") 'windmove-right)
(global-set-key (kbd "ESC <left>") 'windmove-left)

;; disable annoying blink-matching-paren
(setq blink-matching-paren nil)

;; diminish keeps the modeline tidy
(require 'diminish)

;; meaningful names for buffers with the same name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

;; highlight the current line
(global-hl-line-mode +1)

(require 'volatile-highlights)
(volatile-highlights-mode t)
(diminish 'volatile-highlights-mode)

;; change default split screen direction to vertical split
;; http://stackoverflow.com/questions/2081577/setting-emacs-split-to-horizontal
(setq split-height-threshold nil)
(setq split-width-threshold 0)

;; ivy-related
;; Use Enter on a directory to navigate into the directory, not open it with dired.
;; (adapted from https://www.reddit.com/r/emacs/comments/51lqn9/helm_or_ivy/d7d34il/)
(define-key ivy-minibuffer-map (kbd "C-m") 'ivy-alt-done)

;; enable rainbow delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Use swiper or counsel-grep to search depending on buffer size.  See
;; https://github.com/abo-abo/swiper/issues/416.
(global-set-key "\C-s" 'counsel-grep-or-swiper)

;; Counsel-specific settings

;;; By default, counsel-M-x inserts a "^" character. This is to ensure
;;; that command you're searching for begins with the characters you
;;; type. The alist-get command below removes that initial character
;;; (which is located in the list `ivy-initial-inputs-alist, see:
;;; https://github.com/abo-abo/swiper/blob/a2bb1c488349a174ec088e538101a120e996ebc5/ivy.el#L1367)
(setf (alist-get 'counsel-M-x ivy-initial-inputs-alist nil t) nil)
(global-set-key (kbd "M-x") 'counsel-M-x)

(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-c k") 'counsel-ag)

;; Enable recentf
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

;; Exclude all the paths specified in recentf-excludes
(mapc (function
       (lambda (line)
         (if (and (eq (string-prefix-p ";" line) 'nil)
                  (eq (string= "" (string-trim line)) 'nil))
             (add-to-list 'recentf-exclude
                          (expand-file-name (string-trim line))))))
      (mw-read-lines "~/.emacs.d/recentf-excludes"))

;; Prettify docview
(require 'doc-view)
(setq doc-view-resolution 196)

(setq compilation-finish-functions 'compile-autoclose)
(defun compile-autoclose (buffer string)
  (cond ((string-match "finished" string)
         (bury-buffer "*compilation*")
         (winner-undo)
         (message "Build successful."))
        (t
         (message "Compilation exited abnormally: %s" string))))

(global-set-key "\C-x\C-m" 'compile)

;; Avy-related
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-timer)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)

;; Enable which-key mode
(require 'which-key)
(which-key-mode)

;; Enable ivy-rich
(require 'ivy-rich)
(ivy-set-display-transformer 'ivy-switch-buffer 'ivy-rich-switch-buffer-transformer)
(setq ivy-virtual-abbreviate 'full ivy-rich-switch-buffer-align-virtual-buffer t)
(setq ivy-rich-abbreviate-paths t)

(provide 'mw-ui)

;;; mw-ui.el ends here
