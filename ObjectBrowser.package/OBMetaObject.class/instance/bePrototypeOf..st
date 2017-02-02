cloning
bePrototypeOf: clone

	clone prototype: self.
	OBPharoReflection uniqueInstance
		makeClass: (OBPharoReflection uniqueInstance classOf: clone baseObject) subclassOf: (OBPharoReflection uniqueInstance classOf: self baseObject).