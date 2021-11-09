;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Filipe Silva"
      user-mail-address "filipematossilva@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
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
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.


;; My stuff

;; Start fullscreen.
(add-to-list 'initial-frame-alist '(fullscreen . fullscreen))

;; Fira Code font
;; https://github.com/tonsky/FiraCode
(setq doom-font (font-spec :family "Fira Code" :size 12))

;; Clear the clojure prettify (fn to λ) after loading clojure-mode.
;; See https://github.com/hlissner/doom-emacs/issues/5738 for details.
(eval-after-load 'clojure-mode '(setq clojure--prettify-symbols-alist nil))


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

;; Some bits and pieces from https://zzamboni.org/post/my-doom-emacs-configuration-with-commentary/
(setq auto-save-default t)
(setq confirm-kill-emacs nil)


;; TODO
;; - maybe better parens guardrails https://github.com/hlissner/doom-emacs/issues/478
;; - learn window mgmt https://github.com/hlissner/doom-emacs/blob/develop/modules/ui/window-select/README.org
;; - learn doc lookup https://github.com/hlissner/doom-emacs/tree/develop/modules/tools/lookup#look-up-documentation
;; - learn evil-cleverparens https://github.com/luxbock/evil-cleverparens#movement
;; - learn visual mode to use with multi-edit
