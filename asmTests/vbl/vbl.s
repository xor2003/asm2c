	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.intel_syntax noprefix
	.globl	_program
	.p2align	4, 0x90
_program:                               ## @program
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 92
	call	L0$pb
L0$pb:
	pop	esi
	mov	edi, dword ptr [esi + L___stack_chk_guard$non_lazy_ptr-L0$pb]
	mov	eax, dword ptr [edi]
	mov	dword ptr [ebp - 16], eax
	cmp	byte ptr [esi + (_m-L0$pb)+50], 0
	je	LBB0_1
LBB0_53:
	movzx	eax, byte ptr [esi + (_m-L0$pb)+50]
	mov	ecx, dword ptr [edi]
	cmp	ecx, dword ptr [ebp - 16]
	jne	LBB0_56
## BB#54:
	xor	eax, 1
	add	esp, 92
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB0_1:
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	jne	LBB0_55
## BB#2:
	mov	word ptr [esi + _m-L0$pb], 19
	sub	esp, 12
	push	16
	call	_asm2C_INT
	add	esp, 16
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	je	LBB0_7
## BB#3:
	sub	esp, 12
	lea	ebx, [ebp - 88]
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	je	LBB0_4
LBB0_7:
	sub	esp, 12
	lea	ebx, [ebp - 88]
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	je	LBB0_8
## BB#10:
	mov	dword ptr [esi + (_m-L0$pb)+4], 40960
	mov	word ptr [esi + _m-L0$pb], 2
	sub	esp, 12
	push	49
	call	_asm2C_INT
	add	esp, 16
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	je	LBB0_14
## BB#11:
	sub	esp, 12
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	je	LBB0_12
LBB0_14:
	mov	dword ptr [ebp - 92], edi ## 4-byte Spill
	movzx	eax, word ptr [esi + _m-L0$pb]
	mov	word ptr [esi + (_m-L0$pb)+36], ax
	mov	dword ptr [esi + (_m-L0$pb)+20], 0
	mov	byte ptr [esi + (_m-L0$pb)+45], 1
	mov	byte ptr [esi + (_m-L0$pb)+47], 0
	mov	dword ptr [esi + _m-L0$pb], 2007695104
	mov	dword ptr [esi + (_m-L0$pb)+8], 16000
	xor	eax, eax
	lea	ecx, [esi + _m-L0$pb]
	.p2align	4, 0x90
LBB0_15:                                ## =>This Inner Loop Header: Depth=1
	mov	edx, dword ptr [esi + (_m-L0$pb)+20]
	add	edx, ecx
	movzx	edi, word ptr [esi + (_m-L0$pb)+36]
	mov	edi, dword ptr [esi + 4*edi + (_m-L0$pb)+5688]
	mov	ebx, dword ptr [esi + _m-L0$pb]
	mov	dword ptr [edi + edx], ebx
	add	dword ptr [esi + (_m-L0$pb)+20], 4
	inc	eax
	cmp	eax, dword ptr [esi + (_m-L0$pb)+8]
	jb	LBB0_15
## BB#16:
	movzx	eax, word ptr [esi + (_m-L0$pb)+36]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5688]
	mov	dword ptr [esi + eax + (_m-L0$pb)+6560], 2007695104
	movzx	eax, word ptr [esi + (_m-L0$pb)+36]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5688]
	mov	dword ptr [esi + eax + _m-L0$pb], 2007695104
	mov	word ptr [esi + (_m-L0$pb)+12], 986
	mov	edi, dword ptr [ebp - 92] ## 4-byte Reload
	lea	ebx, [ebp - 88]
	.p2align	4, 0x90
LBB0_17:                                ## =>This Inner Loop Header: Depth=1
	movsx	eax, word ptr [esi + (_m-L0$pb)+12]
	sub	esp, 12
	push	eax
	call	_asm2C_IN
	add	esp, 16
	mov	byte ptr [esi + _m-L0$pb], al
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	je	LBB0_21
## BB#18:                               ##   in Loop: Header=BB0_17 Depth=1
	sub	esp, 12
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	je	LBB0_19
LBB0_21:                                ##   in Loop: Header=BB0_17 Depth=1
	movzx	eax, byte ptr [esi + _m-L0$pb]
	mov	ecx, eax
	shr	cl, 3
	mov	edx, ecx
	and	dl, 1
	xor	dl, 1
	mov	byte ptr [esi + (_m-L0$pb)+45], dl
	cmp	al, 8
	seta	byte ptr [esi + (_m-L0$pb)+44]
	and	cl, 1
	mov	byte ptr [esi + (_m-L0$pb)+47], 0
	jne	LBB0_17
	.p2align	4, 0x90
LBB0_22:                                ## =>This Inner Loop Header: Depth=1
	movsx	eax, word ptr [esi + (_m-L0$pb)+12]
	sub	esp, 12
	push	eax
	call	_asm2C_IN
	add	esp, 16
	mov	byte ptr [esi + _m-L0$pb], al
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	je	LBB0_26
## BB#23:                               ##   in Loop: Header=BB0_22 Depth=1
	sub	esp, 12
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	je	LBB0_24
LBB0_26:                                ##   in Loop: Header=BB0_22 Depth=1
	movzx	eax, byte ptr [esi + _m-L0$pb]
	mov	ecx, eax
	shr	cl, 3
	mov	edx, ecx
	and	dl, 1
	xor	dl, 1
	mov	byte ptr [esi + (_m-L0$pb)+45], dl
	cmp	al, 8
	seta	byte ptr [esi + (_m-L0$pb)+44]
	and	cl, 1
	mov	byte ptr [esi + (_m-L0$pb)+47], 0
	je	LBB0_22
## BB#27:
	mov	word ptr [esi + (_m-L0$pb)+12], 968
	mov	byte ptr [esi + _m-L0$pb], 0
	sub	esp, 8
	push	0
	push	968
	call	_asm2C_OUT
	add	esp, 16
	mov	dword ptr [esi + (_m-L0$pb)+8], 60
LBB0_28:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_29 Depth 2
                                        ##     Child Loop BB0_34 Depth 2
	mov	word ptr [esi + (_m-L0$pb)+12], 986
	.p2align	4, 0x90
LBB0_29:                                ##   Parent Loop BB0_28 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsx	eax, word ptr [esi + (_m-L0$pb)+12]
	sub	esp, 12
	push	eax
	call	_asm2C_IN
	add	esp, 16
	mov	byte ptr [esi + _m-L0$pb], al
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	je	LBB0_33
## BB#30:                               ##   in Loop: Header=BB0_29 Depth=2
	sub	esp, 12
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	je	LBB0_31
LBB0_33:                                ##   in Loop: Header=BB0_29 Depth=2
	movzx	eax, byte ptr [esi + _m-L0$pb]
	mov	ecx, eax
	shr	cl, 3
	mov	edx, ecx
	and	dl, 1
	xor	dl, 1
	mov	byte ptr [esi + (_m-L0$pb)+45], dl
	cmp	al, 8
	seta	byte ptr [esi + (_m-L0$pb)+44]
	and	cl, 1
	mov	byte ptr [esi + (_m-L0$pb)+47], 0
	jne	LBB0_29
	.p2align	4, 0x90
