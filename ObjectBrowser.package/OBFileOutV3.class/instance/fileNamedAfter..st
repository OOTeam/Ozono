exporting
fileNamedAfter: anObject
	| fileName |
	fileName := self fileNameFor: anObject.
	^ [ FileStream newFileNamed: fileName ]
		on: FileExistsException
		do: [ :anException | 
			self fileCreationIsConfirmed
				ifTrue: [ FileStream forceNewFileNamed: fileName ]
				ifFalse: [ anException pass ] ]