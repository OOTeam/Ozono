workspaces
createWorkspace: workspaceLabel contents: someContents

	| workspace |
	workspace := OBWorkspace new
		label: workspaceLabel;
		contents: someContents;
		lesson: self.
	self addWorkspace: workspace.
	workspace openInWorld.
	workspace containingWindow center: World center.
	^workspace