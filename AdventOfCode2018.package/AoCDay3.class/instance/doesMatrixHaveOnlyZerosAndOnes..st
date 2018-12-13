as yet unclassified
doesMatrixHaveOnlyZerosAndOnes: aMatrix

	aMatrix collect: [ :cell | cell > 1 ifTrue: [ ^ false ] ].
	^ true