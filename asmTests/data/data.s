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
	sub	esp, 76
	call	L0$pb
L0$pb:
	pop	esi
	mov	edi, dword ptr [esi + L___stack_chk_guard$non_lazy_ptr-L0$pb]
	mov	eax, dword ptr [edi]
	mov	dword ptr [ebp - 16], eax
	cmp	byte ptr [esi + (_m-L0$pb)+50], 0
	jne	LBB0_28
## BB#1:
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	jne	LBB0_30
## BB#2:
	mov	dword ptr [esi + (_m-L0$pb)+4], 52
	mov	byte ptr [esi + (_m-L0$pb)+44], 1
	mov	byte ptr [esi + (_m-L0$pb)+47], 0
	mov	dword ptr [esi + _m-L0$pb], 86
	mov	byte ptr [esi + (_m-L0$pb)+45], 0
	sub	esp, 12
	lea	ebx, [ebp - 88]
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	je	LBB0_3
## BB#6:
	mov	dword ptr [esi + _m-L0$pb], -13
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	cmp	dword ptr [esi + eax + (_m-L0$pb)+56], -13
	sete	byte ptr [esi + (_m-L0$pb)+45]
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	cmp	dword ptr [esi + eax + (_m-L0$pb)+56], -13
	setb	al
	mov	byte ptr [esi + (_m-L0$pb)+44], al
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	mov	eax, dword ptr [esi + eax + (_m-L0$pb)+56]
	add	eax, 13
	shr	eax, 31
	mov	byte ptr [esi + (_m-L0$pb)+47], al
	cmp	byte ptr [esi + (_m-L0$pb)+45], 0
	je	LBB0_13
## BB#7:
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	inc	dword ptr [esi + eax + (_m-L0$pb)+56]
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	cmp	dword ptr [esi + eax + (_m-L0$pb)+56], -12
	sete	byte ptr [esi + (_m-L0$pb)+45]
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	cmp	dword ptr [esi + eax + (_m-L0$pb)+56], -12
	setb	al
	mov	byte ptr [esi + (_m-L0$pb)+44], al
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	mov	eax, dword ptr [esi + eax + (_m-L0$pb)+56]
	add	eax, 12
	shr	eax, 31
	mov	byte ptr [esi + (_m-L0$pb)+47], al
	cmp	byte ptr [esi + (_m-L0$pb)+45], 0
	je	LBB0_13
## BB#8:
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	mov	al, byte ptr [esi + eax + (_m-L0$pb)+53]
	mov	byte ptr [esi + (_m-L0$pb)+12], al
	cmp	al, 2
	sete	byte ptr [esi + (_m-L0$pb)+45]
	setb	al
	mov	byte ptr [esi + (_m-L0$pb)+44], al
	mov	al, byte ptr [esi + (_m-L0$pb)+12]
	add	al, -2
	shr	al, 7
	mov	byte ptr [esi + (_m-L0$pb)+47], al
	cmp	byte ptr [esi + (_m-L0$pb)+45], 0
	je	LBB0_13
## BB#9:
	mov	dword ptr [esi + (_m-L0$pb)+20], 53
	mov	dword ptr [esi + (_m-L0$pb)+16], 54
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	mov	al, byte ptr [esi + eax + (_m-L0$pb)+53]
	mov	byte ptr [esi + (_m-L0$pb)+12], al
	cmp	al, 2
	sete	byte ptr [esi + (_m-L0$pb)+45]
	setb	al
	mov	byte ptr [esi + (_m-L0$pb)+44], al
	mov	al, byte ptr [esi + (_m-L0$pb)+12]
	add	al, -2
	shr	al, 7
	mov	byte ptr [esi + (_m-L0$pb)+47], al
	cmp	byte ptr [esi + (_m-L0$pb)+45], 0
	je	LBB0_13
## BB#10:
	mov	dword ptr [esi + (_m-L0$pb)+20], 53
	movzx	eax, word ptr [esi + (_m-L0$pb)+34]
	mov	eax, dword ptr [esi + 4*eax + (_m-L0$pb)+5006]
	movzx	eax, word ptr [esi + eax + (_m-L0$pb)+54]
	mov	word ptr [esi + (_m-L0$pb)+12], ax
	cmp	eax, 11
	sete	byte ptr [esi + (_m-L0$pb)+45]
	setb	al
	mov	byte ptr [esi + (_m-L0$pb)+44], al
	movzx	eax, word ptr [esi + (_m-L0$pb)+12]
	add	eax, -11
	and	eax, 32768
	shr	eax, 15
	mov	byte ptr [esi + (_m-L0$pb)+47], al
	cmp	byte ptr [esi + (_m-L0$pb)+45], 0
	je	LBB0_13
