actions
acceptCode: unText notifying: someone

	self errorHandler evaluate: [ [ [ 
		self model compileMethod: unText notifying: someone.
		] on: UndeclaredVariable
		do: [ :warn | warn asOBUndeclaredVariable signal ]
		] on: SyntaxErrorNotification
		do: [ :notification | methodEditorMorph editString: notification errorCode. ]
	]