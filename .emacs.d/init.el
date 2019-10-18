;;; package --- Summary
;;; Commentary:
;;; Load config.org (parsing org)
;;; Code:

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(provide 'init.el)
;;; init.el ends here
