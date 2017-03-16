as yet unclassified
menu: aMenu

	^aMenu addList: (OrderedCollection 
		with: (Array braceWith: 'crear nuevo playground' translated with: #createWorkspace )
		with: (Array braceWith: 'importar playground' translated with: #fileInWorkspace))