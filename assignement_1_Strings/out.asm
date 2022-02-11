
Assignment/out.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 25 45 00 00 	mov    0x4525(%rip),%rax        # 140005540 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 26 45 00 00 	mov    0x4526(%rip),%rax        # 140005550 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 29 45 00 00 	mov    0x4529(%rip),%rax        # 140005560 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 9c 44 00 00 	mov    0x449c(%rip),%rax        # 1400054e0 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 cf 44 00 00 	mov    0x44cf(%rip),%rax        # 140005530 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 6f 00 00    	mov    %ecx,0x6fb9(%rip)        # 140008020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 d1 23 00 00       	call   140003448 <__set_app_type>
   140001077:	e8 44 23 00 00       	call   1400033c0 <__p__fmode>
   14000107c:	48 8b 15 7d 45 00 00 	mov    0x457d(%rip),%rdx        # 140005600 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 44 23 00 00       	call   1400033d0 <__p__commode>
   14000108c:	48 8b 15 4d 45 00 00 	mov    0x454d(%rip),%rdx        # 1400055e0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 34 13 00 00       	call   1400023d0 <_setargv>
   14000109c:	48 8b 05 cd 43 00 00 	mov    0x43cd(%rip),%rax        # 140005470 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 8e 23 00 00       	call   140003448 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 21 45 00 00 	mov    0x4521(%rip),%rcx        # 140005620 <.refptr._matherr>
   1400010ff:	e8 2c 1a 00 00       	call   140002b30 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret    
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 f5 44 00 00 	mov    0x44f5(%rip),%rax        # 140005630 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 6e 00 00 	lea    0x6ee6(%rip),%r8        # 140008028 <envp>
   140001142:	48 8d 15 e7 6e 00 00 	lea    0x6ee7(%rip),%rdx        # 140008030 <argv>
   140001149:	48 8d 0d e8 6e 00 00 	lea    0x6ee8(%rip),%rcx        # 140008038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 6e 00 00    	mov    %eax,0x6ec0(%rip)        # 140008018 <startinfo>
   140001158:	48 8d 05 b9 6e 00 00 	lea    0x6eb9(%rip),%rax        # 140008018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 85 44 00 00 	mov    0x4485(%rip),%rax        # 1400055f0 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 c5 22 00 00       	call   140003438 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret    
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 55                	push   %r13
   140001182:	41 54                	push   %r12
   140001184:	55                   	push   %rbp
   140001185:	57                   	push   %rdi
   140001186:	56                   	push   %rsi
   140001187:	53                   	push   %rbx
   140001188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   140001194:	31 c0                	xor    %eax,%eax
   140001196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   14000119b:	4c 89 c7             	mov    %r8,%rdi
   14000119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011a1:	48 8b 3d 88 43 00 00 	mov    0x4388(%rip),%rdi        # 140005530 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d bc 43 00 00 	mov    0x43bc(%rip),%rbx        # 140005580 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 43 81 00 00 	mov    0x8143(%rip),%r12        # 140009314 <__imp_Sleep>
   1400011d1:	eb 16                	jmp    1400011e9 <__tmainCRTStartup+0x69>
   1400011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011d8:	48 39 c6             	cmp    %rax,%rsi
   1400011db:	0f 84 17 02 00 00    	je     1400013f8 <__tmainCRTStartup+0x278>
   1400011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011e6:	41 ff d4             	call   *%r12
   1400011e9:	48 89 e8             	mov    %rbp,%rax
   1400011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011f1:	48 85 c0             	test   %rax,%rax
   1400011f4:	75 e2                	jne    1400011d8 <__tmainCRTStartup+0x58>
   1400011f6:	48 8b 35 93 43 00 00 	mov    0x4393(%rip),%rsi        # 140005590 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 05 02 00 00    	je     14000140f <__tmainCRTStartup+0x28f>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 6d 00 00 01 	movl   $0x1,0x6dfe(%rip)        # 14000801c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 fb 01 00 00    	je     140001424 <__tmainCRTStartup+0x2a4>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 14 02 00 00    	je     140001445 <__tmainCRTStartup+0x2c5>
   140001231:	48 8b 05 98 42 00 00 	mov    0x4298(%rip),%rax        # 1400054d0 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 4f 15 00 00       	call   1400027a0 <_pei386_runtime_relocator>
   140001251:	48 8b 0d b8 43 00 00 	mov    0x43b8(%rip),%rcx        # 140005610 <.refptr._gnu_exception_handler>
   140001258:	ff 15 ae 80 00 00    	call   *0x80ae(%rip)        # 14000930c <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 0b 43 00 00 	mov    0x430b(%rip),%rdx        # 140005570 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 8c 21 00 00       	call   140003400 <_set_invalid_parameter_handler>
   140001274:	e8 37 13 00 00       	call   1400025b0 <_fpreset>
   140001279:	48 8b 05 60 42 00 00 	mov    0x4260(%rip),%rax        # 1400054e0 <.refptr.__image_base__>
   140001280:	48 89 05 89 6d 00 00 	mov    %rax,0x6d89(%rip)        # 140008010 <__mingw_winmain_hInstance>
   140001287:	e8 54 21 00 00       	call   1400033e0 <__p__acmdln>
   14000128c:	31 c9                	xor    %ecx,%ecx
   14000128e:	48 8b 00             	mov    (%rax),%rax
   140001291:	48 85 c0             	test   %rax,%rax
   140001294:	75 1c                	jne    1400012b2 <__tmainCRTStartup+0x132>
   140001296:	eb 58                	jmp    1400012f0 <__tmainCRTStartup+0x170>
   140001298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000129f:	00 
   1400012a0:	84 d2                	test   %dl,%dl
   1400012a2:	74 45                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012a4:	83 e1 01             	and    $0x1,%ecx
   1400012a7:	74 27                	je     1400012d0 <__tmainCRTStartup+0x150>
   1400012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012ae:	48 83 c0 01          	add    $0x1,%rax
   1400012b2:	0f b6 10             	movzbl (%rax),%edx
   1400012b5:	80 fa 20             	cmp    $0x20,%dl
   1400012b8:	7e e6                	jle    1400012a0 <__tmainCRTStartup+0x120>
   1400012ba:	41 89 c8             	mov    %ecx,%r8d
   1400012bd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012c1:	80 fa 22             	cmp    $0x22,%dl
   1400012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012c8:	eb e4                	jmp    1400012ae <__tmainCRTStartup+0x12e>
   1400012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012d0:	84 d2                	test   %dl,%dl
   1400012d2:	74 15                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012dc:	48 83 c0 01          	add    $0x1,%rax
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 05                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012e4:	80 fa 20             	cmp    $0x20,%dl
   1400012e7:	7e ef                	jle    1400012d8 <__tmainCRTStartup+0x158>
   1400012e9:	48 89 05 18 6d 00 00 	mov    %rax,0x6d18(%rip)        # 140008008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 e0 00 00 00    	jne    1400013e8 <__tmainCRTStartup+0x268>
   140001308:	89 05 f2 2c 00 00    	mov    %eax,0x2cf2(%rip)        # 140004000 <__data_start__>
   14000130e:	48 63 2d 23 6d 00 00 	movslq 0x6d23(%rip),%rbp        # 140008038 <argc>
   140001315:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001319:	4d 63 e4             	movslq %r12d,%r12
   14000131c:	49 c1 e4 03          	shl    $0x3,%r12
   140001320:	4c 89 e1             	mov    %r12,%rcx
   140001323:	e8 80 21 00 00       	call   1400034a8 <malloc>
   140001328:	4c 8b 2d 01 6d 00 00 	mov    0x6d01(%rip),%r13        # 140008030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 76 21 00 00       	call   1400034c0 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 52 21 00 00       	call   1400034a8 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 42 21 00 00       	call   1400034b0 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 6c 00 00 	mov    %rdi,0x6caa(%rip)        # 140008030 <argv>
   140001386:	e8 25 10 00 00       	call   1400023b0 <__main>
   14000138b:	48 8b 05 5e 41 00 00 	mov    0x415e(%rip),%rax        # 1400054f0 <.refptr.__imp___initenv>
   140001392:	4c 8b 05 8f 6c 00 00 	mov    0x6c8f(%rip),%r8        # 140008028 <envp>
   140001399:	8b 0d 99 6c 00 00    	mov    0x6c99(%rip),%ecx        # 140008038 <argc>
   14000139f:	48 8b 00             	mov    (%rax),%rax
   1400013a2:	4c 89 00             	mov    %r8,(%rax)
   1400013a5:	48 8b 15 84 6c 00 00 	mov    0x6c84(%rip),%rdx        # 140008030 <argv>
   1400013ac:	e8 75 08 00 00       	call   140001c26 <main>
   1400013b1:	8b 0d 69 6c 00 00    	mov    0x6c69(%rip),%ecx        # 140008020 <managedapp>
   1400013b7:	89 05 67 6c 00 00    	mov    %eax,0x6c67(%rip)        # 140008024 <mainret>
   1400013bd:	85 c9                	test   %ecx,%ecx
   1400013bf:	0f 84 d9 00 00 00    	je     14000149e <__tmainCRTStartup+0x31e>
   1400013c5:	8b 15 51 6c 00 00    	mov    0x6c51(%rip),%edx        # 14000801c <has_cctor>
   1400013cb:	85 d2                	test   %edx,%edx
   1400013cd:	0f 84 8d 00 00 00    	je     140001460 <__tmainCRTStartup+0x2e0>
   1400013d3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013da:	5b                   	pop    %rbx
   1400013db:	5e                   	pop    %rsi
   1400013dc:	5f                   	pop    %rdi
   1400013dd:	5d                   	pop    %rbp
   1400013de:	41 5c                	pop    %r12
   1400013e0:	41 5d                	pop    %r13
   1400013e2:	c3                   	ret    
   1400013e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013e8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013ed:	e9 16 ff ff ff       	jmp    140001308 <__tmainCRTStartup+0x188>
   1400013f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400013f8:	48 8b 35 91 41 00 00 	mov    0x4191(%rip),%rsi        # 140005590 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 3f 20 00 00       	call   140003458 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 85 41 00 00 	mov    0x4185(%rip),%rdx        # 1400055b0 <.refptr.__xc_z>
   14000142b:	48 8b 0d 6e 41 00 00 	mov    0x416e(%rip),%rcx        # 1400055a0 <.refptr.__xc_a>
   140001432:	e8 31 20 00 00       	call   140003468 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 9b 7e 00 00    	call   *0x7e9b(%rip)        # 1400092f4 <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 fb 1f 00 00       	call   140003460 <_cexit>
   140001465:	8b 05 b9 6b 00 00    	mov    0x6bb9(%rip),%eax        # 140008024 <mainret>
   14000146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	41 5d                	pop    %r13
   14000147a:	c3                   	ret    
   14000147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001480:	48 8b 15 49 41 00 00 	mov    0x4149(%rip),%rdx        # 1400055d0 <.refptr.__xi_z>
   140001487:	48 8b 0d 32 41 00 00 	mov    0x4132(%rip),%rcx        # 1400055c0 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 cf 1f 00 00       	call   140003468 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 e3 1f 00 00       	call   140003488 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 75 40 00 00 	mov    0x4075(%rip),%rax        # 140005530 <.refptr.__mingw_app_type>
   1400014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014c1:	e8 ba fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014c6:	90                   	nop

00000001400014c7 <.l_endw>:
   1400014c7:	90                   	nop
   1400014c8:	48 83 c4 28          	add    $0x28,%rsp
   1400014cc:	c3                   	ret    
   1400014cd:	0f 1f 00             	nopl   (%rax)

00000001400014d0 <mainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_start>:
   1400014d4:	48 8b 05 55 40 00 00 	mov    0x4055(%rip),%rax        # 140005530 <.refptr.__mingw_app_type>
   1400014db:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014e1:	e8 9a fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_end>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)

00000001400014f0 <atexit>:
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f4:	e8 77 1f 00 00       	call   140003470 <_onexit>
   1400014f9:	48 83 f8 01          	cmp    $0x1,%rax
   1400014fd:	19 c0                	sbb    %eax,%eax
   1400014ff:	48 83 c4 28          	add    $0x28,%rsp
   140001503:	c3                   	ret    
   140001504:	90                   	nop
   140001505:	90                   	nop
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	90                   	nop
   140001509:	90                   	nop
   14000150a:	90                   	nop
   14000150b:	90                   	nop
   14000150c:	90                   	nop
   14000150d:	90                   	nop
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <__gcc_register_frame>:
   140001510:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001520 <__gcc_deregister_frame>
   140001517:	e9 d4 ff ff ff       	jmp    1400014f0 <atexit>
   14000151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001520 <__gcc_deregister_frame>:
   140001520:	c3                   	ret    
   140001521:	90                   	nop
   140001522:	90                   	nop
   140001523:	90                   	nop
   140001524:	90                   	nop
   140001525:	90                   	nop
   140001526:	90                   	nop
   140001527:	90                   	nop
   140001528:	90                   	nop
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
#define Movie3 "mkv"


