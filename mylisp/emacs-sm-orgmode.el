
(setq org-todo-keywords
       '((sequence "AR:(a)" "WIP:(w)" "DELEGATED:(g)" "DONE:(d)")))

(setq org-log-done 'time)
(setq org-log-done 'note)

(setq org-latex-pdf-process
 '("xelatex -interaction nonstopmode %f"
   "xelatex -interaction nonstopmode %f"))
