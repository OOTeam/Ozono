printing
printOn: aStream
	aStream << self displayString.
	self printElementsOn:aStream.