## BB#11:
	lea	eax, [esi + _m-L0$pb]
	mov	ecx, dword ptr [esi + (_m-L0$pb)+20]
	add	ecx, eax
	movzx	edx, word ptr [esi + (_m-L0$pb)+34]
	mov	edx, dword ptr [esi + 4*edx + (_m-L0$pb)+5006]
	inc	byte ptr [edx + ecx + 7]
	mov	ecx, dword ptr [esi + (_m-L0$pb)+20]
	add	ecx, eax
	movzx	edx, word ptr [esi + (_m-L0$pb)+34]
	mov	edx, dword ptr [esi + 4*edx + (_m-L0$pb)+5006]
	cmp	byte ptr [edx + ecx + 7], 0
	sete	byte ptr [esi + (_m-L0$pb)+45]
	mov	ecx, dword ptr [esi + (_m-L0$pb)+20]
	add	ecx, eax
	movzx	edx, word ptr [esi + (_m-L0$pb)+34]
	mov	edx, dword ptr [esi + 4*edx + (_m-L0$pb)+5006]
	cmp	byte ptr [edx + ecx + 7], -124
	sete	byte ptr [esi + (_m-L0$pb)+45]
	mov	ecx, dword ptr [esi + (_m-L0$pb)+20]
	add	ecx, eax
	movzx	edx, word ptr [esi + (_m-L0$pb)+34]
	mov	edx, dword ptr [esi + 4*edx + (_m-L0$pb)+5006]
	cmp	byte ptr [edx + ecx + 7], -124
	setb	cl
	mov	byte ptr [esi + (_m-L0$pb)+44], cl
	add	eax, dword ptr [esi + (_m-L0$pb)+20]
	movzx	ecx, word ptr [esi + (_m-L0$pb)+34]
	mov	ecx, dword ptr [esi + 4*ecx + (_m-L0$pb)+5006]
	mov	al, byte ptr [ecx + eax + 7]
	add	al, 124
	shr	al, 7
	mov	byte ptr [esi + (_m-L0$pb)+47], al
	cmp	byte ptr [esi + (_m-L0$pb)+45], 0
	je	LBB0_13
## BB#12:
	xor	eax, eax
	jmp	LBB0_14
LBB0_13:
	mov	al, 1
LBB0_14:
	mov	byte ptr [esi + _m-L0$pb], al
	mov	byte ptr [esi + (_m-L0$pb)+1], 76
	sub	esp, 12
	push	33
	call	_asm2C_INT
	add	esp, 16
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	je	LBB0_18
## BB#15:
	sub	esp, 12
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	jne	LBB0_18
## BB#16:
	mov	eax, dword ptr [esi + (_m-L0$pb)+5518]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+5522]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+5518]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+5518], eax
	cmp	eax, 4096
	jb	LBB0_28
## BB#17:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	93
	jmp	LBB0_5
LBB0_3:
	mov	eax, dword ptr [esi + (_m-L0$pb)+5518]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+5522]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+5518]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+5518], eax
	cmp	eax, 4096
	jae	LBB0_4
LBB0_18:
	mov	dword ptr [esi + (_m-L0$pb)+20], 122
	mov	byte ptr [esi + (_m-L0$pb)+8], 8
	lea	eax, [esi + _m-L0$pb]
	.p2align	4, 0x90
LBB0_19:                                ## =>This Inner Loop Header: Depth=1
	rol	dword ptr [esi + _m-L0$pb], 4
	movzx	edx, byte ptr [esi + _m-L0$pb]
	and	dl, 15
	or	dl, 48
	mov	byte ptr [esi + (_m-L0$pb)+4], dl
	cmp	dl, 56
	seta	cl
	cmp	dl, 57
	sete	byte ptr [esi + (_m-L0$pb)+45]
	setb	ch
	mov	byte ptr [esi + (_m-L0$pb)+44], ch
	add	dl, -57
	shr	dl, 7
	mov	byte ptr [esi + (_m-L0$pb)+47], dl
	cmp	byte ptr [esi + (_m-L0$pb)+45], 0
	jne	LBB0_22
