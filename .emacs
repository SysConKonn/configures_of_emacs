
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
    ("a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "e52718d4b950106873fed00c469941ad8db20f02392d2c7ac184c6defe37ad2c" "1127f29b2e4e4324fe170038cbd5d0d713124588a93941b38e6295a58a48b24f" "6ee6f99dc6219b65f67e04149c79ea316ca4bcd769a9e904030d38908fd7ccf9" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (ycmd flymake-cppcheck material-theme indent-guide auto-complete-clang auto-complete-c-headers ac-c-headers multi-term w3m cnfonts window-numbering darkokai-theme color-theme-sanityinc-solarized)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "unknown" :slant normal :weight normal :height 120 :width normal)))))




(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode t)
(global-linum-mode 1)
(window-numbering-mode t)
(indent-guide-mode t)
(indent-guide-global-mode t)
(set-frame-parameter (selected-frame) 'alpha (list 95 95))
(add-to-list 'default-frame-alist (cons 'alpha (list 95 95)))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(setq molokai-theme-kit t)
;;(load-theme 'monokai t)
;;(setq sanityinc-solarized-dark-theme-kit t)
;;(load-theme 'sanityinc-solarized-dark)
(load-theme 'darkokai)
;;(load-theme 'subtle-blue)
(setq-default cursor-type 'blink)

;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(default ((t (:inherit nil :stipple nil :background "#242634" :foreground "#F8F8F2")))))
(setq x-select-enable-clipboard-manager nil)
(put 'downcase-region 'disabled nil)
(setq c-default-style
      '((java-mode . "java")(other . "awk")))
;;;windowmove-mode
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings)
  (global-set-key (kbd "C-c b")  'windmove-left)
  (global-set-key (kbd "C-c f") 'windmove-right)
  (global-set-key (kbd "C-c p")    'windmove-up)
  (global-set-key (kbd "C-c n") 'windmove-down))

;;(set-frame-width (selected-frame) 100)
;;(set-frame-height (selected-frame) 47)

;; 把C-j绑定到到达指定行上 
;;(global-set-key (kbd "C-x C-j") 'goto-line)
;;(global-set-key (kbd "") 'goto-line)

(require 'package)
(add-to-list 'package-archives 
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;;(set-default-font "Monaco-14")  

(global-set-key (kbd "C-x t") 'multi-term)

(display-time-mode 1) ;; 常显
;;(setq display-time-24hr-format t) ;;格式
(setq display-time-day-and-date t) ;;显示时间、星期、日期

;;(set-frame-font "Source Code Pro-12")
