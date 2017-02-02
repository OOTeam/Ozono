accessing
compileMethod: aText notifying: someone

	| method |
	method := self selectedObject compileMethod: aText notifying: someone.
	self changed.
	self selectedObjectMethod: method.