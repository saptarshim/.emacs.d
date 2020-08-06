
;;This is where all my .el lives

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq load-path (cons "~/.emacs.d/mylisp" load-path))
;;-----------------------------------------------------------------------------
;; Keyboard related modification
(load "emacs-sm-kbd.el")

;; Load various programming helper
(load "emacs-sm-prog-misc.el")

;; Load C and C++ realted settings
(load "emacs-sm-ccmode.el")

;; Load Java realted settings
(load "emacs-sm-javamode.el")

(setq stack-trace-on-error t)

;;Automatically insert headers in Source file
(load "emacs-sm-auto-insert.el")

;; Org mode specific preferences
(load "emacs-sm-orgmode.el")


;;Load Visual Theme
(load "emacs-sm-theme.el")

;; Set up el-get
;;(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;;(unless (require 'el-get nil 'noerror)
;;  (with-current-buffer
;;      (url-retrieve-synchronously
;;       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;    (let (el-get-master-branch)
;;      (goto-char (point-max))
;;      (eval-print-last-sexp))))

;;Enable Company mode globally
(add-to-list 'load-path "~/.emacs.d/el-get/company-mode")
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; Byte recompile everything at startup if not done already
;;(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-buffer-done-kill t)
 '(display-time-mode t)
 '(initial-scratch-message nil)
 '(package-selected-packages (quote (cuda-mode magit ess)))
 '(semantic-idle-scheduler-idle-time 3)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(use-dialog-box nil)
 '(whitespace-global-mode nil)
 '(whitespace-modes (quote (awk-mode clojure-mode)))
 '(whitespace-silent t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 125 :width normal :foundry "outline" :family "Monaco")))))
