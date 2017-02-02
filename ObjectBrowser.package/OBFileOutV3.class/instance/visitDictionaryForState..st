visiting
visitDictionaryForState: aDictionary

	aDictionary baseObject keysAndValuesDo:  [ :key :value | 
			self write: aDictionary posibleName.
			self write: ' at: '.
			self write: key metaObject posibleName.
			self write: ' put: '.
			self write: value metaObject posibleName.
			self write: '.'.
			self cr].