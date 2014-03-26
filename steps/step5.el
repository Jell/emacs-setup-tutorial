;; PACKAGES *****************************************************************

(setq my-packages
      '(rainbow-delimiters
        undo-tree
        paredit
        find-file-in-project
        smex
        ido-ubiquitous
        auto-complete
        smooth-scroll
        expand-region
        multiple-cursors
        ack-and-a-half
        magit))

(el-get 'sync my-packages)
