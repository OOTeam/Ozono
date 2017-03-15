as yet unclassified
testNewSet
	self executeOnWorkspace: workspace code: 'obj x: Set new'. 
	self assert: obj pointsTo baseObject x class equals: OBSet.
	self assert: obj pointsTo baseObject x isEmpty.