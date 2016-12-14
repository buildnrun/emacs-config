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

;; set up the plugins/extensions
(require 'mw-plugins)

;; Setup the UI
(require 'mw-ui)

;; set up the various editor options
(require 'mw-editor)

;; set up auto-complete
(require 'mw-auto-complete)

;; set up auto-complete-clang-async
(require 'mw-auto-complete-clang-async)

;; end of mw-run-customizations.el
(provide 'mw-run-customizations)
;; end of mw-run-customizations.el
