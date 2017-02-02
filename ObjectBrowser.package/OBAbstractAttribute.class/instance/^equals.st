comparing
= anOBAttribute
	^(anOBAttribute isKindOf: self class)  
		and: [ self name = anOBAttribute name 
			and: [ self objectPointed = anOBAttribute objectPointed ] ]