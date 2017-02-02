as yet unclassified
doesNotUnderstand: aMessage
	self error: (self printString, ' no entiende el mensaje ', (aMessage selector))