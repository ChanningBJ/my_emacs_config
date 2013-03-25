; save buffers and do a command defined by save-do-command
;
; install:
;    (require 'save-do)
;    (setq save-do-command "ls -all")
; usage:
;    M-x save-do


(provide 'save-do)
(defun save-do ( ) 
  "Save buffers and do a command."
  (save-some-buffers)
  (shell-command save-do-command)
  (interactive) 
  )
