builder
buildOn: aPDFDoc.
	page := PDFPage new.	
	doc := aPDFDoc.
	doc add:page.
	
	self buildPage.