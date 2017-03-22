actions
acceptCode: unText notifying: someone
	self errorHandler
		evaluate: [ [ [ self model compileMethod: unText notifying: someone ]
				on: OCUndeclaredVariableWarning
				do: [ :warn | 
					warn asOBUndeclaredVariableWarning
						thatCanModifyModel: self model;
						signal.] ]
				on: SyntaxErrorNotification
				do: [ :notification | methodEditorMorph editString: notification errorCode ] ]