
getdomain:     file format elf64-x86-64


Disassembly of section .interp:

00000000000002a8 <.interp>:
 2a8:	2f                   	(bad)  
 2a9:	6c                   	insb   (%dx),%es:(%rdi)
 2aa:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 2b1:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 2b6:	78 2d                	js     2e5 <_init-0xd1b>
 2b8:	78 38                	js     2f2 <_init-0xd0e>
 2ba:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 2c0:	6f                   	outsl  %ds:(%rsi),(%dx)
 2c1:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

00000000000002c4 <.note.ABI-tag>:
 2c4:	04 00                	add    $0x0,%al
 2c6:	00 00                	add    %al,(%rax)
 2c8:	10 00                	adc    %al,(%rax)
 2ca:	00 00                	add    %al,(%rax)
 2cc:	01 00                	add    %eax,(%rax)
 2ce:	00 00                	add    %al,(%rax)
 2d0:	47                   	rex.RXB
 2d1:	4e 55                	rex.WRX push %rbp
 2d3:	00 00                	add    %al,(%rax)
 2d5:	00 00                	add    %al,(%rax)
 2d7:	00 03                	add    %al,(%rbx)
 2d9:	00 00                	add    %al,(%rax)
 2db:	00 02                	add    %al,(%rdx)
 2dd:	00 00                	add    %al,(%rax)
 2df:	00 00                	add    %al,(%rax)
 2e1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

00000000000002e4 <.note.gnu.build-id>:
 2e4:	04 00                	add    $0x0,%al
 2e6:	00 00                	add    %al,(%rax)
 2e8:	14 00                	adc    $0x0,%al
 2ea:	00 00                	add    %al,(%rax)
 2ec:	03 00                	add    (%rax),%eax
 2ee:	00 00                	add    %al,(%rax)
 2f0:	47                   	rex.RXB
 2f1:	4e 55                	rex.WRX push %rbp
 2f3:	00 3e                	add    %bh,(%rsi)
 2f5:	44 22 c1             	and    %cl,%r8b
 2f8:	90                   	nop
 2f9:	cf                   	iret   
 2fa:	b5 6e                	mov    $0x6e,%ch
 2fc:	4f e8 e1 7c cc 18    	rex.WRXB callq 18cc7fe3 <_end+0x18cc3f8b>
 302:	dc e7                	fsub   %st,%st(7)
 304:	02 71 92             	add    -0x6e(%rcx),%dh
 307:	cd                   	.byte 0xcd

Disassembly of section .gnu.hash:

0000000000000308 <.gnu.hash>:
 308:	02 00                	add    (%rax),%al
 30a:	00 00                	add    %al,(%rax)
 30c:	0a 00                	or     (%rax),%al
 30e:	00 00                	add    %al,(%rax)
 310:	01 00                	add    %eax,(%rax)
 312:	00 00                	add    %al,(%rax)
 314:	06                   	(bad)  
 315:	00 00                	add    %al,(%rax)
 317:	00 00                	add    %al,(%rax)
 319:	00 81 00 00 00 00    	add    %al,0x0(%rcx)
 31f:	00 0a                	add    %cl,(%rdx)
 321:	00 00                	add    %al,(%rax)
 323:	00 00                	add    %al,(%rax)
 325:	00 00                	add    %al,(%rax)
 327:	00 d1                	add    %dl,%cl
 329:	65 ce                	gs (bad) 
 32b:	6d                   	insl   (%dx),%es:(%rdi)

Disassembly of section .dynsym:

