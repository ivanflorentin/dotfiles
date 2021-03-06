;;; xref-rst-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "xref-rst" "xref-rst.el" (0 0 0 0))
;;; Generated autoloads from xref-rst.el

(autoload 'xref-rst-mode "xref-rst" "\
Enable Xref for RST files.

If called interactively, enable Xref-Rst mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "xref-rst" '("xref-rst-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; xref-rst-autoloads.el ends here
