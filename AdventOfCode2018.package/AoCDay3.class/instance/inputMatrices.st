as yet unclassified
inputMatrices

	| matrices |
	
	matrices := OrderedCollection new.
	
	input withKeyDo: [ :row :key |
		matrices add: (self rowToMatrix: row) ].
	
	^ matrices