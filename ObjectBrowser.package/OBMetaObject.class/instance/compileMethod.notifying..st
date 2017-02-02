methods
compileMethod: aMethodCode notifying: someone
	| selector obMethod |
	
	selector := OBPharoReflection uniqueInstance
		compile: aMethodCode
		inLesson: self lesson
		inClass: (OBPharoReflection uniqueInstance classOf: self baseObject)
		notifying: someone.
	selector ifNil: [ 
			obMethod:= OBNullMethod new.
			obMethod code: aMethodCode.
			^ obMethod.
		 ].
	
	obMethod := OBMethod new
		selector: selector;
		object: self;
		yourself.
	methods at: selector put: obMethod.
	self flushAttributesCache.
	self changed.
	^ obMethod