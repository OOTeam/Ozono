tests
testObjectWithVariables
	| obj graph |
	obj := currentLesson createObject.
	obj addAttributeNamed: 'var1'.
	obj attributeNamed: 'var1' pointTo: (OBExternalObjectMetaObject for: 2).
	
	obj addAttributeNamed: 'var2'.
	
	graph := currentLesson buildGraph.
	
	self assert: (graph references size = 2).
	
	self assert: (graph objects includes: obj).
	self assert: (graph objects anySatisfy: [ :o | o baseObject = 2 ]).
	self assert: (graph objects anySatisfy: [ :o | o baseObject = nil ]).
	
	self assert: (graph references anySatisfy: [ :r | r from = obj & r to baseObject = 2 & r name = 'var1']).
	self assert: (graph references anySatisfy: [ :r | r from = obj & r to baseObject = nil & r name = 'var2']).