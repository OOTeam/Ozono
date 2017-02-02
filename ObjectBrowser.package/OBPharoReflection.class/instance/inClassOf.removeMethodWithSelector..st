methods
inClassOf: anObject removeMethodWithSelector: aSelector

	OBPharoSystem uniqueInstance suspendSystemEventsWhile: [
		^ anObject class removeSelector: aSelector.
	]