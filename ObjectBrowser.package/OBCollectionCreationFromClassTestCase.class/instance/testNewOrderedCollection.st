as yet unclassified
testNewOrderedCollection
	self executeOnWorkspace: workspace code: 'obj x: OrderedCollection new'. 
	self assert: obj pointsTo baseObject x class equals: OBOrderedCollection.
	self assert: obj pointsTo baseObject x isEmpty.