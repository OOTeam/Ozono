cleaning
clean

	"We force everything to be garbage collected by releasing the references. Specially from special objects such as classes"
	self objects removeAll.
	self variables removeAll.
	self removeFromSystem.
	self class instVarNames do: [ :vn | self instVarNamed: vn put: nil].