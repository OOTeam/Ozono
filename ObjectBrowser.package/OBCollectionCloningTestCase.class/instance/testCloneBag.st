as yet unclassified
testCloneBag
	self executeOnWorkspace: workspace code: 'obj x: bag clone'. 
	self assert: obj pointsTo baseObject x class equals: OBBag.
	self assert: obj pointsTo baseObject x isEmpty.