## BB#20:                               ##   in Loop: Header=BB0_19 Depth=1
	test	cl, cl
	je	LBB0_22
## BB#21:                               ##   in Loop: Header=BB0_19 Depth=1
	movzx	ecx, byte ptr [esi + (_m-L0$pb)+4]
	mov	edx, ecx
	add	dl, 7
	mov	byte ptr [esi + (_m-L0$pb)+4], dl
	sete	byte ptr [esi + (_m-L0$pb)+45]
	cmp	cl, -8
	seta	byte ptr [esi + (_m-L0$pb)+44]
	movzx	ecx, byte ptr [esi + (_m-L0$pb)+4]
	shr	cl, 7
	mov	byte ptr [esi + (_m-L0$pb)+47], cl
LBB0_22:                                ##   in Loop: Header=BB0_19 Depth=1
	movzx	ecx, byte ptr [esi + (_m-L0$pb)+4]
	mov	edx, dword ptr [esi + (_m-L0$pb)+20]
	add	edx, eax
	movzx	ebx, word ptr [esi + (_m-L0$pb)+34]
	mov	ebx, dword ptr [esi + 4*ebx + (_m-L0$pb)+5006]
	mov	byte ptr [ebx + edx], cl
	inc	dword ptr [esi + (_m-L0$pb)+20]
	dec	byte ptr [esi + (_m-L0$pb)+8]
	sete	byte ptr [esi + (_m-L0$pb)+45]
	jne	LBB0_19
## BB#23:
	mov	dword ptr [esi + (_m-L0$pb)+12], 122
	mov	byte ptr [esi + (_m-L0$pb)+1], 9
	sub	esp, 12
	push	33
	call	_asm2C_INT
	add	esp, 16
	cmp	byte ptr [esi + (_m-L0$pb)+49], 0
	lea	ebx, [ebp - 88]
	je	LBB0_27
## BB#24:
	sub	esp, 12
	push	ebx
	call	_setjmp
	add	esp, 16
	test	eax, eax
	jne	LBB0_27
## BB#25:
	mov	eax, dword ptr [esi + (_m-L0$pb)+5518]
	lea	eax, [esi + 4*eax + (_m-L0$pb)+5522]
	sub	esp, 4
	push	72
	push	ebx
	push	eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [esi + (_m-L0$pb)+5518]
	add	eax, 72
	mov	dword ptr [esi + (_m-L0$pb)+5518], eax
	cmp	eax, 4096
	jae	LBB0_26
LBB0_28:
	movzx	eax, byte ptr [esi + (_m-L0$pb)+50]
	mov	ecx, dword ptr [edi]
	cmp	ecx, dword ptr [ebp - 16]
	jne	LBB0_31
## BB#29:
	xor	eax, 1
	add	esp, 76
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB0_31:
	call	___stack_chk_fail
LBB0_27:
	mov	eax, dword ptr [esi + (_m-L0$pb)+5518]
	lea	ecx, [eax - 72]
	mov	dword ptr [esi + (_m-L0$pb)+5518], ecx
	lea	eax, [esi + 4*eax + (_m-L0$pb)+5234]
	sub	esp, 4
	push	72
	push	eax
	push	ebx
	call	_memcpy
	add	esp, 8
	push	0
	push	ebx
	call	_longjmp
	add	esp, 8
LBB0_30:
	mov	byte ptr [esi + (_m-L0$pb)+49], 0
	mov	eax, dword ptr [esi + (_m-L0$pb)+5518]
	lea	ecx, [eax - 72]
	mov	dword ptr [esi + (_m-L0$pb)+5518], ecx
	lea	eax, [esi + 4*eax + (_m-L0$pb)+5234]
	sub	esp, 4
	lea	esi, [ebp - 88]
	push	72
	push	eax
	push	esi
	call	_memcpy
	add	esp, 8
	push	0
	push	esi
	call	_longjmp
	add	esp, 8
LBB0_26:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	113
	jmp	LBB0_5
LBB0_4:
	lea	eax, [esi + L_.str.1-L0$pb]
	lea	ecx, [esi + L_.str-L0$pb]
	lea	edx, [esi + L___func__.program-L0$pb]
	push	eax
	push	62
