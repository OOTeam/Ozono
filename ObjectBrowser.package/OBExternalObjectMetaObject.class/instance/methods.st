methods
methods
	^ methods
		ifNil: [ 
			methods := concreteObject class methods
				collect: [ :m | 
					OBMethod new
						selector: m selector;
						object: self;
						yourself ] ]