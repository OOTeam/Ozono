tests
testSelectorsBelongToCorrespondingClass

	self assert: ((self allCollectionSelectorsFor: Set) includesAll: (self selectorsFor: #set)).
	self assert: ((self allCollectionSelectorsFor: Bag) includesAll: (self selectorsFor: #bag)).
	self assert: ((self allCollectionSelectorsFor: SortedCollection) includesAll: (self selectorsFor: #sorted)).
	self assert: ((self allCollectionSelectorsFor: OrderedCollection) includesAll: (self selectorsFor: #ordered)).
	self assert: ((self allCollectionSelectorsFor: Dictionary) includesAll: (self selectorsFor: #dictionary))