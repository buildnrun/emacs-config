;; Include common lisp
;; Helps with some elisp syntax later
(require 'cl)

;; Set up the package manager
(require 'package)
(package-initialize)

;; Add the melpa repo to the package manager
(add-to-list 'package-archives
	       '("melpa" . "http://melpa.org/packages/") t)

(provide 'mw-initial-setup)
