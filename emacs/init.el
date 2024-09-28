;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; packages needed to use the following configuration:
;; smex, Gruber-darker-theme, 

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Map triple escape to one signle escape
(global-set-key (kbd "<escape>")      'keyboard-escape-quit)

(setq inhibit-startup-screen 1)
(menu-bar-mode 0)
(tool-bar-mode 0)
;; for autocompleting file/dir names when searching
(ido-mode 1)

(global-display-line-numbers-mode 1)

(setq backup-directory-alist '(("." . "~/.emacs_saves")))
(set-frame-font "Iosevka 14")


;; gruber-darker-theme by Tsoding (rexim on GH) : https://github.com/rexim/gruber-darker-theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7" default))
 '(package-selected-packages '(gruber-darker-theme smex))
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

