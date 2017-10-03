;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."

  (setq-default
   ;; custom additions
   ;; NOTE these don't seem to work
   ;; dotspacemacs-configuration-layers '((syntax-checking :variables syntax-checking-enable-by-default nil))
   ;; dotspacemacs-configuration-layers '((syntax-checking :variables syntax-checking-enable-tooltips nil))
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     auto-completion
     better-defaults
     c-c++
     csv
     emacs-lisp
     git
     helm
     javascript
     markdown
     org
     python
     react
     ruby
     ruby-on-rails
     shell-scripts
     spell-checking
     sql
     syntax-checking
     twitter
     vinegar
     yaml
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(
     ag ;; the silver searcher
     lemon-mode
     pt ;; the platinum searcher
     wgrep-ag
     )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   ;; NOTE extraordinarily useful for debugging this file.
   dotspacemacs-verbose-loading t
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'random
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 5))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(ujelly
                         doom-one
                         spacemacs-dark
                         zenburn
                         solarized-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
  dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native t
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (add-to-list 'auto-mode-alist '("\\.re\\'" . c-mode))
  (add-to-list 'auto-mode-alist '("\\.yy\\'" . lemon-mode))
  )

(defun jesse/csv-sort ()
  (defun sort-lines-nocase (value)
    (sort value
      (lambda (s1 s2) (string-collate-lessp s1 s2 "POSIX" 'ignore-case))))

  (defun csv-string-to-list (value)
    (split-string value "\\,"))

  (defun trim-list (value)
    (remove "" (mapcar 'string-trim value)))

  (defun csv-string-sort (value)
    (string-join (sort-lines-nocase (trim-list (csv-string-to-list value))) ", "))

  (defun csv-line-sort ()
    (interactive)
    (if (region-active-p)
        (let ((region-contents-string (buffer-substring (region-beginning) (region-end))))
          (save-excursion
            (delete-region (region-beginning) (region-end))
            (goto-char (region-beginning))
            (insert (csv-string-sort region-contents-string))))
        ))
  ;; (define-key evil-normal-state-map (kbd "gs") 'csv-line-sort)
  )

(defun jesse/org-config ()
  ;; define the location of the file to hold tasks
  (define-key global-map "\C-cc" 'org-capture)

  (setq org-directory "~/org")

  ;; default files
  (setq org-default-journal-file (concat org-directory "/journal.org"))
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  (setq org-default-tasks-file (concat org-directory "/tasks.org"))

  (setq org-capture-templates
        '(("t" "Task" entry
           (file+headline org-default-tasks-file "Tasks")
           "* TODO %?\n  %U\n  %a")
          ("i" "Idea" entry
           (file+headline org-default-notes-file "Idea")
           "* %? :IDEA:\n  %U\n  %a")
          ("j" "Journal" entry
           (file+datetree org-default-journal-file)
           "* %?\n  %U\n  %a")))

  ;; agenda
  (setq org-agenda-files (list org-directory))
  (setq org-agenda-skip-scheduled-if-done t)
  (setq org-agenda-skip-deadline-if-done t)

  ;; tags
  ;; Tags with fast selection keys
  (setq org-tag-alist (quote ((:startgroup)
                              ("@errand" . ?e)
                              ("@office" . ?o)
                              ("@home" . ?H)
                              (:endgroup)
                              ("WAITING" . ?w)
                              ("HOLD" . ?h)
                              ("IDEA" . ?i)
                              ("PERSONAL" . ?P)
                              ("DRAFT" . ?D)

                              ("NOTE" . ?n)
                              ("CANCELLED" . ?c)
                              ("FLAGGED" . ??))))

  (setq org-agenda-files '("~/org/tasks.org"))
  (setq org-todo-keywords
     '((sequence "TODO" "DOING" "WAITING" "|" "DONE" "CANCELED")))

  ;; refiling
  (setq org-refile-targets '((nil :maxlevel . 9)
			                       (org-agenda-files :maxlevel . 9)))

  ;; pomodoro
  (add-hook 'org-pomodoro-finished-hook (lambda()
                                          (org-journal-new-entry nil)
                                          ))

  ;; start in insert mode when adding a capture
  (add-hook 'org-capture-mode-hook 'evil-insert-state)
)

(defun jesse/flyspell-config ()
  (defun add-word ()
    (interactive)
    (let ((current-location (point))
          (word (flyspell-get-word)))
      (when (consp word)
        (flyspell-do-correct 'save nil (car word) current-location (cadr word) (caddr word) current-location))))

  ;; add word to the dictionary using "SPC a w"
  (spacemacs/set-leader-keys "aw" 'add-word)
  )

(defun jesse/platinum-searcher-config ()
  (defun projectile-platinum ()
    (interactive)
    (let ((search-string (buffer-substring
                          (evil-range-beginning (evil-visual-range))
                          (evil-range-end (evil-visual-range)))))
      (evil-normal-state)
      (projectile-pt search-string)
      ))
  (define-key evil-visual-state-map (kbd "C-S-f") 'projectile-platinum)
  )

(defun jesse/ripper-tags ()
  (defun update-ripper-tags ()
    "Updates the TAGS file for the current project."
    (interactive)
    ;; Only update TAGS when a ruby file is edited and saved.
    (when (eq major-mode 'ruby-mode)
      ;; NOTE: not working -- trying to kill any ripper-tags process before starting a new one
      (let ((default-directory projectile-cached-project-root)
            (process-name "Emacs ripper-tags"))
        (let (running-process (get-process process-name))
          (if (process-live-p running-process)
              (delete-process process-name)
            )
          )
          (start-process process-name nil "ripper-tags" "-R" "--exclude=vendor" "--exclude=db" "-e" "-f" "TAGS" "--tag-relative=true"))
      ))

  ;; Override the projectile generate tags keybinding.
  (define-key evil-normal-state-map (kbd "SPC p G") 'update-ripper-tags)
  ;; Automatically update when a file is saved (only happens when contents change).
  (add-hook 'after-save-hook 'update-ripper-tags)
  )

(defmacro define-and-bind-text-object (key start-regex end-regex)
  (let ((inner-name (make-symbol "inner-name"))
        (outer-name (make-symbol "outer-name")))
    `(progn
       (evil-define-text-object ,inner-name (count &optional beg end type)
         (evil-select-paren ,start-regex ,end-regex beg end type count nil))
       (evil-define-text-object ,outer-name (count &optional beg end type)
         (evil-select-paren ,start-regex ,end-regex beg end type count t))
       (define-key evil-inner-text-objects-map ,key (quote ,inner-name))
       (define-key evil-outer-text-objects-map ,key (quote ,outer-name)))))

(defun jesse/evil-inner-line ()
  ;; taken from https://github.com/syohex/evil-textobj-line
  (require 'evil)

  (defgroup evil-textobj-line nil
    "Text object line for Evil"
    :group 'evil)

  (defcustom evil-textobj-line-i-key "l"
    "Keys for evil-inner-line"
    :type 'string
    :group 'evil-textobj-line)

  (defcustom evil-textobj-line-a-key "l"
    "Keys for evil-a-line"
    :type 'string
    :group 'evil-textobj-line)

  (defun evil-line-range (count beg end type &optional inclusive)
    (if inclusive
        (evil-range (line-beginning-position) (line-end-position))
      (let ((start (save-excursion
                     (back-to-indentation)
                     (point)))
            (end (save-excursion
                   (goto-char (line-end-position))
                   (skip-syntax-backward " " (line-beginning-position))
                   (point))))
        (evil-range start end))))

  (evil-define-text-object evil-a-line (count &optional beg end type)
    "Select range between a character by which the command is followed."
    (evil-line-range count beg end type t))
  (evil-define-text-object evil-inner-line (count &optional beg end type)
    "Select inner range between a character by which the command is followed."
    (evil-line-range count beg end type))

  (define-key evil-outer-text-objects-map evil-textobj-line-a-key 'evil-a-line)
  (define-key evil-inner-text-objects-map evil-textobj-line-i-key 'evil-inner-line)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; Make linums relative by default
  (global-linum-mode nil)
  (linum-relative-toggle)

  (jesse/csv-sort)
  (jesse/org-config)
  (jesse/flyspell-config)
  (jesse/platinum-searcher-config)
  (jesse/ripper-tags)
  (jesse/evil-inner-line)

  (custom-set-variables
   '(helm-ag-base-command "pt -e --nocolor --nogroup"))

  ;; (setq shell-file-name "/bin/sh")

  ;; create "il"/"al" (inside/around) line text objects:
  ;; (define-and-bind-text-object "l" "^\\s-*" "\\s-*$")

  (define-key evil-normal-state-map (kbd "H") 'helm-buffers-list)
  (define-key evil-normal-state-map (kbd "C-p") 'helm-projectile-find-file)
  (define-key evil-normal-state-map (kbd "gs") 'spacemacs/sort-lines)
  (define-key evil-normal-state-map (kbd "C-i") 'evil-jump-forward)
  (define-key evil-normal-state-map (kbd "C-1") 'er/contract-region)
  (define-key evil-normal-state-map (kbd "C-2") 'er/expand-region)
  (define-key evil-normal-state-map (kbd "C-S-f") 'projectile-pt)
  (define-key evil-normal-state-map (kbd "C-f") 'helm-swoop-symble-pre-input)
  (define-key evil-visual-state-map (kbd "C-f") 'helm-swoop-symble-pre-input)

  ;; (define-key global-map (kbd "C-w h") 'evil-window-left)
  ;; (define-key global-map (kbd "C-w C-h") 'evil-window-left)
  ;; (define-key global-map (kbd "C-w l") 'evil-window-right)
  ;; (define-key global-map (kbd "C-w C-l") 'evil-window-right)

  ;; what I'm used to from vim
  (define-key evil-normal-state-map (kbd "C-w h") 'evil-window-left)
  (define-key evil-normal-state-map (kbd "C-w C-h") 'evil-window-left)
  (define-key evil-normal-state-map (kbd "C-w l") 'evil-window-right)
  (define-key evil-normal-state-map (kbd "C-w C-l") 'evil-window-right)
  (eval-after-load 'evil-ex
    '(evil-ex-define-cmd "A" 'ruby-test-toggle-implementation-and-specification))

  ;; (define-key evil-inner-text-objects-map "l" 'evil-inner-line)

  ;; ;;;###autoload
  ;; (eval-after-load 'evil
  ;;   '(progn
  ;;      (autoload 'evil-a-line "evil-textobj-line" nil t)
  ;;      (autoload 'evil-inner-line "evil-textobj-line" nil t)
  ;;      (define-key evil-inner-text-objects-map "l" 'evil-inner-line)
  ;;      (define-key evil-outer-text-objects-map "l" 'evil-a-line)))

  ;; same as netrw binding
  (define-key evil-normal-state-map (kbd "-") 'dired-jump)
  ;; use to create new files
  (define-key dired-mode-map "c" 'helm-find-files)

  ;; (setq projectile-tags-command "etags -o \"%s\" %s")

  (add-hook 'ruby-mode-hook
            (lambda ()
              (push '(?| . ("|" . "|")))))

  ;; (evil-define-key 'normal key-translation-map (kbd "c") (kbd "f"))
  ;; (evil-define-key 'normal evil-org-mode-map
  ;;   "c" 'helm-find-files)

  ;; ;; TODO figure out why won't these work???
  ;; (add-hook 'dired-mode-hook
  ;;           (lambda ()
  ;;             (local-set-key "c" 'helm-find-files)
  ;;             (dired-hide-details-mode nil)
  ;;             (setq diredp-hide-details-initially-flag nil)
  ;;             (setq diredp-hide-details-propagate-flag nil))
  ;;           )

  ;; set js and jsx indentations
  (setq-default
   ;; js2-mode
   js2-basic-offset 2
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(package-selected-packages
   (quote
    (lemon-mode sql-indent insert-shebang fish-mode disaster csv-mode company-shell company-c-headers cmake-mode clang-format pt wgrep-ag wgrep ag yaml-mode doom-dark-theme js2-refactor helm-company helm-c-yasnippet company-web web-completion-data company-tern tern company-statistics company-anaconda auto-yasnippet yapfify web-mode web-beautify unfill twittering-mode tagedit slim-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv pyvenv pytest pyenv-mode py-isort pug-mode projectile-rails rake inflections pip-requirements mwim minitest livid-mode skewer-mode simple-httpd live-py-mode less-css-mode json-mode json-snatcher json-reformat multiple-cursors js2-mode js-doc hy-mode dash-functional helm-pydoc helm-css-scss haml-mode fuzzy flyspell-correct-helm flyspell-correct feature-mode emmet-mode cython-mode company coffee-mode chruby bundler inf-ruby yasnippet auto-dictionary anaconda-mode pythonic ac-ispell auto-complete smeargle orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-download magit-gitflow htmlize helm-gitignore gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link flycheck-pos-tip pos-tip flycheck evil-magit magit magit-popup git-commit with-editor mmm-mode markdown-toc markdown-mode gh-md ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(tramp-syntax (quote default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#ffffff" :background "#000000")))))
