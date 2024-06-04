(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
							 
;; display current line number
(setq column-number-mode t)
(setq line-number-mode t)
(global-display-line-numbers-mode)

;; close parentesis
(electric-pair-mode 1)
(setq electric-pair-preserve-balance nil)

;; change font % $ & 0
(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font" :height 140)
;; DejaVu Sans Mono
;; save session
;;(desktop-save-mode 1)

;; keymaps
(keymap-global-set "C-1" 'previous-buffer)
(keymap-global-set "C-2" 'next-buffer)
;;(keymap-global-set (kdb "C-x q") 'query-replace-regexp)
(keymap-global-set "C-x C-v" 'vterm)
(keymap-global-set "C-x C-e" 'macro-end-and-call-macro)
(keymap-global-set "C-|" 'query-replace-regexp)
(keymap-global-set "C-x C-k" 'kill-buffer)
(keymap-global-set "C-x C-b" 'switch-to-buffer)

;; abbrev folder
;;(setq-default abbrev-mode t)
;;(read-abbrev-file "~/.emacs.d/abbrevs")
;;(setq save-abbrevs t)

;; vertico instead of ivy, ivy gives dissapear c++-mode
;; auto-complete minibuffer
(use-package vertico
  :ensure t
  :init
  (vertico-mode)

  ;; Different scroll margin
  ;; (setq vertico-scroll-margin 0)

  ;; Show more candidates
   (setq vertico-count 6)

  ;; Grow and shrink the Vertico minibuffer
  ;; (setq vertico-resize t)

  ;; Optionally enable cycling for `vertico-next' and `vertico-previous'.
  ;; (setq vertico-cycle t)
  )

;; melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; themes
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-nord t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; icons
;;(use-package nerd-icons
;;  :ensure t)

;;installed in shared/local/fonts
(use-package all-the-icons
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; snippets
;;(use-package yasnippet
;;  :ensure t)
;;(use-package smartparens
;;  :ensure t)



(use-package projectile
  :ensure t
  :config
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

;; require all the icons?
(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-collapse-dirs                   (if treemacs-python-executable 3 0)
          treemacs-deferred-git-apply-delay        0.5
          treemacs-directory-name-transformer      #'identity
          treemacs-display-in-side-window          t
          treemacs-eldoc-display                   'simple
          treemacs-file-event-delay                2000
          treemacs-file-extension-regex            treemacs-last-period-regex-value
          treemacs-file-follow-delay               0.2
          treemacs-file-name-transformer           #'identity
          treemacs-follow-after-init               t
          treemacs-expand-after-init               t
          treemacs-find-workspace-method           'find-for-file-or-pick-first
          treemacs-git-command-pipe                ""
          treemacs-goto-tag-strategy               'refetch-index
          treemacs-header-scroll-indicators        '(nil . "^^^^^^")
          treemacs-hide-dot-git-directory          t
          treemacs-indentation                     2
          treemacs-indentation-string              " "
          treemacs-is-never-other-window           nil
          treemacs-max-git-entries                 5000
          treemacs-missing-project-action          'ask
          treemacs-move-forward-on-expand          nil
          treemacs-no-png-images                   nil
          treemacs-no-delete-other-windows         t
          treemacs-project-follow-cleanup          nil
          treemacs-persist-file                    (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-position                        'left
          treemacs-read-string-input               'from-child-frame
          treemacs-recenter-distance               0.1
          treemacs-recenter-after-file-follow      nil
          treemacs-recenter-after-tag-follow       nil
          treemacs-recenter-after-project-jump     'always
          treemacs-recenter-after-project-expand   'on-distance
          treemacs-litter-directories              '("/node_modules" "/.venv" "/.cask")
          treemacs-project-follow-into-home        nil
          treemacs-show-cursor                     nil
          treemacs-show-hidden-files               t
          treemacs-silent-filewatch                nil
          treemacs-silent-refresh                  nil
          treemacs-sorting                         'alphabetic-asc
          treemacs-select-when-already-in-treemacs 'move-back
          treemacs-space-between-root-nodes        t
          treemacs-tag-follow-cleanup              t
          treemacs-tag-follow-delay                1.5
          treemacs-text-scale                      nil
          treemacs-user-mode-line-format           nil
          treemacs-user-header-line-format         nil
          treemacs-wide-toggle-width               70
          treemacs-width                           35
          treemacs-width-increment                 1
          treemacs-width-is-initially-locked       t
          treemacs-workspace-switch-cleanup        nil)

    ;; The default width and height of the icons is 22 pixels. If you are
    ;; using a Hi-DPI display, uncomment this to double the icon size.
    ;;(treemacs-resize-icons 44)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode 'always)
    (when treemacs-python-executable
      (treemacs-git-commit-diff-mode t))

    (pcase (cons (not (null (executable-find "git")))
                 (not (null treemacs-python-executable)))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple)))

    (treemacs-hide-gitignored-files-mode nil))
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t d"   . treemacs-select-directory)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag)))

(use-package treemacs-all-the-icons
  :ensure t)

;;(use-package treemacs-nerd-icons
;;  :config
;; (treemacs-load-theme "nerd-icons"))

;; terminal
(use-package vterm
  :ensure t)

;; optional
(use-package zig-mode
  :ensure t)

(use-package magit
  :ensure t)

(use-package treemacs-magit
  :after (treemacs magit)
  :ensure t)

(use-package treemacs-projectile
  :after (treemacs projectile)
  :ensure t)

;; treesit
(setq treesit-language-source-alist
      '((c "https://github.com/tree-sitter/tree-sitter-c")
      (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
      (rust "https://github.com/tree-sitter/tree-sitter-rust")
      (cmake "https://github.com/uyha/tree-sitter-cmake")
      (zig "https://github.com/maxxnino/tree-sitter-zig")
;;      (c-sharp "https://github.com/tree-sitter/tree-sitter-c-sharp")
;;      (elisp "https://github.com/Wilfred/tree-sitter-elisp")
;;      (html "https://github.com/tree-sitter/tree-sitter-html")
;;      (css "https://github.com/tree-sitter/tree-sitter-css")
;;      (javascript "https://github.com/tree-sitter/tree-sitter-javascript")
;;      (json "https://github.com/tree-sitter/tree-sitter-json")
;;      (java "https://github.com/tree-sitter/tree-sitter-java")
;;      (typescript "https://github.com/tree-sitter/tree-sitter-typescript")
;;      (python "https://github.com/tree-sitter/tree-sitter-python")
;;      ;;(php "https://github.com/tree-sitter/tree-sitter-php") doesn't work
      ))

(setq major-mode-remap-alist
      '((c-mode . c-ts-mode)
	(c++-mode . c++-ts-mode)
	(css-mode . css-ts-mode)
;;	(csharp-mode . csharp-ts-mode)
;;	(js-mode . js-ts-mode)
;;	(json-mode . json-ts-mode)
;;	(typescript-mode . typescript-ts-mode)
;;	(java-mode . java-ts-mode)))
	))

;;(add-to-list 'exec-path "/home/hugh/libraries/omnisharp-linux-x64-net6.0/")
;;(add-to-list 'exec-path "/home/hugh/libraries/jdt-language-server-1.33/bin/")
;;(add-to-list 'exec-path "/home/hugh/libraries/node-v20.11.0-linux-x64/lib/node_modules/javascript-typescript-langserver/")
(add-to-list 'exec-path "/home/hugh/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin//")
(add-to-list 'exec-path "/home/hugh/libraries/zls/zig-out/bin/")

;; "OmniSharp" "-lsp"
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-ts-mode) "clangd-14"))
(add-to-list 'eglot-server-programs '((c-ts-mode) "clangd-14"))
(add-to-list 'eglot-server-programs '((rust-ts-mode) . ("rust-analyzer")))
(add-to-list 'eglot-server-programs '((cmake-ts-mode) "cmake-language-server"))
(add-to-list 'eglot-server-programs '((zig-mode) "zls"))
;;(add-to-list 'eglot-server-programs '((csharp-ts-mode) . ("OmniSharp" "-lsp")))
;;(add-to-list 'eglot-server-programs '((html-mode) . ("vscode-html-language-server" "--stdio" "-lsp")))
;;(add-to-list 'eglot-server-programs '((css-mode) . ("vscode-css-language-server" "--stdio" "-lsp")))
;;(add-to-list 'eglot-server-programs '((js-mode) . ("typescript-language-server" "--stdio" )))
;;(add-to-list 'eglot-server-programs '((json-mode) . ("vscode-json-language-server" "--stdio" "-lsp")))
;;(add-to-list 'eglot-server-programs '((typescript-ts-mode) . ("typescript-language-server" "--stdio")))

;;(add-to-list 'eglot-server-programs '((python-ts-mode) . ("pyright"))


;;(add-to-list 'eglot-server-programs '((java-ts-mode) . ("jdtls" "--add-modules=ALL-SYSTEM" "--add-opens=java.base/java.util=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED"))) ; Adjust for your server

(add-hook 'c-ts-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)
(add-hook 'rust-ts-mode-hook 'eglot-ensure)
(add-hook 'cmake-ts-mode-hook 'eglot-ensure)

;;(add-hook 'csharp-ts-mode-hook 'eglot-ensure)
;;(add-hook 'html-mode-hook 'eglot-ensure)
;;(add-hook 'css-mode-hook 'eglot-ensure)
;;(add-hook 'js-mode-hook 'eglot-ensure)
;;(add-hook 'json-mode-hook 'eglot-ensure)
;;(add-hook 'typescript-ts-mode-hook 'eglot-ensure)
;;(add-hook 'python-ts-mode-hook 'eglot-ensure)


;;(add-hook 'java-ts-mode-hook 'eglot-ensure)

;; package install web-mode
;;(require 'web-mode)
;;(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.cshtml?\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.svelte?\\'" . web-mode))
;;(setq web-mode-engines-alist
;;      '(("razor"    . "\\.cshtml\\'")
;;	("blade"  . "\\.blade\\.")
;;	("svelte" . "\\.svelte\\.")
;;	))

(use-package company
  :ensure t
  :config (global-company-mode 1))

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(defvaralias 'c++-basic-offset 'tab-width)

;;(use-package multiple-cursors
;;  :ensure t
;;  :bind
;;  ("C-ñ" . 'mc/edit-lines)
;; ("C->" . 'mc/mark-next-like-this)
;;  ("C-<" . 'mc/mark-previous-like-this)
;;  ("C-c C-<" 'mc/mark-all-like-this)
;;  )

