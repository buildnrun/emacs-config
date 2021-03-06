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

;; Include common lisp
;; Helps with some elisp syntax later
(require 'cl)

;; Add the melpa repo to the package manager
(add-to-list 'package-archives
	       '("melpa" . "https://melpa.org/packages/") t)


;; Setup gnutls on Mac OSX
(cond
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (setf gnutls-verify-error t)
    (setf gnutls-trustfiles (list "/usr/local/etc/libressl/cert.pem")))))

;; Reads a file and returns a list of lines.
;; (Adapted from http://ergoemacs.org/emacs/elisp_read_file_content.html)
(defun mw-read-lines (filePath)
  (with-temp-buffer
    (insert-file-contents filePath)
    (split-string (buffer-string) "\n" t)))

(provide 'mw-initial-setup)
