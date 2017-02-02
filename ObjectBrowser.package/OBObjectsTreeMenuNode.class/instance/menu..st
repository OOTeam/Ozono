ui-actions
menu: aMenu

	aMenu addList: (OrderedCollection with: (Array braceWith: 'crear nuevo objeto' translated with: #createObject)).
	aMenu add: self subMenuCollectionsName subMenu: self subMenuCollections.
	^aMenu
	