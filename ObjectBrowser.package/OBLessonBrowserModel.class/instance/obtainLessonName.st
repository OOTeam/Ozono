private
obtainLessonName

	| lessonName |
	lessonName := self request: 'Nombre de la lección' translated  default: 'Nueva lección'.
	^ lessonName