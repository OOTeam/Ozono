graph
addPrototypeRelationshipTo: anObjectBrowserObject in: aGraph

	self accept: aGraph.
	aGraph addReferenceFrom: anObjectBrowserObject to: self named: 'prototype'.