0000000000000330 <.dynsym>:
	...
 348:	59                   	pop    %rcx
 349:	00 00                	add    %al,(%rax)
 34b:	00 20                	add    %ah,(%rax)
	...
 35d:	00 00                	add    %al,(%rax)
 35f:	00 0b                	add    %cl,(%rbx)
 361:	00 00                	add    %al,(%rax)
 363:	00 12                	add    %dl,(%rdx)
	...
 375:	00 00                	add    %al,(%rax)
 377:	00 12                	add    %dl,(%rdx)
 379:	00 00                	add    %al,(%rax)
 37b:	00 12                	add    %dl,(%rdx)
	...
 38d:	00 00                	add    %al,(%rax)
 38f:	00 1e                	add    %bl,(%rsi)
 391:	00 00                	add    %al,(%rax)
 393:	00 12                	add    %dl,(%rdx)
	...
 3a5:	00 00                	add    %al,(%rax)
 3a7:	00 3b                	add    %bh,(%rbx)
 3a9:	00 00                	add    %al,(%rax)
 3ab:	00 12                	add    %dl,(%rdx)
	...
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 75 00             	add    %dh,0x0(%rbp)
 3c2:	00 00                	add    %al,(%rax)
 3c4:	20 00                	and    %al,(%rax)
	...
 3d6:	00 00                	add    %al,(%rax)
 3d8:	25 00 00 00 12       	and    $0x12000000,%eax
	...
 3ed:	00 00                	add    %al,(%rax)
 3ef:	00 84 00 00 00 20 00 	add    %al,0x200000(%rax,%rax,1)
	...
 406:	00 00                	add    %al,(%rax)
 408:	17                   	(bad)  
 409:	00 00                	add    %al,(%rax)
 40b:	00 12                	add    %dl,(%rdx)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 2c 00             	add    %ch,(%rax,%rax,1)
 422:	00 00                	add    %al,(%rax)
 424:	22 00                	and    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000000438 <.dynstr>:
 438:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 43c:	63 2e                	movslq (%rsi),%ebp
 43e:	73 6f                	jae    4af <_init-0xb51>
 440:	2e 36 00 73 74       	cs add %dh,%ss:0x74(%rbx)
 445:	72 63                	jb     4aa <_init-0xb56>
 447:	70 79                	jo     4c2 <_init-0xb3e>
 449:	00 70 75             	add    %dh,0x75(%rax)
 44c:	74 73                	je     4c1 <_init-0xb3f>
 44e:	00 73 74             	add    %dh,0x74(%rbx)
 451:	72 64                	jb     4b7 <_init-0xb49>
 453:	75 70                	jne    4c5 <_init-0xb3b>
 455:	00 70 72             	add    %dh,0x72(%rax)
 458:	69 6e 74 66 00 73 74 	imul   $0x74730066,0x74(%rsi),%ebp
 45f:	72 74                	jb     4d5 <_init-0xb2b>
 461:	6f                   	outsl  %ds:(%rsi),(%dx)
 462:	6b 00 5f             	imul   $0x5f,(%rax),%eax
 465:	5f                   	pop    %rdi
 466:	63 78 61             	movslq 0x61(%rax),%edi
 469:	5f                   	pop    %rdi
 46a:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 470:	7a 65                	jp     4d7 <_init-0xb29>
 472:	00 5f 5f             	add    %bl,0x5f(%rdi)
 475:	6c                   	insb   (%dx),%es:(%rdi)
 476:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 47d:	72 74                	jb     4f3 <_init-0xb0d>
 47f:	5f                   	pop    %rdi
 480:	6d                   	insl   (%dx),%es:(%rdi)
 481:	61                   	(bad)  
 482:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
 489:	43 5f                	rex.XB pop %r15
 48b:	32 2e                	xor    (%rsi),%ch
 48d:	32 2e                	xor    (%rsi),%ch
 48f:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 494:	4d 5f                	rex.WRB pop %r15
 496:	64 65 72 65          	fs gs jb 4ff <_init-0xb01>
 49a:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4a1:	4d 
 4a2:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4a4:	6f                   	outsl  %ds:(%rsi),(%dx)
 4a5:	6e                   	outsb  %ds:(%rsi),(%dx)
 4a6:	65 54                	gs push %rsp
 4a8:	61                   	(bad)  
 4a9:	62                   	(bad)  
 4aa:	6c                   	insb   (%dx),%es:(%rdi)
 4ab:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 4af:	67 6d                	insl   (%dx),%es:(%edi)
 4b1:	6f                   	outsl  %ds:(%rsi),(%dx)
 4b2:	6e                   	outsb  %ds:(%rsi),(%dx)
 4b3:	5f                   	pop    %rdi
 4b4:	73 74                	jae    52a <_init-0xad6>
 4b6:	61                   	(bad)  
 4b7:	72 74                	jb     52d <_init-0xad3>
 4b9:	5f                   	pop    %rdi
 4ba:	5f                   	pop    %rdi
 4bb:	00 5f 49             	add    %bl,0x49(%rdi)
 4be:	54                   	push   %rsp
 4bf:	4d 5f                	rex.WRB pop %r15
 4c1:	72 65                	jb     528 <_init-0xad8>
 4c3:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4ca:	4d 
 4cb:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4cd:	6f                   	outsl  %ds:(%rsi),(%dx)
 4ce:	6e                   	outsb  %ds:(%rsi),(%dx)
 4cf:	65 54                	gs push %rsp
 4d1:	61                   	(bad)  
 4d2:	62                   	.byte 0x62
 4d3:	6c                   	insb   (%dx),%es:(%rdi)
 4d4:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000004d6 <.gnu.version>:
 4d6:	00 00                	add    %al,(%rax)
 4d8:	00 00                	add    %al,(%rax)
 4da:	02 00                	add    (%rax),%al
 4dc:	02 00                	add    (%rax),%al
 4de:	02 00                	add    (%rax),%al
 4e0:	02 00                	add    (%rax),%al
 4e2:	00 00                	add    %al,(%rax)
 4e4:	02 00                	add    (%rax),%al
 4e6:	00 00                	add    %al,(%rax)
 4e8:	02 00                	add    (%rax),%al
 4ea:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000000004f0 <.gnu.version_r>:
 4f0:	01 00                	add    %eax,(%rax)
 4f2:	01 00                	add    %eax,(%rax)
 4f4:	01 00                	add    %eax,(%rax)
 4f6:	00 00                	add    %al,(%rax)
 4f8:	10 00                	adc    %al,(%rax)
 4fa:	00 00                	add    %al,(%rax)
 4fc:	00 00                	add    %al,(%rax)
 4fe:	00 00                	add    %al,(%rax)
 500:	75 1a                	jne    51c <_init-0xae4>
 502:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 508:	4d 00 00             	rex.WRB add %r8b,(%r8)
 50b:	00 00                	add    %al,(%rax)
 50d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000510 <.rela.dyn>:
 510:	e8 3d 00 00 00       	callq  552 <_init-0xaae>
 515:	00 00                	add    %al,(%rax)
 517:	00 08                	add    %cl,(%rax)
 519:	00 00                	add    %al,(%rax)
 51b:	00 00                	add    %al,(%rax)
 51d:	00 00                	add    %al,(%rax)
 51f:	00 70 11             	add    %dh,0x11(%rax)
 522:	00 00                	add    %al,(%rax)
 524:	00 00                	add    %al,(%rax)
 526:	00 00                	add    %al,(%rax)
 528:	f0 3d 00 00 00 00    	lock cmp $0x0,%eax
 52e:	00 00                	add    %al,(%rax)
 530:	08 00                	or     %al,(%rax)
 532:	00 00                	add    %al,(%rax)
 534:	00 00                	add    %al,(%rax)
 536:	00 00                	add    %al,(%rax)
 538:	30 11                	xor    %dl,(%rcx)
 53a:	00 00                	add    %al,(%rax)
 53c:	00 00                	add    %al,(%rax)
 53e:	00 00                	add    %al,(%rax)
 540:	48                   	rex.W
 541:	40 00 00             	add    %al,(%rax)
 544:	00 00                	add    %al,(%rax)
 546:	00 00                	add    %al,(%rax)
 548:	08 00                	or     %al,(%rax)
 54a:	00 00                	add    %al,(%rax)
 54c:	00 00                	add    %al,(%rax)
 54e:	00 00                	add    %al,(%rax)
 550:	48                   	rex.W
 551:	40 00 00             	add    %al,(%rax)
 554:	00 00                	add    %al,(%rax)
 556:	00 00                	add    %al,(%rax)
 558:	d8 3f                	fdivrs (%rdi)
 55a:	00 00                	add    %al,(%rax)
 55c:	00 00                	add    %al,(%rax)
 55e:	00 00                	add    %al,(%rax)
 560:	06                   	(bad)  
 561:	00 00                	add    %al,(%rax)
 563:	00 01                	add    %al,(%rcx)
	...
 56d:	00 00                	add    %al,(%rax)
 56f:	00 e0                	add    %ah,%al
 571:	3f                   	(bad)  
 572:	00 00                	add    %al,(%rax)
 574:	00 00                	add    %al,(%rax)
 576:	00 00                	add    %al,(%rax)
 578:	06                   	(bad)  
 579:	00 00                	add    %al,(%rax)
 57b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 581 <_init-0xa7f>
 581:	00 00                	add    %al,(%rax)
 583:	00 00                	add    %al,(%rax)
 585:	00 00                	add    %al,(%rax)
 587:	00 e8                	add    %ch,%al
 589:	3f                   	(bad)  
 58a:	00 00                	add    %al,(%rax)
 58c:	00 00                	add    %al,(%rax)
 58e:	00 00                	add    %al,(%rax)
 590:	06                   	(bad)  
 591:	00 00                	add    %al,(%rax)
 593:	00 06                	add    %al,(%rsi)
	...
 59d:	00 00                	add    %al,(%rax)
 59f:	00 f0                	add    %dh,%al
 5a1:	3f                   	(bad)  
 5a2:	00 00                	add    %al,(%rax)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	00 00                	add    %al,(%rax)
 5a8:	06                   	(bad)  
 5a9:	00 00                	add    %al,(%rax)
 5ab:	00 08                	add    %cl,(%rax)
	...
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 f8                	add    %bh,%al
 5b9:	3f                   	(bad)  
 5ba:	00 00                	add    %al,(%rax)
 5bc:	00 00                	add    %al,(%rax)
 5be:	00 00                	add    %al,(%rax)
 5c0:	06                   	(bad)  
 5c1:	00 00                	add    %al,(%rax)
 5c3:	00 0a                	add    %cl,(%rdx)
	...

