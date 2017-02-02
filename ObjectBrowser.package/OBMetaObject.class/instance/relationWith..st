cloning
relationWith: aClone
	
	^OBSpecialAttribute 
		newNamed: 'prototype'
		owner: aClone
		pointingTo: self