(require 'package)

;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://elpa.gnu.org/packages/"))

;; Add the user-contributed repositories
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))

; list the packages you want
(setq package-list
      '(auto-complete
        gruvbox-theme
        flx-ido
        js2-mode
        rspec-mode
        enh-ruby-mode
        projectile
        projectile-rails))

;; initalize the package system
(package-initialize)

; fetch the list of packages available
(or (file-exists-p package-user-dir)
    (package-refresh-contents))
;;(unless package-archive-contents
;;  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
