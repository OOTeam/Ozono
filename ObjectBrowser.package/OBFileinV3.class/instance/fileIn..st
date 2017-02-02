filein
fileIn: aFileEntry

	| lessonImported fileContents stream |
	
	stream := aFileEntry readStream.
	fileContents := stream contents.
	stream close.
	
	(fileContents beginsWith: OBFileOutV3 fileOutVersionHeader3)
		ifFalse: [ self beOldVersion ].
	
	Author fullName ifNil: [Author requestFullName].	
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		[ [
			lessonImported := Compiler new 
				evaluate: fileContents
				in: nil
				to: self bindingScope
				notifying: nil
				ifFail: [ ^nil ]
				logged: true.
			lessonImported isNil ifTrue: [self error: 'La Lección no pudo ser importada'].
			^ lessonImported.
			] valueSuppressingAllMessages.
		] ensure: [ 
		].
	]