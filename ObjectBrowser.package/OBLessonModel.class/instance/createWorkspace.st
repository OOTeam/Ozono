showing
createWorkspace
	| workspaceLabel |
	(self errorHandler
		evaluate: [
			workspaceLabel := self obtainWorkpaceLabel.
			workspaceLabel ifNotNil:[
			self createWorkspace: workspaceLabel.
			]]).
	self changed