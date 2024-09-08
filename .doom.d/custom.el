(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("afa47084cb0beb684281f480aa84dab7c9170b084423c7f87ba755b15f6776ef" default))
 '(ignored-local-variable-values
   '((elisp-lint-indent-specs
      (if-let* . 2)
      (when-let* . 1)
      (let* . defun)
      (nrepl-dbind-response . 2)
      (cider-save-marker . 1)
      (cider-propertize-region . 1)
      (cider-map-repls . 1)
      (cider--jack-in . 1)
      (cider--make-result-overlay . 1)
      (insert-label . defun)
      (insert-align-label . defun)
      (insert-rect . defun)
      (cl-defun . 2)
      (with-parsed-tramp-file-name . 2)
      (thread-first . 0)
      (thread-last . 0)
      (transient-define-prefix . defmacro)
      (transient-define-suffix . defmacro))
     (checkdoc-package-keywords-flag)
     (eval define-clojure-indent
      (l/matcha
       '(1
         (:defn)))
      (l/matche
       '(1
         (:defn)))
      (p.types/def-abstract-type
       '(1
         (:defn)))
      (p.types/defprotocol+
       '(1
         (:defn)))
      (p.types/defrecord+
       '(2 nil nil
         (:defn)))
      (p.types/deftype+
       '(2 nil nil
         (:defn)))
      (p/def-map-type
       '(2 nil nil
         (:defn)))
      (p/defprotocol+
       '(1
         (:defn)))
      (p/defrecord+
       '(2 nil nil
         (:defn)))
      (p/deftype+
       '(2 nil nil
         (:defn)))
      (tools.macro/macrolet
       '(1
         ((:defn))
         :form)))
     (eval put 'mu/defn 'clojure-doc-string-elt 2)
     (eval put 'mi/define-batched-hydration-method 'clojure-doc-string-elt 3)
     (eval put 'mi/define-simple-hydration-method 'clojure-doc-string-elt 3)
     (eval put 'methodical/defmulti 'clojure-doc-string-elt 2)
     (eval put 'methodical/defmethod 'clojure-doc-string-elt 3)
     (eval put 'p.types/defprotocol+ 'clojure-doc-string-elt 2)
     (eval put 's/defn 'clojure-doc-string-elt 2)
     (eval put 'setting/defsetting 'clojure-doc-string-elt 2)
     (eval put 'defsetting 'clojure-doc-string-elt 2)
     (eval put 'api/defendpoint-async 'clojure-doc-string-elt 3)
     (eval put 'api/defendpoint 'clojure-doc-string-elt 3)
     (eval put 'api/defendpoint-schema 'clojure-doc-string-elt 3)
     (eval put 'define-premium-feature 'clojure-doc-string-elt 2)
     (eval put 'defendpoint-async 'clojure-doc-string-elt 3)
     (eval put 'defendpoint 'clojure-doc-string-elt 3)
     (eval put 'defendpoint-schema 'clojure-doc-string-elt 3)))
 '(magit-todos-insert-after '(bottom) nil nil "Changed by setter of obsolete option `magit-todos-insert-at'")
 '(safe-local-variable-values
   '((js2-mode-show-strict-warnings)
     (js2-mode-show-parse-errors)
     (eval put 'mr/def 'clojure-doc-string-elt 2)
     (cider-ns-refresh-after-fn . "integrant.repl/resume")
     (cider-ns-refresh-before-fn . "integrant.repl/suspend")
     (eval progn
      (put 's/defn 'clojure-doc-string-elt 2)
      (put 'defprotocol+ 'clojure-doc-string-elt 2)
      (put 'p.types/defprotocol+ 'clojure-doc-string-elt 2)
      (define-clojure-indent
       (rf/reg-event-db 1)
       (rf/reg-sub 1)
       (p.types/defprotocol+
        '(1
          (:defn)))
       (p/defprotocol+
        '(1
          (:defn)))
       (defprotocol+
        '(1
          (:defn)))
       (p.types/defrecord+
        '(2 nil nil
          (:defn)))
       (p/defrecord+
        '(2 nil nil
          (:defn)))
       (defrecord+
        '(2 nil nil
          (:defn)))
       (insert! 1)
       (transaction 2)
       (try-backoff 1))
      (define-clojure-indent
       (defroutes 'defun)
       (GET 2)
       (POST 2)
       (PUT 2)
       (DELETE 2)
       (HEAD 2)
       (ANY 2)
       (OPTIONS 2)
       (PATCH 2)
       (rfn 2)
       (let-routes 1)
       (context 2))
      (setq cider-format-code-options
            '(("indents"
               (("context-with-404"
                 (("inner" 0))))))))
     (eval progn
      (put 's/defn 'clojure-doc-string-elt 2)
      (put 'defprotocol+ 'clojure-doc-string-elt 2)
      (put 'p.types/defprotocol+ 'clojure-doc-string-elt 2)
      (define-clojure-indent
       (rf/reg-event-db 1)
       (rf/reg-sub 1)
       (p.types/defprotocol+
        '(1
          (:defn)))
       (p/defprotocol+
        '(1
          (:defn)))
       (defprotocol+
        '(1
          (:defn)))
       (p.types/defrecord+
        '(2 nil nil
          (:defn)))
       (p/defrecord+
        '(2 nil nil
          (:defn)))
       (defrecord+
        '(2 nil nil
          (:defn)))
       (insert! 1)
       (transaction 2)
       (try-backoff 1))
      (define-clojure-indent
       (context-with-404 2)
       (defroutes 'defun)
       (GET 2)
       (POST 2)
       (PUT 2)
       (DELETE 2)
       (HEAD 2)
       (ANY 2)
       (OPTIONS 2)
       (PATCH 2)
       (rfn 2)
       (let-routes 1)))
     (eval progn
      (put 's/defn 'clojure-doc-string-elt 2)
      (put 'defprotocol+ 'clojure-doc-string-elt 2)
      (put 'p.types/defprotocol+ 'clojure-doc-string-elt 2)
      (define-clojure-indent
       (rf/reg-event-db 1)
       (rf/reg-sub 1)
       (p.types/defprotocol+
        '(1
          (:defn)))
       (p/defprotocol+
        '(1
          (:defn)))
       (defprotocol+
        '(1
          (:defn)))
       (p.types/defrecord+
        '(2 nil nil
          (:defn)))
       (p/defrecord+
        '(2 nil nil
          (:defn)))
       (defrecord+
        '(2 nil nil
          (:defn)))
       (insert! 1)
       (transaction 2)
       (try-backoff 1))
      (define-clojure-indent
       (context-with-404 2)
       (defroutes 'defun)
       (GET 2)
       (POST 2)
       (PUT 2)
       (DELETE 2)
       (HEAD 2)
       (ANY 2)
       (OPTIONS 2)
       (PATCH 2)
       (rfn 2)
       (let-routes 1)
       (context 2)))
     (eval progn
      (put 's/defn 'clojure-doc-string-elt 2)
      (put 'defprotocol+ 'clojure-doc-string-elt 2)
      (put 'p.types/defprotocol+ 'clojure-doc-string-elt 2)
      (define-clojure-indent
       (rf/reg-event-db 1)
       (rf/reg-sub 1)
       (p.types/defprotocol+
        '(1
          (:defn)))
       (p/defprotocol+
        '(1
          (:defn)))
       (defprotocol+
        '(1
          (:defn)))
       (p.types/defrecord+
        '(2 nil nil
          (:defn)))
       (p/defrecord+
        '(2 nil nil
          (:defn)))
       (defrecord+
        '(2 nil nil
          (:defn)))
       (insert! 1)
       (transaction 2)
       (try-backoff 1)
       (context-with-404 2))
      (define-clojure-indent
       (defroutes 'defun)
       (GET 2)
       (POST 2)
       (PUT 2)
       (DELETE 2)
       (HEAD 2)
       (ANY 2)
       (OPTIONS 2)
       (PATCH 2)
       (rfn 2)
       (let-routes 1)
       (context 2)))
     (eval progn
      (put 's/defn 'clojure-doc-string-elt 2)
      (put 'defprotocol+ 'clojure-doc-string-elt 2)
      (put 'p.types/defprotocol+ 'clojure-doc-string-elt 2)
      (define-clojure-indent
       (rf/reg-event-db 1)
       (rf/reg-sub 1)
       (p.types/defprotocol+
        '(1
          (:defn)))
       (p/defprotocol+
        '(1
          (:defn)))
       (defprotocol+
        '(1
          (:defn)))
       (p.types/defrecord+
        '(2 nil nil
          (:defn)))
       (p/defrecord+
        '(2 nil nil
          (:defn)))
       (defrecord+
        '(2 nil nil
          (:defn)))
       (insert! 1)
       (transaction 2)
       (try-backoff 1))
      (define-clojure-indent
       (defroutes 'defun)
       (GET 2)
       (POST 2)
       (PUT 2)
       (DELETE 2)
       (HEAD 2)
       (ANY 2)
       (OPTIONS 2)
       (PATCH 2)
       (rfn 2)
       (let-routes 1)
       (context 2)))
     (eval define-clojure-indent
      (l/matcha
       '(1
         (:defn)))
      (l/matche
       '(1
         (:defn)))
      (p.types/def-abstract-type
       '(1
         (:defn)))
      (p.types/defprotocol+
       '(1
         (:defn)))
      (p.types/defrecord+
       '(2 nil nil
         (:defn)))
      (p.types/deftype+
       '(2 nil nil
         (:defn)))
      (p/def-map-type
       '(2 nil nil
         (:defn)))
      (p/defprotocol+
       '(1
         (:defn)))
      (p/defrecord+
       '(2 nil nil
         (:defn)))
      (p/deftype+
       '(2 nil nil
         (:defn)))
      (tools.macro/macrolet
       '(1
         ((:defn))
         :form)))
     (eval put 'mu/defn 'clojure-doc-string-elt 2)
     (eval put 'mi/define-batched-hydration-method 'clojure-doc-string-elt 3)
     (eval put 'mi/define-simple-hydration-method 'clojure-doc-string-elt 3)
     (eval put 'methodical/defmulti 'clojure-doc-string-elt 2)
     (eval put 'methodical/defmethod 'clojure-doc-string-elt 3)
     (eval put 'p.types/defprotocol+ 'clojure-doc-string-elt 2)
     (eval put 's/defn 'clojure-doc-string-elt 2)
     (eval put 'setting/defsetting 'clojure-doc-string-elt 2)
     (eval put 'defsetting 'clojure-doc-string-elt 2)
     (eval put 'api/defendpoint-async 'clojure-doc-string-elt 3)
     (eval put 'api/defendpoint 'clojure-doc-string-elt 3)
     (eval put 'api/defendpoint-schema 'clojure-doc-string-elt 3)
     (eval put 'define-premium-feature 'clojure-doc-string-elt 2)
     (eval put 'defendpoint-async 'clojure-doc-string-elt 3)
     (eval put 'defendpoint 'clojure-doc-string-elt 3)
     (eval put 'defendpoint-schema 'clojure-doc-string-elt 3)
     (ftf-project-finders ftf-get-top-git-dir)
     (whitespace-line-column . 118)
     (eval progn
      (put 's/defn 'clojure-doc-string-elt 2)
      (put 'defprotocol+ 'clojure-doc-string-elt 2)
      (put 'p.types/defprotocol+ 'clojure-doc-string-elt 2)
      (define-clojure-indent
       (rf/reg-event-db 1)
       (rf/reg-sub 1)
       (p.types/defprotocol+
        '(1
          (:defn)))
       (p/defprotocol+
        '(1
          (:defn)))
       (defprotocol+
        '(1
          (:defn)))
       (p.types/defrecord+
        '(2 nil nil
          (:defn)))
       (p/defrecord+
        '(2 nil nil
          (:defn)))
       (defrecord+
        '(2 nil nil
          (:defn)))
       (insert! 1)
       (transaction 2)
       (try-backoff 1))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
