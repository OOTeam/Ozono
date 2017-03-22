as yet unclassified
createNewOBObjectWithName: name
	model createVariableButDoNotChangeFocus: name.
	self requestor textMorph acceptContents.
	model changed.