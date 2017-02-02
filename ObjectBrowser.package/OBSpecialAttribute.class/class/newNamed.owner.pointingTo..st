instance-creation
newNamed: aNameString owner: owner pointingTo: anObject

	^self new 
		name: aNameString;
		owner: owner; 
		objectPointed: anObject;
		yourself