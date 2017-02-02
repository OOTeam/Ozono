as yet unclassified
handleEdit: editBlock
	| result |
	result := super handleEdit: editBlock.
	"triggers a model changed to refresh"
	self model changed.
	^result