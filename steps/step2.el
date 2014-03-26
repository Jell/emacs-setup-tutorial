;; SANITY *******************************************************************

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq inhibit-splash-screen t)
;; Fix encoding
(setq default-process-coding-system '(utf-8 . utf-8))
;; Larger fonts
(set-face-attribute 'default nil :height 150)

(ido-mode t)
(setq ido-enable-flex-matching t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)
(setq-default save-place t)

(show-paren-mode 1)
(setq-default indent-tabs-mode nil)

;; Fix scrolling
(setq auto-window-vscroll nil)
;; Diable ring bell
(setq ring-bell-function 'ignore)
;; Remove trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defalias 'yes-or-no-p 'y-or-n-p)

;; TODO: CREATE CUSTOM FILE
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; Fix tmp files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Add PATH
(add-to-list 'exec-path "/usr/local/bin")

;; Helper function to add paths from bash setup
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(if window-system (set-exec-path-from-shell-PATH))
