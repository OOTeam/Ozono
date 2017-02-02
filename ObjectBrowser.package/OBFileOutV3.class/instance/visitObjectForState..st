visiting
visitObjectForState: anObject

	anObject attributes do: [ :var | 
			self write: anObject posibleName.
			self write: ' attributeNamed: '''.
			self write: var name.
			self write: ''' pointTo: '.
			self write: (anObject basicObjectAtAttributeNamed: var name) metaObject posibleName.
			self write: '.'. 
			self cr].