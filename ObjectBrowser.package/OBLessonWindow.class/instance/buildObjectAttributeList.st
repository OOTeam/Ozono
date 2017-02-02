view
buildObjectAttributeList

	^ (PluggableIconListMorph
		on: (OBAttributeListModel newOn: self objectBrowser)
		list: #listModel
		selected: #listIndex
		changeSelected: #listIndex:
		menu: #listMenu:shifted:
		keystroke: #listKey:from:)
		borderWidth: 0;
		enableDragNDrop: false;
		autoDeselect: true;
		getIconSelector: #iconAt:;
		yourself