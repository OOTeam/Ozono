as yet unclassified
respondsTo: aSelector
	^(super respondsTo: aSelector) or: [self model respondsTo: aSelector ]