LBB0_34:                                ##   Parent Loop BB0_28 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsx	eax, word ptr [esi + (_m-L0$pb)+12]
	sub	esp, 12
	push	eax
	call	_asm2C_IN
	add	esp, 16
	mov	byte ptr [esi + _m-L0$pb], al
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	je	LBB0_38
## BB#35:                               ##   in Loop: Header=BB0_34 Depth=2
	sub	esp, 12
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	je	LBB0_36
LBB0_38:                                ##   in Loop: Header=BB0_34 Depth=2
	movzx	eax, byte ptr [esi + _m-L0$pb]
	mov	ecx, eax
	shr	cl, 3
	mov	edx, ecx
	and	dl, 1
	xor	dl, 1
	mov	byte ptr [esi + (_m-L0$pb)+45], dl
	cmp	al, 8
	seta	byte ptr [esi + (_m-L0$pb)+44]
	and	cl, 1
	mov	byte ptr [esi + (_m-L0$pb)+47], 0
	je	LBB0_34
## BB#39:                               ##   in Loop: Header=BB0_28 Depth=1
	dec	dword ptr [esi + (_m-L0$pb)+8]
	sete	byte ptr [esi + (_m-L0$pb)+45]
	jne	LBB0_28
## BB#40:
	mov	word ptr [esi + _m-L0$pb], 3
	sub	esp, 12
	push	16
	call	_asm2C_INT
	add	esp, 16
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	je	LBB0_44
## BB#41:
	sub	esp, 12
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	je	LBB0_42
LBB0_44:
	mov	dword ptr [esi + (_m-L0$pb)+20], 1
	mov	dword ptr [esi + (_m-L0$pb)+16], 2
	mov	dword ptr [esi + _m-L0$pb], 0
	mov	byte ptr [esi + (_m-L0$pb)+45], 1
	mov	byte ptr [esi + (_m-L0$pb)+47], 0
	mov	byte ptr [esi + (_m-L0$pb)+1], 76
	sub	esp, 12
	push	33
	call	_asm2C_INT
	add	esp, 16
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	je	LBB0_48
## BB#45:
	sub	esp, 12
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	jne	LBB0_48
## BB#46:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+6204]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jb	LBB0_53
## BB#47:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	133
	jmp	LBB0_6
LBB0_8:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+6204]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jae	LBB0_9
LBB0_48:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	movsd	xmm0, qword ptr [esi + (_m-L0$pb)+24] ## xmm0 = mem[0],zero
	movsd	qword ptr [esi + 4*eax + (_m-L0$pb)+6228], xmm0
	movsd	xmm0, qword ptr [esi + (_m-L0$pb)+16] ## xmm0 = mem[0],zero
	movsd	qword ptr [esi + 4*eax + (_m-L0$pb)+6220], xmm0
	movsd	xmm0, qword ptr [esi + (_m-L0$pb)+8] ## xmm0 = mem[0],zero
	movsd	qword ptr [esi + 4*eax + (_m-L0$pb)+6212], xmm0
	movsd	xmm0, qword ptr [esi + _m-L0$pb] ## xmm0 = mem[0],zero
	movsd	qword ptr [esi + 4*eax + (_m-L0$pb)+6204], xmm0
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 32
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jae	LBB0_49
## BB#50:
	mov	dword ptr [esi + (_m-L0$pb)+16], 52
	mov	word ptr [esi + (_m-L0$pb)+12], 968
	mov	byte ptr [esi + _m-L0$pb], 0
	mov	byte ptr [esi + (_m-L0$pb)+45], 1
	mov	byte ptr [esi + (_m-L0$pb)+47], 0
	sub	esp, 8
	push	0
	push	968
	call	_asm2C_OUT
	add	esp, 16
	mov	word ptr [esi + (_m-L0$pb)+12], 969
	mov	word ptr [esi + (_m-L0$pb)+8], 768
	lea	edi, [esi + _m-L0$pb]
	.p2align	4, 0x90
LBB0_51:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [esi + (_m-L0$pb)+16]
	add	eax, edi
	movzx	ecx, word ptr [esi + (_m-L0$pb)+34]
	mov	ecx, dword ptr [esi + 4*ecx + (_m-L0$pb)+5688]
	movzx	eax, byte ptr [ecx + eax]
	mov	byte ptr [esi + _m-L0$pb], al
	inc	dword ptr [esi + (_m-L0$pb)+16]
	movsx	ecx, word ptr [esi + (_m-L0$pb)+12]
	sub	esp, 8
	push	eax
	push	ecx
	call	_asm2C_OUT
	add	esp, 16
	dec	word ptr [esi + (_m-L0$pb)+8]
	sete	byte ptr [esi + (_m-L0$pb)+45]
	jne	LBB0_51
## BB#52:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	movsd	xmm0, qword ptr [esi + 4*eax + (_m-L0$pb)+6100] ## xmm0 = mem[0],zero
	movsd	qword ptr [esi + (_m-L0$pb)+24], xmm0
	movsd	xmm0, qword ptr [esi + 4*eax + (_m-L0$pb)+6092] ## xmm0 = mem[0],zero
	movsd	qword ptr [esi + (_m-L0$pb)+16], xmm0
	movsd	xmm0, qword ptr [esi + 4*eax + (_m-L0$pb)+6084] ## xmm0 = mem[0],zero
	movsd	qword ptr [esi + (_m-L0$pb)+8], xmm0
	movsd	xmm0, qword ptr [esi + 4*eax + (_m-L0$pb)+6076] ## xmm0 = mem[0],zero
	movsd	qword ptr [esi + _m-L0$pb], xmm0
	lea	ecx, [eax - 104]
	mov	dword ptr [esi + (_m-L0$pb)+6200], ecx
	lea	esi, [esi + 4*eax + (_m-L0$pb)+5788]
	mov	ecx, 18
	mov	edi, ebx
	rep movsd
	sub	esp, 8
	push	0
	push	ebx
	call	_longjmp
	add	esp, 8
LBB0_4:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+6204]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jb	LBB0_53
## BB#5:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	87
	jmp	LBB0_6
LBB0_19:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+6204]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jb	LBB0_53
## BB#20:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	101
	jmp	LBB0_6
LBB0_12:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+6204]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jb	LBB0_53
## BB#13:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	91
	jmp	LBB0_6
LBB0_24:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+6204]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jb	LBB0_53
## BB#25:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	105
	jmp	LBB0_6
LBB0_31:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+6204]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jb	LBB0_53
## BB#32:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	115
	jmp	LBB0_6
LBB0_36:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+6204]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jb	LBB0_53
## BB#37:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	119
	jmp	LBB0_6
LBB0_42:
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+6204]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+6200], eax
	cmp	eax, 4096
	jb	LBB0_53
## BB#43:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	124
	jmp	LBB0_6
LBB0_56:
	call	___stack_chk_fail
LBB0_55:
	mov	byte ptr [esi + (_m-L0$pb)+49], 0
	mov	eax, dword ptr [esi + (_m-L0$pb)+6200]
	lea	ecx, [eax - 72]
	mov	dword ptr [esi + (_m-L0$pb)+6200], ecx
	lea	esi, [esi + 4*eax + (_m-L0$pb)+5916]
	lea	eax, [ebp - 88]
	mov	ecx, 18
	mov	edi, eax
	rep movsd
	sub	esp, 8
	push	0
	push	eax
	call	_longjmp
	add	esp, 8
LBB0_49:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	136
	jmp	LBB0_6
LBB0_9:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	88
LBB0_6:
	push	ecx
	push	edx
	call	___assert_rtn

	.globl	_asm2C_INT
	.p2align	4, 0x90
_asm2C_INT:                             ## @asm2C_INT
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 1020
	call	L1$pb
