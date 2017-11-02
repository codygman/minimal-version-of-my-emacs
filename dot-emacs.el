;; org
(setq load-path (cons "/tmp/yasnippet-org-mode-repro/org-mode/lisp" load-path))
(load-file "/tmp/minimal-version-of-my-emacs/yasnippet.el")
(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (emacs-lisp . nil)
   ))
(setq org-confirm-babel-evaluate nil)

;; yas
(require 'yasnippet)
(setq yas-snippet-dirs '("/tmp/minimal-version-of-my-emacs/snippets/"))
;; (yas-reload-all)
(yas-global-mode)

;; evil
(add-to-list 'load-path "/tmp/minimal-version-of-my-emacs/evil")
(require 'evil)
(evil-mode 1)

;; possibly useful/old
;; (add-hook 'org-mode-hook 'yas-minor-mode)
;; (add-hook 'org-mode-hook #'yas-minor-mode)
;; (defun yas/org-very-safe-expand ()
;;   (let ((yas/fallback-behavior 'return-nil)) (yas/expand)))


;; (add-hook 'org-mode-hook
;;           (lambda ()
;;             ;; yasnippet (using the new org-cycle hooks)
;;             (make-variable-buffer-local 'yas/trigger-key)
;;             (setq yas/trigger-key [tab])
;;             (add-to-list 'org-tab-first-hook 'yas/org-very-safe-expand)
;;             (define-key yas/keymap [tab] 'yas-next-field)))

