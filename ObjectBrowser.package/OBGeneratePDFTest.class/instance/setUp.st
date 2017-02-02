running
setUp
	super setUp.
	self fillUpLesson.
	lessonToPDF := OBLessonToPDF newOnLesson: currentLesson.
	oldAuthor := lessonToPDF author.
	oldTeacher := lessonToPDF teacher.
	oldCourse := lessonToPDF course.
	lessonToPDF author: 'anAuthor'.
	lessonToPDF teacher: 'aTeacher'.
	lessonToPDF course: 'aCourse'