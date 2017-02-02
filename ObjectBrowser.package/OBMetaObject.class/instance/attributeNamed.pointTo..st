attributes
attributeNamed: attributeName pointTo: anObject

	OBPharoReflection uniqueInstance
		inObject: self baseObject
		setInstanceVariable: attributeName
		withValue: anObject baseObject.