Disassembly of section .rela.plt:

00000000000005d0 <.rela.plt>:
 5d0:	18 40 00             	sbb    %al,0x0(%rax)
 5d3:	00 00                	add    %al,(%rax)
 5d5:	00 00                	add    %al,(%rax)
 5d7:	00 07                	add    %al,(%rdi)
 5d9:	00 00                	add    %al,(%rax)
 5db:	00 02                	add    %al,(%rdx)
	...
 5e5:	00 00                	add    %al,(%rax)
 5e7:	00 20                	add    %ah,(%rax)
 5e9:	40 00 00             	add    %al,(%rax)
 5ec:	00 00                	add    %al,(%rax)
 5ee:	00 00                	add    %al,(%rax)
 5f0:	07                   	(bad)  
 5f1:	00 00                	add    %al,(%rax)
 5f3:	00 03                	add    %al,(%rbx)
	...
 5fd:	00 00                	add    %al,(%rax)
 5ff:	00 28                	add    %ch,(%rax)
 601:	40 00 00             	add    %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 00                	add    %al,(%rax)
 608:	07                   	(bad)  
 609:	00 00                	add    %al,(%rax)
 60b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 616:	00 00                	add    %al,(%rax)
 618:	30 40 00             	xor    %al,0x0(%rax)
 61b:	00 00                	add    %al,(%rax)
 61d:	00 00                	add    %al,(%rax)
 61f:	00 07                	add    %al,(%rdi)
 621:	00 00                	add    %al,(%rax)
 623:	00 07                	add    %al,(%rdi)
	...
 62d:	00 00                	add    %al,(%rax)
 62f:	00 38                	add    %bh,(%rax)
 631:	40 00 00             	add    %al,(%rax)
 634:	00 00                	add    %al,(%rax)
 636:	00 00                	add    %al,(%rax)
 638:	07                   	(bad)  
 639:	00 00                	add    %al,(%rax)
 63b:	00 09                	add    %cl,(%rcx)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <strcpy@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <strcpy@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <puts@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <puts@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <printf@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <printf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <strtok@plt>:
    1060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4030 <strtok@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <strdup@plt>:
    1070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4038 <strdup@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1086:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001090 <_start>:
    1090:	31 ed                	xor    %ebp,%ebp
    1092:	49 89 d1             	mov    %rdx,%r9
    1095:	5e                   	pop    %rsi
    1096:	48 89 e2             	mov    %rsp,%rdx
    1099:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    109d:	50                   	push   %rax
    109e:	54                   	push   %rsp
    109f:	4c 8d 05 4a 02 00 00 	lea    0x24a(%rip),%r8        # 12f0 <__libc_csu_fini>
    10a6:	48 8d 0d e3 01 00 00 	lea    0x1e3(%rip),%rcx        # 1290 <__libc_csu_init>
    10ad:	48 8d 3d 7a 01 00 00 	lea    0x17a(%rip),%rdi        # 122e <main>
    10b4:	ff 15 26 2f 00 00    	callq  *0x2f26(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ba:	f4                   	hlt    
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <deregister_tm_clones>:
    10c0:	48 8d 3d 89 2f 00 00 	lea    0x2f89(%rip),%rdi        # 4050 <__TMC_END__>
    10c7:	48 8d 05 82 2f 00 00 	lea    0x2f82(%rip),%rax        # 4050 <__TMC_END__>
    10ce:	48 39 f8             	cmp    %rdi,%rax
    10d1:	74 15                	je     10e8 <deregister_tm_clones+0x28>
    10d3:	48 8b 05 fe 2e 00 00 	mov    0x2efe(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10da:	48 85 c0             	test   %rax,%rax
    10dd:	74 09                	je     10e8 <deregister_tm_clones+0x28>
    10df:	ff e0                	jmpq   *%rax
    10e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10e8:	c3                   	retq   
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <register_tm_clones>:
    10f0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4050 <__TMC_END__>
    10f7:	48 8d 35 52 2f 00 00 	lea    0x2f52(%rip),%rsi        # 4050 <__TMC_END__>
    10fe:	48 29 fe             	sub    %rdi,%rsi
    1101:	48 c1 fe 03          	sar    $0x3,%rsi
    1105:	48 89 f0             	mov    %rsi,%rax
    1108:	48 c1 e8 3f          	shr    $0x3f,%rax
    110c:	48 01 c6             	add    %rax,%rsi
    110f:	48 d1 fe             	sar    %rsi
    1112:	74 14                	je     1128 <register_tm_clones+0x38>
    1114:	48 8b 05 d5 2e 00 00 	mov    0x2ed5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    111b:	48 85 c0             	test   %rax,%rax
    111e:	74 08                	je     1128 <register_tm_clones+0x38>
    1120:	ff e0                	jmpq   *%rax
    1122:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1128:	c3                   	retq   
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <__do_global_dtors_aux>:
    1130:	80 3d 19 2f 00 00 00 	cmpb   $0x0,0x2f19(%rip)        # 4050 <__TMC_END__>
    1137:	75 2f                	jne    1168 <__do_global_dtors_aux+0x38>
    1139:	55                   	push   %rbp
    113a:	48 83 3d b6 2e 00 00 	cmpq   $0x0,0x2eb6(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1141:	00 
    1142:	48 89 e5             	mov    %rsp,%rbp
    1145:	74 0c                	je     1153 <__do_global_dtors_aux+0x23>
    1147:	48 8b 3d fa 2e 00 00 	mov    0x2efa(%rip),%rdi        # 4048 <__dso_handle>
    114e:	e8 2d ff ff ff       	callq  1080 <__cxa_finalize@plt>
    1153:	e8 68 ff ff ff       	callq  10c0 <deregister_tm_clones>
    1158:	c6 05 f1 2e 00 00 01 	movb   $0x1,0x2ef1(%rip)        # 4050 <__TMC_END__>
    115f:	5d                   	pop    %rbp
    1160:	c3                   	retq   
    1161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1168:	c3                   	retq   
    1169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001170 <frame_dummy>:
    1170:	e9 7b ff ff ff       	jmpq   10f0 <register_tm_clones>

0000000000001175 <print_domain>:
    1175:	55                   	push   %rbp
    1176:	48 89 e5             	mov    %rsp,%rbp
    1179:	48 83 ec 10          	sub    $0x10,%rsp
    117d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1181:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1185:	48 89 c6             	mov    %rax,%rsi
    1188:	48 8d 3d 75 0e 00 00 	lea    0xe75(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    118f:	b8 00 00 00 00       	mov    $0x0,%eax
    1194:	e8 b7 fe ff ff       	callq  1050 <printf@plt>
    1199:	90                   	nop
    119a:	c9                   	leaveq 
    119b:	c3                   	retq   

000000000000119c <parse>:
    119c:	55                   	push   %rbp
    119d:	48 89 e5             	mov    %rsp,%rbp
    11a0:	48 81 ec 20 04 00 00 	sub    $0x420,%rsp
    11a7:	48 89 bd e8 fb ff ff 	mov    %rdi,-0x418(%rbp)
    11ae:	48 83 bd e8 fb ff ff 	cmpq   $0x0,-0x418(%rbp)
    11b5:	00 
    11b6:	74 72                	je     122a <parse+0x8e>
    11b8:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
    11bf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11c3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11c7:	48 8d 35 44 0e 00 00 	lea    0xe44(%rip),%rsi        # 2012 <_IO_stdin_used+0x12>
    11ce:	48 89 c7             	mov    %rax,%rdi
    11d1:	e8 8a fe ff ff       	callq  1060 <strtok@plt>
    11d6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    11da:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    11df:	74 3f                	je     1220 <parse+0x84>
    11e1:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    11e6:	75 2e                	jne    1216 <parse+0x7a>
    11e8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    11ec:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
    11f3:	48 89 d6             	mov    %rdx,%rsi
    11f6:	48 89 c7             	mov    %rax,%rdi
    11f9:	e8 32 fe ff ff       	callq  1030 <strcpy@plt>
    11fe:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
    1205:	48 89 c7             	mov    %rax,%rdi
    1208:	e8 68 ff ff ff       	callq  1175 <print_domain>
    120d:	48 8d 05 00 0e 00 00 	lea    0xe00(%rip),%rax        # 2014 <_IO_stdin_used+0x14>
    1214:	eb 16                	jmp    122c <parse+0x90>
    1216:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    121d:	00 
    121e:	eb a3                	jmp    11c3 <parse+0x27>
    1220:	90                   	nop
    1221:	48 8d 05 f0 0d 00 00 	lea    0xdf0(%rip),%rax        # 2018 <_IO_stdin_used+0x18>
    1228:	eb 02                	jmp    122c <parse+0x90>
    122a:	90                   	nop
    122b:	90                   	nop
    122c:	c9                   	leaveq 
    122d:	c3                   	retq   

000000000000122e <main>:
    122e:	55                   	push   %rbp
    122f:	48 89 e5             	mov    %rsp,%rbp
    1232:	48 83 ec 10          	sub    $0x10,%rsp
    1236:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1239:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    123d:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    1241:	7f 13                	jg     1256 <main+0x28>
    1243:	48 8d 3d d1 0d 00 00 	lea    0xdd1(%rip),%rdi        # 201b <_IO_stdin_used+0x1b>
    124a:	e8 f1 fd ff ff       	callq  1040 <puts@plt>
    124f:	b8 01 00 00 00       	mov    $0x1,%eax
    1254:	eb 34                	jmp    128a <main+0x5c>
    1256:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    125a:	48 83 c0 08          	add    $0x8,%rax
    125e:	48 8b 00             	mov    (%rax),%rax
    1261:	48 89 c7             	mov    %rax,%rdi
    1264:	e8 07 fe ff ff       	callq  1070 <strdup@plt>
    1269:	48 89 c7             	mov    %rax,%rdi
    126c:	e8 2b ff ff ff       	callq  119c <parse>
    1271:	48 89 c6             	mov    %rax,%rsi
    1274:	48 8d 3d bc 0d 00 00 	lea    0xdbc(%rip),%rdi        # 2037 <_IO_stdin_used+0x37>
    127b:	b8 00 00 00 00       	mov    $0x0,%eax
    1280:	e8 cb fd ff ff       	callq  1050 <printf@plt>
    1285:	b8 00 00 00 00       	mov    $0x0,%eax
    128a:	c9                   	leaveq 
    128b:	c3                   	retq   
    128c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001290 <__libc_csu_init>:
    1290:	41 57                	push   %r15
    1292:	49 89 d7             	mov    %rdx,%r15
    1295:	41 56                	push   %r14
    1297:	49 89 f6             	mov    %rsi,%r14
    129a:	41 55                	push   %r13
    129c:	41 89 fd             	mov    %edi,%r13d
    129f:	41 54                	push   %r12
    12a1:	4c 8d 25 40 2b 00 00 	lea    0x2b40(%rip),%r12        # 3de8 <__frame_dummy_init_array_entry>
    12a8:	55                   	push   %rbp
    12a9:	48 8d 2d 40 2b 00 00 	lea    0x2b40(%rip),%rbp        # 3df0 <__init_array_end>
    12b0:	53                   	push   %rbx
    12b1:	4c 29 e5             	sub    %r12,%rbp
    12b4:	48 83 ec 08          	sub    $0x8,%rsp
    12b8:	e8 43 fd ff ff       	callq  1000 <_init>
    12bd:	48 c1 fd 03          	sar    $0x3,%rbp
    12c1:	74 1b                	je     12de <__libc_csu_init+0x4e>
    12c3:	31 db                	xor    %ebx,%ebx
    12c5:	0f 1f 00             	nopl   (%rax)
    12c8:	4c 89 fa             	mov    %r15,%rdx
    12cb:	4c 89 f6             	mov    %r14,%rsi
    12ce:	44 89 ef             	mov    %r13d,%edi
    12d1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    12d5:	48 83 c3 01          	add    $0x1,%rbx
    12d9:	48 39 dd             	cmp    %rbx,%rbp
    12dc:	75 ea                	jne    12c8 <__libc_csu_init+0x38>
    12de:	48 83 c4 08          	add    $0x8,%rsp
    12e2:	5b                   	pop    %rbx
    12e3:	5d                   	pop    %rbp
    12e4:	41 5c                	pop    %r12
    12e6:	41 5d                	pop    %r13
    12e8:	41 5e                	pop    %r14
    12ea:	41 5f                	pop    %r15
    12ec:	c3                   	retq   
    12ed:	0f 1f 00             	nopl   (%rax)

00000000000012f0 <__libc_csu_fini>:
    12f0:	c3                   	retq   

Disassembly of section .fini:

00000000000012f4 <_fini>:
    12f4:	48 83 ec 08          	sub    $0x8,%rsp
    12f8:	48 83 c4 08          	add    $0x8,%rsp
    12fc:	c3                   	retq   

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	44 6f                	rex.R outsl %ds:(%rsi),(%dx)
    2006:	6d                   	insl   (%dx),%es:(%rdi)
    2007:	61                   	(bad)  
    2008:	69 6e 20 69 73 20 25 	imul   $0x25207369,0x20(%rsi),%ebp
    200f:	73 0a                	jae    201b <_IO_stdin_used+0x1b>
    2011:	00 40 00             	add    %al,0x0(%rax)
    2014:	59                   	pop    %rcx
    2015:	45 53                	rex.RB push %r11
    2017:	00 4e 4f             	add    %cl,0x4f(%rsi)
    201a:	00 2e                	add    %ch,(%rsi)
    201c:	2f                   	(bad)  
    201d:	67 65 74 64          	addr32 gs je 2085 <__GNU_EH_FRAME_HDR+0x39>
    2021:	6f                   	outsl  %ds:(%rsi),(%dx)
    2022:	6d                   	insl   (%dx),%es:(%rdi)
    2023:	61                   	(bad)  
    2024:	69 6e 20 3c 65 6d 61 	imul   $0x616d653c,0x20(%rsi),%ebp
    202b:	69 6c 5f 61 64 64 72 	imul   $0x65726464,0x61(%rdi,%rbx,2),%ebp
    2032:	65 
    2033:	73 73                	jae    20a8 <__GNU_EH_FRAME_HDR+0x5c>
    2035:	3e 00 44 6f 6d       	add    %al,%ds:0x6d(%rdi,%rbp,2)
    203a:	61                   	(bad)  
    203b:	69 6e 20 69 73 20 76 	imul   $0x76207369,0x20(%rsi),%ebp
    2042:	61                   	(bad)  
    2043:	6c                   	insb   (%dx),%es:(%rdi)
    2044:	69 64 3f 20 25 73 0a 	imul   $0xa7325,0x20(%rdi,%rdi,1),%esp
    204b:	00 

Disassembly of section .eh_frame_hdr:

000000000000204c <__GNU_EH_FRAME_HDR>:
    204c:	01 1b                	add    %ebx,(%rbx)
    204e:	03 3b                	add    (%rbx),%edi
    2050:	48 00 00             	rex.W add %al,(%rax)
    2053:	00 08                	add    %cl,(%rax)
    2055:	00 00                	add    %al,(%rax)
    2057:	00 d4                	add    %dl,%ah
    2059:	ef                   	out    %eax,(%dx)
    205a:	ff                   	(bad)  
    205b:	ff 94 00 00 00 34 f0 	callq  *-0xfcc0000(%rax,%rax,1)
    2062:	ff                   	(bad)  
    2063:	ff                   	(bad)  
    2064:	bc 00 00 00 44       	mov    $0x44000000,%esp
    2069:	f0 ff                	lock (bad) 
    206b:	ff 64 00 00          	jmpq   *0x0(%rax,%rax,1)
    206f:	00 29                	add    %ch,(%rcx)
    2071:	f1                   	icebp  
    2072:	ff                   	(bad)  
    2073:	ff d4                	callq  *%rsp
    2075:	00 00                	add    %al,(%rax)
    2077:	00 50 f1             	add    %dl,-0xf(%rax)
    207a:	ff                   	(bad)  
    207b:	ff f4                	push   %rsp
    207d:	00 00                	add    %al,(%rax)
    207f:	00 e2                	add    %ah,%dl
    2081:	f1                   	icebp  
    2082:	ff                   	(bad)  
    2083:	ff 14 01             	callq  *(%rcx,%rax,1)
    2086:	00 00                	add    %al,(%rax)
    2088:	44                   	rex.R
    2089:	f2 ff                	repnz (bad) 
    208b:	ff 34 01             	pushq  (%rcx,%rax,1)
    208e:	00 00                	add    %al,(%rax)
    2090:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    2091:	f2 ff                	repnz (bad) 
    2093:	ff                   	(bad)  
    2094:	7c 01                	jl     2097 <__GNU_EH_FRAME_HDR+0x4b>
	...

Disassembly of section .eh_frame:

0000000000002098 <__FRAME_END__-0x144>:
    2098:	14 00                	adc    $0x0,%al
    209a:	00 00                	add    %al,(%rax)
    209c:	00 00                	add    %al,(%rax)
    209e:	00 00                	add    %al,(%rax)
    20a0:	01 7a 52             	add    %edi,0x52(%rdx)
    20a3:	00 01                	add    %al,(%rcx)
    20a5:	78 10                	js     20b7 <__GNU_EH_FRAME_HDR+0x6b>
    20a7:	01 1b                	add    %ebx,(%rbx)
    20a9:	0c 07                	or     $0x7,%al
    20ab:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
    20b1:	00 00                	add    %al,(%rax)
    20b3:	00 1c 00             	add    %bl,(%rax,%rax,1)
    20b6:	00 00                	add    %al,(%rax)
    20b8:	d8 ef                	fsubr  %st(7),%st
    20ba:	ff                   	(bad)  
    20bb:	ff 2b                	ljmp   *(%rbx)
	...
    20c5:	00 00                	add    %al,(%rax)
    20c7:	00 14 00             	add    %dl,(%rax,%rax,1)
    20ca:	00 00                	add    %al,(%rax)
    20cc:	00 00                	add    %al,(%rax)
    20ce:	00 00                	add    %al,(%rax)
    20d0:	01 7a 52             	add    %edi,0x52(%rdx)
    20d3:	00 01                	add    %al,(%rcx)
    20d5:	78 10                	js     20e7 <__GNU_EH_FRAME_HDR+0x9b>
    20d7:	01 1b                	add    %ebx,(%rbx)
    20d9:	0c 07                	or     $0x7,%al
    20db:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
    20e1:	00 00                	add    %al,(%rax)
    20e3:	00 1c 00             	add    %bl,(%rax,%rax,1)
    20e6:	00 00                	add    %al,(%rax)
    20e8:	38 ef                	cmp    %ch,%bh
    20ea:	ff                   	(bad)  
    20eb:	ff 60 00             	jmpq   *0x0(%rax)
    20ee:	00 00                	add    %al,(%rax)
    20f0:	00 0e                	add    %cl,(%rsi)
    20f2:	10 46 0e             	adc    %al,0xe(%rsi)
    20f5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    20f8:	0b 77 08             	or     0x8(%rdi),%esi
    20fb:	80 00 3f             	addb   $0x3f,(%rax)
    20fe:	1a 3b                	sbb    (%rbx),%bh
    2100:	2a 33                	sub    (%rbx),%dh
    2102:	24 22                	and    $0x22,%al
    2104:	00 00                	add    %al,(%rax)
    2106:	00 00                	add    %al,(%rax)
    2108:	14 00                	adc    $0x0,%al
    210a:	00 00                	add    %al,(%rax)
    210c:	44 00 00             	add    %r8b,(%rax)
    210f:	00 70 ef             	add    %dh,-0x11(%rax)
    2112:	ff                   	(bad)  
    2113:	ff 08                	decl   (%rax)
	...
    211d:	00 00                	add    %al,(%rax)
    211f:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2122:	00 00                	add    %al,(%rax)
    2124:	5c                   	pop    %rsp
    2125:	00 00                	add    %al,(%rax)
    2127:	00 4d f0             	add    %cl,-0x10(%rbp)
    212a:	ff                   	(bad)  
    212b:	ff 27                	jmpq   *(%rdi)
    212d:	00 00                	add    %al,(%rax)
    212f:	00 00                	add    %al,(%rax)
    2131:	41 0e                	rex.B (bad) 
    2133:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    2139:	62                   	(bad)  
    213a:	0c 07                	or     $0x7,%al
    213c:	08 00                	or     %al,(%rax)
    213e:	00 00                	add    %al,(%rax)
    2140:	1c 00                	sbb    $0x0,%al
    2142:	00 00                	add    %al,(%rax)
    2144:	7c 00                	jl     2146 <__GNU_EH_FRAME_HDR+0xfa>
    2146:	00 00                	add    %al,(%rax)
    2148:	54                   	push   %rsp
    2149:	f0 ff                	lock (bad) 
    214b:	ff 92 00 00 00 00    	callq  *0x0(%rdx)
    2151:	41 0e                	rex.B (bad) 
    2153:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    2159:	02 8d 0c 07 08 00    	add    0x8070c(%rbp),%cl
    215f:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2162:	00 00                	add    %al,(%rax)
    2164:	9c                   	pushfq 
    2165:	00 00                	add    %al,(%rax)
    2167:	00 c6                	add    %al,%dh
    2169:	f0 ff                	lock (bad) 
    216b:	ff 5e 00             	lcall  *0x0(%rsi)
    216e:	00 00                	add    %al,(%rax)
    2170:	00 41 0e             	add    %al,0xe(%rcx)
    2173:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    2179:	02 59 0c             	add    0xc(%rcx),%bl
    217c:	07                   	(bad)  
    217d:	08 00                	or     %al,(%rax)
    217f:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    2183:	00 bc 00 00 00 08 f1 	add    %bh,-0xef80000(%rax,%rax,1)
    218a:	ff                   	(bad)  
    218b:	ff 5d 00             	lcall  *0x0(%rbp)
    218e:	00 00                	add    %al,(%rax)
    2190:	00 42 0e             	add    %al,0xe(%rdx)
    2193:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
    2199:	8e 03                	mov    (%rbx),%es
    219b:	45 0e                	rex.RB (bad) 
    219d:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    21a3:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86302ff1 <_end+0xffffffff862fef99>
    21a9:	06                   	(bad)  
    21aa:	48 0e                	rex.W (bad) 
    21ac:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    21b2:	6a 0e                	pushq  $0xe
    21b4:	38 41 0e             	cmp    %al,0xe(%rcx)
    21b7:	30 41 0e             	xor    %al,0xe(%rcx)
    21ba:	28 42 0e             	sub    %al,0xe(%rdx)
    21bd:	20 42 0e             	and    %al,0xe(%rdx)
    21c0:	18 42 0e             	sbb    %al,0xe(%rdx)
    21c3:	10 42 0e             	adc    %al,0xe(%rdx)
    21c6:	08 00                	or     %al,(%rax)
    21c8:	10 00                	adc    %al,(%rax)
    21ca:	00 00                	add    %al,(%rax)
    21cc:	04 01                	add    $0x1,%al
    21ce:	00 00                	add    %al,(%rax)
    21d0:	20 f1                	and    %dh,%cl
    21d2:	ff                   	(bad)  
    21d3:	ff 01                	incl   (%rcx)
    21d5:	00 00                	add    %al,(%rax)
    21d7:	00 00                	add    %al,(%rax)
    21d9:	00 00                	add    %al,(%rax)
	...

00000000000021dc <__FRAME_END__>:
    21dc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003de8 <__frame_dummy_init_array_entry>:
    3de8:	70 11                	jo     3dfb <_DYNAMIC+0x3>
    3dea:	00 00                	add    %al,(%rax)
    3dec:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003df0 <__do_global_dtors_aux_fini_array_entry>:
    3df0:	30 11                	xor    %dl,(%rcx)
    3df2:	00 00                	add    %al,(%rax)
    3df4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003df8 <_DYNAMIC>:
    3df8:	01 00                	add    %eax,(%rax)
    3dfa:	00 00                	add    %al,(%rax)
    3dfc:	00 00                	add    %al,(%rax)
    3dfe:	00 00                	add    %al,(%rax)
    3e00:	01 00                	add    %eax,(%rax)
    3e02:	00 00                	add    %al,(%rax)
    3e04:	00 00                	add    %al,(%rax)
    3e06:	00 00                	add    %al,(%rax)
    3e08:	0c 00                	or     $0x0,%al
    3e0a:	00 00                	add    %al,(%rax)
    3e0c:	00 00                	add    %al,(%rax)
    3e0e:	00 00                	add    %al,(%rax)
    3e10:	00 10                	add    %dl,(%rax)
    3e12:	00 00                	add    %al,(%rax)
    3e14:	00 00                	add    %al,(%rax)
    3e16:	00 00                	add    %al,(%rax)
    3e18:	0d 00 00 00 00       	or     $0x0,%eax
    3e1d:	00 00                	add    %al,(%rax)
    3e1f:	00 f4                	add    %dh,%ah
    3e21:	12 00                	adc    (%rax),%al
    3e23:	00 00                	add    %al,(%rax)
    3e25:	00 00                	add    %al,(%rax)
    3e27:	00 19                	add    %bl,(%rcx)
    3e29:	00 00                	add    %al,(%rax)
    3e2b:	00 00                	add    %al,(%rax)
    3e2d:	00 00                	add    %al,(%rax)
    3e2f:	00 e8                	add    %ch,%al
    3e31:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e36:	00 00                	add    %al,(%rax)
    3e38:	1b 00                	sbb    (%rax),%eax
    3e3a:	00 00                	add    %al,(%rax)
    3e3c:	00 00                	add    %al,(%rax)
    3e3e:	00 00                	add    %al,(%rax)
    3e40:	08 00                	or     %al,(%rax)
    3e42:	00 00                	add    %al,(%rax)
    3e44:	00 00                	add    %al,(%rax)
    3e46:	00 00                	add    %al,(%rax)
    3e48:	1a 00                	sbb    (%rax),%al
    3e4a:	00 00                	add    %al,(%rax)
    3e4c:	00 00                	add    %al,(%rax)
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	f0 3d 00 00 00 00    	lock cmp $0x0,%eax
    3e56:	00 00                	add    %al,(%rax)
    3e58:	1c 00                	sbb    $0x0,%al
    3e5a:	00 00                	add    %al,(%rax)
    3e5c:	00 00                	add    %al,(%rax)
    3e5e:	00 00                	add    %al,(%rax)
    3e60:	08 00                	or     %al,(%rax)
    3e62:	00 00                	add    %al,(%rax)
    3e64:	00 00                	add    %al,(%rax)
    3e66:	00 00                	add    %al,(%rax)
    3e68:	f5                   	cmc    
    3e69:	fe                   	(bad)  
    3e6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 08                	add    %cl,(%rax)
    3e71:	03 00                	add    (%rax),%eax
    3e73:	00 00                	add    %al,(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e7d <_DYNAMIC+0x85>
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 38                	add    %bh,(%rax)
    3e81:	04 00                	add    $0x0,%al
    3e83:	00 00                	add    %al,(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 06                	add    %al,(%rsi)
    3e89:	00 00                	add    %al,(%rax)
    3e8b:	00 00                	add    %al,(%rax)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 30                	add    %dh,(%rax)
    3e91:	03 00                	add    (%rax),%eax
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 0a                	add    %cl,(%rdx)
    3e99:	00 00                	add    %al,(%rax)
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 9e 00 00 00 00    	add    %bl,0x0(%rsi)
    3ea5:	00 00                	add    %al,(%rax)
    3ea7:	00 0b                	add    %cl,(%rbx)
    3ea9:	00 00                	add    %al,(%rax)
    3eab:	00 00                	add    %al,(%rax)
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 18                	add    %bl,(%rax)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	00 00                	add    %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3ebd <_DYNAMIC+0xc5>
	...
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 03                	add    %al,(%rbx)
	...
    3ed1:	40 00 00             	add    %al,(%rax)
    3ed4:	00 00                	add    %al,(%rax)
    3ed6:	00 00                	add    %al,(%rax)
    3ed8:	02 00                	add    (%rax),%al
    3eda:	00 00                	add    %al,(%rax)
    3edc:	00 00                	add    %al,(%rax)
    3ede:	00 00                	add    %al,(%rax)
    3ee0:	78 00                	js     3ee2 <_DYNAMIC+0xea>
    3ee2:	00 00                	add    %al,(%rax)
    3ee4:	00 00                	add    %al,(%rax)
    3ee6:	00 00                	add    %al,(%rax)
    3ee8:	14 00                	adc    $0x0,%al
    3eea:	00 00                	add    %al,(%rax)
    3eec:	00 00                	add    %al,(%rax)
    3eee:	00 00                	add    %al,(%rax)
    3ef0:	07                   	(bad)  
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 17                	add    %dl,(%rdi)
    3ef9:	00 00                	add    %al,(%rax)
    3efb:	00 00                	add    %al,(%rax)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 d0                	add    %dl,%al
    3f01:	05 00 00 00 00       	add    $0x0,%eax
    3f06:	00 00                	add    %al,(%rax)
    3f08:	07                   	(bad)  
    3f09:	00 00                	add    %al,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 10                	add    %dl,(%rax)
    3f11:	05 00 00 00 00       	add    $0x0,%eax
    3f16:	00 00                	add    %al,(%rax)
    3f18:	08 00                	or     %al,(%rax)
    3f1a:	00 00                	add    %al,(%rax)
    3f1c:	00 00                	add    %al,(%rax)
    3f1e:	00 00                	add    %al,(%rax)
    3f20:	c0 00 00             	rolb   $0x0,(%rax)
    3f23:	00 00                	add    %al,(%rax)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 09                	add    %cl,(%rcx)
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	00 00                	add    %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 18                	add    %bl,(%rax)
    3f31:	00 00                	add    %al,(%rax)
    3f33:	00 00                	add    %al,(%rax)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 fb                	add    %bh,%bl
    3f39:	ff                   	(bad)  
    3f3a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 00                	add    %al,(%rax)
    3f41:	00 00                	add    %al,(%rax)
    3f43:	08 00                	or     %al,(%rax)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 fe                	add    %bh,%dh
    3f49:	ff                   	(bad)  
    3f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 f0                	add    %dh,%al
    3f51:	04 00                	add    $0x0,%al
    3f53:	00 00                	add    %al,(%rax)
    3f55:	00 00                	add    %al,(%rax)
    3f57:	00 ff                	add    %bh,%bh
    3f59:	ff                   	(bad)  
    3f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f5d:	00 00                	add    %al,(%rax)
    3f5f:	00 01                	add    %al,(%rcx)
    3f61:	00 00                	add    %al,(%rax)
    3f63:	00 00                	add    %al,(%rax)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 f0                	add    %dh,%al
    3f69:	ff                   	(bad)  
    3f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f6d:	00 00                	add    %al,(%rax)
    3f6f:	00 d6                	add    %dl,%dh
    3f71:	04 00                	add    $0x0,%al
    3f73:	00 00                	add    %al,(%rax)
    3f75:	00 00                	add    %al,(%rax)
    3f77:	00 f9                	add    %bh,%cl
    3f79:	ff                   	(bad)  
    3f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f7d:	00 00                	add    %al,(%rax)
    3f7f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003fd8 <.got>:
	...

Disassembly of section .got.plt:

0000000000004000 <_GLOBAL_OFFSET_TABLE_>:
    4000:	f8                   	clc    
    4001:	3d 00 00 00 00       	cmp    $0x0,%eax
	...
    4016:	00 00                	add    %al,(%rax)
    4018:	36 10 00             	adc    %al,%ss:(%rax)
    401b:	00 00                	add    %al,(%rax)
    401d:	00 00                	add    %al,(%rax)
    401f:	00 46 10             	add    %al,0x10(%rsi)
    4022:	00 00                	add    %al,(%rax)
    4024:	00 00                	add    %al,(%rax)
    4026:	00 00                	add    %al,(%rax)
    4028:	56                   	push   %rsi
    4029:	10 00                	adc    %al,(%rax)
    402b:	00 00                	add    %al,(%rax)
    402d:	00 00                	add    %al,(%rax)
    402f:	00 66 10             	add    %ah,0x10(%rsi)
    4032:	00 00                	add    %al,(%rax)
    4034:	00 00                	add    %al,(%rax)
    4036:	00 00                	add    %al,(%rax)
    4038:	76 10                	jbe    404a <__dso_handle+0x2>
    403a:	00 00                	add    %al,(%rax)
    403c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000004040 <__data_start>:
	...

0000000000004048 <__dso_handle>:
    4048:	48                   	rex.W
    4049:	40 00 00             	add    %al,(%rax)
    404c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000004050 <__bss_start>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 38 2e 33 	imul   $0x332e3820,0x6e(%rcx),%esp
  10:	2e 30 2d 36 29 20 38 	xor    %ch,%cs:0x38202936(%rip)        # 3820294d <_end+0x381fe8f5>
  17:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  1a:	30 00                	xor    %al,(%rax)
