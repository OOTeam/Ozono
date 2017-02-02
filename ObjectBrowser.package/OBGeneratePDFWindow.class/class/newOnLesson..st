instance creation
newOnLesson: aLesson 
	| obj |
	obj := self new.
	obj model:(OBLessonToPDF newOnLesson:aLesson).
	^obj.