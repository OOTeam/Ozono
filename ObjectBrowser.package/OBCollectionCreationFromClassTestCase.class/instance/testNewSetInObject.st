as yet unclassified
testNewSetInObject
	obj pointsTo compileMethod: ' createX. x:= Set new. '.
	self executeOnWorkspace: workspace code: 'obj createX.'. 
	self assert: obj pointsTo baseObject x class equals: OBSet.
	self assert: obj pointsTo baseObject x isEmpty.