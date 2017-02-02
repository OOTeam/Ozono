creation
buildAboutMorph
	^(window
		newTextEditorFor: loopBrowser
		getText: #aboutText
		setText: nil)
		disable;
		yourself