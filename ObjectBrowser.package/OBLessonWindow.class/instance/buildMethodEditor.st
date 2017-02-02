view
buildMethodEditor
	| model |
	methodEditor := (PluggableTextMorph
		on: (model := OBMethodEditorModel newOn: self objectBrowser )
		text: #selectedMethodCode
		accept: #acceptCode:notifying:
		readSelection: nil
		menu: #menu:) setNameTo: #textoMetodo.
	methodEditor styled: true.
	methodEditor styler workspace: self lesson.
	
	self objectBrowser addObjectSelectionInterested: methodEditor.
	self objectBrowser addObjectSelectionInterested: model.
	model methodEditorMorph: methodEditor.
	
	^methodEditor