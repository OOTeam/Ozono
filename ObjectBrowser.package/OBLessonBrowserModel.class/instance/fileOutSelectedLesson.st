actions
fileOutSelectedLesson
	[ 
	self selectedLesson fileOut.
	UIManager inform: self lessonExportedMessage ]
		on: FileExistsException
		do: [ UIManager inform: self lessonExportErrorMessage ]