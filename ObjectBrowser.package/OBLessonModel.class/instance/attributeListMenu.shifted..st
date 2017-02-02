menues
attributeListMenu: aMenu shifted: shifted
	^aMenu addList: (self actionsForAttributeListWith: self selectedObjectAttribute)