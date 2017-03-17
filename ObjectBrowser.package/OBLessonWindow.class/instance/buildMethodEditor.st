view
buildMethodEditor
	| model |
	methodEditor := (OBMethodEditorMorph
		on: (model := OBMethodEditorModel newOn: self objectBrowser )
		text: #selectedMethodCode
		accept: #acceptCode:notifying:
		readSelection: nil
		menu: #menu:) setNameTo: #textoMetodo.
	methodEditor beForSmalltalkCodeWithDefaultFont.
	methodEditor beEditable.
	methodEditor withoutLineNumbers.
	methodEditor withCodeSizeFeedback.
	self objectBrowser addObjectSelectionInterested: methodEditor.
	self objectBrowser addObjectSelectionInterested: model.
	model methodEditorMorph: methodEditor.
	
	^methodEditor