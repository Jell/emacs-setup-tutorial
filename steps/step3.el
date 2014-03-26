;; Some defaults *************************************************************

(setq-default blink-cursor-alist nil
              blink-cursor-mode t
              cua-enable-cua-keys nil
              delete-selection-mode t
              dired-listing-switches "-al"
              global-auto-revert-mode t
              global-auto-revert-non-file-buffers t
              global-hl-line-mode t
              gud-tooltip-echo-area nil
              ido-auto-merge-delay-time 10
              indicate-buffer-boundaries (quote ((t . right) (top . left)))
              indicate-empty-lines t
              kill-whole-line t
              mouse-yank-at-point t
              scroll-bar-mode nil
              scroll-conservatively 100000000
              scroll-margin 3
              scroll-preserve-screen-position nil
              scroll-step 0
              tool-bar-mode nil
              tooltip-mode nil
              tooltip-short-delay 0
              tooltip-use-echo-area t
              uniquify-buffer-name-style '(forward nil uniquify)
              visible-cursor t)
