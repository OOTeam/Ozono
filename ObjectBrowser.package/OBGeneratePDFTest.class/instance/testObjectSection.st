tests
testObjectSection
	| pdfDoc page |
	pdfDoc := lessonToPDF buildPDFDocument.
	page := pdfDoc pages at: 1.
	
	self asserts: page containsAParagraphWith: 'pepita'.
	self asserts: page containsAParagraphWith: '1234'.