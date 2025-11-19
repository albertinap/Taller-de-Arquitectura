		.data
A:		.word	11
		.code
		daddi r4, r0, 9999
		nop
		nop
		daddi r2, r0, 4099
		nop
		nop
		sh r4, 0(r2)
		daddi r1, r0, 15
		pushh r2
		nop
		nop
		pushh r1
		nop
		nop		
		daddi r2, r0, 999
		poph r3
		halt
		