(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dashboard-set-footer "Testing testing")
 '(dashboard-startup-banner "/home/jasper/git/lotusInvert.svg")
 '(doom-modeline-hud t)
 '(fancy-splash-image "home/jasper/git/lotus.svg")
 '(package-selected-packages
   '(ccls evil-collection projectile doom-modeline powerline-evil lsp-mode magit sudo-edit folding ivy-rich color-theme general ivy helm dashboard which-key evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
