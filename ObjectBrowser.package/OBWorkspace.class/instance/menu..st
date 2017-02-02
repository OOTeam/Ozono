actions
menu: aMenuBuilder
	^aMenuBuilder addList: (OrderedCollection
		with: (Array braceWith: 'abrir' translated with: #openWorkspace)
		with: (Array braceWith: 'eliminar' translated with: #removeWorkspace) 
		with: (Array braceWith: 'exportar' translated with: #exportWorkspace)).