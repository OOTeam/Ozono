as yet unclassified
perform: aSelector 
	^ (super respondsTo: aSelector)
		ifTrue: [super perform: aSelector]
		ifFalse: [self model perform: aSelector]