L1$pb:
	pop	ebx
	mov	eax, dword ptr [ebx + L___stack_chk_guard$non_lazy_ptr-L1$pb]
	mov	dword ptr [ebp - 1020], eax ## 4-byte Spill
	mov	eax, dword ptr [eax]
	mov	dword ptr [ebp - 16], eax
	mov	al, byte ptr [ebx + _m-L1$pb]
	mov	byte ptr [ebp - 1024], al ## 1-byte Spill
	mov	si, word ptr [ebx + _m-L1$pb]
	movzx	ecx, byte ptr [ebx + (_m-L1$pb)+1]
	movzx	eax, word ptr [ebx + (_m-L1$pb)+4]
	mov	dword ptr [ebp - 1032], eax ## 4-byte Spill
	movzx	eax, word ptr [ebx + (_m-L1$pb)+8]
	mov	dword ptr [ebp - 1028], eax ## 4-byte Spill
	movzx	edi, word ptr [ebx + (_m-L1$pb)+12]
	mov	byte ptr [ebx + (_m-L1$pb)+44], 0
	mov	edx, dword ptr [ebp + 8]
	cmp	edx, 49
	je	LBB1_32
## BB#1:
	cmp	edx, 33
	je	LBB1_5
## BB#2:
	cmp	edx, 16
	jne	LBB1_4
## BB#3:
	or	esi, 16
	movzx	esi, si
	cmp	esi, 19
	je	LBB1_29
	jmp	LBB1_4
LBB1_5:
	mov	ah, cl
	add	ah, -9
	cmp	ah, 67
	ja	LBB1_32
## BB#6:
	movzx	eax, ah
Ltmp0 = LJTI1_0-L1$pb
	mov	eax, dword ptr [ebx + 4*eax + Ltmp0]
	add	eax, ebx
	jmp	eax
LBB1_7:
	mov	ecx, dword ptr [ebx + (_m-L1$pb)+12]
	lea	eax, [ebx + ecx + _m-L1$pb]
	movzx	edx, word ptr [ebx + (_m-L1$pb)+34]
	mov	edx, dword ptr [ebx + 4*edx + (_m-L1$pb)+5688]
	mov	al, byte ptr [edx + eax]
	cmp	al, 36
	je	LBB1_29
## BB#8:
	add	edx, ecx
	lea	esi, [ebx + edx + (_m-L1$pb)+1]
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	movsx	eax, al
	sub	esp, 12
	push	eax
	call	_putchar
	add	esp, 16
	movzx	eax, byte ptr [esi]
	inc	esi
	cmp	al, 36
	jne	LBB1_9
	jmp	LBB1_29
LBB1_32:
	movzx	esi, si
	cmp	esi, 8
	ja	LBB1_33
## BB#48:
Ltmp1 = LJTI1_1-L1$pb
	mov	eax, dword ptr [ebx + 4*esi + Ltmp1]
	add	eax, ebx
	jmp	eax
LBB1_37:
	mov	eax, dword ptr [ebx + (_m-L1$pb)+5684]
	mov	edx, dword ptr [ebp - 1028] ## 4-byte Reload
	lea	ecx, [eax + edx]
	cmp	ecx, 128
	jae	LBB1_38
## BB#39:
	mov	dword ptr [ebx + _m-L1$pb], eax
	add	dword ptr [ebx + (_m-L1$pb)+5684], edx
	jmp	LBB1_29
LBB1_33:
	cmp	esi, 517
	je	LBB1_29
## BB#34:
	cmp	esi, 1281
	jne	LBB1_4
## BB#35:
	mov	ecx, dword ptr [ebp - 1032] ## 4-byte Reload
	shl	ecx, 16
	add	ecx, dword ptr [ebp - 1028] ## 4-byte Folded Reload
	mov	eax, dword ptr [ebx + (_m-L1$pb)+22588]
	add	ecx, eax
	cmp	ecx, 4194304
	jae	LBB1_36
## BB#45:
	add	eax, 22592
	mov	dword ptr [ebx + (_m-L1$pb)+22588], ecx
	movzx	ecx, ax
	mov	dword ptr [ebx + (_m-L1$pb)+8], ecx
	shr	eax, 16
	mov	dword ptr [ebx + (_m-L1$pb)+4], eax
	mov	dword ptr [ebx + (_m-L1$pb)+20], 0
	mov	dword ptr [ebx + (_m-L1$pb)+16], 0
	jmp	LBB1_29
LBB1_4:
	movzx	eax, byte ptr [ebp - 1024] ## 1-byte Folded Reload
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	lea	esi, [ebx + L_.str.124-L1$pb]
	push	eax
	push	ecx
	push	edx
	push	esi
LBB1_28:
	call	_log_error
	add	esp, 16
LBB1_29:
	mov	eax, dword ptr [ebp - 1020] ## 4-byte Reload
	mov	eax, dword ptr [eax]
	cmp	eax, dword ptr [ebp - 16]
	jne	LBB1_47
## BB#30:
	add	esp, 1020
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB1_40:
	mov	eax, dword ptr [ebx + (_m-L1$pb)+5684]
	lea	ecx, [eax + 1]
	cmp	ecx, 128
	jb	LBB1_41
LBB1_38:
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	sub	esp, 12
	lea	eax, [ebx + L_.str.112-L1$pb]
	jmp	LBB1_27
LBB1_42:
	mov	edx, dword ptr [ebp - 1032] ## 4-byte Reload
	cmp	edx, dword ptr [ebx + (_m-L1$pb)+5684]
	jbe	LBB1_44
## BB#43:
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	sub	esp, 12
	lea	eax, [ebx + L_.str.117-L1$pb]
	jmp	LBB1_27
LBB1_46:
	mov	dword ptr [ebx + (_m-L1$pb)+12], 512
	jmp	LBB1_29
LBB1_10:
	mov	ecx, dword ptr [ebx + (_m-L1$pb)+4408896]
	lea	eax, [ebx + _m-L1$pb]
	add	eax, dword ptr [ebx + (_m-L1$pb)+12]
	movzx	edx, word ptr [ebx + (_m-L1$pb)+34]
	add	eax, dword ptr [ebx + 4*edx + (_m-L1$pb)+5688]
	test	ecx, ecx
	je	LBB1_12
## BB#11:
	sub	esp, 8
	lea	edx, [ebx + L_.str.98-L1$pb]
	lea	esi, [ebp - 1016]
	push	eax
	push	ecx
	push	edx
	push	1000
	push	0
	push	esi
	jmp	LBB1_13
LBB1_16:
	sub	esp, 12
	push	dword ptr [ebx + _asm2C_INT.file-L1$pb]
	call	_fclose
	add	esp, 16
	test	eax, eax
	jne	LBB1_17
LBB1_18:
	mov	dword ptr [ebx + _asm2C_INT.file-L1$pb], 0
	jmp	LBB1_29
LBB1_19:
	mov	esi, dword ptr [ebx + (_m-L1$pb)+12]
	movzx	eax, word ptr [ebx + (_m-L1$pb)+34]
	mov	edi, dword ptr [ebx + 4*eax + (_m-L1$pb)+5688]
	sub	esp, 12
	push	dword ptr [ebx + _asm2C_INT.file-L1$pb]
	call	_feof
	add	esp, 16
	xor	ecx, ecx
	test	eax, eax
	jne	LBB1_24
