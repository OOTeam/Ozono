garbage-collection
runGarbageCollector 
	self dereferencedObjects do: [:o | 
		o removeClassFromSystem.
		self removeObject: o ].