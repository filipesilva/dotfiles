;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Filipe Silva"
      user-mail-address "filipematossilva@gmail.com")


;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; My stuff

;; Fira Code font
;; https://github.com/tonsky/FiraCode
(setq doom-font (font-spec :family "Fira Code" :size 12))

;; Enable cleverparens (see packages.el for load)
;; Install https://github.com/hlissner/doom-emacs/issues/3743
;; Movement https://github.com/luxbock/evil-cleverparens#movement
;; Slurp+barf https://github.com/luxbock/evil-cleverparens#slurping-and-barfing
;; From smartparens https://github.com/luxbock/evil-cleverparens#from-smartparens
(add-hook 'clojure-mode-hook #'evil-cleverparens-mode)

;; Eval clojure forms in comment as if they were toplevel.
(setq clojure-toplevel-inside-comment-form t)

;; expand-region bindings
;; https://github.com/hlissner/doom-emacs/blob/develop/docs/faq.org#why-do-non-evil-users-get-expand-region-but-not-evil-users
(map! :nv "-" #'er/contract-region
      :nv "=" #'er/expand-region)

;; Remap localleader to \
;; https://github.com/hlissner/doom-emacs/blob/develop/docs/faq.org#how-do-i-change-the-leaderlocalleader-keys
(setq doom-localleader-key "\\")

;; Match all symbol under cursor, in addition to R in visual modde
;; https://github.com/hlissner/evil-multiedit#usage
(define-key evil-normal-state-map "R" 'evil-multiedit-match-all)

;; Some bits and pieces from https://zzamboni.org/post/my-doom-emacs-configuration-with-commentary/
(setq auto-save-default t)
(setq confirm-kill-emacs nil)

;; Cider format keybinds
(map! (:localleader
       (:map (clojure-mode-map clojurescript-mode-map clojurec-mode-map)
             "f"  #'cider-format-defun
             "F"  #'cider-format-buffer)))

;; Metabase dev
(setq cider-path-translations '(("/app/harbormaster/source" . "~/repos/work/harbormaster/")
                                ("/app/metabase/source" . "~/repos/work/metabase")
                                ("/root/.m2/" . "~/.mba/.mba-home/.m2/")
                                ("/root/.gitlibs/" . "~/.mba/.mba-home/.gitlibs/")))

;; Disable zoom with ctrl+mousewheel
(unbind-key "C-<wheel-up>")
(unbind-key "C-<wheel-down>")

;; Disable clj-refactor AST warnings, but don't auto-build on startup
(setq cljr-warn-on-eval nil)
(setq cljr-eagerly-build-asts-on-startup nil)

;; Friendly smerge access, instead of C-c ^
;; Map how-to in https://discourse.doomemacs.org/t/how-to-re-bind-keys/56
(map! :map magit-mode-map
      :prefix ("C-c s" . "smerge")
      "RET" #'magit-smerge-keep-current
      "u" #'magit-smerge-keep-upper
      "b" #'magit-smerge-keep-base
      "l" #'magit-smerge-keep-lower
      "a" #'magit-smerge-keep-all)

;; My custom leader bindings
;; https://rameezkhan.me/posts/2020/2020-07-03--adding-keybindings-to-doom-emacs/
(map! :leader
      :desc "Repeat a search"
      "\"" #'vertico-repeat-select)

;; There's a already a `SPC i r` as `From evil register`, that calls `consult-register`.
;; This one, `SPC i R', stores to registers.
(map! :leader
      :prefix ("i")
      :desc "To evil register"
      "R" #'consult-register-store)

;; Inspired by https://gist.github.com/dpsutton/7556cf1f4ecfc97da7b7e9d6dbf210c6
;; Changed to eval without sending to repl buffer.
;; Thanks Dan!
(defun cider-insert-register-contents (register)
  (interactive (list (register-read-with-preview "From register")))
  (let ((form (get-register register)))
    ;; could put form into a buffer and check if its parens are
    ;; balanced
    (if form
        (cider-interactive-eval form nil nil (cider--nrepl-pr-request-map))
      (user-error "No saved form in register"))))

;; TODO: improve by setting slots contents on config, making it more ergonomic to submit slot
;; Eval register contents in repl, \ e g
(map! :localleader
      :map (clojure-mode-map clojurescript-mode-map clojurec-mode-map)
      :prefix "e"
      "g"  #'cider-insert-register-contents)

;; Nice for uuids and ranges
(map! :localleader
      :map (clojure-mode-map clojurescript-mode-map clojurec-mode-map)
      :prefix "e"
      "p"  #'cider-eval-last-sexp-and-replace)

;; Add a comment below the current form.
(defun go-to-toplevel-and-insert-comment ()
  (interactive)
  (end-of-defun)
  (insert "\n")
  (insert "(comment\n  )\n")
  (clojure-backward-logical-sexp)
  (forward-char 1)
  (clojure-forward-logical-sexp)
  (insert "\n")
  (indent-according-to-mode)
  (insert " "))

(map! :localleader
      :map (clojure-mode-map clojurescript-mode-map clojurec-mode-map)
      :desc "Insert comment"
      "q"  #'go-to-toplevel-and-insert-comment)

;; Set current buffer to auto-revert to disk changes
;; https://emacs.stackexchange.com/a/245/43660
(map! :leader
      :prefix ("t")
      :desc "Toggle auto-revert"
      "R"  #'auto-revert-mode)

;; Use clj-reload instead of tools.namespace
(setq cider-ns-code-reload-tool 'clj-reload)

;; Move line up/down
;; https://www.emacswiki.org/emacs/MoveLine
(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(map! :nv "M-<up>"   #'move-line-up
      :nv "M-<down>" #'move-line-down)

;; Allow interrupt in JVM 21+
(setq cider-enable-nrepl-jvmti-agent t)

;; what it says
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Use bash for tooling but fish for terminal emulators
(setq shell-file-name (executable-find "bash"))
(setq-default vterm-shell "/opt/homebrew/bin/fish")
(setq-default explicit-shell-file-name "/opt/homebrew/bin/fish")

;; Don't ask to reuse dead repls
(setq cider-reuse-dead-repls nil)