## BB#20:
	lea	eax, [ebx + esi + _m-L1$pb]
	add	eax, edi
	push	dword ptr [ebx + _asm2C_INT.file-L1$pb]
	mov	esi, dword ptr [ebp - 1028] ## 4-byte Reload
	push	esi
	push	1
	push	eax
	call	_fread
	add	esp, 16
	mov	ecx, eax
	cmp	ecx, esi
	jne	LBB1_21
LBB1_24:
	mov	dword ptr [ebx + _m-L1$pb], ecx
	jmp	LBB1_29
LBB1_25:
	mov	eax, dword ptr [ebp - 1028] ## 4-byte Reload
	shl	eax, 16
	or	eax, edi
	sub	esp, 4
	push	0
	push	eax
	push	dword ptr [ebx + _asm2C_INT.file-L1$pb]
	call	_fseek
	add	esp, 16
	test	eax, eax
	je	LBB1_29
## BB#26:
	sub	esp, 12
	lea	eax, [ebx + L_.str.110-L1$pb]
	jmp	LBB1_27
LBB1_31:
	mov	byte ptr [ebx + (_m-L1$pb)+49], 1
	mov	byte ptr [ebx + (_m-L1$pb)+50], 1
	mov	al, byte ptr [ebp - 1024] ## 1-byte Reload
	mov	byte ptr [ebx + (_m-L1$pb)+51], al
	jmp	LBB1_29
LBB1_41:
	mov	dword ptr [ebx + 4*eax + (_m-L1$pb)+5688], 4280896
	mov	eax, dword ptr [ebx + (_m-L1$pb)+5684]
	mov	dword ptr [ebx + _m-L1$pb], eax
	inc	eax
	mov	dword ptr [ebx + (_m-L1$pb)+5684], eax
	jmp	LBB1_29
LBB1_44:
	movzx	eax, word ptr [ebx + (_m-L1$pb)+12]
	mov	ecx, dword ptr [ebx + (_m-L1$pb)+8]
	shl	ecx, 16
	or	ecx, eax
	mov	dword ptr [ebx + 4*edx + (_m-L1$pb)+5688], ecx
	jmp	LBB1_29
LBB1_12:
	sub	esp, 12
	lea	ecx, [ebx + L_.str.53-L1$pb]
	lea	edx, [ebp - 1016]
	push	eax
	push	ecx
	push	1000
	push	0
	push	edx
LBB1_13:
	call	___sprintf_chk
	add	esp, 32
	sub	esp, 8
	lea	eax, [ebx + L_.str.99-L1$pb]
	lea	esi, [ebp - 1016]
	push	eax
	push	esi
	call	_fopen$UNIX2003
	add	esp, 16
	mov	dword ptr [ebx + _asm2C_INT.file-L1$pb], eax
	test	eax, eax
	je	LBB1_15
## BB#14:
	mov	dword ptr [ebx + _m-L1$pb], 1
	jmp	LBB1_29
LBB1_15:
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	sub	esp, 8
	lea	eax, [ebx + L_.str.101-L1$pb]
	push	esi
LBB1_27:
	push	eax
	jmp	LBB1_28
LBB1_17:
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	sub	esp, 12
	lea	eax, [ebx + L_.str.103-L1$pb]
	push	eax
	call	_perror
	add	esp, 12
	lea	eax, [ebx + L_.str.104-L1$pb]
	push	dword ptr [ebx + _asm2C_INT.file-L1$pb]
	push	dword ptr [ebp - 1032]  ## 4-byte Folded Reload
	push	eax
	call	_log_error
	add	esp, 16
	jmp	LBB1_18
LBB1_21:
	sub	esp, 12
	lea	eax, [ebx + L_.str.103-L1$pb]
	push	eax
	mov	edi, ecx
	call	_perror
	add	esp, 12
	lea	eax, [ebx + L_.str.106-L1$pb]
	mov	dword ptr [ebp - 1024], edi ## 4-byte Spill
	push	edi
	push	esi
	push	eax
	call	_log_error
	add	esp, 4
	push	dword ptr [ebx + _asm2C_INT.file-L1$pb]
	call	_feof
	add	esp, 16
	test	eax, eax
	je	LBB1_23
## BB#22:
	mov	ecx, dword ptr [ebp - 1024] ## 4-byte Reload
	mov	dword ptr [ebx + _m-L1$pb], ecx
	jmp	LBB1_29
LBB1_23:
	lea	eax, [ebx + L_.str.107-L1$pb]
	push	dword ptr [ebx + _asm2C_INT.file-L1$pb]
	mov	edi, dword ptr [ebp - 1024] ## 4-byte Reload
	push	edi
	push	esi
	push	eax
	call	_log_error
	mov	ecx, edi
	add	esp, 16
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	jmp	LBB1_24
LBB1_47:
	call	___stack_chk_fail
LBB1_36:
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	sub	esp, 12
	lea	eax, [ebx + L_.str.121-L1$pb]
	push	eax
	call	_log_error
	add	esp, 4
	push	1
	call	_exit
	add	esp, 12
	.p2align	2, 0x90
	.data_region jt32
L1_0_set_7 = LBB1_7-L1$pb
L1_0_set_32 = LBB1_32-L1$pb
L1_0_set_46 = LBB1_46-L1$pb
L1_0_set_10 = LBB1_10-L1$pb
L1_0_set_16 = LBB1_16-L1$pb
L1_0_set_19 = LBB1_19-L1$pb
L1_0_set_25 = LBB1_25-L1$pb
L1_0_set_31 = LBB1_31-L1$pb
LJTI1_0:
	.long	L1_0_set_7
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_46
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_10
	.long	L1_0_set_16
	.long	L1_0_set_19
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_25
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_32
	.long	L1_0_set_31
L1_1_set_37 = LBB1_37-L1$pb
L1_1_set_4 = LBB1_4-L1$pb
L1_1_set_40 = LBB1_40-L1$pb
L1_1_set_42 = LBB1_42-L1$pb
L1_1_set_29 = LBB1_29-L1$pb
LJTI1_1:
	.long	L1_1_set_37
	.long	L1_1_set_4
	.long	L1_1_set_40
	.long	L1_1_set_4
	.long	L1_1_set_4
	.long	L1_1_set_4
	.long	L1_1_set_4
	.long	L1_1_set_42
	.long	L1_1_set_29
	.end_data_region

	.globl	_asm2C_IN
	.p2align	4, 0x90
_asm2C_IN:                              ## @asm2C_IN
## BB#0:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	call	L2$pb
L2$pb:
	pop	eax
	movzx	ecx, word ptr [ebp + 8]
	cmp	ecx, 986
	jne	LBB2_4
## BB#1:
	mov	cl, byte ptr [eax + _asm2C_IN.vblTick-L2$pb]
	test	cl, cl
	je	LBB2_2
## BB#3:
	mov	byte ptr [eax + _asm2C_IN.vblTick-L2$pb], 0
	mov	byte ptr [eax + (_m-L2$pb)+49], 1
	mov	al, 8
	jmp	LBB2_6
LBB2_4:
	movsx	ecx, cx
	sub	esp, 8
	lea	eax, [eax + L_.str.91-L2$pb]
	push	ecx
	push	eax
	call	_log_error
	add	esp, 16
	jmp	LBB2_5
LBB2_2:
	mov	byte ptr [eax + _asm2C_IN.vblTick-L2$pb], 1
LBB2_5:
	xor	eax, eax
LBB2_6:
	movsx	eax, al
	add	esp, 8
	pop	ebp
	ret

	.globl	_asm2C_OUT
	.p2align	4, 0x90
