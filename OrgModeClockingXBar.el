;;; OrgModeClockingXBar - See what you are working on ;-)
;;; Code
;;;
(defvar orgmode-clocking-bar-tempfile "~/.OrgModeClockingXBar.txt")
;(defvar org-clock-current-task "demo")

;(org-mode)
;(find-file-other-window "/Users/magnus/iCloud/geekbook/notes/life-curr.org")

(defun orgmode-clocking-bar-save-tempfile ()
  "Save region to a tempfile and run Grammarly on it."
  (if org-clock-current-task
      (write-region (org-clock-get-clock-string) nil orgmode-clocking-bar-tempfile nil 'quiet)
    (write-region "Idle?" nil orgmode-clocking-bar-tempfile nil 'quiet))
  )

(defvar org-mode-clock-timer)
(defvar org-clock-current-task)

(defun orgmode-clocking-in ()
  "Xxx."
  (setq org-mode-clock-timer (run-with-timer 10 10 'orgmode-clocking-bar-save-tempfile)))

(defun orgmode-clocking-out ()
  "Xxx."
  (write-region "Idle?" nil orgmode-clocking-bar-tempfile nil 'quiet))

;; hooks
;(find-file-other-window "/Users/magnus/iCloud/geekbook/notes/life-curr.org")
(add-hook 'org-clock-in-hook (lambda () (orgmode-clocking-in)))
;          (call-process "/usr/bin/osascript" nil 0 nil "-e"
;              (concat "tell application \"org-clock-statusbar\" to clock in \"" (replace-regexp-in-string "\"" "\\\\\"" org-clock-current-task) "\""))
(add-hook 'org-clock-out-hook (lambda () (orgmode-clocking-out)))
;          (call-process "/usr/bin/osascript" nil 0 nil "-e" "tell application \"org-clock-statusbar\" to clock out")))

(provide 'OrgModeClockingXBar)
;;; org-mode-clock-bar.el ends here