LBB0_5:
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
	mov	edx, dword ptr [ebx + 4*edx + (_m-L1$pb)+5006]
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
	mov	eax, dword ptr [ebx + (_m-L1$pb)+5002]
	mov	edx, dword ptr [ebp - 1028] ## 4-byte Reload
	lea	ecx, [eax + edx]
	cmp	ecx, 128
	jae	LBB1_38
## BB#39:
	mov	dword ptr [ebx + _m-L1$pb], eax
	add	dword ptr [ebx + (_m-L1$pb)+5002], edx
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
	mov	eax, dword ptr [ebx + (_m-L1$pb)+21906]
	add	ecx, eax
	cmp	ecx, 4194304
	jae	LBB1_36
## BB#45:
	add	eax, 21910
	mov	dword ptr [ebx + (_m-L1$pb)+21906], ecx
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
	lea	esi, [ebx + L_.str.93-L1$pb]
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
	mov	eax, dword ptr [ebx + (_m-L1$pb)+5002]
	lea	ecx, [eax + 1]
	cmp	ecx, 128
	jb	LBB1_41
LBB1_38:
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	sub	esp, 12
	lea	eax, [ebx + L_.str.81-L1$pb]
	jmp	LBB1_27
LBB1_42:
	mov	edx, dword ptr [ebp - 1032] ## 4-byte Reload
	cmp	edx, dword ptr [ebx + (_m-L1$pb)+5002]
	jbe	LBB1_44
## BB#43:
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	sub	esp, 12
	lea	eax, [ebx + L_.str.86-L1$pb]
	jmp	LBB1_27
LBB1_46:
	mov	dword ptr [ebx + (_m-L1$pb)+12], 512
	jmp	LBB1_29
LBB1_10:
	mov	ecx, dword ptr [ebx + (_m-L1$pb)+4408214]
	lea	eax, [ebx + _m-L1$pb]
	add	eax, dword ptr [ebx + (_m-L1$pb)+12]
	movzx	edx, word ptr [ebx + (_m-L1$pb)+34]
	add	eax, dword ptr [ebx + 4*edx + (_m-L1$pb)+5006]
	test	ecx, ecx
	je	LBB1_12
## BB#11:
	sub	esp, 8
	lea	edx, [ebx + L_.str.67-L1$pb]
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
	mov	edi, dword ptr [ebx + 4*eax + (_m-L1$pb)+5006]
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
	lea	eax, [ebx + L_.str.79-L1$pb]
	jmp	LBB1_27
LBB1_31:
	mov	byte ptr [ebx + (_m-L1$pb)+49], 1
	mov	byte ptr [ebx + (_m-L1$pb)+50], 1
	mov	al, byte ptr [ebp - 1024] ## 1-byte Reload
	mov	byte ptr [ebx + (_m-L1$pb)+51], al
	jmp	LBB1_29
LBB1_41:
	mov	dword ptr [ebx + 4*eax + (_m-L1$pb)+5006], 4280214
	mov	eax, dword ptr [ebx + (_m-L1$pb)+5002]
	mov	dword ptr [ebx + _m-L1$pb], eax
	inc	eax
	mov	dword ptr [ebx + (_m-L1$pb)+5002], eax
	jmp	LBB1_29
LBB1_44:
	movzx	eax, word ptr [ebx + (_m-L1$pb)+12]
	mov	ecx, dword ptr [ebx + (_m-L1$pb)+8]
	shl	ecx, 16
	or	ecx, eax
	mov	dword ptr [ebx + 4*edx + (_m-L1$pb)+5006], ecx
	jmp	LBB1_29
LBB1_12:
	sub	esp, 12
	lea	ecx, [ebx + L_.str.22-L1$pb]
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
	lea	eax, [ebx + L_.str.68-L1$pb]
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
	lea	eax, [ebx + L_.str.70-L1$pb]
	push	esi
LBB1_27:
	push	eax
	jmp	LBB1_28
LBB1_17:
	mov	byte ptr [ebx + (_m-L1$pb)+44], 1
	sub	esp, 12
	lea	eax, [ebx + L_.str.72-L1$pb]
	push	eax
	call	_perror
	add	esp, 12
	lea	eax, [ebx + L_.str.73-L1$pb]
	push	dword ptr [ebx + _asm2C_INT.file-L1$pb]
	push	dword ptr [ebp - 1032]  ## 4-byte Folded Reload
	push	eax
	call	_log_error
	add	esp, 16
	jmp	LBB1_18
