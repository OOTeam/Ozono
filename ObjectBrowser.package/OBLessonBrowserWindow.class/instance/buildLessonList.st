creation
buildLessonList
	^ PluggableListMorph new
		doubleClickSelector: #openSelectedLesson;
		on: (OBLessonListModel newOn: loopBrowser)
		list: #listModel
		selected: #listIndex
		changeSelected: #listIndex:
		menu: #listMenu:shifted:
		keystroke: #listKey:from:;
		 borderWidth: 0;
		 enableDragNDrop: false;
		 autoDeselect: true;
		wrapSelector: #displayString;
		 yourself