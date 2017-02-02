as yet unclassified
update: anObject 
	super update: anObject.
	self changed: #selectedTestCode.
	self changed: #listModel