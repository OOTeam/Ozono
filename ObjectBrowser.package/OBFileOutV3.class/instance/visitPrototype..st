visiting
visitPrototype: aPrototype

	self write: aPrototype posibleName.
	self write: ' bePrototypeOf: '.
	self write: currentObject posibleName.
	self write: '.'.
	self cr.