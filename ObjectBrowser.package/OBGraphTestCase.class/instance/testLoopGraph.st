tests
testLoopGraph
	| obj graph obj2 |
	obj := currentLesson createObject.
	obj2 := currentLesson createObject.
	
	obj addAttributeNamed: 'var1'.
	obj attributeNamed: 'var1' pointTo: obj2.
	
	obj2 addAttributeNamed: 'var1'.
	obj2 attributeNamed: 'var1' pointTo: obj.

	graph := currentLesson buildGraph.
	
	self assert: (graph objects includes: obj).
	self assert: (graph objects includes: obj2).
	
	self assert: (graph references anySatisfy: [ :r | r from = obj & r to = obj2 & r name = 'var1']).
	self assert: (graph references anySatisfy: [ :r | r from = obj2 & r to = obj & r name = 'var1']).