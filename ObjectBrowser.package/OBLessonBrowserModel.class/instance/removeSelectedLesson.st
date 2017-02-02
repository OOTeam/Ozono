actions
removeSelectedLesson

	| lesson |
	lesson := self selectedLesson.
	lesson delete.
	self lessons remove: lesson.
	lesson clean.
	self changed.