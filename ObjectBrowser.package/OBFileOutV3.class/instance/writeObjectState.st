template
writeObjectState

	self modeObjectState.
	lesson objects do: [ :anObject | anObject accept: self ].