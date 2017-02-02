tests
testHeaderAndFooter
	| pdfDoc|
	pdfDoc := lessonToPDF buildPDFDocument.
	pdfDoc pages
		do: [ :page | 
			self asserts: page containsAParagraphWith: 'A Test Lesson'.
			self asserts: page containsAParagraphWith: 'anAuthor'.
			self asserts: page containsAParagraphWith: 'aCourse'.
			self asserts: page containsAParagraphWith: 'aTeacher'.
			self asserts: page containsAParagraphWith: self formattedDate ]