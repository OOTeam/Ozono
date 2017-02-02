methods
removeMethod: aMethod

	(self includesSelector: aMethod selector) ifFalse: [
		self error: 'El método #', aMethod selector ,' pertenece a un prototipo, no puede eliminarse de este objeto'.
	].

	OBPharoReflection uniqueInstance inClassOf: self baseObject removeMethodWithSelector: aMethod selector.
	methods removeKey: aMethod selector.
	self changed.