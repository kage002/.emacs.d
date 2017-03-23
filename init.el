(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1ba61848d0d8c78e037867c26f118875705c20f5ad64949a8cee8c8059e5c50f" default)))
 '(package-selected-packages (quote (smex auto-complete flycheck))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(add-hook 'after-init-hook #'global-flycheck-mode)
(ac-config-default)

;;evil
;(add-to-list 'load-path "~/.emacs.d/evil")
;(require 'evil)
;(evil-mode 1)
;;paredit-mode
;(add-to-list 'load-path "~/.emacs.d/programing")
;(autoload 'paredit-mode "paredit"
;  "Minor mode for pseudo-structurally editing Lisp code."
;  t)
;(paredit-mode 1)
;;关闭启动画面，直接进入scratch
;(setq inhibit-startup-message t)

;;;config smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;;;config smex

;;color-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'molokai)


;;显示行号，文件大小
(line-number-mode t)
(column-number-mode t)
(global-linum-mode t)
(size-indication-mode t)

;;全局语法高亮
(global-hl-line-mode t)

;;括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;自动再文件尾部加上换行符，可以避免一些问题 
(setq require-final-newline t)

;;把 "yes or not" 换成 "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;;取消自动保存
(setq auto-save-default nil)

;;取消自己备份
(setq make-backup-files nil)

;;行号格式
;(setq linum-format " %i ")


;;;;;;;;;;;;
;; Scheme
;;;;;;;;;;;;

(setq scheme-program-name "/usr/local/bin/mit-scheme")
