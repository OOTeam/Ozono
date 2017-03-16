ui
menu: aMenuMorph 

	|opcionEliminar|
	opcionEliminar := Array braceWith: 'Eliminar este objeto' translated with: #deleteLessonVariable.
	aMenuMorph addList: (OrderedCollection with: opcionEliminar ).
	self pointsTo menu: aMenuMorph.
	^aMenuMorph