tests
testComplicatedGraph
	| obj graph obj2 noObo1 noObo2 |
	obj := currentLesson createObject.
	obj2 := currentLesson createObject.
	currentLesson addObject: (noObo1 := OBExternalObjectMetaObject for: 2).
	currentLesson addObject: (noObo2 := OBExternalObjectMetaObject for: nil).
	
	obj addAttributeNamed: 'var1'.
	obj attributeNamed: 'var1' pointTo: obj2.
	obj addAttributeNamed: 'var2'.
	obj attributeNamed: 'var2' pointTo: (OBExternalObjectMetaObject for: 2).
	
	obj2 addAttributeNamed: 'var1'.
	obj2 attributeNamed: 'var1' pointTo: obj.
	obj2 addAttributeNamed: 'var2'.

	graph := currentLesson buildGraph.
	
	self assert: (graph objects includes: obj).
	self assert: (graph objects includes: obj2).
	self assert: (graph objects includes: noObo1).
	self assert: (graph objects includes: noObo2).
	
	self assert: (graph references size = 4).
	
	self assert: (graph references anySatisfy: [ :r | r from = obj & r to = obj2 & r name = 'var1']).
	self assert: (graph references anySatisfy: [ :r | r from = obj2 & r to = obj & r name = 'var1']).
	self assert: (graph references anySatisfy: [ :r | r from = obj & r to baseObject = 2 & r name = 'var2']).
	self assert: (graph references anySatisfy: [ :r | r from = obj2 & r to baseObject = nil & r name = 'var2']).