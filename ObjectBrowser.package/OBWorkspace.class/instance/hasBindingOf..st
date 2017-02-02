bindings
hasBindingOf: aString 
	^(lesson hasVariableNamed: aString) or: [ self isLiteral: aString ].