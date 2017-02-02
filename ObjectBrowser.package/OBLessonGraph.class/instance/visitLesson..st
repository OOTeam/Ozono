visiting
visitLesson: aLesson

	lesson := aLesson.
	self trace.
	aLesson objects do: [ :o | o accept: self ].
	self mark.
	aLesson variables do: [ :v | v accept: self ].