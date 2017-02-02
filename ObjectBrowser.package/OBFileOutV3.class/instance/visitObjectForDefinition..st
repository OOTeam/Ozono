visiting
visitObjectForDefinition: anObject

	currentObject := anObject.
	self modePrototypeDefinition.
	anObject prototype accept: self.
	self modeObjectDefinition.
	anObject ownAttributes do: [ :anAttribute | anAttribute accept: self ].
	anObject ownMethods do: [ :aMethod | aMethod accept: self ]