LBB1_21:
	sub	esp, 12
	lea	eax, [ebx + L_.str.72-L1$pb]
	push	eax
	mov	edi, ecx
	call	_perror
	add	esp, 12
	lea	eax, [ebx + L_.str.75-L1$pb]
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
	lea	eax, [ebx + L_.str.76-L1$pb]
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
	lea	eax, [ebx + L_.str.90-L1$pb]
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
	call	L2$pb
L2$pb:
	pop	edi
	mov	ebx, dword ptr [ebp + 8]
	sub	esp, 8
	lea	eax, [edi + L_.str.3-L2$pb]
	lea	ecx, [edi + L_.str.2-L2$pb]
	push	eax
	push	ecx
	call	_fopen$UNIX2003
	add	esp, 16
	mov	esi, eax
	mov	eax, 52
	sub	eax, ebx
	lea	ecx, [edi + L_.str.4-L2$pb]
	push	52
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 53
	sub	eax, ebx
	lea	ecx, [edi + L_.str.5-L2$pb]
	push	53
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 54
	sub	eax, ebx
	lea	ecx, [edi + L_.str.6-L2$pb]
	push	54
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 56
	sub	eax, ebx
	lea	ecx, [edi + L_.str.7-L2$pb]
	push	56
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 60
	sub	eax, ebx
	lea	ecx, [edi + L_.str.8-L2$pb]
	push	60
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 61
	sub	eax, ebx
	lea	ecx, [edi + L_.str.9-L2$pb]
	push	61
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 62
	sub	eax, ebx
	lea	ecx, [edi + L_.str.10-L2$pb]
	push	62
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 68
	sub	eax, ebx
	lea	ecx, [edi + L_.str.11-L2$pb]
	push	68
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 84
	sub	eax, ebx
	lea	ecx, [edi + L_.str.12-L2$pb]
	push	84
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 92
	sub	eax, ebx
	lea	ecx, [edi + L_.str.13-L2$pb]
	push	92
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 96
	sub	eax, ebx
	lea	ecx, [edi + L_.str.14-L2$pb]
	push	96
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 106
	sub	eax, ebx
	lea	ecx, [edi + L_.str.15-L2$pb]
	push	106
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 110
	sub	eax, ebx
	lea	ecx, [edi + L_.str.16-L2$pb]
	push	110
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 118
	sub	eax, ebx
	lea	ecx, [edi + L_.str.17-L2$pb]
	push	118
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 122
	sub	eax, ebx
	lea	ecx, [edi + L_.str.18-L2$pb]
	push	122
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 133
	sub	eax, ebx
	lea	ecx, [edi + L_.str.19-L2$pb]
	push	133
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 137
	sub	eax, ebx
	lea	ecx, [edi + L_.str.20-L2$pb]
	push	137
	push	eax
	push	ecx
	push	esi
	call	_fprintf
	add	esp, 16
	mov	eax, 138
	sub	eax, ebx
	lea	ecx, [edi + L_.str.21-L2$pb]
	push	138
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
	call	L3$pb
L3$pb:
	pop	edi
	mov	eax, dword ptr [ebp + 8]
	mov	esi, dword ptr [edi + L___stack_chk_guard$non_lazy_ptr-L3$pb]
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
	mov	eax, dword ptr [edi + _logDebug-L3$pb]
	sub	esp, 8
	test	eax, eax
	je	LBB3_2
## BB#1:
	push	eax
	push	ebx
	call	_fputs$UNIX2003
	jmp	LBB3_3
LBB3_2:
	lea	eax, [edi + L_.str.22-L3$pb]
	push	ebx
	push	eax
	call	_printf
LBB3_3:
	add	esp, 16
	mov	eax, dword ptr [esi]
	cmp	eax, dword ptr [ebp - 16]
	jne	LBB3_5
## BB#4:
	add	esp, 1036
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB3_5:
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
	lea	eax, [edi + L_.str.22-L5$pb]
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
	jle	LBB9_2
	.p2align	4, 0x90
LBB9_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	ecx, eax
	inc	ecx
	test	al, 15
	mov	eax, ecx
	jne	LBB9_1
LBB9_2:
	pop	ebp
	ret

	.globl	_asm2C_OUT
	.p2align	4, 0x90
