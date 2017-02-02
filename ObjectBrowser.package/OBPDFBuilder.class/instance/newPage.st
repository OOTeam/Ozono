create elements
newPage
	page := PDFPage new.
	doc add:page.
	self createHeader.
	self createFooter.