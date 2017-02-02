creation
createView
	| top left bottom right middle |
	window := StandardWindow labelled: 'Lecciones' translated.
	window model: loopBrowser.
	
	top := left := 0.
	bottom := right := 1.
	middle := 0.5.
	window addMorph: self buildAboutMorph frame: ( middle@top corner: right@0.55 ).
	window addMorph: self buildNewFreeLessonButton frame: (middle@0.85 corner: right@bottom ).
	window addMorph: self buildImportLessonButton frame: (middle@0.7 corner: right@0.85 ).
	window addMorph: self buildUpdateButton frame: (middle@0.55 corner: right@0.7 ).
	window addMorph: self buildLessonList frame: (left@top corner: middle@bottom).