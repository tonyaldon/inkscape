;;; inkscape
;; Some commands to help me practicing inkscape

(defun ta-inkscape-keybindings ()
  "Open the files where my inkscape keybindings are."
  (interactive)
  (delete-other-windows)
	(let ((media-keybindings "~/work/learning/tricks/org/media.org")
				(default-xml-file  "~/work/settings/uconfig/.config/inkscape/keys/default.xml"))
		(org-open-file media-keybindings nil nil "Custom keybindings")
		(split-window-right)
		(windmove-right)
		(find-file default-xml-file)
		(windmove-left)))

(global-set-key (kbd "C-<f1>") 'ta-inkscape-keybindings)