_asm2C_OUT:                             ## @asm2C_OUT
## BB#0:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	call	L3$pb
L3$pb:
	pop	eax
	mov	ecx, dword ptr [ebp + 12]
	movsx	edx, word ptr [ebp + 8]
	cmp	edx, 969
	je	LBB3_3
## BB#1:
	cmp	edx, 968
	jne	LBB3_8
## BB#2:
	mov	dword ptr [eax + _asm2C_OUT.indexPalette-L3$pb], ecx
	jmp	LBB3_5
LBB3_3:
	mov	edx, dword ptr [eax + _asm2C_OUT.indexPalette-L3$pb]
	cmp	edx, 767
	jg	LBB3_6
## BB#4:
	mov	byte ptr [eax + edx + (_m-L3$pb)+4916], cl
	inc	dword ptr [eax + _asm2C_OUT.indexPalette-L3$pb]
LBB3_5:
	add	esp, 8
	pop	ebp
	ret
LBB3_8:
	sub	esp, 4
	lea	eax, [eax + L_.str.90-L3$pb]
	push	ecx
	jmp	LBB3_7
LBB3_6:
	sub	esp, 8
	lea	eax, [eax + L_.str.89-L3$pb]
LBB3_7:
	push	edx
	push	eax
	call	_log_error
	add	esp, 24
	pop	ebp
	ret

	.globl	_asm2C_printOffsets
	.p2align	4, 0x90
_asm2C_printOffsets:                    ## @asm2C_printOffsets
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 12
	call	L4$pb
L4$pb:
	pop	edi
	mov	ebx, dword ptr [ebp + 8]
	sub	esp, 8
	lea	eax, [edi + L_.str.3-L4$pb]
	lea	ecx, [edi + L_.str.2-L4$pb]
	push	eax
	push	ecx
	call	_fopen$UNIX2003
	add	esp, 16
	mov	esi, eax
	mov	eax, 52
	sub	eax, ebx
	lea	ecx, [edi + L_.str.4-L4$pb]
	push	52
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 68
	sub	eax, ebx
	lea	ecx, [edi + L_.str.5-L4$pb]
	push	68
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 84
	sub	eax, ebx
	lea	ecx, [edi + L_.str.6-L4$pb]
	push	84
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 100
	sub	eax, ebx
	lea	ecx, [edi + L_.str.7-L4$pb]
	push	100
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 116
	sub	eax, ebx
	lea	ecx, [edi + L_.str.8-L4$pb]
	push	116
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 132
	sub	eax, ebx
	lea	ecx, [edi + L_.str.9-L4$pb]
	push	132
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 148
	sub	eax, ebx
	lea	ecx, [edi + L_.str.10-L4$pb]
	push	148
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 164
	sub	eax, ebx
	lea	ecx, [edi + L_.str.11-L4$pb]
	push	164
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 180
	sub	eax, ebx
	lea	ecx, [edi + L_.str.12-L4$pb]
	push	180
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 196
	sub	eax, ebx
	lea	ecx, [edi + L_.str.13-L4$pb]
	push	196
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 212
	sub	eax, ebx
	lea	ecx, [edi + L_.str.14-L4$pb]
	push	212
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 228
	sub	eax, ebx
	lea	ecx, [edi + L_.str.15-L4$pb]
	push	228
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 244
	sub	eax, ebx
	lea	ecx, [edi + L_.str.16-L4$pb]
	push	244
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 260
	sub	eax, ebx
	lea	ecx, [edi + L_.str.17-L4$pb]
	push	260
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 276
	sub	eax, ebx
	lea	ecx, [edi + L_.str.18-L4$pb]
	push	276
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 292
	sub	eax, ebx
	lea	ecx, [edi + L_.str.19-L4$pb]
	push	292
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 308
	sub	eax, ebx
	lea	ecx, [edi + L_.str.20-L4$pb]
	push	308
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 324
	sub	eax, ebx
	lea	ecx, [edi + L_.str.21-L4$pb]
	push	324
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 340
	sub	eax, ebx
	lea	ecx, [edi + L_.str.22-L4$pb]
	push	340
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 356
	sub	eax, ebx
	lea	ecx, [edi + L_.str.23-L4$pb]
	push	356
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 372
	sub	eax, ebx
	lea	ecx, [edi + L_.str.24-L4$pb]
	push	372
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 388
	sub	eax, ebx
	lea	ecx, [edi + L_.str.25-L4$pb]
	push	388
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 404
	sub	eax, ebx
	lea	ecx, [edi + L_.str.26-L4$pb]
	push	404
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 420
	sub	eax, ebx
	lea	ecx, [edi + L_.str.27-L4$pb]
	push	420
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 436
	sub	eax, ebx
	lea	ecx, [edi + L_.str.28-L4$pb]
	push	436
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 452
	sub	eax, ebx
	lea	ecx, [edi + L_.str.29-L4$pb]
	push	452
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 468
	sub	eax, ebx
	lea	ecx, [edi + L_.str.30-L4$pb]
	push	468
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 484
	sub	eax, ebx
	lea	ecx, [edi + L_.str.31-L4$pb]
	push	484
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 500
	sub	eax, ebx
	lea	ecx, [edi + L_.str.32-L4$pb]
	push	500
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 516
	sub	eax, ebx
	lea	ecx, [edi + L_.str.33-L4$pb]
	push	516
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 532
	sub	eax, ebx
	lea	ecx, [edi + L_.str.34-L4$pb]
	push	532
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 548
	sub	eax, ebx
	lea	ecx, [edi + L_.str.35-L4$pb]
	push	548
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 564
	sub	eax, ebx
	lea	ecx, [edi + L_.str.36-L4$pb]
	push	564
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 580
	sub	eax, ebx
	lea	ecx, [edi + L_.str.37-L4$pb]
	push	580
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 596
	sub	eax, ebx
	lea	ecx, [edi + L_.str.38-L4$pb]
	push	596
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 612
	sub	eax, ebx
	lea	ecx, [edi + L_.str.39-L4$pb]
	push	612
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 628
	sub	eax, ebx
	lea	ecx, [edi + L_.str.40-L4$pb]
	push	628
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 644
	sub	eax, ebx
	lea	ecx, [edi + L_.str.41-L4$pb]
	push	644
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 660
	sub	eax, ebx
	lea	ecx, [edi + L_.str.42-L4$pb]
	push	660
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 676
	sub	eax, ebx
	lea	ecx, [edi + L_.str.43-L4$pb]
	push	676
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 692
	sub	eax, ebx
	lea	ecx, [edi + L_.str.44-L4$pb]
	push	692
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 708
	sub	eax, ebx
	lea	ecx, [edi + L_.str.45-L4$pb]
	push	708
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 724
	sub	eax, ebx
	lea	ecx, [edi + L_.str.46-L4$pb]
	push	724
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 740
	sub	eax, ebx
	lea	ecx, [edi + L_.str.47-L4$pb]
	push	740
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 756
	sub	eax, ebx
	lea	ecx, [edi + L_.str.48-L4$pb]
	push	756
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 772
	sub	eax, ebx
	lea	ecx, [edi + L_.str.49-L4$pb]
	push	772
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 788
	sub	eax, ebx
	lea	ecx, [edi + L_.str.50-L4$pb]
	push	788
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 804
	sub	eax, ebx
	lea	ecx, [edi + L_.str.51-L4$pb]
	push	804
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 820
	sub	eax, ebx
	lea	ecx, [edi + L_.str.52-L4$pb]
	push	820
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 4
	push	esi
	call	_fclose
	add	esp, 28
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret

	.globl	_log_error
	.p2align	4, 0x90
