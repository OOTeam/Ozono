as yet unclassified
testCloneOrdered
	self executeOnWorkspace: workspace code: 'obj x: ordered clone'. 
	self assert: obj pointsTo baseObject x class equals: OBOrderedCollection.
	self assert: obj pointsTo baseObject x isEmpty.