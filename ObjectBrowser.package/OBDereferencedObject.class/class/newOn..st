instance-creation
newOn: anObject
	^self new
		dereferencedObject: anObject;
		yourself