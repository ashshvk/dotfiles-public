;; Basic Emacs Configuration

;; Disable startup screen and messages
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Show line numbers
(global-display-line-numbers-mode t)

;; Show themes
(load-theme 'gruber-darker t)
