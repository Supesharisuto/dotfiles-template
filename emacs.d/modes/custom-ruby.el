(rvm-use-default)
(require 'rcodetools)

(add-hook 'ruby-mode-hook
	  (lambda ()
            (rvm-activate-corresponding-ruby)
	    (setq ruby-insert-encoding-magic-comment nil)
            (yard-mode)
            (rinari-minor-mode)
            (flycheck-mode)
            (global-set-key (kbd "C-c C-f") 'rinari-find-file-in-project)
            (setq rinari-tags-file-name "TAGS")
            (local-set-key "\r" 'newline-and-indent)
            (define-key ruby-mode-map (kbd "C-c C-c") 'xmp)))

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Vagrantfile.local$" . ruby-mode))
