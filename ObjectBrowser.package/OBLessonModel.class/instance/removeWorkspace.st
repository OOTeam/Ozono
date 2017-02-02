showing
removeWorkspace
	(self confirmDeletionOf: self selectedItem) ifTrue: [self workspaces remove: self selectedItem].
	self changed.