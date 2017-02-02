tests
testDo
	|total|
	self putSomeElements.
	total := 0.
	self collection do: [:e | total := total +e].
	self assert: 19 equals: total.