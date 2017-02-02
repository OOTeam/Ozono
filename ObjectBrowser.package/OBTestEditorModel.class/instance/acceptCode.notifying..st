as yet unclassified
acceptCode: unText notifying: someone
	
	self errorHandler evaluate: [ [ [
		self model compileTest: unText notifying: someone
		] on: UndeclaredVariable
		do: [ :warn | warn asOBUndeclaredVariable signal ] 
		] on: SyntaxErrorNotification 
		do: [ :notification | testEditorMorph editString: notification errorCode. ]
	]