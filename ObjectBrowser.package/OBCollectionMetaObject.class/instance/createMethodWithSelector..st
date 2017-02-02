methods
createMethodWithSelector: aSelector
	^ OBMethod new
		selector: aSelector;
		object: self;
		yourself