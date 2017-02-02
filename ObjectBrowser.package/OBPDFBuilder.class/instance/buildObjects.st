builder
buildObjects
	| visitor |
	self createHeading: 'Objetos'.
	visitor := OBPDFVisitor new builder:self; yourself.
	self model lesson accept:visitor.