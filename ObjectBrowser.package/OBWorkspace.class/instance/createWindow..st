as yet unclassified
createWindow: labelString
	| w |
	w := OBWorkspaceWindow labelled: labelString.
	w workspace: self.
	^w