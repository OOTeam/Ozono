instance-creation
newFrom: anObo on: aLesson
	
	| metaObject |
	metaObject := self newOn: aLesson.
	anObo bePrototypeOf: metaObject.
	^metaObject