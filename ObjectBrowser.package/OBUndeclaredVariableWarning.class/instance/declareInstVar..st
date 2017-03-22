as yet unclassified
declareInstVar: name
	super declareInstVar: name.
	self requestor textMorph acceptContents.