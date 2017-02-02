showing
createWorkspace: workspaceLabel contents: someContents
	| workspace |
	workspace := self lesson createWorkspace: workspaceLabel contents: someContents.
	self selectedItem: workspace.
	self changed.
	^workspace 