_asm2C_OUT:                             ## @asm2C_OUT
## BB#0:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	call	L10$pb
L10$pb:
	pop	eax
	mov	ecx, dword ptr [ebp + 12]
	movsx	edx, word ptr [ebp + 8]
	cmp	edx, 969
	je	LBB10_3
## BB#1:
	cmp	edx, 968
	jne	LBB10_8
## BB#2:
	mov	dword ptr [eax + _asm2C_OUT.indexPalette-L10$pb], ecx
	jmp	LBB10_5
LBB10_3:
	mov	edx, dword ptr [eax + _asm2C_OUT.indexPalette-L10$pb]
	cmp	edx, 767
	jg	LBB10_6
## BB#4:
	mov	byte ptr [eax + edx + (_m-L10$pb)+4234], cl
	inc	dword ptr [eax + _asm2C_OUT.indexPalette-L10$pb]
LBB10_5:
	add	esp, 8
	pop	ebp
	ret
LBB10_8:
	sub	esp, 4
	lea	eax, [eax + L_.str.59-L10$pb]
	push	ecx
	jmp	LBB10_7
LBB10_6:
	sub	esp, 8
	lea	eax, [eax + L_.str.58-L10$pb]
LBB10_7:
	push	edx
	push	eax
	call	_log_error
	add	esp, 24
	pop	ebp
	ret

	.globl	_asm2C_IN
	.p2align	4, 0x90
_asm2C_IN:                              ## @asm2C_IN
## BB#0:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	call	L11$pb
L11$pb:
	pop	eax
	movzx	ecx, word ptr [ebp + 8]
	cmp	ecx, 986
	jne	LBB11_4
## BB#1:
	mov	cl, byte ptr [eax + _asm2C_IN.vblTick-L11$pb]
	test	cl, cl
	je	LBB11_2
## BB#3:
	mov	byte ptr [eax + _asm2C_IN.vblTick-L11$pb], 0
	mov	byte ptr [eax + (_m-L11$pb)+49], 1
	mov	al, 8
	jmp	LBB11_6
LBB11_4:
	movsx	ecx, cx
	sub	esp, 8
	lea	eax, [eax + L_.str.60-L11$pb]
	push	ecx
	push	eax
	call	_log_error
	add	esp, 16
	jmp	LBB11_5
LBB11_2:
	mov	byte ptr [eax + _asm2C_IN.vblTick-L11$pb], 1
LBB11_5:
	xor	eax, eax
LBB11_6:
	movsx	eax, al
	add	esp, 8
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
	.byte	4                       ## 0x4
	.byte	2                       ## 0x2
	.short	11                      ## 0xb
	.long	4294967283              ## 0xfffffff3
	.byte	131                     ## 0x83
	.byte	141                     ## 0x8d
	.short	2                       ## 0x2
	.short	5                       ## 0x5
	.short	0                       ## 0x0
	.long	9                       ## 0x9
	.long	8                       ## 0x8
	.long	7                       ## 0x7
	.long	1                       ## 0x1
	.long	111                     ## 0x6f
	.long	1                       ## 0x1
	.short	223                     ## 0xdf
	.short	22                      ## 0x16
	.ascii	"OKOKOKOK\n\r"
	.space	4,5
	.ascii	"OKOKOKOK"
	.long	62                      ## 0x3e
	.ascii	"00000000\r\n$"
	.ascii	"abcd"
	.byte	4                       ## 0x4
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
	.asciz	"data.c"

L_.str.1:                               ## @.str.1
	.asciz	"m.stackPointer<STACK_SIZE"

L_.str.2:                               ## @.str.2
	.asciz	"./memoryMap.log"

L_.str.3:                               ## @.str.3
	.asciz	"w"

L_.str.4:                               ## @.str.4
	.asciz	"xox %x (from beg RW) %x:beginningdata\n"

L_.str.5:                               ## @.str.5
	.asciz	"xox %x (from beg RW) %x:var1\n"

L_.str.6:                               ## @.str.6
	.asciz	"xox %x (from beg RW) %x:var2\n"

L_.str.7:                               ## @.str.7
	.asciz	"xox %x (from beg RW) %x:var3\n"

L_.str.8:                               ## @.str.8
	.asciz	"xox %x (from beg RW) %x:var4\n"

L_.str.9:                               ## @.str.9
	.asciz	"xox %x (from beg RW) %x:dummy1\n"

