actions
importLesson: aFileEntry

	| lesson |
	lesson := OBLesson fileIn: aFileEntry.
	lesson openInWorld.
	self changed.