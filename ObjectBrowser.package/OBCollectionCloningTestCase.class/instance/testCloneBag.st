as yet unclassified
testCloneBag
	self executeOnWorkspace: workspace code: 'obj x: bag clone'. 
	self assert: obj pointsTo baseObject x class = OBBag.
	self assert: obj pointsTo baseObject x isEmpty.