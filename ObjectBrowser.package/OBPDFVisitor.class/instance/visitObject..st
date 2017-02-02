visitor
visitObject: anOBObject 
	anOBObject attributes do:[:e | e accept:self.].
	anOBObject methods do:[:e | e accept:self.].
	