// Function to calculate the size of One test case : it takes some of Lines(String) for calculations
void file_size(string test_cases )
{
   14000152f:	90                   	nop

0000000140001530 <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
   140001530:	55                   	push   %rbp
   140001531:	53                   	push   %rbx
   140001532:	48 81 ec 88 08 00 00 	sub    $0x888,%rsp
   140001539:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140001540:	00 
   140001541:	48 89 8d 20 08 00 00 	mov    %rcx,0x820(%rbp)
	stringstream fs(test_cases);//For group of lines (One Test Case)
   140001548:	ba 08 00 00 00       	mov    $0x8,%edx
   14000154d:	b9 10 00 00 00       	mov    $0x10,%ecx
   140001552:	e8 39 23 00 00       	call   140003890 <_ZStorSt13_Ios_OpenmodeS_>
   140001557:	89 c2                	mov    %eax,%edx
   140001559:	48 8d 85 70 06 00 00 	lea    0x670(%rbp),%rax
   140001560:	41 89 d0             	mov    %edx,%r8d
   140001563:	48 8b 95 20 08 00 00 	mov    0x820(%rbp),%rdx
   14000156a:	48 89 c1             	mov    %rax,%rcx
   14000156d:	e8 c6 0c 00 00       	call   140002238 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
	string line;
   140001572:	48 8d 85 50 06 00 00 	lea    0x650(%rbp),%rax
   140001579:	48 89 c1             	mov    %rax,%rcx
   14000157c:	e8 d7 0c 00 00       	call   140002258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
	string last_word;
   140001581:	48 8d 85 30 06 00 00 	lea    0x630(%rbp),%rax
   140001588:	48 89 c1             	mov    %rax,%rcx
   14000158b:	e8 c8 0c 00 00       	call   140002258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
	string file_extension;
   140001590:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   140001597:	48 89 c1             	mov    %rax,%rcx
   14000159a:	e8 b9 0c 00 00       	call   140002258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
	string file_size;
   14000159f:	48 8d 85 f0 05 00 00 	lea    0x5f0(%rbp),%rax
   1400015a6:	48 89 c1             	mov    %rax,%rcx
   1400015a9:	e8 aa 0c 00 00       	call   140002258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
	int music_size = 0 , image_size = 0, movie_size= 0 , others_size=0;
   1400015ae:	c7 85 ec 05 00 00 00 	movl   $0x0,0x5ec(%rbp)
   1400015b5:	00 00 00 
   1400015b8:	c7 85 e8 05 00 00 00 	movl   $0x0,0x5e8(%rbp)
   1400015bf:	00 00 00 
   1400015c2:	c7 85 e4 05 00 00 00 	movl   $0x0,0x5e4(%rbp)
   1400015c9:	00 00 00 
   1400015cc:	c7 85 e0 05 00 00 00 	movl   $0x0,0x5e0(%rbp)
   1400015d3:	00 00 00 
	int x;
	
	while (getline(fs, line, '\n'))
   1400015d6:	e9 28 04 00 00       	jmp    140001a03 <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x4d3>
		{
			stringstream linestream(line);//For Individual Line
   1400015db:	ba 08 00 00 00       	mov    $0x8,%edx
   1400015e0:	b9 10 00 00 00       	mov    $0x10,%ecx
   1400015e5:	e8 a6 22 00 00       	call   140003890 <_ZStorSt13_Ios_OpenmodeS_>
   1400015ea:	89 c1                	mov    %eax,%ecx
   1400015ec:	48 8d 95 50 06 00 00 	lea    0x650(%rbp),%rdx
   1400015f3:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   1400015f7:	41 89 c8             	mov    %ecx,%r8d
   1400015fa:	48 89 c1             	mov    %rax,%rcx
   1400015fd:	e8 36 0c 00 00       	call   140002238 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
			while(getline(linestream, last_word, '.'))
   140001602:	90                   	nop
   140001603:	48 8d 95 30 06 00 00 	lea    0x630(%rbp),%rdx
   14000160a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   14000160e:	41 b8 2e 00 00 00    	mov    $0x2e,%r8d
   140001614:	48 89 c1             	mov    %rax,%rcx
   140001617:	e8 e4 0b 00 00       	call   140002200 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>
   14000161c:	48 8b 10             	mov    (%rax),%rdx
   14000161f:	48 83 ea 18          	sub    $0x18,%rdx
   140001623:	48 8b 12             	mov    (%rdx),%rdx
   140001626:	48 01 d0             	add    %rdx,%rax
   140001629:	48 89 c1             	mov    %rax,%rcx
   14000162c:	e8 af 0c 00 00       	call   1400022e0 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   140001631:	84 c0                	test   %al,%al
   140001633:	75 ce                	jne    140001603 <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xd3>
			{
			}
			cout << last_word<<endl;
   140001635:	48 8d 85 30 06 00 00 	lea    0x630(%rbp),%rax
   14000163c:	48 89 c2             	mov    %rax,%rdx
   14000163f:	48 8b 05 3a 3e 00 00 	mov    0x3e3a(%rip),%rax        # 140005480 <__fu0__ZSt4cout>
   140001646:	48 89 c1             	mov    %rax,%rcx
   140001649:	e8 a2 0b 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   14000164e:	48 89 c1             	mov    %rax,%rcx
   140001651:	48 8b 05 38 3e 00 00 	mov    0x3e38(%rip),%rax        # 140005490 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001658:	48 89 c2             	mov    %rax,%rdx
   14000165b:	e8 58 0c 00 00       	call   1400022b8 <_ZNSolsEPFRSoS_E>
			stringstream last_wordstream(last_word);
   140001660:	ba 08 00 00 00       	mov    $0x8,%edx
   140001665:	b9 10 00 00 00       	mov    $0x10,%ecx
   14000166a:	e8 21 22 00 00       	call   140003890 <_ZStorSt13_Ios_OpenmodeS_>
   14000166f:	89 c1                	mov    %eax,%ecx
   140001671:	48 8d 95 30 06 00 00 	lea    0x630(%rbp),%rdx
   140001678:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   14000167f:	41 89 c8             	mov    %ecx,%r8d
   140001682:	48 89 c1             	mov    %rax,%rcx
   140001685:	e8 ae 0b 00 00       	call   140002238 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
			getline(last_wordstream, file_extension, ' ');
   14000168a:	48 8d 95 10 06 00 00 	lea    0x610(%rbp),%rdx
   140001691:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   140001698:	41 b8 20 00 00 00    	mov    $0x20,%r8d
   14000169e:	48 89 c1             	mov    %rax,%rcx
   1400016a1:	e8 5a 0b 00 00       	call   140002200 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>
			cout << "Extension : "<<file_extension<<endl;
   1400016a6:	48 8d 05 53 39 00 00 	lea    0x3953(%rip),%rax        # 140005000 <.rdata>
   1400016ad:	48 89 c2             	mov    %rax,%rdx
   1400016b0:	48 8b 05 c9 3d 00 00 	mov    0x3dc9(%rip),%rax        # 140005480 <__fu0__ZSt4cout>
   1400016b7:	48 89 c1             	mov    %rax,%rcx
   1400016ba:	e8 39 0b 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400016bf:	48 89 c1             	mov    %rax,%rcx
   1400016c2:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   1400016c9:	48 89 c2             	mov    %rax,%rdx
   1400016cc:	e8 1f 0b 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   1400016d1:	48 89 c1             	mov    %rax,%rcx
   1400016d4:	48 8b 05 b5 3d 00 00 	mov    0x3db5(%rip),%rax        # 140005490 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400016db:	48 89 c2             	mov    %rax,%rdx
   1400016de:	e8 d5 0b 00 00       	call   1400022b8 <_ZNSolsEPFRSoS_E>
			getline(last_wordstream, file_size, 'b');
   1400016e3:	48 8d 95 f0 05 00 00 	lea    0x5f0(%rbp),%rdx
   1400016ea:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   1400016f1:	41 b8 62 00 00 00    	mov    $0x62,%r8d
   1400016f7:	48 89 c1             	mov    %rax,%rcx
   1400016fa:	e8 01 0b 00 00       	call   140002200 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>
			cout << "size : "<<file_size<<endl;
   1400016ff:	48 8d 05 07 39 00 00 	lea    0x3907(%rip),%rax        # 14000500d <.rdata+0xd>
   140001706:	48 89 c2             	mov    %rax,%rdx
   140001709:	48 8b 05 70 3d 00 00 	mov    0x3d70(%rip),%rax        # 140005480 <__fu0__ZSt4cout>
   140001710:	48 89 c1             	mov    %rax,%rcx
   140001713:	e8 e0 0a 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001718:	48 89 c1             	mov    %rax,%rcx
   14000171b:	48 8d 85 f0 05 00 00 	lea    0x5f0(%rbp),%rax
   140001722:	48 89 c2             	mov    %rax,%rdx
   140001725:	e8 c6 0a 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   14000172a:	48 89 c1             	mov    %rax,%rcx
   14000172d:	48 8b 05 5c 3d 00 00 	mov    0x3d5c(%rip),%rax        # 140005490 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001734:	48 89 c2             	mov    %rax,%rdx
   140001737:	e8 7c 0b 00 00       	call   1400022b8 <_ZNSolsEPFRSoS_E>
			stringstream s,s_total;
   14000173c:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   140001743:	48 89 c1             	mov    %rax,%rcx
   140001746:	e8 e5 0a 00 00       	call   140002230 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev>
   14000174b:	48 8d 85 50 04 00 00 	lea    0x450(%rbp),%rax
   140001752:	48 89 c1             	mov    %rax,%rcx
   140001755:	e8 d6 0a 00 00       	call   140002230 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev>
			if ((file_extension == Music1) | (file_extension == Music2)|(file_extension == Music3))
   14000175a:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   140001761:	48 8d 15 ad 38 00 00 	lea    0x38ad(%rip),%rdx        # 140005015 <.rdata+0x15>
   140001768:	48 89 c1             	mov    %rax,%rcx
   14000176b:	e8 f0 20 00 00       	call   140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001770:	89 c3                	mov    %eax,%ebx
   140001772:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   140001779:	48 8d 15 99 38 00 00 	lea    0x3899(%rip),%rdx        # 140005019 <.rdata+0x19>
   140001780:	48 89 c1             	mov    %rax,%rcx
   140001783:	e8 d8 20 00 00       	call   140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001788:	09 c3                	or     %eax,%ebx
   14000178a:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   140001791:	48 8d 15 85 38 00 00 	lea    0x3885(%rip),%rdx        # 14000501d <.rdata+0x1d>
   140001798:	48 89 c1             	mov    %rax,%rcx
   14000179b:	e8 c0 20 00 00       	call   140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   1400017a0:	09 d8                	or     %ebx,%eax
   1400017a2:	0f b6 c0             	movzbl %al,%eax
   1400017a5:	85 c0                	test   %eax,%eax
   1400017a7:	0f 95 c0             	setne  %al
   1400017aa:	84 c0                	test   %al,%al
   1400017ac:	74 5f                	je     14000180d <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2dd>
			{
				s << file_size;
   1400017ae:	48 8d 85 f0 05 00 00 	lea    0x5f0(%rbp),%rax
   1400017b5:	48 8d 95 c0 02 00 00 	lea    0x2c0(%rbp),%rdx
   1400017bc:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
   1400017c0:	48 89 c2             	mov    %rax,%rdx
   1400017c3:	e8 28 0a 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
				s >> x;//new number
   1400017c8:	48 8d 95 dc 05 00 00 	lea    0x5dc(%rbp),%rdx
   1400017cf:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   1400017d6:	48 89 c1             	mov    %rax,%rcx
   1400017d9:	e8 e2 0a 00 00       	call   1400022c0 <_ZNSirsERi>
				s_total >> music_size;
   1400017de:	48 8d 95 ec 05 00 00 	lea    0x5ec(%rbp),%rdx
   1400017e5:	48 8d 85 50 04 00 00 	lea    0x450(%rbp),%rax
   1400017ec:	48 89 c1             	mov    %rax,%rcx
   1400017ef:	e8 cc 0a 00 00       	call   1400022c0 <_ZNSirsERi>
				music_size += x;
   1400017f4:	8b 95 ec 05 00 00    	mov    0x5ec(%rbp),%edx
   1400017fa:	8b 85 dc 05 00 00    	mov    0x5dc(%rbp),%eax
   140001800:	01 d0                	add    %edx,%eax
   140001802:	89 85 ec 05 00 00    	mov    %eax,0x5ec(%rbp)
   140001808:	e9 bd 01 00 00       	jmp    1400019ca <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x49a>
			}	
			else if ((file_extension == Image1) | (file_extension == Image2)|(file_extension == Image3))
   14000180d:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   140001814:	48 8d 15 07 38 00 00 	lea    0x3807(%rip),%rdx        # 140005022 <.rdata+0x22>
   14000181b:	48 89 c1             	mov    %rax,%rcx
   14000181e:	e8 3d 20 00 00       	call   140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001823:	89 c3                	mov    %eax,%ebx
   140001825:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   14000182c:	48 8d 15 f3 37 00 00 	lea    0x37f3(%rip),%rdx        # 140005026 <.rdata+0x26>
   140001833:	48 89 c1             	mov    %rax,%rcx
   140001836:	e8 25 20 00 00       	call   140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   14000183b:	09 c3                	or     %eax,%ebx
   14000183d:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   140001844:	48 8d 15 df 37 00 00 	lea    0x37df(%rip),%rdx        # 14000502a <.rdata+0x2a>
   14000184b:	48 89 c1             	mov    %rax,%rcx
   14000184e:	e8 0d 20 00 00       	call   140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001853:	09 d8                	or     %ebx,%eax
   140001855:	0f b6 c0             	movzbl %al,%eax
   140001858:	85 c0                	test   %eax,%eax
   14000185a:	0f 95 c0             	setne  %al
   14000185d:	84 c0                	test   %al,%al
   14000185f:	74 5f                	je     1400018c0 <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x390>
			{
				s << file_size;
   140001861:	48 8d 85 f0 05 00 00 	lea    0x5f0(%rbp),%rax
   140001868:	48 8d 95 c0 02 00 00 	lea    0x2c0(%rbp),%rdx
   14000186f:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
   140001873:	48 89 c2             	mov    %rax,%rdx
   140001876:	e8 75 09 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
				s >> x;//new number
   14000187b:	48 8d 95 dc 05 00 00 	lea    0x5dc(%rbp),%rdx
   140001882:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   140001889:	48 89 c1             	mov    %rax,%rcx
   14000188c:	e8 2f 0a 00 00       	call   1400022c0 <_ZNSirsERi>
				s_total >> image_size;
   140001891:	48 8d 95 e8 05 00 00 	lea    0x5e8(%rbp),%rdx
   140001898:	48 8d 85 50 04 00 00 	lea    0x450(%rbp),%rax
   14000189f:	48 89 c1             	mov    %rax,%rcx
   1400018a2:	e8 19 0a 00 00       	call   1400022c0 <_ZNSirsERi>
				image_size += x;
   1400018a7:	8b 95 e8 05 00 00    	mov    0x5e8(%rbp),%edx
   1400018ad:	8b 85 dc 05 00 00    	mov    0x5dc(%rbp),%eax
   1400018b3:	01 d0                	add    %edx,%eax
   1400018b5:	89 85 e8 05 00 00    	mov    %eax,0x5e8(%rbp)
   1400018bb:	e9 0a 01 00 00       	jmp    1400019ca <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x49a>
			}
			else if((file_extension == Movie1) | (file_extension == Movie2) | (file_extension == Movie3))
   1400018c0:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   1400018c7:	48 8d 15 60 37 00 00 	lea    0x3760(%rip),%rdx        # 14000502e <.rdata+0x2e>
   1400018ce:	48 89 c1             	mov    %rax,%rcx
   1400018d1:	e8 8a 1f 00 00       	call   140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   1400018d6:	89 c3                	mov    %eax,%ebx
   1400018d8:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   1400018df:	48 8d 15 4c 37 00 00 	lea    0x374c(%rip),%rdx        # 140005032 <.rdata+0x32>
   1400018e6:	48 89 c1             	mov    %rax,%rcx
   1400018e9:	e8 72 1f 00 00       	call   140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   1400018ee:	09 c3                	or     %eax,%ebx
   1400018f0:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   1400018f7:	48 8d 15 38 37 00 00 	lea    0x3738(%rip),%rdx        # 140005036 <.rdata+0x36>
   1400018fe:	48 89 c1             	mov    %rax,%rcx
   140001901:	e8 5a 1f 00 00       	call   140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001906:	09 d8                	or     %ebx,%eax
   140001908:	0f b6 c0             	movzbl %al,%eax
   14000190b:	85 c0                	test   %eax,%eax
   14000190d:	0f 95 c0             	setne  %al
   140001910:	84 c0                	test   %al,%al
   140001912:	74 5c                	je     140001970 <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x440>
			{
				s << file_size;
   140001914:	48 8d 85 f0 05 00 00 	lea    0x5f0(%rbp),%rax
   14000191b:	48 8d 95 c0 02 00 00 	lea    0x2c0(%rbp),%rdx
   140001922:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
   140001926:	48 89 c2             	mov    %rax,%rdx
   140001929:	e8 c2 08 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
				s >> x;//new number
   14000192e:	48 8d 95 dc 05 00 00 	lea    0x5dc(%rbp),%rdx
   140001935:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   14000193c:	48 89 c1             	mov    %rax,%rcx
   14000193f:	e8 7c 09 00 00       	call   1400022c0 <_ZNSirsERi>
				s_total >> movie_size;
   140001944:	48 8d 95 e4 05 00 00 	lea    0x5e4(%rbp),%rdx
   14000194b:	48 8d 85 50 04 00 00 	lea    0x450(%rbp),%rax
   140001952:	48 89 c1             	mov    %rax,%rcx
   140001955:	e8 66 09 00 00       	call   1400022c0 <_ZNSirsERi>
				movie_size += x;
   14000195a:	8b 95 e4 05 00 00    	mov    0x5e4(%rbp),%edx
   140001960:	8b 85 dc 05 00 00    	mov    0x5dc(%rbp),%eax
   140001966:	01 d0                	add    %edx,%eax
   140001968:	89 85 e4 05 00 00    	mov    %eax,0x5e4(%rbp)
   14000196e:	eb 5a                	jmp    1400019ca <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x49a>
				
			}
			else
			{
				s << file_size;
   140001970:	48 8d 85 f0 05 00 00 	lea    0x5f0(%rbp),%rax
   140001977:	48 8d 95 c0 02 00 00 	lea    0x2c0(%rbp),%rdx
   14000197e:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
   140001982:	48 89 c2             	mov    %rax,%rdx
   140001985:	e8 66 08 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
				s >> x;//new number
   14000198a:	48 8d 95 dc 05 00 00 	lea    0x5dc(%rbp),%rdx
   140001991:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   140001998:	48 89 c1             	mov    %rax,%rcx
   14000199b:	e8 20 09 00 00       	call   1400022c0 <_ZNSirsERi>
				s_total >> others_size;
   1400019a0:	48 8d 95 e0 05 00 00 	lea    0x5e0(%rbp),%rdx
   1400019a7:	48 8d 85 50 04 00 00 	lea    0x450(%rbp),%rax
   1400019ae:	48 89 c1             	mov    %rax,%rcx
   1400019b1:	e8 0a 09 00 00       	call   1400022c0 <_ZNSirsERi>
				others_size += x;
   1400019b6:	8b 95 e0 05 00 00    	mov    0x5e0(%rbp),%edx
   1400019bc:	8b 85 dc 05 00 00    	mov    0x5dc(%rbp),%eax
   1400019c2:	01 d0                	add    %edx,%eax
   1400019c4:	89 85 e0 05 00 00    	mov    %eax,0x5e0(%rbp)
			}
		
		}
   1400019ca:	48 8d 85 50 04 00 00 	lea    0x450(%rbp),%rax
   1400019d1:	48 89 c1             	mov    %rax,%rcx
   1400019d4:	e8 4f 08 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   1400019d9:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   1400019e0:	48 89 c1             	mov    %rax,%rcx
   1400019e3:	e8 40 08 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   1400019e8:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   1400019ef:	48 89 c1             	mov    %rax,%rcx
   1400019f2:	e8 31 08 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   1400019f7:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   1400019fb:	48 89 c1             	mov    %rax,%rcx
   1400019fe:	e8 25 08 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
	while (getline(fs, line, '\n'))
   140001a03:	48 8d 95 50 06 00 00 	lea    0x650(%rbp),%rdx
   140001a0a:	48 8d 85 70 06 00 00 	lea    0x670(%rbp),%rax
   140001a11:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
   140001a17:	48 89 c1             	mov    %rax,%rcx
   140001a1a:	e8 e1 07 00 00       	call   140002200 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>
   140001a1f:	48 8b 10             	mov    (%rax),%rdx
   140001a22:	48 83 ea 18          	sub    $0x18,%rdx
   140001a26:	48 8b 12             	mov    (%rdx),%rdx
   140001a29:	48 01 d0             	add    %rdx,%rax
   140001a2c:	48 89 c1             	mov    %rax,%rcx
   140001a2f:	e8 ac 08 00 00       	call   1400022e0 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   140001a34:	84 c0                	test   %al,%al
   140001a36:	0f 85 9f fb ff ff    	jne    1400015db <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xab>

			cout << "music " << music_size<<"b"<< " images " <<image_size<<"b"<<" movies "<<movie_size<<"b"<<" other "<<others_size<<"b"<<endl;
   140001a3c:	48 8d 05 f7 35 00 00 	lea    0x35f7(%rip),%rax        # 14000503a <.rdata+0x3a>
   140001a43:	48 89 c2             	mov    %rax,%rdx
   140001a46:	48 8b 05 33 3a 00 00 	mov    0x3a33(%rip),%rax        # 140005480 <__fu0__ZSt4cout>
   140001a4d:	48 89 c1             	mov    %rax,%rcx
   140001a50:	e8 a3 07 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001a55:	48 89 c1             	mov    %rax,%rcx
   140001a58:	8b 85 ec 05 00 00    	mov    0x5ec(%rbp),%eax
   140001a5e:	89 c2                	mov    %eax,%edx
   140001a60:	e8 4b 08 00 00       	call   1400022b0 <_ZNSolsEi>
   140001a65:	48 89 c1             	mov    %rax,%rcx
   140001a68:	48 8d 05 d2 35 00 00 	lea    0x35d2(%rip),%rax        # 140005041 <.rdata+0x41>
   140001a6f:	48 89 c2             	mov    %rax,%rdx
   140001a72:	e8 81 07 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001a77:	48 89 c1             	mov    %rax,%rcx
   140001a7a:	48 8d 05 c2 35 00 00 	lea    0x35c2(%rip),%rax        # 140005043 <.rdata+0x43>
   140001a81:	48 89 c2             	mov    %rax,%rdx
   140001a84:	e8 6f 07 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001a89:	48 89 c1             	mov    %rax,%rcx
   140001a8c:	8b 85 e8 05 00 00    	mov    0x5e8(%rbp),%eax
   140001a92:	89 c2                	mov    %eax,%edx
   140001a94:	e8 17 08 00 00       	call   1400022b0 <_ZNSolsEi>
   140001a99:	48 89 c1             	mov    %rax,%rcx
   140001a9c:	48 8d 05 9e 35 00 00 	lea    0x359e(%rip),%rax        # 140005041 <.rdata+0x41>
   140001aa3:	48 89 c2             	mov    %rax,%rdx
   140001aa6:	e8 4d 07 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001aab:	48 89 c1             	mov    %rax,%rcx
   140001aae:	48 8d 05 97 35 00 00 	lea    0x3597(%rip),%rax        # 14000504c <.rdata+0x4c>
   140001ab5:	48 89 c2             	mov    %rax,%rdx
   140001ab8:	e8 3b 07 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001abd:	48 89 c1             	mov    %rax,%rcx
   140001ac0:	8b 85 e4 05 00 00    	mov    0x5e4(%rbp),%eax
   140001ac6:	89 c2                	mov    %eax,%edx
   140001ac8:	e8 e3 07 00 00       	call   1400022b0 <_ZNSolsEi>
   140001acd:	48 89 c1             	mov    %rax,%rcx
   140001ad0:	48 8d 05 6a 35 00 00 	lea    0x356a(%rip),%rax        # 140005041 <.rdata+0x41>
   140001ad7:	48 89 c2             	mov    %rax,%rdx
   140001ada:	e8 19 07 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001adf:	48 89 c1             	mov    %rax,%rcx
   140001ae2:	48 8d 05 6c 35 00 00 	lea    0x356c(%rip),%rax        # 140005055 <.rdata+0x55>
   140001ae9:	48 89 c2             	mov    %rax,%rdx
   140001aec:	e8 07 07 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001af1:	48 89 c1             	mov    %rax,%rcx
   140001af4:	8b 85 e0 05 00 00    	mov    0x5e0(%rbp),%eax
   140001afa:	89 c2                	mov    %eax,%edx
   140001afc:	e8 af 07 00 00       	call   1400022b0 <_ZNSolsEi>
   140001b01:	48 89 c1             	mov    %rax,%rcx
   140001b04:	48 8d 05 36 35 00 00 	lea    0x3536(%rip),%rax        # 140005041 <.rdata+0x41>
   140001b0b:	48 89 c2             	mov    %rax,%rdx
   140001b0e:	e8 e5 06 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001b13:	48 89 c1             	mov    %rax,%rcx
   140001b16:	48 8b 05 73 39 00 00 	mov    0x3973(%rip),%rax        # 140005490 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001b1d:	48 89 c2             	mov    %rax,%rdx
   140001b20:	e8 93 07 00 00       	call   1400022b8 <_ZNSolsEPFRSoS_E>
			cout << "Music size = "<< music_size<<endl;
			cout << "Image size = "<< image_size<<endl;
			cout << "Movie size = "<< movie_size<<endl;
			cout << "others_size = "<< others_size<<endl;
			*/	
}
   140001b25:	48 8d 85 f0 05 00 00 	lea    0x5f0(%rbp),%rax
   140001b2c:	48 89 c1             	mov    %rax,%rcx
   140001b2f:	e8 1c 07 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001b34:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   140001b3b:	48 89 c1             	mov    %rax,%rcx
   140001b3e:	e8 0d 07 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001b43:	48 8d 85 30 06 00 00 	lea    0x630(%rbp),%rax
   140001b4a:	48 89 c1             	mov    %rax,%rcx
   140001b4d:	e8 fe 06 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001b52:	48 8d 85 50 06 00 00 	lea    0x650(%rbp),%rax
   140001b59:	48 89 c1             	mov    %rax,%rcx
   140001b5c:	e8 ef 06 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001b61:	48 8d 85 70 06 00 00 	lea    0x670(%rbp),%rax
   140001b68:	48 89 c1             	mov    %rax,%rcx
   140001b6b:	e8 b8 06 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001b70:	e9 a7 00 00 00       	jmp    140001c1c <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x6ec>
		}
   140001b75:	48 89 c3             	mov    %rax,%rbx
   140001b78:	48 8d 85 50 04 00 00 	lea    0x450(%rbp),%rax
   140001b7f:	48 89 c1             	mov    %rax,%rcx
   140001b82:	e8 a1 06 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001b87:	eb 03                	jmp    140001b8c <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x65c>
   140001b89:	48 89 c3             	mov    %rax,%rbx
   140001b8c:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   140001b93:	48 89 c1             	mov    %rax,%rcx
   140001b96:	e8 8d 06 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001b9b:	eb 03                	jmp    140001ba0 <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x670>
   140001b9d:	48 89 c3             	mov    %rax,%rbx
   140001ba0:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   140001ba7:	48 89 c1             	mov    %rax,%rcx
   140001baa:	e8 79 06 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001baf:	eb 03                	jmp    140001bb4 <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x684>
   140001bb1:	48 89 c3             	mov    %rax,%rbx
   140001bb4:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001bb8:	48 89 c1             	mov    %rax,%rcx
   140001bbb:	e8 68 06 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001bc0:	eb 03                	jmp    140001bc5 <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x695>
}
   140001bc2:	48 89 c3             	mov    %rax,%rbx
   140001bc5:	48 8d 85 f0 05 00 00 	lea    0x5f0(%rbp),%rax
   140001bcc:	48 89 c1             	mov    %rax,%rcx
   140001bcf:	e8 7c 06 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001bd4:	48 8d 85 10 06 00 00 	lea    0x610(%rbp),%rax
   140001bdb:	48 89 c1             	mov    %rax,%rcx
   140001bde:	e8 6d 06 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001be3:	48 8d 85 30 06 00 00 	lea    0x630(%rbp),%rax
   140001bea:	48 89 c1             	mov    %rax,%rcx
   140001bed:	e8 5e 06 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001bf2:	48 8d 85 50 06 00 00 	lea    0x650(%rbp),%rax
   140001bf9:	48 89 c1             	mov    %rax,%rcx
   140001bfc:	e8 4f 06 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001c01:	48 8d 85 70 06 00 00 	lea    0x670(%rbp),%rax
   140001c08:	48 89 c1             	mov    %rax,%rcx
   140001c0b:	e8 18 06 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001c10:	48 89 d8             	mov    %rbx,%rax
   140001c13:	48 89 c1             	mov    %rax,%rcx
   140001c16:	e8 55 17 00 00       	call   140003370 <_Unwind_Resume>
   140001c1b:	90                   	nop
   140001c1c:	48 81 c4 88 08 00 00 	add    $0x888,%rsp
   140001c23:	5b                   	pop    %rbx
   140001c24:	5d                   	pop    %rbp
   140001c25:	c3                   	ret    

0000000140001c26 <main>:

