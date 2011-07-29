(add-to-list 'load-path "/Users/thomasjoulin/.emacs.d/plugins")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/thomasjoulin/.emacs.d/plugins/ac-dict")
(ac-config-default)
(global-auto-complete-mode t)

(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")

(global-set-key "\C-l" 'goto-line)


