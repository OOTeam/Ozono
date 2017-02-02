ui
menu: aMenuMorph 

	|opcionEliminar|
	opcionEliminar := Array braceWith: 'Eliminar referencia a este objeto' translated with: #deleteLessonVariable.
	aMenuMorph addList: (OrderedCollection with: opcionEliminar ).
	self pointsTo menu: aMenuMorph.
	^aMenuMorph