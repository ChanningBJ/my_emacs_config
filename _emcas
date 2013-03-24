
(load-file "~/.emacd.d/site-lisp/cedet-1.1/common/cedet.el")
(require 'cedet)
(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
(semantic-load-enable-guady-code-helpers)
(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)



;(require 'ibus)
;(add-hook 'after-init-hook 'ibus-mode-on)

(add-to-list 'load-path  "~/.emacd.d/site-lisp/")
;; (load "~/.emacd.d/site-lisp/highlight-indentation.el")
;; (set-face-background 'highlight-indentation-face "#e3e3d3")
;; (set-face-background 'highlight-indentation-current-column-face "#c3b3b3")

(add-to-list 'load-path  "~/.emacd.d/site-lisp/git-emacs")
(require 'git-emacs)
(global-set-key [f9] 'git-commit-all)

(require 'linum)
(global-linum-mode 1)

(define-key global-map [f4] 'goto-line)
(global-set-key [f3] 'delete-other-windows)
(global-set-key [f5] 'revert-buffer)  ; refresh buffer 


(column-number-mode t)
(line-number-mode t)

(setq inhibit-startup-message t)

(show-paren-mode t)
(setq show-paren-style 'parentheses)

(setq tab-width 4)

(tool-bar-mode 0)

(fset 'yes-or-no-p 'y-or-n-p)
(setq x-select-enable-clipboard t)
(global-set-key "\r" 'newline-and-indent)
(require 'bs)
(global-set-key (kbd "C-x C-b") 'bs-show)




(setq org-agenda-files (list "~/workspace/todo.org"))
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "FEEDBACK" "|" "DONE" "DELEGATED")))
(global-set-key [f11] 'org-clock-in)
(global-set-key [f12] 'org-clock-out)


(global-set-key (kbd "C-%") 'match-paren)
          
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

(global-hl-line-mode 0)

;(setq stack-trace-on-error t)
;(add-to-list 'load-path
;	     "~/.emacd.d/site-lisp/ecb")
;(require 'ecb)


(add-to-list 'load-path
              "~/.emacd.d/site-lisp/yasnippet-0.6.1c/")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacd.d/site-lisp/yasnippet-0.6.1c/snippets")






(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)


(defun myhook()
   (setq indent-tabs-mode nil)
   )
(add-hook 'c++-mode-hook 'myhook)
(add-hook 'c-mode-hook 'myhook)

(global-set-key (kbd "C-f") 'hs-toggle-hiding)
(global-set-key (kbd "C-l") 'hs-hide-level)


;(add-to-list 'load-path  "~/.emacd.d/site-lisp/")
;/home/chengming/.emacd.d/site-lisp/nginx-mode

(load "~/.emacd.d/site-lisp/nginx-mode/nginx-mode.el")

(setq tab-width 4)




; emacs-for-python
;(load-file "~/.emacd.d/site-lisp/emacs-for-python/epy-init.el")
;(global-set-key "\r" 'newline-and-indent)
;end emacs-for-python


(windmove-default-keybindings 'meta)  



;(add-to-list 'load-path  "~/.emacd.d/site-lisp/ibus-el/")
;(require 'ibus)
;(add-hook 'after-init-hook 'ibus-mode-on)

(global-set-key (kbd "C-SPC") 'nil)

(require 'xcscope)

;; (require 'doxymacs)
;; (add-hook 'c-mode-common-hook 'doxymacs-mode)
;; (defun my-doxymacs-font-lock-hook ()
;;     (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
;;         (doxymacs-font-lock)))
;; (add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)



(setq indent-tabs-mode nil)

;; auto complete
;; -*- Emacs-Lisp -*-
 
;; Time-stamp: <2010-04-09 10:22:51 Friday by ahei>
(add-to-list 'load-path  "~/.emacd.d/site-lisp/auto-complete-1.3.1")

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(add-to-list 'load-path  "~/.emacd.d/site-lisp/auto-complete-clang")
(require 'auto-complete-clang)
;(setq ac-clang-auto-save t)
;(setq ac-auto-start t)
(setq ac-quick-help-delay 0.5)
(ac-set-trigger-key "TAB")
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
  (setq ac-clang-flags
        (mapcar(lambda (item)(concat "-I" item))
               (split-string
                "
 /usr/include/c++/4.4
 /usr/include/c++/4.4/i486-linux-gnu
 /usr/include/c++/4.4/backward
 /usr/local/include
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include-fixed
 /usr/include/i486-linux-gnu
 /usr/include
")))
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)




(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (adwaita)))
 '(ecb-options-version "2.40")
 '(org-tags-column -100)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

(set-background-color "#CCE8CF")

;;insert-current-date
(defun insert-current-date ()
  "Insert the current date"
  (interactive "*")
  (insert (format-time-string "%Y/%m/%d" (current-time))))
(global-set-key "\C-xd" 'insert-current-date)

(setq c-default-style
      '((java-mode . "java")
	(awk-mode . "awk")
	(other . "user")))

(require 'ido)
(ido-mode t)

(require 'rcompile)

;; my emacs plugin
(add-to-list 'load-path  "~/.emacd.d/site-lisp/emacs-util/")
(require 'save-do)
;(setq save-do-command "ls -all")
(global-set-key [f8] 'save-do)
(setq save-do-command "/home/chengming/workspace/CLO/rdp/clo_smgr/upload.exp")


(setq indent-tabs-mode nil)
(global-hl-line-mode 1)

