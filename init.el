(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (ivy-clipmenu swiper counsel use-package web-mode csharp-mode evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'evil)
(evil-mode 1)

(defun my-csharp-mode-hook ()
  ;; enable the stuff you want for C# here
  (electric-pair-mode 1)       ;; Emacs 24
  (electric-pair-local-mode 1) ;; Emacs 25
  )
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)

(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode)) ;; auto-enable for .js/.jsx files

(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

(defun web-mode-init-hook ()
  "Hooks for Web mode.  Adjust indent."
  (setq web-mode-markup-indent-offset 4))
  
(add-hook 'web-mode-hook  'web-mode-init-hook)

(setq user-init-file
        (or load-file-name (buffer-file-name)))
(setq user-emacs-directory
    	(file-name-directory user-init-file))
	(defconst aero-etc-dir (expand-file-name "etc/" user-emacs-directory))

(setq custom-theme-directory (expand-file-name "themes/" aero-etc-dir))
(load-theme 'aero-dark t)
 
