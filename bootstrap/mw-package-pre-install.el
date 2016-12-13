;; Set default save location for abbreviations and save them silently
;; so that the initial use of Emacs MyWay does not ask questions.
(make-directory "~/.emacs.d/abbrev/")
(setq abbrev-file-name "~/.emacs.d/abbrev/abbrev_defs")
(setq save-abbrevs 'silently)

(provide 'mw-package-pre-install)
