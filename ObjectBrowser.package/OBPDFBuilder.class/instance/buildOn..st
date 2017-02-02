builder
buildOn: aPDFDocument 
	self doc:aPDFDocument.
	self newPage.
	
	self buildInfo.
	self buildObjects.
	self buildDiagram.