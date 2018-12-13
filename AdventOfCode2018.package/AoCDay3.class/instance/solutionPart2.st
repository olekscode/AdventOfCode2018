as yet unclassified
solutionPart2

	| matrices sumOfMatrices elementwiseProductOfMatrices |
	
	matrices := self inputMatrices.
	sumOfMatrices := matrices sum.
	
	matrices doWithIndex: [ :matrix :i |
		elementwiseProductOfMatrices := matrix dot: sumOfMatrices.
		(self doesMatrixHaveOnlyZerosAndOnes: elementwiseProductOfMatrices)
			ifTrue: [ ^ i ] ].
	
	Error signal: 'Matrix was not found'.