template
writeWorkspaces

	self write: '"Workspaces exported"'.
	lesson workspaces
		do: [ :aWorkspace | 
			self cr.
			aWorkspace accept: self ].
	self cr.