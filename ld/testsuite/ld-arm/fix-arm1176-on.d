
.+:     file format elf32-littlearm


Disassembly of section .foo:

[0-9a-f]+ <_start>:
 [0-9a-f]+:	f000 f800 	bl	2001018 <__func_to_branch_to_veneer>

[0-9a-f]+ <__func_to_branch_to_veneer>:
 [0-9a-f]+:	4778      	bx	pc
 [0-9a-f]+:	46c0      	nop			; \(mov r8, r8\)
 [0-9a-f]+:	e51ff004 	ldr	pc, \[pc, #-4\]	; 2001020 <__func_to_branch_to_veneer\+0x8>
 [0-9a-f]+:	........ 	.word	0x........
 [0-9a-f]+:	00000000 	.word	0x00000000

Disassembly of section .text:

[0-9a-f]+ <func_to_branch_to>:
    [0-9a-f]+:	e12fff1e 	bx	lr
