as yet unclassified
testNewOrderedCollectionInObject
	obj pointsTo compileMethod: ' createX. x:= OrderedCollection new. '.
	self executeOnWorkspace: workspace code: 'obj createX.'. 
	self assert: obj pointsTo baseObject x class = OBOrderedCollection.
	self assert: obj pointsTo baseObject x isEmpty.