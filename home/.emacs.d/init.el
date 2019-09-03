;;; package --- Summary

;;; Commentary:

;;; Code:
(server-start)

(setq initial-frame-alist
      '((top . 960) (left . 540)
        (width . 120) (height . 30)))
(setq default-frame-alist
      '((top . 960) (left . 540)
        (width . 120) (height . 30)))

(require 'package)
(add-to-list 'package-archives
	     '("MELPA" . "https://melpa.org/packages/") t)
(package-initialize)

(eval-when-compile
  (require 'use-package))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package company
  :ensure t
  :init (company-mode))

(global-unset-key (kbd "C-z"))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(setq vc-follow-symlinks t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq backup-inhibited t)
(setq auto-save-default nil)

(defun my/sudo-edit (&optional arg)
  "Edits a file with sudo priv.  Optionally take a ARG for the filename."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file
       (concat "/sudo:root@localhost:"
               (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (company use-package flycheck))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)
;;; init.el ends here
