tests
compileTest: aTestText notifying: someone
	| result newTest |
	result := OBPharoReflection uniqueInstance
		compile: aTestText
		inLesson: self
		inClass: self executionContext class
		notifying: someone
		withCategory: #tests.
	result isNotNil
		ifTrue: [ 
			newTest := OBTest newWithSelector: result onLesson: self.
			self testDictionary at: result put: newTest.
			^ newTest ].
		^nil.