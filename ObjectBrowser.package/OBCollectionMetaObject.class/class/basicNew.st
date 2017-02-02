instance creation
basicNew	
	^super basicNew posibleName: self name asLowercase , self collectionClassNumber asString ; yourself 