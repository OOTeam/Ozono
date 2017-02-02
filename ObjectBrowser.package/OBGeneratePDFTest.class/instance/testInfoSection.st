tests
testInfoSection
	| pdfDoc infoPage |
	pdfDoc := lessonToPDF buildPDFDocument.
	infoPage := pdfDoc pages at: 1.
	self asserts: infoPage containsAParagraphWith: lessonToPDF operatingSystem.
	self asserts: infoPage containsAParagraphWith: lessonToPDF pharoVersion.
	self asserts: infoPage containsAParagraphWith: lessonToPDF ozonoVersion.
	self asserts: infoPage containsAParagraphWith: lessonToPDF vmVersion.
	self asserts: infoPage containsAParagraphWith: lessonToPDF formattedControlCode.