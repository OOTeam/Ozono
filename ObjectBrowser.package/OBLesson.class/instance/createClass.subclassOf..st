tests
createClass: aClassName subclassOf: aSuperClass

	^ OBPharoReflection uniqueInstance
		createClassNamed: aClassName
		subclassOf: aSuperClass
		inEnvironment: self lessonEnvironment.