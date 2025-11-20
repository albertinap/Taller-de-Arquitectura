		.data
A:		.hword	4005
B:		.hword	8306
SUMA:		.word	0
MAYOR:		.hword	0
MENOR:		.hword	0
		.code
		lh r1, A(r0)
		lh r2, B(r0)
		beq r1, r2, RESTO_1_A
		jmp SEGUIR_1
RESTO_1_A:	daddi r1, r1, -1
SEGUIR_1:	slt r5, r1, r2 
		andi r5, r5, 1
		bnez r5, A_MENOR
B_MENOR:	daddi r3, r2, 0
		daddi r4, r1, 0
		jmp SEGUIR_2
A_MENOR:	daddi r3, r1, 0
		daddi r4, r2, 0
SEGUIR_2:	dadd r6, r1, r2
		pushh r6
		andi r7, r6, 1
		beqz r7, SUMA_PAR
SUMA_IMPAR:	pushh r3
		pushh r4
		lh r8, 0(SP)
		sh r8, MAYOR(r0)
		lh r8, 2(SP)
		sh r8, MENOR(r0)
		lh r8, 4(SP)
		sh r8, SUMA(r0)
		daddi r9, r0, 1
		sh r9, 4(SP)
		poph r4
		poph r3
		jmp SEGUIR_3
SUMA_PAR:	pushh r4
		pushh r3
		lh r8, 0(SP)
		sh r8, MENOR(r0)
		lh r8, 2(SP)
		sh r8, MAYOR(r0)
		lh r8, 4(SP)
		sh r8, SUMA(r0)
		sh r0, 4(SP)
		poph r3
		poph r4
SEGUIR_3:	poph r6		
		halt
		