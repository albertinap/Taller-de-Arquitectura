		.data
A:		.word	11
		.code
		daddi r1, r0, 0x1111
		daddi r2, r0, 0x2222
		pushh r1
		nop
		nop
		sh r2, 0(SP)
		sh r1, 0(SP)
		lh r2, 0(SP)		
		poph r3
		halt