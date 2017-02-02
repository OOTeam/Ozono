template
writeObjectDefinition

	self modeObjectDefinition.
	lesson objects do: [ :anObject | anObject accept: self ].