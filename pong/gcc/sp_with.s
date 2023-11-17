	.file	"sp.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	lea	ecx, [esp+4]
	.cfi_def_cfa 1, 0
	and	esp, -16
	push	DWORD PTR [ecx-4]
	push	ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	mov	ebp, esp
	push	ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	sub	esp, 116
	mov	eax, ecx
	mov	eax, DWORD PTR [eax+4]
	mov	DWORD PTR [ebp-108], eax
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR [ebp-12], eax
	xor	eax, eax
	mov	eax, DWORD PTR [ebp-108]
	mov	eax, DWORD PTR [eax]
	sub	esp, 8
	push	eax
	lea	eax, [ebp-92]
	push	eax
	call	strcpy
	add	esp, 16
	mov	edx, DWORD PTR [ebp-12]
	xor	edx, DWORD PTR gs:20
	je	.L2
	call	__stack_chk_fail
.L2:
	mov	ecx, DWORD PTR [ebp-4]
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	lea	esp, [ecx-4]
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
