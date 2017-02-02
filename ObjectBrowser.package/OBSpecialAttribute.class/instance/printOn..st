printing
printOn: aStream
	aStream
		nextPutAll: self name;
		nextPutAll: '(';
		nextPutAll: self objectPointed printString;
		nextPutAll: ')'