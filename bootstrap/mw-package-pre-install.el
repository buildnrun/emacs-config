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

;; Set default save location for abbreviations and save them silently
;; so that the initial use of Emacs MyWay does not ask questions.
(if (not (file-exists-p "~/.emacs.d/abbrev"))
    (make-directory "~/.emacs.d/abbrev/"))

(setq abbrev-file-name "~/.emacs.d/abbrev/abbrev_defs")
(setq save-abbrevs 'silently)

(provide 'mw-package-pre-install)
