visiting
visitCollectionForCreation: anObject

	self write: anObject posibleName.
	self write:  ' := '.
	self write: '('.
	self write:  self lessonIdentification.
	self write: ' literalNamed: #'''.
	self write: anObject prototype id.
	self write: ''') basicClone'.
	self write: '.'.
	self cr.