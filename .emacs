(setq debug-on-error t)
(setq inhibit-startup-message t)
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deep-blue-day)))
 '(custom-safe-themes
   (quote
    ("303488aa27ce49f658a7ba4035e93380421e394ec2799ae8fd952d08808c7235" "02414c4cfbbe9805b89a5ec66d3d3deb4ae1e4795ed2092eab240ca0cb79ea96" "30a8a5a9099e000f5d4dbfb2d6706e0a94d56620320ce1071eede5481f77d312" default)))
 '(haskell-mode-hook (quote (turn-on-haskell-doc turn-on-haskell-indent)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/elpa/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

(setq ensime-sbt-command "/usr/local/bin/sbt")
(setq sbt:program-name "/usr/local/bin/sbt")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(require 'google-translate)
(require 'google-translate-smooth-ui)
(global-set-key "\C-cT" 'google-translate-smooth-translate)
(global-set-key "\C-ct" 'google-translate-at-point)
(setq google-translate-default-source-language "de")
(setq google-translate-default-target-language "en")

(require 'remember)
(require 'org)

(global-linum-mode t)

(add-to-list 'load-path "~/.emacs.d/powerline")
(require 'powerline)
(powerline-default-theme)

(add-to-list 'load-path "~/code/rust/src/etc/emacs/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(setq racer-rust-src-path "~/code/rust/src/")
(setq racer-cmd "~/code/racer/bin/racer")
(add-to-list 'load-path "~/code/racer/editors")
(eval-after-load "rust-mode" '(require 'racer))

(require 'tabbar)
(tabbar-mode)
(global-set-key [M-left] 'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)
(setq tabbar-background-color "#959A79") ;; the color of the tabbar background
(custom-set-faces
 '(tabbar-default ((t (:inherit variable-pitch :background "#959A79" :foreground "black" :weight bold))))
 '(tabbar-button ((t (:inherit tabbar-default :foreground "dark red"))))
 '(tabbar-button-highlight ((t (:inherit tabbar-default))))
 '(tabbar-highlight ((t (:underline t))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "#95CA59"))))
 '(tabbar-separator ((t (:inherit tabbar-default :background "#95CA59"))))
 '(tabbar-unselected ((t (:inherit tabbar-default)))))

(global-unset-key [C-b])
