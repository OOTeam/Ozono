creation
buildNewFreeLessonButton
	^PluggableButtonMorph 
		on: loopBrowser 
		getState: nil
		action: #createNewFreeLesson
		label: #newFreeLessonLabel
		