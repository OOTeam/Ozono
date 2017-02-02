exporting
fileCreationIsConfirmed
	^ (CustomQuestionDialogWindow new
		textFont: UITheme current textFont;
		title: self fileExistsMessage;
		text: self overwriteQuestionMessage;
		yesText: 'Sí' translated help: nil;
		noText: 'No' translated help: nil;
		openModal;
		answer) ifNil: [ false ]