accessing
actionsForObjectBrowserReferencesList
	^(OrderedCollection with: #('crear nuevo objeto' #createObject))
		addAll: self selectedObject actionsForObjectBrowserReferencesList;
		asArray.