L_.str.10:                              ## @.str.10
	.asciz	"xox %x (from beg RW) %x:var5\n"

L_.str.11:                              ## @.str.11
	.asciz	"xox %x (from beg RW) %x:var6\n"

L_.str.12:                              ## @.str.12
	.asciz	"xox %x (from beg RW) %x:dummy2\n"

L_.str.13:                              ## @.str.13
	.asciz	"xox %x (from beg RW) %x:dummy3\n"

L_.str.14:                              ## @.str.14
	.asciz	"xox %x (from beg RW) %x:dummy4\n"

L_.str.15:                              ## @.str.15
	.asciz	"xox %x (from beg RW) %x:dummy5\n"

L_.str.16:                              ## @.str.16
	.asciz	"xox %x (from beg RW) %x:dummy6\n"

L_.str.17:                              ## @.str.17
	.asciz	"xox %x (from beg RW) %x:dummy7\n"

L_.str.18:                              ## @.str.18
	.asciz	"xox %x (from beg RW) %x:ascii\n"

L_.str.19:                              ## @.str.19
	.asciz	"xox %x (from beg RW) %x:doublequote\n"

L_.str.20:                              ## @.str.20
	.asciz	"xox %x (from beg RW) %x:enddata\n"

L_.str.21:                              ## @.str.21
	.asciz	"xox %x (from beg RW) %x:dummy8\n"

	.globl	_logDebug               ## @logDebug
.zerofill __DATA,__common,_logDebug,4,2
L_.str.22:                              ## @.str.22
	.asciz	"%s"

L_.str.23:                              ## @.str.23
	.asciz	"vgaram_empty : %s\n"

L_.str.24:                              ## @.str.24
	.asciz	"true"

L_.str.25:                              ## @.str.25
	.asciz	"false"

L_.str.26:                              ## @.str.26
	.asciz	"is_little_endian()=%d\n"

L_.str.27:                              ## @.str.27
	.asciz	"sizeof(dd)=%zu\n"

L_.str.28:                              ## @.str.28
	.asciz	"sizeof(dd *)=%zu\n"

L_.str.29:                              ## @.str.29
	.asciz	"sizeof(dw)=%zu\n"

L_.str.30:                              ## @.str.30
	.asciz	"sizeof(db)=%zu\n"

L_.str.31:                              ## @.str.31
	.asciz	"sizeof(mem)=%zu\n"

L_.str.32:                              ## @.str.32
	.asciz	"eax: %x\n"

L_.str.33:                              ## @.str.33
	.asciz	"ebx: %x\n"

L_.str.34:                              ## @.str.34
	.asciz	"ecx: %x\n"

L_.str.35:                              ## @.str.35
	.asciz	"edx: %x\n"

L_.str.36:                              ## @.str.36
	.asciz	"ebp: %x\n"

L_.str.37:                              ## @.str.37
	.asciz	"cs: %d -> %p\n"

L_.str.38:                              ## @.str.38
	.asciz	"ds: %d -> %p\n"

L_.str.39:                              ## @.str.39
	.asciz	"esi: %x\n"

L_.str.40:                              ## @.str.40
	.asciz	"ds:esi %p\n"

L_.str.41:                              ## @.str.41
	.asciz	"es: %d -> %p\n"

L_.str.42:                              ## @.str.42
	.asciz	"edi: %x\n"

L_.str.43:                              ## @.str.43
	.asciz	"es:edi %p\n"

L_.str.44:                              ## @.str.44
	.asciz	"fs: %d -> %p\n"

L_.str.45:                              ## @.str.45
	.asciz	"gs: %d -> %p\n"

L_.str.46:                              ## @.str.46
	.asciz	"adress heap: %p\n"

L_.str.47:                              ## @.str.47
	.asciz	"adress vgaRam: %p\n"

L_.str.48:                              ## @.str.48
	.asciz	"first pixels vgaRam: %x\n"

L_.str.49:                              ## @.str.49
	.asciz	"flags: ZF = %d\n"

L_.str.50:                              ## @.str.50
	.asciz	"top stack=%d\n"

L_.str.51:                              ## @.str.51
	.asciz	"hexDump %p:\n"

L_.str.52:                              ## @.str.52
	.asciz	"  ZERO LENGTH\n"

L_.str.53:                              ## @.str.53
	.asciz	"  NEGATIVE LENGTH: %i\n"

