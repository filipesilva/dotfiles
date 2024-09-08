;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)


;; My stuff 

;; Install https://github.com/luxbock/evil-cleverparens (see config.el for configuration)
(package! evil-cleverparens :pin "6637717af0bdac55f97eef98433d53a10395cf77")

;; Install expand-region
;; https://github.com/magnars/expand-region.el
;; https://github.com/hlissner/doom-emacs/blob/develop/docs/faq.org#why-do-non-evil-users-get-expand-region-but-not-evil-users
(package! expand-region :pin "e8f4e0fe9c9a80a6a26e2b438502aba9a799d580")

;; Copilot for emacs
;; https://github.com/copilot-emacs/copilot.el
;; Temporarily disabled because it's giving me a ton of (wrong-type-argument package-desc nil) errors 
;; (package! copilot
;;  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist"))
;;  :pin "fd4d7e8c1e95aa9d3967b19905c9b8c3e03f6a5c")


;; Ran into some problems around https://github.com/doomemacs/doomemacs/issues/4454
;; had to delete ~/.emacs.d/.local/straight/repos/cider, sync, build
;; (unpin! cider)
;; (package! cider :pin "105da319b09a436552f1b3c6194cbbc833017dd2" )
;; (package! cider
;;  :recipe (:host github :repo "clojure-emacs/cider")
;;  :pin "1401e26e2d373e00a064ae8fc7240e083200c5c6" )
