visitor
visitMethod: anOBMethod 
	|str|
	str:=self objectName , '>>', anOBMethod code.
	builder createCode:str.