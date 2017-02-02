code completion
guessTypeForName: aString
	(model lesson hasVariableNamed: aString) ifTrue: [
		^OBPharoReflection uniqueInstance classOf: (model lesson variableNamed: aString) pointsTo baseObject.
	] ifFalse: [
		^nil.
	].