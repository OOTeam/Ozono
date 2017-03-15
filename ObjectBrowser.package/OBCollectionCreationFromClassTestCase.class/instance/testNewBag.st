as yet unclassified
testNewBag
	self executeOnWorkspace: workspace code: 'obj x: Bag new'. 
	self assert: obj pointsTo baseObject x class equals: OBBag.
	self assert: obj pointsTo baseObject x isEmpty.