tests
testSimpleObjectGraph
	| obj graph |
	obj := currentLesson createObject.
	graph := currentLesson buildGraph.
	
	self assert: (graph objects includes: obj).