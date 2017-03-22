as yet unclassified
acceptCode: unText notifying: someone
	self errorHandler
		evaluate: [ [ [ self model compileTest: unText notifying: someone ]
				on: OCUndeclaredVariableWarning
				do: [ :warn | 
					warn asOBUndeclaredVariableWarning
						thatCanModifyModel: self model;
						signal ] ]
				on: SyntaxErrorNotification
				do: [ :notification | testEditorMorph editString: notification errorCode ] ]