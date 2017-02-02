attributes
attributeNames

	^attributes ifNil: [ attributes := OBPharoReflection uniqueInstance instanceVariablesOfObject: self baseObject ].