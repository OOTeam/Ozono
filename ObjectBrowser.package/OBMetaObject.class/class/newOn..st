instance-creation
newOn: aLesson
	| concreteClass concreteObject metaObject |
	metaObject := self new.
	
	concreteClass := self createNewObjectBrowserObjectClassIn: aLesson.
	concreteObject := concreteClass new.
	concreteObject metaObject: metaObject.
	
	^ metaObject
		concreteObject: concreteObject;
		lesson: aLesson;
		yourself.