lesson-variables
hasVariableNamed: aVariableName

	^self variables anySatisfy: [:v | v name = aVariableName ].