_log_error:                             ## @log_error
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 1036
	call	L5$pb
L5$pb:
	pop	edi
	mov	eax, dword ptr [ebp + 8]
	mov	esi, dword ptr [edi + L___stack_chk_guard$non_lazy_ptr-L5$pb]
	mov	ecx, dword ptr [esi]
	mov	dword ptr [ebp - 16], ecx
	lea	ecx, [ebp + 12]
	mov	dword ptr [ebp - 1044], ecx
	sub	esp, 12
	lea	ebx, [ebp - 1040]
	push	ecx
	push	eax
	push	1024
	push	0
	push	ebx
	call	___vsprintf_chk
	add	esp, 32
	mov	eax, dword ptr [edi + _logDebug-L5$pb]
	sub	esp, 8
	test	eax, eax
	je	LBB5_2
## BB#1:
	push	eax
	push	ebx
	call	_fputs$UNIX2003
	jmp	LBB5_3
LBB5_2:
	lea	eax, [edi + L_.str.53-L5$pb]
	push	ebx
	push	eax
	call	_printf
LBB5_3:
	add	esp, 16
	mov	eax, dword ptr [esi]
	cmp	eax, dword ptr [ebp - 16]
	jne	LBB5_5
## BB#4:
	add	esp, 1036
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB5_5:
	call	___stack_chk_fail

	.globl	_log_debug
	.p2align	4, 0x90
_log_debug:                             ## @log_debug
## BB#0:
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret

	.globl	_log_info
	.p2align	4, 0x90
_log_info:                              ## @log_info
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 1036
	call	L7$pb
L7$pb:
	pop	edi
	mov	eax, dword ptr [ebp + 8]
	mov	esi, dword ptr [edi + L___stack_chk_guard$non_lazy_ptr-L7$pb]
	mov	ecx, dword ptr [esi]
	mov	dword ptr [ebp - 16], ecx
	lea	ecx, [ebp + 12]
	mov	dword ptr [ebp - 1044], ecx
	sub	esp, 12
	lea	ebx, [ebp - 1040]
	push	ecx
	push	eax
	push	1024
	push	0
	push	ebx
	call	___vsprintf_chk
	add	esp, 32
	mov	eax, dword ptr [edi + _logDebug-L7$pb]
	sub	esp, 8
	test	eax, eax
	je	LBB7_2
## BB#1:
	push	eax
	push	ebx
	call	_fputs$UNIX2003
	jmp	LBB7_3
LBB7_2:
	lea	eax, [edi + L_.str.53-L7$pb]
	push	ebx
	push	eax
	call	_printf
LBB7_3:
	add	esp, 16
	mov	eax, dword ptr [esi]
	cmp	eax, dword ptr [ebp - 16]
	jne	LBB7_5
## BB#4:
	add	esp, 1036
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB7_5:
	call	___stack_chk_fail

	.globl	_log_debug2
	.p2align	4, 0x90
_log_debug2:                            ## @log_debug2
## BB#0:
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret

	.globl	_checkIfVgaRamEmpty
	.p2align	4, 0x90
_checkIfVgaRamEmpty:                    ## @checkIfVgaRamEmpty
## BB#0:
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret

	.globl	_stackDump
	.p2align	4, 0x90
_stackDump:                             ## @stackDump
## BB#0:
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret

	.globl	_hexDump
	.p2align	4, 0x90
_hexDump:                               ## @hexDump
## BB#0:
	push	ebp
	mov	ebp, esp
	mov	eax, dword ptr [ebp + 12]
	test	eax, eax
	jle	LBB11_2
	.p2align	4, 0x90
LBB11_1:                                ## =>This Inner Loop Header: Depth=1
	mov	ecx, eax
	inc	ecx
	test	al, 15
	mov	eax, ecx
	jne	LBB11_1
LBB11_2:
	pop	ebp
	ret

	.globl	_is_little_endian_real_check
	.p2align	4, 0x90
_is_little_endian_real_check:           ## @is_little_endian_real_check
## BB#0:
	push	ebp
	mov	ebp, esp
	mov	al, 1
	pop	ebp
	ret

	.globl	_is_little_endian
	.p2align	4, 0x90
_is_little_endian:                      ## @is_little_endian
## BB#0:
	push	ebp
	mov	ebp, esp
	mov	al, 1
	pop	ebp
	ret

	.globl	_asm2C_init
	.p2align	4, 0x90
_asm2C_init:                            ## @asm2C_init
## BB#0:
	push	ebp
	mov	ebp, esp
	call	L14$pb
L14$pb:
	pop	eax
	mov	byte ptr [eax + (_m-L14$pb)+48], 1
	pop	ebp
	ret

	.section	__DATA,__data
	.globl	_m                      ## @m
	.p2align	2
_m:
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	2
	.space	2
	.space	2
	.space	2
	.space	2
	.space	2
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.ascii	"\000\000\000\000\000\025\000\000*\000\000?\t\000\000\t"
	.asciz	"\000\025\t\000*\t\000?\022\000\000\022\000\025\022"
	.ascii	"*\022\000?\033\000\000\033\000\025\033\000*\033\000?"
	.ascii	"$\000\000$\000\025$\000*$\000?-\000\000-"
	.asciz	"\000\025-\000*-\000?6\000\0006\000\0256"
	.ascii	"*6\000??\000\000?\000\025?\000*?\000?"
	.ascii	"\000\t\000\000\t\025\000\t*\000\t?\t\t\000\t"
	.ascii	"\t\025\t\t*\t\t?\022\t\000\022\t\025\022\t"
	.ascii	"*\022\t?\033\t\000\033\t\025\033\t*\033\t?"
	.ascii	"$\t\000$\t\025$\t*$\t?-\t\000-"
	.ascii	"\t\025-\t*-\t?6\t\0006\t\0256\t"
	.ascii	"*6\t??\t\000?\t\025?\t*?\t?"
	.ascii	"\000\022\000\000\022\025\000\022*\000\022?\t\022\000\t"
	.ascii	"\022\025\t\022*\t\022?\022\022\000\022\022\025\022\022"
	.ascii	"*\022\022?\033\022\000\033\022\025\033\022*\033\022?"
	.ascii	"$\022\000$\022\025$\022*$\022?-\022\000-"
	.ascii	"\022\025-\022*-\022?6\022\0006\022\0256\022"
	.ascii	"*6\022??\022\000?\022\025?\022*?\022?"
	.ascii	"\000\033\000\000\033\025\000\033*\000\033?\t\033\000\t"
	.ascii	"\033\025\t\033*\t\033?\022\033\000\022\033\025\022\033"
	.ascii	"*\022\033?\033\033\000\033\033\025\033\033*\033\033?"
	.ascii	"$\033\000$\033\025$\033*$\033?-\033\000-"
	.ascii	"\033\025-\033*-\033?6\033\0006\033\0256\033"
	.ascii	"*6\033??\033\000?\033\025?\033*?\033?"
	.ascii	"\000$\000\000$\025\000$*\000$?\t$\000\t"
	.ascii	"$\025\t$*\t$?\022$\000\022$\025\022$"
	.ascii	"*\022$?\033$\000\033$\025\033$*\033$?"
	.ascii	"$$\000$$\025$$*$$?-$\000-"
	.ascii	"$\025-$*-$?6$\0006$\0256$"
	.ascii	"*6$??$\000?$\025?$*?$?"
	.ascii	"\000-\000\000-\025\000-*\000-?\t-\000\t"
	.ascii	"-\025\t-*\t-?\022-\000\022-\025\022-"
	.ascii	"*\022-?\033-\000\033-\025\033-*\033-?"
	.ascii	"$-\000$-\025$-*$-?--\000-"
	.ascii	"-\025--*--?6-\0006-\0256-"
	.ascii	"*6-??-\000?-\025?-*?-?"
	.ascii	"\0006\000\0006\025\0006*\0006?\t6\000\t"
	.ascii	"6\025\t6*\t6?\0226\000\0226\025\0226"
	.ascii	"*\0226?\0336\000\0336\025\0336*\0336?"
	.ascii	"$6\000$6\025$6*$6?-6\000-"
	.ascii	"6\025-6*-6?66\00066\02566"
	.ascii	"*66??6\000?6\025?6*?6?"
	.ascii	"\000?\000\000?\025\000?*\000??\t?\000\t"
	.ascii	"?\025\t?*\t??\022?\000\022?\025\022?"
	.ascii	"*\022??\033?\000\033?\025\033?*\033??"
	.ascii	"$?\000$?\025$?*$??-?\000-"
	.ascii	"?\025-?*-??6?\0006?\0256?"
	.ascii	"*6????\000??\025??*???"
	.space	4096
	.space	768
	.long	1                       ## 0x1
	.space	512
	.long	0                       ## 0x0
	.space	16384
	.long	0                       ## 0x0
	.space	4194304
	.space	64000
	.space	64000
	.space	64000
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L___func__.program:                     ## @__func__.program
	.asciz	"program"

