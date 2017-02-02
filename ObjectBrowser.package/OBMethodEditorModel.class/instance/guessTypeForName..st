code completion
guessTypeForName: aString
	| object |
	object := self model selectedObject.
	^(object hasAttributeNamed: aString)
		ifTrue: [ (object attributeNamed: aString) objectPointed class ]
		ifFalse: [ nil ]