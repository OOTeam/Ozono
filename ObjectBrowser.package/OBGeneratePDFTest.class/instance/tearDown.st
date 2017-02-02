running
tearDown
	super tearDown.
	lessonToPDF author: oldAuthor .
	lessonToPDF teacher: oldTeacher.
	lessonToPDF course: oldCourse.