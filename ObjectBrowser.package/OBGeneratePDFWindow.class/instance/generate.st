as yet unclassified 
generate
	self accept.
	self model generate.
	UIManager inform: self pdfGenerationSuccessMessage.
	self close.