int main()
{
   140001c26:	55                   	push   %rbp
   140001c27:	53                   	push   %rbx
   140001c28:	48 81 ec f8 05 00 00 	sub    $0x5f8,%rsp
   140001c2f:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140001c36:	00 
   140001c37:	e8 74 07 00 00       	call   1400023b0 <__main>
	//string input = "dragons_Song .mp3 11b\ntheGreatGig.flac 1000b\nfile.txt 5b\nout.gif 100b\ninception.jpg 10000b\nout.exe 100b\ninception.mkv 10000b";
	
	/*  Sample to Test Code */
	string new_input ="2 3 2 \ndragons_Song .mp3 11b\ntheGreatGig.flac 1000b\nfile.txt 5b\nout.exe 100b\ninception.mkv 10000b";
   140001c3c:	48 8d 85 2d 05 00 00 	lea    0x52d(%rbp),%rax
   140001c43:	48 89 c1             	mov    %rax,%rcx
   140001c46:	e8 8d 06 00 00       	call   1400022d8 <_ZNSaIcEC1Ev>
   140001c4b:	48 8d 95 2d 05 00 00 	lea    0x52d(%rbp),%rdx
   140001c52:	48 8d 85 00 05 00 00 	lea    0x500(%rbp),%rax
   140001c59:	49 89 d0             	mov    %rdx,%r8
   140001c5c:	48 8d 15 fd 33 00 00 	lea    0x33fd(%rip),%rdx        # 140005060 <.rdata+0x60>
   140001c63:	48 89 c1             	mov    %rax,%rcx
   140001c66:	e8 e5 1a 00 00       	call   140003750 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
   140001c6b:	48 8d 85 2d 05 00 00 	lea    0x52d(%rbp),%rax
   140001c72:	48 89 c1             	mov    %rax,%rcx
   140001c75:	e8 56 06 00 00       	call   1400022d0 <_ZNSaIcED1Ev>
	
	string First_Line,str_num="",str;
   140001c7a:	48 8d 85 e0 04 00 00 	lea    0x4e0(%rbp),%rax
   140001c81:	48 89 c1             	mov    %rax,%rcx
   140001c84:	e8 cf 05 00 00       	call   140002258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   140001c89:	48 8d 85 2e 05 00 00 	lea    0x52e(%rbp),%rax
   140001c90:	48 89 c1             	mov    %rax,%rcx
   140001c93:	e8 40 06 00 00       	call   1400022d8 <_ZNSaIcEC1Ev>
   140001c98:	48 8d 95 2e 05 00 00 	lea    0x52e(%rbp),%rdx
   140001c9f:	48 8d 85 c0 04 00 00 	lea    0x4c0(%rbp),%rax
   140001ca6:	49 89 d0             	mov    %rdx,%r8
   140001ca9:	48 8d 15 12 34 00 00 	lea    0x3412(%rip),%rdx        # 1400050c2 <.rdata+0xc2>
   140001cb0:	48 89 c1             	mov    %rax,%rcx
   140001cb3:	e8 98 1a 00 00       	call   140003750 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
   140001cb8:	48 8d 85 2e 05 00 00 	lea    0x52e(%rbp),%rax
   140001cbf:	48 89 c1             	mov    %rax,%rcx
   140001cc2:	e8 09 06 00 00       	call   1400022d0 <_ZNSaIcED1Ev>
   140001cc7:	48 8d 85 a0 04 00 00 	lea    0x4a0(%rbp),%rax
   140001cce:	48 89 c1             	mov    %rax,%rcx
   140001cd1:	e8 82 05 00 00       	call   140002258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
	stringstream ss;
   140001cd6:	48 8d 85 10 03 00 00 	lea    0x310(%rbp),%rax
   140001cdd:	48 89 c1             	mov    %rax,%rcx
   140001ce0:	e8 4b 05 00 00       	call   140002230 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev>
	int int_num1,Line_num;
	string Enter;
   140001ce5:	48 8d 85 e0 02 00 00 	lea    0x2e0(%rbp),%rax
   140001cec:	48 89 c1             	mov    %rax,%rcx
   140001cef:	e8 64 05 00 00       	call   140002258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
	//To get the First Line 
	stringstream All_lines(new_input);
   140001cf4:	ba 08 00 00 00       	mov    $0x8,%edx
   140001cf9:	b9 10 00 00 00       	mov    $0x10,%ecx
   140001cfe:	e8 8d 1b 00 00       	call   140003890 <_ZStorSt13_Ios_OpenmodeS_>
   140001d03:	89 c1                	mov    %eax,%ecx
   140001d05:	48 8d 95 00 05 00 00 	lea    0x500(%rbp),%rdx
   140001d0c:	48 8d 85 50 01 00 00 	lea    0x150(%rbp),%rax
   140001d13:	41 89 c8             	mov    %ecx,%r8d
   140001d16:	48 89 c1             	mov    %rax,%rcx
   140001d19:	e8 1a 05 00 00       	call   140002238 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
	getline(All_lines, First_Line, '\n');
   140001d1e:	48 8d 95 e0 04 00 00 	lea    0x4e0(%rbp),%rdx
   140001d25:	48 8d 85 50 01 00 00 	lea    0x150(%rbp),%rax
   140001d2c:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
   140001d32:	48 89 c1             	mov    %rax,%rcx
   140001d35:	e8 c6 04 00 00       	call   140002200 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>
	cout << First_Line<<endl;
   140001d3a:	48 8d 85 e0 04 00 00 	lea    0x4e0(%rbp),%rax
   140001d41:	48 89 c2             	mov    %rax,%rdx
   140001d44:	48 8b 05 35 37 00 00 	mov    0x3735(%rip),%rax        # 140005480 <__fu0__ZSt4cout>
   140001d4b:	48 89 c1             	mov    %rax,%rcx
   140001d4e:	e8 9d 04 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001d53:	48 89 c1             	mov    %rax,%rcx
   140001d56:	48 8b 05 33 37 00 00 	mov    0x3733(%rip),%rax        # 140005490 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001d5d:	48 89 c2             	mov    %rax,%rdx
   140001d60:	e8 53 05 00 00       	call   1400022b8 <_ZNSolsEPFRSoS_E>
	
	//To get First Number (Number of test cases)
	stringstream Numbers(First_Line) ;
   140001d65:	ba 08 00 00 00       	mov    $0x8,%edx
   140001d6a:	b9 10 00 00 00       	mov    $0x10,%ecx
   140001d6f:	e8 1c 1b 00 00       	call   140003890 <_ZStorSt13_Ios_OpenmodeS_>
   140001d74:	89 c1                	mov    %eax,%ecx
   140001d76:	48 8d 95 e0 04 00 00 	lea    0x4e0(%rbp),%rdx
   140001d7d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   140001d81:	41 89 c8             	mov    %ecx,%r8d
   140001d84:	48 89 c1             	mov    %rax,%rcx
   140001d87:	e8 ac 04 00 00       	call   140002238 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
	ss << First_Line;
   140001d8c:	48 8d 85 e0 04 00 00 	lea    0x4e0(%rbp),%rax
   140001d93:	48 8d 95 10 03 00 00 	lea    0x310(%rbp),%rdx
   140001d9a:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
   140001d9e:	48 89 c2             	mov    %rax,%rdx
   140001da1:	e8 4a 04 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
	ss >> int_num1;
   140001da6:	48 8d 95 0c 03 00 00 	lea    0x30c(%rbp),%rdx
   140001dad:	48 8d 85 10 03 00 00 	lea    0x310(%rbp),%rax
   140001db4:	48 89 c1             	mov    %rax,%rcx
   140001db7:	e8 04 05 00 00       	call   1400022c0 <_ZNSirsERi>
	cout<<"Number 1 :"<<int_num1;
   140001dbc:	48 8d 05 00 33 00 00 	lea    0x3300(%rip),%rax        # 1400050c3 <.rdata+0xc3>
   140001dc3:	48 89 c2             	mov    %rax,%rdx
   140001dc6:	48 8b 05 b3 36 00 00 	mov    0x36b3(%rip),%rax        # 140005480 <__fu0__ZSt4cout>
   140001dcd:	48 89 c1             	mov    %rax,%rcx
   140001dd0:	e8 23 04 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001dd5:	48 89 c1             	mov    %rax,%rcx
   140001dd8:	8b 85 0c 03 00 00    	mov    0x30c(%rbp),%eax
   140001dde:	89 c2                	mov    %eax,%edx
   140001de0:	e8 cb 04 00 00       	call   1400022b0 <_ZNSolsEi>
	
	string new_Enter="" ;
   140001de5:	48 8d 85 2f 05 00 00 	lea    0x52f(%rbp),%rax
   140001dec:	48 89 c1             	mov    %rax,%rcx
   140001def:	e8 e4 04 00 00       	call   1400022d8 <_ZNSaIcEC1Ev>
   140001df4:	48 8d 95 2f 05 00 00 	lea    0x52f(%rbp),%rdx
   140001dfb:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001dff:	49 89 d0             	mov    %rdx,%r8
   140001e02:	48 8d 15 b9 32 00 00 	lea    0x32b9(%rip),%rdx        # 1400050c2 <.rdata+0xc2>
   140001e09:	48 89 c1             	mov    %rax,%rcx
   140001e0c:	e8 3f 19 00 00       	call   140003750 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
   140001e11:	48 8d 85 2f 05 00 00 	lea    0x52f(%rbp),%rax
   140001e18:	48 89 c1             	mov    %rax,%rcx
   140001e1b:	e8 b0 04 00 00       	call   1400022d0 <_ZNSaIcED1Ev>
	
	while (int_num1)
   140001e20:	e9 6e 01 00 00       	jmp    140001f93 <main+0x36d>
	{
		ss <<First_Line;
   140001e25:	48 8d 85 e0 04 00 00 	lea    0x4e0(%rbp),%rax
   140001e2c:	48 8d 95 10 03 00 00 	lea    0x310(%rbp),%rdx
   140001e33:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
   140001e37:	48 89 c2             	mov    %rax,%rdx
   140001e3a:	e8 b1 03 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
		ss >> Line_num; // To get the number of lines of Test Case (1)
   140001e3f:	48 8d 95 08 03 00 00 	lea    0x308(%rbp),%rdx
   140001e46:	48 8d 85 10 03 00 00 	lea    0x310(%rbp),%rax
   140001e4d:	48 89 c1             	mov    %rax,%rcx
   140001e50:	e8 6b 04 00 00       	call   1400022c0 <_ZNSirsERi>
 		cout<<"\nNumber : "<<Line_num<<endl;
   140001e55:	48 8d 05 72 32 00 00 	lea    0x3272(%rip),%rax        # 1400050ce <.rdata+0xce>
   140001e5c:	48 89 c2             	mov    %rax,%rdx
   140001e5f:	48 8b 05 1a 36 00 00 	mov    0x361a(%rip),%rax        # 140005480 <__fu0__ZSt4cout>
   140001e66:	48 89 c1             	mov    %rax,%rcx
   140001e69:	e8 8a 03 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001e6e:	48 89 c1             	mov    %rax,%rcx
   140001e71:	8b 85 08 03 00 00    	mov    0x308(%rbp),%eax
   140001e77:	89 c2                	mov    %eax,%edx
   140001e79:	e8 32 04 00 00       	call   1400022b0 <_ZNSolsEi>
   140001e7e:	48 89 c1             	mov    %rax,%rcx
   140001e81:	48 8b 05 08 36 00 00 	mov    0x3608(%rip),%rax        # 140005490 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001e88:	48 89 c2             	mov    %rax,%rdx
   140001e8b:	e8 28 04 00 00       	call   1400022b8 <_ZNSolsEPFRSoS_E>
		while(Line_num)
   140001e90:	eb 6a                	jmp    140001efc <main+0x2d6>
		{
		  getline(All_lines, Enter,'\n');
   140001e92:	48 8d 95 e0 02 00 00 	lea    0x2e0(%rbp),%rdx
   140001e99:	48 8d 85 50 01 00 00 	lea    0x150(%rbp),%rax
   140001ea0:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
   140001ea6:	48 89 c1             	mov    %rax,%rcx
   140001ea9:	e8 52 03 00 00       	call   140002200 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>
		  new_Enter += Enter+"\n";
   140001eae:	48 8d 85 30 05 00 00 	lea    0x530(%rbp),%rax
   140001eb5:	48 8d 95 e0 02 00 00 	lea    0x2e0(%rbp),%rdx
   140001ebc:	4c 8d 05 16 32 00 00 	lea    0x3216(%rip),%r8        # 1400050d9 <.rdata+0xd9>
   140001ec3:	48 89 c1             	mov    %rax,%rcx
   140001ec6:	e8 e5 19 00 00       	call   1400038b0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_>
   140001ecb:	48 8d 95 30 05 00 00 	lea    0x530(%rbp),%rdx
   140001ed2:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001ed6:	48 89 c1             	mov    %rax,%rcx
   140001ed9:	e8 62 03 00 00       	call   140002240 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_>
   140001ede:	48 8d 85 30 05 00 00 	lea    0x530(%rbp),%rax
   140001ee5:	48 89 c1             	mov    %rax,%rcx
   140001ee8:	e8 63 03 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
		 
		  Line_num --;
   140001eed:	8b 85 08 03 00 00    	mov    0x308(%rbp),%eax
   140001ef3:	83 e8 01             	sub    $0x1,%eax
   140001ef6:	89 85 08 03 00 00    	mov    %eax,0x308(%rbp)
		while(Line_num)
   140001efc:	8b 85 08 03 00 00    	mov    0x308(%rbp),%eax
   140001f02:	85 c0                	test   %eax,%eax
   140001f04:	75 8c                	jne    140001e92 <main+0x26c>
		}
		cout <<"Strings :"<<new_Enter<<endl;
   140001f06:	48 8d 05 ce 31 00 00 	lea    0x31ce(%rip),%rax        # 1400050db <.rdata+0xdb>
   140001f0d:	48 89 c2             	mov    %rax,%rdx
   140001f10:	48 8b 05 69 35 00 00 	mov    0x3569(%rip),%rax        # 140005480 <__fu0__ZSt4cout>
   140001f17:	48 89 c1             	mov    %rax,%rcx
   140001f1a:	e8 d9 02 00 00       	call   1400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001f1f:	48 89 c1             	mov    %rax,%rcx
   140001f22:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001f26:	48 89 c2             	mov    %rax,%rdx
   140001f29:	e8 c2 02 00 00       	call   1400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001f2e:	48 89 c1             	mov    %rax,%rcx
   140001f31:	48 8b 05 58 35 00 00 	mov    0x3558(%rip),%rax        # 140005490 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001f38:	48 89 c2             	mov    %rax,%rdx
   140001f3b:	e8 78 03 00 00       	call   1400022b8 <_ZNSolsEPFRSoS_E>
		file_size(new_Enter);
   140001f40:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
   140001f44:	48 8d 85 50 05 00 00 	lea    0x550(%rbp),%rax
   140001f4b:	48 89 c1             	mov    %rax,%rcx
   140001f4e:	e8 0d 03 00 00       	call   140002260 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
   140001f53:	48 8d 85 50 05 00 00 	lea    0x550(%rbp),%rax
   140001f5a:	48 89 c1             	mov    %rax,%rcx
   140001f5d:	e8 ce f5 ff ff       	call   140001530 <_Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
   140001f62:	48 8d 85 50 05 00 00 	lea    0x550(%rbp),%rax
   140001f69:	48 89 c1             	mov    %rax,%rcx
   140001f6c:	e8 df 02 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
		new_Enter="";
   140001f71:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001f75:	48 8d 15 46 31 00 00 	lea    0x3146(%rip),%rdx        # 1400050c2 <.rdata+0xc2>
   140001f7c:	48 89 c1             	mov    %rax,%rcx
   140001f7f:	e8 c4 02 00 00       	call   140002248 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc>
		
		int_num1--;
   140001f84:	8b 85 0c 03 00 00    	mov    0x30c(%rbp),%eax
   140001f8a:	83 e8 01             	sub    $0x1,%eax
   140001f8d:	89 85 0c 03 00 00    	mov    %eax,0x30c(%rbp)
	while (int_num1)
   140001f93:	8b 85 0c 03 00 00    	mov    0x30c(%rbp),%eax
   140001f99:	85 c0                	test   %eax,%eax
   140001f9b:	0f 85 84 fe ff ff    	jne    140001e25 <main+0x1ff>
	}
	
	return 0;
   140001fa1:	bb 00 00 00 00       	mov    $0x0,%ebx
   140001fa6:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001faa:	48 89 c1             	mov    %rax,%rcx
   140001fad:	e8 9e 02 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001fb2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   140001fb6:	48 89 c1             	mov    %rax,%rcx
   140001fb9:	e8 6a 02 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001fbe:	48 8d 85 50 01 00 00 	lea    0x150(%rbp),%rax
   140001fc5:	48 89 c1             	mov    %rax,%rcx
   140001fc8:	e8 5b 02 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001fcd:	48 8d 85 e0 02 00 00 	lea    0x2e0(%rbp),%rax
   140001fd4:	48 89 c1             	mov    %rax,%rcx
   140001fd7:	e8 74 02 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001fdc:	48 8d 85 10 03 00 00 	lea    0x310(%rbp),%rax
   140001fe3:	48 89 c1             	mov    %rax,%rcx
   140001fe6:	e8 3d 02 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001feb:	48 8d 85 a0 04 00 00 	lea    0x4a0(%rbp),%rax
   140001ff2:	48 89 c1             	mov    %rax,%rcx
   140001ff5:	e8 56 02 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001ffa:	48 8d 85 c0 04 00 00 	lea    0x4c0(%rbp),%rax
   140002001:	48 89 c1             	mov    %rax,%rcx
   140002004:	e8 47 02 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002009:	48 8d 85 e0 04 00 00 	lea    0x4e0(%rbp),%rax
   140002010:	48 89 c1             	mov    %rax,%rcx
   140002013:	e8 38 02 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002018:	48 8d 85 00 05 00 00 	lea    0x500(%rbp),%rax
   14000201f:	48 89 c1             	mov    %rax,%rcx
   140002022:	e8 29 02 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002027:	89 d8                	mov    %ebx,%eax
   140002029:	e9 13 01 00 00       	jmp    140002141 <main+0x51b>
   14000202e:	48 89 c3             	mov    %rax,%rbx
   140002031:	48 8d 85 2d 05 00 00 	lea    0x52d(%rbp),%rax
   140002038:	48 89 c1             	mov    %rax,%rcx
   14000203b:	e8 90 02 00 00       	call   1400022d0 <_ZNSaIcED1Ev>
   140002040:	48 89 d8             	mov    %rbx,%rax
   140002043:	48 89 c1             	mov    %rax,%rcx
   140002046:	e8 25 13 00 00       	call   140003370 <_Unwind_Resume>
   14000204b:	48 89 c3             	mov    %rax,%rbx
   14000204e:	48 8d 85 2e 05 00 00 	lea    0x52e(%rbp),%rax
   140002055:	48 89 c1             	mov    %rax,%rcx
   140002058:	e8 73 02 00 00       	call   1400022d0 <_ZNSaIcED1Ev>
   14000205d:	e9 b6 00 00 00       	jmp    140002118 <main+0x4f2>
   140002062:	48 89 c3             	mov    %rax,%rbx
   140002065:	48 8d 85 2f 05 00 00 	lea    0x52f(%rbp),%rax
   14000206c:	48 89 c1             	mov    %rax,%rcx
   14000206f:	e8 5c 02 00 00       	call   1400022d0 <_ZNSaIcED1Ev>
   140002074:	eb 3c                	jmp    1400020b2 <main+0x48c>
		  new_Enter += Enter+"\n";
   140002076:	48 89 c3             	mov    %rax,%rbx
   140002079:	48 8d 85 30 05 00 00 	lea    0x530(%rbp),%rax
   140002080:	48 89 c1             	mov    %rax,%rcx
   140002083:	e8 c8 01 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002088:	eb 17                	jmp    1400020a1 <main+0x47b>
		file_size(new_Enter);
   14000208a:	48 89 c3             	mov    %rax,%rbx
   14000208d:	48 8d 85 50 05 00 00 	lea    0x550(%rbp),%rax
   140002094:	48 89 c1             	mov    %rax,%rcx
   140002097:	e8 b4 01 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   14000209c:	eb 03                	jmp    1400020a1 <main+0x47b>
   14000209e:	48 89 c3             	mov    %rax,%rbx
   1400020a1:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   1400020a5:	48 89 c1             	mov    %rax,%rcx
   1400020a8:	e8 a3 01 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   1400020ad:	eb 03                	jmp    1400020b2 <main+0x48c>
   1400020af:	48 89 c3             	mov    %rax,%rbx
   1400020b2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   1400020b6:	48 89 c1             	mov    %rax,%rcx
   1400020b9:	e8 6a 01 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   1400020be:	eb 03                	jmp    1400020c3 <main+0x49d>
   1400020c0:	48 89 c3             	mov    %rax,%rbx
   1400020c3:	48 8d 85 50 01 00 00 	lea    0x150(%rbp),%rax
   1400020ca:	48 89 c1             	mov    %rax,%rcx
   1400020cd:	e8 56 01 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   1400020d2:	eb 03                	jmp    1400020d7 <main+0x4b1>
   1400020d4:	48 89 c3             	mov    %rax,%rbx
   1400020d7:	48 8d 85 e0 02 00 00 	lea    0x2e0(%rbp),%rax
   1400020de:	48 89 c1             	mov    %rax,%rcx
   1400020e1:	e8 6a 01 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   1400020e6:	48 8d 85 10 03 00 00 	lea    0x310(%rbp),%rax
   1400020ed:	48 89 c1             	mov    %rax,%rcx
   1400020f0:	e8 33 01 00 00       	call   140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   1400020f5:	eb 03                	jmp    1400020fa <main+0x4d4>
   1400020f7:	48 89 c3             	mov    %rax,%rbx
   1400020fa:	48 8d 85 a0 04 00 00 	lea    0x4a0(%rbp),%rax
   140002101:	48 89 c1             	mov    %rax,%rcx
   140002104:	e8 47 01 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002109:	48 8d 85 c0 04 00 00 	lea    0x4c0(%rbp),%rax
   140002110:	48 89 c1             	mov    %rax,%rcx
   140002113:	e8 38 01 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002118:	48 8d 85 e0 04 00 00 	lea    0x4e0(%rbp),%rax
   14000211f:	48 89 c1             	mov    %rax,%rcx
   140002122:	e8 29 01 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002127:	48 8d 85 00 05 00 00 	lea    0x500(%rbp),%rax
   14000212e:	48 89 c1             	mov    %rax,%rcx
   140002131:	e8 1a 01 00 00       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002136:	48 89 d8             	mov    %rbx,%rax
   140002139:	48 89 c1             	mov    %rax,%rcx
   14000213c:	e8 2f 12 00 00       	call   140003370 <_Unwind_Resume>
   140002141:	48 81 c4 f8 05 00 00 	add    $0x5f8,%rsp
   140002148:	5b                   	pop    %rbx
   140002149:	5d                   	pop    %rbp
   14000214a:	c3                   	ret    

000000014000214b <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
   14000214b:	55                   	push   %rbp
   14000214c:	48 89 e5             	mov    %rsp,%rbp
   14000214f:	48 83 ec 20          	sub    $0x20,%rsp
   140002153:	48 8d 05 e6 5e 00 00 	lea    0x5ee6(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   14000215a:	48 89 c1             	mov    %rax,%rcx
   14000215d:	e8 b6 00 00 00       	call   140002218 <_ZNSt8ios_base4InitD1Ev>
   140002162:	90                   	nop
   140002163:	48 83 c4 20          	add    $0x20,%rsp
   140002167:	5d                   	pop    %rbp
   140002168:	c3                   	ret    

0000000140002169 <_Z41__static_initialization_and_destruction_0ii>:
   140002169:	55                   	push   %rbp
   14000216a:	48 89 e5             	mov    %rsp,%rbp
   14000216d:	48 83 ec 20          	sub    $0x20,%rsp
   140002171:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140002174:	89 55 18             	mov    %edx,0x18(%rbp)
   140002177:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   14000217b:	75 27                	jne    1400021a4 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   14000217d:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   140002184:	75 1e                	jne    1400021a4 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140002186:	48 8d 05 b3 5e 00 00 	lea    0x5eb3(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   14000218d:	48 89 c1             	mov    %rax,%rcx
   140002190:	e8 8b 00 00 00       	call   140002220 <_ZNSt8ios_base4InitC1Ev>
   140002195:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 14000214b <__tcf_0>
   14000219c:	48 89 c1             	mov    %rax,%rcx
   14000219f:	e8 4c f3 ff ff       	call   1400014f0 <atexit>
   1400021a4:	90                   	nop
   1400021a5:	48 83 c4 20          	add    $0x20,%rsp
   1400021a9:	5d                   	pop    %rbp
   1400021aa:	c3                   	ret    

00000001400021ab <_GLOBAL__sub_I__Z9file_sizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
   1400021ab:	55                   	push   %rbp
   1400021ac:	48 89 e5             	mov    %rsp,%rbp
   1400021af:	48 83 ec 20          	sub    $0x20,%rsp
   1400021b3:	ba ff ff 00 00       	mov    $0xffff,%edx
   1400021b8:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400021bd:	e8 a7 ff ff ff       	call   140002169 <_Z41__static_initialization_and_destruction_0ii>
   1400021c2:	90                   	nop
   1400021c3:	48 83 c4 20          	add    $0x20,%rsp
   1400021c7:	5d                   	pop    %rbp
   1400021c8:	c3                   	ret    
   1400021c9:	90                   	nop
   1400021ca:	90                   	nop
   1400021cb:	90                   	nop
   1400021cc:	90                   	nop
   1400021cd:	90                   	nop
   1400021ce:	90                   	nop
   1400021cf:	90                   	nop

00000001400021d0 <__gxx_personality_seh0>:
   1400021d0:	ff 25 6e 73 00 00    	jmp    *0x736e(%rip)        # 140009544 <__imp___gxx_personality_seh0>
   1400021d6:	90                   	nop
   1400021d7:	90                   	nop

00000001400021d8 <__cxa_rethrow>:
   1400021d8:	ff 25 5e 73 00 00    	jmp    *0x735e(%rip)        # 14000953c <__imp___cxa_rethrow>
   1400021de:	90                   	nop
   1400021df:	90                   	nop

00000001400021e0 <__cxa_end_catch>:
   1400021e0:	ff 25 4e 73 00 00    	jmp    *0x734e(%rip)        # 140009534 <__imp___cxa_end_catch>
   1400021e6:	90                   	nop
   1400021e7:	90                   	nop

00000001400021e8 <__cxa_begin_catch>:
   1400021e8:	ff 25 3e 73 00 00    	jmp    *0x733e(%rip)        # 14000952c <__imp___cxa_begin_catch>
   1400021ee:	90                   	nop
   1400021ef:	90                   	nop

00000001400021f0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   1400021f0:	ff 25 2e 73 00 00    	jmp    *0x732e(%rip)        # 140009524 <__imp__ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   1400021f6:	90                   	nop
   1400021f7:	90                   	nop

00000001400021f8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   1400021f8:	ff 25 1e 73 00 00    	jmp    *0x731e(%rip)        # 14000951c <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400021fe:	90                   	nop
   1400021ff:	90                   	nop

0000000140002200 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>:
   140002200:	ff 25 0e 73 00 00    	jmp    *0x730e(%rip)        # 140009514 <__imp__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_>
   140002206:	90                   	nop
   140002207:	90                   	nop

0000000140002208 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140002208:	ff 25 fe 72 00 00    	jmp    *0x72fe(%rip)        # 14000950c <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000220e:	90                   	nop
   14000220f:	90                   	nop

0000000140002210 <_ZSt19__throw_logic_errorPKc>:
   140002210:	ff 25 e6 72 00 00    	jmp    *0x72e6(%rip)        # 1400094fc <__imp__ZSt19__throw_logic_errorPKc>
   140002216:	90                   	nop
   140002217:	90                   	nop

0000000140002218 <_ZNSt8ios_base4InitD1Ev>:
   140002218:	ff 25 d6 72 00 00    	jmp    *0x72d6(%rip)        # 1400094f4 <__imp__ZNSt8ios_base4InitD1Ev>
   14000221e:	90                   	nop
   14000221f:	90                   	nop

0000000140002220 <_ZNSt8ios_base4InitC1Ev>:
   140002220:	ff 25 c6 72 00 00    	jmp    *0x72c6(%rip)        # 1400094ec <__imp__ZNSt8ios_base4InitC1Ev>
   140002226:	90                   	nop
   140002227:	90                   	nop

0000000140002228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140002228:	ff 25 b6 72 00 00    	jmp    *0x72b6(%rip)        # 1400094e4 <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   14000222e:	90                   	nop
   14000222f:	90                   	nop

0000000140002230 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev>:
   140002230:	ff 25 a6 72 00 00    	jmp    *0x72a6(%rip)        # 1400094dc <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev>
   140002236:	90                   	nop
   140002237:	90                   	nop

0000000140002238 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>:
   140002238:	ff 25 96 72 00 00    	jmp    *0x7296(%rip)        # 1400094d4 <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
   14000223e:	90                   	nop
   14000223f:	90                   	nop

0000000140002240 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_>:
   140002240:	ff 25 86 72 00 00    	jmp    *0x7286(%rip)        # 1400094cc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_>
   140002246:	90                   	nop
   140002247:	90                   	nop

0000000140002248 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc>:
   140002248:	ff 25 76 72 00 00    	jmp    *0x7276(%rip)        # 1400094c4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc>
   14000224e:	90                   	nop
   14000224f:	90                   	nop

0000000140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>:
   140002250:	ff 25 66 72 00 00    	jmp    *0x7266(%rip)        # 1400094bc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140002256:	90                   	nop
   140002257:	90                   	nop

0000000140002258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>:
   140002258:	ff 25 56 72 00 00    	jmp    *0x7256(%rip)        # 1400094b4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   14000225e:	90                   	nop
   14000225f:	90                   	nop

0000000140002260 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>:
   140002260:	ff 25 46 72 00 00    	jmp    *0x7246(%rip)        # 1400094ac <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
   140002266:	90                   	nop
   140002267:	90                   	nop

0000000140002268 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>:
   140002268:	ff 25 36 72 00 00    	jmp    *0x7236(%rip)        # 1400094a4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>
   14000226e:	90                   	nop
   14000226f:	90                   	nop

0000000140002270 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>:
   140002270:	ff 25 26 72 00 00    	jmp    *0x7226(%rip)        # 14000949c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
   140002276:	90                   	nop
   140002277:	90                   	nop

0000000140002278 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc>:
   140002278:	ff 25 16 72 00 00    	jmp    *0x7216(%rip)        # 140009494 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc>
   14000227e:	90                   	nop
   14000227f:	90                   	nop

0000000140002280 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_>:
   140002280:	ff 25 06 72 00 00    	jmp    *0x7206(%rip)        # 14000948c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_>
   140002286:	90                   	nop
   140002287:	90                   	nop

0000000140002288 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>:
   140002288:	ff 25 f6 71 00 00    	jmp    *0x71f6(%rip)        # 140009484 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>
   14000228e:	90                   	nop
   14000228f:	90                   	nop

0000000140002290 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>:
   140002290:	ff 25 e6 71 00 00    	jmp    *0x71e6(%rip)        # 14000947c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
   140002296:	90                   	nop
   140002297:	90                   	nop

0000000140002298 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>:
   140002298:	ff 25 d6 71 00 00    	jmp    *0x71d6(%rip)        # 140009474 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>
   14000229e:	90                   	nop
   14000229f:	90                   	nop

00000001400022a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>:
   1400022a0:	ff 25 c6 71 00 00    	jmp    *0x71c6(%rip)        # 14000946c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>
   1400022a6:	90                   	nop
   1400022a7:	90                   	nop

00000001400022a8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>:
   1400022a8:	ff 25 b6 71 00 00    	jmp    *0x71b6(%rip)        # 140009464 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
   1400022ae:	90                   	nop
   1400022af:	90                   	nop

00000001400022b0 <_ZNSolsEi>:
   1400022b0:	ff 25 a6 71 00 00    	jmp    *0x71a6(%rip)        # 14000945c <__imp__ZNSolsEi>
   1400022b6:	90                   	nop
   1400022b7:	90                   	nop

00000001400022b8 <_ZNSolsEPFRSoS_E>:
   1400022b8:	ff 25 96 71 00 00    	jmp    *0x7196(%rip)        # 140009454 <__imp__ZNSolsEPFRSoS_E>
   1400022be:	90                   	nop
   1400022bf:	90                   	nop

00000001400022c0 <_ZNSirsERi>:
   1400022c0:	ff 25 86 71 00 00    	jmp    *0x7186(%rip)        # 14000944c <__imp__ZNSirsERi>
   1400022c6:	90                   	nop
   1400022c7:	90                   	nop

00000001400022c8 <_ZNSaIcED2Ev>:
   1400022c8:	ff 25 76 71 00 00    	jmp    *0x7176(%rip)        # 140009444 <__imp__ZNSaIcED2Ev>
   1400022ce:	90                   	nop
   1400022cf:	90                   	nop

00000001400022d0 <_ZNSaIcED1Ev>:
   1400022d0:	ff 25 66 71 00 00    	jmp    *0x7166(%rip)        # 14000943c <__imp__ZNSaIcED1Ev>
   1400022d6:	90                   	nop
   1400022d7:	90                   	nop

00000001400022d8 <_ZNSaIcEC1Ev>:
   1400022d8:	ff 25 56 71 00 00    	jmp    *0x7156(%rip)        # 140009434 <__imp__ZNSaIcEC1Ev>
   1400022de:	90                   	nop
   1400022df:	90                   	nop

00000001400022e0 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>:
   1400022e0:	ff 25 46 71 00 00    	jmp    *0x7146(%rip)        # 14000942c <__imp__ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   1400022e6:	90                   	nop
   1400022e7:	90                   	nop

00000001400022e8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>:
   1400022e8:	ff 25 36 71 00 00    	jmp    *0x7136(%rip)        # 140009424 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   1400022ee:	90                   	nop
   1400022ef:	90                   	nop

00000001400022f0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>:
   1400022f0:	ff 25 26 71 00 00    	jmp    *0x7126(%rip)        # 14000941c <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   1400022f6:	90                   	nop
   1400022f7:	90                   	nop
   1400022f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400022ff:	00 

0000000140002300 <__do_global_dtors>:
   140002300:	48 83 ec 28          	sub    $0x28,%rsp
   140002304:	48 8b 05 05 1d 00 00 	mov    0x1d05(%rip),%rax        # 140004010 <p.0>
   14000230b:	48 8b 00             	mov    (%rax),%rax
   14000230e:	48 85 c0             	test   %rax,%rax
   140002311:	74 22                	je     140002335 <__do_global_dtors+0x35>
   140002313:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002318:	ff d0                	call   *%rax
   14000231a:	48 8b 05 ef 1c 00 00 	mov    0x1cef(%rip),%rax        # 140004010 <p.0>
   140002321:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140002325:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002329:	48 89 15 e0 1c 00 00 	mov    %rdx,0x1ce0(%rip)        # 140004010 <p.0>
   140002330:	48 85 c0             	test   %rax,%rax
   140002333:	75 e3                	jne    140002318 <__do_global_dtors+0x18>
   140002335:	48 83 c4 28          	add    $0x28,%rsp
   140002339:	c3                   	ret    
   14000233a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002340 <__do_global_ctors>:
   140002340:	56                   	push   %rsi
   140002341:	53                   	push   %rbx
   140002342:	48 83 ec 28          	sub    $0x28,%rsp
   140002346:	48 8b 15 53 31 00 00 	mov    0x3153(%rip),%rdx        # 1400054a0 <.refptr.__CTOR_LIST__>
   14000234d:	48 8b 02             	mov    (%rdx),%rax
   140002350:	89 c1                	mov    %eax,%ecx
   140002352:	83 f8 ff             	cmp    $0xffffffff,%eax
   140002355:	74 39                	je     140002390 <__do_global_ctors+0x50>
   140002357:	85 c9                	test   %ecx,%ecx
   140002359:	74 20                	je     14000237b <__do_global_ctors+0x3b>
   14000235b:	89 c8                	mov    %ecx,%eax
   14000235d:	83 e9 01             	sub    $0x1,%ecx
   140002360:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140002364:	48 29 c8             	sub    %rcx,%rax
   140002367:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000236c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002370:	ff 13                	call   *(%rbx)
   140002372:	48 83 eb 08          	sub    $0x8,%rbx
   140002376:	48 39 f3             	cmp    %rsi,%rbx
   140002379:	75 f5                	jne    140002370 <__do_global_ctors+0x30>
   14000237b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140002300 <__do_global_dtors>
   140002382:	48 83 c4 28          	add    $0x28,%rsp
   140002386:	5b                   	pop    %rbx
   140002387:	5e                   	pop    %rsi
   140002388:	e9 63 f1 ff ff       	jmp    1400014f0 <atexit>
   14000238d:	0f 1f 00             	nopl   (%rax)
   140002390:	31 c0                	xor    %eax,%eax
   140002392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002398:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000239c:	89 c1                	mov    %eax,%ecx
   14000239e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   1400023a3:	4c 89 c0             	mov    %r8,%rax
   1400023a6:	75 f0                	jne    140002398 <__do_global_ctors+0x58>
   1400023a8:	eb ad                	jmp    140002357 <__do_global_ctors+0x17>
   1400023aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400023b0 <__main>:
   1400023b0:	8b 05 9a 5c 00 00    	mov    0x5c9a(%rip),%eax        # 140008050 <initialized>
   1400023b6:	85 c0                	test   %eax,%eax
   1400023b8:	74 06                	je     1400023c0 <__main+0x10>
   1400023ba:	c3                   	ret    
   1400023bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400023c0:	c7 05 86 5c 00 00 01 	movl   $0x1,0x5c86(%rip)        # 140008050 <initialized>
   1400023c7:	00 00 00 
   1400023ca:	e9 71 ff ff ff       	jmp    140002340 <__do_global_ctors>
   1400023cf:	90                   	nop

00000001400023d0 <_setargv>:
   1400023d0:	31 c0                	xor    %eax,%eax
   1400023d2:	c3                   	ret    
   1400023d3:	90                   	nop
   1400023d4:	90                   	nop
   1400023d5:	90                   	nop
   1400023d6:	90                   	nop
   1400023d7:	90                   	nop
   1400023d8:	90                   	nop
   1400023d9:	90                   	nop
   1400023da:	90                   	nop
   1400023db:	90                   	nop
   1400023dc:	90                   	nop
   1400023dd:	90                   	nop
   1400023de:	90                   	nop
   1400023df:	90                   	nop

00000001400023e0 <__dyn_tls_dtor>:
   1400023e0:	48 83 ec 28          	sub    $0x28,%rsp
   1400023e4:	83 fa 03             	cmp    $0x3,%edx
   1400023e7:	74 17                	je     140002400 <__dyn_tls_dtor+0x20>
   1400023e9:	85 d2                	test   %edx,%edx
   1400023eb:	74 13                	je     140002400 <__dyn_tls_dtor+0x20>
   1400023ed:	b8 01 00 00 00       	mov    $0x1,%eax
   1400023f2:	48 83 c4 28          	add    $0x28,%rsp
   1400023f6:	c3                   	ret    
   1400023f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400023fe:	00 00 
   140002400:	e8 9b 0a 00 00       	call   140002ea0 <__mingw_TLScallback>
   140002405:	b8 01 00 00 00       	mov    $0x1,%eax
   14000240a:	48 83 c4 28          	add    $0x28,%rsp
   14000240e:	c3                   	ret    
   14000240f:	90                   	nop

0000000140002410 <__dyn_tls_init>:
   140002410:	56                   	push   %rsi
   140002411:	53                   	push   %rbx
   140002412:	48 83 ec 28          	sub    $0x28,%rsp
   140002416:	48 8b 05 43 30 00 00 	mov    0x3043(%rip),%rax        # 140005460 <.refptr._CRT_MT>
   14000241d:	83 38 02             	cmpl   $0x2,(%rax)
   140002420:	74 06                	je     140002428 <__dyn_tls_init+0x18>
   140002422:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140002428:	83 fa 02             	cmp    $0x2,%edx
   14000242b:	74 13                	je     140002440 <__dyn_tls_init+0x30>
   14000242d:	83 fa 01             	cmp    $0x1,%edx
   140002430:	74 4e                	je     140002480 <__dyn_tls_init+0x70>
   140002432:	b8 01 00 00 00       	mov    $0x1,%eax
   140002437:	48 83 c4 28          	add    $0x28,%rsp
   14000243b:	5b                   	pop    %rbx
   14000243c:	5e                   	pop    %rsi
   14000243d:	c3                   	ret    
   14000243e:	66 90                	xchg   %ax,%ax
   140002440:	48 8d 1d 11 8c 00 00 	lea    0x8c11(%rip),%rbx        # 14000b058 <__xd_z>
   140002447:	48 8d 35 0a 8c 00 00 	lea    0x8c0a(%rip),%rsi        # 14000b058 <__xd_z>
   14000244e:	48 39 de             	cmp    %rbx,%rsi
   140002451:	74 df                	je     140002432 <__dyn_tls_init+0x22>
   140002453:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002458:	48 8b 03             	mov    (%rbx),%rax
   14000245b:	48 85 c0             	test   %rax,%rax
   14000245e:	74 02                	je     140002462 <__dyn_tls_init+0x52>
   140002460:	ff d0                	call   *%rax
   140002462:	48 83 c3 08          	add    $0x8,%rbx
   140002466:	48 39 de             	cmp    %rbx,%rsi
   140002469:	75 ed                	jne    140002458 <__dyn_tls_init+0x48>
   14000246b:	b8 01 00 00 00       	mov    $0x1,%eax
   140002470:	48 83 c4 28          	add    $0x28,%rsp
   140002474:	5b                   	pop    %rbx
   140002475:	5e                   	pop    %rsi
   140002476:	c3                   	ret    
   140002477:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000247e:	00 00 
   140002480:	e8 1b 0a 00 00       	call   140002ea0 <__mingw_TLScallback>
   140002485:	b8 01 00 00 00       	mov    $0x1,%eax
   14000248a:	48 83 c4 28          	add    $0x28,%rsp
   14000248e:	5b                   	pop    %rbx
   14000248f:	5e                   	pop    %rsi
   140002490:	c3                   	ret    
   140002491:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002498:	00 00 00 00 
   14000249c:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400024a0 <__tlregdtor>:
   1400024a0:	31 c0                	xor    %eax,%eax
   1400024a2:	c3                   	ret    
   1400024a3:	90                   	nop
   1400024a4:	90                   	nop
   1400024a5:	90                   	nop
   1400024a6:	90                   	nop
   1400024a7:	90                   	nop
   1400024a8:	90                   	nop
   1400024a9:	90                   	nop
   1400024aa:	90                   	nop
   1400024ab:	90                   	nop
   1400024ac:	90                   	nop
   1400024ad:	90                   	nop
   1400024ae:	90                   	nop
   1400024af:	90                   	nop

00000001400024b0 <_matherr>:
   1400024b0:	56                   	push   %rsi
   1400024b1:	53                   	push   %rbx
   1400024b2:	48 83 ec 78          	sub    $0x78,%rsp
   1400024b6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   1400024bb:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   1400024c0:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   1400024c6:	83 39 06             	cmpl   $0x6,(%rcx)
   1400024c9:	0f 87 cd 00 00 00    	ja     14000259c <_matherr+0xec>
   1400024cf:	8b 01                	mov    (%rcx),%eax
   1400024d1:	48 8d 15 cc 2d 00 00 	lea    0x2dcc(%rip),%rdx        # 1400052a4 <.rdata+0x124>
   1400024d8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400024dc:	48 01 d0             	add    %rdx,%rax
   1400024df:	ff e0                	jmp    *%rax
   1400024e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400024e8:	48 8d 1d b0 2c 00 00 	lea    0x2cb0(%rip),%rbx        # 14000519f <.rdata+0x1f>
   1400024ef:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400024f5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400024fa:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400024ff:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140002503:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002508:	e8 03 0f 00 00       	call   140003410 <__acrt_iob_func>
   14000250d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140002514:	49 89 d8             	mov    %rbx,%r8
   140002517:	48 8d 15 5a 2d 00 00 	lea    0x2d5a(%rip),%rdx        # 140005278 <.rdata+0xf8>
   14000251e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140002524:	48 89 c1             	mov    %rax,%rcx
   140002527:	49 89 f1             	mov    %rsi,%r9
   14000252a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140002530:	e8 5b 0f 00 00       	call   140003490 <fprintf>
   140002535:	90                   	nop
   140002536:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   14000253b:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   140002540:	31 c0                	xor    %eax,%eax
   140002542:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   140002548:	48 83 c4 78          	add    $0x78,%rsp
   14000254c:	5b                   	pop    %rbx
   14000254d:	5e                   	pop    %rsi
   14000254e:	c3                   	ret    
   14000254f:	90                   	nop
   140002550:	48 8d 1d 29 2c 00 00 	lea    0x2c29(%rip),%rbx        # 140005180 <.rdata>
   140002557:	eb 96                	jmp    1400024ef <_matherr+0x3f>
   140002559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002560:	48 8d 1d 79 2c 00 00 	lea    0x2c79(%rip),%rbx        # 1400051e0 <.rdata+0x60>
   140002567:	eb 86                	jmp    1400024ef <_matherr+0x3f>
   140002569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002570:	48 8d 1d 49 2c 00 00 	lea    0x2c49(%rip),%rbx        # 1400051c0 <.rdata+0x40>
   140002577:	e9 73 ff ff ff       	jmp    1400024ef <_matherr+0x3f>
   14000257c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002580:	48 8d 1d a9 2c 00 00 	lea    0x2ca9(%rip),%rbx        # 140005230 <.rdata+0xb0>
   140002587:	e9 63 ff ff ff       	jmp    1400024ef <_matherr+0x3f>
   14000258c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002590:	48 8d 1d 71 2c 00 00 	lea    0x2c71(%rip),%rbx        # 140005208 <.rdata+0x88>
   140002597:	e9 53 ff ff ff       	jmp    1400024ef <_matherr+0x3f>
   14000259c:	48 8d 1d c3 2c 00 00 	lea    0x2cc3(%rip),%rbx        # 140005266 <.rdata+0xe6>
   1400025a3:	e9 47 ff ff ff       	jmp    1400024ef <_matherr+0x3f>
   1400025a8:	90                   	nop
   1400025a9:	90                   	nop
   1400025aa:	90                   	nop
   1400025ab:	90                   	nop
   1400025ac:	90                   	nop
   1400025ad:	90                   	nop
   1400025ae:	90                   	nop
   1400025af:	90                   	nop

00000001400025b0 <_fpreset>:
   1400025b0:	db e3                	fninit 
   1400025b2:	c3                   	ret    
   1400025b3:	90                   	nop
   1400025b4:	90                   	nop
   1400025b5:	90                   	nop
   1400025b6:	90                   	nop
   1400025b7:	90                   	nop
   1400025b8:	90                   	nop
   1400025b9:	90                   	nop
   1400025ba:	90                   	nop
   1400025bb:	90                   	nop
   1400025bc:	90                   	nop
   1400025bd:	90                   	nop
   1400025be:	90                   	nop
   1400025bf:	90                   	nop

00000001400025c0 <__report_error>:
   1400025c0:	41 54                	push   %r12
   1400025c2:	53                   	push   %rbx
   1400025c3:	48 83 ec 38          	sub    $0x38,%rsp
   1400025c7:	49 89 cc             	mov    %rcx,%r12
   1400025ca:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   1400025cf:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400025d4:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   1400025d9:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400025de:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400025e3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400025e8:	e8 23 0e 00 00       	call   140003410 <__acrt_iob_func>
   1400025ed:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400025f3:	ba 01 00 00 00       	mov    $0x1,%edx
   1400025f8:	48 8d 0d c1 2c 00 00 	lea    0x2cc1(%rip),%rcx        # 1400052c0 <.rdata>
   1400025ff:	49 89 c1             	mov    %rax,%r9
   140002602:	e8 99 0e 00 00       	call   1400034a0 <fwrite>
   140002607:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   14000260c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002611:	e8 fa 0d 00 00       	call   140003410 <__acrt_iob_func>
   140002616:	4c 89 e2             	mov    %r12,%rdx
   140002619:	48 89 c1             	mov    %rax,%rcx
   14000261c:	49 89 d8             	mov    %rbx,%r8
   14000261f:	e8 ac 0e 00 00       	call   1400034d0 <vfprintf>
   140002624:	e8 4f 0e 00 00       	call   140003478 <abort>
   140002629:	90                   	nop
   14000262a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002630 <mark_section_writable>:
   140002630:	41 54                	push   %r12
   140002632:	56                   	push   %rsi
   140002633:	53                   	push   %rbx
   140002634:	48 83 ec 50          	sub    $0x50,%rsp
   140002638:	48 63 1d 75 5a 00 00 	movslq 0x5a75(%rip),%rbx        # 1400080b4 <maxSections>
   14000263f:	49 89 cc             	mov    %rcx,%r12
   140002642:	85 db                	test   %ebx,%ebx
   140002644:	0f 8e 16 01 00 00    	jle    140002760 <mark_section_writable+0x130>
   14000264a:	48 8b 05 67 5a 00 00 	mov    0x5a67(%rip),%rax        # 1400080b8 <the_secs>
   140002651:	45 31 c9             	xor    %r9d,%r9d
   140002654:	48 83 c0 18          	add    $0x18,%rax
   140002658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000265f:	00 
   140002660:	4c 8b 00             	mov    (%rax),%r8
   140002663:	4d 39 e0             	cmp    %r12,%r8
   140002666:	77 13                	ja     14000267b <mark_section_writable+0x4b>
   140002668:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000266c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000266f:	49 01 d0             	add    %rdx,%r8
   140002672:	4d 39 c4             	cmp    %r8,%r12
   140002675:	0f 82 8a 00 00 00    	jb     140002705 <mark_section_writable+0xd5>
   14000267b:	41 83 c1 01          	add    $0x1,%r9d
   14000267f:	48 83 c0 28          	add    $0x28,%rax
   140002683:	41 39 d9             	cmp    %ebx,%r9d
   140002686:	75 d8                	jne    140002660 <mark_section_writable+0x30>
   140002688:	4c 89 e1             	mov    %r12,%rcx
   14000268b:	e8 20 0a 00 00       	call   1400030b0 <__mingw_GetSectionForAddress>
   140002690:	48 89 c6             	mov    %rax,%rsi
   140002693:	48 85 c0             	test   %rax,%rax
   140002696:	0f 84 e6 00 00 00    	je     140002782 <mark_section_writable+0x152>
   14000269c:	48 8b 05 15 5a 00 00 	mov    0x5a15(%rip),%rax        # 1400080b8 <the_secs>
   1400026a3:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   1400026a7:	48 c1 e3 03          	shl    $0x3,%rbx
   1400026ab:	48 01 d8             	add    %rbx,%rax
   1400026ae:	48 89 70 20          	mov    %rsi,0x20(%rax)
   1400026b2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400026b8:	e8 23 0b 00 00       	call   1400031e0 <_GetPEImageBase>
   1400026bd:	8b 56 0c             	mov    0xc(%rsi),%edx
   1400026c0:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   1400026c6:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   1400026ca:	48 8b 05 e7 59 00 00 	mov    0x59e7(%rip),%rax        # 1400080b8 <the_secs>
   1400026d1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   1400026d6:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   1400026db:	ff 15 4b 6c 00 00    	call   *0x6c4b(%rip)        # 14000932c <__imp_VirtualQuery>
   1400026e1:	48 85 c0             	test   %rax,%rax
   1400026e4:	0f 84 7d 00 00 00    	je     140002767 <mark_section_writable+0x137>
   1400026ea:	8b 44 24 44          	mov    0x44(%rsp),%eax
   1400026ee:	8d 50 c0             	lea    -0x40(%rax),%edx
   1400026f1:	83 e2 bf             	and    $0xffffffbf,%edx
   1400026f4:	74 08                	je     1400026fe <mark_section_writable+0xce>
   1400026f6:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400026f9:	83 e2 fb             	and    $0xfffffffb,%edx
   1400026fc:	75 12                	jne    140002710 <mark_section_writable+0xe0>
   1400026fe:	83 05 af 59 00 00 01 	addl   $0x1,0x59af(%rip)        # 1400080b4 <maxSections>
   140002705:	48 83 c4 50          	add    $0x50,%rsp
   140002709:	5b                   	pop    %rbx
   14000270a:	5e                   	pop    %rsi
   14000270b:	41 5c                	pop    %r12
   14000270d:	c3                   	ret    
   14000270e:	66 90                	xchg   %ax,%ax
   140002710:	83 f8 02             	cmp    $0x2,%eax
   140002713:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002718:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000271d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140002723:	b8 40 00 00 00       	mov    $0x40,%eax
   140002728:	44 0f 45 c0          	cmovne %eax,%r8d
   14000272c:	48 03 1d 85 59 00 00 	add    0x5985(%rip),%rbx        # 1400080b8 <the_secs>
   140002733:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140002737:	49 89 d9             	mov    %rbx,%r9
   14000273a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000273e:	ff 15 e0 6b 00 00    	call   *0x6be0(%rip)        # 140009324 <__imp_VirtualProtect>
   140002744:	85 c0                	test   %eax,%eax
   140002746:	75 b6                	jne    1400026fe <mark_section_writable+0xce>
   140002748:	ff 15 9e 6b 00 00    	call   *0x6b9e(%rip)        # 1400092ec <__imp_GetLastError>
   14000274e:	48 8d 0d e3 2b 00 00 	lea    0x2be3(%rip),%rcx        # 140005338 <.rdata+0x78>
   140002755:	89 c2                	mov    %eax,%edx
   140002757:	e8 64 fe ff ff       	call   1400025c0 <__report_error>
   14000275c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002760:	31 db                	xor    %ebx,%ebx
   140002762:	e9 21 ff ff ff       	jmp    140002688 <mark_section_writable+0x58>
   140002767:	48 8b 05 4a 59 00 00 	mov    0x594a(%rip),%rax        # 1400080b8 <the_secs>
   14000276e:	8b 56 08             	mov    0x8(%rsi),%edx
   140002771:	48 8d 0d 88 2b 00 00 	lea    0x2b88(%rip),%rcx        # 140005300 <.rdata+0x40>
   140002778:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000277d:	e8 3e fe ff ff       	call   1400025c0 <__report_error>
   140002782:	4c 89 e2             	mov    %r12,%rdx
   140002785:	48 8d 0d 54 2b 00 00 	lea    0x2b54(%rip),%rcx        # 1400052e0 <.rdata+0x20>
   14000278c:	e8 2f fe ff ff       	call   1400025c0 <__report_error>
   140002791:	90                   	nop
   140002792:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002799:	00 00 00 00 
   14000279d:	0f 1f 00             	nopl   (%rax)

00000001400027a0 <_pei386_runtime_relocator>:
   1400027a0:	55                   	push   %rbp
   1400027a1:	41 57                	push   %r15
   1400027a3:	41 56                	push   %r14
   1400027a5:	41 55                	push   %r13
   1400027a7:	41 54                	push   %r12
   1400027a9:	57                   	push   %rdi
   1400027aa:	56                   	push   %rsi
   1400027ab:	53                   	push   %rbx
   1400027ac:	48 83 ec 48          	sub    $0x48,%rsp
   1400027b0:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   1400027b5:	8b 35 f5 58 00 00    	mov    0x58f5(%rip),%esi        # 1400080b0 <was_init.0>
   1400027bb:	85 f6                	test   %esi,%esi
   1400027bd:	74 11                	je     1400027d0 <_pei386_runtime_relocator+0x30>
   1400027bf:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   1400027c3:	5b                   	pop    %rbx
   1400027c4:	5e                   	pop    %rsi
   1400027c5:	5f                   	pop    %rdi
   1400027c6:	41 5c                	pop    %r12
   1400027c8:	41 5d                	pop    %r13
   1400027ca:	41 5e                	pop    %r14
   1400027cc:	41 5f                	pop    %r15
   1400027ce:	5d                   	pop    %rbp
   1400027cf:	c3                   	ret    
   1400027d0:	c7 05 d6 58 00 00 01 	movl   $0x1,0x58d6(%rip)        # 1400080b0 <was_init.0>
   1400027d7:	00 00 00 
   1400027da:	e8 51 09 00 00       	call   140003130 <__mingw_GetSectionCount>
   1400027df:	48 98                	cltq   
   1400027e1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400027e5:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   1400027ec:	00 
   1400027ed:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400027f1:	e8 8a 0b 00 00       	call   140003380 <___chkstk_ms>
   1400027f6:	48 8b 3d b3 2c 00 00 	mov    0x2cb3(%rip),%rdi        # 1400054b0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400027fd:	48 8b 1d bc 2c 00 00 	mov    0x2cbc(%rip),%rbx        # 1400054c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140002804:	c7 05 a6 58 00 00 00 	movl   $0x0,0x58a6(%rip)        # 1400080b4 <maxSections>
   14000280b:	00 00 00 
   14000280e:	48 29 c4             	sub    %rax,%rsp
   140002811:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140002816:	48 89 05 9b 58 00 00 	mov    %rax,0x589b(%rip)        # 1400080b8 <the_secs>
   14000281d:	48 89 f8             	mov    %rdi,%rax
   140002820:	48 29 d8             	sub    %rbx,%rax
   140002823:	48 83 f8 07          	cmp    $0x7,%rax
   140002827:	7e 96                	jle    1400027bf <_pei386_runtime_relocator+0x1f>
   140002829:	8b 13                	mov    (%rbx),%edx
   14000282b:	48 83 f8 0b          	cmp    $0xb,%rax
   14000282f:	0f 8f 83 01 00 00    	jg     1400029b8 <_pei386_runtime_relocator+0x218>
   140002835:	8b 03                	mov    (%rbx),%eax
   140002837:	85 c0                	test   %eax,%eax
   140002839:	0f 85 29 02 00 00    	jne    140002a68 <_pei386_runtime_relocator+0x2c8>
   14000283f:	8b 43 04             	mov    0x4(%rbx),%eax
   140002842:	85 c0                	test   %eax,%eax
   140002844:	0f 85 1e 02 00 00    	jne    140002a68 <_pei386_runtime_relocator+0x2c8>
   14000284a:	8b 53 08             	mov    0x8(%rbx),%edx
   14000284d:	83 fa 01             	cmp    $0x1,%edx
   140002850:	0f 85 72 02 00 00    	jne    140002ac8 <_pei386_runtime_relocator+0x328>
   140002856:	48 83 c3 0c          	add    $0xc,%rbx
   14000285a:	48 39 fb             	cmp    %rdi,%rbx
   14000285d:	0f 83 5c ff ff ff    	jae    1400027bf <_pei386_runtime_relocator+0x1f>
   140002863:	4c 8b 3d 76 2c 00 00 	mov    0x2c76(%rip),%r15        # 1400054e0 <.refptr.__image_base__>
   14000286a:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   140002871:	ff ff ff 
   140002874:	eb 5d                	jmp    1400028d3 <_pei386_runtime_relocator+0x133>
   140002876:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000287d:	00 00 00 
   140002880:	41 0f b6 06          	movzbl (%r14),%eax
   140002884:	49 89 c3             	mov    %rax,%r11
   140002887:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   14000288e:	84 c0                	test   %al,%al
   140002890:	49 0f 48 c3          	cmovs  %r11,%rax
   140002894:	48 29 c8             	sub    %rcx,%rax
   140002897:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   14000289e:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400028a2:	75 17                	jne    1400028bb <_pei386_runtime_relocator+0x11b>
   1400028a4:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   1400028a8:	0f 8c 06 02 00 00    	jl     140002ab4 <_pei386_runtime_relocator+0x314>
   1400028ae:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   1400028b5:	0f 8f f9 01 00 00    	jg     140002ab4 <_pei386_runtime_relocator+0x314>
   1400028bb:	4c 89 f1             	mov    %r14,%rcx
   1400028be:	e8 6d fd ff ff       	call   140002630 <mark_section_writable>
   1400028c3:	45 88 2e             	mov    %r13b,(%r14)
   1400028c6:	48 83 c3 0c          	add    $0xc,%rbx
   1400028ca:	48 39 fb             	cmp    %rdi,%rbx
   1400028cd:	0f 83 8d 00 00 00    	jae    140002960 <_pei386_runtime_relocator+0x1c0>
   1400028d3:	8b 0b                	mov    (%rbx),%ecx
   1400028d5:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   1400028d9:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   1400028dd:	4c 01 f9             	add    %r15,%rcx
   1400028e0:	41 0f b6 d0          	movzbl %r8b,%edx
   1400028e4:	4c 8b 09             	mov    (%rcx),%r9
   1400028e7:	4d 01 fe             	add    %r15,%r14
   1400028ea:	83 fa 20             	cmp    $0x20,%edx
   1400028ed:	0f 84 25 01 00 00    	je     140002a18 <_pei386_runtime_relocator+0x278>
   1400028f3:	0f 87 e7 00 00 00    	ja     1400029e0 <_pei386_runtime_relocator+0x240>
   1400028f9:	83 fa 08             	cmp    $0x8,%edx
   1400028fc:	74 82                	je     140002880 <_pei386_runtime_relocator+0xe0>
   1400028fe:	83 fa 10             	cmp    $0x10,%edx
   140002901:	0f 85 a1 01 00 00    	jne    140002aa8 <_pei386_runtime_relocator+0x308>
   140002907:	41 0f b7 06          	movzwl (%r14),%eax
   14000290b:	49 89 c3             	mov    %rax,%r11
   14000290e:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   140002915:	66 85 c0             	test   %ax,%ax
   140002918:	49 0f 48 c3          	cmovs  %r11,%rax
   14000291c:	48 29 c8             	sub    %rcx,%rax
   14000291f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002926:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000292a:	75 1a                	jne    140002946 <_pei386_runtime_relocator+0x1a6>
   14000292c:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   140002933:	0f 8c 7b 01 00 00    	jl     140002ab4 <_pei386_runtime_relocator+0x314>
   140002939:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   140002940:	0f 8f 6e 01 00 00    	jg     140002ab4 <_pei386_runtime_relocator+0x314>
   140002946:	4c 89 f1             	mov    %r14,%rcx
   140002949:	48 83 c3 0c          	add    $0xc,%rbx
   14000294d:	e8 de fc ff ff       	call   140002630 <mark_section_writable>
   140002952:	66 45 89 2e          	mov    %r13w,(%r14)
   140002956:	48 39 fb             	cmp    %rdi,%rbx
   140002959:	0f 82 74 ff ff ff    	jb     1400028d3 <_pei386_runtime_relocator+0x133>
   14000295f:	90                   	nop
   140002960:	8b 15 4e 57 00 00    	mov    0x574e(%rip),%edx        # 1400080b4 <maxSections>
   140002966:	85 d2                	test   %edx,%edx
   140002968:	0f 8e 51 fe ff ff    	jle    1400027bf <_pei386_runtime_relocator+0x1f>
   14000296e:	48 8b 3d af 69 00 00 	mov    0x69af(%rip),%rdi        # 140009324 <__imp_VirtualProtect>
   140002975:	31 db                	xor    %ebx,%ebx
   140002977:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   14000297b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002980:	48 8b 05 31 57 00 00 	mov    0x5731(%rip),%rax        # 1400080b8 <the_secs>
   140002987:	48 01 d8             	add    %rbx,%rax
   14000298a:	44 8b 00             	mov    (%rax),%r8d
   14000298d:	45 85 c0             	test   %r8d,%r8d
   140002990:	74 0d                	je     14000299f <_pei386_runtime_relocator+0x1ff>
   140002992:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140002996:	48 8b 48 08          	mov    0x8(%rax),%rcx
   14000299a:	4d 89 e1             	mov    %r12,%r9
   14000299d:	ff d7                	call   *%rdi
   14000299f:	83 c6 01             	add    $0x1,%esi
   1400029a2:	48 83 c3 28          	add    $0x28,%rbx
   1400029a6:	3b 35 08 57 00 00    	cmp    0x5708(%rip),%esi        # 1400080b4 <maxSections>
   1400029ac:	7c d2                	jl     140002980 <_pei386_runtime_relocator+0x1e0>
   1400029ae:	e9 0c fe ff ff       	jmp    1400027bf <_pei386_runtime_relocator+0x1f>
   1400029b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400029b8:	85 d2                	test   %edx,%edx
   1400029ba:	0f 85 a8 00 00 00    	jne    140002a68 <_pei386_runtime_relocator+0x2c8>
   1400029c0:	8b 43 04             	mov    0x4(%rbx),%eax
   1400029c3:	89 c2                	mov    %eax,%edx
   1400029c5:	0b 53 08             	or     0x8(%rbx),%edx
   1400029c8:	0f 85 74 fe ff ff    	jne    140002842 <_pei386_runtime_relocator+0xa2>
   1400029ce:	48 83 c3 0c          	add    $0xc,%rbx
   1400029d2:	e9 5e fe ff ff       	jmp    140002835 <_pei386_runtime_relocator+0x95>
   1400029d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400029de:	00 00 
   1400029e0:	83 fa 40             	cmp    $0x40,%edx
   1400029e3:	0f 85 bf 00 00 00    	jne    140002aa8 <_pei386_runtime_relocator+0x308>
   1400029e9:	49 8b 06             	mov    (%r14),%rax
   1400029ec:	48 29 c8             	sub    %rcx,%rax
   1400029ef:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400029f6:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400029fa:	75 09                	jne    140002a05 <_pei386_runtime_relocator+0x265>
   1400029fc:	4d 85 ed             	test   %r13,%r13
   1400029ff:	0f 89 af 00 00 00    	jns    140002ab4 <_pei386_runtime_relocator+0x314>
   140002a05:	4c 89 f1             	mov    %r14,%rcx
   140002a08:	e8 23 fc ff ff       	call   140002630 <mark_section_writable>
   140002a0d:	4d 89 2e             	mov    %r13,(%r14)
   140002a10:	e9 b1 fe ff ff       	jmp    1400028c6 <_pei386_runtime_relocator+0x126>
   140002a15:	0f 1f 00             	nopl   (%rax)
   140002a18:	41 8b 06             	mov    (%r14),%eax
   140002a1b:	49 89 c2             	mov    %rax,%r10
   140002a1e:	4c 09 e0             	or     %r12,%rax
   140002a21:	45 85 d2             	test   %r10d,%r10d
   140002a24:	49 0f 49 c2          	cmovns %r10,%rax
   140002a28:	48 29 c8             	sub    %rcx,%rax
   140002a2b:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002a32:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140002a36:	75 19                	jne    140002a51 <_pei386_runtime_relocator+0x2b1>
   140002a38:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   140002a3f:	ff ff ff 
   140002a42:	49 39 c5             	cmp    %rax,%r13
   140002a45:	7e 6d                	jle    140002ab4 <_pei386_runtime_relocator+0x314>
   140002a47:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002a4c:	49 39 c5             	cmp    %rax,%r13
   140002a4f:	7f 63                	jg     140002ab4 <_pei386_runtime_relocator+0x314>
   140002a51:	4c 89 f1             	mov    %r14,%rcx
   140002a54:	e8 d7 fb ff ff       	call   140002630 <mark_section_writable>
   140002a59:	45 89 2e             	mov    %r13d,(%r14)
   140002a5c:	e9 65 fe ff ff       	jmp    1400028c6 <_pei386_runtime_relocator+0x126>
   140002a61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002a68:	48 39 fb             	cmp    %rdi,%rbx
   140002a6b:	0f 83 4e fd ff ff    	jae    1400027bf <_pei386_runtime_relocator+0x1f>
   140002a71:	4c 8b 35 68 2a 00 00 	mov    0x2a68(%rip),%r14        # 1400054e0 <.refptr.__image_base__>
   140002a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a7f:	00 
   140002a80:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   140002a84:	44 8b 2b             	mov    (%rbx),%r13d
   140002a87:	48 83 c3 08          	add    $0x8,%rbx
   140002a8b:	4d 01 f4             	add    %r14,%r12
   140002a8e:	45 03 2c 24          	add    (%r12),%r13d
   140002a92:	4c 89 e1             	mov    %r12,%rcx
   140002a95:	e8 96 fb ff ff       	call   140002630 <mark_section_writable>
   140002a9a:	45 89 2c 24          	mov    %r13d,(%r12)
   140002a9e:	48 39 fb             	cmp    %rdi,%rbx
   140002aa1:	72 dd                	jb     140002a80 <_pei386_runtime_relocator+0x2e0>
   140002aa3:	e9 b8 fe ff ff       	jmp    140002960 <_pei386_runtime_relocator+0x1c0>
   140002aa8:	48 8d 0d e9 28 00 00 	lea    0x28e9(%rip),%rcx        # 140005398 <.rdata+0xd8>
   140002aaf:	e8 0c fb ff ff       	call   1400025c0 <__report_error>
   140002ab4:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   140002ab9:	4d 89 f0             	mov    %r14,%r8
   140002abc:	48 8d 0d 05 29 00 00 	lea    0x2905(%rip),%rcx        # 1400053c8 <.rdata+0x108>
   140002ac3:	e8 f8 fa ff ff       	call   1400025c0 <__report_error>
   140002ac8:	48 8d 0d 91 28 00 00 	lea    0x2891(%rip),%rcx        # 140005360 <.rdata+0xa0>
   140002acf:	e8 ec fa ff ff       	call   1400025c0 <__report_error>
   140002ad4:	90                   	nop
   140002ad5:	90                   	nop
   140002ad6:	90                   	nop
   140002ad7:	90                   	nop
   140002ad8:	90                   	nop
   140002ad9:	90                   	nop
   140002ada:	90                   	nop
   140002adb:	90                   	nop
   140002adc:	90                   	nop
   140002add:	90                   	nop
   140002ade:	90                   	nop
   140002adf:	90                   	nop

0000000140002ae0 <__mingw_raise_matherr>:
   140002ae0:	48 83 ec 58          	sub    $0x58,%rsp
   140002ae4:	48 8b 05 d5 55 00 00 	mov    0x55d5(%rip),%rax        # 1400080c0 <stUserMathErr>
   140002aeb:	48 85 c0             	test   %rax,%rax
   140002aee:	74 2c                	je     140002b1c <__mingw_raise_matherr+0x3c>
   140002af0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140002af7:	00 00 
   140002af9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140002afd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140002b02:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140002b07:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   140002b0d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140002b13:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140002b19:	ff d0                	call   *%rax
   140002b1b:	90                   	nop
   140002b1c:	48 83 c4 58          	add    $0x58,%rsp
   140002b20:	c3                   	ret    
   140002b21:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002b28:	00 00 00 00 
   140002b2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002b30 <__mingw_setusermatherr>:
   140002b30:	48 89 0d 89 55 00 00 	mov    %rcx,0x5589(%rip)        # 1400080c0 <stUserMathErr>
   140002b37:	e9 14 09 00 00       	jmp    140003450 <__setusermatherr>
   140002b3c:	90                   	nop
   140002b3d:	90                   	nop
   140002b3e:	90                   	nop
   140002b3f:	90                   	nop

0000000140002b40 <_gnu_exception_handler>:
   140002b40:	41 54                	push   %r12
   140002b42:	48 83 ec 20          	sub    $0x20,%rsp
   140002b46:	48 8b 11             	mov    (%rcx),%rdx
   140002b49:	8b 02                	mov    (%rdx),%eax
   140002b4b:	49 89 cc             	mov    %rcx,%r12
   140002b4e:	89 c1                	mov    %eax,%ecx
   140002b50:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140002b56:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140002b5c:	0f 84 be 00 00 00    	je     140002c20 <_gnu_exception_handler+0xe0>
   140002b62:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140002b67:	0f 87 9a 00 00 00    	ja     140002c07 <_gnu_exception_handler+0xc7>
   140002b6d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140002b72:	76 44                	jbe    140002bb8 <_gnu_exception_handler+0x78>
   140002b74:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140002b79:	83 f8 09             	cmp    $0x9,%eax
   140002b7c:	77 2a                	ja     140002ba8 <_gnu_exception_handler+0x68>
   140002b7e:	48 8d 15 9b 28 00 00 	lea    0x289b(%rip),%rdx        # 140005420 <.rdata>
   140002b85:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140002b89:	48 01 d0             	add    %rdx,%rax
   140002b8c:	ff e0                	jmp    *%rax
   140002b8e:	66 90                	xchg   %ax,%ax
   140002b90:	ba 01 00 00 00       	mov    $0x1,%edx
   140002b95:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002b9a:	e8 19 09 00 00       	call   1400034b8 <signal>
   140002b9f:	e8 0c fa ff ff       	call   1400025b0 <_fpreset>
   140002ba4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002ba8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002bad:	48 83 c4 20          	add    $0x20,%rsp
   140002bb1:	41 5c                	pop    %r12
   140002bb3:	c3                   	ret    
   140002bb4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002bb8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140002bbd:	0f 84 dd 00 00 00    	je     140002ca0 <_gnu_exception_handler+0x160>
   140002bc3:	76 3b                	jbe    140002c00 <_gnu_exception_handler+0xc0>
   140002bc5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140002bca:	74 dc                	je     140002ba8 <_gnu_exception_handler+0x68>
   140002bcc:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002bd1:	75 34                	jne    140002c07 <_gnu_exception_handler+0xc7>
   140002bd3:	31 d2                	xor    %edx,%edx
   140002bd5:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002bda:	e8 d9 08 00 00       	call   1400034b8 <signal>
   140002bdf:	48 83 f8 01          	cmp    $0x1,%rax
   140002be3:	0f 84 e3 00 00 00    	je     140002ccc <_gnu_exception_handler+0x18c>
   140002be9:	48 85 c0             	test   %rax,%rax
   140002bec:	74 19                	je     140002c07 <_gnu_exception_handler+0xc7>
   140002bee:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002bf3:	ff d0                	call   *%rax
   140002bf5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002bfa:	eb b1                	jmp    140002bad <_gnu_exception_handler+0x6d>
   140002bfc:	0f 1f 40 00          	nopl   0x0(%rax)
   140002c00:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140002c05:	74 a1                	je     140002ba8 <_gnu_exception_handler+0x68>
   140002c07:	48 8b 05 d2 54 00 00 	mov    0x54d2(%rip),%rax        # 1400080e0 <__mingw_oldexcpt_handler>
   140002c0e:	48 85 c0             	test   %rax,%rax
   140002c11:	74 1d                	je     140002c30 <_gnu_exception_handler+0xf0>
   140002c13:	4c 89 e1             	mov    %r12,%rcx
   140002c16:	48 83 c4 20          	add    $0x20,%rsp
   140002c1a:	41 5c                	pop    %r12
   140002c1c:	48 ff e0             	rex.W jmp *%rax
   140002c1f:	90                   	nop
   140002c20:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140002c24:	0f 85 38 ff ff ff    	jne    140002b62 <_gnu_exception_handler+0x22>
   140002c2a:	e9 79 ff ff ff       	jmp    140002ba8 <_gnu_exception_handler+0x68>
   140002c2f:	90                   	nop
   140002c30:	31 c0                	xor    %eax,%eax
   140002c32:	48 83 c4 20          	add    $0x20,%rsp
   140002c36:	41 5c                	pop    %r12
   140002c38:	c3                   	ret    
   140002c39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002c40:	31 d2                	xor    %edx,%edx
   140002c42:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002c47:	e8 6c 08 00 00       	call   1400034b8 <signal>
   140002c4c:	48 83 f8 01          	cmp    $0x1,%rax
   140002c50:	0f 84 3a ff ff ff    	je     140002b90 <_gnu_exception_handler+0x50>
   140002c56:	48 85 c0             	test   %rax,%rax
   140002c59:	74 ac                	je     140002c07 <_gnu_exception_handler+0xc7>
   140002c5b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002c60:	ff d0                	call   *%rax
   140002c62:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002c67:	e9 41 ff ff ff       	jmp    140002bad <_gnu_exception_handler+0x6d>
   140002c6c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002c70:	31 d2                	xor    %edx,%edx
   140002c72:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002c77:	e8 3c 08 00 00       	call   1400034b8 <signal>
   140002c7c:	48 83 f8 01          	cmp    $0x1,%rax
   140002c80:	75 d4                	jne    140002c56 <_gnu_exception_handler+0x116>
   140002c82:	ba 01 00 00 00       	mov    $0x1,%edx
   140002c87:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002c8c:	e8 27 08 00 00       	call   1400034b8 <signal>
   140002c91:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002c96:	e9 12 ff ff ff       	jmp    140002bad <_gnu_exception_handler+0x6d>
   140002c9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002ca0:	31 d2                	xor    %edx,%edx
   140002ca2:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002ca7:	e8 0c 08 00 00       	call   1400034b8 <signal>
   140002cac:	48 83 f8 01          	cmp    $0x1,%rax
   140002cb0:	74 31                	je     140002ce3 <_gnu_exception_handler+0x1a3>
   140002cb2:	48 85 c0             	test   %rax,%rax
   140002cb5:	0f 84 4c ff ff ff    	je     140002c07 <_gnu_exception_handler+0xc7>
   140002cbb:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002cc0:	ff d0                	call   *%rax
   140002cc2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002cc7:	e9 e1 fe ff ff       	jmp    140002bad <_gnu_exception_handler+0x6d>
   140002ccc:	ba 01 00 00 00       	mov    $0x1,%edx
   140002cd1:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002cd6:	e8 dd 07 00 00       	call   1400034b8 <signal>
   140002cdb:	83 c8 ff             	or     $0xffffffff,%eax
   140002cde:	e9 ca fe ff ff       	jmp    140002bad <_gnu_exception_handler+0x6d>
   140002ce3:	ba 01 00 00 00       	mov    $0x1,%edx
   140002ce8:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002ced:	e8 c6 07 00 00       	call   1400034b8 <signal>
   140002cf2:	83 c8 ff             	or     $0xffffffff,%eax
   140002cf5:	e9 b3 fe ff ff       	jmp    140002bad <_gnu_exception_handler+0x6d>
   140002cfa:	90                   	nop
   140002cfb:	90                   	nop
   140002cfc:	90                   	nop
   140002cfd:	90                   	nop
   140002cfe:	90                   	nop
   140002cff:	90                   	nop

0000000140002d00 <__mingwthr_run_key_dtors.part.0>:
   140002d00:	41 55                	push   %r13
   140002d02:	41 54                	push   %r12
   140002d04:	57                   	push   %rdi
   140002d05:	56                   	push   %rsi
   140002d06:	53                   	push   %rbx
   140002d07:	48 83 ec 20          	sub    $0x20,%rsp
   140002d0b:	4c 8d 2d 0e 54 00 00 	lea    0x540e(%rip),%r13        # 140008120 <__mingwthr_cs>
   140002d12:	4c 89 e9             	mov    %r13,%rcx
   140002d15:	ff 15 c9 65 00 00    	call   *0x65c9(%rip)        # 1400092e4 <__imp_EnterCriticalSection>
   140002d1b:	48 8b 1d de 53 00 00 	mov    0x53de(%rip),%rbx        # 140008100 <key_dtor_list>
   140002d22:	48 85 db             	test   %rbx,%rbx
   140002d25:	74 35                	je     140002d5c <__mingwthr_run_key_dtors.part.0+0x5c>
   140002d27:	48 8b 3d ee 65 00 00 	mov    0x65ee(%rip),%rdi        # 14000931c <__imp_TlsGetValue>
   140002d2e:	48 8b 35 b7 65 00 00 	mov    0x65b7(%rip),%rsi        # 1400092ec <__imp_GetLastError>
   140002d35:	0f 1f 00             	nopl   (%rax)
   140002d38:	8b 0b                	mov    (%rbx),%ecx
   140002d3a:	ff d7                	call   *%rdi
   140002d3c:	49 89 c4             	mov    %rax,%r12
   140002d3f:	ff d6                	call   *%rsi
   140002d41:	85 c0                	test   %eax,%eax
   140002d43:	75 0e                	jne    140002d53 <__mingwthr_run_key_dtors.part.0+0x53>
   140002d45:	4d 85 e4             	test   %r12,%r12
   140002d48:	74 09                	je     140002d53 <__mingwthr_run_key_dtors.part.0+0x53>
   140002d4a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140002d4e:	4c 89 e1             	mov    %r12,%rcx
   140002d51:	ff d0                	call   *%rax
   140002d53:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002d57:	48 85 db             	test   %rbx,%rbx
   140002d5a:	75 dc                	jne    140002d38 <__mingwthr_run_key_dtors.part.0+0x38>
   140002d5c:	4c 89 e9             	mov    %r13,%rcx
   140002d5f:	48 83 c4 20          	add    $0x20,%rsp
   140002d63:	5b                   	pop    %rbx
   140002d64:	5e                   	pop    %rsi
   140002d65:	5f                   	pop    %rdi
   140002d66:	41 5c                	pop    %r12
   140002d68:	41 5d                	pop    %r13
   140002d6a:	48 ff 25 93 65 00 00 	rex.W jmp *0x6593(%rip)        # 140009304 <__imp_LeaveCriticalSection>
   140002d71:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002d78:	00 00 00 00 
   140002d7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002d80 <___w64_mingwthr_add_key_dtor>:
   140002d80:	41 54                	push   %r12
   140002d82:	57                   	push   %rdi
   140002d83:	56                   	push   %rsi
   140002d84:	53                   	push   %rbx
   140002d85:	48 83 ec 28          	sub    $0x28,%rsp
   140002d89:	8b 05 79 53 00 00    	mov    0x5379(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002d8f:	89 cf                	mov    %ecx,%edi
   140002d91:	48 89 d6             	mov    %rdx,%rsi
   140002d94:	85 c0                	test   %eax,%eax
   140002d96:	75 10                	jne    140002da8 <___w64_mingwthr_add_key_dtor+0x28>
   140002d98:	48 83 c4 28          	add    $0x28,%rsp
   140002d9c:	5b                   	pop    %rbx
   140002d9d:	5e                   	pop    %rsi
   140002d9e:	5f                   	pop    %rdi
   140002d9f:	41 5c                	pop    %r12
   140002da1:	c3                   	ret    
   140002da2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002da8:	ba 18 00 00 00       	mov    $0x18,%edx
   140002dad:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002db2:	e8 c9 06 00 00       	call   140003480 <calloc>
   140002db7:	48 89 c3             	mov    %rax,%rbx
   140002dba:	48 85 c0             	test   %rax,%rax
   140002dbd:	74 3d                	je     140002dfc <___w64_mingwthr_add_key_dtor+0x7c>
   140002dbf:	4c 8d 25 5a 53 00 00 	lea    0x535a(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002dc6:	89 38                	mov    %edi,(%rax)
   140002dc8:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140002dcc:	4c 89 e1             	mov    %r12,%rcx
   140002dcf:	ff 15 0f 65 00 00    	call   *0x650f(%rip)        # 1400092e4 <__imp_EnterCriticalSection>
   140002dd5:	48 8b 05 24 53 00 00 	mov    0x5324(%rip),%rax        # 140008100 <key_dtor_list>
   140002ddc:	4c 89 e1             	mov    %r12,%rcx
   140002ddf:	48 89 1d 1a 53 00 00 	mov    %rbx,0x531a(%rip)        # 140008100 <key_dtor_list>
   140002de6:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002dea:	ff 15 14 65 00 00    	call   *0x6514(%rip)        # 140009304 <__imp_LeaveCriticalSection>
   140002df0:	31 c0                	xor    %eax,%eax
   140002df2:	48 83 c4 28          	add    $0x28,%rsp
   140002df6:	5b                   	pop    %rbx
   140002df7:	5e                   	pop    %rsi
   140002df8:	5f                   	pop    %rdi
   140002df9:	41 5c                	pop    %r12
   140002dfb:	c3                   	ret    
   140002dfc:	83 c8 ff             	or     $0xffffffff,%eax
   140002dff:	eb 97                	jmp    140002d98 <___w64_mingwthr_add_key_dtor+0x18>
   140002e01:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002e08:	00 00 00 00 
   140002e0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002e10 <___w64_mingwthr_remove_key_dtor>:
   140002e10:	41 54                	push   %r12
   140002e12:	53                   	push   %rbx
   140002e13:	48 83 ec 28          	sub    $0x28,%rsp
   140002e17:	8b 05 eb 52 00 00    	mov    0x52eb(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002e1d:	89 cb                	mov    %ecx,%ebx
   140002e1f:	85 c0                	test   %eax,%eax
   140002e21:	75 0d                	jne    140002e30 <___w64_mingwthr_remove_key_dtor+0x20>
   140002e23:	31 c0                	xor    %eax,%eax
   140002e25:	48 83 c4 28          	add    $0x28,%rsp
   140002e29:	5b                   	pop    %rbx
   140002e2a:	41 5c                	pop    %r12
   140002e2c:	c3                   	ret    
   140002e2d:	0f 1f 00             	nopl   (%rax)
   140002e30:	4c 8d 25 e9 52 00 00 	lea    0x52e9(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002e37:	4c 89 e1             	mov    %r12,%rcx
   140002e3a:	ff 15 a4 64 00 00    	call   *0x64a4(%rip)        # 1400092e4 <__imp_EnterCriticalSection>
   140002e40:	48 8b 0d b9 52 00 00 	mov    0x52b9(%rip),%rcx        # 140008100 <key_dtor_list>
   140002e47:	48 85 c9             	test   %rcx,%rcx
   140002e4a:	74 27                	je     140002e73 <___w64_mingwthr_remove_key_dtor+0x63>
   140002e4c:	31 d2                	xor    %edx,%edx
   140002e4e:	eb 0b                	jmp    140002e5b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002e50:	48 89 ca             	mov    %rcx,%rdx
   140002e53:	48 85 c0             	test   %rax,%rax
   140002e56:	74 1b                	je     140002e73 <___w64_mingwthr_remove_key_dtor+0x63>
   140002e58:	48 89 c1             	mov    %rax,%rcx
   140002e5b:	8b 01                	mov    (%rcx),%eax
   140002e5d:	39 d8                	cmp    %ebx,%eax
   140002e5f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002e63:	75 eb                	jne    140002e50 <___w64_mingwthr_remove_key_dtor+0x40>
   140002e65:	48 85 d2             	test   %rdx,%rdx
   140002e68:	74 26                	je     140002e90 <___w64_mingwthr_remove_key_dtor+0x80>
   140002e6a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140002e6e:	e8 25 06 00 00       	call   140003498 <free>
   140002e73:	4c 89 e1             	mov    %r12,%rcx
   140002e76:	ff 15 88 64 00 00    	call   *0x6488(%rip)        # 140009304 <__imp_LeaveCriticalSection>
   140002e7c:	31 c0                	xor    %eax,%eax
   140002e7e:	48 83 c4 28          	add    $0x28,%rsp
   140002e82:	5b                   	pop    %rbx
   140002e83:	41 5c                	pop    %r12
   140002e85:	c3                   	ret    
   140002e86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002e8d:	00 00 00 
   140002e90:	48 89 05 69 52 00 00 	mov    %rax,0x5269(%rip)        # 140008100 <key_dtor_list>
   140002e97:	eb d5                	jmp    140002e6e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002ea0 <__mingw_TLScallback>:
   140002ea0:	53                   	push   %rbx
   140002ea1:	48 83 ec 20          	sub    $0x20,%rsp
   140002ea5:	83 fa 02             	cmp    $0x2,%edx
   140002ea8:	74 46                	je     140002ef0 <__mingw_TLScallback+0x50>
   140002eaa:	77 2c                	ja     140002ed8 <__mingw_TLScallback+0x38>
   140002eac:	85 d2                	test   %edx,%edx
   140002eae:	74 50                	je     140002f00 <__mingw_TLScallback+0x60>
   140002eb0:	8b 05 52 52 00 00    	mov    0x5252(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002eb6:	85 c0                	test   %eax,%eax
   140002eb8:	0f 84 b2 00 00 00    	je     140002f70 <__mingw_TLScallback+0xd0>
   140002ebe:	c7 05 40 52 00 00 01 	movl   $0x1,0x5240(%rip)        # 140008108 <__mingwthr_cs_init>
   140002ec5:	00 00 00 
   140002ec8:	b8 01 00 00 00       	mov    $0x1,%eax
   140002ecd:	48 83 c4 20          	add    $0x20,%rsp
   140002ed1:	5b                   	pop    %rbx
   140002ed2:	c3                   	ret    
   140002ed3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002ed8:	83 fa 03             	cmp    $0x3,%edx
   140002edb:	75 eb                	jne    140002ec8 <__mingw_TLScallback+0x28>
   140002edd:	8b 05 25 52 00 00    	mov    0x5225(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002ee3:	85 c0                	test   %eax,%eax
   140002ee5:	74 e1                	je     140002ec8 <__mingw_TLScallback+0x28>
   140002ee7:	e8 14 fe ff ff       	call   140002d00 <__mingwthr_run_key_dtors.part.0>
   140002eec:	eb da                	jmp    140002ec8 <__mingw_TLScallback+0x28>
   140002eee:	66 90                	xchg   %ax,%ax
   140002ef0:	e8 bb f6 ff ff       	call   1400025b0 <_fpreset>
   140002ef5:	b8 01 00 00 00       	mov    $0x1,%eax
   140002efa:	48 83 c4 20          	add    $0x20,%rsp
   140002efe:	5b                   	pop    %rbx
   140002eff:	c3                   	ret    
   140002f00:	8b 05 02 52 00 00    	mov    0x5202(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002f06:	85 c0                	test   %eax,%eax
   140002f08:	75 56                	jne    140002f60 <__mingw_TLScallback+0xc0>
   140002f0a:	8b 05 f8 51 00 00    	mov    0x51f8(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002f10:	83 f8 01             	cmp    $0x1,%eax
   140002f13:	75 b3                	jne    140002ec8 <__mingw_TLScallback+0x28>
   140002f15:	48 8b 1d e4 51 00 00 	mov    0x51e4(%rip),%rbx        # 140008100 <key_dtor_list>
   140002f1c:	48 85 db             	test   %rbx,%rbx
   140002f1f:	74 18                	je     140002f39 <__mingw_TLScallback+0x99>
   140002f21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002f28:	48 89 d9             	mov    %rbx,%rcx
   140002f2b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002f2f:	e8 64 05 00 00       	call   140003498 <free>
   140002f34:	48 85 db             	test   %rbx,%rbx
   140002f37:	75 ef                	jne    140002f28 <__mingw_TLScallback+0x88>
   140002f39:	48 8d 0d e0 51 00 00 	lea    0x51e0(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002f40:	48 c7 05 b5 51 00 00 	movq   $0x0,0x51b5(%rip)        # 140008100 <key_dtor_list>
   140002f47:	00 00 00 00 
   140002f4b:	c7 05 b3 51 00 00 00 	movl   $0x0,0x51b3(%rip)        # 140008108 <__mingwthr_cs_init>
   140002f52:	00 00 00 
   140002f55:	ff 15 81 63 00 00    	call   *0x6381(%rip)        # 1400092dc <__IAT_start__>
   140002f5b:	e9 68 ff ff ff       	jmp    140002ec8 <__mingw_TLScallback+0x28>
   140002f60:	e8 9b fd ff ff       	call   140002d00 <__mingwthr_run_key_dtors.part.0>
   140002f65:	eb a3                	jmp    140002f0a <__mingw_TLScallback+0x6a>
   140002f67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002f6e:	00 00 
   140002f70:	48 8d 0d a9 51 00 00 	lea    0x51a9(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002f77:	ff 15 7f 63 00 00    	call   *0x637f(%rip)        # 1400092fc <__imp_InitializeCriticalSection>
   140002f7d:	e9 3c ff ff ff       	jmp    140002ebe <__mingw_TLScallback+0x1e>
   140002f82:	90                   	nop
   140002f83:	90                   	nop
   140002f84:	90                   	nop
   140002f85:	90                   	nop
   140002f86:	90                   	nop
   140002f87:	90                   	nop
   140002f88:	90                   	nop
   140002f89:	90                   	nop
   140002f8a:	90                   	nop
   140002f8b:	90                   	nop
   140002f8c:	90                   	nop
   140002f8d:	90                   	nop
   140002f8e:	90                   	nop
   140002f8f:	90                   	nop

0000000140002f90 <_ValidateImageBase>:
   140002f90:	31 c0                	xor    %eax,%eax
   140002f92:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002f97:	75 0f                	jne    140002fa8 <_ValidateImageBase+0x18>
   140002f99:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140002f9d:	48 01 d1             	add    %rdx,%rcx
   140002fa0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002fa6:	74 08                	je     140002fb0 <_ValidateImageBase+0x20>
   140002fa8:	c3                   	ret    
   140002fa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002fb0:	31 c0                	xor    %eax,%eax
   140002fb2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002fb8:	0f 94 c0             	sete   %al
   140002fbb:	c3                   	ret    
   140002fbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002fc0 <_FindPESection>:
   140002fc0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002fc4:	48 01 c1             	add    %rax,%rcx
   140002fc7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140002fcb:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002fd0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002fd4:	85 c9                	test   %ecx,%ecx
   140002fd6:	74 2d                	je     140003005 <_FindPESection+0x45>
   140002fd8:	83 e9 01             	sub    $0x1,%ecx
   140002fdb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002fdf:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002fe4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002fe8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002fec:	4c 89 c1             	mov    %r8,%rcx
   140002fef:	49 39 d0             	cmp    %rdx,%r8
   140002ff2:	77 08                	ja     140002ffc <_FindPESection+0x3c>
   140002ff4:	03 48 08             	add    0x8(%rax),%ecx
   140002ff7:	48 39 d1             	cmp    %rdx,%rcx
   140002ffa:	77 0b                	ja     140003007 <_FindPESection+0x47>
   140002ffc:	48 83 c0 28          	add    $0x28,%rax
   140003000:	4c 39 c8             	cmp    %r9,%rax
   140003003:	75 e3                	jne    140002fe8 <_FindPESection+0x28>
   140003005:	31 c0                	xor    %eax,%eax
   140003007:	c3                   	ret    
   140003008:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000300f:	00 

0000000140003010 <_FindPESectionByName>:
   140003010:	41 54                	push   %r12
   140003012:	56                   	push   %rsi
   140003013:	53                   	push   %rbx
   140003014:	48 83 ec 20          	sub    $0x20,%rsp
   140003018:	48 89 cb             	mov    %rcx,%rbx
   14000301b:	e8 a0 04 00 00       	call   1400034c0 <strlen>
   140003020:	48 83 f8 08          	cmp    $0x8,%rax
   140003024:	77 7a                	ja     1400030a0 <_FindPESectionByName+0x90>
   140003026:	48 8b 15 b3 24 00 00 	mov    0x24b3(%rip),%rdx        # 1400054e0 <.refptr.__image_base__>
   14000302d:	45 31 e4             	xor    %r12d,%r12d
   140003030:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140003035:	75 57                	jne    14000308e <_FindPESectionByName+0x7e>
   140003037:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   14000303b:	48 01 d0             	add    %rdx,%rax
   14000303e:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140003044:	75 48                	jne    14000308e <_FindPESectionByName+0x7e>
   140003046:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000304c:	75 40                	jne    14000308e <_FindPESectionByName+0x7e>
   14000304e:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140003052:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   140003057:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   14000305b:	85 c0                	test   %eax,%eax
   14000305d:	74 41                	je     1400030a0 <_FindPESectionByName+0x90>
   14000305f:	83 e8 01             	sub    $0x1,%eax
   140003062:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140003066:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   14000306b:	eb 0c                	jmp    140003079 <_FindPESectionByName+0x69>
   14000306d:	0f 1f 00             	nopl   (%rax)
   140003070:	49 83 c4 28          	add    $0x28,%r12
   140003074:	49 39 f4             	cmp    %rsi,%r12
   140003077:	74 27                	je     1400030a0 <_FindPESectionByName+0x90>
   140003079:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000307f:	48 89 da             	mov    %rbx,%rdx
   140003082:	4c 89 e1             	mov    %r12,%rcx
   140003085:	e8 3e 04 00 00       	call   1400034c8 <strncmp>
   14000308a:	85 c0                	test   %eax,%eax
   14000308c:	75 e2                	jne    140003070 <_FindPESectionByName+0x60>
   14000308e:	4c 89 e0             	mov    %r12,%rax
   140003091:	48 83 c4 20          	add    $0x20,%rsp
   140003095:	5b                   	pop    %rbx
   140003096:	5e                   	pop    %rsi
   140003097:	41 5c                	pop    %r12
   140003099:	c3                   	ret    
   14000309a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400030a0:	45 31 e4             	xor    %r12d,%r12d
   1400030a3:	4c 89 e0             	mov    %r12,%rax
   1400030a6:	48 83 c4 20          	add    $0x20,%rsp
   1400030aa:	5b                   	pop    %rbx
   1400030ab:	5e                   	pop    %rsi
   1400030ac:	41 5c                	pop    %r12
   1400030ae:	c3                   	ret    
   1400030af:	90                   	nop

00000001400030b0 <__mingw_GetSectionForAddress>:
   1400030b0:	48 8b 15 29 24 00 00 	mov    0x2429(%rip),%rdx        # 1400054e0 <.refptr.__image_base__>
   1400030b7:	31 c0                	xor    %eax,%eax
   1400030b9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400030be:	75 10                	jne    1400030d0 <__mingw_GetSectionForAddress+0x20>
   1400030c0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400030c4:	49 01 d0             	add    %rdx,%r8
   1400030c7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400030ce:	74 08                	je     1400030d8 <__mingw_GetSectionForAddress+0x28>
   1400030d0:	c3                   	ret    
   1400030d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400030d8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400030df:	75 ef                	jne    1400030d0 <__mingw_GetSectionForAddress+0x20>
   1400030e1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400030e6:	48 29 d1             	sub    %rdx,%rcx
   1400030e9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   1400030ee:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400030f3:	85 d2                	test   %edx,%edx
   1400030f5:	74 2e                	je     140003125 <__mingw_GetSectionForAddress+0x75>
   1400030f7:	83 ea 01             	sub    $0x1,%edx
   1400030fa:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400030fe:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140003103:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003108:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000310c:	4c 89 c2             	mov    %r8,%rdx
   14000310f:	4c 39 c1             	cmp    %r8,%rcx
   140003112:	72 08                	jb     14000311c <__mingw_GetSectionForAddress+0x6c>
   140003114:	03 50 08             	add    0x8(%rax),%edx
   140003117:	48 39 d1             	cmp    %rdx,%rcx
   14000311a:	72 b4                	jb     1400030d0 <__mingw_GetSectionForAddress+0x20>
   14000311c:	48 83 c0 28          	add    $0x28,%rax
   140003120:	4c 39 c8             	cmp    %r9,%rax
   140003123:	75 e3                	jne    140003108 <__mingw_GetSectionForAddress+0x58>
   140003125:	31 c0                	xor    %eax,%eax
   140003127:	c3                   	ret    
   140003128:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000312f:	00 

0000000140003130 <__mingw_GetSectionCount>:
   140003130:	48 8b 05 a9 23 00 00 	mov    0x23a9(%rip),%rax        # 1400054e0 <.refptr.__image_base__>
   140003137:	45 31 c0             	xor    %r8d,%r8d
   14000313a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000313f:	75 0f                	jne    140003150 <__mingw_GetSectionCount+0x20>
   140003141:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140003145:	48 01 d0             	add    %rdx,%rax
   140003148:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000314e:	74 08                	je     140003158 <__mingw_GetSectionCount+0x28>
   140003150:	44 89 c0             	mov    %r8d,%eax
   140003153:	c3                   	ret    
   140003154:	0f 1f 40 00          	nopl   0x0(%rax)
   140003158:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000315e:	75 f0                	jne    140003150 <__mingw_GetSectionCount+0x20>
   140003160:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140003165:	44 89 c0             	mov    %r8d,%eax
   140003168:	c3                   	ret    
   140003169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140003170 <_FindPESectionExec>:
   140003170:	4c 8b 05 69 23 00 00 	mov    0x2369(%rip),%r8        # 1400054e0 <.refptr.__image_base__>
   140003177:	31 c0                	xor    %eax,%eax
   140003179:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000317f:	75 0f                	jne    140003190 <_FindPESectionExec+0x20>
   140003181:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140003185:	4c 01 c2             	add    %r8,%rdx
   140003188:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000318e:	74 08                	je     140003198 <_FindPESectionExec+0x28>
   140003190:	c3                   	ret    
   140003191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003198:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000319e:	75 f0                	jne    140003190 <_FindPESectionExec+0x20>
   1400031a0:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   1400031a4:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   1400031a9:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   1400031ad:	85 d2                	test   %edx,%edx
   1400031af:	74 27                	je     1400031d8 <_FindPESectionExec+0x68>
   1400031b1:	83 ea 01             	sub    $0x1,%edx
   1400031b4:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400031b8:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   1400031bd:	0f 1f 00             	nopl   (%rax)
   1400031c0:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   1400031c4:	74 09                	je     1400031cf <_FindPESectionExec+0x5f>
   1400031c6:	48 85 c9             	test   %rcx,%rcx
   1400031c9:	74 c5                	je     140003190 <_FindPESectionExec+0x20>
   1400031cb:	48 83 e9 01          	sub    $0x1,%rcx
   1400031cf:	48 83 c0 28          	add    $0x28,%rax
   1400031d3:	48 39 d0             	cmp    %rdx,%rax
   1400031d6:	75 e8                	jne    1400031c0 <_FindPESectionExec+0x50>
   1400031d8:	31 c0                	xor    %eax,%eax
   1400031da:	c3                   	ret    
   1400031db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000001400031e0 <_GetPEImageBase>:
   1400031e0:	48 8b 05 f9 22 00 00 	mov    0x22f9(%rip),%rax        # 1400054e0 <.refptr.__image_base__>
   1400031e7:	45 31 c0             	xor    %r8d,%r8d
   1400031ea:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400031ef:	75 0f                	jne    140003200 <_GetPEImageBase+0x20>
   1400031f1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400031f5:	48 01 c2             	add    %rax,%rdx
   1400031f8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400031fe:	74 08                	je     140003208 <_GetPEImageBase+0x28>
   140003200:	4c 89 c0             	mov    %r8,%rax
   140003203:	c3                   	ret    
   140003204:	0f 1f 40 00          	nopl   0x0(%rax)
   140003208:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000320e:	4c 0f 44 c0          	cmove  %rax,%r8
   140003212:	4c 89 c0             	mov    %r8,%rax
   140003215:	c3                   	ret    
   140003216:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000321d:	00 00 00 

0000000140003220 <_IsNonwritableInCurrentImage>:
   140003220:	48 8b 15 b9 22 00 00 	mov    0x22b9(%rip),%rdx        # 1400054e0 <.refptr.__image_base__>
   140003227:	31 c0                	xor    %eax,%eax
   140003229:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000322e:	75 10                	jne    140003240 <_IsNonwritableInCurrentImage+0x20>
   140003230:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140003234:	49 01 d0             	add    %rdx,%r8
   140003237:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000323e:	74 08                	je     140003248 <_IsNonwritableInCurrentImage+0x28>
   140003240:	c3                   	ret    
   140003241:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003248:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000324f:	75 ef                	jne    140003240 <_IsNonwritableInCurrentImage+0x20>
   140003251:	48 29 d1             	sub    %rdx,%rcx
   140003254:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140003259:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   14000325e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140003263:	45 85 c0             	test   %r8d,%r8d
   140003266:	74 d8                	je     140003240 <_IsNonwritableInCurrentImage+0x20>
   140003268:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   14000326c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140003270:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140003275:	0f 1f 00             	nopl   (%rax)
   140003278:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   14000327c:	4c 89 c0             	mov    %r8,%rax
   14000327f:	4c 39 c1             	cmp    %r8,%rcx
   140003282:	72 08                	jb     14000328c <_IsNonwritableInCurrentImage+0x6c>
   140003284:	03 42 08             	add    0x8(%rdx),%eax
   140003287:	48 39 c1             	cmp    %rax,%rcx
   14000328a:	72 14                	jb     1400032a0 <_IsNonwritableInCurrentImage+0x80>
   14000328c:	48 83 c2 28          	add    $0x28,%rdx
   140003290:	4c 39 ca             	cmp    %r9,%rdx
   140003293:	75 e3                	jne    140003278 <_IsNonwritableInCurrentImage+0x58>
   140003295:	31 c0                	xor    %eax,%eax
   140003297:	c3                   	ret    
   140003298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000329f:	00 
   1400032a0:	8b 42 24             	mov    0x24(%rdx),%eax
   1400032a3:	f7 d0                	not    %eax
   1400032a5:	c1 e8 1f             	shr    $0x1f,%eax
   1400032a8:	c3                   	ret    
   1400032a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400032b0 <__mingw_enum_import_library_names>:
   1400032b0:	4c 8b 1d 29 22 00 00 	mov    0x2229(%rip),%r11        # 1400054e0 <.refptr.__image_base__>
   1400032b7:	45 31 c9             	xor    %r9d,%r9d
   1400032ba:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   1400032c0:	75 10                	jne    1400032d2 <__mingw_enum_import_library_names+0x22>
   1400032c2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   1400032c6:	4d 01 d8             	add    %r11,%r8
   1400032c9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400032d0:	74 0e                	je     1400032e0 <__mingw_enum_import_library_names+0x30>
   1400032d2:	4c 89 c8             	mov    %r9,%rax
   1400032d5:	c3                   	ret    
   1400032d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400032dd:	00 00 00 
   1400032e0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400032e7:	75 e9                	jne    1400032d2 <__mingw_enum_import_library_names+0x22>
   1400032e9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400032f0:	85 c0                	test   %eax,%eax
   1400032f2:	74 de                	je     1400032d2 <__mingw_enum_import_library_names+0x22>
   1400032f4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400032f9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400032fe:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140003303:	45 85 c0             	test   %r8d,%r8d
   140003306:	74 ca                	je     1400032d2 <__mingw_enum_import_library_names+0x22>
   140003308:	41 83 e8 01          	sub    $0x1,%r8d
   14000330c:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140003310:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140003315:	0f 1f 00             	nopl   (%rax)
   140003318:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   14000331c:	4d 89 c8             	mov    %r9,%r8
   14000331f:	4c 39 c8             	cmp    %r9,%rax
   140003322:	72 09                	jb     14000332d <__mingw_enum_import_library_names+0x7d>
   140003324:	44 03 42 08          	add    0x8(%rdx),%r8d
   140003328:	4c 39 c0             	cmp    %r8,%rax
   14000332b:	72 13                	jb     140003340 <__mingw_enum_import_library_names+0x90>
   14000332d:	48 83 c2 28          	add    $0x28,%rdx
   140003331:	49 39 d2             	cmp    %rdx,%r10
   140003334:	75 e2                	jne    140003318 <__mingw_enum_import_library_names+0x68>
   140003336:	45 31 c9             	xor    %r9d,%r9d
   140003339:	4c 89 c8             	mov    %r9,%rax
   14000333c:	c3                   	ret    
   14000333d:	0f 1f 00             	nopl   (%rax)
   140003340:	4c 01 d8             	add    %r11,%rax
   140003343:	eb 0a                	jmp    14000334f <__mingw_enum_import_library_names+0x9f>
   140003345:	0f 1f 00             	nopl   (%rax)
   140003348:	83 e9 01             	sub    $0x1,%ecx
   14000334b:	48 83 c0 14          	add    $0x14,%rax
   14000334f:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140003353:	45 85 c0             	test   %r8d,%r8d
   140003356:	75 07                	jne    14000335f <__mingw_enum_import_library_names+0xaf>
   140003358:	8b 50 0c             	mov    0xc(%rax),%edx
   14000335b:	85 d2                	test   %edx,%edx
   14000335d:	74 d7                	je     140003336 <__mingw_enum_import_library_names+0x86>
   14000335f:	85 c9                	test   %ecx,%ecx
   140003361:	7f e5                	jg     140003348 <__mingw_enum_import_library_names+0x98>
   140003363:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140003367:	4d 01 d9             	add    %r11,%r9
   14000336a:	4c 89 c8             	mov    %r9,%rax
   14000336d:	c3                   	ret    
   14000336e:	90                   	nop
   14000336f:	90                   	nop

0000000140003370 <_Unwind_Resume>:
   140003370:	ff 25 96 60 00 00    	jmp    *0x6096(%rip)        # 14000940c <__imp__Unwind_Resume>
   140003376:	90                   	nop
   140003377:	90                   	nop
   140003378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000337f:	00 

0000000140003380 <___chkstk_ms>:
   140003380:	51                   	push   %rcx
   140003381:	50                   	push   %rax
   140003382:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140003388:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000338d:	72 19                	jb     1400033a8 <___chkstk_ms+0x28>
   14000338f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140003396:	48 83 09 00          	orq    $0x0,(%rcx)
   14000339a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   1400033a0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400033a6:	77 e7                	ja     14000338f <___chkstk_ms+0xf>
   1400033a8:	48 29 c1             	sub    %rax,%rcx
   1400033ab:	48 83 09 00          	orq    $0x0,(%rcx)
   1400033af:	58                   	pop    %rax
   1400033b0:	59                   	pop    %rcx
   1400033b1:	c3                   	ret    
   1400033b2:	90                   	nop
   1400033b3:	90                   	nop
   1400033b4:	90                   	nop
   1400033b5:	90                   	nop
   1400033b6:	90                   	nop
   1400033b7:	90                   	nop
   1400033b8:	90                   	nop
   1400033b9:	90                   	nop
   1400033ba:	90                   	nop
   1400033bb:	90                   	nop
   1400033bc:	90                   	nop
   1400033bd:	90                   	nop
   1400033be:	90                   	nop
   1400033bf:	90                   	nop

00000001400033c0 <__p__fmode>:
   1400033c0:	48 8b 05 59 21 00 00 	mov    0x2159(%rip),%rax        # 140005520 <.refptr.__imp__fmode>
   1400033c7:	48 8b 00             	mov    (%rax),%rax
   1400033ca:	c3                   	ret    
   1400033cb:	90                   	nop
   1400033cc:	90                   	nop
   1400033cd:	90                   	nop
   1400033ce:	90                   	nop
   1400033cf:	90                   	nop

00000001400033d0 <__p__commode>:
   1400033d0:	48 8b 05 39 21 00 00 	mov    0x2139(%rip),%rax        # 140005510 <.refptr.__imp__commode>
   1400033d7:	48 8b 00             	mov    (%rax),%rax
   1400033da:	c3                   	ret    
   1400033db:	90                   	nop
   1400033dc:	90                   	nop
   1400033dd:	90                   	nop
   1400033de:	90                   	nop
   1400033df:	90                   	nop

00000001400033e0 <__p__acmdln>:
   1400033e0:	48 8b 05 19 21 00 00 	mov    0x2119(%rip),%rax        # 140005500 <.refptr.__imp__acmdln>
   1400033e7:	48 8b 00             	mov    (%rax),%rax
   1400033ea:	c3                   	ret    
   1400033eb:	90                   	nop
   1400033ec:	90                   	nop
   1400033ed:	90                   	nop
   1400033ee:	90                   	nop
   1400033ef:	90                   	nop

00000001400033f0 <_get_invalid_parameter_handler>:
   1400033f0:	48 8b 05 99 4d 00 00 	mov    0x4d99(%rip),%rax        # 140008190 <handler>
   1400033f7:	c3                   	ret    
   1400033f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400033ff:	00 

0000000140003400 <_set_invalid_parameter_handler>:
   140003400:	48 89 c8             	mov    %rcx,%rax
   140003403:	48 87 05 86 4d 00 00 	xchg   %rax,0x4d86(%rip)        # 140008190 <handler>
   14000340a:	c3                   	ret    
   14000340b:	90                   	nop
   14000340c:	90                   	nop
   14000340d:	90                   	nop
   14000340e:	90                   	nop
   14000340f:	90                   	nop

0000000140003410 <__acrt_iob_func>:
   140003410:	53                   	push   %rbx
   140003411:	48 83 ec 20          	sub    $0x20,%rsp
   140003415:	89 cb                	mov    %ecx,%ebx
   140003417:	e8 24 00 00 00       	call   140003440 <__iob_func>
   14000341c:	89 d9                	mov    %ebx,%ecx
   14000341e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140003422:	48 c1 e2 04          	shl    $0x4,%rdx
   140003426:	48 01 d0             	add    %rdx,%rax
   140003429:	48 83 c4 20          	add    $0x20,%rsp
   14000342d:	5b                   	pop    %rbx
   14000342e:	c3                   	ret    
   14000342f:	90                   	nop

0000000140003430 <__C_specific_handler>:
   140003430:	ff 25 06 5f 00 00    	jmp    *0x5f06(%rip)        # 14000933c <__imp___C_specific_handler>
   140003436:	90                   	nop
   140003437:	90                   	nop

0000000140003438 <__getmainargs>:
   140003438:	ff 25 06 5f 00 00    	jmp    *0x5f06(%rip)        # 140009344 <__imp___getmainargs>
   14000343e:	90                   	nop
   14000343f:	90                   	nop

0000000140003440 <__iob_func>:
   140003440:	ff 25 0e 5f 00 00    	jmp    *0x5f0e(%rip)        # 140009354 <__imp___iob_func>
   140003446:	90                   	nop
   140003447:	90                   	nop

0000000140003448 <__set_app_type>:
   140003448:	ff 25 0e 5f 00 00    	jmp    *0x5f0e(%rip)        # 14000935c <__imp___set_app_type>
   14000344e:	90                   	nop
   14000344f:	90                   	nop

0000000140003450 <__setusermatherr>:
   140003450:	ff 25 0e 5f 00 00    	jmp    *0x5f0e(%rip)        # 140009364 <__imp___setusermatherr>
   140003456:	90                   	nop
   140003457:	90                   	nop

0000000140003458 <_amsg_exit>:
   140003458:	ff 25 16 5f 00 00    	jmp    *0x5f16(%rip)        # 140009374 <__imp__amsg_exit>
   14000345e:	90                   	nop
   14000345f:	90                   	nop

0000000140003460 <_cexit>:
   140003460:	ff 25 16 5f 00 00    	jmp    *0x5f16(%rip)        # 14000937c <__imp__cexit>
   140003466:	90                   	nop
   140003467:	90                   	nop

0000000140003468 <_initterm>:
   140003468:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 140009394 <__imp__initterm>
   14000346e:	90                   	nop
   14000346f:	90                   	nop

0000000140003470 <_onexit>:
   140003470:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 14000939c <__imp__onexit>
   140003476:	90                   	nop
   140003477:	90                   	nop

0000000140003478 <abort>:
   140003478:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093a4 <__imp_abort>
   14000347e:	90                   	nop
   14000347f:	90                   	nop

0000000140003480 <calloc>:
   140003480:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093ac <__imp_calloc>
   140003486:	90                   	nop
   140003487:	90                   	nop

0000000140003488 <exit>:
   140003488:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093b4 <__imp_exit>
   14000348e:	90                   	nop
   14000348f:	90                   	nop

0000000140003490 <fprintf>:
   140003490:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093bc <__imp_fprintf>
   140003496:	90                   	nop
   140003497:	90                   	nop

0000000140003498 <free>:
   140003498:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093c4 <__imp_free>
   14000349e:	90                   	nop
   14000349f:	90                   	nop

00000001400034a0 <fwrite>:
   1400034a0:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093cc <__imp_fwrite>
   1400034a6:	90                   	nop
   1400034a7:	90                   	nop

00000001400034a8 <malloc>:
   1400034a8:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093d4 <__imp_malloc>
   1400034ae:	90                   	nop
   1400034af:	90                   	nop

00000001400034b0 <memcpy>:
   1400034b0:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093dc <__imp_memcpy>
   1400034b6:	90                   	nop
   1400034b7:	90                   	nop

00000001400034b8 <signal>:
   1400034b8:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093e4 <__imp_signal>
   1400034be:	90                   	nop
   1400034bf:	90                   	nop

00000001400034c0 <strlen>:
   1400034c0:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093ec <__imp_strlen>
   1400034c6:	90                   	nop
   1400034c7:	90                   	nop

00000001400034c8 <strncmp>:
   1400034c8:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093f4 <__imp_strncmp>
   1400034ce:	90                   	nop
   1400034cf:	90                   	nop

00000001400034d0 <vfprintf>:
   1400034d0:	ff 25 26 5f 00 00    	jmp    *0x5f26(%rip)        # 1400093fc <__imp_vfprintf>
   1400034d6:	90                   	nop
   1400034d7:	90                   	nop
   1400034d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400034df:	00 

00000001400034e0 <VirtualQuery>:
   1400034e0:	ff 25 46 5e 00 00    	jmp    *0x5e46(%rip)        # 14000932c <__imp_VirtualQuery>
   1400034e6:	90                   	nop
   1400034e7:	90                   	nop

00000001400034e8 <VirtualProtect>:
   1400034e8:	ff 25 36 5e 00 00    	jmp    *0x5e36(%rip)        # 140009324 <__imp_VirtualProtect>
   1400034ee:	90                   	nop
   1400034ef:	90                   	nop

00000001400034f0 <TlsGetValue>:
   1400034f0:	ff 25 26 5e 00 00    	jmp    *0x5e26(%rip)        # 14000931c <__imp_TlsGetValue>
   1400034f6:	90                   	nop
   1400034f7:	90                   	nop

00000001400034f8 <Sleep>:
   1400034f8:	ff 25 16 5e 00 00    	jmp    *0x5e16(%rip)        # 140009314 <__imp_Sleep>
   1400034fe:	90                   	nop
   1400034ff:	90                   	nop

0000000140003500 <SetUnhandledExceptionFilter>:
   140003500:	ff 25 06 5e 00 00    	jmp    *0x5e06(%rip)        # 14000930c <__imp_SetUnhandledExceptionFilter>
   140003506:	90                   	nop
   140003507:	90                   	nop

0000000140003508 <LeaveCriticalSection>:
   140003508:	ff 25 f6 5d 00 00    	jmp    *0x5df6(%rip)        # 140009304 <__imp_LeaveCriticalSection>
   14000350e:	90                   	nop
   14000350f:	90                   	nop

0000000140003510 <InitializeCriticalSection>:
   140003510:	ff 25 e6 5d 00 00    	jmp    *0x5de6(%rip)        # 1400092fc <__imp_InitializeCriticalSection>
   140003516:	90                   	nop
   140003517:	90                   	nop

0000000140003518 <GetStartupInfoA>:
   140003518:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 1400092f4 <__imp_GetStartupInfoA>
   14000351e:	90                   	nop
   14000351f:	90                   	nop

0000000140003520 <GetLastError>:
   140003520:	ff 25 c6 5d 00 00    	jmp    *0x5dc6(%rip)        # 1400092ec <__imp_GetLastError>
   140003526:	90                   	nop
   140003527:	90                   	nop

0000000140003528 <EnterCriticalSection>:
   140003528:	ff 25 b6 5d 00 00    	jmp    *0x5db6(%rip)        # 1400092e4 <__imp_EnterCriticalSection>
   14000352e:	90                   	nop
   14000352f:	90                   	nop

0000000140003530 <DeleteCriticalSection>:
   140003530:	ff 25 a6 5d 00 00    	jmp    *0x5da6(%rip)        # 1400092dc <__IAT_start__>
   140003536:	90                   	nop
   140003537:	90                   	nop
   140003538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000353f:	00 

0000000140003540 <_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_>:
      static _GLIBCXX14_CONSTEXPR void
      assign(char_type& __c1, const char_type& __c2)
      { __c1 = __c2; }

      static _GLIBCXX_CONSTEXPR bool
      eq(const char_type& __c1, const char_type& __c2)
   140003540:	55                   	push   %rbp
   140003541:	48 89 e5             	mov    %rsp,%rbp
   140003544:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003548:	48 89 55 18          	mov    %rdx,0x18(%rbp)
      { return __c1 == __c2; }
   14000354c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003550:	0f b6 10             	movzbl (%rax),%edx
   140003553:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003557:	0f b6 00             	movzbl (%rax),%eax
   14000355a:	38 c2                	cmp    %al,%dl
   14000355c:	0f 94 c0             	sete   %al
   14000355f:	5d                   	pop    %rbp
   140003560:	c3                   	ret    
   140003561:	90                   	nop
   140003562:	90                   	nop
   140003563:	90                   	nop
   140003564:	90                   	nop
   140003565:	90                   	nop
   140003566:	90                   	nop
   140003567:	90                   	nop
   140003568:	90                   	nop
   140003569:	90                   	nop
   14000356a:	90                   	nop
   14000356b:	90                   	nop
   14000356c:	90                   	nop
   14000356d:	90                   	nop
   14000356e:	90                   	nop
      return 0;
    }

  template<typename _CharT>
    _GLIBCXX14_CONSTEXPR std::size_t
    char_traits<_CharT>::
   14000356f:	90                   	nop

0000000140003570 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc>:
   140003570:	55                   	push   %rbp
   140003571:	48 89 e5             	mov    %rsp,%rbp
   140003574:	48 83 ec 30          	sub    $0x30,%rsp
   140003578:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
    length(const char_type* __p)
    {
      std::size_t __i = 0;
   14000357c:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140003583:	00 
      while (!eq(__p[__i], char_type()))
   140003584:	eb 05                	jmp    14000358b <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc+0x1b>
        ++__i;
   140003586:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
      while (!eq(__p[__i], char_type()))
   14000358b:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
   14000358f:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140003593:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003597:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
   14000359b:	48 8d 45 f7          	lea    -0x9(%rbp),%rax
   14000359f:	48 89 c2             	mov    %rax,%rdx
   1400035a2:	e8 99 ff ff ff       	call   140003540 <_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_>
   1400035a7:	83 f0 01             	xor    $0x1,%eax
   1400035aa:	84 c0                	test   %al,%al
   1400035ac:	75 d8                	jne    140003586 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc+0x16>
      return __i;
   1400035ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
   1400035b2:	48 83 c4 30          	add    $0x30,%rsp
   1400035b6:	5d                   	pop    %rbp
   1400035b7:	c3                   	ret    
   1400035b8:	90                   	nop
   1400035b9:	90                   	nop
   1400035ba:	90                   	nop
   1400035bb:	90                   	nop
   1400035bc:	90                   	nop
   1400035bd:	90                   	nop
   1400035be:	90                   	nop


  // For use in string and vstring.
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
   1400035bf:	90                   	nop

00000001400035c0 <_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_>:
   1400035c0:	55                   	push   %rbp
   1400035c1:	48 89 e5             	mov    %rsp,%rbp
   1400035c4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
    { return __ptr == 0; }
   1400035c8:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   1400035cd:	0f 94 c0             	sete   %al
   1400035d0:	5d                   	pop    %rbp
   1400035d1:	c3                   	ret    
   1400035d2:	90                   	nop
   1400035d3:	90                   	nop
   1400035d4:	90                   	nop
   1400035d5:	90                   	nop
   1400035d6:	90                   	nop
   1400035d7:	90                   	nop
   1400035d8:	90                   	nop
   1400035d9:	90                   	nop
   1400035da:	90                   	nop
   1400035db:	90                   	nop
   1400035dc:	90                   	nop
   1400035dd:	90                   	nop
   1400035de:	90                   	nop
#endif
	return __builtin_memcmp(__s1, __s2, __n);
      }

      static _GLIBCXX17_CONSTEXPR size_t
      length(const char_type* __s)
   1400035df:	90                   	nop

00000001400035e0 <_ZNSt11char_traitsIcE6lengthEPKc>:
   1400035e0:	55                   	push   %rbp
   1400035e1:	48 89 e5             	mov    %rsp,%rbp
   1400035e4:	48 83 ec 30          	sub    $0x30,%rsp
   1400035e8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400035ec:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400035f0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      return __builtin_is_constant_evaluated();
   1400035f4:	b8 00 00 00 00       	mov    $0x0,%eax
      {
#if __cplusplus >= 201703L
	if (__constant_string_p(__s))
   1400035f9:	84 c0                	test   %al,%al
   1400035fb:	74 0b                	je     140003608 <_ZNSt11char_traitsIcE6lengthEPKc+0x28>
	  return __gnu_cxx::char_traits<char_type>::length(__s);
   1400035fd:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140003601:	e8 6a ff ff ff       	call   140003570 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc>
   140003606:	eb 0a                	jmp    140003612 <_ZNSt11char_traitsIcE6lengthEPKc+0x32>
#endif
	return __builtin_strlen(__s);
   140003608:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000360c:	e8 af fe ff ff       	call   1400034c0 <strlen>
   140003611:	90                   	nop
      }
   140003612:	48 83 c4 30          	add    $0x30,%rsp
   140003616:	5d                   	pop    %rbp
   140003617:	c3                   	ret    
   140003618:	90                   	nop
   140003619:	90                   	nop
   14000361a:	90                   	nop
   14000361b:	90                   	nop
   14000361c:	90                   	nop
   14000361d:	90                   	nop
   14000361e:	90                   	nop
      basic_string(__sv_wrapper __svw, const _Alloc& __a)
      : basic_string(__svw._M_sv.data(), __svw._M_sv.size(), __a) { }
#endif

      // Use empty-base optimization: http://www.cantrip.org/emptyopt.html
      struct _Alloc_hider : allocator_type // TODO check __is_final
   14000361f:	90                   	nop

0000000140003620 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>:
   140003620:	55                   	push   %rbp
   140003621:	48 89 e5             	mov    %rsp,%rbp
   140003624:	48 83 ec 20          	sub    $0x20,%rsp
   140003628:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000362c:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140003630:	e8 93 ec ff ff       	call   1400022c8 <_ZNSaIcED2Ev>
   140003635:	90                   	nop
   140003636:	48 83 c4 20          	add    $0x20,%rsp
   14000363a:	5d                   	pop    %rbp
   14000363b:	c3                   	ret    
   14000363c:	90                   	nop
   14000363d:	90                   	nop
   14000363e:	90                   	nop
      }

  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InIterator>
      void
      basic_string<_CharT, _Traits, _Alloc>::
   14000363f:	90                   	nop

0000000140003640 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag>:
   140003640:	55                   	push   %rbp
   140003641:	53                   	push   %rbx
   140003642:	48 83 ec 38          	sub    $0x38,%rsp
   140003646:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000364b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000364f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140003653:	4c 89 45 30          	mov    %r8,0x30(%rbp)
      _M_construct(_InIterator __beg, _InIterator __end,
		   std::forward_iterator_tag)
      {
	// NB: Not required, but considered best practice.
	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
   140003657:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000365b:	48 89 c1             	mov    %rax,%rcx
   14000365e:	e8 5d ff ff ff       	call   1400035c0 <_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_>
   140003663:	84 c0                	test   %al,%al
   140003665:	74 11                	je     140003678 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x38>
   140003667:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000366b:	48 3b 45 30          	cmp    0x30(%rbp),%rax
   14000366f:	74 07                	je     140003678 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x38>
   140003671:	b8 01 00 00 00       	mov    $0x1,%eax
   140003676:	eb 05                	jmp    14000367d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x3d>
   140003678:	b8 00 00 00 00       	mov    $0x0,%eax
   14000367d:	84 c0                	test   %al,%al
   14000367f:	74 0f                	je     140003690 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x50>
	  std::__throw_logic_error(__N("basic_string::"
   140003681:	48 8d 05 60 1a 00 00 	lea    0x1a60(%rip),%rax        # 1400050e8 <.rdata+0xe8>
   140003688:	48 89 c1             	mov    %rax,%rcx
   14000368b:	e8 80 eb ff ff       	call   140002210 <_ZSt19__throw_logic_errorPKc>
				       "_M_construct null not valid"));

	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
   140003690:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   140003694:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003698:	48 89 c1             	mov    %rax,%rcx
   14000369b:	e8 80 01 00 00       	call   140003820 <_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_>
   1400036a0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)

	if (__dnew > size_type(_S_local_capacity))
   1400036a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400036a8:	48 83 f8 0f          	cmp    $0xf,%rax
   1400036ac:	76 32                	jbe    1400036e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0xa0>
	  {
	    _M_data(_M_create(__dnew, size_type(0)));
   1400036ae:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   1400036b2:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   1400036b8:	48 89 c2             	mov    %rax,%rdx
   1400036bb:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400036bf:	e8 a4 eb ff ff       	call   140002268 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>
   1400036c4:	48 89 c2             	mov    %rax,%rdx
   1400036c7:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400036cb:	e8 a0 eb ff ff       	call   140002270 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
	    _M_capacity(__dnew);
   1400036d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400036d4:	48 89 c2             	mov    %rax,%rdx
   1400036d7:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400036db:	e8 c0 eb ff ff       	call   1400022a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>
	  }

	// Check for out_of_range and length_error exceptions.
	__try
	  { this->_S_copy_chars(_M_data(), __beg, __end); }
   1400036e0:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400036e4:	e8 07 ec ff ff       	call   1400022f0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   1400036e9:	48 89 c1             	mov    %rax,%rcx
   1400036ec:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   1400036f0:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400036f4:	49 89 d0             	mov    %rdx,%r8
   1400036f7:	48 89 c2             	mov    %rax,%rdx
   1400036fa:	e8 81 eb ff ff       	call   140002280 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_>
	  {
	    _M_dispose();
	    __throw_exception_again;
	  }

	_M_set_length(__dnew);
   1400036ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003703:	48 89 c2             	mov    %rax,%rdx
   140003706:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000370a:	e8 79 eb ff ff       	call   140002288 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>
      }
   14000370f:	eb 2a                	jmp    14000373b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0xfb>
	__catch(...)
   140003711:	48 89 c1             	mov    %rax,%rcx
   140003714:	e8 cf ea ff ff       	call   1400021e8 <__cxa_begin_catch>
	    _M_dispose();
   140003719:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000371d:	e8 86 eb ff ff       	call   1400022a8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
	    __throw_exception_again;
   140003722:	e8 b1 ea ff ff       	call   1400021d8 <__cxa_rethrow>
	__catch(...)
   140003727:	48 89 c3             	mov    %rax,%rbx
   14000372a:	e8 b1 ea ff ff       	call   1400021e0 <__cxa_end_catch>
   14000372f:	48 89 d8             	mov    %rbx,%rax
   140003732:	48 89 c1             	mov    %rax,%rcx
   140003735:	e8 36 fc ff ff       	call   140003370 <_Unwind_Resume>
   14000373a:	90                   	nop
      }
   14000373b:	48 83 c4 38          	add    $0x38,%rsp
   14000373f:	5b                   	pop    %rbx
   140003740:	5d                   	pop    %rbp
   140003741:	c3                   	ret    
   140003742:	90                   	nop
   140003743:	90                   	nop
   140003744:	90                   	nop
   140003745:	90                   	nop
   140003746:	90                   	nop
   140003747:	90                   	nop
   140003748:	90                   	nop
   140003749:	90                   	nop
   14000374a:	90                   	nop
   14000374b:	90                   	nop
   14000374c:	90                   	nop
   14000374d:	90                   	nop
   14000374e:	90                   	nop
#if __cpp_deduction_guides && ! defined _GLIBCXX_DEFINING_STRING_INSTANTIATIONS
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 3076. basic_string CTAD ambiguity
      template<typename = _RequireAllocator<_Alloc>>
#endif
      basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
   14000374f:	90                   	nop

0000000140003750 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>:
   140003750:	55                   	push   %rbp
   140003751:	56                   	push   %rsi
   140003752:	53                   	push   %rbx
   140003753:	48 83 ec 30          	sub    $0x30,%rsp
   140003757:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000375c:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140003760:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140003764:	4c 89 45 30          	mov    %r8,0x30(%rbp)
      : _M_dataplus(_M_local_data(), __a)
   140003768:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   14000376c:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   140003770:	e8 1b eb ff ff       	call   140002290 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
   140003775:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   140003779:	49 89 d0             	mov    %rdx,%r8
   14000377c:	48 89 c2             	mov    %rax,%rdx
   14000377f:	48 89 d9             	mov    %rbx,%rcx
   140003782:	e8 11 eb ff ff       	call   140002298 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>
      {
	const _CharT* __end = __s ? __s + traits_type::length(__s)
   140003787:	48 83 7d 28 00       	cmpq   $0x0,0x28(%rbp)
   14000378c:	74 15                	je     1400037a3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x53>
   14000378e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003792:	48 89 c1             	mov    %rax,%rcx
   140003795:	e8 46 fe ff ff       	call   1400035e0 <_ZNSt11char_traitsIcE6lengthEPKc>
   14000379a:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   14000379e:	48 01 d0             	add    %rdx,%rax
   1400037a1:	eb 05                	jmp    1400037a8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x58>
   1400037a3:	b8 01 00 00 00       	mov    $0x1,%eax
   1400037a8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	  // We just need a non-null pointer here to get an exception:
	  : reinterpret_cast<const _CharT*>(__alignof__(_CharT));
	_M_construct(__s, __end, random_access_iterator_tag());
   1400037ac:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   1400037b0:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400037b4:	41 89 f1             	mov    %esi,%r9d
   1400037b7:	49 89 d0             	mov    %rdx,%r8
   1400037ba:	48 89 c2             	mov    %rax,%rdx
   1400037bd:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400037c1:	e8 7a fe ff ff       	call   140003640 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag>
      }
   1400037c6:	eb 1b                	jmp    1400037e3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x93>
   1400037c8:	48 89 c3             	mov    %rax,%rbx
   1400037cb:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400037cf:	48 89 c1             	mov    %rax,%rcx
   1400037d2:	e8 49 fe ff ff       	call   140003620 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
   1400037d7:	48 89 d8             	mov    %rbx,%rax
   1400037da:	48 89 c1             	mov    %rax,%rcx
   1400037dd:	e8 8e fb ff ff       	call   140003370 <_Unwind_Resume>
   1400037e2:	90                   	nop
   1400037e3:	48 83 c4 30          	add    $0x30,%rsp
   1400037e7:	5b                   	pop    %rbx
   1400037e8:	5e                   	pop    %rsi
   1400037e9:	5d                   	pop    %rbp
   1400037ea:	c3                   	ret    
   1400037eb:	90                   	nop
   1400037ec:	90                   	nop
   1400037ed:	90                   	nop
   1400037ee:	90                   	nop
    }

  template<typename _RandomAccessIterator>
    inline _GLIBCXX14_CONSTEXPR
    typename iterator_traits<_RandomAccessIterator>::difference_type
    __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
   1400037ef:	90                   	nop

00000001400037f0 <_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag>:
   1400037f0:	55                   	push   %rbp
   1400037f1:	48 89 e5             	mov    %rsp,%rbp
   1400037f4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400037f8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
               random_access_iterator_tag)
    {
      // concept requirements
      __glibcxx_function_requires(_RandomAccessIteratorConcept<
				  _RandomAccessIterator>)
      return __last - __first;
   1400037fc:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003800:	48 2b 45 10          	sub    0x10(%rbp),%rax
    }
   140003804:	5d                   	pop    %rbp
   140003805:	c3                   	ret    
   140003806:	90                   	nop
   140003807:	90                   	nop
   140003808:	90                   	nop
   140003809:	90                   	nop
   14000380a:	90                   	nop
   14000380b:	90                   	nop
   14000380c:	90                   	nop
   14000380d:	90                   	nop
   14000380e:	90                   	nop
   *  sugar for internal library use only.
  */
  template<typename _Iter>
    inline _GLIBCXX_CONSTEXPR
    typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
   14000380f:	90                   	nop

0000000140003810 <_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_>:
   140003810:	55                   	push   %rbp
   140003811:	48 89 e5             	mov    %rsp,%rbp
   140003814:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
    { return typename iterator_traits<_Iter>::iterator_category(); }
   140003818:	5d                   	pop    %rbp
   140003819:	c3                   	ret    
   14000381a:	90                   	nop
   14000381b:	90                   	nop
   14000381c:	90                   	nop
   14000381d:	90                   	nop
   14000381e:	90                   	nop
   *  and are constant time.  For other %iterator classes they are linear time.
  */
  template<typename _InputIterator>
    inline _GLIBCXX17_CONSTEXPR
    typename iterator_traits<_InputIterator>::difference_type
    distance(_InputIterator __first, _InputIterator __last)
   14000381f:	90                   	nop

0000000140003820 <_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_>:
   140003820:	55                   	push   %rbp
   140003821:	53                   	push   %rbx
   140003822:	48 83 ec 28          	sub    $0x28,%rsp
   140003826:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   14000382b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000382f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    {
      // concept requirements -- taken care of in __distance
      return std::__distance(__first, __last,
			     std::__iterator_category(__first));
   140003833:	48 8d 4d 20          	lea    0x20(%rbp),%rcx
   140003837:	e8 d4 ff ff ff       	call   140003810 <_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_>
      return std::__distance(__first, __last,
   14000383c:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003840:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   140003844:	41 89 d8             	mov    %ebx,%r8d
   140003847:	48 89 c1             	mov    %rax,%rcx
   14000384a:	e8 a1 ff ff ff       	call   1400037f0 <_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag>
    }
   14000384f:	48 83 c4 28          	add    $0x28,%rsp
   140003853:	5b                   	pop    %rbx
   140003854:	5d                   	pop    %rbp
   140003855:	c3                   	ret    
   140003856:	90                   	nop
   140003857:	90                   	nop
   140003858:	90                   	nop
   140003859:	90                   	nop
   14000385a:	90                   	nop
   14000385b:	90                   	nop
   14000385c:	90                   	nop
   14000385d:	90                   	nop
   14000385e:	90                   	nop
   *  @param __rhs  C string.
   *  @return  True if @a __lhs.compare(@a __rhs) == 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
   14000385f:	90                   	nop

0000000140003860 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>:
   140003860:	55                   	push   %rbp
   140003861:	48 89 e5             	mov    %rsp,%rbp
   140003864:	48 83 ec 20          	sub    $0x20,%rsp
   140003868:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000386c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
	       const _CharT* __rhs)
    { return __lhs.compare(__rhs) == 0; }
   140003870:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003874:	48 89 c2             	mov    %rax,%rdx
   140003877:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000387b:	e8 68 ea ff ff       	call   1400022e8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   140003880:	85 c0                	test   %eax,%eax
   140003882:	0f 94 c0             	sete   %al
   140003885:	48 83 c4 20          	add    $0x20,%rsp
   140003889:	5d                   	pop    %rbp
   14000388a:	c3                   	ret    
   14000388b:	90                   	nop
   14000388c:	90                   	nop
   14000388d:	90                   	nop
   14000388e:	90                   	nop
  operator&(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) & static_cast<int>(__b)); }

  inline _GLIBCXX_CONSTEXPR _Ios_Openmode
  operator|(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
   14000388f:	90                   	nop

0000000140003890 <_ZStorSt13_Ios_OpenmodeS_>:
   140003890:	55                   	push   %rbp
   140003891:	48 89 e5             	mov    %rsp,%rbp
   140003894:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140003897:	89 55 18             	mov    %edx,0x18(%rbp)
   14000389a:	8b 45 10             	mov    0x10(%rbp),%eax
   14000389d:	0b 45 18             	or     0x18(%rbp),%eax
   1400038a0:	5d                   	pop    %rbp
   1400038a1:	c3                   	ret    
   1400038a2:	90                   	nop
   1400038a3:	90                   	nop
   1400038a4:	90                   	nop
   1400038a5:	90                   	nop
   1400038a6:	90                   	nop
   1400038a7:	90                   	nop
   1400038a8:	90                   	nop
   1400038a9:	90                   	nop
   1400038aa:	90                   	nop
   1400038ab:	90                   	nop
   1400038ac:	90                   	nop
   1400038ad:	90                   	nop
   1400038ae:	90                   	nop
    operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
   1400038af:	90                   	nop

00000001400038b0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_>:
   1400038b0:	55                   	push   %rbp
   1400038b1:	53                   	push   %rbx
   1400038b2:	48 83 ec 28          	sub    $0x28,%rsp
   1400038b6:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   1400038bb:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400038bf:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400038c3:	4c 89 45 30          	mov    %r8,0x30(%rbp)
      basic_string<_CharT, _Traits, _Alloc> __str(__lhs);
   1400038c7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400038cb:	48 89 c2             	mov    %rax,%rdx
   1400038ce:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400038d2:	e8 89 e9 ff ff       	call   140002260 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
      __str.append(__rhs);
   1400038d7:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400038db:	48 89 c2             	mov    %rax,%rdx
   1400038de:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400038e2:	e8 91 e9 ff ff       	call   140002278 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc>
      return __str;
   1400038e7:	eb 17                	jmp    140003900 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_+0x50>
    }
   1400038e9:	48 89 c3             	mov    %rax,%rbx
   1400038ec:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400038f0:	e8 5b e9 ff ff       	call   140002250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   1400038f5:	48 89 d8             	mov    %rbx,%rax
   1400038f8:	48 89 c1             	mov    %rax,%rcx
   1400038fb:	e8 70 fa ff ff       	call   140003370 <_Unwind_Resume>
   140003900:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003904:	48 83 c4 28          	add    $0x28,%rsp
   140003908:	5b                   	pop    %rbx
   140003909:	5d                   	pop    %rbp
   14000390a:	c3                   	ret    
   14000390b:	90                   	nop
   14000390c:	90                   	nop
   14000390d:	90                   	nop
   14000390e:	90                   	nop
   14000390f:	90                   	nop

0000000140003910 <register_frame_ctor>:
   140003910:	e9 fb db ff ff       	jmp    140001510 <__gcc_register_frame>
   140003915:	90                   	nop
   140003916:	90                   	nop
   140003917:	90                   	nop
   140003918:	90                   	nop
   140003919:	90                   	nop
   14000391a:	90                   	nop
   14000391b:	90                   	nop
   14000391c:	90                   	nop
   14000391d:	90                   	nop
   14000391e:	90                   	nop
   14000391f:	90                   	nop

0000000140003920 <__CTOR_LIST__>:
   140003920:	ff                   	(bad)  
   140003921:	ff                   	(bad)  
   140003922:	ff                   	(bad)  
   140003923:	ff                   	(bad)  
   140003924:	ff                   	(bad)  
   140003925:	ff                   	(bad)  
   140003926:	ff                   	(bad)  
   140003927:	ff                   	.byte 0xff

0000000140003928 <.ctors>:
   140003928:	ab                   	stos   %eax,%es:(%rdi)
   140003929:	21 00                	and    %eax,(%rax)
   14000392b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140003930 <.ctors.65535>:
   140003930:	10 39                	adc    %bh,(%rcx)
   140003932:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140003940 <__DTOR_LIST__>:
   140003940:	ff                   	(bad)  
   140003941:	ff                   	(bad)  
   140003942:	ff                   	(bad)  
   140003943:	ff                   	(bad)  
   140003944:	ff                   	(bad)  
   140003945:	ff                   	(bad)  
   140003946:	ff                   	(bad)  
   140003947:	ff 00                	incl   (%rax)
   140003949:	00 00                	add    %al,(%rax)
   14000394b:	00 00                	add    %al,(%rax)
   14000394d:	00 00                	add    %al,(%rax)
	...
