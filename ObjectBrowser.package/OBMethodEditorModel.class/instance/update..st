updating
update: anObject 
	super update: anObject.
	self changed: #selectedMethodCode.
	self changed: #listModel