L_.str.54:                              ## @.str.54
	.asciz	"  %s\n"

L_.str.55:                              ## @.str.55
	.asciz	"  %04x "

L_.str.56:                              ## @.str.56
	.asciz	" %02x"

L_.str.57:                              ## @.str.57
	.asciz	"   "

.zerofill __DATA,__bss,_asm2C_OUT.indexPalette,4,2 ## @asm2C_OUT.indexPalette
L_.str.58:                              ## @.str.58
	.asciz	"error: indexPalette>767 %d\n"

L_.str.59:                              ## @.str.59
	.asciz	"unknown OUT %d,%d\n"

.zerofill __DATA,__bss,_asm2C_IN.vblTick,1,0 ## @asm2C_IN.vblTick
L_.str.60:                              ## @.str.60
	.asciz	"Unknown IN %d\n"

L_.str.62:                              ## @.str.62
	.asciz	"asm2C_init is_little_endian:%d\n"

.zerofill __DATA,__bss,_asm2C_INT.file,4,2 ## @asm2C_INT.file
L_.str.63:                              ## @.str.63
	.asciz	"asm2C_INT ah=%x al=%x ax=%x bx=%x cx=%x dx=%x\n"

L_.str.64:                              ## @.str.64
	.asciz	"Switch to text mode\n"

L_.str.65:                              ## @.str.65
	.asciz	"Switch to VGA\n"

L_.str.66:                              ## @.str.66
	.asciz	"%c"

L_.str.67:                              ## @.str.67
	.asciz	"%s/%s"

L_.str.68:                              ## @.str.68
	.asciz	"rb"

L_.str.69:                              ## @.str.69
	.asciz	"Opening file %s -> %p\n"

L_.str.70:                              ## @.str.70
	.asciz	"Error opening file %s\n"

L_.str.71:                              ## @.str.71
	.asciz	"Closing file. bx:%d\n"

L_.str.72:                              ## @.str.72
	.asciz	"Error"

L_.str.73:                              ## @.str.73
	.asciz	"Error closing file ? bx:%d %p\n"

L_.str.74:                              ## @.str.74
	.asciz	"feof(file)\n"

L_.str.75:                              ## @.str.75
	.asciz	"r!=cx cx:%d R:%zu \n"

L_.str.76:                              ## @.str.76
	.asciz	"Error reading ? %d %zu %p\n"

L_.str.77:                              ## @.str.77
	.asciz	"Reading OK %p\n"

L_.str.78:                              ## @.str.78
	.asciz	"Seeking to offset %ld %d\n"

L_.str.79:                              ## @.str.79
	.asciz	"Error seeking\n"

L_.str.80:                              ## @.str.80
	.asciz	"Function 0000h - Allocate %d Descriptors\n"

L_.str.81:                              ## @.str.81
	.asciz	"Not enough free selectors (increase NB_SELECTORS)\n"

L_.str.82:                              ## @.str.82
	.asciz	"Return %x\n"

L_.str.83:                              ## @.str.83
	.asciz	"Function 0002h - Converts a real mode segment into a protected mode descriptor real mode segment: %d\n"

L_.str.84:                              ## @.str.84
	.asciz	"Returns new selector: eax: %d\n"

L_.str.85:                              ## @.str.85
	.asciz	"Function 0007h - Set Segment Base Address: ebx: %x, edx:%x ecx:%x\n"

L_.str.86:                              ## @.str.86
	.asciz	"Error: selector number doesnt exist\n"

L_.str.87:                              ## @.str.87
	.asciz	"Address for selector %d: %x\n"

L_.str.88:                              ## @.str.88
	.asciz	"Function 0008h - Set Segment Limit for selector %d (Ignored)\n"

L_.str.89:                              ## @.str.89
	.asciz	"Function 0501h - Allocate Memory Block: %d bytes\n"

L_.str.90:                              ## @.str.90
	.asciz	"Not enough memory (increase HEAP_SIZE)\n"

L_.str.91:                              ## @.str.91
	.asciz	"New top of heap: %x\n"

L_.str.92:                              ## @.str.92
	.asciz	"Return %x ebx:ecx %x:%x\n"

L_.str.93:                              ## @.str.93
	.asciz	"Error DOSInt 0x%x ah:0x%x al:0x%x: not supported.\n"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
