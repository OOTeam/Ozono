classes
createClassNamed: aClassName subclassOf: aSuperclass inEnvironment: anEnvironment

	OBPharoSystem uniqueInstance suspendSystemEventsWhile: [
		^OldClassBuilderAdapter new
			name: aClassName
			inEnvironment: anEnvironment
			subclassOf: aSuperclass
			type: aSuperclass typeOfClass
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: 'Useless'.
	]