tests
tearDown

	lesson ifNotNilDo: [:l | self tearDownLesson: l. l clean].
	lessonImported ifNotNilDo: #clean.
