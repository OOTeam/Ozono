as yet unclassified
testCloneSet
	self executeOnWorkspace: workspace code: 'obj x: set clone'. 
	self assert: obj pointsTo baseObject x class = OBSet.
	self assert: obj pointsTo baseObject x isEmpty.	