L_.str:                                 ## @.str
	.asciz	"vbl.c"

L_.str.1:                               ## @.str.1
	.asciz	"m.stackPointer<STACK_SIZE"

L_.str.2:                               ## @.str.2
	.asciz	"./memoryMap.log"

L_.str.3:                               ## @.str.3
	.asciz	"w"

L_.str.4:                               ## @.str.4
	.asciz	"xox %x (from beg RW) %x:pal_jeu\n"

L_.str.5:                               ## @.str.5
	.asciz	"xox %x (from beg RW) %x:dummy1\n"

L_.str.6:                               ## @.str.6
	.asciz	"xox %x (from beg RW) %x:dummy2\n"

L_.str.7:                               ## @.str.7
	.asciz	"xox %x (from beg RW) %x:dummy3\n"

L_.str.8:                               ## @.str.8
	.asciz	"xox %x (from beg RW) %x:dummy4\n"

L_.str.9:                               ## @.str.9
	.asciz	"xox %x (from beg RW) %x:dummy5\n"

L_.str.10:                              ## @.str.10
	.asciz	"xox %x (from beg RW) %x:dummy6\n"

L_.str.11:                              ## @.str.11
	.asciz	"xox %x (from beg RW) %x:dummy7\n"

L_.str.12:                              ## @.str.12
	.asciz	"xox %x (from beg RW) %x:dummy8\n"

L_.str.13:                              ## @.str.13
	.asciz	"xox %x (from beg RW) %x:dummy9\n"

L_.str.14:                              ## @.str.14
	.asciz	"xox %x (from beg RW) %x:dummy10\n"

L_.str.15:                              ## @.str.15
	.asciz	"xox %x (from beg RW) %x:dummy11\n"

L_.str.16:                              ## @.str.16
	.asciz	"xox %x (from beg RW) %x:dummy12\n"

L_.str.17:                              ## @.str.17
	.asciz	"xox %x (from beg RW) %x:dummy13\n"

L_.str.18:                              ## @.str.18
	.asciz	"xox %x (from beg RW) %x:dummy14\n"

L_.str.19:                              ## @.str.19
	.asciz	"xox %x (from beg RW) %x:dummy15\n"

L_.str.20:                              ## @.str.20
	.asciz	"xox %x (from beg RW) %x:dummy16\n"

L_.str.21:                              ## @.str.21
	.asciz	"xox %x (from beg RW) %x:dummy17\n"

L_.str.22:                              ## @.str.22
	.asciz	"xox %x (from beg RW) %x:dummy18\n"

L_.str.23:                              ## @.str.23
	.asciz	"xox %x (from beg RW) %x:dummy19\n"

L_.str.24:                              ## @.str.24
	.asciz	"xox %x (from beg RW) %x:dummy20\n"

L_.str.25:                              ## @.str.25
	.asciz	"xox %x (from beg RW) %x:dummy21\n"

L_.str.26:                              ## @.str.26
	.asciz	"xox %x (from beg RW) %x:dummy22\n"

L_.str.27:                              ## @.str.27
	.asciz	"xox %x (from beg RW) %x:dummy23\n"

L_.str.28:                              ## @.str.28
	.asciz	"xox %x (from beg RW) %x:dummy24\n"

L_.str.29:                              ## @.str.29
	.asciz	"xox %x (from beg RW) %x:dummy25\n"

L_.str.30:                              ## @.str.30
	.asciz	"xox %x (from beg RW) %x:dummy26\n"

L_.str.31:                              ## @.str.31
	.asciz	"xox %x (from beg RW) %x:dummy27\n"

L_.str.32:                              ## @.str.32
	.asciz	"xox %x (from beg RW) %x:dummy28\n"

L_.str.33:                              ## @.str.33
	.asciz	"xox %x (from beg RW) %x:dummy29\n"

L_.str.34:                              ## @.str.34
	.asciz	"xox %x (from beg RW) %x:dummy30\n"

L_.str.35:                              ## @.str.35
	.asciz	"xox %x (from beg RW) %x:dummy31\n"

L_.str.36:                              ## @.str.36
	.asciz	"xox %x (from beg RW) %x:dummy32\n"

L_.str.37:                              ## @.str.37
	.asciz	"xox %x (from beg RW) %x:dummy33\n"

L_.str.38:                              ## @.str.38
	.asciz	"xox %x (from beg RW) %x:dummy34\n"

L_.str.39:                              ## @.str.39
	.asciz	"xox %x (from beg RW) %x:dummy35\n"

L_.str.40:                              ## @.str.40
	.asciz	"xox %x (from beg RW) %x:dummy36\n"

L_.str.41:                              ## @.str.41
	.asciz	"xox %x (from beg RW) %x:dummy37\n"

L_.str.42:                              ## @.str.42
	.asciz	"xox %x (from beg RW) %x:dummy38\n"

L_.str.43:                              ## @.str.43
	.asciz	"xox %x (from beg RW) %x:dummy39\n"

L_.str.44:                              ## @.str.44
	.asciz	"xox %x (from beg RW) %x:dummy40\n"

L_.str.45:                              ## @.str.45
	.asciz	"xox %x (from beg RW) %x:dummy41\n"

L_.str.46:                              ## @.str.46
	.asciz	"xox %x (from beg RW) %x:dummy42\n"

L_.str.47:                              ## @.str.47
	.asciz	"xox %x (from beg RW) %x:dummy43\n"

L_.str.48:                              ## @.str.48
	.asciz	"xox %x (from beg RW) %x:dummy44\n"

L_.str.49:                              ## @.str.49
	.asciz	"xox %x (from beg RW) %x:dummy45\n"

L_.str.50:                              ## @.str.50
	.asciz	"xox %x (from beg RW) %x:dummy46\n"

