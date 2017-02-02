literals
bindingOf: aName 
	^(self includesLiteralNamed: aName)
		ifTrue: [ aName -> (self literalNamed: aName) ]
		ifFalse: [ nil ]