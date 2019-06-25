
;; Disable menu bar
(menu-bar-mode -1)

;; To disable the toolbar, use the following line:
(tool-bar-mode -1) 

;; To disable the scrollbar, use the following line:
(toggle-scroll-bar -1) 

;; Set the highlight current line minor mode
(global-hl-line-mode 1)

;; Set standard indent to 2 rather that 4
(setq standard-indent 2)

;; Line by line scrolling
(setq scroll-step 1)

;; Turn off tab character
(setq-default indent-tabs-mode nil)

;; Support Wheel Mouse Scrolling
(mouse-wheel-mode t)

;; Prevent Emacs from making backup files
(setq make-backup-files nil)

;; Enable Line and Column Numbering in the bar
(line-number-mode 1)
(column-number-mode 1)

;; Set the fill column
(setq-default fill-column 80)

;; Make Text mode the default mode for new buffers
(setq default-major-mode 'text-mode)

;; Show line numbers
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; auto fill mode in 80 columns
(setq-default fill-column 80)

;; jump cursor to the last place when visited the same file
(save-place-mode 1) 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; Emacs themes
;; more http://ergoemacs.org/emacs/emacs_playing_with_color_theme.html 
(when (display-graphic-p)
    (load-theme 'deeper-blue))

;; Disable beep when trying to move beyond the end of the document
(setq ring-bell-function 'ignore)
