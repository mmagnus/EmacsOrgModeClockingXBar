;;; OrgModeClockingXBar - See what you are working on ;-)
;;; Code
;;;
(defvar orgmode-clocking-bar-tempfile "~/.OrgModeClockingXBar.txt")
(defun orgmode-clocking-bar-save-tempfile ()
  "Save current Clockign to a file ~/.OrgModeClockingXBar.txt, so it can be read by OrgModeClockingXBar.py"
  (if org-clock-current-task
      (write-region (org-clock-get-clock-string) nil orgmode-clocking-bar-tempfile nil 'quiet)
    (write-region "Idle?" nil orgmode-clocking-bar-tempfile nil 'quiet))
  )

(defvar org-mode-clock-timer)
(defvar org-clock-current-task)

(defun orgmode-clocking-in ()
  "To hook for org-clock-in-hook"
  (setq org-mode-clock-timer (run-with-timer 10 10 'orgmode-clocking-bar-save-tempfile)))

(defun orgmode-clocking-out ()
  "To hook for org-clock-out-hook"
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
