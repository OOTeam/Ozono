methods
methods
	^ self selectorsToDisplay
		collect: [ :selector | 
			OBMethod new
				selector: selector;
				object: self;
				yourself ]