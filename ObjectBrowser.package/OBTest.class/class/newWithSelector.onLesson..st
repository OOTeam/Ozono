instance-creation
newWithSelector: aTestSelector onLesson: aLesson
	^self new
		selector: aTestSelector;
		lesson: aLesson;
		yourself