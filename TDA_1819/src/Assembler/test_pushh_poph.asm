		.data
A:		.word	0
		.code
		daddi r2, r0, 4
		pushh r2
		nop
		nop		
		daddi r1, r0, 16
		daddi r2, r0, 999
		poph r3
		halt
		