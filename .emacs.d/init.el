;;; package -- Summary
;;; Commentary:
;;; Code:

;; theme
;;; (load-theme 'spacemacs-dark t)
;;; (load-theme 'spacemacs-dark t)
(load-theme 'spacemacs-light t)

(add-to-list 'load-path "~/.emacs.d/lisp")

;(require 'layout-restore)
;
;(desktop-save-mode)
;(desktop-restore-frameset)
;(desktop-auto-save)
;(desktop-save-in-desktop-dir)
;(desktop-change-dir)
;(desktop-file-name "./session")
;
;
;(require 'windows)
;(require 'recentf)
;
;;; -- Load the saved windows automatically on boot
;(add-hook 'window-setup-hook 'resume-windows)
;
;;; -- Save place in file
;(setq-default save-place t)
;
;;; --  Use this command to quit and save your setup
;;(define-key ctl-x-map "C" 'see-you-again)
;
;;; -- Set up window saving!! Place at end of .emacs file
;(win:startup-with-window)
;
;
;
;(require 'layout-restore)
;(require 'frame-restore)
;
;
;
;(setq save-place-file (locate-user-emacs-file "places" ".emacs-places"))
;
;;;; windows position
;;;; http://www.gentei.org/~yuuji/software/windows.el
;(require 'windows)
;(win:startup-with-window)
;(define-key ctl-x-map "C" 'see-you-again)
;
;
;

;;; END TEST SECTION
;;;-------------------------------------------



;;;; Ivan's keybindings


(global-set-key (kbd "C-M-p") 'projectile-find-file)
(global-set-key (kbd "C-M-f") 'grep-find)

;;; git
(global-set-key (kbd "C-M-d") 'magit-diff)
(global-set-key (kbd "C-M-l") 'magit-log-all)
(global-set-key (kbd "C-M-c") 'magit-commit)
(global-set-key (kbd "C-M-s") 'magit-status)


;;; window management
(global-set-key (kbd "C-M-_") (kbd "C-x o"))
(global-set-key (kbd "C-M--") 'previous-multiframe-window)
(global-set-key (kbd "<C-M-insert>") 'previous-multiframe-window)
(global-set-key (kbd "<C-M-delete>") 'next-multiframe-window)
(global-set-key (kbd "<C-prior>") 'enlarge-window)
(global-set-key (kbd "<C-M-prior>") 'enlarge-window-horizontally)
(global-set-key (kbd "<C-M-next>") 'shrink-window-horizontally) ;
(global-set-key (kbd "<C-next>") 'shrink-window)


;;(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
;;(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
;;(global-set-key (kbd "S-C-<down>") 'shrink-window)
;;(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;;; nim-mode
(global-set-key (kbd "M-9") 'nim-indent-shift-left)
(global-set-key (kbd "M-0") 'nim-indent-shift-right)


;;;;
;;; ---------------------


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
;;(package-initialize)

;;(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-20080305.34")


;;; Ivan's conf
(global-linum-mode 1)

(setq line-number-mode t)
(setq column-number-mode t)

(indent-guide-global-mode)
(global-column-enforce-mode t)



;;;-- Company mode for autocompletion
(add-hook 'after-init-hook 'global-company-mode)
;;; ---------------------

;; MaGIT
(global-set-key (kbd "C-x g") 'magit-status)

;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("edf1f9e74600cac84368d8c1ae2158db85217c3a02e3b1470545462a64cea016" "a6473f7abf949f4a6a1a9cc0dd37ea2e35ba3cea65d3442b98d65c5c5c5cb8d7" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "cc785770f2df8f56bb90b95750e1289a79969d143035bf0454f3e6a2ce5320b0" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "9c29c8b7fc8fe739a68ba6a8fba1f42398f232f2ca836c8d9bd79168d157532f" "48c02faac1209d3e960e15fa252cc0869aab5f96e6533bcf4619d2e88b74d7ac" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "81c3de64d684e23455236abde277cda4b66509ef2c28f66e059aa925b8b12534" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "410fc2f96d4ad970cf1b8fe64898f9fe4f0d138b15ca515d7d07d1014f8346c3" default))
 '(flycheck-checker-error-threshold 4000)
 '(package-selected-packages
   '(compact-docstrings elisp-docstring-mode numpydoc python-docstring separedit sphinx-doc alect-themes apropospriate-theme autumn-light-theme basic-theme berrys-theme birds-of-paradise-plus-theme bubbleberry-theme cloud-theme nim-mode ob-browser org-ac org-agenda-property org-alert org-analyzer org-appear org-autolist org-babel-eval-in-repl org-beautify-theme org-board org-bookmark-heading org-books org-brain org-bullets org-clock-csv org-clock-split org-clock-today org-commentary org-context org-dashboard org-doing org-dotemacs org-ehtml org-jira org-kanban org-mime rust-auto-use rust-playground cargo flycheck-rust flymake-rust parinfer-rust-mode racer rustic tide ts-comint typescript-mode sunny-day-theme spacemacs-theme pyenv-mode pyenv-mode-auto jedi-direx color-theme-sanityinc-tomorrow evil-smartparens on-parens smartparens autopair py-autopep8 better-defaults elpy elpygen python-environment auto-complete-auctex auto-complete-c-headers auto-complete-chunk auto-complete-clang auto-complete-clang-async auto-complete-distel auto-complete-exuberant-ctags auto-complete-nxml auto-complete-pcmp auto-complete-rst auto-complete-sage epc company-jedi jedi jedi-core lsp-jedi xref-rst flymake-python-pyflakes flycheck-pycheckers docker-cli djangonaut django-commands django-mode django-snippets db-pg emacsql-sqlite3 esqlite format-sql pg pgdevenv sql-indent sqlformat sqlup-mode js2-mode json-mode ac-html vue-html-mode vue-mode web-beautify web-completion-data web-mode web-mode-edit-element dkl window-layout company-lua flycheck flymake flymake-css flymake-jshint flymake-jslint flymake-lua magit-diff-flycheck magit-todos lua-mode luarocks dracula-theme hc-zenburn-theme magit magit-annex magit-gitflow magit-imerge magithub emacsql emacsql-psql column-enforce-mode indent-guide docean docker docker-api docker-compose-mode dockerfile-mode company company-c-headers flycheck-nim)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Python


;;; Jedi
;;;(add-hook 'python-mode-hook 'jedi:setup)
;;;(setq jedi:complete-on-dot t)

;;; elpy

(defvar myPackages
  '(better-defaults                 ;; Set up some better Emacs defaults
    elpy                            ;; Emacs Lisp Python Environment
    py-autopep8
    blacken
    magit
;;;    material-theme                  ;; Theme
    )
  )


;;;
;; NIM
;; The `nimsuggest-path' will be set to the value of
;; (executable-find "nimsuggest"), automatically.
(setq nimsuggest-path "/home/ivan/Programs/Nim/bin/nimsuggest")

(defun my--init-nim-mode ()
  "Local init function for `nim-mode'."

  ;; Just an example, by default these functions are
  ;; already mapped to "C-c <" and "C-c >".
  (local-set-key (kbd "M->") 'nim-indent-shift-right)
  (local-set-key (kbd "M-<") 'nim-indent-shift-left)

  ;; Make files in the nimble folder read only by default.
  ;; This can prevent to edit them by accident.
  (when (string-match "/\.nimble/" buffer-file-name) (read-only-mode 1))

  ;; If you want to experiment, you can enable the following modes by
  ;; uncommenting their line.
  (nimsuggest-mode 1)
  ;; Remember: Only enable either `flycheck-mode' or `flymake-mode' at the same time.
  ;;(flycheck-mode 1)
  (flymake-mode 1)

  ;; The following modes are disabled for Nim files just for the case
  ;; that they are enabled globally.
  ;; Anything that is based on smie can cause problems.
  (auto-fill-mode 0)
  (electric-indent-local-mode 1)
)

(add-hook 'nim-mode-hook 'my--init-nim-mode)


;;;--------------------------

;; (add-hook 'nim-mode-hook 'nimsuggest-mode)

;; ;; The `nimsuggest-path' will be set the value of
;; ;; (executable-find "nimsuggest"), automatically.
;; (setq nimsuggest-path "/home/ivan/Programs/Nim/bin/nimsuggest")

;; ;; You may need to install below packages if you haven't installed yet.

;; ;; -- Auto completion --
;; ;; You can omit if you configured company-mode on `prog-mode-hook'
;; (add-hook 'nimsuggest-mode-hook 'company-mode)  ; auto complete package
;; ;; -- Auto lint --
;; ;; You can omit if you configured flycheck-mode on `prog-mode-hook'
;; (add-hook 'nimsuggest-mode-hook 'flycheck-mode) ; auto linter package

;; ;; FYI:
;; ;; might be supproted in the future, but not for now
;; ;; (add-hook 'nimsuggest-mode-hook 'nimsuggest-mode)


;; (add-hook 'nimsuggest-mode-hook 'flymake-mode) ; builtin auto linter package
(add-hook 'json-mode-hook #'flycheck-mode)

;;('json-reformat:indent-width  2)

(put 'scroll-left 'disabled nil)

;;;--------------------------------------------------------------------------
;;; JS ES6

;; use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; http://www.flycheck.org/manual/latest/index.html
(require 'flycheck)

;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(json-jsonlist)))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
  ;;; http://web-mode.org/
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)

;;;;;--------ELPY related



(load "elpy")
(load "elpy-rpc")
(load "elpy-shell")
(load "elpy-profile")
(load "elpy-refactor")
(load "elpy-django")

(elpy-enable)

(autoload 'python-mode "python-mode" "Python Mode." t)

;;(require 'py-autopep8)
;;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
;;(add-hook 'elpy-mode-hook )

;; Enable Flycheck

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))



;;;(use-package elpy
;;;  :ensure t
;;;  :init
;;;  (elpy-enable))



(defun elpy-goto-definition-or-rgrep ()
  "Go to the definition of the symbol at point, if found. Otherwise, run `elpy-rgrep-symbol'."
    (interactive)
    (ring-insert find-tag-marker-ring (point-marker))
    (condition-case nil (elpy-goto-definition)
        (error (elpy-rgrep-symbol
                   (concat "\\(def\\|class\\)\s" (thing-at-point 'symbol) "(")))))

(define-key elpy-mode-map (kbd "M-.") 'elpy-goto-definition-or-rgrep)




(require 'smartparens-config)
(add-hook 'js-mode-hook #'smartparens-mode)
(add-hook 'python-mode-hook #'smartparens-mode)
(add-hook 'nim-mode-hook #'smartparens-mode)

(smartparens-global-mode 1)


(setq elpy-rpc-virtualenv-path 'current)


(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")


(remove-hook 'elpy-modules 'elpy-module-flymake)

;;;;;;;;;;; RUST ;;;;;;;;;;;;;;;;;;


;;(use-package rustic
;;  :ensure
;;  :bind (:map rustic-mode-map
;;              ("M-j" . lsp-ui-imenu)
;;              ("M-?" . lsp-find-references)
;;              ("C-c C-c l" . flycheck-list-errors)
;;              ("C-c C-c a" . lsp-execute-code-action)
;;              ("C-c C-c r" . lsp-rename)
;;              ("C-c C-c q" . lsp-workspace-restart)
;;              ("C-c C-c Q" . lsp-workspace-shutdown)
;;              ("C-c C-c s" . lsp-rust-analyzer-status))
;;  :config
;;  ;; uncomment for less flashiness
;;  ;; (setq lsp-eldoc-hook nil)
;;  ;; (setq lsp-enable-symbol-highlighting nil)
;;  ;; (setq lsp-signature-auto-activate nil)
;;
;;  ;; comment to disable rustfmt on save
;;  (setq rustic-format-on-save t)
;;  (add-hook 'rustic-mode-hook 'rk/rustic-mode-hook))
;;
;;(defun rk/rustic-mode-hook ()
;;  ;; so that run C-c C-c C-r works without having to confirm
;;  (setq-local buffer-save-without-query t))
;;

;;;;;;;;;

;;(use-package lsp-mode
;;  :ensure
;;  :commands lsp
;;  :custom
;;  ;; what to use when checking on-save. "check" is default, I prefer clippy
;;  (lsp-rust-analyzer-cargo-watch-command "clippy")
;;  (lsp-eldoc-render-all t)
;;  (lsp-idle-delay 0.6)
;;  (lsp-rust-analyzer-server-display-inlay-hints t)
;;  :config
;;  (add-hook 'lsp-mode-hook 'lsp-ui-mode))
;;
;;(use-package lsp-ui
;;  :ensure
;;  :commands lsp-ui-mode
;;  :custom
;;  (lsp-ui-peek-always-show t)
;;  (lsp-ui-sideline-show-hover t)
;;  (lsp-ui-doc-enable nil))
;;
;;;;;
;;
;;
;;(use-package company
;;  :ensure
;;  :custom
;;  (company-idle-delay 0.5) ;; how long to wait until popup
;;  ;; (company-begin-commands nil) ;; uncomment to disable popup
;;  :bind
;;  (:map company-active-map
;;	      ("C-n". company-select-next)
;;	      ("C-p". company-select-previous)
;;	      ("M-<". company-select-first)
;;	      ("M->". company-select-last)))
;;
;;(use-package yasnippet
;;  :ensure
;;  :config
;;  (yas-reload-all)
;;  (add-hook 'prog-mode-hook 'yas-minor-mode)
;;  (add-hook 'text-mode-hook 'yas-minor-mode))
;;
;;;;;
;;
;;
;;(use-package company
;;  ;; ... see above ...
;;  (:map company-mode-map
;;	("<tab>". tab-indent-or-complete)
;;	("TAB". tab-indent-or-complete)))
;;
;;(defun company-yasnippet-or-completion ()
;;  (interactive)
;;  (or (do-yas-expand)
;;      (company-complete-common)))
;;
;;(defun check-expansion ()
;;  (save-excursion
;;    (if (looking-at "\\_>") t
;;      (backward-char 1)
;;      (if (looking-at "\\.") t
;;        (backward-char 1)
;;        (if (looking-at "::") t nil)))))
;;
;;(defun do-yas-expand ()
;;  (let ((yas/fallback-behavior 'return-nil))
;;    (yas/expand)))
;;
;;(defun tab-indent-or-complete ()
;;  (interactive)
;;  (if (minibufferp)
;;      (minibuffer-complete)
;;    (if (or (not yas/minor-mode)
;;            (null (do-yas-expand)))
;;        (if (check-expansion)
;;            (company-complete-common)
;;          (indent-for-tab-command)))))
;;
;;https://robert.kra.hn/posts/2021-02-07_rust-with-emacs/



(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))


;;(defun djcb-opacity-modify (&optional dec)
;;  "modify the transparency of the emacs frame; if DEC is t,
;;    decrease the transparency, otherwise increase it in 10%-steps"
;;  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
;;          (oldalpha (if alpha-or-nil alpha-or-nil 100))
;;          (newalpha (if dec (- oldalpha 10) (+ oldalpha 10))))
;;    (when (and (>= newalpha frame-alpha-lower-limit) (<= newalpha 100))
;;      (modify-frame-parameters nil (list (cons 'alpha newalpha))))))
;;
;; ;; C-8 will increase opacity (== decrease transparency)
;; ;; C-9 will decrease opacity (== increase transparency
;; ;; C-0 will returns the state to normal
;;(global-set-key (kbd "C-8") '(lambda()(interactive)(djcb-opacity-modify)))
;;(global-set-key (kbd "C-9") '(lambda()(interactive)(djcb-opacity-modify t)))
;;(global-set-key (kbd "C-0") '(lambda()(interactive)
;;                               (modify-frame-parameters nil `((alpha . 100)))))
;;