L_.str.51:                              ## @.str.51
	.asciz	"xox %x (from beg RW) %x:dummy47\n"

L_.str.52:                              ## @.str.52
	.asciz	"xox %x (from beg RW) %x:dummy48\n"

	.globl	_logDebug               ## @logDebug
.zerofill __DATA,__common,_logDebug,4,2
L_.str.53:                              ## @.str.53
	.asciz	"%s"

L_.str.54:                              ## @.str.54
	.asciz	"vgaram_empty : %s\n"

L_.str.55:                              ## @.str.55
	.asciz	"true"

L_.str.56:                              ## @.str.56
	.asciz	"false"

L_.str.57:                              ## @.str.57
	.asciz	"is_little_endian()=%d\n"

L_.str.58:                              ## @.str.58
	.asciz	"sizeof(dd)=%zu\n"

L_.str.59:                              ## @.str.59
	.asciz	"sizeof(dd *)=%zu\n"

L_.str.60:                              ## @.str.60
	.asciz	"sizeof(dw)=%zu\n"

L_.str.61:                              ## @.str.61
	.asciz	"sizeof(db)=%zu\n"

L_.str.62:                              ## @.str.62
	.asciz	"sizeof(mem)=%zu\n"

L_.str.63:                              ## @.str.63
	.asciz	"eax: %x\n"

L_.str.64:                              ## @.str.64
	.asciz	"ebx: %x\n"

L_.str.65:                              ## @.str.65
	.asciz	"ecx: %x\n"

L_.str.66:                              ## @.str.66
	.asciz	"edx: %x\n"

L_.str.67:                              ## @.str.67
	.asciz	"ebp: %x\n"

L_.str.68:                              ## @.str.68
	.asciz	"cs: %d -> %p\n"

L_.str.69:                              ## @.str.69
	.asciz	"ds: %d -> %p\n"

L_.str.70:                              ## @.str.70
	.asciz	"esi: %x\n"

L_.str.71:                              ## @.str.71
	.asciz	"ds:esi %p\n"

L_.str.72:                              ## @.str.72
	.asciz	"es: %d -> %p\n"

L_.str.73:                              ## @.str.73
	.asciz	"edi: %x\n"

L_.str.74:                              ## @.str.74
	.asciz	"es:edi %p\n"

L_.str.75:                              ## @.str.75
	.asciz	"fs: %d -> %p\n"

L_.str.76:                              ## @.str.76
	.asciz	"gs: %d -> %p\n"

L_.str.77:                              ## @.str.77
	.asciz	"adress heap: %p\n"

L_.str.78:                              ## @.str.78
	.asciz	"adress vgaRam: %p\n"

L_.str.79:                              ## @.str.79
	.asciz	"first pixels vgaRam: %x\n"

L_.str.80:                              ## @.str.80
	.asciz	"flags: ZF = %d\n"

L_.str.81:                              ## @.str.81
	.asciz	"top stack=%d\n"

L_.str.82:                              ## @.str.82
	.asciz	"hexDump %p:\n"

L_.str.83:                              ## @.str.83
	.asciz	"  ZERO LENGTH\n"

L_.str.84:                              ## @.str.84
	.asciz	"  NEGATIVE LENGTH: %i\n"

L_.str.85:                              ## @.str.85
	.asciz	"  %s\n"

L_.str.86:                              ## @.str.86
	.asciz	"  %04x "

L_.str.87:                              ## @.str.87
	.asciz	" %02x"

L_.str.88:                              ## @.str.88
	.asciz	"   "

.zerofill __DATA,__bss,_asm2C_OUT.indexPalette,4,2 ## @asm2C_OUT.indexPalette
L_.str.89:                              ## @.str.89
	.asciz	"error: indexPalette>767 %d\n"

L_.str.90:                              ## @.str.90
	.asciz	"unknown OUT %d,%d\n"

.zerofill __DATA,__bss,_asm2C_IN.vblTick,1,0 ## @asm2C_IN.vblTick
L_.str.91:                              ## @.str.91
	.asciz	"Unknown IN %d\n"

L_.str.93:                              ## @.str.93
	.asciz	"asm2C_init is_little_endian:%d\n"

.zerofill __DATA,__bss,_asm2C_INT.file,4,2 ## @asm2C_INT.file
L_.str.94:                              ## @.str.94
	.asciz	"asm2C_INT ah=%x al=%x ax=%x bx=%x cx=%x dx=%x\n"

L_.str.95:                              ## @.str.95
	.asciz	"Switch to text mode\n"

L_.str.96:                              ## @.str.96
	.asciz	"Switch to VGA\n"

L_.str.97:                              ## @.str.97
	.asciz	"%c"

L_.str.98:                              ## @.str.98
	.asciz	"%s/%s"

L_.str.99:                              ## @.str.99
	.asciz	"rb"

L_.str.100:                             ## @.str.100
	.asciz	"Opening file %s -> %p\n"

L_.str.101:                             ## @.str.101
	.asciz	"Error opening file %s\n"

L_.str.102:                             ## @.str.102
	.asciz	"Closing file. bx:%d\n"

L_.str.103:                             ## @.str.103
	.asciz	"Error"

L_.str.104:                             ## @.str.104
	.asciz	"Error closing file ? bx:%d %p\n"

L_.str.105:                             ## @.str.105
	.asciz	"feof(file)\n"

L_.str.106:                             ## @.str.106
	.asciz	"r!=cx cx:%d R:%zu \n"

L_.str.107:                             ## @.str.107
	.asciz	"Error reading ? %d %zu %p\n"

L_.str.108:                             ## @.str.108
	.asciz	"Reading OK %p\n"

L_.str.109:                             ## @.str.109
	.asciz	"Seeking to offset %ld %d\n"

L_.str.110:                             ## @.str.110
	.asciz	"Error seeking\n"

L_.str.111:                             ## @.str.111
	.asciz	"Function 0000h - Allocate %d Descriptors\n"

L_.str.112:                             ## @.str.112
	.asciz	"Not enough free selectors (increase NB_SELECTORS)\n"

L_.str.113:                             ## @.str.113
	.asciz	"Return %x\n"

L_.str.114:                             ## @.str.114
	.asciz	"Function 0002h - Converts a real mode segment into a protected mode descriptor real mode segment: %d\n"

L_.str.115:                             ## @.str.115
	.asciz	"Returns new selector: eax: %d\n"

L_.str.116:                             ## @.str.116
	.asciz	"Function 0007h - Set Segment Base Address: ebx: %x, edx:%x ecx:%x\n"

L_.str.117:                             ## @.str.117
	.asciz	"Error: selector number doesnt exist\n"

L_.str.118:                             ## @.str.118
	.asciz	"Address for selector %d: %x\n"

L_.str.119:                             ## @.str.119
	.asciz	"Function 0008h - Set Segment Limit for selector %d (Ignored)\n"

L_.str.120:                             ## @.str.120
	.asciz	"Function 0501h - Allocate Memory Block: %d bytes\n"

L_.str.121:                             ## @.str.121
	.asciz	"Not enough memory (increase HEAP_SIZE)\n"

L_.str.122:                             ## @.str.122
	.asciz	"New top of heap: %x\n"

L_.str.123:                             ## @.str.123
	.asciz	"Return %x ebx:ecx %x:%x\n"

L_.str.124:                             ## @.str.124
	.asciz	"Error DOSInt 0x%x ah:0x%x al:0x%x: not supported.\n"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
