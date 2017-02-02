instance creation
newWithRealObject: realObject prototype: aPrototypeObject
	^super new
		concreteObject: realObject;
		prototype: aPrototypeObject;
		yourself.