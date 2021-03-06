services columns
createAlterColumnStatementSetNotNull: aField
	| sqlStatementStream |
	sqlStatementStream := WriteStream on: String new.
	sqlStatementStream
		nextPutAll:  'ALTER TABLE';
		space.
		self printDDLTableNameFor: aField table on: sqlStatementStream.

	sqlStatementStream
		nextPutAll:  ' ALTER COLUMN';
		space;
		nextPutAll: (self nameForColumn: aField name);
		space;
		nextPutAll:  'SET';
		space;
		nextPutAll:  self sqlTextForNOTNULLAttributeConstraint.

	
	^sqlStatementStream contents