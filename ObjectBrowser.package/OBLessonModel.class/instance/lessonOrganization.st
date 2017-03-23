accessing
lessonOrganization
	^organization ifNil: [ organization := OrderedCollection 
		with: (OBListItemWrapper with: (OBObjectsTreeMenuNode for: self))
		with: (OBListItemWrapper with: (OBWorkspacesTreeMenuNode for: self))
		with: (OBListItemWrapper with: (OBTestsTreeMenuNode for: self))
		with: (OBListItemWrapper with: (OBRecycleBinTreeMenuNode for: self))
		]