methods
compile: code inLesson: aLesson inClass: aClass notifying: anObserver withCategory:aCategory

	OBPharoSystem uniqueInstance suspendSystemEventsWhile: [
		^ self compileUnsuspended: code inLesson: aLesson inClass: aClass notifying: anObserver withCategory:aCategory
	]