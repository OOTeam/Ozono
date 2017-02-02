printing
collect: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Collect the resulting values into a collection like the receiver. Answer  
	the new collection."

      "I rewrite the implementation cause, Set's uses a Set new, not creating OBSet"

	| newSet |
	newSet := self copyEmpty.
	array do: [:each | each ifNotNil: [newSet add: (aBlock value: each enclosedSetElement)]].
	^ newSet