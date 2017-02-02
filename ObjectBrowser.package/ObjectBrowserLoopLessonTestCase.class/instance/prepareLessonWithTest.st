as yet unclassified
prepareLessonWithTest
	|  aLesson fileEntry |
	fileEntry := self lessonWithTestTitle asLegalSelector asFileName asFileReference, '.st'.
	fileEntry ensureDelete.
	aLesson := OBLesson new title: self lessonWithTestTitle.

	aLesson compileTest: 'testSomething ^''all is cool'''.
		
	^ aLesson