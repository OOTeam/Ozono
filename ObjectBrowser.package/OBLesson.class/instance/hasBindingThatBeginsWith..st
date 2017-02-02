binding
hasBindingThatBeginsWith: aString 
	^ literals keys anySatisfy: [ :n | n beginsWith: aString ]