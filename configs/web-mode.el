(add-hook 'web-mode-hook
          (lambda ()
            ""
            (setq web-mode-markup-indent-offset 2)))

(add-to-list 'auto-mode-alist
             '("\\.erb\\'" . web-mode))