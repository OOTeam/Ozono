running
setUp
	super setUp.
	pepita := currentLesson createObject.
	code := 'createOrdered 
		{var} := nil.
		^{var}.' format: { 'var' -> self unknownVariableName} asDictionary.
