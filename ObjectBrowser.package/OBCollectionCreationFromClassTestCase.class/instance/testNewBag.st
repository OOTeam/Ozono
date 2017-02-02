as yet unclassified
testNewBag
	self executeOnWorkspace: workspace code: 'obj x: Bag new'. 
	self assert: obj pointsTo baseObject x class = OBBag.
	self assert: obj pointsTo baseObject x isEmpty.