as yet unclassified
createPepitaObObject: lesson
	|pepita|
	
	pepita := lesson createObject.
	pepita addAttributeNamed: 'dondeEstas'.
	pepita addAttributeNamed: 'energia'.
	pepita compileMethod: 'energia
	^30.'.
	pepita compileMethod: 'lugar
	^dondeEstas'.
	pepita compileMethod: 'initialize
	energia := 30.'.
	pepita compileMethod: 'dondeEstas: lugar
	dondeEstas := lugar'.
	
	^pepita .