(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'load-path "~/.emacs.d/themes")

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/thomasjoulin/.emacs.d/plugins/ac-dict")
(ac-config-default)
(global-auto-complete-mode t)

(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")

(global-set-key "\C-l" 'goto-line)

(require 'highlight-current-line)
(highlight-current-line-on t)
 
;; To customize the background color
(set-face-background 'highlight-current-line-face "#111")

(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)

(require 'haml-mode)
(add-hook 'haml-mode-hook
                  '(lambda ()
                         (setq indent-tabs-mode nil)
                         (define-key haml-mode-map "\C-m" 'newline-and-indent)))


(load-file "~/.emacs.d/themes/color-theme-blackboard.el")
(load-file "~/.emacs.d/themes/color-theme-tango.el")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-tango)))

