actions
expandReferences
	(objectBrowserTree allItems at: 1) isExpanded
		ifFalse: [ 
			(objectBrowserTree allItems at: 1) toggleExpandedState.
			objectBrowserTree adjustSubmorphPositions ]