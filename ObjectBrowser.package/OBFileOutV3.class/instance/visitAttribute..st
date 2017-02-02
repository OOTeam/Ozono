visiting
visitAttribute: anAttribute

	self write: currentObject posibleName.
	self write: ' addAttributeNamed: '.
	self write: ''''.
	self write: anAttribute name.
	self write: '''.'.
	self cr.
