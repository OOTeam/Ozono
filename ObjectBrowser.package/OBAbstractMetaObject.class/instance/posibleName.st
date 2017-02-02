accessing
posibleName

	^ ((OBPharoReflection uniqueInstance classNameOfObject: self baseObject), self baseObject hash asString) asLowercase.