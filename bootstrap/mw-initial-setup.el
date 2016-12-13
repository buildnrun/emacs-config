;; Include common lisp
;; Helps with some elisp syntax later
(require 'cl)

;; Add the melpa repo to the package manager
(add-to-list 'package-archives
	       '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(provide 'mw-initial-setup)
