as yet unclassified
menu: aMenu

	^aMenu addList: (OrderedCollection 
		with: (Array braceWith: 'crear nuevo workspace' translated with: #createWorkspace )
		with: (Array braceWith: 'importar workspace' translated with: #fileInWorkspace))