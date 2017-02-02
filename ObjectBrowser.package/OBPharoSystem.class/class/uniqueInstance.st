instance creation
uniqueInstance

	^UniqueInstance ifNil: [ UniqueInstance := OBPharoSystem new ]