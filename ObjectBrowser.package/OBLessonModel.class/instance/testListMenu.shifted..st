menues
testListMenu: aMenu shifted: aBoolean 
	aMenu addList: (OrderedCollection  with: (Array braceWith: 'borrar test' translated with: #deleteTest)
										 with: (Array braceWith: 'exportar' translated with: #exportTest)
										with: (Array braceWith: 'correr test' translated with: #runTest)) .

	^ aMenu