;; org
(setq load-path (cons "/tmp/yasnippet-org-mode-repro/org-mode/lisp" load-path))
(load-file "/tmp/minimal-version-of-my-emacs/yasnippet.el")
(org-babel-do-load-languages
 'org-babel-load-languages
 '((sh . t)
   (emacs-lisp . nil)
   ))
(setq org-confirm-babel-evaluate nil)

;; yas
(require 'yasnippet)
(setq yas-snippet-dirs '("/tmp/minimal-version-of-my-emacs/snippets/"))
(yas-load-directory "/tmp/minimal-version-of-my-emacs/snippets/")
(yas-reload-all)
(add-hook 'org-mode-hook 'yas-minor-mode)

;; evil
(add-to-list 'load-path "/tmp/minimal-version-of-my-emacs/evil")
(require 'evil)
(evil-mode 1)
