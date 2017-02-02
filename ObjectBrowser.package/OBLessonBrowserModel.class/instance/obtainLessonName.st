private
obtainLessonName

	| lessonName |
	lessonName := self request: 'Nombre de la leccion' translated  default: 'Free Lesson'.
	^ lessonName