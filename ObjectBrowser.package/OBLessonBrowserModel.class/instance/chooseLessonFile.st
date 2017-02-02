private
chooseLessonFile

	^ UITheme current
		chooseFileIn: World
		title: 'Selecciona la leccion a importar' translated
		extensions: #('st', 'ob', 'o3') 
		path: nil
		preview: nil.