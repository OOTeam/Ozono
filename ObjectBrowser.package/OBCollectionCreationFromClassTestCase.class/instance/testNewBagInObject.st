as yet unclassified
testNewBagInObject
	obj pointsTo compileMethod: ' createX. x:= Bag new. '.
	self executeOnWorkspace: workspace code: 'obj createX.'. 
	self assert: obj pointsTo baseObject x class equals: OBBag.
	self assert: obj pointsTo baseObject x isEmpty.