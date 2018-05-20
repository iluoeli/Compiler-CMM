
parser：     文件格式 elf32-i386


Disassembly of section .init:

0804877c <_init>:
 804877c:	53                   	push   %ebx
 804877d:	83 ec 08             	sub    $0x8,%esp
 8048780:	e8 8b 02 00 00       	call   8048a10 <__x86.get_pc_thunk.bx>
 8048785:	81 c3 7b f8 00 00    	add    $0xf87b,%ebx
 804878b:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048791:	85 c0                	test   %eax,%eax
 8048793:	74 05                	je     804879a <_init+0x1e>
 8048795:	e8 36 02 00 00       	call   80489d0 <__assert_fail@plt+0x10>
 804879a:	83 c4 08             	add    $0x8,%esp
 804879d:	5b                   	pop    %ebx
 804879e:	c3                   	ret    

Disassembly of section .plt:

080487a0 <strcmp@plt-0x10>:
 80487a0:	ff 35 04 80 05 08    	pushl  0x8058004
 80487a6:	ff 25 08 80 05 08    	jmp    *0x8058008
 80487ac:	00 00                	add    %al,(%eax)
	...

080487b0 <strcmp@plt>:
 80487b0:	ff 25 0c 80 05 08    	jmp    *0x805800c
 80487b6:	68 00 00 00 00       	push   $0x0
 80487bb:	e9 e0 ff ff ff       	jmp    80487a0 <_init+0x24>

080487c0 <printf@plt>:
 80487c0:	ff 25 10 80 05 08    	jmp    *0x8058010
 80487c6:	68 08 00 00 00       	push   $0x8
 80487cb:	e9 d0 ff ff ff       	jmp    80487a0 <_init+0x24>

080487d0 <free@plt>:
 80487d0:	ff 25 14 80 05 08    	jmp    *0x8058014
 80487d6:	68 10 00 00 00       	push   $0x10
 80487db:	e9 c0 ff ff ff       	jmp    80487a0 <_init+0x24>

080487e0 <memcpy@plt>:
 80487e0:	ff 25 18 80 05 08    	jmp    *0x8058018
 80487e6:	68 18 00 00 00       	push   $0x18
 80487eb:	e9 b0 ff ff ff       	jmp    80487a0 <_init+0x24>

080487f0 <ferror@plt>:
 80487f0:	ff 25 1c 80 05 08    	jmp    *0x805801c
 80487f6:	68 20 00 00 00       	push   $0x20
 80487fb:	e9 a0 ff ff ff       	jmp    80487a0 <_init+0x24>

08048800 <fclose@plt>:
 8048800:	ff 25 20 80 05 08    	jmp    *0x8058020
 8048806:	68 28 00 00 00       	push   $0x28
 804880b:	e9 90 ff ff ff       	jmp    80487a0 <_init+0x24>

08048810 <__stack_chk_fail@plt>:
 8048810:	ff 25 24 80 05 08    	jmp    *0x8058024
 8048816:	68 30 00 00 00       	push   $0x30
 804881b:	e9 80 ff ff ff       	jmp    80487a0 <_init+0x24>

08048820 <_IO_getc@plt>:
 8048820:	ff 25 28 80 05 08    	jmp    *0x8058028
 8048826:	68 38 00 00 00       	push   $0x38
 804882b:	e9 70 ff ff ff       	jmp    80487a0 <_init+0x24>

08048830 <perror@plt>:
 8048830:	ff 25 2c 80 05 08    	jmp    *0x805802c
 8048836:	68 40 00 00 00       	push   $0x40
 804883b:	e9 60 ff ff ff       	jmp    80487a0 <_init+0x24>

08048840 <fwrite@plt>:
 8048840:	ff 25 30 80 05 08    	jmp    *0x8058030
 8048846:	68 48 00 00 00       	push   $0x48
 804884b:	e9 50 ff ff ff       	jmp    80487a0 <_init+0x24>

08048850 <fread@plt>:
 8048850:	ff 25 34 80 05 08    	jmp    *0x8058034
 8048856:	68 50 00 00 00       	push   $0x50
 804885b:	e9 40 ff ff ff       	jmp    80487a0 <_init+0x24>

08048860 <strcpy@plt>:
 8048860:	ff 25 38 80 05 08    	jmp    *0x8058038
 8048866:	68 58 00 00 00       	push   $0x58
 804886b:	e9 30 ff ff ff       	jmp    80487a0 <_init+0x24>

08048870 <realloc@plt>:
 8048870:	ff 25 3c 80 05 08    	jmp    *0x805803c
 8048876:	68 60 00 00 00       	push   $0x60
 804887b:	e9 20 ff ff ff       	jmp    80487a0 <_init+0x24>

08048880 <malloc@plt>:
 8048880:	ff 25 40 80 05 08    	jmp    *0x8058040
 8048886:	68 68 00 00 00       	push   $0x68
 804888b:	e9 10 ff ff ff       	jmp    80487a0 <_init+0x24>

08048890 <puts@plt>:
 8048890:	ff 25 44 80 05 08    	jmp    *0x8058044
 8048896:	68 70 00 00 00       	push   $0x70
 804889b:	e9 00 ff ff ff       	jmp    80487a0 <_init+0x24>

080488a0 <exit@plt>:
 80488a0:	ff 25 48 80 05 08    	jmp    *0x8058048
 80488a6:	68 78 00 00 00       	push   $0x78
 80488ab:	e9 f0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488b0 <strlen@plt>:
 80488b0:	ff 25 4c 80 05 08    	jmp    *0x805804c
 80488b6:	68 80 00 00 00       	push   $0x80
 80488bb:	e9 e0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488c0 <vprintf@plt>:
 80488c0:	ff 25 50 80 05 08    	jmp    *0x8058050
 80488c6:	68 88 00 00 00       	push   $0x88
 80488cb:	e9 d0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488d0 <__libc_start_main@plt>:
 80488d0:	ff 25 54 80 05 08    	jmp    *0x8058054
 80488d6:	68 90 00 00 00       	push   $0x90
 80488db:	e9 c0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488e0 <fprintf@plt>:
 80488e0:	ff 25 58 80 05 08    	jmp    *0x8058058
 80488e6:	68 98 00 00 00       	push   $0x98
 80488eb:	e9 b0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488f0 <fopen@plt>:
 80488f0:	ff 25 5c 80 05 08    	jmp    *0x805805c
 80488f6:	68 a0 00 00 00       	push   $0xa0
 80488fb:	e9 a0 fe ff ff       	jmp    80487a0 <_init+0x24>

08048900 <memset@plt>:
 8048900:	ff 25 60 80 05 08    	jmp    *0x8058060
 8048906:	68 a8 00 00 00       	push   $0xa8
 804890b:	e9 90 fe ff ff       	jmp    80487a0 <_init+0x24>

08048910 <putchar@plt>:
 8048910:	ff 25 64 80 05 08    	jmp    *0x8058064
 8048916:	68 b0 00 00 00       	push   $0xb0
 804891b:	e9 80 fe ff ff       	jmp    80487a0 <_init+0x24>

08048920 <__errno_location@plt>:
 8048920:	ff 25 68 80 05 08    	jmp    *0x8058068
 8048926:	68 b8 00 00 00       	push   $0xb8
 804892b:	e9 70 fe ff ff       	jmp    80487a0 <_init+0x24>

08048930 <strncpy@plt>:
 8048930:	ff 25 6c 80 05 08    	jmp    *0x805806c
 8048936:	68 c0 00 00 00       	push   $0xc0
 804893b:	e9 60 fe ff ff       	jmp    80487a0 <_init+0x24>

08048940 <fileno@plt>:
 8048940:	ff 25 70 80 05 08    	jmp    *0x8058070
 8048946:	68 c8 00 00 00       	push   $0xc8
 804894b:	e9 50 fe ff ff       	jmp    80487a0 <_init+0x24>

08048950 <fputc@plt>:
 8048950:	ff 25 74 80 05 08    	jmp    *0x8058074
 8048956:	68 d0 00 00 00       	push   $0xd0
 804895b:	e9 40 fe ff ff       	jmp    80487a0 <_init+0x24>

08048960 <clearerr@plt>:
 8048960:	ff 25 78 80 05 08    	jmp    *0x8058078
 8048966:	68 d8 00 00 00       	push   $0xd8
 804896b:	e9 30 fe ff ff       	jmp    80487a0 <_init+0x24>

08048970 <atoi@plt>:
 8048970:	ff 25 7c 80 05 08    	jmp    *0x805807c
 8048976:	68 e0 00 00 00       	push   $0xe0
 804897b:	e9 20 fe ff ff       	jmp    80487a0 <_init+0x24>

08048980 <atof@plt>:
 8048980:	ff 25 80 80 05 08    	jmp    *0x8058080
 8048986:	68 e8 00 00 00       	push   $0xe8
 804898b:	e9 10 fe ff ff       	jmp    80487a0 <_init+0x24>

08048990 <isatty@plt>:
 8048990:	ff 25 84 80 05 08    	jmp    *0x8058084
 8048996:	68 f0 00 00 00       	push   $0xf0
 804899b:	e9 00 fe ff ff       	jmp    80487a0 <_init+0x24>

080489a0 <strtol@plt>:
 80489a0:	ff 25 88 80 05 08    	jmp    *0x8058088
 80489a6:	68 f8 00 00 00       	push   $0xf8
 80489ab:	e9 f0 fd ff ff       	jmp    80487a0 <_init+0x24>

080489b0 <fputs@plt>:
 80489b0:	ff 25 8c 80 05 08    	jmp    *0x805808c
 80489b6:	68 00 01 00 00       	push   $0x100
 80489bb:	e9 e0 fd ff ff       	jmp    80487a0 <_init+0x24>

080489c0 <__assert_fail@plt>:
 80489c0:	ff 25 90 80 05 08    	jmp    *0x8058090
 80489c6:	68 08 01 00 00       	push   $0x108
 80489cb:	e9 d0 fd ff ff       	jmp    80487a0 <_init+0x24>

Disassembly of section .plt.got:

080489d0 <.plt.got>:
 80489d0:	ff 25 fc 7f 05 08    	jmp    *0x8057ffc
 80489d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080489e0 <_start>:
 80489e0:	31 ed                	xor    %ebp,%ebp
 80489e2:	5e                   	pop    %esi
 80489e3:	89 e1                	mov    %esp,%ecx
 80489e5:	83 e4 f0             	and    $0xfffffff0,%esp
 80489e8:	50                   	push   %eax
 80489e9:	54                   	push   %esp
 80489ea:	52                   	push   %edx
 80489eb:	68 40 35 05 08       	push   $0x8053540
 80489f0:	68 e0 34 05 08       	push   $0x80534e0
 80489f5:	51                   	push   %ecx
 80489f6:	56                   	push   %esi
 80489f7:	68 3e a4 04 08       	push   $0x804a43e
 80489fc:	e8 cf fe ff ff       	call   80488d0 <__libc_start_main@plt>
 8048a01:	f4                   	hlt    
 8048a02:	66 90                	xchg   %ax,%ax
 8048a04:	66 90                	xchg   %ax,%ax
 8048a06:	66 90                	xchg   %ax,%ax
 8048a08:	66 90                	xchg   %ax,%ax
 8048a0a:	66 90                	xchg   %ax,%ax
 8048a0c:	66 90                	xchg   %ax,%ax
 8048a0e:	66 90                	xchg   %ax,%ax

08048a10 <__x86.get_pc_thunk.bx>:
 8048a10:	8b 1c 24             	mov    (%esp),%ebx
 8048a13:	c3                   	ret    
 8048a14:	66 90                	xchg   %ax,%ax
 8048a16:	66 90                	xchg   %ax,%ax
 8048a18:	66 90                	xchg   %ax,%ax
 8048a1a:	66 90                	xchg   %ax,%ax
 8048a1c:	66 90                	xchg   %ax,%ax
 8048a1e:	66 90                	xchg   %ax,%ax

08048a20 <deregister_tm_clones>:
 8048a20:	b8 c7 80 05 08       	mov    $0x80580c7,%eax
 8048a25:	2d c4 80 05 08       	sub    $0x80580c4,%eax
 8048a2a:	83 f8 06             	cmp    $0x6,%eax
 8048a2d:	76 1a                	jbe    8048a49 <deregister_tm_clones+0x29>
 8048a2f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048a34:	85 c0                	test   %eax,%eax
 8048a36:	74 11                	je     8048a49 <deregister_tm_clones+0x29>
 8048a38:	55                   	push   %ebp
 8048a39:	89 e5                	mov    %esp,%ebp
 8048a3b:	83 ec 14             	sub    $0x14,%esp
 8048a3e:	68 c4 80 05 08       	push   $0x80580c4
 8048a43:	ff d0                	call   *%eax
 8048a45:	83 c4 10             	add    $0x10,%esp
 8048a48:	c9                   	leave  
 8048a49:	f3 c3                	repz ret 
 8048a4b:	90                   	nop
 8048a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048a50 <register_tm_clones>:
 8048a50:	b8 c4 80 05 08       	mov    $0x80580c4,%eax
 8048a55:	2d c4 80 05 08       	sub    $0x80580c4,%eax
 8048a5a:	c1 f8 02             	sar    $0x2,%eax
 8048a5d:	89 c2                	mov    %eax,%edx
 8048a5f:	c1 ea 1f             	shr    $0x1f,%edx
 8048a62:	01 d0                	add    %edx,%eax
 8048a64:	d1 f8                	sar    %eax
 8048a66:	74 1b                	je     8048a83 <register_tm_clones+0x33>
 8048a68:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a6d:	85 d2                	test   %edx,%edx
 8048a6f:	74 12                	je     8048a83 <register_tm_clones+0x33>
 8048a71:	55                   	push   %ebp
 8048a72:	89 e5                	mov    %esp,%ebp
 8048a74:	83 ec 10             	sub    $0x10,%esp
 8048a77:	50                   	push   %eax
 8048a78:	68 c4 80 05 08       	push   $0x80580c4
 8048a7d:	ff d2                	call   *%edx
 8048a7f:	83 c4 10             	add    $0x10,%esp
 8048a82:	c9                   	leave  
 8048a83:	f3 c3                	repz ret 
 8048a85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048a89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048a90 <__do_global_dtors_aux>:
 8048a90:	80 3d 08 81 05 08 00 	cmpb   $0x0,0x8058108
 8048a97:	75 13                	jne    8048aac <__do_global_dtors_aux+0x1c>
 8048a99:	55                   	push   %ebp
 8048a9a:	89 e5                	mov    %esp,%ebp
 8048a9c:	83 ec 08             	sub    $0x8,%esp
 8048a9f:	e8 7c ff ff ff       	call   8048a20 <deregister_tm_clones>
 8048aa4:	c6 05 08 81 05 08 01 	movb   $0x1,0x8058108
 8048aab:	c9                   	leave  
 8048aac:	f3 c3                	repz ret 
 8048aae:	66 90                	xchg   %ax,%ax

08048ab0 <frame_dummy>:
 8048ab0:	b8 10 7f 05 08       	mov    $0x8057f10,%eax
 8048ab5:	8b 10                	mov    (%eax),%edx
 8048ab7:	85 d2                	test   %edx,%edx
 8048ab9:	75 05                	jne    8048ac0 <frame_dummy+0x10>
 8048abb:	eb 93                	jmp    8048a50 <register_tm_clones>
 8048abd:	8d 76 00             	lea    0x0(%esi),%esi
 8048ac0:	ba 00 00 00 00       	mov    $0x0,%edx
 8048ac5:	85 d2                	test   %edx,%edx
 8048ac7:	74 f2                	je     8048abb <frame_dummy+0xb>
 8048ac9:	55                   	push   %ebp
 8048aca:	89 e5                	mov    %esp,%ebp
 8048acc:	83 ec 14             	sub    $0x14,%esp
 8048acf:	50                   	push   %eax
 8048ad0:	ff d2                	call   *%edx
 8048ad2:	83 c4 10             	add    $0x10,%esp
 8048ad5:	c9                   	leave  
 8048ad6:	e9 75 ff ff ff       	jmp    8048a50 <register_tm_clones>

08048adb <newNode>:
 8048adb:	55                   	push   %ebp
 8048adc:	89 e5                	mov    %esp,%ebp
 8048ade:	83 ec 18             	sub    $0x18,%esp
 8048ae1:	83 ec 0c             	sub    $0xc,%esp
 8048ae4:	6a 34                	push   $0x34
 8048ae6:	e8 95 fd ff ff       	call   8048880 <malloc@plt>
 8048aeb:	83 c4 10             	add    $0x10,%esp
 8048aee:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048af1:	83 ec 04             	sub    $0x4,%esp
 8048af4:	6a 34                	push   $0x34
 8048af6:	6a 00                	push   $0x0
 8048af8:	ff 75 f4             	pushl  -0xc(%ebp)
 8048afb:	e8 00 fe ff ff       	call   8048900 <memset@plt>
 8048b00:	83 c4 10             	add    $0x10,%esp
 8048b03:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b06:	c9                   	leave  
 8048b07:	c3                   	ret    

08048b08 <createNode>:
 8048b08:	55                   	push   %ebp
 8048b09:	89 e5                	mov    %esp,%ebp
 8048b0b:	53                   	push   %ebx
 8048b0c:	83 ec 14             	sub    $0x14,%esp
 8048b0f:	e8 c7 ff ff ff       	call   8048adb <newNode>
 8048b14:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048b17:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b1a:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048b1d:	89 10                	mov    %edx,(%eax)
 8048b1f:	83 ec 0c             	sub    $0xc,%esp
 8048b22:	ff 75 08             	pushl  0x8(%ebp)
 8048b25:	e8 86 fd ff ff       	call   80488b0 <strlen@plt>
 8048b2a:	83 c4 10             	add    $0x10,%esp
 8048b2d:	83 c0 01             	add    $0x1,%eax
 8048b30:	83 ec 0c             	sub    $0xc,%esp
 8048b33:	50                   	push   %eax
 8048b34:	e8 47 fd ff ff       	call   8048880 <malloc@plt>
 8048b39:	83 c4 10             	add    $0x10,%esp
 8048b3c:	89 c2                	mov    %eax,%edx
 8048b3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b41:	89 50 0c             	mov    %edx,0xc(%eax)
 8048b44:	83 ec 0c             	sub    $0xc,%esp
 8048b47:	ff 75 08             	pushl  0x8(%ebp)
 8048b4a:	e8 61 fd ff ff       	call   80488b0 <strlen@plt>
 8048b4f:	83 c4 10             	add    $0x10,%esp
 8048b52:	89 c2                	mov    %eax,%edx
 8048b54:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b57:	8b 40 0c             	mov    0xc(%eax),%eax
 8048b5a:	83 ec 04             	sub    $0x4,%esp
 8048b5d:	52                   	push   %edx
 8048b5e:	ff 75 08             	pushl  0x8(%ebp)
 8048b61:	50                   	push   %eax
 8048b62:	e8 c9 fd ff ff       	call   8048930 <strncpy@plt>
 8048b67:	83 c4 10             	add    $0x10,%esp
 8048b6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b6d:	8b 58 0c             	mov    0xc(%eax),%ebx
 8048b70:	83 ec 0c             	sub    $0xc,%esp
 8048b73:	ff 75 08             	pushl  0x8(%ebp)
 8048b76:	e8 35 fd ff ff       	call   80488b0 <strlen@plt>
 8048b7b:	83 c4 10             	add    $0x10,%esp
 8048b7e:	01 d8                	add    %ebx,%eax
 8048b80:	c6 00 00             	movb   $0x0,(%eax)
 8048b83:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b86:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048b89:	c9                   	leave  
 8048b8a:	c3                   	ret    

08048b8b <addChild>:
 8048b8b:	55                   	push   %ebp
 8048b8c:	89 e5                	mov    %esp,%ebp
 8048b8e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048b92:	74 1e                	je     8048bb2 <addChild+0x27>
 8048b94:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b97:	8b 40 10             	mov    0x10(%eax),%eax
 8048b9a:	8d 48 01             	lea    0x1(%eax),%ecx
 8048b9d:	8b 55 08             	mov    0x8(%ebp),%edx
 8048ba0:	89 4a 10             	mov    %ecx,0x10(%edx)
 8048ba3:	8b 55 08             	mov    0x8(%ebp),%edx
 8048ba6:	8d 48 04             	lea    0x4(%eax),%ecx
 8048ba9:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048bac:	89 44 8a 04          	mov    %eax,0x4(%edx,%ecx,4)
 8048bb0:	eb 01                	jmp    8048bb3 <addChild+0x28>
 8048bb2:	90                   	nop
 8048bb3:	5d                   	pop    %ebp
 8048bb4:	c3                   	ret    

08048bb5 <printNode>:
 8048bb5:	55                   	push   %ebp
 8048bb6:	89 e5                	mov    %esp,%ebp
 8048bb8:	83 ec 18             	sub    $0x18,%esp
 8048bbb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048bc2:	eb 14                	jmp    8048bd8 <printNode+0x23>
 8048bc4:	83 ec 0c             	sub    $0xc,%esp
 8048bc7:	68 68 35 05 08       	push   $0x8053568
 8048bcc:	e8 ef fb ff ff       	call   80487c0 <printf@plt>
 8048bd1:	83 c4 10             	add    $0x10,%esp
 8048bd4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048bd8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048bdb:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8048bde:	7c e4                	jl     8048bc4 <printNode+0xf>
 8048be0:	8b 45 08             	mov    0x8(%ebp),%eax
 8048be3:	8b 40 04             	mov    0x4(%eax),%eax
 8048be6:	83 f8 1e             	cmp    $0x1e,%eax
 8048be9:	76 22                	jbe    8048c0d <printNode+0x58>
 8048beb:	8b 45 08             	mov    0x8(%ebp),%eax
 8048bee:	8b 10                	mov    (%eax),%edx
 8048bf0:	8b 45 08             	mov    0x8(%ebp),%eax
 8048bf3:	8b 40 0c             	mov    0xc(%eax),%eax
 8048bf6:	83 ec 04             	sub    $0x4,%esp
 8048bf9:	52                   	push   %edx
 8048bfa:	50                   	push   %eax
 8048bfb:	68 6b 35 05 08       	push   $0x805356b
 8048c00:	e8 bb fb ff ff       	call   80487c0 <printf@plt>
 8048c05:	83 c4 10             	add    $0x10,%esp
 8048c08:	e9 cd 00 00 00       	jmp    8048cda <printNode+0x125>
 8048c0d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c10:	8b 40 04             	mov    0x4(%eax),%eax
 8048c13:	83 f8 04             	cmp    $0x4,%eax
 8048c16:	76 17                	jbe    8048c2f <printNode+0x7a>
 8048c18:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c1b:	8b 40 0c             	mov    0xc(%eax),%eax
 8048c1e:	83 ec 0c             	sub    $0xc,%esp
 8048c21:	50                   	push   %eax
 8048c22:	e8 69 fc ff ff       	call   8048890 <puts@plt>
 8048c27:	83 c4 10             	add    $0x10,%esp
 8048c2a:	e9 ab 00 00 00       	jmp    8048cda <printNode+0x125>
 8048c2f:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c32:	8b 40 04             	mov    0x4(%eax),%eax
 8048c35:	83 f8 02             	cmp    $0x2,%eax
 8048c38:	74 3e                	je     8048c78 <printNode+0xc3>
 8048c3a:	83 f8 02             	cmp    $0x2,%eax
 8048c3d:	77 0a                	ja     8048c49 <printNode+0x94>
 8048c3f:	83 f8 01             	cmp    $0x1,%eax
 8048c42:	74 14                	je     8048c58 <printNode+0xa3>
 8048c44:	e9 91 00 00 00       	jmp    8048cda <printNode+0x125>
 8048c49:	83 f8 03             	cmp    $0x3,%eax
 8048c4c:	74 4d                	je     8048c9b <printNode+0xe6>
 8048c4e:	83 f8 04             	cmp    $0x4,%eax
 8048c51:	74 68                	je     8048cbb <printNode+0x106>
 8048c53:	e9 82 00 00 00       	jmp    8048cda <printNode+0x125>
 8048c58:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c5b:	8b 50 08             	mov    0x8(%eax),%edx
 8048c5e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c61:	8b 40 0c             	mov    0xc(%eax),%eax
 8048c64:	83 ec 04             	sub    $0x4,%esp
 8048c67:	52                   	push   %edx
 8048c68:	50                   	push   %eax
 8048c69:	68 74 35 05 08       	push   $0x8053574
 8048c6e:	e8 4d fb ff ff       	call   80487c0 <printf@plt>
 8048c73:	83 c4 10             	add    $0x10,%esp
 8048c76:	eb 62                	jmp    8048cda <printNode+0x125>
 8048c78:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c7b:	d9 40 08             	flds   0x8(%eax)
 8048c7e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c81:	8b 40 0c             	mov    0xc(%eax),%eax
 8048c84:	8d 64 24 f8          	lea    -0x8(%esp),%esp
 8048c88:	dd 1c 24             	fstpl  (%esp)
 8048c8b:	50                   	push   %eax
 8048c8c:	68 7c 35 05 08       	push   $0x805357c
 8048c91:	e8 2a fb ff ff       	call   80487c0 <printf@plt>
 8048c96:	83 c4 10             	add    $0x10,%esp
 8048c99:	eb 3f                	jmp    8048cda <printNode+0x125>
 8048c9b:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c9e:	8b 50 08             	mov    0x8(%eax),%edx
 8048ca1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ca4:	8b 40 0c             	mov    0xc(%eax),%eax
 8048ca7:	83 ec 04             	sub    $0x4,%esp
 8048caa:	52                   	push   %edx
 8048cab:	50                   	push   %eax
 8048cac:	68 84 35 05 08       	push   $0x8053584
 8048cb1:	e8 0a fb ff ff       	call   80487c0 <printf@plt>
 8048cb6:	83 c4 10             	add    $0x10,%esp
 8048cb9:	eb 1f                	jmp    8048cda <printNode+0x125>
 8048cbb:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cbe:	8b 50 08             	mov    0x8(%eax),%edx
 8048cc1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cc4:	8b 40 0c             	mov    0xc(%eax),%eax
 8048cc7:	83 ec 04             	sub    $0x4,%esp
 8048cca:	52                   	push   %edx
 8048ccb:	50                   	push   %eax
 8048ccc:	68 84 35 05 08       	push   $0x8053584
 8048cd1:	e8 ea fa ff ff       	call   80487c0 <printf@plt>
 8048cd6:	83 c4 10             	add    $0x10,%esp
 8048cd9:	90                   	nop
 8048cda:	90                   	nop
 8048cdb:	c9                   	leave  
 8048cdc:	c3                   	ret    

08048cdd <preOrder>:
 8048cdd:	55                   	push   %ebp
 8048cde:	89 e5                	mov    %esp,%ebp
 8048ce0:	83 ec 18             	sub    $0x18,%esp
 8048ce3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048ce7:	74 49                	je     8048d32 <preOrder+0x55>
 8048ce9:	83 ec 08             	sub    $0x8,%esp
 8048cec:	ff 75 0c             	pushl  0xc(%ebp)
 8048cef:	ff 75 08             	pushl  0x8(%ebp)
 8048cf2:	e8 be fe ff ff       	call   8048bb5 <printNode>
 8048cf7:	83 c4 10             	add    $0x10,%esp
 8048cfa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048d01:	eb 24                	jmp    8048d27 <preOrder+0x4a>
 8048d03:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d06:	8d 50 01             	lea    0x1(%eax),%edx
 8048d09:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d0c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8048d0f:	83 c1 04             	add    $0x4,%ecx
 8048d12:	8b 44 88 04          	mov    0x4(%eax,%ecx,4),%eax
 8048d16:	83 ec 08             	sub    $0x8,%esp
 8048d19:	52                   	push   %edx
 8048d1a:	50                   	push   %eax
 8048d1b:	e8 bd ff ff ff       	call   8048cdd <preOrder>
 8048d20:	83 c4 10             	add    $0x10,%esp
 8048d23:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048d27:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d2a:	8b 40 10             	mov    0x10(%eax),%eax
 8048d2d:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8048d30:	7f d1                	jg     8048d03 <preOrder+0x26>
 8048d32:	90                   	nop
 8048d33:	c9                   	leave  
 8048d34:	c3                   	ret    

08048d35 <printTree>:
 8048d35:	55                   	push   %ebp
 8048d36:	89 e5                	mov    %esp,%ebp
 8048d38:	83 ec 08             	sub    $0x8,%esp
 8048d3b:	83 ec 08             	sub    $0x8,%esp
 8048d3e:	6a 00                	push   $0x0
 8048d40:	ff 75 08             	pushl  0x8(%ebp)
 8048d43:	e8 95 ff ff ff       	call   8048cdd <preOrder>
 8048d48:	83 c4 10             	add    $0x10,%esp
 8048d4b:	90                   	nop
 8048d4c:	c9                   	leave  
 8048d4d:	c3                   	ret    

08048d4e <deleteTree>:
 8048d4e:	55                   	push   %ebp
 8048d4f:	89 e5                	mov    %esp,%ebp
 8048d51:	83 ec 18             	sub    $0x18,%esp
 8048d54:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048d58:	74 3f                	je     8048d99 <deleteTree+0x4b>
 8048d5a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048d61:	eb 1d                	jmp    8048d80 <deleteTree+0x32>
 8048d63:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d66:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d69:	83 c2 04             	add    $0x4,%edx
 8048d6c:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
 8048d70:	83 ec 0c             	sub    $0xc,%esp
 8048d73:	50                   	push   %eax
 8048d74:	e8 d5 ff ff ff       	call   8048d4e <deleteTree>
 8048d79:	83 c4 10             	add    $0x10,%esp
 8048d7c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048d80:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d83:	8b 40 10             	mov    0x10(%eax),%eax
 8048d86:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8048d89:	7f d8                	jg     8048d63 <deleteTree+0x15>
 8048d8b:	83 ec 0c             	sub    $0xc,%esp
 8048d8e:	ff 75 08             	pushl  0x8(%ebp)
 8048d91:	e8 3a fa ff ff       	call   80487d0 <free@plt>
 8048d96:	83 c4 10             	add    $0x10,%esp
 8048d99:	90                   	nop
 8048d9a:	c9                   	leave  
 8048d9b:	c3                   	ret    

08048d9c <sematicCheck>:
 8048d9c:	55                   	push   %ebp
 8048d9d:	89 e5                	mov    %esp,%ebp
 8048d9f:	83 ec 08             	sub    $0x8,%esp
 8048da2:	83 ec 0c             	sub    $0xc,%esp
 8048da5:	ff 75 08             	pushl  0x8(%ebp)
 8048da8:	e8 0b 00 00 00       	call   8048db8 <Program>
 8048dad:	83 c4 10             	add    $0x10,%esp
 8048db0:	e8 fe 15 00 00       	call   804a3b3 <checkFunc>
 8048db5:	90                   	nop
 8048db6:	c9                   	leave  
 8048db7:	c3                   	ret    

08048db8 <Program>:
 8048db8:	55                   	push   %ebp
 8048db9:	89 e5                	mov    %esp,%ebp
 8048dbb:	83 ec 08             	sub    $0x8,%esp
 8048dbe:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048dc2:	74 14                	je     8048dd8 <Program+0x20>
 8048dc4:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dc7:	8b 40 14             	mov    0x14(%eax),%eax
 8048dca:	83 ec 0c             	sub    $0xc,%esp
 8048dcd:	50                   	push   %eax
 8048dce:	e8 08 00 00 00       	call   8048ddb <ExtDefList>
 8048dd3:	83 c4 10             	add    $0x10,%esp
 8048dd6:	eb 01                	jmp    8048dd9 <Program+0x21>
 8048dd8:	90                   	nop
 8048dd9:	c9                   	leave  
 8048dda:	c3                   	ret    

08048ddb <ExtDefList>:
 8048ddb:	55                   	push   %ebp
 8048ddc:	89 e5                	mov    %esp,%ebp
 8048dde:	83 ec 18             	sub    $0x18,%esp
 8048de1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048de5:	74 31                	je     8048e18 <ExtDefList+0x3d>
 8048de7:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dea:	8b 40 14             	mov    0x14(%eax),%eax
 8048ded:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048df0:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048df4:	74 23                	je     8048e19 <ExtDefList+0x3e>
 8048df6:	83 ec 0c             	sub    $0xc,%esp
 8048df9:	ff 75 f4             	pushl  -0xc(%ebp)
 8048dfc:	e8 1a 00 00 00       	call   8048e1b <ExtDef>
 8048e01:	83 c4 10             	add    $0x10,%esp
 8048e04:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e07:	8b 40 18             	mov    0x18(%eax),%eax
 8048e0a:	83 ec 0c             	sub    $0xc,%esp
 8048e0d:	50                   	push   %eax
 8048e0e:	e8 c8 ff ff ff       	call   8048ddb <ExtDefList>
 8048e13:	83 c4 10             	add    $0x10,%esp
 8048e16:	eb 01                	jmp    8048e19 <ExtDefList+0x3e>
 8048e18:	90                   	nop
 8048e19:	c9                   	leave  
 8048e1a:	c3                   	ret    

08048e1b <ExtDef>:
 8048e1b:	55                   	push   %ebp
 8048e1c:	89 e5                	mov    %esp,%ebp
 8048e1e:	83 ec 28             	sub    $0x28,%esp
 8048e21:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048e25:	0f 84 1a 02 00 00    	je     8049045 <ExtDef+0x22a>
 8048e2b:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e2e:	8b 40 10             	mov    0x10(%eax),%eax
 8048e31:	83 f8 01             	cmp    $0x1,%eax
 8048e34:	0f 8e 0e 02 00 00    	jle    8049048 <ExtDef+0x22d>
 8048e3a:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e3d:	8b 40 14             	mov    0x14(%eax),%eax
 8048e40:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8048e43:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e46:	8b 40 18             	mov    0x18(%eax),%eax
 8048e49:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048e4c:	83 ec 0c             	sub    $0xc,%esp
 8048e4f:	ff 75 dc             	pushl  -0x24(%ebp)
 8048e52:	e8 7c 02 00 00       	call   80490d3 <Specifier>
 8048e57:	83 c4 10             	add    $0x10,%esp
 8048e5a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048e5d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048e60:	8b 40 04             	mov    0x4(%eax),%eax
 8048e63:	83 f8 28             	cmp    $0x28,%eax
 8048e66:	0f 85 bb 01 00 00    	jne    8049027 <ExtDef+0x20c>
 8048e6c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048e6f:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048e72:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e75:	8b 40 1c             	mov    0x1c(%eax),%eax
 8048e78:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048e7b:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 8048e82:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e85:	8b 40 1c             	mov    0x1c(%eax),%eax
 8048e88:	8b 40 04             	mov    0x4(%eax),%eax
 8048e8b:	83 f8 2b             	cmp    $0x2b,%eax
 8048e8e:	75 18                	jne    8048ea8 <ExtDef+0x8d>
 8048e90:	83 ec 04             	sub    $0x4,%esp
 8048e93:	6a 01                	push   $0x1
 8048e95:	ff 75 e4             	pushl  -0x1c(%ebp)
 8048e98:	ff 75 e8             	pushl  -0x18(%ebp)
 8048e9b:	e8 73 05 00 00       	call   8049413 <FunDec>
 8048ea0:	83 c4 10             	add    $0x10,%esp
 8048ea3:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8048ea6:	eb 16                	jmp    8048ebe <ExtDef+0xa3>
 8048ea8:	83 ec 04             	sub    $0x4,%esp
 8048eab:	6a 00                	push   $0x0
 8048ead:	ff 75 e4             	pushl  -0x1c(%ebp)
 8048eb0:	ff 75 e8             	pushl  -0x18(%ebp)
 8048eb3:	e8 5b 05 00 00       	call   8049413 <FunDec>
 8048eb8:	83 c4 10             	add    $0x10,%esp
 8048ebb:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8048ebe:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ec1:	8b 10                	mov    (%eax),%edx
 8048ec3:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048ec6:	89 50 08             	mov    %edx,0x8(%eax)
 8048ec9:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048ecc:	8b 40 04             	mov    0x4(%eax),%eax
 8048ecf:	83 ec 0c             	sub    $0xc,%esp
 8048ed2:	50                   	push   %eax
 8048ed3:	e8 ee 9c 00 00       	call   8052bc6 <searchTable>
 8048ed8:	83 c4 10             	add    $0x10,%esp
 8048edb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048ede:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8048ee2:	0f 84 c7 00 00 00    	je     8048faf <ExtDef+0x194>
 8048ee8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048eeb:	8b 00                	mov    (%eax),%eax
 8048eed:	83 f8 01             	cmp    $0x1,%eax
 8048ef0:	0f 85 fa 00 00 00    	jne    8048ff0 <ExtDef+0x1d5>
 8048ef6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ef9:	8b 40 0c             	mov    0xc(%eax),%eax
 8048efc:	8b 40 08             	mov    0x8(%eax),%eax
 8048eff:	83 f8 01             	cmp    $0x1,%eax
 8048f02:	75 3d                	jne    8048f41 <ExtDef+0x126>
 8048f04:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048f07:	8b 40 0c             	mov    0xc(%eax),%eax
 8048f0a:	8b 40 08             	mov    0x8(%eax),%eax
 8048f0d:	83 f8 01             	cmp    $0x1,%eax
 8048f10:	75 2f                	jne    8048f41 <ExtDef+0x126>
 8048f12:	a1 20 81 05 08       	mov    0x8058120,%eax
 8048f17:	83 c0 01             	add    $0x1,%eax
 8048f1a:	a3 20 81 05 08       	mov    %eax,0x8058120
 8048f1f:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048f22:	8b 50 04             	mov    0x4(%eax),%edx
 8048f25:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048f28:	8b 00                	mov    (%eax),%eax
 8048f2a:	83 ec 04             	sub    $0x4,%esp
 8048f2d:	52                   	push   %edx
 8048f2e:	50                   	push   %eax
 8048f2f:	68 8c 35 05 08       	push   $0x805358c
 8048f34:	e8 87 f8 ff ff       	call   80487c0 <printf@plt>
 8048f39:	83 c4 10             	add    $0x10,%esp
 8048f3c:	e9 af 00 00 00       	jmp    8048ff0 <ExtDef+0x1d5>
 8048f41:	83 ec 08             	sub    $0x8,%esp
 8048f44:	ff 75 d8             	pushl  -0x28(%ebp)
 8048f47:	ff 75 f0             	pushl  -0x10(%ebp)
 8048f4a:	e8 57 a1 00 00       	call   80530a6 <compareFunction>
 8048f4f:	83 c4 10             	add    $0x10,%esp
 8048f52:	85 c0                	test   %eax,%eax
 8048f54:	75 2f                	jne    8048f85 <ExtDef+0x16a>
 8048f56:	a1 20 81 05 08       	mov    0x8058120,%eax
 8048f5b:	83 c0 01             	add    $0x1,%eax
 8048f5e:	a3 20 81 05 08       	mov    %eax,0x8058120
 8048f63:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048f66:	8b 50 04             	mov    0x4(%eax),%edx
 8048f69:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048f6c:	8b 00                	mov    (%eax),%eax
 8048f6e:	83 ec 04             	sub    $0x4,%esp
 8048f71:	52                   	push   %edx
 8048f72:	50                   	push   %eax
 8048f73:	68 c0 35 05 08       	push   $0x80535c0
 8048f78:	e8 43 f8 ff ff       	call   80487c0 <printf@plt>
 8048f7d:	83 c4 10             	add    $0x10,%esp
 8048f80:	e9 c4 00 00 00       	jmp    8049049 <ExtDef+0x22e>
 8048f85:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048f88:	8b 40 0c             	mov    0xc(%eax),%eax
 8048f8b:	8b 40 08             	mov    0x8(%eax),%eax
 8048f8e:	85 c0                	test   %eax,%eax
 8048f90:	75 5e                	jne    8048ff0 <ExtDef+0x1d5>
 8048f92:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048f95:	8b 40 0c             	mov    0xc(%eax),%eax
 8048f98:	8b 40 08             	mov    0x8(%eax),%eax
 8048f9b:	83 f8 01             	cmp    $0x1,%eax
 8048f9e:	75 50                	jne    8048ff0 <ExtDef+0x1d5>
 8048fa0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048fa3:	8b 40 0c             	mov    0xc(%eax),%eax
 8048fa6:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 8048fad:	eb 41                	jmp    8048ff0 <ExtDef+0x1d5>
 8048faf:	83 ec 0c             	sub    $0xc,%esp
 8048fb2:	ff 75 d8             	pushl  -0x28(%ebp)
 8048fb5:	e8 84 9c 00 00       	call   8052c3e <insertTable>
 8048fba:	83 c4 10             	add    $0x10,%esp
 8048fbd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048fc0:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 8048fc4:	75 2a                	jne    8048ff0 <ExtDef+0x1d5>
 8048fc6:	a1 20 81 05 08       	mov    0x8058120,%eax
 8048fcb:	83 c0 01             	add    $0x1,%eax
 8048fce:	a3 20 81 05 08       	mov    %eax,0x8058120
 8048fd3:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048fd6:	8b 50 04             	mov    0x4(%eax),%edx
 8048fd9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048fdc:	8b 00                	mov    (%eax),%eax
 8048fde:	83 ec 04             	sub    $0x4,%esp
 8048fe1:	52                   	push   %edx
 8048fe2:	50                   	push   %eax
 8048fe3:	68 8c 35 05 08       	push   $0x805358c
 8048fe8:	e8 d3 f7 ff ff       	call   80487c0 <printf@plt>
 8048fed:	83 c4 10             	add    $0x10,%esp
 8048ff0:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ff3:	8b 40 1c             	mov    0x1c(%eax),%eax
 8048ff6:	8b 40 04             	mov    0x4(%eax),%eax
 8048ff9:	83 f8 2b             	cmp    $0x2b,%eax
 8048ffc:	75 4b                	jne    8049049 <ExtDef+0x22e>
 8048ffe:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8049001:	8b 40 0c             	mov    0xc(%eax),%eax
 8049004:	a3 54 81 05 08       	mov    %eax,0x8058154
 8049009:	8b 45 08             	mov    0x8(%ebp),%eax
 804900c:	8b 40 1c             	mov    0x1c(%eax),%eax
 804900f:	83 ec 0c             	sub    $0xc,%esp
 8049012:	50                   	push   %eax
 8049013:	e8 c3 05 00 00       	call   80495db <CompSt>
 8049018:	83 c4 10             	add    $0x10,%esp
 804901b:	c7 05 54 81 05 08 00 	movl   $0x0,0x8058154
 8049022:	00 00 00 
 8049025:	eb 22                	jmp    8049049 <ExtDef+0x22e>
 8049027:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804902a:	8b 40 04             	mov    0x4(%eax),%eax
 804902d:	83 f8 22             	cmp    $0x22,%eax
 8049030:	75 17                	jne    8049049 <ExtDef+0x22e>
 8049032:	83 ec 08             	sub    $0x8,%esp
 8049035:	ff 75 e0             	pushl  -0x20(%ebp)
 8049038:	ff 75 e4             	pushl  -0x1c(%ebp)
 804903b:	e8 0b 00 00 00       	call   804904b <ExtDecList>
 8049040:	83 c4 10             	add    $0x10,%esp
 8049043:	eb 04                	jmp    8049049 <ExtDef+0x22e>
 8049045:	90                   	nop
 8049046:	eb 01                	jmp    8049049 <ExtDef+0x22e>
 8049048:	90                   	nop
 8049049:	c9                   	leave  
 804904a:	c3                   	ret    

0804904b <ExtDecList>:
 804904b:	55                   	push   %ebp
 804904c:	89 e5                	mov    %esp,%ebp
 804904e:	83 ec 18             	sub    $0x18,%esp
 8049051:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049054:	8b 40 14             	mov    0x14(%eax),%eax
 8049057:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804905a:	83 ec 08             	sub    $0x8,%esp
 804905d:	ff 75 ec             	pushl  -0x14(%ebp)
 8049060:	ff 75 08             	pushl  0x8(%ebp)
 8049063:	e8 f3 02 00 00       	call   804935b <VarDec>
 8049068:	83 c4 10             	add    $0x10,%esp
 804906b:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804906e:	83 ec 0c             	sub    $0xc,%esp
 8049071:	ff 75 f0             	pushl  -0x10(%ebp)
 8049074:	e8 c5 9b 00 00       	call   8052c3e <insertTable>
 8049079:	83 c4 10             	add    $0x10,%esp
 804907c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804907f:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 8049083:	75 2b                	jne    80490b0 <ExtDecList+0x65>
 8049085:	a1 20 81 05 08       	mov    0x8058120,%eax
 804908a:	83 c0 01             	add    $0x1,%eax
 804908d:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049092:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049095:	8b 50 04             	mov    0x4(%eax),%edx
 8049098:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804909b:	8b 40 08             	mov    0x8(%eax),%eax
 804909e:	83 ec 04             	sub    $0x4,%esp
 80490a1:	52                   	push   %edx
 80490a2:	50                   	push   %eax
 80490a3:	68 08 36 05 08       	push   $0x8053608
 80490a8:	e8 13 f7 ff ff       	call   80487c0 <printf@plt>
 80490ad:	83 c4 10             	add    $0x10,%esp
 80490b0:	8b 45 0c             	mov    0xc(%ebp),%eax
 80490b3:	8b 40 10             	mov    0x10(%eax),%eax
 80490b6:	83 f8 01             	cmp    $0x1,%eax
 80490b9:	7e 15                	jle    80490d0 <ExtDecList+0x85>
 80490bb:	8b 45 0c             	mov    0xc(%ebp),%eax
 80490be:	8b 40 1c             	mov    0x1c(%eax),%eax
 80490c1:	83 ec 08             	sub    $0x8,%esp
 80490c4:	50                   	push   %eax
 80490c5:	ff 75 08             	pushl  0x8(%ebp)
 80490c8:	e8 7e ff ff ff       	call   804904b <ExtDecList>
 80490cd:	83 c4 10             	add    $0x10,%esp
 80490d0:	90                   	nop
 80490d1:	c9                   	leave  
 80490d2:	c3                   	ret    

080490d3 <Specifier>:
 80490d3:	55                   	push   %ebp
 80490d4:	89 e5                	mov    %esp,%ebp
 80490d6:	83 ec 18             	sub    $0x18,%esp
 80490d9:	8b 45 08             	mov    0x8(%ebp),%eax
 80490dc:	8b 40 14             	mov    0x14(%eax),%eax
 80490df:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490e2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80490e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490ec:	8b 40 04             	mov    0x4(%eax),%eax
 80490ef:	83 f8 04             	cmp    $0x4,%eax
 80490f2:	75 7d                	jne    8049171 <Specifier+0x9e>
 80490f4:	83 ec 0c             	sub    $0xc,%esp
 80490f7:	6a 0c                	push   $0xc
 80490f9:	e8 82 f7 ff ff       	call   8048880 <malloc@plt>
 80490fe:	83 c4 10             	add    $0x10,%esp
 8049101:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049104:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049107:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804910d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049110:	8b 40 08             	mov    0x8(%eax),%eax
 8049113:	83 ec 08             	sub    $0x8,%esp
 8049116:	68 3b 36 05 08       	push   $0x805363b
 804911b:	50                   	push   %eax
 804911c:	e8 8f f6 ff ff       	call   80487b0 <strcmp@plt>
 8049121:	83 c4 10             	add    $0x10,%esp
 8049124:	85 c0                	test   %eax,%eax
 8049126:	75 0c                	jne    8049134 <Specifier+0x61>
 8049128:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804912b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049132:	eb 78                	jmp    80491ac <Specifier+0xd9>
 8049134:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049137:	8b 40 08             	mov    0x8(%eax),%eax
 804913a:	83 ec 08             	sub    $0x8,%esp
 804913d:	68 3f 36 05 08       	push   $0x805363f
 8049142:	50                   	push   %eax
 8049143:	e8 68 f6 ff ff       	call   80487b0 <strcmp@plt>
 8049148:	83 c4 10             	add    $0x10,%esp
 804914b:	85 c0                	test   %eax,%eax
 804914d:	75 0c                	jne    804915b <Specifier+0x88>
 804914f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049152:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 8049159:	eb 51                	jmp    80491ac <Specifier+0xd9>
 804915b:	68 10 3b 05 08       	push   $0x8053b10
 8049160:	6a 7c                	push   $0x7c
 8049162:	68 45 36 05 08       	push   $0x8053645
 8049167:	68 4f 36 05 08       	push   $0x805364f
 804916c:	e8 4f f8 ff ff       	call   80489c0 <__assert_fail@plt>
 8049171:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049174:	8b 40 04             	mov    0x4(%eax),%eax
 8049177:	83 f8 24             	cmp    $0x24,%eax
 804917a:	75 17                	jne    8049193 <Specifier+0xc0>
 804917c:	8b 45 08             	mov    0x8(%ebp),%eax
 804917f:	8b 40 14             	mov    0x14(%eax),%eax
 8049182:	83 ec 0c             	sub    $0xc,%esp
 8049185:	50                   	push   %eax
 8049186:	e8 26 00 00 00       	call   80491b1 <StructSpecifier>
 804918b:	83 c4 10             	add    $0x10,%esp
 804918e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049191:	eb 19                	jmp    80491ac <Specifier+0xd9>
 8049193:	68 10 3b 05 08       	push   $0x8053b10
 8049198:	68 84 00 00 00       	push   $0x84
 804919d:	68 45 36 05 08       	push   $0x8053645
 80491a2:	68 4f 36 05 08       	push   $0x805364f
 80491a7:	e8 14 f8 ff ff       	call   80489c0 <__assert_fail@plt>
 80491ac:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80491af:	c9                   	leave  
 80491b0:	c3                   	ret    

080491b1 <StructSpecifier>:
 80491b1:	55                   	push   %ebp
 80491b2:	89 e5                	mov    %esp,%ebp
 80491b4:	83 ec 28             	sub    $0x28,%esp
 80491b7:	83 ec 0c             	sub    $0xc,%esp
 80491ba:	6a 0c                	push   $0xc
 80491bc:	e8 bf f6 ff ff       	call   8048880 <malloc@plt>
 80491c1:	83 c4 10             	add    $0x10,%esp
 80491c4:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80491c7:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80491ca:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80491d0:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80491d3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 80491da:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80491dd:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 80491e4:	8b 45 08             	mov    0x8(%ebp),%eax
 80491e7:	8b 40 18             	mov    0x18(%eax),%eax
 80491ea:	8b 40 04             	mov    0x4(%eax),%eax
 80491ed:	83 f8 26             	cmp    $0x26,%eax
 80491f0:	75 76                	jne    8049268 <StructSpecifier+0xb7>
 80491f2:	8b 45 08             	mov    0x8(%ebp),%eax
 80491f5:	8b 40 18             	mov    0x18(%eax),%eax
 80491f8:	8b 40 14             	mov    0x14(%eax),%eax
 80491fb:	8b 40 08             	mov    0x8(%eax),%eax
 80491fe:	83 ec 0c             	sub    $0xc,%esp
 8049201:	50                   	push   %eax
 8049202:	e8 bf 99 00 00       	call   8052bc6 <searchTable>
 8049207:	83 c4 10             	add    $0x10,%esp
 804920a:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804920d:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 8049211:	74 0a                	je     804921d <StructSpecifier+0x6c>
 8049213:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049216:	8b 00                	mov    (%eax),%eax
 8049218:	83 f8 02             	cmp    $0x2,%eax
 804921b:	74 40                	je     804925d <StructSpecifier+0xac>
 804921d:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049222:	83 c0 01             	add    $0x1,%eax
 8049225:	a3 20 81 05 08       	mov    %eax,0x8058120
 804922a:	8b 45 08             	mov    0x8(%ebp),%eax
 804922d:	8b 40 18             	mov    0x18(%eax),%eax
 8049230:	8b 40 14             	mov    0x14(%eax),%eax
 8049233:	8b 50 08             	mov    0x8(%eax),%edx
 8049236:	8b 45 08             	mov    0x8(%ebp),%eax
 8049239:	8b 40 18             	mov    0x18(%eax),%eax
 804923c:	8b 40 14             	mov    0x14(%eax),%eax
 804923f:	8b 00                	mov    (%eax),%eax
 8049241:	83 ec 04             	sub    $0x4,%esp
 8049244:	52                   	push   %edx
 8049245:	50                   	push   %eax
 8049246:	68 54 36 05 08       	push   $0x8053654
 804924b:	e8 70 f5 ff ff       	call   80487c0 <printf@plt>
 8049250:	83 c4 10             	add    $0x10,%esp
 8049253:	b8 00 00 00 00       	mov    $0x0,%eax
 8049258:	e9 fc 00 00 00       	jmp    8049359 <StructSpecifier+0x1a8>
 804925d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049260:	8b 40 0c             	mov    0xc(%eax),%eax
 8049263:	e9 f1 00 00 00       	jmp    8049359 <StructSpecifier+0x1a8>
 8049268:	8b 45 08             	mov    0x8(%ebp),%eax
 804926b:	8b 40 18             	mov    0x18(%eax),%eax
 804926e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049271:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 8049275:	74 4c                	je     80492c3 <StructSpecifier+0x112>
 8049277:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804927a:	8b 40 14             	mov    0x14(%eax),%eax
 804927d:	8b 40 08             	mov    0x8(%eax),%eax
 8049280:	83 ec 0c             	sub    $0xc,%esp
 8049283:	50                   	push   %eax
 8049284:	e8 27 f6 ff ff       	call   80488b0 <strlen@plt>
 8049289:	83 c4 10             	add    $0x10,%esp
 804928c:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804928f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049292:	83 c0 01             	add    $0x1,%eax
 8049295:	83 ec 0c             	sub    $0xc,%esp
 8049298:	50                   	push   %eax
 8049299:	e8 e2 f5 ff ff       	call   8048880 <malloc@plt>
 804929e:	83 c4 10             	add    $0x10,%esp
 80492a1:	89 c2                	mov    %eax,%edx
 80492a3:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80492a6:	89 10                	mov    %edx,(%eax)
 80492a8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80492ab:	8b 40 14             	mov    0x14(%eax),%eax
 80492ae:	8b 50 08             	mov    0x8(%eax),%edx
 80492b1:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80492b4:	8b 00                	mov    (%eax),%eax
 80492b6:	83 ec 08             	sub    $0x8,%esp
 80492b9:	52                   	push   %edx
 80492ba:	50                   	push   %eax
 80492bb:	e8 a0 f5 ff ff       	call   8048860 <strcpy@plt>
 80492c0:	83 c4 10             	add    $0x10,%esp
 80492c3:	8b 45 08             	mov    0x8(%ebp),%eax
 80492c6:	8b 40 20             	mov    0x20(%eax),%eax
 80492c9:	83 ec 04             	sub    $0x4,%esp
 80492cc:	ff 75 dc             	pushl  -0x24(%ebp)
 80492cf:	6a 00                	push   $0x0
 80492d1:	50                   	push   %eax
 80492d2:	e8 cf 05 00 00       	call   80498a6 <DefList>
 80492d7:	83 c4 10             	add    $0x10,%esp
 80492da:	83 ec 0c             	sub    $0xc,%esp
 80492dd:	6a 0c                	push   $0xc
 80492df:	e8 9c f5 ff ff       	call   8048880 <malloc@plt>
 80492e4:	83 c4 10             	add    $0x10,%esp
 80492e7:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80492ea:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80492ed:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
 80492f3:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80492f6:	8b 55 dc             	mov    -0x24(%ebp),%edx
 80492f9:	89 50 04             	mov    %edx,0x4(%eax)
 80492fc:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80492ff:	8b 00                	mov    (%eax),%eax
 8049301:	83 ec 04             	sub    $0x4,%esp
 8049304:	ff 75 ec             	pushl  -0x14(%ebp)
 8049307:	50                   	push   %eax
 8049308:	6a 02                	push   $0x2
 804930a:	e8 dd 96 00 00       	call   80529ec <newTypeSymbol>
 804930f:	83 c4 10             	add    $0x10,%esp
 8049312:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049315:	83 ec 0c             	sub    $0xc,%esp
 8049318:	ff 75 f0             	pushl  -0x10(%ebp)
 804931b:	e8 1e 99 00 00       	call   8052c3e <insertTable>
 8049320:	83 c4 10             	add    $0x10,%esp
 8049323:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049326:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 804932a:	75 2a                	jne    8049356 <StructSpecifier+0x1a5>
 804932c:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049331:	83 c0 01             	add    $0x1,%eax
 8049334:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049339:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804933c:	8b 50 04             	mov    0x4(%eax),%edx
 804933f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049342:	8b 00                	mov    (%eax),%eax
 8049344:	83 ec 04             	sub    $0x4,%esp
 8049347:	52                   	push   %edx
 8049348:	50                   	push   %eax
 8049349:	68 8c 36 05 08       	push   $0x805368c
 804934e:	e8 6d f4 ff ff       	call   80487c0 <printf@plt>
 8049353:	83 c4 10             	add    $0x10,%esp
 8049356:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049359:	c9                   	leave  
 804935a:	c3                   	ret    

0804935b <VarDec>:
 804935b:	55                   	push   %ebp
 804935c:	89 e5                	mov    %esp,%ebp
 804935e:	83 ec 18             	sub    $0x18,%esp
 8049361:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049364:	8b 40 14             	mov    0x14(%eax),%eax
 8049367:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804936a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8049371:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049374:	8b 40 04             	mov    0x4(%eax),%eax
 8049377:	83 f8 03             	cmp    $0x3,%eax
 804937a:	75 27                	jne    80493a3 <VarDec+0x48>
 804937c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804937f:	8b 40 08             	mov    0x8(%eax),%eax
 8049382:	83 ec 04             	sub    $0x4,%esp
 8049385:	ff 75 08             	pushl  0x8(%ebp)
 8049388:	50                   	push   %eax
 8049389:	6a 00                	push   $0x0
 804938b:	e8 5c 96 00 00       	call   80529ec <newTypeSymbol>
 8049390:	83 c4 10             	add    $0x10,%esp
 8049393:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049396:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049399:	8b 10                	mov    (%eax),%edx
 804939b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804939e:	89 50 08             	mov    %edx,0x8(%eax)
 80493a1:	eb 6b                	jmp    804940e <VarDec+0xb3>
 80493a3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80493a6:	8b 40 04             	mov    0x4(%eax),%eax
 80493a9:	83 f8 27             	cmp    $0x27,%eax
 80493ac:	75 47                	jne    80493f5 <VarDec+0x9a>
 80493ae:	83 ec 0c             	sub    $0xc,%esp
 80493b1:	6a 0c                	push   $0xc
 80493b3:	e8 c8 f4 ff ff       	call   8048880 <malloc@plt>
 80493b8:	83 c4 10             	add    $0x10,%esp
 80493bb:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493be:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80493c1:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 80493c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80493ca:	8b 55 08             	mov    0x8(%ebp),%edx
 80493cd:	89 50 04             	mov    %edx,0x4(%eax)
 80493d0:	8b 45 0c             	mov    0xc(%ebp),%eax
 80493d3:	8b 40 1c             	mov    0x1c(%eax),%eax
 80493d6:	8b 50 08             	mov    0x8(%eax),%edx
 80493d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80493dc:	89 50 08             	mov    %edx,0x8(%eax)
 80493df:	83 ec 08             	sub    $0x8,%esp
 80493e2:	ff 75 f0             	pushl  -0x10(%ebp)
 80493e5:	ff 75 f4             	pushl  -0xc(%ebp)
 80493e8:	e8 6e ff ff ff       	call   804935b <VarDec>
 80493ed:	83 c4 10             	add    $0x10,%esp
 80493f0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80493f3:	eb 19                	jmp    804940e <VarDec+0xb3>
 80493f5:	68 1c 3b 05 08       	push   $0x8053b1c
 80493fa:	68 d8 00 00 00       	push   $0xd8
 80493ff:	68 45 36 05 08       	push   $0x8053645
 8049404:	68 4f 36 05 08       	push   $0x805364f
 8049409:	e8 b2 f5 ff ff       	call   80489c0 <__assert_fail@plt>
 804940e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049411:	c9                   	leave  
 8049412:	c3                   	ret    

08049413 <FunDec>:
 8049413:	55                   	push   %ebp
 8049414:	89 e5                	mov    %esp,%ebp
 8049416:	83 ec 18             	sub    $0x18,%esp
 8049419:	83 ec 0c             	sub    $0xc,%esp
 804941c:	6a 0c                	push   $0xc
 804941e:	e8 5d f4 ff ff       	call   8048880 <malloc@plt>
 8049423:	83 c4 10             	add    $0x10,%esp
 8049426:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049429:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804942c:	8b 55 0c             	mov    0xc(%ebp),%edx
 804942f:	89 10                	mov    %edx,(%eax)
 8049431:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049434:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804943b:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
 804943f:	75 0c                	jne    804944d <FunDec+0x3a>
 8049441:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049444:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 804944b:	eb 0a                	jmp    8049457 <FunDec+0x44>
 804944d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049450:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8049457:	8b 45 08             	mov    0x8(%ebp),%eax
 804945a:	8b 40 1c             	mov    0x1c(%eax),%eax
 804945d:	8b 40 04             	mov    0x4(%eax),%eax
 8049460:	83 f8 29             	cmp    $0x29,%eax
 8049463:	75 1d                	jne    8049482 <FunDec+0x6f>
 8049465:	8b 45 08             	mov    0x8(%ebp),%eax
 8049468:	8b 40 1c             	mov    0x1c(%eax),%eax
 804946b:	83 ec 08             	sub    $0x8,%esp
 804946e:	ff 75 10             	pushl  0x10(%ebp)
 8049471:	50                   	push   %eax
 8049472:	e8 2d 00 00 00       	call   80494a4 <VarList>
 8049477:	83 c4 10             	add    $0x10,%esp
 804947a:	89 c2                	mov    %eax,%edx
 804947c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804947f:	89 50 04             	mov    %edx,0x4(%eax)
 8049482:	8b 45 08             	mov    0x8(%ebp),%eax
 8049485:	8b 40 14             	mov    0x14(%eax),%eax
 8049488:	8b 40 08             	mov    0x8(%eax),%eax
 804948b:	83 ec 04             	sub    $0x4,%esp
 804948e:	ff 75 f0             	pushl  -0x10(%ebp)
 8049491:	50                   	push   %eax
 8049492:	6a 01                	push   $0x1
 8049494:	e8 d7 95 00 00       	call   8052a70 <newFuncSymbol>
 8049499:	83 c4 10             	add    $0x10,%esp
 804949c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804949f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80494a2:	c9                   	leave  
 80494a3:	c3                   	ret    

080494a4 <VarList>:
 80494a4:	55                   	push   %ebp
 80494a5:	89 e5                	mov    %esp,%ebp
 80494a7:	83 ec 18             	sub    $0x18,%esp
 80494aa:	8b 45 08             	mov    0x8(%ebp),%eax
 80494ad:	8b 40 14             	mov    0x14(%eax),%eax
 80494b0:	83 ec 08             	sub    $0x8,%esp
 80494b3:	ff 75 0c             	pushl  0xc(%ebp)
 80494b6:	50                   	push   %eax
 80494b7:	e8 33 00 00 00       	call   80494ef <ParamDec>
 80494bc:	83 c4 10             	add    $0x10,%esp
 80494bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80494c2:	8b 45 08             	mov    0x8(%ebp),%eax
 80494c5:	8b 40 10             	mov    0x10(%eax),%eax
 80494c8:	83 f8 01             	cmp    $0x1,%eax
 80494cb:	7e 1d                	jle    80494ea <VarList+0x46>
 80494cd:	8b 45 08             	mov    0x8(%ebp),%eax
 80494d0:	8b 40 1c             	mov    0x1c(%eax),%eax
 80494d3:	83 ec 08             	sub    $0x8,%esp
 80494d6:	ff 75 0c             	pushl  0xc(%ebp)
 80494d9:	50                   	push   %eax
 80494da:	e8 c5 ff ff ff       	call   80494a4 <VarList>
 80494df:	83 c4 10             	add    $0x10,%esp
 80494e2:	89 c2                	mov    %eax,%edx
 80494e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80494e7:	89 50 08             	mov    %edx,0x8(%eax)
 80494ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80494ed:	c9                   	leave  
 80494ee:	c3                   	ret    

080494ef <ParamDec>:
 80494ef:	55                   	push   %ebp
 80494f0:	89 e5                	mov    %esp,%ebp
 80494f2:	83 ec 28             	sub    $0x28,%esp
 80494f5:	8b 45 08             	mov    0x8(%ebp),%eax
 80494f8:	8b 40 14             	mov    0x14(%eax),%eax
 80494fb:	83 ec 0c             	sub    $0xc,%esp
 80494fe:	50                   	push   %eax
 80494ff:	e8 cf fb ff ff       	call   80490d3 <Specifier>
 8049504:	83 c4 10             	add    $0x10,%esp
 8049507:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804950a:	8b 45 08             	mov    0x8(%ebp),%eax
 804950d:	8b 40 18             	mov    0x18(%eax),%eax
 8049510:	83 ec 08             	sub    $0x8,%esp
 8049513:	50                   	push   %eax
 8049514:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049517:	e8 3f fe ff ff       	call   804935b <VarDec>
 804951c:	83 c4 10             	add    $0x10,%esp
 804951f:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049522:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
 8049526:	75 42                	jne    804956a <ParamDec+0x7b>
 8049528:	83 ec 0c             	sub    $0xc,%esp
 804952b:	ff 75 e8             	pushl  -0x18(%ebp)
 804952e:	e8 0b 97 00 00       	call   8052c3e <insertTable>
 8049533:	83 c4 10             	add    $0x10,%esp
 8049536:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049539:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 804953d:	75 2b                	jne    804956a <ParamDec+0x7b>
 804953f:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049544:	83 c0 01             	add    $0x1,%eax
 8049547:	a3 20 81 05 08       	mov    %eax,0x8058120
 804954c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804954f:	8b 50 04             	mov    0x4(%eax),%edx
 8049552:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049555:	8b 40 08             	mov    0x8(%eax),%eax
 8049558:	83 ec 04             	sub    $0x4,%esp
 804955b:	52                   	push   %edx
 804955c:	50                   	push   %eax
 804955d:	68 08 36 05 08       	push   $0x8053608
 8049562:	e8 59 f2 ff ff       	call   80487c0 <printf@plt>
 8049567:	83 c4 10             	add    $0x10,%esp
 804956a:	83 ec 0c             	sub    $0xc,%esp
 804956d:	6a 0c                	push   $0xc
 804956f:	e8 0c f3 ff ff       	call   8048880 <malloc@plt>
 8049574:	83 c4 10             	add    $0x10,%esp
 8049577:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804957a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804957d:	8b 40 04             	mov    0x4(%eax),%eax
 8049580:	83 ec 0c             	sub    $0xc,%esp
 8049583:	50                   	push   %eax
 8049584:	e8 27 f3 ff ff       	call   80488b0 <strlen@plt>
 8049589:	83 c4 10             	add    $0x10,%esp
 804958c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804958f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049592:	83 c0 01             	add    $0x1,%eax
 8049595:	83 ec 0c             	sub    $0xc,%esp
 8049598:	50                   	push   %eax
 8049599:	e8 e2 f2 ff ff       	call   8048880 <malloc@plt>
 804959e:	83 c4 10             	add    $0x10,%esp
 80495a1:	89 c2                	mov    %eax,%edx
 80495a3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80495a6:	89 10                	mov    %edx,(%eax)
 80495a8:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80495ab:	8b 50 04             	mov    0x4(%eax),%edx
 80495ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80495b1:	8b 00                	mov    (%eax),%eax
 80495b3:	83 ec 08             	sub    $0x8,%esp
 80495b6:	52                   	push   %edx
 80495b7:	50                   	push   %eax
 80495b8:	e8 a3 f2 ff ff       	call   8048860 <strcpy@plt>
 80495bd:	83 c4 10             	add    $0x10,%esp
 80495c0:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80495c3:	8b 50 0c             	mov    0xc(%eax),%edx
 80495c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80495c9:	89 50 04             	mov    %edx,0x4(%eax)
 80495cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80495cf:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 80495d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80495d9:	c9                   	leave  
 80495da:	c3                   	ret    

080495db <CompSt>:
 80495db:	55                   	push   %ebp
 80495dc:	89 e5                	mov    %esp,%ebp
 80495de:	83 ec 18             	sub    $0x18,%esp
 80495e1:	83 ec 0c             	sub    $0xc,%esp
 80495e4:	6a 0c                	push   $0xc
 80495e6:	e8 95 f2 ff ff       	call   8048880 <malloc@plt>
 80495eb:	83 c4 10             	add    $0x10,%esp
 80495ee:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80495f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80495f4:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 80495fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80495fe:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049605:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049608:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804960e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049611:	8b 40 18             	mov    0x18(%eax),%eax
 8049614:	83 ec 04             	sub    $0x4,%esp
 8049617:	ff 75 f4             	pushl  -0xc(%ebp)
 804961a:	6a 01                	push   $0x1
 804961c:	50                   	push   %eax
 804961d:	e8 84 02 00 00       	call   80498a6 <DefList>
 8049622:	83 c4 10             	add    $0x10,%esp
 8049625:	8b 45 08             	mov    0x8(%ebp),%eax
 8049628:	8b 40 1c             	mov    0x1c(%eax),%eax
 804962b:	83 ec 0c             	sub    $0xc,%esp
 804962e:	50                   	push   %eax
 804962f:	e8 06 00 00 00       	call   804963a <StmtList>
 8049634:	83 c4 10             	add    $0x10,%esp
 8049637:	90                   	nop
 8049638:	c9                   	leave  
 8049639:	c3                   	ret    

0804963a <StmtList>:
 804963a:	55                   	push   %ebp
 804963b:	89 e5                	mov    %esp,%ebp
 804963d:	83 ec 08             	sub    $0x8,%esp
 8049640:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049644:	74 31                	je     8049677 <StmtList+0x3d>
 8049646:	8b 45 08             	mov    0x8(%ebp),%eax
 8049649:	8b 40 10             	mov    0x10(%eax),%eax
 804964c:	83 f8 02             	cmp    $0x2,%eax
 804964f:	75 27                	jne    8049678 <StmtList+0x3e>
 8049651:	8b 45 08             	mov    0x8(%ebp),%eax
 8049654:	8b 40 14             	mov    0x14(%eax),%eax
 8049657:	83 ec 0c             	sub    $0xc,%esp
 804965a:	50                   	push   %eax
 804965b:	e8 1a 00 00 00       	call   804967a <Stmt>
 8049660:	83 c4 10             	add    $0x10,%esp
 8049663:	8b 45 08             	mov    0x8(%ebp),%eax
 8049666:	8b 40 18             	mov    0x18(%eax),%eax
 8049669:	83 ec 0c             	sub    $0xc,%esp
 804966c:	50                   	push   %eax
 804966d:	e8 c8 ff ff ff       	call   804963a <StmtList>
 8049672:	83 c4 10             	add    $0x10,%esp
 8049675:	eb 01                	jmp    8049678 <StmtList+0x3e>
 8049677:	90                   	nop
 8049678:	c9                   	leave  
 8049679:	c3                   	ret    

0804967a <Stmt>:
 804967a:	55                   	push   %ebp
 804967b:	89 e5                	mov    %esp,%ebp
 804967d:	83 ec 18             	sub    $0x18,%esp
 8049680:	8b 45 08             	mov    0x8(%ebp),%eax
 8049683:	8b 40 14             	mov    0x14(%eax),%eax
 8049686:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049689:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049690:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049693:	8b 40 04             	mov    0x4(%eax),%eax
 8049696:	83 e8 1b             	sub    $0x1b,%eax
 8049699:	83 f8 17             	cmp    $0x17,%eax
 804969c:	0f 87 e4 01 00 00    	ja     8049886 <Stmt+0x20c>
 80496a2:	8b 04 85 18 37 05 08 	mov    0x8053718(,%eax,4),%eax
 80496a9:	ff e0                	jmp    *%eax
 80496ab:	83 ec 0c             	sub    $0xc,%esp
 80496ae:	ff 75 f0             	pushl  -0x10(%ebp)
 80496b1:	e8 7d 04 00 00       	call   8049b33 <Exp>
 80496b6:	83 c4 10             	add    $0x10,%esp
 80496b9:	e9 e5 01 00 00       	jmp    80498a3 <Stmt+0x229>
 80496be:	83 ec 0c             	sub    $0xc,%esp
 80496c1:	ff 75 f0             	pushl  -0x10(%ebp)
 80496c4:	e8 12 ff ff ff       	call   80495db <CompSt>
 80496c9:	83 c4 10             	add    $0x10,%esp
 80496cc:	e9 d2 01 00 00       	jmp    80498a3 <Stmt+0x229>
 80496d1:	a1 54 81 05 08       	mov    0x8058154,%eax
 80496d6:	85 c0                	test   %eax,%eax
 80496d8:	75 40                	jne    804971a <Stmt+0xa0>
 80496da:	a1 20 81 05 08       	mov    0x8058120,%eax
 80496df:	83 c0 01             	add    $0x1,%eax
 80496e2:	a3 20 81 05 08       	mov    %eax,0x8058120
 80496e7:	8b 45 08             	mov    0x8(%ebp),%eax
 80496ea:	8b 00                	mov    (%eax),%eax
 80496ec:	68 bd 36 05 08       	push   $0x80536bd
 80496f1:	50                   	push   %eax
 80496f2:	6a 08                	push   $0x8
 80496f4:	68 d9 36 05 08       	push   $0x80536d9
 80496f9:	e8 c2 f0 ff ff       	call   80487c0 <printf@plt>
 80496fe:	83 c4 10             	add    $0x10,%esp
 8049701:	68 24 3b 05 08       	push   $0x8053b24
 8049706:	68 44 01 00 00       	push   $0x144
 804970b:	68 45 36 05 08       	push   $0x8053645
 8049710:	68 4f 36 05 08       	push   $0x805364f
 8049715:	e8 a6 f2 ff ff       	call   80489c0 <__assert_fail@plt>
 804971a:	8b 45 08             	mov    0x8(%ebp),%eax
 804971d:	8b 40 18             	mov    0x18(%eax),%eax
 8049720:	83 ec 0c             	sub    $0xc,%esp
 8049723:	50                   	push   %eax
 8049724:	e8 0a 04 00 00       	call   8049b33 <Exp>
 8049729:	83 c4 10             	add    $0x10,%esp
 804972c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804972f:	a1 54 81 05 08       	mov    0x8058154,%eax
 8049734:	8b 00                	mov    (%eax),%eax
 8049736:	83 ec 08             	sub    $0x8,%esp
 8049739:	ff 75 f4             	pushl  -0xc(%ebp)
 804973c:	50                   	push   %eax
 804973d:	e8 f1 97 00 00       	call   8052f33 <compareType>
 8049742:	83 c4 10             	add    $0x10,%esp
 8049745:	85 c0                	test   %eax,%eax
 8049747:	0f 85 52 01 00 00    	jne    804989f <Stmt+0x225>
 804974d:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049752:	83 c0 01             	add    $0x1,%eax
 8049755:	a3 20 81 05 08       	mov    %eax,0x8058120
 804975a:	8b 45 08             	mov    0x8(%ebp),%eax
 804975d:	8b 00                	mov    (%eax),%eax
 804975f:	68 bd 36 05 08       	push   $0x80536bd
 8049764:	50                   	push   %eax
 8049765:	6a 08                	push   $0x8
 8049767:	68 d9 36 05 08       	push   $0x80536d9
 804976c:	e8 4f f0 ff ff       	call   80487c0 <printf@plt>
 8049771:	83 c4 10             	add    $0x10,%esp
 8049774:	e9 26 01 00 00       	jmp    804989f <Stmt+0x225>
 8049779:	8b 45 08             	mov    0x8(%ebp),%eax
 804977c:	8b 40 1c             	mov    0x1c(%eax),%eax
 804977f:	83 ec 0c             	sub    $0xc,%esp
 8049782:	50                   	push   %eax
 8049783:	e8 ab 03 00 00       	call   8049b33 <Exp>
 8049788:	83 c4 10             	add    $0x10,%esp
 804978b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804978e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049792:	74 3d                	je     80497d1 <Stmt+0x157>
 8049794:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049797:	8b 00                	mov    (%eax),%eax
 8049799:	85 c0                	test   %eax,%eax
 804979b:	75 0a                	jne    80497a7 <Stmt+0x12d>
 804979d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80497a0:	8b 40 04             	mov    0x4(%eax),%eax
 80497a3:	85 c0                	test   %eax,%eax
 80497a5:	74 2a                	je     80497d1 <Stmt+0x157>
 80497a7:	a1 20 81 05 08       	mov    0x8058120,%eax
 80497ac:	83 c0 01             	add    $0x1,%eax
 80497af:	a3 20 81 05 08       	mov    %eax,0x8058120
 80497b4:	8b 45 08             	mov    0x8(%ebp),%eax
 80497b7:	8b 40 1c             	mov    0x1c(%eax),%eax
 80497ba:	8b 00                	mov    (%eax),%eax
 80497bc:	68 f8 36 05 08       	push   $0x80536f8
 80497c1:	50                   	push   %eax
 80497c2:	6a 07                	push   $0x7
 80497c4:	68 d9 36 05 08       	push   $0x80536d9
 80497c9:	e8 f2 ef ff ff       	call   80487c0 <printf@plt>
 80497ce:	83 c4 10             	add    $0x10,%esp
 80497d1:	8b 45 08             	mov    0x8(%ebp),%eax
 80497d4:	8b 40 24             	mov    0x24(%eax),%eax
 80497d7:	83 ec 0c             	sub    $0xc,%esp
 80497da:	50                   	push   %eax
 80497db:	e8 9a fe ff ff       	call   804967a <Stmt>
 80497e0:	83 c4 10             	add    $0x10,%esp
 80497e3:	8b 45 08             	mov    0x8(%ebp),%eax
 80497e6:	8b 40 2c             	mov    0x2c(%eax),%eax
 80497e9:	85 c0                	test   %eax,%eax
 80497eb:	0f 84 b1 00 00 00    	je     80498a2 <Stmt+0x228>
 80497f1:	8b 45 08             	mov    0x8(%ebp),%eax
 80497f4:	8b 40 2c             	mov    0x2c(%eax),%eax
 80497f7:	8b 40 04             	mov    0x4(%eax),%eax
 80497fa:	83 f8 2d             	cmp    $0x2d,%eax
 80497fd:	0f 85 9f 00 00 00    	jne    80498a2 <Stmt+0x228>
 8049803:	8b 45 08             	mov    0x8(%ebp),%eax
 8049806:	8b 40 2c             	mov    0x2c(%eax),%eax
 8049809:	83 ec 0c             	sub    $0xc,%esp
 804980c:	50                   	push   %eax
 804980d:	e8 68 fe ff ff       	call   804967a <Stmt>
 8049812:	83 c4 10             	add    $0x10,%esp
 8049815:	e9 88 00 00 00       	jmp    80498a2 <Stmt+0x228>
 804981a:	8b 45 08             	mov    0x8(%ebp),%eax
 804981d:	8b 40 1c             	mov    0x1c(%eax),%eax
 8049820:	83 ec 0c             	sub    $0xc,%esp
 8049823:	50                   	push   %eax
 8049824:	e8 0a 03 00 00       	call   8049b33 <Exp>
 8049829:	83 c4 10             	add    $0x10,%esp
 804982c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804982f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049833:	74 3d                	je     8049872 <Stmt+0x1f8>
 8049835:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049838:	8b 00                	mov    (%eax),%eax
 804983a:	85 c0                	test   %eax,%eax
 804983c:	75 0a                	jne    8049848 <Stmt+0x1ce>
 804983e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049841:	8b 40 04             	mov    0x4(%eax),%eax
 8049844:	85 c0                	test   %eax,%eax
 8049846:	74 2a                	je     8049872 <Stmt+0x1f8>
 8049848:	a1 20 81 05 08       	mov    0x8058120,%eax
 804984d:	83 c0 01             	add    $0x1,%eax
 8049850:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049855:	8b 45 08             	mov    0x8(%ebp),%eax
 8049858:	8b 40 1c             	mov    0x1c(%eax),%eax
 804985b:	8b 00                	mov    (%eax),%eax
 804985d:	68 f8 36 05 08       	push   $0x80536f8
 8049862:	50                   	push   %eax
 8049863:	6a 07                	push   $0x7
 8049865:	68 d9 36 05 08       	push   $0x80536d9
 804986a:	e8 51 ef ff ff       	call   80487c0 <printf@plt>
 804986f:	83 c4 10             	add    $0x10,%esp
 8049872:	8b 45 08             	mov    0x8(%ebp),%eax
 8049875:	8b 40 24             	mov    0x24(%eax),%eax
 8049878:	83 ec 0c             	sub    $0xc,%esp
 804987b:	50                   	push   %eax
 804987c:	e8 f9 fd ff ff       	call   804967a <Stmt>
 8049881:	83 c4 10             	add    $0x10,%esp
 8049884:	eb 1d                	jmp    80498a3 <Stmt+0x229>
 8049886:	68 24 3b 05 08       	push   $0x8053b24
 804988b:	68 5f 01 00 00       	push   $0x15f
 8049890:	68 45 36 05 08       	push   $0x8053645
 8049895:	68 4f 36 05 08       	push   $0x805364f
 804989a:	e8 21 f1 ff ff       	call   80489c0 <__assert_fail@plt>
 804989f:	90                   	nop
 80498a0:	eb 01                	jmp    80498a3 <Stmt+0x229>
 80498a2:	90                   	nop
 80498a3:	90                   	nop
 80498a4:	c9                   	leave  
 80498a5:	c3                   	ret    

080498a6 <DefList>:
 80498a6:	55                   	push   %ebp
 80498a7:	89 e5                	mov    %esp,%ebp
 80498a9:	83 ec 18             	sub    $0x18,%esp
 80498ac:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80498b0:	75 07                	jne    80498b9 <DefList+0x13>
 80498b2:	b8 00 00 00 00       	mov    $0x0,%eax
 80498b7:	eb 59                	jmp    8049912 <DefList+0x6c>
 80498b9:	8b 45 08             	mov    0x8(%ebp),%eax
 80498bc:	8b 40 14             	mov    0x14(%eax),%eax
 80498bf:	83 ec 04             	sub    $0x4,%esp
 80498c2:	ff 75 10             	pushl  0x10(%ebp)
 80498c5:	ff 75 0c             	pushl  0xc(%ebp)
 80498c8:	50                   	push   %eax
 80498c9:	e8 46 00 00 00       	call   8049914 <Def>
 80498ce:	83 c4 10             	add    $0x10,%esp
 80498d1:	8b 45 08             	mov    0x8(%ebp),%eax
 80498d4:	8b 40 10             	mov    0x10(%eax),%eax
 80498d7:	83 f8 02             	cmp    $0x2,%eax
 80498da:	75 33                	jne    804990f <DefList+0x69>
 80498dc:	8b 45 10             	mov    0x10(%ebp),%eax
 80498df:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80498e2:	eb 09                	jmp    80498ed <DefList+0x47>
 80498e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80498e7:	8b 40 08             	mov    0x8(%eax),%eax
 80498ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80498ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80498f0:	8b 40 08             	mov    0x8(%eax),%eax
 80498f3:	85 c0                	test   %eax,%eax
 80498f5:	75 ed                	jne    80498e4 <DefList+0x3e>
 80498f7:	8b 45 08             	mov    0x8(%ebp),%eax
 80498fa:	8b 40 18             	mov    0x18(%eax),%eax
 80498fd:	83 ec 04             	sub    $0x4,%esp
 8049900:	ff 75 10             	pushl  0x10(%ebp)
 8049903:	ff 75 0c             	pushl  0xc(%ebp)
 8049906:	50                   	push   %eax
 8049907:	e8 9a ff ff ff       	call   80498a6 <DefList>
 804990c:	83 c4 10             	add    $0x10,%esp
 804990f:	8b 45 10             	mov    0x10(%ebp),%eax
 8049912:	c9                   	leave  
 8049913:	c3                   	ret    

08049914 <Def>:
 8049914:	55                   	push   %ebp
 8049915:	89 e5                	mov    %esp,%ebp
 8049917:	83 ec 18             	sub    $0x18,%esp
 804991a:	8b 45 08             	mov    0x8(%ebp),%eax
 804991d:	8b 40 14             	mov    0x14(%eax),%eax
 8049920:	83 ec 0c             	sub    $0xc,%esp
 8049923:	50                   	push   %eax
 8049924:	e8 aa f7 ff ff       	call   80490d3 <Specifier>
 8049929:	83 c4 10             	add    $0x10,%esp
 804992c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804992f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049932:	8b 40 18             	mov    0x18(%eax),%eax
 8049935:	ff 75 10             	pushl  0x10(%ebp)
 8049938:	ff 75 0c             	pushl  0xc(%ebp)
 804993b:	ff 75 f4             	pushl  -0xc(%ebp)
 804993e:	50                   	push   %eax
 804993f:	e8 05 00 00 00       	call   8049949 <DecList>
 8049944:	83 c4 10             	add    $0x10,%esp
 8049947:	c9                   	leave  
 8049948:	c3                   	ret    

08049949 <DecList>:
 8049949:	55                   	push   %ebp
 804994a:	89 e5                	mov    %esp,%ebp
 804994c:	83 ec 18             	sub    $0x18,%esp
 804994f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049952:	8b 40 14             	mov    0x14(%eax),%eax
 8049955:	ff 75 14             	pushl  0x14(%ebp)
 8049958:	ff 75 10             	pushl  0x10(%ebp)
 804995b:	ff 75 0c             	pushl  0xc(%ebp)
 804995e:	50                   	push   %eax
 804995f:	e8 2e 00 00 00       	call   8049992 <Dec>
 8049964:	83 c4 10             	add    $0x10,%esp
 8049967:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804996a:	8b 45 08             	mov    0x8(%ebp),%eax
 804996d:	8b 40 10             	mov    0x10(%eax),%eax
 8049970:	83 f8 03             	cmp    $0x3,%eax
 8049973:	75 18                	jne    804998d <DecList+0x44>
 8049975:	8b 45 08             	mov    0x8(%ebp),%eax
 8049978:	8b 40 1c             	mov    0x1c(%eax),%eax
 804997b:	ff 75 14             	pushl  0x14(%ebp)
 804997e:	ff 75 10             	pushl  0x10(%ebp)
 8049981:	ff 75 0c             	pushl  0xc(%ebp)
 8049984:	50                   	push   %eax
 8049985:	e8 bf ff ff ff       	call   8049949 <DecList>
 804998a:	83 c4 10             	add    $0x10,%esp
 804998d:	8b 45 14             	mov    0x14(%ebp),%eax
 8049990:	c9                   	leave  
 8049991:	c3                   	ret    

08049992 <Dec>:
 8049992:	55                   	push   %ebp
 8049993:	89 e5                	mov    %esp,%ebp
 8049995:	83 ec 28             	sub    $0x28,%esp
 8049998:	8b 45 08             	mov    0x8(%ebp),%eax
 804999b:	8b 40 14             	mov    0x14(%eax),%eax
 804999e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80499a1:	83 ec 08             	sub    $0x8,%esp
 80499a4:	ff 75 e4             	pushl  -0x1c(%ebp)
 80499a7:	ff 75 0c             	pushl  0xc(%ebp)
 80499aa:	e8 ac f9 ff ff       	call   804935b <VarDec>
 80499af:	83 c4 10             	add    $0x10,%esp
 80499b2:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80499b5:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
 80499b9:	75 42                	jne    80499fd <Dec+0x6b>
 80499bb:	83 ec 0c             	sub    $0xc,%esp
 80499be:	ff 75 e8             	pushl  -0x18(%ebp)
 80499c1:	e8 78 92 00 00       	call   8052c3e <insertTable>
 80499c6:	83 c4 10             	add    $0x10,%esp
 80499c9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80499cc:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 80499d0:	75 2b                	jne    80499fd <Dec+0x6b>
 80499d2:	a1 20 81 05 08       	mov    0x8058120,%eax
 80499d7:	83 c0 01             	add    $0x1,%eax
 80499da:	a3 20 81 05 08       	mov    %eax,0x8058120
 80499df:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80499e2:	8b 50 04             	mov    0x4(%eax),%edx
 80499e5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80499e8:	8b 40 08             	mov    0x8(%eax),%eax
 80499eb:	83 ec 04             	sub    $0x4,%esp
 80499ee:	52                   	push   %edx
 80499ef:	50                   	push   %eax
 80499f0:	68 08 36 05 08       	push   $0x8053608
 80499f5:	e8 c6 ed ff ff       	call   80487c0 <printf@plt>
 80499fa:	83 c4 10             	add    $0x10,%esp
 80499fd:	83 ec 0c             	sub    $0xc,%esp
 8049a00:	6a 0c                	push   $0xc
 8049a02:	e8 79 ee ff ff       	call   8048880 <malloc@plt>
 8049a07:	83 c4 10             	add    $0x10,%esp
 8049a0a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049a0d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049a10:	8b 50 04             	mov    0x4(%eax),%edx
 8049a13:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049a16:	89 10                	mov    %edx,(%eax)
 8049a18:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049a1b:	8b 50 0c             	mov    0xc(%eax),%edx
 8049a1e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049a21:	89 50 04             	mov    %edx,0x4(%eax)
 8049a24:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049a27:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8049a2e:	8b 45 14             	mov    0x14(%ebp),%eax
 8049a31:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8049a34:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 8049a38:	75 6b                	jne    8049aa5 <Dec+0x113>
 8049a3a:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 8049a3e:	74 65                	je     8049aa5 <Dec+0x113>
 8049a40:	eb 50                	jmp    8049a92 <Dec+0x100>
 8049a42:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049a45:	8b 50 04             	mov    0x4(%eax),%edx
 8049a48:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049a4b:	8b 00                	mov    (%eax),%eax
 8049a4d:	83 ec 08             	sub    $0x8,%esp
 8049a50:	52                   	push   %edx
 8049a51:	50                   	push   %eax
 8049a52:	e8 59 ed ff ff       	call   80487b0 <strcmp@plt>
 8049a57:	83 c4 10             	add    $0x10,%esp
 8049a5a:	85 c0                	test   %eax,%eax
 8049a5c:	75 2b                	jne    8049a89 <Dec+0xf7>
 8049a5e:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049a63:	83 c0 01             	add    $0x1,%eax
 8049a66:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049a6b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049a6e:	8b 50 04             	mov    0x4(%eax),%edx
 8049a71:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049a74:	8b 40 08             	mov    0x8(%eax),%eax
 8049a77:	83 ec 04             	sub    $0x4,%esp
 8049a7a:	52                   	push   %edx
 8049a7b:	50                   	push   %eax
 8049a7c:	68 78 37 05 08       	push   $0x8053778
 8049a81:	e8 3a ed ff ff       	call   80487c0 <printf@plt>
 8049a86:	83 c4 10             	add    $0x10,%esp
 8049a89:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049a8c:	8b 40 08             	mov    0x8(%eax),%eax
 8049a8f:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8049a92:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049a95:	8b 40 08             	mov    0x8(%eax),%eax
 8049a98:	85 c0                	test   %eax,%eax
 8049a9a:	75 a6                	jne    8049a42 <Dec+0xb0>
 8049a9c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049a9f:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049aa2:	89 50 08             	mov    %edx,0x8(%eax)
 8049aa5:	8b 45 08             	mov    0x8(%ebp),%eax
 8049aa8:	8b 40 10             	mov    0x10(%eax),%eax
 8049aab:	83 f8 03             	cmp    $0x3,%eax
 8049aae:	75 7e                	jne    8049b2e <Dec+0x19c>
 8049ab0:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ab3:	8b 40 1c             	mov    0x1c(%eax),%eax
 8049ab6:	83 ec 0c             	sub    $0xc,%esp
 8049ab9:	50                   	push   %eax
 8049aba:	e8 74 00 00 00       	call   8049b33 <Exp>
 8049abf:	83 c4 10             	add    $0x10,%esp
 8049ac2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049ac5:	83 ec 08             	sub    $0x8,%esp
 8049ac8:	ff 75 f4             	pushl  -0xc(%ebp)
 8049acb:	ff 75 0c             	pushl  0xc(%ebp)
 8049ace:	e8 60 94 00 00       	call   8052f33 <compareType>
 8049ad3:	83 c4 10             	add    $0x10,%esp
 8049ad6:	85 c0                	test   %eax,%eax
 8049ad8:	75 27                	jne    8049b01 <Dec+0x16f>
 8049ada:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049adf:	83 c0 01             	add    $0x1,%eax
 8049ae2:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049ae7:	8b 45 08             	mov    0x8(%ebp),%eax
 8049aea:	8b 00                	mov    (%eax),%eax
 8049aec:	68 ac 37 05 08       	push   $0x80537ac
 8049af1:	50                   	push   %eax
 8049af2:	6a 05                	push   $0x5
 8049af4:	68 d9 36 05 08       	push   $0x80536d9
 8049af9:	e8 c2 ec ff ff       	call   80487c0 <printf@plt>
 8049afe:	83 c4 10             	add    $0x10,%esp
 8049b01:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 8049b05:	75 27                	jne    8049b2e <Dec+0x19c>
 8049b07:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049b0c:	83 c0 01             	add    $0x1,%eax
 8049b0f:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049b14:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b17:	8b 00                	mov    (%eax),%eax
 8049b19:	68 cc 37 05 08       	push   $0x80537cc
 8049b1e:	50                   	push   %eax
 8049b1f:	6a 0f                	push   $0xf
 8049b21:	68 d9 36 05 08       	push   $0x80536d9
 8049b26:	e8 95 ec ff ff       	call   80487c0 <printf@plt>
 8049b2b:	83 c4 10             	add    $0x10,%esp
 8049b2e:	8b 45 14             	mov    0x14(%ebp),%eax
 8049b31:	c9                   	leave  
 8049b32:	c3                   	ret    

08049b33 <Exp>:
 8049b33:	55                   	push   %ebp
 8049b34:	89 e5                	mov    %esp,%ebp
 8049b36:	83 ec 38             	sub    $0x38,%esp
 8049b39:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049b3d:	75 0a                	jne    8049b49 <Exp+0x16>
 8049b3f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b44:	e9 44 06 00 00       	jmp    804a18d <Exp+0x65a>
 8049b49:	83 ec 0c             	sub    $0xc,%esp
 8049b4c:	ff 75 08             	pushl  0x8(%ebp)
 8049b4f:	e8 e1 f1 ff ff       	call   8048d35 <printTree>
 8049b54:	83 c4 10             	add    $0x10,%esp
 8049b57:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b5a:	8b 40 14             	mov    0x14(%eax),%eax
 8049b5d:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8049b60:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b63:	8b 40 18             	mov    0x18(%eax),%eax
 8049b66:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8049b69:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b6c:	8b 40 1c             	mov    0x1c(%eax),%eax
 8049b6f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049b72:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049b79:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8049b80:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049b83:	8b 40 04             	mov    0x4(%eax),%eax
 8049b86:	83 f8 32             	cmp    $0x32,%eax
 8049b89:	0f 87 d0 05 00 00    	ja     804a15f <Exp+0x62c>
 8049b8f:	8b 04 85 10 3a 05 08 	mov    0x8053a10(,%eax,4),%eax
 8049b96:	ff e0                	jmp    *%eax
 8049b98:	83 ec 0c             	sub    $0xc,%esp
 8049b9b:	ff 75 dc             	pushl  -0x24(%ebp)
 8049b9e:	e8 90 ff ff ff       	call   8049b33 <Exp>
 8049ba3:	83 c4 10             	add    $0x10,%esp
 8049ba6:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049ba9:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049bac:	8b 40 04             	mov    0x4(%eax),%eax
 8049baf:	83 f8 0a             	cmp    $0xa,%eax
 8049bb2:	0f 85 bc 00 00 00    	jne    8049c74 <Exp+0x141>
 8049bb8:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049bbc:	74 45                	je     8049c03 <Exp+0xd0>
 8049bbe:	83 ec 0c             	sub    $0xc,%esp
 8049bc1:	ff 75 dc             	pushl  -0x24(%ebp)
 8049bc4:	e8 c6 05 00 00       	call   804a18f <isLeftVar>
 8049bc9:	83 c4 10             	add    $0x10,%esp
 8049bcc:	85 c0                	test   %eax,%eax
 8049bce:	75 33                	jne    8049c03 <Exp+0xd0>
 8049bd0:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049bd5:	83 c0 01             	add    $0x1,%eax
 8049bd8:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049bdd:	8b 45 08             	mov    0x8(%ebp),%eax
 8049be0:	8b 00                	mov    (%eax),%eax
 8049be2:	68 f8 37 05 08       	push   $0x80537f8
 8049be7:	50                   	push   %eax
 8049be8:	6a 06                	push   $0x6
 8049bea:	68 d9 36 05 08       	push   $0x80536d9
 8049bef:	e8 cc eb ff ff       	call   80487c0 <printf@plt>
 8049bf4:	83 c4 10             	add    $0x10,%esp
 8049bf7:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049bfe:	e9 12 03 00 00       	jmp    8049f15 <Exp+0x3e2>
 8049c03:	83 ec 0c             	sub    $0xc,%esp
 8049c06:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049c09:	e8 25 ff ff ff       	call   8049b33 <Exp>
 8049c0e:	83 c4 10             	add    $0x10,%esp
 8049c11:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049c14:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049c18:	0f 84 68 05 00 00    	je     804a186 <Exp+0x653>
 8049c1e:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049c22:	0f 84 5e 05 00 00    	je     804a186 <Exp+0x653>
 8049c28:	83 ec 08             	sub    $0x8,%esp
 8049c2b:	ff 75 e8             	pushl  -0x18(%ebp)
 8049c2e:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049c31:	e8 fd 92 00 00       	call   8052f33 <compareType>
 8049c36:	83 c4 10             	add    $0x10,%esp
 8049c39:	85 c0                	test   %eax,%eax
 8049c3b:	0f 85 45 05 00 00    	jne    804a186 <Exp+0x653>
 8049c41:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049c46:	83 c0 01             	add    $0x1,%eax
 8049c49:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049c4e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c51:	8b 00                	mov    (%eax),%eax
 8049c53:	68 ac 37 05 08       	push   $0x80537ac
 8049c58:	50                   	push   %eax
 8049c59:	6a 05                	push   $0x5
 8049c5b:	68 d9 36 05 08       	push   $0x80536d9
 8049c60:	e8 5b eb ff ff       	call   80487c0 <printf@plt>
 8049c65:	83 c4 10             	add    $0x10,%esp
 8049c68:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049c6f:	e9 12 05 00 00       	jmp    804a186 <Exp+0x653>
 8049c74:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049c77:	8b 40 04             	mov    0x4(%eax),%eax
 8049c7a:	83 f8 10             	cmp    $0x10,%eax
 8049c7d:	74 0b                	je     8049c8a <Exp+0x157>
 8049c7f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049c82:	8b 40 04             	mov    0x4(%eax),%eax
 8049c85:	83 f8 11             	cmp    $0x11,%eax
 8049c88:	75 6a                	jne    8049cf4 <Exp+0x1c1>
 8049c8a:	83 ec 0c             	sub    $0xc,%esp
 8049c8d:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049c90:	e8 9e fe ff ff       	call   8049b33 <Exp>
 8049c95:	83 c4 10             	add    $0x10,%esp
 8049c98:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049c9b:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049c9f:	74 09                	je     8049caa <Exp+0x177>
 8049ca1:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049ca4:	8b 00                	mov    (%eax),%eax
 8049ca6:	85 c0                	test   %eax,%eax
 8049ca8:	75 17                	jne    8049cc1 <Exp+0x18e>
 8049caa:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049cae:	0f 84 5a 02 00 00    	je     8049f0e <Exp+0x3db>
 8049cb4:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049cb7:	8b 00                	mov    (%eax),%eax
 8049cb9:	85 c0                	test   %eax,%eax
 8049cbb:	0f 84 4d 02 00 00    	je     8049f0e <Exp+0x3db>
 8049cc1:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049cc6:	83 c0 01             	add    $0x1,%eax
 8049cc9:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049cce:	8b 45 08             	mov    0x8(%ebp),%eax
 8049cd1:	8b 00                	mov    (%eax),%eax
 8049cd3:	68 30 38 05 08       	push   $0x8053830
 8049cd8:	50                   	push   %eax
 8049cd9:	6a 07                	push   $0x7
 8049cdb:	68 d9 36 05 08       	push   $0x80536d9
 8049ce0:	e8 db ea ff ff       	call   80487c0 <printf@plt>
 8049ce5:	83 c4 10             	add    $0x10,%esp
 8049ce8:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049cef:	e9 1a 02 00 00       	jmp    8049f0e <Exp+0x3db>
 8049cf4:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049cf7:	8b 40 04             	mov    0x4(%eax),%eax
 8049cfa:	83 f8 0c             	cmp    $0xc,%eax
 8049cfd:	74 2c                	je     8049d2b <Exp+0x1f8>
 8049cff:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d02:	8b 40 04             	mov    0x4(%eax),%eax
 8049d05:	83 f8 0d             	cmp    $0xd,%eax
 8049d08:	74 21                	je     8049d2b <Exp+0x1f8>
 8049d0a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d0d:	8b 40 04             	mov    0x4(%eax),%eax
 8049d10:	83 f8 0e             	cmp    $0xe,%eax
 8049d13:	74 16                	je     8049d2b <Exp+0x1f8>
 8049d15:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d18:	8b 40 04             	mov    0x4(%eax),%eax
 8049d1b:	83 f8 0f             	cmp    $0xf,%eax
 8049d1e:	74 0b                	je     8049d2b <Exp+0x1f8>
 8049d20:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d23:	8b 40 04             	mov    0x4(%eax),%eax
 8049d26:	83 f8 0b             	cmp    $0xb,%eax
 8049d29:	75 70                	jne    8049d9b <Exp+0x268>
 8049d2b:	83 ec 0c             	sub    $0xc,%esp
 8049d2e:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049d31:	e8 fd fd ff ff       	call   8049b33 <Exp>
 8049d36:	83 c4 10             	add    $0x10,%esp
 8049d39:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049d3c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049d40:	0f 84 ce 01 00 00    	je     8049f14 <Exp+0x3e1>
 8049d46:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049d49:	8b 00                	mov    (%eax),%eax
 8049d4b:	85 c0                	test   %eax,%eax
 8049d4d:	75 19                	jne    8049d68 <Exp+0x235>
 8049d4f:	83 ec 08             	sub    $0x8,%esp
 8049d52:	ff 75 e8             	pushl  -0x18(%ebp)
 8049d55:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049d58:	e8 d6 91 00 00       	call   8052f33 <compareType>
 8049d5d:	83 c4 10             	add    $0x10,%esp
 8049d60:	85 c0                	test   %eax,%eax
 8049d62:	0f 85 ac 01 00 00    	jne    8049f14 <Exp+0x3e1>
 8049d68:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049d6d:	83 c0 01             	add    $0x1,%eax
 8049d70:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049d75:	8b 45 08             	mov    0x8(%ebp),%eax
 8049d78:	8b 00                	mov    (%eax),%eax
 8049d7a:	68 30 38 05 08       	push   $0x8053830
 8049d7f:	50                   	push   %eax
 8049d80:	6a 07                	push   $0x7
 8049d82:	68 d9 36 05 08       	push   $0x80536d9
 8049d87:	e8 34 ea ff ff       	call   80487c0 <printf@plt>
 8049d8c:	83 c4 10             	add    $0x10,%esp
 8049d8f:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049d96:	e9 79 01 00 00       	jmp    8049f14 <Exp+0x3e1>
 8049d9b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d9e:	8b 40 04             	mov    0x4(%eax),%eax
 8049da1:	83 f8 16             	cmp    $0x16,%eax
 8049da4:	0f 85 a0 00 00 00    	jne    8049e4a <Exp+0x317>
 8049daa:	83 ec 0c             	sub    $0xc,%esp
 8049dad:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049db0:	e8 7e fd ff ff       	call   8049b33 <Exp>
 8049db5:	83 c4 10             	add    $0x10,%esp
 8049db8:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049dbb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049dbe:	8b 00                	mov    (%eax),%eax
 8049dc0:	83 f8 01             	cmp    $0x1,%eax
 8049dc3:	74 2f                	je     8049df4 <Exp+0x2c1>
 8049dc5:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049dca:	83 c0 01             	add    $0x1,%eax
 8049dcd:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049dd2:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049dd5:	8b 00                	mov    (%eax),%eax
 8049dd7:	83 ec 08             	sub    $0x8,%esp
 8049dda:	50                   	push   %eax
 8049ddb:	68 50 38 05 08       	push   $0x8053850
 8049de0:	e8 db e9 ff ff       	call   80487c0 <printf@plt>
 8049de5:	83 c4 10             	add    $0x10,%esp
 8049de8:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049def:	e9 92 03 00 00       	jmp    804a186 <Exp+0x653>
 8049df4:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049df8:	74 42                	je     8049e3c <Exp+0x309>
 8049dfa:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049dfd:	8b 00                	mov    (%eax),%eax
 8049dff:	85 c0                	test   %eax,%eax
 8049e01:	75 0a                	jne    8049e0d <Exp+0x2da>
 8049e03:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049e06:	8b 40 04             	mov    0x4(%eax),%eax
 8049e09:	85 c0                	test   %eax,%eax
 8049e0b:	74 2f                	je     8049e3c <Exp+0x309>
 8049e0d:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049e12:	83 c0 01             	add    $0x1,%eax
 8049e15:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049e1a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049e1d:	8b 00                	mov    (%eax),%eax
 8049e1f:	83 ec 08             	sub    $0x8,%esp
 8049e22:	50                   	push   %eax
 8049e23:	68 88 38 05 08       	push   $0x8053888
 8049e28:	e8 93 e9 ff ff       	call   80487c0 <printf@plt>
 8049e2d:	83 c4 10             	add    $0x10,%esp
 8049e30:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049e37:	e9 d9 00 00 00       	jmp    8049f15 <Exp+0x3e2>
 8049e3c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049e3f:	8b 40 04             	mov    0x4(%eax),%eax
 8049e42:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049e45:	e9 3c 03 00 00       	jmp    804a186 <Exp+0x653>
 8049e4a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049e4d:	8b 40 04             	mov    0x4(%eax),%eax
 8049e50:	83 f8 12             	cmp    $0x12,%eax
 8049e53:	0f 85 9c 00 00 00    	jne    8049ef5 <Exp+0x3c2>
 8049e59:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049e5d:	74 32                	je     8049e91 <Exp+0x35e>
 8049e5f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049e62:	8b 00                	mov    (%eax),%eax
 8049e64:	83 f8 02             	cmp    $0x2,%eax
 8049e67:	74 28                	je     8049e91 <Exp+0x35e>
 8049e69:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049e6e:	83 c0 01             	add    $0x1,%eax
 8049e71:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049e76:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049e79:	8b 00                	mov    (%eax),%eax
 8049e7b:	83 ec 08             	sub    $0x8,%esp
 8049e7e:	50                   	push   %eax
 8049e7f:	68 c4 38 05 08       	push   $0x80538c4
 8049e84:	e8 37 e9 ff ff       	call   80487c0 <printf@plt>
 8049e89:	83 c4 10             	add    $0x10,%esp
 8049e8c:	e9 84 00 00 00       	jmp    8049f15 <Exp+0x3e2>
 8049e91:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049e94:	8b 40 08             	mov    0x8(%eax),%eax
 8049e97:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049e9a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 //8049e9d:	8b 40 04             	mov    0x4(%eax),%eax
 8049ea0:	83 ec 08             	sub    $0x8,%esp
 8049ea3:	ff 75 ec             	pushl  -0x14(%ebp)
 8049ea6:	50                   	push   %eax
 8049ea7:	e8 49 90 00 00       	call   8052ef5 <structureField>
 8049eac:	83 c4 10             	add    $0x10,%esp
 8049eaf:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049eb2:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049eb6:	75 32                	jne    8049eea <Exp+0x3b7>
 8049eb8:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049ebd:	83 c0 01             	add    $0x1,%eax
 8049ec0:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049ec5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049ec8:	8b 00                	mov    (%eax),%eax
 8049eca:	83 ec 04             	sub    $0x4,%esp
 8049ecd:	ff 75 ec             	pushl  -0x14(%ebp)
 8049ed0:	50                   	push   %eax
 8049ed1:	68 f4 38 05 08       	push   $0x80538f4
 8049ed6:	e8 e5 e8 ff ff       	call   80487c0 <printf@plt>
 8049edb:	83 c4 10             	add    $0x10,%esp
 8049ede:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049ee5:	e9 9c 02 00 00       	jmp    804a186 <Exp+0x653>
 8049eea:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049eed:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049ef0:	e9 91 02 00 00       	jmp    804a186 <Exp+0x653>
 8049ef5:	68 2c 3b 05 08       	push   $0x8053b2c
 8049efa:	68 22 02 00 00       	push   $0x222
 8049eff:	68 45 36 05 08       	push   $0x8053645
 8049f04:	68 4f 36 05 08       	push   $0x805364f
 8049f09:	e8 b2 ea ff ff       	call   80489c0 <__assert_fail@plt>
 8049f0e:	90                   	nop
 8049f0f:	e9 72 02 00 00       	jmp    804a186 <Exp+0x653>
 8049f14:	90                   	nop
 8049f15:	e9 6c 02 00 00       	jmp    804a186 <Exp+0x653>
 8049f1a:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 8049f1e:	75 79                	jne    8049f99 <Exp+0x466>
 8049f20:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049f23:	8b 40 08             	mov    0x8(%eax),%eax
 8049f26:	83 ec 0c             	sub    $0xc,%esp
 8049f29:	50                   	push   %eax
 8049f2a:	e8 97 8c 00 00       	call   8052bc6 <searchTable>
 8049f2f:	83 c4 10             	add    $0x10,%esp
 8049f32:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049f35:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049f39:	75 36                	jne    8049f71 <Exp+0x43e>
 8049f3b:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049f40:	83 c0 01             	add    $0x1,%eax
 8049f43:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049f48:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049f4b:	8b 50 08             	mov    0x8(%eax),%edx
 8049f4e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f51:	8b 00                	mov    (%eax),%eax
 8049f53:	83 ec 04             	sub    $0x4,%esp
 8049f56:	52                   	push   %edx
 8049f57:	50                   	push   %eax
 8049f58:	68 28 39 05 08       	push   $0x8053928
 8049f5d:	e8 5e e8 ff ff       	call   80487c0 <printf@plt>
 8049f62:	83 c4 10             	add    $0x10,%esp
 8049f65:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049f6c:	e9 18 02 00 00       	jmp    804a189 <Exp+0x656>
 8049f71:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049f74:	8b 00                	mov    (%eax),%eax
 8049f76:	83 f8 01             	cmp    $0x1,%eax
 8049f79:	75 10                	jne    8049f8b <Exp+0x458>
 8049f7b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049f7e:	8b 40 0c             	mov    0xc(%eax),%eax
 8049f81:	8b 00                	mov    (%eax),%eax
 8049f83:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049f86:	e9 fe 01 00 00       	jmp    804a189 <Exp+0x656>
 8049f8b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049f8e:	8b 40 0c             	mov    0xc(%eax),%eax
 8049f91:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049f94:	e9 f0 01 00 00       	jmp    804a189 <Exp+0x656>
 8049f99:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049f9c:	8b 40 04             	mov    0x4(%eax),%eax
 8049f9f:	83 f8 14             	cmp    $0x14,%eax
 8049fa2:	0f 85 e1 01 00 00    	jne    804a189 <Exp+0x656>
 8049fa8:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049fab:	8b 40 08             	mov    0x8(%eax),%eax
 8049fae:	83 ec 0c             	sub    $0xc,%esp
 8049fb1:	50                   	push   %eax
 8049fb2:	e8 0f 8c 00 00       	call   8052bc6 <searchTable>
 8049fb7:	83 c4 10             	add    $0x10,%esp
 8049fba:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049fbd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049fc1:	75 36                	jne    8049ff9 <Exp+0x4c6>
 8049fc3:	a1 20 81 05 08       	mov    0x8058120,%eax
 8049fc8:	83 c0 01             	add    $0x1,%eax
 8049fcb:	a3 20 81 05 08       	mov    %eax,0x8058120
 8049fd0:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049fd3:	8b 50 08             	mov    0x8(%eax),%edx
 8049fd6:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fd9:	8b 00                	mov    (%eax),%eax
 8049fdb:	83 ec 04             	sub    $0x4,%esp
 8049fde:	52                   	push   %edx
 8049fdf:	50                   	push   %eax
 8049fe0:	68 5c 39 05 08       	push   $0x805395c
 8049fe5:	e8 d6 e7 ff ff       	call   80487c0 <printf@plt>
 8049fea:	83 c4 10             	add    $0x10,%esp
 8049fed:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049ff4:	e9 90 01 00 00       	jmp    804a189 <Exp+0x656>
 8049ff9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049ffc:	8b 00                	mov    (%eax),%eax
 8049ffe:	83 f8 01             	cmp    $0x1,%eax
 804a001:	74 36                	je     804a039 <Exp+0x506>
 804a003:	a1 20 81 05 08       	mov    0x8058120,%eax
 804a008:	83 c0 01             	add    $0x1,%eax
 804a00b:	a3 20 81 05 08       	mov    %eax,0x8058120
 804a010:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a013:	8b 50 04             	mov    0x4(%eax),%edx
 804a016:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a019:	8b 00                	mov    (%eax),%eax
 804a01b:	83 ec 04             	sub    $0x4,%esp
 804a01e:	52                   	push   %edx
 804a01f:	50                   	push   %eax
 804a020:	68 90 39 05 08       	push   $0x8053990
 804a025:	e8 96 e7 ff ff       	call   80487c0 <printf@plt>
 804a02a:	83 c4 10             	add    $0x10,%esp
 804a02d:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804a034:	e9 50 01 00 00       	jmp    804a189 <Exp+0x656>
 804a039:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804a040:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a043:	8b 40 0c             	mov    0xc(%eax),%eax
 804a046:	8b 00                	mov    (%eax),%eax
 804a048:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a04b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a04e:	8b 40 04             	mov    0x4(%eax),%eax
 804a051:	83 f8 33             	cmp    $0x33,%eax
 804a054:	75 15                	jne    804a06b <Exp+0x538>
 804a056:	8b 45 08             	mov    0x8(%ebp),%eax
 804a059:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a05c:	83 ec 0c             	sub    $0xc,%esp
 804a05f:	50                   	push   %eax
 804a060:	e8 23 02 00 00       	call   804a288 <Args>
 804a065:	83 c4 10             	add    $0x10,%esp
 804a068:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804a06b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a06e:	8b 40 0c             	mov    0xc(%eax),%eax
 804a071:	8b 40 04             	mov    0x4(%eax),%eax
 804a074:	83 ec 08             	sub    $0x8,%esp
 804a077:	50                   	push   %eax
 804a078:	ff 75 d8             	pushl  -0x28(%ebp)
 804a07b:	e8 bf 8f 00 00       	call   805303f <compareArgs>
 804a080:	83 c4 10             	add    $0x10,%esp
 804a083:	85 c0                	test   %eax,%eax
 804a085:	0f 85 fe 00 00 00    	jne    804a189 <Exp+0x656>
 804a08b:	a1 20 81 05 08       	mov    0x8058120,%eax
 804a090:	83 c0 01             	add    $0x1,%eax
 804a093:	a3 20 81 05 08       	mov    %eax,0x8058120
 804a098:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a09b:	8b 00                	mov    (%eax),%eax
 804a09d:	83 ec 08             	sub    $0x8,%esp
 804a0a0:	50                   	push   %eax
 804a0a1:	68 c4 39 05 08       	push   $0x80539c4
 804a0a6:	e8 15 e7 ff ff       	call   80487c0 <printf@plt>
 804a0ab:	83 c4 10             	add    $0x10,%esp
 804a0ae:	83 ec 0c             	sub    $0xc,%esp
 804a0b1:	ff 75 f4             	pushl  -0xc(%ebp)
 804a0b4:	e8 f5 91 00 00       	call   80532ae <printFuncType>
 804a0b9:	83 c4 10             	add    $0x10,%esp
 804a0bc:	83 ec 0c             	sub    $0xc,%esp
 804a0bf:	68 e8 39 05 08       	push   $0x80539e8
 804a0c4:	e8 f7 e6 ff ff       	call   80487c0 <printf@plt>
 804a0c9:	83 c4 10             	add    $0x10,%esp
 804a0cc:	83 ec 0c             	sub    $0xc,%esp
 804a0cf:	ff 75 d8             	pushl  -0x28(%ebp)
 804a0d2:	e8 5b 90 00 00       	call   8053132 <printFieldList>
 804a0d7:	83 c4 10             	add    $0x10,%esp
 804a0da:	83 ec 0c             	sub    $0xc,%esp
 804a0dd:	68 0c 3a 05 08       	push   $0x8053a0c
 804a0e2:	e8 a9 e7 ff ff       	call   8048890 <puts@plt>
 804a0e7:	83 c4 10             	add    $0x10,%esp
 804a0ea:	e9 9a 00 00 00       	jmp    804a189 <Exp+0x656>
 804a0ef:	83 ec 0c             	sub    $0xc,%esp
 804a0f2:	6a 0c                	push   $0xc
 804a0f4:	e8 87 e7 ff ff       	call   8048880 <malloc@plt>
 804a0f9:	83 c4 10             	add    $0x10,%esp
 804a0fc:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a0ff:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a102:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a108:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a10b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a112:	eb 76                	jmp    804a18a <Exp+0x657>
 804a114:	83 ec 0c             	sub    $0xc,%esp
 804a117:	6a 0c                	push   $0xc
 804a119:	e8 62 e7 ff ff       	call   8048880 <malloc@plt>
 804a11e:	83 c4 10             	add    $0x10,%esp
 804a121:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a124:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a127:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a12d:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a130:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 804a137:	eb 51                	jmp    804a18a <Exp+0x657>
 804a139:	83 ec 0c             	sub    $0xc,%esp
 804a13c:	ff 75 e0             	pushl  -0x20(%ebp)
 804a13f:	e8 ef f9 ff ff       	call   8049b33 <Exp>
 804a144:	83 c4 10             	add    $0x10,%esp
 804a147:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a14a:	eb 3e                	jmp    804a18a <Exp+0x657>
 804a14c:	83 ec 0c             	sub    $0xc,%esp
 804a14f:	ff 75 e0             	pushl  -0x20(%ebp)
 804a152:	e8 dc f9 ff ff       	call   8049b33 <Exp>
 804a157:	83 c4 10             	add    $0x10,%esp
 804a15a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a15d:	eb 2b                	jmp    804a18a <Exp+0x657>
 804a15f:	83 ec 0c             	sub    $0xc,%esp
 804a162:	ff 75 08             	pushl  0x8(%ebp)
 804a165:	e8 cb eb ff ff       	call   8048d35 <printTree>
 804a16a:	83 c4 10             	add    $0x10,%esp
 804a16d:	68 2c 3b 05 08       	push   $0x8053b2c
 804a172:	68 71 02 00 00       	push   $0x271
 804a177:	68 45 36 05 08       	push   $0x8053645
 804a17c:	68 4f 36 05 08       	push   $0x805364f
 804a181:	e8 3a e8 ff ff       	call   80489c0 <__assert_fail@plt>
 804a186:	90                   	nop
 804a187:	eb 01                	jmp    804a18a <Exp+0x657>
 804a189:	90                   	nop
 804a18a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a18d:	c9                   	leave  
 804a18e:	c3                   	ret    

0804a18f <isLeftVar>:
 804a18f:	55                   	push   %ebp
 804a190:	89 e5                	mov    %esp,%ebp
 804a192:	83 ec 18             	sub    $0x18,%esp
 804a195:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a199:	75 0a                	jne    804a1a5 <isLeftVar+0x16>
 804a19b:	b8 01 00 00 00       	mov    $0x1,%eax
 804a1a0:	e9 e1 00 00 00       	jmp    804a286 <isLeftVar+0xf7>
 804a1a5:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1a8:	8b 40 14             	mov    0x14(%eax),%eax
 804a1ab:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a1ae:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1b1:	8b 40 04             	mov    0x4(%eax),%eax
 804a1b4:	83 f8 03             	cmp    $0x3,%eax
 804a1b7:	75 36                	jne    804a1ef <isLeftVar+0x60>
 804a1b9:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1bc:	8b 40 08             	mov    0x8(%eax),%eax
 804a1bf:	83 ec 0c             	sub    $0xc,%esp
 804a1c2:	50                   	push   %eax
 804a1c3:	e8 fe 89 00 00       	call   8052bc6 <searchTable>
 804a1c8:	83 c4 10             	add    $0x10,%esp
 804a1cb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a1ce:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a1d2:	0f 84 a9 00 00 00    	je     804a281 <isLeftVar+0xf2>
 804a1d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a1db:	8b 00                	mov    (%eax),%eax
 804a1dd:	85 c0                	test   %eax,%eax
 804a1df:	0f 85 9c 00 00 00    	jne    804a281 <isLeftVar+0xf2>
 804a1e5:	b8 01 00 00 00       	mov    $0x1,%eax
 804a1ea:	e9 97 00 00 00       	jmp    804a286 <isLeftVar+0xf7>
 804a1ef:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1f2:	8b 40 04             	mov    0x4(%eax),%eax
 804a1f5:	83 f8 32             	cmp    $0x32,%eax
 804a1f8:	75 3c                	jne    804a236 <isLeftVar+0xa7>
 804a1fa:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1fd:	8b 40 14             	mov    0x14(%eax),%eax
 804a200:	8b 40 04             	mov    0x4(%eax),%eax
 804a203:	83 f8 03             	cmp    $0x3,%eax
 804a206:	75 2e                	jne    804a236 <isLeftVar+0xa7>
 804a208:	8b 45 08             	mov    0x8(%ebp),%eax
 804a20b:	8b 40 14             	mov    0x14(%eax),%eax
 804a20e:	8b 40 08             	mov    0x8(%eax),%eax
 804a211:	83 ec 0c             	sub    $0xc,%esp
 804a214:	50                   	push   %eax
 804a215:	e8 ac 89 00 00       	call   8052bc6 <searchTable>
 804a21a:	83 c4 10             	add    $0x10,%esp
 804a21d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a220:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804a224:	74 5a                	je     804a280 <isLeftVar+0xf1>
 804a226:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a229:	8b 00                	mov    (%eax),%eax
 804a22b:	85 c0                	test   %eax,%eax
 804a22d:	75 51                	jne    804a280 <isLeftVar+0xf1>
 804a22f:	b8 01 00 00 00       	mov    $0x1,%eax
 804a234:	eb 50                	jmp    804a286 <isLeftVar+0xf7>
 804a236:	8b 45 08             	mov    0x8(%ebp),%eax
 804a239:	8b 40 04             	mov    0x4(%eax),%eax
 804a23c:	83 f8 32             	cmp    $0x32,%eax
 804a23f:	75 40                	jne    804a281 <isLeftVar+0xf2>
 804a241:	8b 45 08             	mov    0x8(%ebp),%eax
 804a244:	8b 40 14             	mov    0x14(%eax),%eax
 804a247:	8b 40 04             	mov    0x4(%eax),%eax
 804a24a:	83 f8 32             	cmp    $0x32,%eax
 804a24d:	75 32                	jne    804a281 <isLeftVar+0xf2>
 804a24f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a252:	8b 40 18             	mov    0x18(%eax),%eax
 804a255:	8b 40 04             	mov    0x4(%eax),%eax
 804a258:	83 f8 16             	cmp    $0x16,%eax
 804a25b:	74 1c                	je     804a279 <isLeftVar+0xea>
 804a25d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a260:	8b 40 18             	mov    0x18(%eax),%eax
 804a263:	8b 40 04             	mov    0x4(%eax),%eax
 804a266:	83 f8 12             	cmp    $0x12,%eax
 804a269:	74 0e                	je     804a279 <isLeftVar+0xea>
 804a26b:	8b 45 08             	mov    0x8(%ebp),%eax
 804a26e:	8b 40 18             	mov    0x18(%eax),%eax
 804a271:	8b 40 04             	mov    0x4(%eax),%eax
 804a274:	83 f8 03             	cmp    $0x3,%eax
 804a277:	75 08                	jne    804a281 <isLeftVar+0xf2>
 804a279:	b8 01 00 00 00       	mov    $0x1,%eax
 804a27e:	eb 06                	jmp    804a286 <isLeftVar+0xf7>
 804a280:	90                   	nop
 804a281:	b8 00 00 00 00       	mov    $0x0,%eax
 804a286:	c9                   	leave  
 804a287:	c3                   	ret    

0804a288 <Args>:
 804a288:	55                   	push   %ebp
 804a289:	89 e5                	mov    %esp,%ebp
 804a28b:	83 ec 18             	sub    $0x18,%esp
 804a28e:	83 ec 0c             	sub    $0xc,%esp
 804a291:	6a 0c                	push   $0xc
 804a293:	e8 e8 e5 ff ff       	call   8048880 <malloc@plt>
 804a298:	83 c4 10             	add    $0x10,%esp
 804a29b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a29e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2a1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a2a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2aa:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a2b1:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2b4:	8b 40 10             	mov    0x10(%eax),%eax
 804a2b7:	83 f8 01             	cmp    $0x1,%eax
 804a2ba:	75 1c                	jne    804a2d8 <Args+0x50>
 804a2bc:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2bf:	8b 40 14             	mov    0x14(%eax),%eax
 804a2c2:	83 ec 0c             	sub    $0xc,%esp
 804a2c5:	50                   	push   %eax
 804a2c6:	e8 68 f8 ff ff       	call   8049b33 <Exp>
 804a2cb:	83 c4 10             	add    $0x10,%esp
 804a2ce:	89 c2                	mov    %eax,%edx
 804a2d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2d3:	89 50 04             	mov    %edx,0x4(%eax)
 804a2d6:	eb 5a                	jmp    804a332 <Args+0xaa>
 804a2d8:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2db:	8b 40 10             	mov    0x10(%eax),%eax
 804a2de:	83 f8 03             	cmp    $0x3,%eax
 804a2e1:	75 36                	jne    804a319 <Args+0x91>
 804a2e3:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2e6:	8b 40 14             	mov    0x14(%eax),%eax
 804a2e9:	83 ec 0c             	sub    $0xc,%esp
 804a2ec:	50                   	push   %eax
 804a2ed:	e8 41 f8 ff ff       	call   8049b33 <Exp>
 804a2f2:	83 c4 10             	add    $0x10,%esp
 804a2f5:	89 c2                	mov    %eax,%edx
 804a2f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2fa:	89 50 04             	mov    %edx,0x4(%eax)
 804a2fd:	8b 45 08             	mov    0x8(%ebp),%eax
 804a300:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a303:	83 ec 0c             	sub    $0xc,%esp
 804a306:	50                   	push   %eax
 804a307:	e8 7c ff ff ff       	call   804a288 <Args>
 804a30c:	83 c4 10             	add    $0x10,%esp
 804a30f:	89 c2                	mov    %eax,%edx
 804a311:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a314:	89 50 08             	mov    %edx,0x8(%eax)
 804a317:	eb 19                	jmp    804a332 <Args+0xaa>
 804a319:	68 30 3b 05 08       	push   $0x8053b30
 804a31e:	68 a1 02 00 00       	push   $0x2a1
 804a323:	68 45 36 05 08       	push   $0x8053645
 804a328:	68 4f 36 05 08       	push   $0x805364f
 804a32d:	e8 8e e6 ff ff       	call   80489c0 <__assert_fail@plt>
 804a332:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a335:	c9                   	leave  
 804a336:	c3                   	ret    

0804a337 <checkStructure>:
 804a337:	55                   	push   %ebp
 804a338:	89 e5                	mov    %esp,%ebp
 804a33a:	83 ec 18             	sub    $0x18,%esp
 804a33d:	eb 63                	jmp    804a3a2 <checkStructure+0x6b>
 804a33f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a342:	8b 40 08             	mov    0x8(%eax),%eax
 804a345:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a348:	eb 49                	jmp    804a393 <checkStructure+0x5c>
 804a34a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a34d:	8b 10                	mov    (%eax),%edx
 804a34f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a352:	8b 00                	mov    (%eax),%eax
 804a354:	83 ec 08             	sub    $0x8,%esp
 804a357:	52                   	push   %edx
 804a358:	50                   	push   %eax
 804a359:	e8 52 e4 ff ff       	call   80487b0 <strcmp@plt>
 804a35e:	83 c4 10             	add    $0x10,%esp
 804a361:	85 c0                	test   %eax,%eax
 804a363:	75 25                	jne    804a38a <checkStructure+0x53>
 804a365:	a1 20 81 05 08       	mov    0x8058120,%eax
 804a36a:	83 c0 01             	add    $0x1,%eax
 804a36d:	a3 20 81 05 08       	mov    %eax,0x8058120
 804a372:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a375:	8b 00                	mov    (%eax),%eax
 804a377:	83 ec 04             	sub    $0x4,%esp
 804a37a:	50                   	push   %eax
 804a37b:	6a 01                	push   $0x1
 804a37d:	68 78 37 05 08       	push   $0x8053778
 804a382:	e8 39 e4 ff ff       	call   80487c0 <printf@plt>
 804a387:	83 c4 10             	add    $0x10,%esp
 804a38a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a38d:	8b 40 08             	mov    0x8(%eax),%eax
 804a390:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a393:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804a397:	75 b1                	jne    804a34a <checkStructure+0x13>
 804a399:	8b 45 08             	mov    0x8(%ebp),%eax
 804a39c:	8b 40 08             	mov    0x8(%eax),%eax
 804a39f:	89 45 08             	mov    %eax,0x8(%ebp)
 804a3a2:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3a5:	8b 40 08             	mov    0x8(%eax),%eax
 804a3a8:	85 c0                	test   %eax,%eax
 804a3aa:	75 93                	jne    804a33f <checkStructure+0x8>
 804a3ac:	b8 01 00 00 00       	mov    $0x1,%eax
 804a3b1:	c9                   	leave  
 804a3b2:	c3                   	ret    

0804a3b3 <checkFunc>:
 804a3b3:	55                   	push   %ebp
 804a3b4:	89 e5                	mov    %esp,%ebp
 804a3b6:	83 ec 18             	sub    $0x18,%esp
 804a3b9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a3c0:	eb 70                	jmp    804a432 <checkFunc+0x7f>
 804a3c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a3c5:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 804a3cc:	85 c0                	test   %eax,%eax
 804a3ce:	74 5e                	je     804a42e <checkFunc+0x7b>
 804a3d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a3d3:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 804a3da:	8b 00                	mov    (%eax),%eax
 804a3dc:	83 f8 01             	cmp    $0x1,%eax
 804a3df:	75 4d                	jne    804a42e <checkFunc+0x7b>
 804a3e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a3e4:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 804a3eb:	8b 40 0c             	mov    0xc(%eax),%eax
 804a3ee:	8b 40 08             	mov    0x8(%eax),%eax
 804a3f1:	85 c0                	test   %eax,%eax
 804a3f3:	75 39                	jne    804a42e <checkFunc+0x7b>
 804a3f5:	a1 20 81 05 08       	mov    0x8058120,%eax
 804a3fa:	83 c0 01             	add    $0x1,%eax
 804a3fd:	a3 20 81 05 08       	mov    %eax,0x8058120
 804a402:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a405:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 804a40c:	8b 50 04             	mov    0x4(%eax),%edx
 804a40f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a412:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 804a419:	8b 40 08             	mov    0x8(%eax),%eax
 804a41c:	83 ec 04             	sub    $0x4,%esp
 804a41f:	52                   	push   %edx
 804a420:	50                   	push   %eax
 804a421:	68 dc 3a 05 08       	push   $0x8053adc
 804a426:	e8 95 e3 ff ff       	call   80487c0 <printf@plt>
 804a42b:	83 c4 10             	add    $0x10,%esp
 804a42e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804a432:	81 7d f4 fe 3f 00 00 	cmpl   $0x3ffe,-0xc(%ebp)
 804a439:	7e 87                	jle    804a3c2 <checkFunc+0xf>
 804a43b:	90                   	nop
 804a43c:	c9                   	leave  
 804a43d:	c3                   	ret    

0804a43e <main>:
 804a43e:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804a442:	83 e4 f0             	and    $0xfffffff0,%esp
 804a445:	ff 71 fc             	pushl  -0x4(%ecx)
 804a448:	55                   	push   %ebp
 804a449:	89 e5                	mov    %esp,%ebp
 804a44b:	57                   	push   %edi
 804a44c:	53                   	push   %ebx
 804a44d:	51                   	push   %ecx
 804a44e:	81 ec ac 00 00 00    	sub    $0xac,%esp
 804a454:	89 cb                	mov    %ecx,%ebx
 804a456:	8b 43 04             	mov    0x4(%ebx),%eax
 804a459:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 804a45f:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a465:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a468:	31 c0                	xor    %eax,%eax
 804a46a:	83 3b 01             	cmpl   $0x1,(%ebx)
 804a46d:	0f 8e 3b 02 00 00    	jle    804a6ae <main+0x270>
 804a473:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 804a47a:	00 00 00 
 804a47d:	e9 1e 02 00 00       	jmp    804a6a0 <main+0x262>
 804a482:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804a488:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804a48f:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804a495:	01 d0                	add    %edx,%eax
 804a497:	8b 00                	mov    (%eax),%eax
 804a499:	83 ec 08             	sub    $0x8,%esp
 804a49c:	68 38 3b 05 08       	push   $0x8053b38
 804a4a1:	50                   	push   %eax
 804a4a2:	e8 49 e4 ff ff       	call   80488f0 <fopen@plt>
 804a4a7:	83 c4 10             	add    $0x10,%esp
 804a4aa:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
 804a4b0:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
 804a4b7:	75 21                	jne    804a4da <main+0x9c>
 804a4b9:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804a4bf:	83 c0 04             	add    $0x4,%eax
 804a4c2:	8b 00                	mov    (%eax),%eax
 804a4c4:	83 ec 0c             	sub    $0xc,%esp
 804a4c7:	50                   	push   %eax
 804a4c8:	e8 63 e3 ff ff       	call   8048830 <perror@plt>
 804a4cd:	83 c4 10             	add    $0x10,%esp
 804a4d0:	b8 01 00 00 00       	mov    $0x1,%eax
 804a4d5:	e9 d9 01 00 00       	jmp    804a6b3 <main+0x275>
 804a4da:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804a4e0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804a4e7:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804a4ed:	01 d0                	add    %edx,%eax
 804a4ef:	8b 00                	mov    (%eax),%eax
 804a4f1:	83 ec 08             	sub    $0x8,%esp
 804a4f4:	50                   	push   %eax
 804a4f5:	68 3a 3b 05 08       	push   $0x8053b3a
 804a4fa:	e8 c1 e2 ff ff       	call   80487c0 <printf@plt>
 804a4ff:	83 c4 10             	add    $0x10,%esp
 804a502:	83 ec 0c             	sub    $0xc,%esp
 804a505:	ff b5 5c ff ff ff    	pushl  -0xa4(%ebp)
 804a50b:	e8 45 7a 00 00       	call   8051f55 <yyrestart>
 804a510:	83 c4 10             	add    $0x10,%esp
 804a513:	e8 44 30 00 00       	call   804d55c <yyparse>
 804a518:	83 ec 0c             	sub    $0xc,%esp
 804a51b:	ff b5 5c ff ff ff    	pushl  -0xa4(%ebp)
 804a521:	e8 da e2 ff ff       	call   8048800 <fclose@plt>
 804a526:	83 c4 10             	add    $0x10,%esp
 804a529:	c7 05 bc 80 05 08 01 	movl   $0x1,0x80580bc
 804a530:	00 00 00 
 804a533:	a1 20 81 05 08       	mov    0x8058120,%eax
 804a538:	85 c0                	test   %eax,%eax
 804a53a:	0f 85 58 01 00 00    	jne    804a698 <main+0x25a>
 804a540:	a1 10 81 05 08       	mov    0x8058110,%eax
 804a545:	85 c0                	test   %eax,%eax
 804a547:	0f 84 4b 01 00 00    	je     804a698 <main+0x25a>
 804a54d:	e8 f0 85 00 00       	call   8052b42 <initTable>
 804a552:	e8 8f 87 00 00       	call   8052ce6 <preprocessTable>
 804a557:	a1 10 81 05 08       	mov    0x8058110,%eax
 804a55c:	83 ec 0c             	sub    $0xc,%esp
 804a55f:	50                   	push   %eax
 804a560:	e8 37 e8 ff ff       	call   8048d9c <sematicCheck>
 804a565:	83 c4 10             	add    $0x10,%esp
 804a568:	a1 20 81 05 08       	mov    0x8058120,%eax
 804a56d:	85 c0                	test   %eax,%eax
 804a56f:	0f 85 e6 00 00 00    	jne    804a65b <main+0x21d>
 804a575:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804a57b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804a582:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804a588:	01 d0                	add    %edx,%eax
 804a58a:	8b 00                	mov    (%eax),%eax
 804a58c:	83 ec 08             	sub    $0x8,%esp
 804a58f:	50                   	push   %eax
 804a590:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
 804a596:	50                   	push   %eax
 804a597:	e8 c4 e2 ff ff       	call   8048860 <strcpy@plt>
 804a59c:	83 c4 10             	add    $0x10,%esp
 804a59f:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
 804a5a5:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804a5aa:	89 c2                	mov    %eax,%edx
 804a5ac:	b8 00 00 00 00       	mov    $0x0,%eax
 804a5b1:	89 d7                	mov    %edx,%edi
 804a5b3:	f2 ae                	repnz scas %es:(%edi),%al
 804a5b5:	89 c8                	mov    %ecx,%eax
 804a5b7:	f7 d0                	not    %eax
 804a5b9:	8d 50 ff             	lea    -0x1(%eax),%edx
 804a5bc:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
 804a5c2:	01 d0                	add    %edx,%eax
 804a5c4:	c7 00 2e 69 72 00    	movl   $0x72692e,(%eax)
 804a5ca:	83 ec 08             	sub    $0x8,%esp
 804a5cd:	68 56 3b 05 08       	push   $0x8053b56
 804a5d2:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
 804a5d8:	50                   	push   %eax
 804a5d9:	e8 12 e3 ff ff       	call   80488f0 <fopen@plt>
 804a5de:	83 c4 10             	add    $0x10,%esp
 804a5e1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 804a5e7:	83 bd 60 ff ff ff 00 	cmpl   $0x0,-0xa0(%ebp)
 804a5ee:	75 16                	jne    804a606 <main+0x1c8>
 804a5f0:	68 64 3b 05 08       	push   $0x8053b64
 804a5f5:	6a 31                	push   $0x31
 804a5f7:	68 58 3b 05 08       	push   $0x8053b58
 804a5fc:	68 5f 3b 05 08       	push   $0x8053b5f
 804a601:	e8 ba e3 ff ff       	call   80489c0 <__assert_fail@plt>
 804a606:	a1 10 81 05 08       	mov    0x8058110,%eax
 804a60b:	83 ec 08             	sub    $0x8,%esp
 804a60e:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804a614:	50                   	push   %eax
 804a615:	e8 80 0d 00 00       	call   804b39a <generate_ir>
 804a61a:	83 c4 10             	add    $0x10,%esp
 804a61d:	a3 0c 81 05 08       	mov    %eax,0x805810c
 804a622:	a1 0c 81 05 08       	mov    0x805810c,%eax
 804a627:	83 ec 0c             	sub    $0xc,%esp
 804a62a:	50                   	push   %eax
 804a62b:	e8 9f 00 00 00       	call   804a6cf <test_ir>
 804a630:	83 c4 10             	add    $0x10,%esp
 804a633:	a1 0c 81 05 08       	mov    0x805810c,%eax
 804a638:	83 ec 08             	sub    $0x8,%esp
 804a63b:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804a641:	50                   	push   %eax
 804a642:	e8 08 03 00 00       	call   804a94f <printInterCodes>
 804a647:	83 c4 10             	add    $0x10,%esp
 804a64a:	83 ec 0c             	sub    $0xc,%esp
 804a64d:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804a653:	e8 a8 e1 ff ff       	call   8048800 <fclose@plt>
 804a658:	83 c4 10             	add    $0x10,%esp
 804a65b:	a1 10 81 05 08       	mov    0x8058110,%eax
 804a660:	83 ec 0c             	sub    $0xc,%esp
 804a663:	50                   	push   %eax
 804a664:	e8 e5 e6 ff ff       	call   8048d4e <deleteTree>
 804a669:	83 c4 10             	add    $0x10,%esp
 804a66c:	e8 08 85 00 00       	call   8052b79 <clearTable>
 804a671:	a1 0c 81 05 08       	mov    0x805810c,%eax
 804a676:	83 ec 0c             	sub    $0xc,%esp
 804a679:	50                   	push   %eax
 804a67a:	e8 06 01 00 00       	call   804a785 <clearInterCodes>
 804a67f:	83 c4 10             	add    $0x10,%esp
 804a682:	c7 05 10 81 05 08 00 	movl   $0x0,0x8058110
 804a689:	00 00 00 
 804a68c:	c7 05 20 81 05 08 00 	movl   $0x0,0x8058120
 804a693:	00 00 00 
 804a696:	eb 01                	jmp    804a699 <main+0x25b>
 804a698:	90                   	nop
 804a699:	83 85 58 ff ff ff 01 	addl   $0x1,-0xa8(%ebp)
 804a6a0:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804a6a6:	3b 03                	cmp    (%ebx),%eax
 804a6a8:	0f 8c d4 fd ff ff    	jl     804a482 <main+0x44>
 804a6ae:	b8 00 00 00 00       	mov    $0x0,%eax
 804a6b3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 804a6b6:	65 33 3d 14 00 00 00 	xor    %gs:0x14,%edi
 804a6bd:	74 05                	je     804a6c4 <main+0x286>
 804a6bf:	e8 4c e1 ff ff       	call   8048810 <__stack_chk_fail@plt>
 804a6c4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804a6c7:	59                   	pop    %ecx
 804a6c8:	5b                   	pop    %ebx
 804a6c9:	5f                   	pop    %edi
 804a6ca:	5d                   	pop    %ebp
 804a6cb:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804a6ce:	c3                   	ret    

0804a6cf <test_ir>:
 804a6cf:	55                   	push   %ebp
 804a6d0:	89 e5                	mov    %esp,%ebp
 804a6d2:	83 ec 18             	sub    $0x18,%esp
 804a6d5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a6dc:	eb 2d                	jmp    804a70b <test_ir+0x3c>
 804a6de:	8b 45 08             	mov    0x8(%ebp),%eax
 804a6e1:	8b 40 14             	mov    0x14(%eax),%eax
 804a6e4:	8b 40 10             	mov    0x10(%eax),%eax
 804a6e7:	3b 45 08             	cmp    0x8(%ebp),%eax
 804a6ea:	74 16                	je     804a702 <test_ir+0x33>
 804a6ec:	68 90 3b 05 08       	push   $0x8053b90
 804a6f1:	6a 0c                	push   $0xc
 804a6f3:	68 6c 3b 05 08       	push   $0x8053b6c
 804a6f8:	68 73 3b 05 08       	push   $0x8053b73
 804a6fd:	e8 be e2 ff ff       	call   80489c0 <__assert_fail@plt>
 804a702:	8b 45 08             	mov    0x8(%ebp),%eax
 804a705:	8b 40 14             	mov    0x14(%eax),%eax
 804a708:	89 45 08             	mov    %eax,0x8(%ebp)
 804a70b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a70f:	74 0a                	je     804a71b <test_ir+0x4c>
 804a711:	8b 45 08             	mov    0x8(%ebp),%eax
 804a714:	8b 40 14             	mov    0x14(%eax),%eax
 804a717:	85 c0                	test   %eax,%eax
 804a719:	75 c3                	jne    804a6de <test_ir+0xf>
 804a71b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a71e:	c9                   	leave  
 804a71f:	c3                   	ret    

0804a720 <addTail>:
 804a720:	55                   	push   %ebp
 804a721:	89 e5                	mov    %esp,%ebp
 804a723:	83 ec 10             	sub    $0x10,%esp
 804a726:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a72a:	75 05                	jne    804a731 <addTail+0x11>
 804a72c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a72f:	eb 36                	jmp    804a767 <addTail+0x47>
 804a731:	8b 45 08             	mov    0x8(%ebp),%eax
 804a734:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804a737:	eb 09                	jmp    804a742 <addTail+0x22>
 804a739:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804a73c:	8b 40 14             	mov    0x14(%eax),%eax
 804a73f:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804a742:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804a745:	8b 40 14             	mov    0x14(%eax),%eax
 804a748:	85 c0                	test   %eax,%eax
 804a74a:	75 ed                	jne    804a739 <addTail+0x19>
 804a74c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804a74f:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a752:	89 50 14             	mov    %edx,0x14(%eax)
 804a755:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804a759:	74 09                	je     804a764 <addTail+0x44>
 804a75b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a75e:	8b 55 fc             	mov    -0x4(%ebp),%edx
 804a761:	89 50 10             	mov    %edx,0x10(%eax)
 804a764:	8b 45 08             	mov    0x8(%ebp),%eax
 804a767:	c9                   	leave  
 804a768:	c3                   	ret    

0804a769 <delInterCodes>:
 804a769:	55                   	push   %ebp
 804a76a:	89 e5                	mov    %esp,%ebp
 804a76c:	83 ec 08             	sub    $0x8,%esp
 804a76f:	68 00 3f 05 08       	push   $0x8053f00
 804a774:	6a 14                	push   $0x14
 804a776:	68 98 3b 05 08       	push   $0x8053b98
 804a77b:	68 9d 3b 05 08       	push   $0x8053b9d
 804a780:	e8 3b e2 ff ff       	call   80489c0 <__assert_fail@plt>

0804a785 <clearInterCodes>:
 804a785:	55                   	push   %ebp
 804a786:	89 e5                	mov    %esp,%ebp
 804a788:	83 ec 18             	sub    $0x18,%esp
 804a78b:	eb 1d                	jmp    804a7aa <clearInterCodes+0x25>
 804a78d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a790:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a793:	8b 45 08             	mov    0x8(%ebp),%eax
 804a796:	8b 40 14             	mov    0x14(%eax),%eax
 804a799:	89 45 08             	mov    %eax,0x8(%ebp)
 804a79c:	83 ec 0c             	sub    $0xc,%esp
 804a79f:	ff 75 f4             	pushl  -0xc(%ebp)
 804a7a2:	e8 29 e0 ff ff       	call   80487d0 <free@plt>
 804a7a7:	83 c4 10             	add    $0x10,%esp
 804a7aa:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a7ae:	75 dd                	jne    804a78d <clearInterCodes+0x8>
 804a7b0:	90                   	nop
 804a7b1:	c9                   	leave  
 804a7b2:	c3                   	ret    

0804a7b3 <newParm>:
 804a7b3:	55                   	push   %ebp
 804a7b4:	89 e5                	mov    %esp,%ebp
 804a7b6:	a1 9c 80 05 08       	mov    0x805809c,%eax
 804a7bb:	8d 50 01             	lea    0x1(%eax),%edx
 804a7be:	89 15 9c 80 05 08    	mov    %edx,0x805809c
 804a7c4:	5d                   	pop    %ebp
 804a7c5:	c3                   	ret    

0804a7c6 <newArg>:
 804a7c6:	55                   	push   %ebp
 804a7c7:	89 e5                	mov    %esp,%ebp
 804a7c9:	a1 a0 80 05 08       	mov    0x80580a0,%eax
 804a7ce:	8d 50 01             	lea    0x1(%eax),%edx
 804a7d1:	89 15 a0 80 05 08    	mov    %edx,0x80580a0
 804a7d7:	5d                   	pop    %ebp
 804a7d8:	c3                   	ret    

0804a7d9 <newTemp>:
 804a7d9:	55                   	push   %ebp
 804a7da:	89 e5                	mov    %esp,%ebp
 804a7dc:	83 ec 18             	sub    $0x18,%esp
 804a7df:	e8 b5 09 00 00       	call   804b199 <newOperand>
 804a7e4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a7e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a7ea:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
 804a7f0:	a1 a4 80 05 08       	mov    0x80580a4,%eax
 804a7f5:	8d 50 01             	lea    0x1(%eax),%edx
 804a7f8:	89 15 a4 80 05 08    	mov    %edx,0x80580a4
 804a7fe:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a801:	89 42 04             	mov    %eax,0x4(%edx)
 804a804:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a807:	c9                   	leave  
 804a808:	c3                   	ret    

0804a809 <newLabel>:
 804a809:	55                   	push   %ebp
 804a80a:	89 e5                	mov    %esp,%ebp
 804a80c:	83 ec 18             	sub    $0x18,%esp
 804a80f:	e8 85 09 00 00       	call   804b199 <newOperand>
 804a814:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a817:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a81a:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
 804a820:	a1 a8 80 05 08       	mov    0x80580a8,%eax
 804a825:	8d 50 01             	lea    0x1(%eax),%edx
 804a828:	89 15 a8 80 05 08    	mov    %edx,0x80580a8
 804a82e:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a831:	89 42 04             	mov    %eax,0x4(%edx)
 804a834:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a837:	c9                   	leave  
 804a838:	c3                   	ret    

0804a839 <printOperand>:
 804a839:	55                   	push   %ebp
 804a83a:	89 e5                	mov    %esp,%ebp
 804a83c:	83 ec 08             	sub    $0x8,%esp
 804a83f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a843:	75 15                	jne    804a85a <printOperand+0x21>
 804a845:	83 ec 0c             	sub    $0xc,%esp
 804a848:	68 9f 3b 05 08       	push   $0x8053b9f
 804a84d:	e8 3e e0 ff ff       	call   8048890 <puts@plt>
 804a852:	83 c4 10             	add    $0x10,%esp
 804a855:	e9 f3 00 00 00       	jmp    804a94d <printOperand+0x114>
 804a85a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a85d:	8b 00                	mov    (%eax),%eax
 804a85f:	83 f8 06             	cmp    $0x6,%eax
 804a862:	0f 87 cb 00 00 00    	ja     804a933 <printOperand+0xfa>
 804a868:	8b 04 85 bc 3b 05 08 	mov    0x8053bbc(,%eax,4),%eax
 804a86f:	ff e0                	jmp    *%eax
 804a871:	8b 45 08             	mov    0x8(%ebp),%eax
 804a874:	8b 40 04             	mov    0x4(%eax),%eax
 804a877:	83 ec 08             	sub    $0x8,%esp
 804a87a:	ff 75 0c             	pushl  0xc(%ebp)
 804a87d:	50                   	push   %eax
 804a87e:	e8 2d e1 ff ff       	call   80489b0 <fputs@plt>
 804a883:	83 c4 10             	add    $0x10,%esp
 804a886:	e9 c2 00 00 00       	jmp    804a94d <printOperand+0x114>
 804a88b:	8b 45 08             	mov    0x8(%ebp),%eax
 804a88e:	8b 40 04             	mov    0x4(%eax),%eax
 804a891:	83 ec 04             	sub    $0x4,%esp
 804a894:	50                   	push   %eax
 804a895:	68 a7 3b 05 08       	push   $0x8053ba7
 804a89a:	ff 75 0c             	pushl  0xc(%ebp)
 804a89d:	e8 3e e0 ff ff       	call   80488e0 <fprintf@plt>
 804a8a2:	83 c4 10             	add    $0x10,%esp
 804a8a5:	e9 a3 00 00 00       	jmp    804a94d <printOperand+0x114>
 804a8aa:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8ad:	8b 40 04             	mov    0x4(%eax),%eax
 804a8b0:	83 ec 04             	sub    $0x4,%esp
 804a8b3:	50                   	push   %eax
 804a8b4:	68 ab 3b 05 08       	push   $0x8053bab
 804a8b9:	ff 75 0c             	pushl  0xc(%ebp)
 804a8bc:	e8 1f e0 ff ff       	call   80488e0 <fprintf@plt>
 804a8c1:	83 c4 10             	add    $0x10,%esp
 804a8c4:	e9 84 00 00 00       	jmp    804a94d <printOperand+0x114>
 804a8c9:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8cc:	8b 40 04             	mov    0x4(%eax),%eax
 804a8cf:	83 ec 04             	sub    $0x4,%esp
 804a8d2:	50                   	push   %eax
 804a8d3:	68 af 3b 05 08       	push   $0x8053baf
 804a8d8:	ff 75 0c             	pushl  0xc(%ebp)
 804a8db:	e8 00 e0 ff ff       	call   80488e0 <fprintf@plt>
 804a8e0:	83 c4 10             	add    $0x10,%esp
 804a8e3:	eb 68                	jmp    804a94d <printOperand+0x114>
 804a8e5:	83 ec 08             	sub    $0x8,%esp
 804a8e8:	ff 75 0c             	pushl  0xc(%ebp)
 804a8eb:	6a 26                	push   $0x26
 804a8ed:	e8 5e e0 ff ff       	call   8048950 <fputc@plt>
 804a8f2:	83 c4 10             	add    $0x10,%esp
 804a8f5:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8f8:	8b 40 04             	mov    0x4(%eax),%eax
 804a8fb:	83 ec 08             	sub    $0x8,%esp
 804a8fe:	ff 75 0c             	pushl  0xc(%ebp)
 804a901:	50                   	push   %eax
 804a902:	e8 32 ff ff ff       	call   804a839 <printOperand>
 804a907:	83 c4 10             	add    $0x10,%esp
 804a90a:	eb 41                	jmp    804a94d <printOperand+0x114>
 804a90c:	83 ec 08             	sub    $0x8,%esp
 804a90f:	ff 75 0c             	pushl  0xc(%ebp)
 804a912:	6a 2a                	push   $0x2a
 804a914:	e8 37 e0 ff ff       	call   8048950 <fputc@plt>
 804a919:	83 c4 10             	add    $0x10,%esp
 804a91c:	8b 45 08             	mov    0x8(%ebp),%eax
 804a91f:	8b 40 04             	mov    0x4(%eax),%eax
 804a922:	83 ec 08             	sub    $0x8,%esp
 804a925:	ff 75 0c             	pushl  0xc(%ebp)
 804a928:	50                   	push   %eax
 804a929:	e8 0b ff ff ff       	call   804a839 <printOperand>
 804a92e:	83 c4 10             	add    $0x10,%esp
 804a931:	eb 1a                	jmp    804a94d <printOperand+0x114>
 804a933:	8b 45 08             	mov    0x8(%ebp),%eax
 804a936:	8b 40 04             	mov    0x4(%eax),%eax
 804a939:	83 ec 04             	sub    $0x4,%esp
 804a93c:	50                   	push   %eax
 804a93d:	68 b7 3b 05 08       	push   $0x8053bb7
 804a942:	ff 75 0c             	pushl  0xc(%ebp)
 804a945:	e8 96 df ff ff       	call   80488e0 <fprintf@plt>
 804a94a:	83 c4 10             	add    $0x10,%esp
 804a94d:	c9                   	leave  
 804a94e:	c3                   	ret    

0804a94f <printInterCodes>:
 804a94f:	55                   	push   %ebp
 804a950:	89 e5                	mov    %esp,%ebp
 804a952:	83 ec 18             	sub    $0x18,%esp
 804a955:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a959:	75 1a                	jne    804a975 <printInterCodes+0x26>
 804a95b:	83 ec 0c             	sub    $0xc,%esp
 804a95e:	68 d8 3b 05 08       	push   $0x8053bd8
 804a963:	e8 28 df ff ff       	call   8048890 <puts@plt>
 804a968:	83 c4 10             	add    $0x10,%esp
 804a96b:	b8 00 00 00 00       	mov    $0x0,%eax
 804a970:	e9 f5 07 00 00       	jmp    804b16a <printInterCodes+0x81b>
 804a975:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804a979:	75 08                	jne    804a983 <printInterCodes+0x34>
 804a97b:	a1 04 81 05 08       	mov    0x8058104,%eax
 804a980:	89 45 0c             	mov    %eax,0xc(%ebp)
 804a983:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a98a:	e9 ce 07 00 00       	jmp    804b15d <printInterCodes+0x80e>
 804a98f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a992:	8b 00                	mov    (%eax),%eax
 804a994:	83 f8 16             	cmp    $0x16,%eax
 804a997:	0f 87 90 07 00 00    	ja     804b12d <printInterCodes+0x7de>
 804a99d:	8b 04 85 7c 3c 05 08 	mov    0x8053c7c(,%eax,4),%eax
 804a9a4:	ff e0                	jmp    *%eax
 804a9a6:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9a9:	8b 40 04             	mov    0x4(%eax),%eax
 804a9ac:	83 ec 08             	sub    $0x8,%esp
 804a9af:	ff 75 0c             	pushl  0xc(%ebp)
 804a9b2:	50                   	push   %eax
 804a9b3:	e8 81 fe ff ff       	call   804a839 <printOperand>
 804a9b8:	83 c4 10             	add    $0x10,%esp
 804a9bb:	ff 75 0c             	pushl  0xc(%ebp)
 804a9be:	6a 04                	push   $0x4
 804a9c0:	6a 01                	push   $0x1
 804a9c2:	68 dd 3b 05 08       	push   $0x8053bdd
 804a9c7:	e8 74 de ff ff       	call   8048840 <fwrite@plt>
 804a9cc:	83 c4 10             	add    $0x10,%esp
 804a9cf:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9d2:	8b 40 08             	mov    0x8(%eax),%eax
 804a9d5:	83 ec 08             	sub    $0x8,%esp
 804a9d8:	ff 75 0c             	pushl  0xc(%ebp)
 804a9db:	50                   	push   %eax
 804a9dc:	e8 58 fe ff ff       	call   804a839 <printOperand>
 804a9e1:	83 c4 10             	add    $0x10,%esp
 804a9e4:	e9 57 07 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804a9e9:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9ec:	8b 40 04             	mov    0x4(%eax),%eax
 804a9ef:	83 ec 08             	sub    $0x8,%esp
 804a9f2:	ff 75 0c             	pushl  0xc(%ebp)
 804a9f5:	50                   	push   %eax
 804a9f6:	e8 3e fe ff ff       	call   804a839 <printOperand>
 804a9fb:	83 c4 10             	add    $0x10,%esp
 804a9fe:	ff 75 0c             	pushl  0xc(%ebp)
 804aa01:	6a 04                	push   $0x4
 804aa03:	6a 01                	push   $0x1
 804aa05:	68 dd 3b 05 08       	push   $0x8053bdd
 804aa0a:	e8 31 de ff ff       	call   8048840 <fwrite@plt>
 804aa0f:	83 c4 10             	add    $0x10,%esp
 804aa12:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa15:	8b 40 08             	mov    0x8(%eax),%eax
 804aa18:	83 ec 08             	sub    $0x8,%esp
 804aa1b:	ff 75 0c             	pushl  0xc(%ebp)
 804aa1e:	50                   	push   %eax
 804aa1f:	e8 15 fe ff ff       	call   804a839 <printOperand>
 804aa24:	83 c4 10             	add    $0x10,%esp
 804aa27:	ff 75 0c             	pushl  0xc(%ebp)
 804aa2a:	6a 03                	push   $0x3
 804aa2c:	6a 01                	push   $0x1
 804aa2e:	68 e2 3b 05 08       	push   $0x8053be2
 804aa33:	e8 08 de ff ff       	call   8048840 <fwrite@plt>
 804aa38:	83 c4 10             	add    $0x10,%esp
 804aa3b:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa3e:	8b 40 0c             	mov    0xc(%eax),%eax
 804aa41:	83 ec 08             	sub    $0x8,%esp
 804aa44:	ff 75 0c             	pushl  0xc(%ebp)
 804aa47:	50                   	push   %eax
 804aa48:	e8 ec fd ff ff       	call   804a839 <printOperand>
 804aa4d:	83 c4 10             	add    $0x10,%esp
 804aa50:	e9 eb 06 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804aa55:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa58:	8b 40 04             	mov    0x4(%eax),%eax
 804aa5b:	83 ec 08             	sub    $0x8,%esp
 804aa5e:	ff 75 0c             	pushl  0xc(%ebp)
 804aa61:	50                   	push   %eax
 804aa62:	e8 d2 fd ff ff       	call   804a839 <printOperand>
 804aa67:	83 c4 10             	add    $0x10,%esp
 804aa6a:	ff 75 0c             	pushl  0xc(%ebp)
 804aa6d:	6a 04                	push   $0x4
 804aa6f:	6a 01                	push   $0x1
 804aa71:	68 dd 3b 05 08       	push   $0x8053bdd
 804aa76:	e8 c5 dd ff ff       	call   8048840 <fwrite@plt>
 804aa7b:	83 c4 10             	add    $0x10,%esp
 804aa7e:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa81:	8b 40 08             	mov    0x8(%eax),%eax
 804aa84:	83 ec 08             	sub    $0x8,%esp
 804aa87:	ff 75 0c             	pushl  0xc(%ebp)
 804aa8a:	50                   	push   %eax
 804aa8b:	e8 a9 fd ff ff       	call   804a839 <printOperand>
 804aa90:	83 c4 10             	add    $0x10,%esp
 804aa93:	ff 75 0c             	pushl  0xc(%ebp)
 804aa96:	6a 03                	push   $0x3
 804aa98:	6a 01                	push   $0x1
 804aa9a:	68 e6 3b 05 08       	push   $0x8053be6
 804aa9f:	e8 9c dd ff ff       	call   8048840 <fwrite@plt>
 804aaa4:	83 c4 10             	add    $0x10,%esp
 804aaa7:	8b 45 08             	mov    0x8(%ebp),%eax
 804aaaa:	8b 40 0c             	mov    0xc(%eax),%eax
 804aaad:	83 ec 08             	sub    $0x8,%esp
 804aab0:	ff 75 0c             	pushl  0xc(%ebp)
 804aab3:	50                   	push   %eax
 804aab4:	e8 80 fd ff ff       	call   804a839 <printOperand>
 804aab9:	83 c4 10             	add    $0x10,%esp
 804aabc:	e9 7f 06 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804aac1:	8b 45 08             	mov    0x8(%ebp),%eax
 804aac4:	8b 40 04             	mov    0x4(%eax),%eax
 804aac7:	83 ec 08             	sub    $0x8,%esp
 804aaca:	ff 75 0c             	pushl  0xc(%ebp)
 804aacd:	50                   	push   %eax
 804aace:	e8 66 fd ff ff       	call   804a839 <printOperand>
 804aad3:	83 c4 10             	add    $0x10,%esp
 804aad6:	ff 75 0c             	pushl  0xc(%ebp)
 804aad9:	6a 04                	push   $0x4
 804aadb:	6a 01                	push   $0x1
 804aadd:	68 dd 3b 05 08       	push   $0x8053bdd
 804aae2:	e8 59 dd ff ff       	call   8048840 <fwrite@plt>
 804aae7:	83 c4 10             	add    $0x10,%esp
 804aaea:	8b 45 08             	mov    0x8(%ebp),%eax
 804aaed:	8b 40 08             	mov    0x8(%eax),%eax
 804aaf0:	83 ec 08             	sub    $0x8,%esp
 804aaf3:	ff 75 0c             	pushl  0xc(%ebp)
 804aaf6:	50                   	push   %eax
 804aaf7:	e8 3d fd ff ff       	call   804a839 <printOperand>
 804aafc:	83 c4 10             	add    $0x10,%esp
 804aaff:	ff 75 0c             	pushl  0xc(%ebp)
 804ab02:	6a 03                	push   $0x3
 804ab04:	6a 01                	push   $0x1
 804ab06:	68 ea 3b 05 08       	push   $0x8053bea
 804ab0b:	e8 30 dd ff ff       	call   8048840 <fwrite@plt>
 804ab10:	83 c4 10             	add    $0x10,%esp
 804ab13:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab16:	8b 40 0c             	mov    0xc(%eax),%eax
 804ab19:	83 ec 08             	sub    $0x8,%esp
 804ab1c:	ff 75 0c             	pushl  0xc(%ebp)
 804ab1f:	50                   	push   %eax
 804ab20:	e8 14 fd ff ff       	call   804a839 <printOperand>
 804ab25:	83 c4 10             	add    $0x10,%esp
 804ab28:	e9 13 06 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804ab2d:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab30:	8b 40 04             	mov    0x4(%eax),%eax
 804ab33:	83 ec 08             	sub    $0x8,%esp
 804ab36:	ff 75 0c             	pushl  0xc(%ebp)
 804ab39:	50                   	push   %eax
 804ab3a:	e8 fa fc ff ff       	call   804a839 <printOperand>
 804ab3f:	83 c4 10             	add    $0x10,%esp
 804ab42:	ff 75 0c             	pushl  0xc(%ebp)
 804ab45:	6a 04                	push   $0x4
 804ab47:	6a 01                	push   $0x1
 804ab49:	68 dd 3b 05 08       	push   $0x8053bdd
 804ab4e:	e8 ed dc ff ff       	call   8048840 <fwrite@plt>
 804ab53:	83 c4 10             	add    $0x10,%esp
 804ab56:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab59:	8b 40 08             	mov    0x8(%eax),%eax
 804ab5c:	83 ec 08             	sub    $0x8,%esp
 804ab5f:	ff 75 0c             	pushl  0xc(%ebp)
 804ab62:	50                   	push   %eax
 804ab63:	e8 d1 fc ff ff       	call   804a839 <printOperand>
 804ab68:	83 c4 10             	add    $0x10,%esp
 804ab6b:	ff 75 0c             	pushl  0xc(%ebp)
 804ab6e:	6a 03                	push   $0x3
 804ab70:	6a 01                	push   $0x1
 804ab72:	68 ee 3b 05 08       	push   $0x8053bee
 804ab77:	e8 c4 dc ff ff       	call   8048840 <fwrite@plt>
 804ab7c:	83 c4 10             	add    $0x10,%esp
 804ab7f:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab82:	8b 40 0c             	mov    0xc(%eax),%eax
 804ab85:	83 ec 08             	sub    $0x8,%esp
 804ab88:	ff 75 0c             	pushl  0xc(%ebp)
 804ab8b:	50                   	push   %eax
 804ab8c:	e8 a8 fc ff ff       	call   804a839 <printOperand>
 804ab91:	83 c4 10             	add    $0x10,%esp
 804ab94:	e9 a7 05 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804ab99:	ff 75 0c             	pushl  0xc(%ebp)
 804ab9c:	6a 04                	push   $0x4
 804ab9e:	6a 01                	push   $0x1
 804aba0:	68 f2 3b 05 08       	push   $0x8053bf2
 804aba5:	e8 96 dc ff ff       	call   8048840 <fwrite@plt>
 804abaa:	83 c4 10             	add    $0x10,%esp
 804abad:	8b 45 08             	mov    0x8(%ebp),%eax
 804abb0:	8b 40 08             	mov    0x8(%eax),%eax
 804abb3:	83 ec 08             	sub    $0x8,%esp
 804abb6:	ff 75 0c             	pushl  0xc(%ebp)
 804abb9:	50                   	push   %eax
 804abba:	e8 7a fc ff ff       	call   804a839 <printOperand>
 804abbf:	83 c4 10             	add    $0x10,%esp
 804abc2:	8b 45 08             	mov    0x8(%ebp),%eax
 804abc5:	8b 40 0c             	mov    0xc(%eax),%eax
 804abc8:	85 c0                	test   %eax,%eax
 804abca:	0f 84 6f 05 00 00    	je     804b13f <printInterCodes+0x7f0>
 804abd0:	8b 45 08             	mov    0x8(%ebp),%eax
 804abd3:	8b 40 0c             	mov    0xc(%eax),%eax
 804abd6:	8b 40 04             	mov    0x4(%eax),%eax
 804abd9:	83 ec 04             	sub    $0x4,%esp
 804abdc:	50                   	push   %eax
 804abdd:	68 f7 3b 05 08       	push   $0x8053bf7
 804abe2:	ff 75 0c             	pushl  0xc(%ebp)
 804abe5:	e8 f6 dc ff ff       	call   80488e0 <fprintf@plt>
 804abea:	83 c4 10             	add    $0x10,%esp
 804abed:	e9 4d 05 00 00       	jmp    804b13f <printInterCodes+0x7f0>
 804abf2:	8b 45 08             	mov    0x8(%ebp),%eax
 804abf5:	8b 40 08             	mov    0x8(%eax),%eax
 804abf8:	8b 40 04             	mov    0x4(%eax),%eax
 804abfb:	83 ec 04             	sub    $0x4,%esp
 804abfe:	50                   	push   %eax
 804abff:	68 fb 3b 05 08       	push   $0x8053bfb
 804ac04:	ff 75 0c             	pushl  0xc(%ebp)
 804ac07:	e8 d4 dc ff ff       	call   80488e0 <fprintf@plt>
 804ac0c:	83 c4 10             	add    $0x10,%esp
 804ac0f:	e9 2c 05 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804ac14:	ff 75 0c             	pushl  0xc(%ebp)
 804ac17:	6a 06                	push   $0x6
 804ac19:	6a 01                	push   $0x1
 804ac1b:	68 09 3c 05 08       	push   $0x8053c09
 804ac20:	e8 1b dc ff ff       	call   8048840 <fwrite@plt>
 804ac25:	83 c4 10             	add    $0x10,%esp
 804ac28:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac2b:	8b 40 08             	mov    0x8(%eax),%eax
 804ac2e:	83 ec 08             	sub    $0x8,%esp
 804ac31:	ff 75 0c             	pushl  0xc(%ebp)
 804ac34:	50                   	push   %eax
 804ac35:	e8 ff fb ff ff       	call   804a839 <printOperand>
 804ac3a:	83 c4 10             	add    $0x10,%esp
 804ac3d:	e9 fe 04 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804ac42:	ff 75 0c             	pushl  0xc(%ebp)
 804ac45:	6a 06                	push   $0x6
 804ac47:	6a 01                	push   $0x1
 804ac49:	68 10 3c 05 08       	push   $0x8053c10
 804ac4e:	e8 ed db ff ff       	call   8048840 <fwrite@plt>
 804ac53:	83 c4 10             	add    $0x10,%esp
 804ac56:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac59:	8b 40 08             	mov    0x8(%eax),%eax
 804ac5c:	83 ec 08             	sub    $0x8,%esp
 804ac5f:	ff 75 0c             	pushl  0xc(%ebp)
 804ac62:	50                   	push   %eax
 804ac63:	e8 d1 fb ff ff       	call   804a839 <printOperand>
 804ac68:	83 c4 10             	add    $0x10,%esp
 804ac6b:	ff 75 0c             	pushl  0xc(%ebp)
 804ac6e:	6a 02                	push   $0x2
 804ac70:	6a 01                	push   $0x1
 804ac72:	68 17 3c 05 08       	push   $0x8053c17
 804ac77:	e8 c4 db ff ff       	call   8048840 <fwrite@plt>
 804ac7c:	83 c4 10             	add    $0x10,%esp
 804ac7f:	e9 bc 04 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804ac84:	ff 75 0c             	pushl  0xc(%ebp)
 804ac87:	6a 07                	push   $0x7
 804ac89:	6a 01                	push   $0x1
 804ac8b:	68 1a 3c 05 08       	push   $0x8053c1a
 804ac90:	e8 ab db ff ff       	call   8048840 <fwrite@plt>
 804ac95:	83 c4 10             	add    $0x10,%esp
 804ac98:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac9b:	8b 40 08             	mov    0x8(%eax),%eax
 804ac9e:	83 ec 08             	sub    $0x8,%esp
 804aca1:	ff 75 0c             	pushl  0xc(%ebp)
 804aca4:	50                   	push   %eax
 804aca5:	e8 8f fb ff ff       	call   804a839 <printOperand>
 804acaa:	83 c4 10             	add    $0x10,%esp
 804acad:	e9 8e 04 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804acb2:	ff 75 0c             	pushl  0xc(%ebp)
 804acb5:	6a 05                	push   $0x5
 804acb7:	6a 01                	push   $0x1
 804acb9:	68 22 3c 05 08       	push   $0x8053c22
 804acbe:	e8 7d db ff ff       	call   8048840 <fwrite@plt>
 804acc3:	83 c4 10             	add    $0x10,%esp
 804acc6:	8b 45 08             	mov    0x8(%ebp),%eax
 804acc9:	8b 40 08             	mov    0x8(%eax),%eax
 804accc:	83 ec 08             	sub    $0x8,%esp
 804accf:	ff 75 0c             	pushl  0xc(%ebp)
 804acd2:	50                   	push   %eax
 804acd3:	e8 61 fb ff ff       	call   804a839 <printOperand>
 804acd8:	83 c4 10             	add    $0x10,%esp
 804acdb:	e9 60 04 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804ace0:	ff 75 0c             	pushl  0xc(%ebp)
 804ace3:	6a 03                	push   $0x3
 804ace5:	6a 01                	push   $0x1
 804ace7:	68 28 3c 05 08       	push   $0x8053c28
 804acec:	e8 4f db ff ff       	call   8048840 <fwrite@plt>
 804acf1:	83 c4 10             	add    $0x10,%esp
 804acf4:	8b 45 08             	mov    0x8(%ebp),%eax
 804acf7:	8b 40 08             	mov    0x8(%eax),%eax
 804acfa:	83 ec 08             	sub    $0x8,%esp
 804acfd:	ff 75 0c             	pushl  0xc(%ebp)
 804ad00:	50                   	push   %eax
 804ad01:	e8 33 fb ff ff       	call   804a839 <printOperand>
 804ad06:	83 c4 10             	add    $0x10,%esp
 804ad09:	ff 75 0c             	pushl  0xc(%ebp)
 804ad0c:	6a 03                	push   $0x3
 804ad0e:	6a 01                	push   $0x1
 804ad10:	68 2c 3c 05 08       	push   $0x8053c2c
 804ad15:	e8 26 db ff ff       	call   8048840 <fwrite@plt>
 804ad1a:	83 c4 10             	add    $0x10,%esp
 804ad1d:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad20:	8b 40 0c             	mov    0xc(%eax),%eax
 804ad23:	83 ec 08             	sub    $0x8,%esp
 804ad26:	ff 75 0c             	pushl  0xc(%ebp)
 804ad29:	50                   	push   %eax
 804ad2a:	e8 0a fb ff ff       	call   804a839 <printOperand>
 804ad2f:	83 c4 10             	add    $0x10,%esp
 804ad32:	ff 75 0c             	pushl  0xc(%ebp)
 804ad35:	6a 06                	push   $0x6
 804ad37:	6a 01                	push   $0x1
 804ad39:	68 30 3c 05 08       	push   $0x8053c30
 804ad3e:	e8 fd da ff ff       	call   8048840 <fwrite@plt>
 804ad43:	83 c4 10             	add    $0x10,%esp
 804ad46:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad49:	8b 40 04             	mov    0x4(%eax),%eax
 804ad4c:	83 ec 08             	sub    $0x8,%esp
 804ad4f:	ff 75 0c             	pushl  0xc(%ebp)
 804ad52:	50                   	push   %eax
 804ad53:	e8 e1 fa ff ff       	call   804a839 <printOperand>
 804ad58:	83 c4 10             	add    $0x10,%esp
 804ad5b:	e9 e0 03 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804ad60:	ff 75 0c             	pushl  0xc(%ebp)
 804ad63:	6a 03                	push   $0x3
 804ad65:	6a 01                	push   $0x1
 804ad67:	68 28 3c 05 08       	push   $0x8053c28
 804ad6c:	e8 cf da ff ff       	call   8048840 <fwrite@plt>
 804ad71:	83 c4 10             	add    $0x10,%esp
 804ad74:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad77:	8b 40 08             	mov    0x8(%eax),%eax
 804ad7a:	83 ec 08             	sub    $0x8,%esp
 804ad7d:	ff 75 0c             	pushl  0xc(%ebp)
 804ad80:	50                   	push   %eax
 804ad81:	e8 b3 fa ff ff       	call   804a839 <printOperand>
 804ad86:	83 c4 10             	add    $0x10,%esp
 804ad89:	ff 75 0c             	pushl  0xc(%ebp)
 804ad8c:	6a 03                	push   $0x3
 804ad8e:	6a 01                	push   $0x1
 804ad90:	68 37 3c 05 08       	push   $0x8053c37
 804ad95:	e8 a6 da ff ff       	call   8048840 <fwrite@plt>
 804ad9a:	83 c4 10             	add    $0x10,%esp
 804ad9d:	8b 45 08             	mov    0x8(%ebp),%eax
 804ada0:	8b 40 0c             	mov    0xc(%eax),%eax
 804ada3:	83 ec 08             	sub    $0x8,%esp
 804ada6:	ff 75 0c             	pushl  0xc(%ebp)
 804ada9:	50                   	push   %eax
 804adaa:	e8 8a fa ff ff       	call   804a839 <printOperand>
 804adaf:	83 c4 10             	add    $0x10,%esp
 804adb2:	ff 75 0c             	pushl  0xc(%ebp)
 804adb5:	6a 06                	push   $0x6
 804adb7:	6a 01                	push   $0x1
 804adb9:	68 30 3c 05 08       	push   $0x8053c30
 804adbe:	e8 7d da ff ff       	call   8048840 <fwrite@plt>
 804adc3:	83 c4 10             	add    $0x10,%esp
 804adc6:	8b 45 08             	mov    0x8(%ebp),%eax
 804adc9:	8b 40 04             	mov    0x4(%eax),%eax
 804adcc:	83 ec 08             	sub    $0x8,%esp
 804adcf:	ff 75 0c             	pushl  0xc(%ebp)
 804add2:	50                   	push   %eax
 804add3:	e8 61 fa ff ff       	call   804a839 <printOperand>
 804add8:	83 c4 10             	add    $0x10,%esp
 804addb:	e9 60 03 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804ade0:	ff 75 0c             	pushl  0xc(%ebp)
 804ade3:	6a 03                	push   $0x3
 804ade5:	6a 01                	push   $0x1
 804ade7:	68 28 3c 05 08       	push   $0x8053c28
 804adec:	e8 4f da ff ff       	call   8048840 <fwrite@plt>
 804adf1:	83 c4 10             	add    $0x10,%esp
 804adf4:	8b 45 08             	mov    0x8(%ebp),%eax
 804adf7:	8b 40 08             	mov    0x8(%eax),%eax
 804adfa:	83 ec 08             	sub    $0x8,%esp
 804adfd:	ff 75 0c             	pushl  0xc(%ebp)
 804ae00:	50                   	push   %eax
 804ae01:	e8 33 fa ff ff       	call   804a839 <printOperand>
 804ae06:	83 c4 10             	add    $0x10,%esp
 804ae09:	ff 75 0c             	pushl  0xc(%ebp)
 804ae0c:	6a 04                	push   $0x4
 804ae0e:	6a 01                	push   $0x1
 804ae10:	68 3b 3c 05 08       	push   $0x8053c3b
 804ae15:	e8 26 da ff ff       	call   8048840 <fwrite@plt>
 804ae1a:	83 c4 10             	add    $0x10,%esp
 804ae1d:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae20:	8b 40 0c             	mov    0xc(%eax),%eax
 804ae23:	83 ec 08             	sub    $0x8,%esp
 804ae26:	ff 75 0c             	pushl  0xc(%ebp)
 804ae29:	50                   	push   %eax
 804ae2a:	e8 0a fa ff ff       	call   804a839 <printOperand>
 804ae2f:	83 c4 10             	add    $0x10,%esp
 804ae32:	ff 75 0c             	pushl  0xc(%ebp)
 804ae35:	6a 06                	push   $0x6
 804ae37:	6a 01                	push   $0x1
 804ae39:	68 30 3c 05 08       	push   $0x8053c30
 804ae3e:	e8 fd d9 ff ff       	call   8048840 <fwrite@plt>
 804ae43:	83 c4 10             	add    $0x10,%esp
 804ae46:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae49:	8b 40 04             	mov    0x4(%eax),%eax
 804ae4c:	83 ec 08             	sub    $0x8,%esp
 804ae4f:	ff 75 0c             	pushl  0xc(%ebp)
 804ae52:	50                   	push   %eax
 804ae53:	e8 e1 f9 ff ff       	call   804a839 <printOperand>
 804ae58:	83 c4 10             	add    $0x10,%esp
 804ae5b:	e9 e0 02 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804ae60:	ff 75 0c             	pushl  0xc(%ebp)
 804ae63:	6a 03                	push   $0x3
 804ae65:	6a 01                	push   $0x1
 804ae67:	68 28 3c 05 08       	push   $0x8053c28
 804ae6c:	e8 cf d9 ff ff       	call   8048840 <fwrite@plt>
 804ae71:	83 c4 10             	add    $0x10,%esp
 804ae74:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae77:	8b 40 08             	mov    0x8(%eax),%eax
 804ae7a:	83 ec 08             	sub    $0x8,%esp
 804ae7d:	ff 75 0c             	pushl  0xc(%ebp)
 804ae80:	50                   	push   %eax
 804ae81:	e8 b3 f9 ff ff       	call   804a839 <printOperand>
 804ae86:	83 c4 10             	add    $0x10,%esp
 804ae89:	ff 75 0c             	pushl  0xc(%ebp)
 804ae8c:	6a 04                	push   $0x4
 804ae8e:	6a 01                	push   $0x1
 804ae90:	68 40 3c 05 08       	push   $0x8053c40
 804ae95:	e8 a6 d9 ff ff       	call   8048840 <fwrite@plt>
 804ae9a:	83 c4 10             	add    $0x10,%esp
 804ae9d:	8b 45 08             	mov    0x8(%ebp),%eax
 804aea0:	8b 40 0c             	mov    0xc(%eax),%eax
 804aea3:	83 ec 08             	sub    $0x8,%esp
 804aea6:	ff 75 0c             	pushl  0xc(%ebp)
 804aea9:	50                   	push   %eax
 804aeaa:	e8 8a f9 ff ff       	call   804a839 <printOperand>
 804aeaf:	83 c4 10             	add    $0x10,%esp
 804aeb2:	ff 75 0c             	pushl  0xc(%ebp)
 804aeb5:	6a 06                	push   $0x6
 804aeb7:	6a 01                	push   $0x1
 804aeb9:	68 30 3c 05 08       	push   $0x8053c30
 804aebe:	e8 7d d9 ff ff       	call   8048840 <fwrite@plt>
 804aec3:	83 c4 10             	add    $0x10,%esp
 804aec6:	8b 45 08             	mov    0x8(%ebp),%eax
 804aec9:	8b 40 04             	mov    0x4(%eax),%eax
 804aecc:	83 ec 08             	sub    $0x8,%esp
 804aecf:	ff 75 0c             	pushl  0xc(%ebp)
 804aed2:	50                   	push   %eax
 804aed3:	e8 61 f9 ff ff       	call   804a839 <printOperand>
 804aed8:	83 c4 10             	add    $0x10,%esp
 804aedb:	e9 60 02 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804aee0:	ff 75 0c             	pushl  0xc(%ebp)
 804aee3:	6a 03                	push   $0x3
 804aee5:	6a 01                	push   $0x1
 804aee7:	68 28 3c 05 08       	push   $0x8053c28
 804aeec:	e8 4f d9 ff ff       	call   8048840 <fwrite@plt>
 804aef1:	83 c4 10             	add    $0x10,%esp
 804aef4:	8b 45 08             	mov    0x8(%ebp),%eax
 804aef7:	8b 40 08             	mov    0x8(%eax),%eax
 804aefa:	83 ec 08             	sub    $0x8,%esp
 804aefd:	ff 75 0c             	pushl  0xc(%ebp)
 804af00:	50                   	push   %eax
 804af01:	e8 33 f9 ff ff       	call   804a839 <printOperand>
 804af06:	83 c4 10             	add    $0x10,%esp
 804af09:	ff 75 0c             	pushl  0xc(%ebp)
 804af0c:	6a 04                	push   $0x4
 804af0e:	6a 01                	push   $0x1
 804af10:	68 45 3c 05 08       	push   $0x8053c45
 804af15:	e8 26 d9 ff ff       	call   8048840 <fwrite@plt>
 804af1a:	83 c4 10             	add    $0x10,%esp
 804af1d:	8b 45 08             	mov    0x8(%ebp),%eax
 804af20:	8b 40 0c             	mov    0xc(%eax),%eax
 804af23:	83 ec 08             	sub    $0x8,%esp
 804af26:	ff 75 0c             	pushl  0xc(%ebp)
 804af29:	50                   	push   %eax
 804af2a:	e8 0a f9 ff ff       	call   804a839 <printOperand>
 804af2f:	83 c4 10             	add    $0x10,%esp
 804af32:	ff 75 0c             	pushl  0xc(%ebp)
 804af35:	6a 06                	push   $0x6
 804af37:	6a 01                	push   $0x1
 804af39:	68 30 3c 05 08       	push   $0x8053c30
 804af3e:	e8 fd d8 ff ff       	call   8048840 <fwrite@plt>
 804af43:	83 c4 10             	add    $0x10,%esp
 804af46:	8b 45 08             	mov    0x8(%ebp),%eax
 804af49:	8b 40 04             	mov    0x4(%eax),%eax
 804af4c:	83 ec 08             	sub    $0x8,%esp
 804af4f:	ff 75 0c             	pushl  0xc(%ebp)
 804af52:	50                   	push   %eax
 804af53:	e8 e1 f8 ff ff       	call   804a839 <printOperand>
 804af58:	83 c4 10             	add    $0x10,%esp
 804af5b:	e9 e0 01 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804af60:	ff 75 0c             	pushl  0xc(%ebp)
 804af63:	6a 03                	push   $0x3
 804af65:	6a 01                	push   $0x1
 804af67:	68 28 3c 05 08       	push   $0x8053c28
 804af6c:	e8 cf d8 ff ff       	call   8048840 <fwrite@plt>
 804af71:	83 c4 10             	add    $0x10,%esp
 804af74:	8b 45 08             	mov    0x8(%ebp),%eax
 804af77:	8b 40 08             	mov    0x8(%eax),%eax
 804af7a:	83 ec 08             	sub    $0x8,%esp
 804af7d:	ff 75 0c             	pushl  0xc(%ebp)
 804af80:	50                   	push   %eax
 804af81:	e8 b3 f8 ff ff       	call   804a839 <printOperand>
 804af86:	83 c4 10             	add    $0x10,%esp
 804af89:	ff 75 0c             	pushl  0xc(%ebp)
 804af8c:	6a 04                	push   $0x4
 804af8e:	6a 01                	push   $0x1
 804af90:	68 4a 3c 05 08       	push   $0x8053c4a
 804af95:	e8 a6 d8 ff ff       	call   8048840 <fwrite@plt>
 804af9a:	83 c4 10             	add    $0x10,%esp
 804af9d:	8b 45 08             	mov    0x8(%ebp),%eax
 804afa0:	8b 40 0c             	mov    0xc(%eax),%eax
 804afa3:	83 ec 08             	sub    $0x8,%esp
 804afa6:	ff 75 0c             	pushl  0xc(%ebp)
 804afa9:	50                   	push   %eax
 804afaa:	e8 8a f8 ff ff       	call   804a839 <printOperand>
 804afaf:	83 c4 10             	add    $0x10,%esp
 804afb2:	ff 75 0c             	pushl  0xc(%ebp)
 804afb5:	6a 06                	push   $0x6
 804afb7:	6a 01                	push   $0x1
 804afb9:	68 30 3c 05 08       	push   $0x8053c30
 804afbe:	e8 7d d8 ff ff       	call   8048840 <fwrite@plt>
 804afc3:	83 c4 10             	add    $0x10,%esp
 804afc6:	8b 45 08             	mov    0x8(%ebp),%eax
 804afc9:	8b 40 04             	mov    0x4(%eax),%eax
 804afcc:	83 ec 08             	sub    $0x8,%esp
 804afcf:	ff 75 0c             	pushl  0xc(%ebp)
 804afd2:	50                   	push   %eax
 804afd3:	e8 61 f8 ff ff       	call   804a839 <printOperand>
 804afd8:	83 c4 10             	add    $0x10,%esp
 804afdb:	e9 60 01 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804afe0:	ff 75 0c             	pushl  0xc(%ebp)
 804afe3:	6a 04                	push   $0x4
 804afe5:	6a 01                	push   $0x1
 804afe7:	68 4f 3c 05 08       	push   $0x8053c4f
 804afec:	e8 4f d8 ff ff       	call   8048840 <fwrite@plt>
 804aff1:	83 c4 10             	add    $0x10,%esp
 804aff4:	8b 45 08             	mov    0x8(%ebp),%eax
 804aff7:	8b 40 08             	mov    0x8(%eax),%eax
 804affa:	83 ec 08             	sub    $0x8,%esp
 804affd:	ff 75 0c             	pushl  0xc(%ebp)
 804b000:	50                   	push   %eax
 804b001:	e8 33 f8 ff ff       	call   804a839 <printOperand>
 804b006:	83 c4 10             	add    $0x10,%esp
 804b009:	e9 32 01 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804b00e:	8b 45 08             	mov    0x8(%ebp),%eax
 804b011:	8b 40 04             	mov    0x4(%eax),%eax
 804b014:	83 ec 08             	sub    $0x8,%esp
 804b017:	ff 75 0c             	pushl  0xc(%ebp)
 804b01a:	50                   	push   %eax
 804b01b:	e8 19 f8 ff ff       	call   804a839 <printOperand>
 804b020:	83 c4 10             	add    $0x10,%esp
 804b023:	ff 75 0c             	pushl  0xc(%ebp)
 804b026:	6a 09                	push   $0x9
 804b028:	6a 01                	push   $0x1
 804b02a:	68 54 3c 05 08       	push   $0x8053c54
 804b02f:	e8 0c d8 ff ff       	call   8048840 <fwrite@plt>
 804b034:	83 c4 10             	add    $0x10,%esp
 804b037:	8b 45 08             	mov    0x8(%ebp),%eax
 804b03a:	8b 40 08             	mov    0x8(%eax),%eax
 804b03d:	83 ec 08             	sub    $0x8,%esp
 804b040:	ff 75 0c             	pushl  0xc(%ebp)
 804b043:	50                   	push   %eax
 804b044:	e8 f0 f7 ff ff       	call   804a839 <printOperand>
 804b049:	83 c4 10             	add    $0x10,%esp
 804b04c:	e9 ef 00 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804b051:	ff 75 0c             	pushl  0xc(%ebp)
 804b054:	6a 05                	push   $0x5
 804b056:	6a 01                	push   $0x1
 804b058:	68 5e 3c 05 08       	push   $0x8053c5e
 804b05d:	e8 de d7 ff ff       	call   8048840 <fwrite@plt>
 804b062:	83 c4 10             	add    $0x10,%esp
 804b065:	8b 45 08             	mov    0x8(%ebp),%eax
 804b068:	8b 40 08             	mov    0x8(%eax),%eax
 804b06b:	83 ec 08             	sub    $0x8,%esp
 804b06e:	ff 75 0c             	pushl  0xc(%ebp)
 804b071:	50                   	push   %eax
 804b072:	e8 c2 f7 ff ff       	call   804a839 <printOperand>
 804b077:	83 c4 10             	add    $0x10,%esp
 804b07a:	e9 c1 00 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804b07f:	ff 75 0c             	pushl  0xc(%ebp)
 804b082:	6a 06                	push   $0x6
 804b084:	6a 01                	push   $0x1
 804b086:	68 64 3c 05 08       	push   $0x8053c64
 804b08b:	e8 b0 d7 ff ff       	call   8048840 <fwrite@plt>
 804b090:	83 c4 10             	add    $0x10,%esp
 804b093:	8b 45 08             	mov    0x8(%ebp),%eax
 804b096:	8b 40 08             	mov    0x8(%eax),%eax
 804b099:	83 ec 08             	sub    $0x8,%esp
 804b09c:	ff 75 0c             	pushl  0xc(%ebp)
 804b09f:	50                   	push   %eax
 804b0a0:	e8 94 f7 ff ff       	call   804a839 <printOperand>
 804b0a5:	83 c4 10             	add    $0x10,%esp
 804b0a8:	e9 93 00 00 00       	jmp    804b140 <printInterCodes+0x7f1>
 804b0ad:	8b 45 08             	mov    0x8(%ebp),%eax
 804b0b0:	8b 40 04             	mov    0x4(%eax),%eax
 804b0b3:	83 ec 08             	sub    $0x8,%esp
 804b0b6:	ff 75 0c             	pushl  0xc(%ebp)
 804b0b9:	50                   	push   %eax
 804b0ba:	e8 7a f7 ff ff       	call   804a839 <printOperand>
 804b0bf:	83 c4 10             	add    $0x10,%esp
 804b0c2:	ff 75 0c             	pushl  0xc(%ebp)
 804b0c5:	6a 05                	push   $0x5
 804b0c7:	6a 01                	push   $0x1
 804b0c9:	68 6b 3c 05 08       	push   $0x8053c6b
 804b0ce:	e8 6d d7 ff ff       	call   8048840 <fwrite@plt>
 804b0d3:	83 c4 10             	add    $0x10,%esp
 804b0d6:	8b 45 08             	mov    0x8(%ebp),%eax
 804b0d9:	8b 40 08             	mov    0x8(%eax),%eax
 804b0dc:	83 ec 08             	sub    $0x8,%esp
 804b0df:	ff 75 0c             	pushl  0xc(%ebp)
 804b0e2:	50                   	push   %eax
 804b0e3:	e8 51 f7 ff ff       	call   804a839 <printOperand>
 804b0e8:	83 c4 10             	add    $0x10,%esp
 804b0eb:	eb 53                	jmp    804b140 <printInterCodes+0x7f1>
 804b0ed:	8b 45 08             	mov    0x8(%ebp),%eax
 804b0f0:	8b 40 04             	mov    0x4(%eax),%eax
 804b0f3:	83 ec 08             	sub    $0x8,%esp
 804b0f6:	ff 75 0c             	pushl  0xc(%ebp)
 804b0f9:	50                   	push   %eax
 804b0fa:	e8 3a f7 ff ff       	call   804a839 <printOperand>
 804b0ff:	83 c4 10             	add    $0x10,%esp
 804b102:	ff 75 0c             	pushl  0xc(%ebp)
 804b105:	6a 05                	push   $0x5
 804b107:	6a 01                	push   $0x1
 804b109:	68 71 3c 05 08       	push   $0x8053c71
 804b10e:	e8 2d d7 ff ff       	call   8048840 <fwrite@plt>
 804b113:	83 c4 10             	add    $0x10,%esp
 804b116:	8b 45 08             	mov    0x8(%ebp),%eax
 804b119:	8b 40 08             	mov    0x8(%eax),%eax
 804b11c:	83 ec 08             	sub    $0x8,%esp
 804b11f:	ff 75 0c             	pushl  0xc(%ebp)
 804b122:	50                   	push   %eax
 804b123:	e8 11 f7 ff ff       	call   804a839 <printOperand>
 804b128:	83 c4 10             	add    $0x10,%esp
 804b12b:	eb 13                	jmp    804b140 <printInterCodes+0x7f1>
 804b12d:	83 ec 0c             	sub    $0xc,%esp
 804b130:	68 77 3c 05 08       	push   $0x8053c77
 804b135:	e8 86 d6 ff ff       	call   80487c0 <printf@plt>
 804b13a:	83 c4 10             	add    $0x10,%esp
 804b13d:	eb 01                	jmp    804b140 <printInterCodes+0x7f1>
 804b13f:	90                   	nop
 804b140:	83 ec 08             	sub    $0x8,%esp
 804b143:	ff 75 0c             	pushl  0xc(%ebp)
 804b146:	6a 0a                	push   $0xa
 804b148:	e8 03 d8 ff ff       	call   8048950 <fputc@plt>
 804b14d:	83 c4 10             	add    $0x10,%esp
 804b150:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804b154:	8b 45 08             	mov    0x8(%ebp),%eax
 804b157:	8b 40 14             	mov    0x14(%eax),%eax
 804b15a:	89 45 08             	mov    %eax,0x8(%ebp)
 804b15d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b161:	0f 85 28 f8 ff ff    	jne    804a98f <printInterCodes+0x40>
 804b167:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b16a:	c9                   	leave  
 804b16b:	c3                   	ret    

0804b16c <newInterCodes>:
 804b16c:	55                   	push   %ebp
 804b16d:	89 e5                	mov    %esp,%ebp
 804b16f:	83 ec 18             	sub    $0x18,%esp
 804b172:	83 ec 0c             	sub    $0xc,%esp
 804b175:	6a 18                	push   $0x18
 804b177:	e8 04 d7 ff ff       	call   8048880 <malloc@plt>
 804b17c:	83 c4 10             	add    $0x10,%esp
 804b17f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b182:	83 ec 04             	sub    $0x4,%esp
 804b185:	6a 18                	push   $0x18
 804b187:	6a 00                	push   $0x0
 804b189:	ff 75 f4             	pushl  -0xc(%ebp)
 804b18c:	e8 6f d7 ff ff       	call   8048900 <memset@plt>
 804b191:	83 c4 10             	add    $0x10,%esp
 804b194:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b197:	c9                   	leave  
 804b198:	c3                   	ret    

0804b199 <newOperand>:
 804b199:	55                   	push   %ebp
 804b19a:	89 e5                	mov    %esp,%ebp
 804b19c:	83 ec 18             	sub    $0x18,%esp
 804b19f:	83 ec 0c             	sub    $0xc,%esp
 804b1a2:	6a 08                	push   $0x8
 804b1a4:	e8 d7 d6 ff ff       	call   8048880 <malloc@plt>
 804b1a9:	83 c4 10             	add    $0x10,%esp
 804b1ac:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b1af:	83 ec 04             	sub    $0x4,%esp
 804b1b2:	6a 08                	push   $0x8
 804b1b4:	6a 00                	push   $0x0
 804b1b6:	ff 75 f4             	pushl  -0xc(%ebp)
 804b1b9:	e8 42 d7 ff ff       	call   8048900 <memset@plt>
 804b1be:	83 c4 10             	add    $0x10,%esp
 804b1c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b1c4:	c9                   	leave  
 804b1c5:	c3                   	ret    

0804b1c6 <newOp>:
 804b1c6:	55                   	push   %ebp
 804b1c7:	89 e5                	mov    %esp,%ebp
 804b1c9:	83 ec 18             	sub    $0x18,%esp
 804b1cc:	83 ec 0c             	sub    $0xc,%esp
 804b1cf:	6a 08                	push   $0x8
 804b1d1:	e8 aa d6 ff ff       	call   8048880 <malloc@plt>
 804b1d6:	83 c4 10             	add    $0x10,%esp
 804b1d9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b1dc:	83 ec 04             	sub    $0x4,%esp
 804b1df:	6a 08                	push   $0x8
 804b1e1:	6a 00                	push   $0x0
 804b1e3:	ff 75 f4             	pushl  -0xc(%ebp)
 804b1e6:	e8 15 d7 ff ff       	call   8048900 <memset@plt>
 804b1eb:	83 c4 10             	add    $0x10,%esp
 804b1ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b1f1:	8b 55 08             	mov    0x8(%ebp),%edx
 804b1f4:	89 10                	mov    %edx,(%eax)
 804b1f6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b1fa:	75 0b                	jne    804b207 <newOp+0x41>
 804b1fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b1ff:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b202:	89 50 04             	mov    %edx,0x4(%eax)
 804b205:	eb 20                	jmp    804b227 <newOp+0x61>
 804b207:	83 7d 08 05          	cmpl   $0x5,0x8(%ebp)
 804b20b:	74 06                	je     804b213 <newOp+0x4d>
 804b20d:	83 7d 08 06          	cmpl   $0x6,0x8(%ebp)
 804b211:	75 0b                	jne    804b21e <newOp+0x58>
 804b213:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b216:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b219:	89 50 04             	mov    %edx,0x4(%eax)
 804b21c:	eb 09                	jmp    804b227 <newOp+0x61>
 804b21e:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b221:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b224:	89 50 04             	mov    %edx,0x4(%eax)
 804b227:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b22a:	c9                   	leave  
 804b22b:	c3                   	ret    

0804b22c <newIC>:
 804b22c:	55                   	push   %ebp
 804b22d:	89 e5                	mov    %esp,%ebp
 804b22f:	83 ec 18             	sub    $0x18,%esp
 804b232:	83 ec 0c             	sub    $0xc,%esp
 804b235:	6a 18                	push   $0x18
 804b237:	e8 44 d6 ff ff       	call   8048880 <malloc@plt>
 804b23c:	83 c4 10             	add    $0x10,%esp
 804b23f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b242:	83 ec 04             	sub    $0x4,%esp
 804b245:	6a 18                	push   $0x18
 804b247:	6a 00                	push   $0x0
 804b249:	ff 75 f4             	pushl  -0xc(%ebp)
 804b24c:	e8 af d6 ff ff       	call   8048900 <memset@plt>
 804b251:	83 c4 10             	add    $0x10,%esp
 804b254:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b257:	8b 55 08             	mov    0x8(%ebp),%edx
 804b25a:	89 10                	mov    %edx,(%eax)
 804b25c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b25f:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b262:	89 50 04             	mov    %edx,0x4(%eax)
 804b265:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b268:	8b 55 10             	mov    0x10(%ebp),%edx
 804b26b:	89 50 08             	mov    %edx,0x8(%eax)
 804b26e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b271:	8b 55 14             	mov    0x14(%ebp),%edx
 804b274:	89 50 0c             	mov    %edx,0xc(%eax)
 804b277:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b27a:	c9                   	leave  
 804b27b:	c3                   	ret    

0804b27c <getRelop>:
 804b27c:	55                   	push   %ebp
 804b27d:	89 e5                	mov    %esp,%ebp
 804b27f:	83 ec 18             	sub    $0x18,%esp
 804b282:	8b 45 08             	mov    0x8(%ebp),%eax
 804b285:	8b 40 04             	mov    0x4(%eax),%eax
 804b288:	83 f8 0b             	cmp    $0xb,%eax
 804b28b:	74 19                	je     804b2a6 <getRelop+0x2a>
 804b28d:	68 10 3f 05 08       	push   $0x8053f10
 804b292:	68 31 01 00 00       	push   $0x131
 804b297:	68 98 3b 05 08       	push   $0x8053b98
 804b29c:	68 d8 3c 05 08       	push   $0x8053cd8
 804b2a1:	e8 1a d7 ff ff       	call   80489c0 <__assert_fail@plt>
 804b2a6:	8b 45 08             	mov    0x8(%ebp),%eax
 804b2a9:	8b 40 08             	mov    0x8(%eax),%eax
 804b2ac:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b2af:	c7 45 f0 11 00 00 00 	movl   $0x11,-0x10(%ebp)
 804b2b6:	83 ec 08             	sub    $0x8,%esp
 804b2b9:	68 f0 3c 05 08       	push   $0x8053cf0
 804b2be:	ff 75 f4             	pushl  -0xc(%ebp)
 804b2c1:	e8 ea d4 ff ff       	call   80487b0 <strcmp@plt>
 804b2c6:	83 c4 10             	add    $0x10,%esp
 804b2c9:	85 c0                	test   %eax,%eax
 804b2cb:	75 0c                	jne    804b2d9 <getRelop+0x5d>
 804b2cd:	c7 45 f0 0d 00 00 00 	movl   $0xd,-0x10(%ebp)
 804b2d4:	e9 bc 00 00 00       	jmp    804b395 <getRelop+0x119>
 804b2d9:	83 ec 08             	sub    $0x8,%esp
 804b2dc:	68 f2 3c 05 08       	push   $0x8053cf2
 804b2e1:	ff 75 f4             	pushl  -0xc(%ebp)
 804b2e4:	e8 c7 d4 ff ff       	call   80487b0 <strcmp@plt>
 804b2e9:	83 c4 10             	add    $0x10,%esp
 804b2ec:	85 c0                	test   %eax,%eax
 804b2ee:	75 0c                	jne    804b2fc <getRelop+0x80>
 804b2f0:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
 804b2f7:	e9 99 00 00 00       	jmp    804b395 <getRelop+0x119>
 804b2fc:	83 ec 08             	sub    $0x8,%esp
 804b2ff:	68 f4 3c 05 08       	push   $0x8053cf4
 804b304:	ff 75 f4             	pushl  -0xc(%ebp)
 804b307:	e8 a4 d4 ff ff       	call   80487b0 <strcmp@plt>
 804b30c:	83 c4 10             	add    $0x10,%esp
 804b30f:	85 c0                	test   %eax,%eax
 804b311:	75 09                	jne    804b31c <getRelop+0xa0>
 804b313:	c7 45 f0 0f 00 00 00 	movl   $0xf,-0x10(%ebp)
 804b31a:	eb 79                	jmp    804b395 <getRelop+0x119>
 804b31c:	83 ec 08             	sub    $0x8,%esp
 804b31f:	68 f7 3c 05 08       	push   $0x8053cf7
 804b324:	ff 75 f4             	pushl  -0xc(%ebp)
 804b327:	e8 84 d4 ff ff       	call   80487b0 <strcmp@plt>
 804b32c:	83 c4 10             	add    $0x10,%esp
 804b32f:	85 c0                	test   %eax,%eax
 804b331:	75 09                	jne    804b33c <getRelop+0xc0>
 804b333:	c7 45 f0 10 00 00 00 	movl   $0x10,-0x10(%ebp)
 804b33a:	eb 59                	jmp    804b395 <getRelop+0x119>
 804b33c:	83 ec 08             	sub    $0x8,%esp
 804b33f:	68 fa 3c 05 08       	push   $0x8053cfa
 804b344:	ff 75 f4             	pushl  -0xc(%ebp)
 804b347:	e8 64 d4 ff ff       	call   80487b0 <strcmp@plt>
 804b34c:	83 c4 10             	add    $0x10,%esp
 804b34f:	85 c0                	test   %eax,%eax
 804b351:	75 09                	jne    804b35c <getRelop+0xe0>
 804b353:	c7 45 f0 11 00 00 00 	movl   $0x11,-0x10(%ebp)
 804b35a:	eb 39                	jmp    804b395 <getRelop+0x119>
 804b35c:	83 ec 08             	sub    $0x8,%esp
 804b35f:	68 fd 3c 05 08       	push   $0x8053cfd
 804b364:	ff 75 f4             	pushl  -0xc(%ebp)
 804b367:	e8 44 d4 ff ff       	call   80487b0 <strcmp@plt>
 804b36c:	83 c4 10             	add    $0x10,%esp
 804b36f:	85 c0                	test   %eax,%eax
 804b371:	75 09                	jne    804b37c <getRelop+0x100>
 804b373:	c7 45 f0 12 00 00 00 	movl   $0x12,-0x10(%ebp)
 804b37a:	eb 19                	jmp    804b395 <getRelop+0x119>
 804b37c:	68 10 3f 05 08       	push   $0x8053f10
 804b381:	68 3b 01 00 00       	push   $0x13b
 804b386:	68 98 3b 05 08       	push   $0x8053b98
 804b38b:	68 9d 3b 05 08       	push   $0x8053b9d
 804b390:	e8 2b d6 ff ff       	call   80489c0 <__assert_fail@plt>
 804b395:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b398:	c9                   	leave  
 804b399:	c3                   	ret    

0804b39a <generate_ir>:
 804b39a:	55                   	push   %ebp
 804b39b:	89 e5                	mov    %esp,%ebp
 804b39d:	83 ec 08             	sub    $0x8,%esp
 804b3a0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b3a4:	75 07                	jne    804b3ad <generate_ir+0x13>
 804b3a6:	b8 00 00 00 00       	mov    $0x0,%eax
 804b3ab:	eb 0e                	jmp    804b3bb <generate_ir+0x21>
 804b3ad:	83 ec 0c             	sub    $0xc,%esp
 804b3b0:	ff 75 08             	pushl  0x8(%ebp)
 804b3b3:	e8 05 00 00 00       	call   804b3bd <translate_Program>
 804b3b8:	83 c4 10             	add    $0x10,%esp
 804b3bb:	c9                   	leave  
 804b3bc:	c3                   	ret    

0804b3bd <translate_Program>:
 804b3bd:	55                   	push   %ebp
 804b3be:	89 e5                	mov    %esp,%ebp
 804b3c0:	83 ec 18             	sub    $0x18,%esp
 804b3c3:	8b 45 08             	mov    0x8(%ebp),%eax
 804b3c6:	8b 40 04             	mov    0x4(%eax),%eax
 804b3c9:	83 f8 1f             	cmp    $0x1f,%eax
 804b3cc:	74 19                	je     804b3e7 <translate_Program+0x2a>
 804b3ce:	68 1c 3f 05 08       	push   $0x8053f1c
 804b3d3:	68 47 01 00 00       	push   $0x147
 804b3d8:	68 98 3b 05 08       	push   $0x8053b98
 804b3dd:	68 00 3d 05 08       	push   $0x8053d00
 804b3e2:	e8 d9 d5 ff ff       	call   80489c0 <__assert_fail@plt>
 804b3e7:	8b 45 08             	mov    0x8(%ebp),%eax
 804b3ea:	8b 40 14             	mov    0x14(%eax),%eax
 804b3ed:	83 ec 0c             	sub    $0xc,%esp
 804b3f0:	50                   	push   %eax
 804b3f1:	e8 0b 00 00 00       	call   804b401 <translate_ExtDefList>
 804b3f6:	83 c4 10             	add    $0x10,%esp
 804b3f9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b3fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b3ff:	c9                   	leave  
 804b400:	c3                   	ret    

0804b401 <translate_ExtDefList>:
 804b401:	55                   	push   %ebp
 804b402:	89 e5                	mov    %esp,%ebp
 804b404:	83 ec 18             	sub    $0x18,%esp
 804b407:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b40b:	75 07                	jne    804b414 <translate_ExtDefList+0x13>
 804b40d:	b8 00 00 00 00       	mov    $0x0,%eax
 804b412:	eb 41                	jmp    804b455 <translate_ExtDefList+0x54>
 804b414:	8b 45 08             	mov    0x8(%ebp),%eax
 804b417:	8b 40 14             	mov    0x14(%eax),%eax
 804b41a:	83 ec 0c             	sub    $0xc,%esp
 804b41d:	50                   	push   %eax
 804b41e:	e8 34 00 00 00       	call   804b457 <translate_ExtDef>
 804b423:	83 c4 10             	add    $0x10,%esp
 804b426:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b429:	8b 45 08             	mov    0x8(%ebp),%eax
 804b42c:	8b 40 18             	mov    0x18(%eax),%eax
 804b42f:	83 ec 0c             	sub    $0xc,%esp
 804b432:	50                   	push   %eax
 804b433:	e8 c9 ff ff ff       	call   804b401 <translate_ExtDefList>
 804b438:	83 c4 10             	add    $0x10,%esp
 804b43b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b43e:	83 ec 08             	sub    $0x8,%esp
 804b441:	ff 75 f4             	pushl  -0xc(%ebp)
 804b444:	ff 75 f0             	pushl  -0x10(%ebp)
 804b447:	e8 d4 f2 ff ff       	call   804a720 <addTail>
 804b44c:	83 c4 10             	add    $0x10,%esp
 804b44f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b452:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b455:	c9                   	leave  
 804b456:	c3                   	ret    

0804b457 <translate_ExtDef>:
 804b457:	55                   	push   %ebp
 804b458:	89 e5                	mov    %esp,%ebp
 804b45a:	83 ec 18             	sub    $0x18,%esp
 804b45d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b460:	8b 40 18             	mov    0x18(%eax),%eax
 804b463:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b466:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b469:	8b 40 04             	mov    0x4(%eax),%eax
 804b46c:	83 f8 22             	cmp    $0x22,%eax
 804b46f:	75 10                	jne    804b481 <translate_ExtDef+0x2a>
 804b471:	83 ec 0c             	sub    $0xc,%esp
 804b474:	ff 75 ec             	pushl  -0x14(%ebp)
 804b477:	e8 56 00 00 00       	call   804b4d2 <translate_ExtDecList>
 804b47c:	83 c4 10             	add    $0x10,%esp
 804b47f:	eb 4f                	jmp    804b4d0 <translate_ExtDef+0x79>
 804b481:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b484:	8b 40 04             	mov    0x4(%eax),%eax
 804b487:	83 f8 28             	cmp    $0x28,%eax
 804b48a:	75 3f                	jne    804b4cb <translate_ExtDef+0x74>
 804b48c:	83 ec 0c             	sub    $0xc,%esp
 804b48f:	ff 75 ec             	pushl  -0x14(%ebp)
 804b492:	e8 be 01 00 00       	call   804b655 <translate_FunDec>
 804b497:	83 c4 10             	add    $0x10,%esp
 804b49a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b49d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4a0:	8b 40 1c             	mov    0x1c(%eax),%eax
 804b4a3:	83 ec 0c             	sub    $0xc,%esp
 804b4a6:	50                   	push   %eax
 804b4a7:	e8 ac 02 00 00       	call   804b758 <translate_CompSt>
 804b4ac:	83 c4 10             	add    $0x10,%esp
 804b4af:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b4b2:	83 ec 08             	sub    $0x8,%esp
 804b4b5:	ff 75 f4             	pushl  -0xc(%ebp)
 804b4b8:	ff 75 f0             	pushl  -0x10(%ebp)
 804b4bb:	e8 60 f2 ff ff       	call   804a720 <addTail>
 804b4c0:	83 c4 10             	add    $0x10,%esp
 804b4c3:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b4c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b4c9:	eb 05                	jmp    804b4d0 <translate_ExtDef+0x79>
 804b4cb:	b8 00 00 00 00       	mov    $0x0,%eax
 804b4d0:	c9                   	leave  
 804b4d1:	c3                   	ret    

0804b4d2 <translate_ExtDecList>:
 804b4d2:	55                   	push   %ebp
 804b4d3:	89 e5                	mov    %esp,%ebp
 804b4d5:	83 ec 18             	sub    $0x18,%esp
 804b4d8:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4db:	8b 40 14             	mov    0x14(%eax),%eax
 804b4de:	83 ec 0c             	sub    $0xc,%esp
 804b4e1:	50                   	push   %eax
 804b4e2:	e8 3f 00 00 00       	call   804b526 <translate_VarDec>
 804b4e7:	83 c4 10             	add    $0x10,%esp
 804b4ea:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b4ed:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4f0:	8b 40 10             	mov    0x10(%eax),%eax
 804b4f3:	83 f8 03             	cmp    $0x3,%eax
 804b4f6:	75 29                	jne    804b521 <translate_ExtDecList+0x4f>
 804b4f8:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4fb:	8b 40 1c             	mov    0x1c(%eax),%eax
 804b4fe:	83 ec 0c             	sub    $0xc,%esp
 804b501:	50                   	push   %eax
 804b502:	e8 cb ff ff ff       	call   804b4d2 <translate_ExtDecList>
 804b507:	83 c4 10             	add    $0x10,%esp
 804b50a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b50d:	83 ec 08             	sub    $0x8,%esp
 804b510:	ff 75 f4             	pushl  -0xc(%ebp)
 804b513:	ff 75 f0             	pushl  -0x10(%ebp)
 804b516:	e8 05 f2 ff ff       	call   804a720 <addTail>
 804b51b:	83 c4 10             	add    $0x10,%esp
 804b51e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b521:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b524:	c9                   	leave  
 804b525:	c3                   	ret    

0804b526 <translate_VarDec>:
 804b526:	55                   	push   %ebp
 804b527:	89 e5                	mov    %esp,%ebp
 804b529:	83 ec 38             	sub    $0x38,%esp
 804b52c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 804b533:	8b 45 08             	mov    0x8(%ebp),%eax
 804b536:	8b 40 14             	mov    0x14(%eax),%eax
 804b539:	8b 40 04             	mov    0x4(%eax),%eax
 804b53c:	83 f8 03             	cmp    $0x3,%eax
 804b53f:	0f 85 f6 00 00 00    	jne    804b63b <translate_VarDec+0x115>
 804b545:	8b 45 08             	mov    0x8(%ebp),%eax
 804b548:	8b 40 14             	mov    0x14(%eax),%eax
 804b54b:	8b 40 08             	mov    0x8(%eax),%eax
 804b54e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b551:	83 ec 0c             	sub    $0xc,%esp
 804b554:	ff 75 d4             	pushl  -0x2c(%ebp)
 804b557:	e8 6a 76 00 00       	call   8052bc6 <searchTable>
 804b55c:	83 c4 10             	add    $0x10,%esp
 804b55f:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804b562:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 804b566:	75 19                	jne    804b581 <translate_VarDec+0x5b>
 804b568:	68 30 3f 05 08       	push   $0x8053f30
 804b56d:	68 79 01 00 00       	push   $0x179
 804b572:	68 98 3b 05 08       	push   $0x8053b98
 804b577:	68 1c 3d 05 08       	push   $0x8053d1c
 804b57c:	e8 3f d4 ff ff       	call   80489c0 <__assert_fail@plt>
 804b581:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804b584:	8b 00                	mov    (%eax),%eax
 804b586:	85 c0                	test   %eax,%eax
 804b588:	0f 85 c2 00 00 00    	jne    804b650 <translate_VarDec+0x12a>
 804b58e:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804b591:	8b 40 0c             	mov    0xc(%eax),%eax
 804b594:	8b 00                	mov    (%eax),%eax
 804b596:	85 c0                	test   %eax,%eax
 804b598:	0f 84 b2 00 00 00    	je     804b650 <translate_VarDec+0x12a>
 804b59e:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804b5a1:	8b 40 0c             	mov    0xc(%eax),%eax
 804b5a4:	83 ec 0c             	sub    $0xc,%esp
 804b5a7:	50                   	push   %eax
 804b5a8:	e8 9d 78 00 00       	call   8052e4a <typeSize>
 804b5ad:	83 c4 10             	add    $0x10,%esp
 804b5b0:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804b5b3:	e8 21 f2 ff ff       	call   804a7d9 <newTemp>
 804b5b8:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b5bb:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b5be:	83 ec 08             	sub    $0x8,%esp
 804b5c1:	50                   	push   %eax
 804b5c2:	6a 01                	push   $0x1
 804b5c4:	e8 fd fb ff ff       	call   804b1c6 <newOp>
 804b5c9:	83 c4 10             	add    $0x10,%esp
 804b5cc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b5cf:	ff 75 e4             	pushl  -0x1c(%ebp)
 804b5d2:	ff 75 e0             	pushl  -0x20(%ebp)
 804b5d5:	6a 00                	push   $0x0
 804b5d7:	6a 05                	push   $0x5
 804b5d9:	e8 4e fc ff ff       	call   804b22c <newIC>
 804b5de:	83 c4 10             	add    $0x10,%esp
 804b5e1:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b5e4:	83 ec 08             	sub    $0x8,%esp
 804b5e7:	ff 75 d4             	pushl  -0x2c(%ebp)
 804b5ea:	6a 00                	push   $0x0
 804b5ec:	e8 d5 fb ff ff       	call   804b1c6 <newOp>
 804b5f1:	83 c4 10             	add    $0x10,%esp
 804b5f4:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b5f7:	83 ec 08             	sub    $0x8,%esp
 804b5fa:	ff 75 e0             	pushl  -0x20(%ebp)
 804b5fd:	6a 05                	push   $0x5
 804b5ff:	e8 c2 fb ff ff       	call   804b1c6 <newOp>
 804b604:	83 c4 10             	add    $0x10,%esp
 804b607:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b60a:	6a 00                	push   $0x0
 804b60c:	ff 75 f0             	pushl  -0x10(%ebp)
 804b60f:	ff 75 ec             	pushl  -0x14(%ebp)
 804b612:	6a 00                	push   $0x0
 804b614:	e8 13 fc ff ff       	call   804b22c <newIC>
 804b619:	83 c4 10             	add    $0x10,%esp
 804b61c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b61f:	83 ec 08             	sub    $0x8,%esp
 804b622:	ff 75 f4             	pushl  -0xc(%ebp)
 804b625:	ff 75 e8             	pushl  -0x18(%ebp)
 804b628:	e8 f3 f0 ff ff       	call   804a720 <addTail>
 804b62d:	83 c4 10             	add    $0x10,%esp
 804b630:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b633:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804b636:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804b639:	eb 15                	jmp    804b650 <translate_VarDec+0x12a>
 804b63b:	8b 45 08             	mov    0x8(%ebp),%eax
 804b63e:	8b 40 14             	mov    0x14(%eax),%eax
 804b641:	83 ec 0c             	sub    $0xc,%esp
 804b644:	50                   	push   %eax
 804b645:	e8 dc fe ff ff       	call   804b526 <translate_VarDec>
 804b64a:	83 c4 10             	add    $0x10,%esp
 804b64d:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804b650:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804b653:	c9                   	leave  
 804b654:	c3                   	ret    

0804b655 <translate_FunDec>:
 804b655:	55                   	push   %ebp
 804b656:	89 e5                	mov    %esp,%ebp
 804b658:	83 ec 28             	sub    $0x28,%esp
 804b65b:	8b 45 08             	mov    0x8(%ebp),%eax
 804b65e:	8b 40 14             	mov    0x14(%eax),%eax
 804b661:	8b 40 08             	mov    0x8(%eax),%eax
 804b664:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b667:	8b 45 08             	mov    0x8(%ebp),%eax
 804b66a:	8b 40 14             	mov    0x14(%eax),%eax
 804b66d:	8b 40 08             	mov    0x8(%eax),%eax
 804b670:	83 ec 0c             	sub    $0xc,%esp
 804b673:	50                   	push   %eax
 804b674:	e8 4d 75 00 00       	call   8052bc6 <searchTable>
 804b679:	83 c4 10             	add    $0x10,%esp
 804b67c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b67f:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804b683:	74 0a                	je     804b68f <translate_FunDec+0x3a>
 804b685:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b688:	8b 00                	mov    (%eax),%eax
 804b68a:	83 f8 01             	cmp    $0x1,%eax
 804b68d:	74 19                	je     804b6a8 <translate_FunDec+0x53>
 804b68f:	68 44 3f 05 08       	push   $0x8053f44
 804b694:	68 94 01 00 00       	push   $0x194
 804b699:	68 98 3b 05 08       	push   $0x8053b98
 804b69e:	68 30 3d 05 08       	push   $0x8053d30
 804b6a3:	e8 18 d3 ff ff       	call   80489c0 <__assert_fail@plt>
 804b6a8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b6ab:	8b 40 04             	mov    0x4(%eax),%eax
 804b6ae:	83 ec 08             	sub    $0x8,%esp
 804b6b1:	50                   	push   %eax
 804b6b2:	6a 00                	push   $0x0
 804b6b4:	e8 0d fb ff ff       	call   804b1c6 <newOp>
 804b6b9:	83 c4 10             	add    $0x10,%esp
 804b6bc:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b6bf:	6a 00                	push   $0x0
 804b6c1:	ff 75 e8             	pushl  -0x18(%ebp)
 804b6c4:	6a 00                	push   $0x0
 804b6c6:	6a 06                	push   $0x6
 804b6c8:	e8 5f fb ff ff       	call   804b22c <newIC>
 804b6cd:	83 c4 10             	add    $0x10,%esp
 804b6d0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b6d3:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804b6da:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b6dd:	8b 40 0c             	mov    0xc(%eax),%eax
 804b6e0:	8b 40 04             	mov    0x4(%eax),%eax
 804b6e3:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804b6e6:	eb 47                	jmp    804b72f <translate_FunDec+0xda>
 804b6e8:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b6eb:	8b 00                	mov    (%eax),%eax
 804b6ed:	83 ec 08             	sub    $0x8,%esp
 804b6f0:	50                   	push   %eax
 804b6f1:	6a 00                	push   $0x0
 804b6f3:	e8 ce fa ff ff       	call   804b1c6 <newOp>
 804b6f8:	83 c4 10             	add    $0x10,%esp
 804b6fb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b6fe:	6a 00                	push   $0x0
 804b700:	ff 75 f0             	pushl  -0x10(%ebp)
 804b703:	6a 00                	push   $0x0
 804b705:	6a 07                	push   $0x7
 804b707:	e8 20 fb ff ff       	call   804b22c <newIC>
 804b70c:	83 c4 10             	add    $0x10,%esp
 804b70f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b712:	83 ec 08             	sub    $0x8,%esp
 804b715:	ff 75 f4             	pushl  -0xc(%ebp)
 804b718:	ff 75 d8             	pushl  -0x28(%ebp)
 804b71b:	e8 00 f0 ff ff       	call   804a720 <addTail>
 804b720:	83 c4 10             	add    $0x10,%esp
 804b723:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804b726:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b729:	8b 40 08             	mov    0x8(%eax),%eax
 804b72c:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804b72f:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804b733:	75 b3                	jne    804b6e8 <translate_FunDec+0x93>
 804b735:	83 ec 08             	sub    $0x8,%esp
 804b738:	ff 75 d8             	pushl  -0x28(%ebp)
 804b73b:	ff 75 ec             	pushl  -0x14(%ebp)
 804b73e:	e8 dd ef ff ff       	call   804a720 <addTail>
 804b743:	83 c4 10             	add    $0x10,%esp
 804b746:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b749:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b74c:	c9                   	leave  
 804b74d:	c3                   	ret    

0804b74e <translate_VarList>:
 804b74e:	55                   	push   %ebp
 804b74f:	89 e5                	mov    %esp,%ebp
 804b751:	b8 00 00 00 00       	mov    $0x0,%eax
 804b756:	5d                   	pop    %ebp
 804b757:	c3                   	ret    

0804b758 <translate_CompSt>:
 804b758:	55                   	push   %ebp
 804b759:	89 e5                	mov    %esp,%ebp
 804b75b:	83 ec 18             	sub    $0x18,%esp
 804b75e:	8b 45 08             	mov    0x8(%ebp),%eax
 804b761:	8b 40 18             	mov    0x18(%eax),%eax
 804b764:	83 ec 0c             	sub    $0xc,%esp
 804b767:	50                   	push   %eax
 804b768:	e8 34 00 00 00       	call   804b7a1 <translate_DefList>
 804b76d:	83 c4 10             	add    $0x10,%esp
 804b770:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b773:	8b 45 08             	mov    0x8(%ebp),%eax
 804b776:	8b 40 1c             	mov    0x1c(%eax),%eax
 804b779:	83 ec 0c             	sub    $0xc,%esp
 804b77c:	50                   	push   %eax
 804b77d:	e8 17 02 00 00       	call   804b999 <translate_StmtList>
 804b782:	83 c4 10             	add    $0x10,%esp
 804b785:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b788:	83 ec 08             	sub    $0x8,%esp
 804b78b:	ff 75 f4             	pushl  -0xc(%ebp)
 804b78e:	ff 75 f0             	pushl  -0x10(%ebp)
 804b791:	e8 8a ef ff ff       	call   804a720 <addTail>
 804b796:	83 c4 10             	add    $0x10,%esp
 804b799:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b79c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b79f:	c9                   	leave  
 804b7a0:	c3                   	ret    

0804b7a1 <translate_DefList>:
 804b7a1:	55                   	push   %ebp
 804b7a2:	89 e5                	mov    %esp,%ebp
 804b7a4:	83 ec 18             	sub    $0x18,%esp
 804b7a7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b7ab:	75 07                	jne    804b7b4 <translate_DefList+0x13>
 804b7ad:	b8 00 00 00 00       	mov    $0x0,%eax
 804b7b2:	eb 41                	jmp    804b7f5 <translate_DefList+0x54>
 804b7b4:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7b7:	8b 40 14             	mov    0x14(%eax),%eax
 804b7ba:	83 ec 0c             	sub    $0xc,%esp
 804b7bd:	50                   	push   %eax
 804b7be:	e8 34 00 00 00       	call   804b7f7 <translate_Def>
 804b7c3:	83 c4 10             	add    $0x10,%esp
 804b7c6:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b7c9:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7cc:	8b 40 18             	mov    0x18(%eax),%eax
 804b7cf:	83 ec 0c             	sub    $0xc,%esp
 804b7d2:	50                   	push   %eax
 804b7d3:	e8 c9 ff ff ff       	call   804b7a1 <translate_DefList>
 804b7d8:	83 c4 10             	add    $0x10,%esp
 804b7db:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b7de:	83 ec 08             	sub    $0x8,%esp
 804b7e1:	ff 75 f4             	pushl  -0xc(%ebp)
 804b7e4:	ff 75 f0             	pushl  -0x10(%ebp)
 804b7e7:	e8 34 ef ff ff       	call   804a720 <addTail>
 804b7ec:	83 c4 10             	add    $0x10,%esp
 804b7ef:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b7f2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b7f5:	c9                   	leave  
 804b7f6:	c3                   	ret    

0804b7f7 <translate_Def>:
 804b7f7:	55                   	push   %ebp
 804b7f8:	89 e5                	mov    %esp,%ebp
 804b7fa:	83 ec 08             	sub    $0x8,%esp
 804b7fd:	8b 45 08             	mov    0x8(%ebp),%eax
 804b800:	8b 40 18             	mov    0x18(%eax),%eax
 804b803:	83 ec 0c             	sub    $0xc,%esp
 804b806:	50                   	push   %eax
 804b807:	e8 05 00 00 00       	call   804b811 <translate_DecList>
 804b80c:	83 c4 10             	add    $0x10,%esp
 804b80f:	c9                   	leave  
 804b810:	c3                   	ret    

0804b811 <translate_DecList>:
 804b811:	55                   	push   %ebp
 804b812:	89 e5                	mov    %esp,%ebp
 804b814:	83 ec 18             	sub    $0x18,%esp
 804b817:	8b 45 08             	mov    0x8(%ebp),%eax
 804b81a:	8b 40 14             	mov    0x14(%eax),%eax
 804b81d:	83 ec 0c             	sub    $0xc,%esp
 804b820:	50                   	push   %eax
 804b821:	e8 3f 00 00 00       	call   804b865 <translate_Dec>
 804b826:	83 c4 10             	add    $0x10,%esp
 804b829:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b82c:	8b 45 08             	mov    0x8(%ebp),%eax
 804b82f:	8b 40 10             	mov    0x10(%eax),%eax
 804b832:	83 f8 03             	cmp    $0x3,%eax
 804b835:	75 29                	jne    804b860 <translate_DecList+0x4f>
 804b837:	8b 45 08             	mov    0x8(%ebp),%eax
 804b83a:	8b 40 1c             	mov    0x1c(%eax),%eax
 804b83d:	83 ec 0c             	sub    $0xc,%esp
 804b840:	50                   	push   %eax
 804b841:	e8 cb ff ff ff       	call   804b811 <translate_DecList>
 804b846:	83 c4 10             	add    $0x10,%esp
 804b849:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b84c:	83 ec 08             	sub    $0x8,%esp
 804b84f:	ff 75 f4             	pushl  -0xc(%ebp)
 804b852:	ff 75 f0             	pushl  -0x10(%ebp)
 804b855:	e8 c6 ee ff ff       	call   804a720 <addTail>
 804b85a:	83 c4 10             	add    $0x10,%esp
 804b85d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b860:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b863:	c9                   	leave  
 804b864:	c3                   	ret    

0804b865 <translate_Dec>:
 804b865:	55                   	push   %ebp
 804b866:	89 e5                	mov    %esp,%ebp
 804b868:	83 ec 28             	sub    $0x28,%esp
 804b86b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804b872:	8b 45 08             	mov    0x8(%ebp),%eax
 804b875:	8b 40 10             	mov    0x10(%eax),%eax
 804b878:	83 f8 01             	cmp    $0x1,%eax
 804b87b:	75 1a                	jne    804b897 <translate_Dec+0x32>
 804b87d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b880:	8b 40 14             	mov    0x14(%eax),%eax
 804b883:	83 ec 0c             	sub    $0xc,%esp
 804b886:	50                   	push   %eax
 804b887:	e8 9a fc ff ff       	call   804b526 <translate_VarDec>
 804b88c:	83 c4 10             	add    $0x10,%esp
 804b88f:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b892:	e9 fd 00 00 00       	jmp    804b994 <translate_Dec+0x12f>
 804b897:	8b 45 08             	mov    0x8(%ebp),%eax
 804b89a:	8b 40 10             	mov    0x10(%eax),%eax
 804b89d:	83 f8 03             	cmp    $0x3,%eax
 804b8a0:	0f 85 d5 00 00 00    	jne    804b97b <translate_Dec+0x116>
 804b8a6:	8b 45 08             	mov    0x8(%ebp),%eax
 804b8a9:	8b 40 14             	mov    0x14(%eax),%eax
 804b8ac:	8b 40 14             	mov    0x14(%eax),%eax
 804b8af:	8b 40 04             	mov    0x4(%eax),%eax
 804b8b2:	83 f8 03             	cmp    $0x3,%eax
 804b8b5:	74 19                	je     804b8d0 <translate_Dec+0x6b>
 804b8b7:	68 58 3f 05 08       	push   $0x8053f58
 804b8bc:	68 dd 01 00 00       	push   $0x1dd
 804b8c1:	68 98 3b 05 08       	push   $0x8053b98
 804b8c6:	68 5c 3d 05 08       	push   $0x8053d5c
 804b8cb:	e8 f0 d0 ff ff       	call   80489c0 <__assert_fail@plt>
 804b8d0:	8b 45 08             	mov    0x8(%ebp),%eax
 804b8d3:	8b 40 14             	mov    0x14(%eax),%eax
 804b8d6:	8b 40 14             	mov    0x14(%eax),%eax
 804b8d9:	8b 40 08             	mov    0x8(%eax),%eax
 804b8dc:	83 ec 0c             	sub    $0xc,%esp
 804b8df:	50                   	push   %eax
 804b8e0:	e8 e1 72 00 00       	call   8052bc6 <searchTable>
 804b8e5:	83 c4 10             	add    $0x10,%esp
 804b8e8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b8eb:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804b8ef:	74 09                	je     804b8fa <translate_Dec+0x95>
 804b8f1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b8f4:	8b 00                	mov    (%eax),%eax
 804b8f6:	85 c0                	test   %eax,%eax
 804b8f8:	74 19                	je     804b913 <translate_Dec+0xae>
 804b8fa:	68 58 3f 05 08       	push   $0x8053f58
 804b8ff:	68 df 01 00 00       	push   $0x1df
 804b904:	68 98 3b 05 08       	push   $0x8053b98
 804b909:	68 85 3d 05 08       	push   $0x8053d85
 804b90e:	e8 ad d0 ff ff       	call   80489c0 <__assert_fail@plt>
 804b913:	e8 c1 ee ff ff       	call   804a7d9 <newTemp>
 804b918:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b91b:	8b 45 08             	mov    0x8(%ebp),%eax
 804b91e:	8b 40 1c             	mov    0x1c(%eax),%eax
 804b921:	83 ec 08             	sub    $0x8,%esp
 804b924:	ff 75 e8             	pushl  -0x18(%ebp)
 804b927:	50                   	push   %eax
 804b928:	e8 a8 04 00 00       	call   804bdd5 <translate_Exp>
 804b92d:	83 c4 10             	add    $0x10,%esp
 804b930:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b933:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b936:	8b 40 04             	mov    0x4(%eax),%eax
 804b939:	83 ec 08             	sub    $0x8,%esp
 804b93c:	50                   	push   %eax
 804b93d:	6a 00                	push   $0x0
 804b93f:	e8 82 f8 ff ff       	call   804b1c6 <newOp>
 804b944:	83 c4 10             	add    $0x10,%esp
 804b947:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b94a:	6a 00                	push   $0x0
 804b94c:	ff 75 e8             	pushl  -0x18(%ebp)
 804b94f:	ff 75 f0             	pushl  -0x10(%ebp)
 804b952:	6a 00                	push   $0x0
 804b954:	e8 d3 f8 ff ff       	call   804b22c <newIC>
 804b959:	83 c4 10             	add    $0x10,%esp
 804b95c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b95f:	83 ec 08             	sub    $0x8,%esp
 804b962:	ff 75 f4             	pushl  -0xc(%ebp)
 804b965:	ff 75 ec             	pushl  -0x14(%ebp)
 804b968:	e8 b3 ed ff ff       	call   804a720 <addTail>
 804b96d:	83 c4 10             	add    $0x10,%esp
 804b970:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b973:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b976:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b979:	eb 19                	jmp    804b994 <translate_Dec+0x12f>
 804b97b:	68 58 3f 05 08       	push   $0x8053f58
 804b980:	68 ea 01 00 00       	push   $0x1ea
 804b985:	68 98 3b 05 08       	push   $0x8053b98
 804b98a:	68 9d 3b 05 08       	push   $0x8053b9d
 804b98f:	e8 2c d0 ff ff       	call   80489c0 <__assert_fail@plt>
 804b994:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b997:	c9                   	leave  
 804b998:	c3                   	ret    

0804b999 <translate_StmtList>:
 804b999:	55                   	push   %ebp
 804b99a:	89 e5                	mov    %esp,%ebp
 804b99c:	83 ec 18             	sub    $0x18,%esp
 804b99f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b9a3:	75 07                	jne    804b9ac <translate_StmtList+0x13>
 804b9a5:	b8 00 00 00 00       	mov    $0x0,%eax
 804b9aa:	eb 41                	jmp    804b9ed <translate_StmtList+0x54>
 804b9ac:	8b 45 08             	mov    0x8(%ebp),%eax
 804b9af:	8b 40 14             	mov    0x14(%eax),%eax
 804b9b2:	83 ec 0c             	sub    $0xc,%esp
 804b9b5:	50                   	push   %eax
 804b9b6:	e8 34 00 00 00       	call   804b9ef <translate_Stmt>
 804b9bb:	83 c4 10             	add    $0x10,%esp
 804b9be:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b9c1:	8b 45 08             	mov    0x8(%ebp),%eax
 804b9c4:	8b 40 18             	mov    0x18(%eax),%eax
 804b9c7:	83 ec 0c             	sub    $0xc,%esp
 804b9ca:	50                   	push   %eax
 804b9cb:	e8 c9 ff ff ff       	call   804b999 <translate_StmtList>
 804b9d0:	83 c4 10             	add    $0x10,%esp
 804b9d3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b9d6:	83 ec 08             	sub    $0x8,%esp
 804b9d9:	ff 75 f4             	pushl  -0xc(%ebp)
 804b9dc:	ff 75 f0             	pushl  -0x10(%ebp)
 804b9df:	e8 3c ed ff ff       	call   804a720 <addTail>
 804b9e4:	83 c4 10             	add    $0x10,%esp
 804b9e7:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b9ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b9ed:	c9                   	leave  
 804b9ee:	c3                   	ret    

0804b9ef <translate_Stmt>:
 804b9ef:	55                   	push   %ebp
 804b9f0:	89 e5                	mov    %esp,%ebp
 804b9f2:	81 ec 88 00 00 00    	sub    $0x88,%esp
 804b9f8:	8b 45 08             	mov    0x8(%ebp),%eax
 804b9fb:	8b 40 14             	mov    0x14(%eax),%eax
 804b9fe:	89 45 84             	mov    %eax,-0x7c(%ebp)
 804ba01:	c7 45 80 00 00 00 00 	movl   $0x0,-0x80(%ebp)
 804ba08:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804ba0b:	8b 40 04             	mov    0x4(%eax),%eax
 804ba0e:	83 f8 32             	cmp    $0x32,%eax
 804ba11:	75 18                	jne    804ba2b <translate_Stmt+0x3c>
 804ba13:	83 ec 08             	sub    $0x8,%esp
 804ba16:	6a 00                	push   $0x0
 804ba18:	ff 75 84             	pushl  -0x7c(%ebp)
 804ba1b:	e8 b5 03 00 00       	call   804bdd5 <translate_Exp>
 804ba20:	83 c4 10             	add    $0x10,%esp
 804ba23:	89 45 80             	mov    %eax,-0x80(%ebp)
 804ba26:	e9 a5 03 00 00       	jmp    804bdd0 <translate_Stmt+0x3e1>
 804ba2b:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804ba2e:	8b 40 04             	mov    0x4(%eax),%eax
 804ba31:	83 f8 2b             	cmp    $0x2b,%eax
 804ba34:	75 16                	jne    804ba4c <translate_Stmt+0x5d>
 804ba36:	83 ec 0c             	sub    $0xc,%esp
 804ba39:	ff 75 84             	pushl  -0x7c(%ebp)
 804ba3c:	e8 17 fd ff ff       	call   804b758 <translate_CompSt>
 804ba41:	83 c4 10             	add    $0x10,%esp
 804ba44:	89 45 80             	mov    %eax,-0x80(%ebp)
 804ba47:	e9 84 03 00 00       	jmp    804bdd0 <translate_Stmt+0x3e1>
 804ba4c:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804ba4f:	8b 40 04             	mov    0x4(%eax),%eax
 804ba52:	83 f8 1b             	cmp    $0x1b,%eax
 804ba55:	75 4d                	jne    804baa4 <translate_Stmt+0xb5>
 804ba57:	e8 7d ed ff ff       	call   804a7d9 <newTemp>
 804ba5c:	89 45 88             	mov    %eax,-0x78(%ebp)
 804ba5f:	8b 45 08             	mov    0x8(%ebp),%eax
 804ba62:	8b 40 18             	mov    0x18(%eax),%eax
 804ba65:	83 ec 08             	sub    $0x8,%esp
 804ba68:	ff 75 88             	pushl  -0x78(%ebp)
 804ba6b:	50                   	push   %eax
 804ba6c:	e8 64 03 00 00       	call   804bdd5 <translate_Exp>
 804ba71:	83 c4 10             	add    $0x10,%esp
 804ba74:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804ba77:	6a 00                	push   $0x0
 804ba79:	ff 75 88             	pushl  -0x78(%ebp)
 804ba7c:	6a 00                	push   $0x0
 804ba7e:	6a 09                	push   $0x9
 804ba80:	e8 a7 f7 ff ff       	call   804b22c <newIC>
 804ba85:	83 c4 10             	add    $0x10,%esp
 804ba88:	89 45 90             	mov    %eax,-0x70(%ebp)
 804ba8b:	83 ec 08             	sub    $0x8,%esp
 804ba8e:	ff 75 90             	pushl  -0x70(%ebp)
 804ba91:	ff 75 8c             	pushl  -0x74(%ebp)
 804ba94:	e8 87 ec ff ff       	call   804a720 <addTail>
 804ba99:	83 c4 10             	add    $0x10,%esp
 804ba9c:	89 45 80             	mov    %eax,-0x80(%ebp)
 804ba9f:	e9 2c 03 00 00       	jmp    804bdd0 <translate_Stmt+0x3e1>
 804baa4:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804baa7:	8b 40 04             	mov    0x4(%eax),%eax
 804baaa:	83 f8 1c             	cmp    $0x1c,%eax
 804baad:	0f 85 be 00 00 00    	jne    804bb71 <translate_Stmt+0x182>
 804bab3:	8b 45 08             	mov    0x8(%ebp),%eax
 804bab6:	8b 40 10             	mov    0x10(%eax),%eax
 804bab9:	83 f8 05             	cmp    $0x5,%eax
 804babc:	0f 85 af 00 00 00    	jne    804bb71 <translate_Stmt+0x182>
 804bac2:	e8 42 ed ff ff       	call   804a809 <newLabel>
 804bac7:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804baca:	e8 3a ed ff ff       	call   804a809 <newLabel>
 804bacf:	89 45 98             	mov    %eax,-0x68(%ebp)
 804bad2:	8b 45 08             	mov    0x8(%ebp),%eax
 804bad5:	8b 40 1c             	mov    0x1c(%eax),%eax
 804bad8:	83 ec 04             	sub    $0x4,%esp
 804badb:	ff 75 98             	pushl  -0x68(%ebp)
 804bade:	ff 75 94             	pushl  -0x6c(%ebp)
 804bae1:	50                   	push   %eax
 804bae2:	e8 3c 17 00 00       	call   804d223 <translate_Cond>
 804bae7:	83 c4 10             	add    $0x10,%esp
 804baea:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804baed:	8b 45 08             	mov    0x8(%ebp),%eax
 804baf0:	8b 40 24             	mov    0x24(%eax),%eax
 804baf3:	83 ec 0c             	sub    $0xc,%esp
 804baf6:	50                   	push   %eax
 804baf7:	e8 f3 fe ff ff       	call   804b9ef <translate_Stmt>
 804bafc:	83 c4 10             	add    $0x10,%esp
 804baff:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804bb02:	6a 00                	push   $0x0
 804bb04:	ff 75 94             	pushl  -0x6c(%ebp)
 804bb07:	6a 00                	push   $0x0
 804bb09:	6a 08                	push   $0x8
 804bb0b:	e8 1c f7 ff ff       	call   804b22c <newIC>
 804bb10:	83 c4 10             	add    $0x10,%esp
 804bb13:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804bb16:	6a 00                	push   $0x0
 804bb18:	ff 75 98             	pushl  -0x68(%ebp)
 804bb1b:	6a 00                	push   $0x0
 804bb1d:	6a 08                	push   $0x8
 804bb1f:	e8 08 f7 ff ff       	call   804b22c <newIC>
 804bb24:	83 c4 10             	add    $0x10,%esp
 804bb27:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804bb2a:	83 ec 08             	sub    $0x8,%esp
 804bb2d:	ff 75 a8             	pushl  -0x58(%ebp)
 804bb30:	ff 75 a0             	pushl  -0x60(%ebp)
 804bb33:	e8 e8 eb ff ff       	call   804a720 <addTail>
 804bb38:	83 c4 10             	add    $0x10,%esp
 804bb3b:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804bb3e:	83 ec 08             	sub    $0x8,%esp
 804bb41:	ff 75 a0             	pushl  -0x60(%ebp)
 804bb44:	ff 75 a4             	pushl  -0x5c(%ebp)
 804bb47:	e8 d4 eb ff ff       	call   804a720 <addTail>
 804bb4c:	83 c4 10             	add    $0x10,%esp
 804bb4f:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804bb52:	83 ec 08             	sub    $0x8,%esp
 804bb55:	ff 75 a4             	pushl  -0x5c(%ebp)
 804bb58:	ff 75 9c             	pushl  -0x64(%ebp)
 804bb5b:	e8 c0 eb ff ff       	call   804a720 <addTail>
 804bb60:	83 c4 10             	add    $0x10,%esp
 804bb63:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804bb66:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804bb69:	89 45 80             	mov    %eax,-0x80(%ebp)
 804bb6c:	e9 5f 02 00 00       	jmp    804bdd0 <translate_Stmt+0x3e1>
 804bb71:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804bb74:	8b 40 04             	mov    0x4(%eax),%eax
 804bb77:	83 f8 1c             	cmp    $0x1c,%eax
 804bb7a:	0f 85 3f 01 00 00    	jne    804bcbf <translate_Stmt+0x2d0>
 804bb80:	8b 45 08             	mov    0x8(%ebp),%eax
 804bb83:	8b 40 10             	mov    0x10(%eax),%eax
 804bb86:	83 f8 07             	cmp    $0x7,%eax
 804bb89:	0f 85 30 01 00 00    	jne    804bcbf <translate_Stmt+0x2d0>
 804bb8f:	e8 75 ec ff ff       	call   804a809 <newLabel>
 804bb94:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804bb97:	e8 6d ec ff ff       	call   804a809 <newLabel>
 804bb9c:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804bb9f:	e8 65 ec ff ff       	call   804a809 <newLabel>
 804bba4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804bba7:	8b 45 08             	mov    0x8(%ebp),%eax
 804bbaa:	8b 40 1c             	mov    0x1c(%eax),%eax
 804bbad:	83 ec 04             	sub    $0x4,%esp
 804bbb0:	ff 75 b0             	pushl  -0x50(%ebp)
 804bbb3:	ff 75 ac             	pushl  -0x54(%ebp)
 804bbb6:	50                   	push   %eax
 804bbb7:	e8 67 16 00 00       	call   804d223 <translate_Cond>
 804bbbc:	83 c4 10             	add    $0x10,%esp
 804bbbf:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804bbc2:	8b 45 08             	mov    0x8(%ebp),%eax
 804bbc5:	8b 40 24             	mov    0x24(%eax),%eax
 804bbc8:	83 ec 0c             	sub    $0xc,%esp
 804bbcb:	50                   	push   %eax
 804bbcc:	e8 1e fe ff ff       	call   804b9ef <translate_Stmt>
 804bbd1:	83 c4 10             	add    $0x10,%esp
 804bbd4:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804bbd7:	8b 45 08             	mov    0x8(%ebp),%eax
 804bbda:	8b 40 2c             	mov    0x2c(%eax),%eax
 804bbdd:	83 ec 0c             	sub    $0xc,%esp
 804bbe0:	50                   	push   %eax
 804bbe1:	e8 09 fe ff ff       	call   804b9ef <translate_Stmt>
 804bbe6:	83 c4 10             	add    $0x10,%esp
 804bbe9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804bbec:	6a 00                	push   $0x0
 804bbee:	ff 75 ac             	pushl  -0x54(%ebp)
 804bbf1:	6a 00                	push   $0x0
 804bbf3:	6a 08                	push   $0x8
 804bbf5:	e8 32 f6 ff ff       	call   804b22c <newIC>
 804bbfa:	83 c4 10             	add    $0x10,%esp
 804bbfd:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804bc00:	6a 00                	push   $0x0
 804bc02:	ff 75 b4             	pushl  -0x4c(%ebp)
 804bc05:	6a 00                	push   $0x0
 804bc07:	6a 0a                	push   $0xa
 804bc09:	e8 1e f6 ff ff       	call   804b22c <newIC>
 804bc0e:	83 c4 10             	add    $0x10,%esp
 804bc11:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804bc14:	6a 00                	push   $0x0
 804bc16:	ff 75 b0             	pushl  -0x50(%ebp)
 804bc19:	6a 00                	push   $0x0
 804bc1b:	6a 08                	push   $0x8
 804bc1d:	e8 0a f6 ff ff       	call   804b22c <newIC>
 804bc22:	83 c4 10             	add    $0x10,%esp
 804bc25:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804bc28:	6a 00                	push   $0x0
 804bc2a:	ff 75 b4             	pushl  -0x4c(%ebp)
 804bc2d:	6a 00                	push   $0x0
 804bc2f:	6a 08                	push   $0x8
 804bc31:	e8 f6 f5 ff ff       	call   804b22c <newIC>
 804bc36:	83 c4 10             	add    $0x10,%esp
 804bc39:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804bc3c:	83 ec 08             	sub    $0x8,%esp
 804bc3f:	ff 75 d0             	pushl  -0x30(%ebp)
 804bc42:	ff 75 c0             	pushl  -0x40(%ebp)
 804bc45:	e8 d6 ea ff ff       	call   804a720 <addTail>
 804bc4a:	83 c4 10             	add    $0x10,%esp
 804bc4d:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804bc50:	83 ec 08             	sub    $0x8,%esp
 804bc53:	ff 75 c0             	pushl  -0x40(%ebp)
 804bc56:	ff 75 cc             	pushl  -0x34(%ebp)
 804bc59:	e8 c2 ea ff ff       	call   804a720 <addTail>
 804bc5e:	83 c4 10             	add    $0x10,%esp
 804bc61:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804bc64:	83 ec 08             	sub    $0x8,%esp
 804bc67:	ff 75 cc             	pushl  -0x34(%ebp)
 804bc6a:	ff 75 c8             	pushl  -0x38(%ebp)
 804bc6d:	e8 ae ea ff ff       	call   804a720 <addTail>
 804bc72:	83 c4 10             	add    $0x10,%esp
 804bc75:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804bc78:	83 ec 08             	sub    $0x8,%esp
 804bc7b:	ff 75 c8             	pushl  -0x38(%ebp)
 804bc7e:	ff 75 bc             	pushl  -0x44(%ebp)
 804bc81:	e8 9a ea ff ff       	call   804a720 <addTail>
 804bc86:	83 c4 10             	add    $0x10,%esp
 804bc89:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804bc8c:	83 ec 08             	sub    $0x8,%esp
 804bc8f:	ff 75 bc             	pushl  -0x44(%ebp)
 804bc92:	ff 75 c4             	pushl  -0x3c(%ebp)
 804bc95:	e8 86 ea ff ff       	call   804a720 <addTail>
 804bc9a:	83 c4 10             	add    $0x10,%esp
 804bc9d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804bca0:	83 ec 08             	sub    $0x8,%esp
 804bca3:	ff 75 c4             	pushl  -0x3c(%ebp)
 804bca6:	ff 75 b8             	pushl  -0x48(%ebp)
 804bca9:	e8 72 ea ff ff       	call   804a720 <addTail>
 804bcae:	83 c4 10             	add    $0x10,%esp
 804bcb1:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804bcb4:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804bcb7:	89 45 80             	mov    %eax,-0x80(%ebp)
 804bcba:	e9 11 01 00 00       	jmp    804bdd0 <translate_Stmt+0x3e1>
 804bcbf:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804bcc2:	8b 40 04             	mov    0x4(%eax),%eax
 804bcc5:	83 f8 1e             	cmp    $0x1e,%eax
 804bcc8:	0f 85 02 01 00 00    	jne    804bdd0 <translate_Stmt+0x3e1>
 804bcce:	e8 36 eb ff ff       	call   804a809 <newLabel>
 804bcd3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804bcd6:	e8 2e eb ff ff       	call   804a809 <newLabel>
 804bcdb:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804bcde:	e8 26 eb ff ff       	call   804a809 <newLabel>
 804bce3:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804bce6:	8b 45 08             	mov    0x8(%ebp),%eax
 804bce9:	8b 40 1c             	mov    0x1c(%eax),%eax
 804bcec:	83 ec 04             	sub    $0x4,%esp
 804bcef:	ff 75 dc             	pushl  -0x24(%ebp)
 804bcf2:	ff 75 d8             	pushl  -0x28(%ebp)
 804bcf5:	50                   	push   %eax
 804bcf6:	e8 28 15 00 00       	call   804d223 <translate_Cond>
 804bcfb:	83 c4 10             	add    $0x10,%esp
 804bcfe:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804bd01:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd04:	8b 40 24             	mov    0x24(%eax),%eax
 804bd07:	83 ec 0c             	sub    $0xc,%esp
 804bd0a:	50                   	push   %eax
 804bd0b:	e8 df fc ff ff       	call   804b9ef <translate_Stmt>
 804bd10:	83 c4 10             	add    $0x10,%esp
 804bd13:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804bd16:	6a 00                	push   $0x0
 804bd18:	ff 75 d4             	pushl  -0x2c(%ebp)
 804bd1b:	6a 00                	push   $0x0
 804bd1d:	6a 08                	push   $0x8
 804bd1f:	e8 08 f5 ff ff       	call   804b22c <newIC>
 804bd24:	83 c4 10             	add    $0x10,%esp
 804bd27:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804bd2a:	6a 00                	push   $0x0
 804bd2c:	ff 75 d8             	pushl  -0x28(%ebp)
 804bd2f:	6a 00                	push   $0x0
 804bd31:	6a 08                	push   $0x8
 804bd33:	e8 f4 f4 ff ff       	call   804b22c <newIC>
 804bd38:	83 c4 10             	add    $0x10,%esp
 804bd3b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804bd3e:	6a 00                	push   $0x0
 804bd40:	ff 75 d4             	pushl  -0x2c(%ebp)
 804bd43:	6a 00                	push   $0x0
 804bd45:	6a 0a                	push   $0xa
 804bd47:	e8 e0 f4 ff ff       	call   804b22c <newIC>
 804bd4c:	83 c4 10             	add    $0x10,%esp
 804bd4f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804bd52:	6a 00                	push   $0x0
 804bd54:	ff 75 dc             	pushl  -0x24(%ebp)
 804bd57:	6a 00                	push   $0x0
 804bd59:	6a 08                	push   $0x8
 804bd5b:	e8 cc f4 ff ff       	call   804b22c <newIC>
 804bd60:	83 c4 10             	add    $0x10,%esp
 804bd63:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bd66:	83 ec 08             	sub    $0x8,%esp
 804bd69:	ff 75 f4             	pushl  -0xc(%ebp)
 804bd6c:	ff 75 f0             	pushl  -0x10(%ebp)
 804bd6f:	e8 ac e9 ff ff       	call   804a720 <addTail>
 804bd74:	83 c4 10             	add    $0x10,%esp
 804bd77:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804bd7a:	83 ec 08             	sub    $0x8,%esp
 804bd7d:	ff 75 f0             	pushl  -0x10(%ebp)
 804bd80:	ff 75 e4             	pushl  -0x1c(%ebp)
 804bd83:	e8 98 e9 ff ff       	call   804a720 <addTail>
 804bd88:	83 c4 10             	add    $0x10,%esp
 804bd8b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804bd8e:	83 ec 08             	sub    $0x8,%esp
 804bd91:	ff 75 e4             	pushl  -0x1c(%ebp)
 804bd94:	ff 75 ec             	pushl  -0x14(%ebp)
 804bd97:	e8 84 e9 ff ff       	call   804a720 <addTail>
 804bd9c:	83 c4 10             	add    $0x10,%esp
 804bd9f:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804bda2:	83 ec 08             	sub    $0x8,%esp
 804bda5:	ff 75 ec             	pushl  -0x14(%ebp)
 804bda8:	ff 75 e0             	pushl  -0x20(%ebp)
 804bdab:	e8 70 e9 ff ff       	call   804a720 <addTail>
 804bdb0:	83 c4 10             	add    $0x10,%esp
 804bdb3:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804bdb6:	83 ec 08             	sub    $0x8,%esp
 804bdb9:	ff 75 e0             	pushl  -0x20(%ebp)
 804bdbc:	ff 75 e8             	pushl  -0x18(%ebp)
 804bdbf:	e8 5c e9 ff ff       	call   804a720 <addTail>
 804bdc4:	83 c4 10             	add    $0x10,%esp
 804bdc7:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804bdca:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804bdcd:	89 45 80             	mov    %eax,-0x80(%ebp)
 804bdd0:	8b 45 80             	mov    -0x80(%ebp),%eax
 804bdd3:	c9                   	leave  
 804bdd4:	c3                   	ret    

0804bdd5 <translate_Exp>:
 804bdd5:	55                   	push   %ebp
 804bdd6:	89 e5                	mov    %esp,%ebp
 804bdd8:	81 ec 38 01 00 00    	sub    $0x138,%esp
 804bdde:	8b 45 08             	mov    0x8(%ebp),%eax
 804bde1:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
 804bde7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bdea:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%ebp)
 804bdf0:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804bdf6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bdf9:	31 c0                	xor    %eax,%eax
 804bdfb:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804be01:	8b 40 14             	mov    0x14(%eax),%eax
 804be04:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
 804be0a:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804be10:	8b 40 18             	mov    0x18(%eax),%eax
 804be13:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
 804be19:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804be1f:	8b 40 1c             	mov    0x1c(%eax),%eax
 804be22:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
 804be28:	c7 85 e8 fe ff ff 00 	movl   $0x0,-0x118(%ebp)
 804be2f:	00 00 00 
 804be32:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804be38:	8b 40 04             	mov    0x4(%eax),%eax
 804be3b:	83 f8 32             	cmp    $0x32,%eax
 804be3e:	0f 85 ad 02 00 00    	jne    804c0f1 <translate_Exp+0x31c>
 804be44:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804be4a:	8b 40 04             	mov    0x4(%eax),%eax
 804be4d:	83 f8 0a             	cmp    $0xa,%eax
 804be50:	0f 85 9b 02 00 00    	jne    804c0f1 <translate_Exp+0x31c>
 804be56:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804be5c:	8b 40 14             	mov    0x14(%eax),%eax
 804be5f:	8b 40 04             	mov    0x4(%eax),%eax
 804be62:	83 f8 03             	cmp    $0x3,%eax
 804be65:	0f 85 34 01 00 00    	jne    804bf9f <translate_Exp+0x1ca>
 804be6b:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804be71:	8b 40 14             	mov    0x14(%eax),%eax
 804be74:	8b 40 08             	mov    0x8(%eax),%eax
 804be77:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
 804be7d:	83 ec 0c             	sub    $0xc,%esp
 804be80:	ff b5 0c ff ff ff    	pushl  -0xf4(%ebp)
 804be86:	e8 3b 6d 00 00       	call   8052bc6 <searchTable>
 804be8b:	83 c4 10             	add    $0x10,%esp
 804be8e:	89 85 10 ff ff ff    	mov    %eax,-0xf0(%ebp)
 804be94:	83 bd 10 ff ff ff 00 	cmpl   $0x0,-0xf0(%ebp)
 804be9b:	75 19                	jne    804beb6 <translate_Exp+0xe1>
 804be9d:	68 68 3f 05 08       	push   $0x8053f68
 804bea2:	68 51 02 00 00       	push   $0x251
 804bea7:	68 98 3b 05 08       	push   $0x8053b98
 804beac:	68 9f 3d 05 08       	push   $0x8053d9f
 804beb1:	e8 0a cb ff ff       	call   80489c0 <__assert_fail@plt>
 804beb6:	e8 1e e9 ff ff       	call   804a7d9 <newTemp>
 804bebb:	89 85 14 ff ff ff    	mov    %eax,-0xec(%ebp)
 804bec1:	83 ec 08             	sub    $0x8,%esp
 804bec4:	ff b5 14 ff ff ff    	pushl  -0xec(%ebp)
 804beca:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804bed0:	e8 00 ff ff ff       	call   804bdd5 <translate_Exp>
 804bed5:	83 c4 10             	add    $0x10,%esp
 804bed8:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%ebp)
 804bede:	e8 89 f2 ff ff       	call   804b16c <newInterCodes>
 804bee3:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
 804bee9:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
 804beef:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804bef5:	e8 9f f2 ff ff       	call   804b199 <newOperand>
 804befa:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804bf00:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804bf06:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804bf0c:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804bf12:	8b 95 0c ff ff ff    	mov    -0xf4(%ebp),%edx
 804bf18:	89 50 04             	mov    %edx,0x4(%eax)
 804bf1b:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
 804bf21:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
 804bf27:	89 50 04             	mov    %edx,0x4(%eax)
 804bf2a:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
 804bf30:	8b 95 14 ff ff ff    	mov    -0xec(%ebp),%edx
 804bf36:	89 50 08             	mov    %edx,0x8(%eax)
 804bf39:	83 bd d0 fe ff ff 00 	cmpl   $0x0,-0x130(%ebp)
 804bf40:	74 3b                	je     804bf7d <translate_Exp+0x1a8>
 804bf42:	6a 00                	push   $0x0
 804bf44:	ff b5 1c ff ff ff    	pushl  -0xe4(%ebp)
 804bf4a:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804bf50:	6a 00                	push   $0x0
 804bf52:	e8 d5 f2 ff ff       	call   804b22c <newIC>
 804bf57:	83 c4 10             	add    $0x10,%esp
 804bf5a:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804bf60:	83 ec 08             	sub    $0x8,%esp
 804bf63:	ff b5 20 ff ff ff    	pushl  -0xe0(%ebp)
 804bf69:	ff b5 ec fe ff ff    	pushl  -0x114(%ebp)
 804bf6f:	e8 ac e7 ff ff       	call   804a720 <addTail>
 804bf74:	83 c4 10             	add    $0x10,%esp
 804bf77:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
 804bf7d:	83 ec 08             	sub    $0x8,%esp
 804bf80:	ff b5 ec fe ff ff    	pushl  -0x114(%ebp)
 804bf86:	ff b5 18 ff ff ff    	pushl  -0xe8(%ebp)
 804bf8c:	e8 8f e7 ff ff       	call   804a720 <addTail>
 804bf91:	83 c4 10             	add    $0x10,%esp
 804bf94:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804bf9a:	e9 64 0b 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804bf9f:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804bfa5:	8b 40 14             	mov    0x14(%eax),%eax
 804bfa8:	8b 40 04             	mov    0x4(%eax),%eax
 804bfab:	83 f8 32             	cmp    $0x32,%eax
 804bfae:	0f 85 24 01 00 00    	jne    804c0d8 <translate_Exp+0x303>
 804bfb4:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804bfba:	8b 40 18             	mov    0x18(%eax),%eax
 804bfbd:	8b 40 04             	mov    0x4(%eax),%eax
 804bfc0:	83 f8 12             	cmp    $0x12,%eax
 804bfc3:	74 15                	je     804bfda <translate_Exp+0x205>
 804bfc5:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804bfcb:	8b 40 18             	mov    0x18(%eax),%eax
 804bfce:	8b 40 04             	mov    0x4(%eax),%eax
 804bfd1:	83 f8 16             	cmp    $0x16,%eax
 804bfd4:	0f 85 fe 00 00 00    	jne    804c0d8 <translate_Exp+0x303>
 804bfda:	e8 fa e7 ff ff       	call   804a7d9 <newTemp>
 804bfdf:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bfe5:	83 ec 08             	sub    $0x8,%esp
 804bfe8:	ff b5 24 ff ff ff    	pushl  -0xdc(%ebp)
 804bfee:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804bff4:	e8 dc fd ff ff       	call   804bdd5 <translate_Exp>
 804bff9:	83 c4 10             	add    $0x10,%esp
 804bffc:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
 804c002:	e8 d2 e7 ff ff       	call   804a7d9 <newTemp>
 804c007:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804c00d:	83 ec 08             	sub    $0x8,%esp
 804c010:	ff b5 28 ff ff ff    	pushl  -0xd8(%ebp)
 804c016:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804c01c:	e8 b4 fd ff ff       	call   804bdd5 <translate_Exp>
 804c021:	83 c4 10             	add    $0x10,%esp
 804c024:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c02a:	6a 00                	push   $0x0
 804c02c:	ff b5 28 ff ff ff    	pushl  -0xd8(%ebp)
 804c032:	ff b5 24 ff ff ff    	pushl  -0xdc(%ebp)
 804c038:	6a 00                	push   $0x0
 804c03a:	e8 ed f1 ff ff       	call   804b22c <newIC>
 804c03f:	83 c4 10             	add    $0x10,%esp
 804c042:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
 804c048:	83 ec 08             	sub    $0x8,%esp
 804c04b:	ff b5 30 ff ff ff    	pushl  -0xd0(%ebp)
 804c051:	ff b5 2c ff ff ff    	pushl  -0xd4(%ebp)
 804c057:	e8 c4 e6 ff ff       	call   804a720 <addTail>
 804c05c:	83 c4 10             	add    $0x10,%esp
 804c05f:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c065:	83 ec 08             	sub    $0x8,%esp
 804c068:	ff b5 2c ff ff ff    	pushl  -0xd4(%ebp)
 804c06e:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
 804c074:	e8 a7 e6 ff ff       	call   804a720 <addTail>
 804c079:	83 c4 10             	add    $0x10,%esp
 804c07c:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
 804c082:	83 bd d0 fe ff ff 00 	cmpl   $0x0,-0x130(%ebp)
 804c089:	74 3b                	je     804c0c6 <translate_Exp+0x2f1>
 804c08b:	6a 00                	push   $0x0
 804c08d:	ff b5 24 ff ff ff    	pushl  -0xdc(%ebp)
 804c093:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c099:	6a 00                	push   $0x0
 804c09b:	e8 8c f1 ff ff       	call   804b22c <newIC>
 804c0a0:	83 c4 10             	add    $0x10,%esp
 804c0a3:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%ebp)
 804c0a9:	83 ec 08             	sub    $0x8,%esp
 804c0ac:	ff b5 34 ff ff ff    	pushl  -0xcc(%ebp)
 804c0b2:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
 804c0b8:	e8 63 e6 ff ff       	call   804a720 <addTail>
 804c0bd:	83 c4 10             	add    $0x10,%esp
 804c0c0:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
 804c0c6:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
 804c0cc:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c0d2:	90                   	nop
 804c0d3:	e9 2b 0a 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c0d8:	68 68 3f 05 08       	push   $0x8053f68
 804c0dd:	68 7d 02 00 00       	push   $0x27d
 804c0e2:	68 98 3b 05 08       	push   $0x8053b98
 804c0e7:	68 9d 3b 05 08       	push   $0x8053b9d
 804c0ec:	e8 cf c8 ff ff       	call   80489c0 <__assert_fail@plt>
 804c0f1:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c0f7:	8b 40 04             	mov    0x4(%eax),%eax
 804c0fa:	83 f8 32             	cmp    $0x32,%eax
 804c0fd:	0f 85 f1 00 00 00    	jne    804c1f4 <translate_Exp+0x41f>
 804c103:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804c109:	8b 40 04             	mov    0x4(%eax),%eax
 804c10c:	83 f8 0c             	cmp    $0xc,%eax
 804c10f:	0f 85 df 00 00 00    	jne    804c1f4 <translate_Exp+0x41f>
 804c115:	e8 bf e6 ff ff       	call   804a7d9 <newTemp>
 804c11a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804c120:	e8 b4 e6 ff ff       	call   804a7d9 <newTemp>
 804c125:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
 804c12b:	83 ec 08             	sub    $0x8,%esp
 804c12e:	ff b5 38 ff ff ff    	pushl  -0xc8(%ebp)
 804c134:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804c13a:	e8 96 fc ff ff       	call   804bdd5 <translate_Exp>
 804c13f:	83 c4 10             	add    $0x10,%esp
 804c142:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 804c148:	83 ec 08             	sub    $0x8,%esp
 804c14b:	ff b5 3c ff ff ff    	pushl  -0xc4(%ebp)
 804c151:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804c157:	e8 79 fc ff ff       	call   804bdd5 <translate_Exp>
 804c15c:	83 c4 10             	add    $0x10,%esp
 804c15f:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804c165:	e8 02 f0 ff ff       	call   804b16c <newInterCodes>
 804c16a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804c170:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804c176:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804c17c:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804c182:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
 804c188:	89 50 08             	mov    %edx,0x8(%eax)
 804c18b:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804c191:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
 804c197:	89 50 0c             	mov    %edx,0xc(%eax)
 804c19a:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804c1a0:	8b 95 d0 fe ff ff    	mov    -0x130(%ebp),%edx
 804c1a6:	89 50 04             	mov    %edx,0x4(%eax)
 804c1a9:	83 ec 08             	sub    $0x8,%esp
 804c1ac:	ff b5 48 ff ff ff    	pushl  -0xb8(%ebp)
 804c1b2:	ff b5 44 ff ff ff    	pushl  -0xbc(%ebp)
 804c1b8:	e8 63 e5 ff ff       	call   804a720 <addTail>
 804c1bd:	83 c4 10             	add    $0x10,%esp
 804c1c0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804c1c6:	83 ec 08             	sub    $0x8,%esp
 804c1c9:	ff b5 44 ff ff ff    	pushl  -0xbc(%ebp)
 804c1cf:	ff b5 40 ff ff ff    	pushl  -0xc0(%ebp)
 804c1d5:	e8 46 e5 ff ff       	call   804a720 <addTail>
 804c1da:	83 c4 10             	add    $0x10,%esp
 804c1dd:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 804c1e3:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
 804c1e9:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c1ef:	e9 0f 09 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c1f4:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c1fa:	8b 40 04             	mov    0x4(%eax),%eax
 804c1fd:	83 f8 32             	cmp    $0x32,%eax
 804c200:	0f 85 cf 00 00 00    	jne    804c2d5 <translate_Exp+0x500>
 804c206:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804c20c:	8b 40 04             	mov    0x4(%eax),%eax
 804c20f:	83 f8 0d             	cmp    $0xd,%eax
 804c212:	0f 85 bd 00 00 00    	jne    804c2d5 <translate_Exp+0x500>
 804c218:	e8 bc e5 ff ff       	call   804a7d9 <newTemp>
 804c21d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804c223:	e8 b1 e5 ff ff       	call   804a7d9 <newTemp>
 804c228:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
 804c22e:	83 ec 08             	sub    $0x8,%esp
 804c231:	ff b5 4c ff ff ff    	pushl  -0xb4(%ebp)
 804c237:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804c23d:	e8 93 fb ff ff       	call   804bdd5 <translate_Exp>
 804c242:	83 c4 10             	add    $0x10,%esp
 804c245:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 804c24b:	83 ec 08             	sub    $0x8,%esp
 804c24e:	ff b5 50 ff ff ff    	pushl  -0xb0(%ebp)
 804c254:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804c25a:	e8 76 fb ff ff       	call   804bdd5 <translate_Exp>
 804c25f:	83 c4 10             	add    $0x10,%esp
 804c262:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 804c268:	ff b5 50 ff ff ff    	pushl  -0xb0(%ebp)
 804c26e:	ff b5 4c ff ff ff    	pushl  -0xb4(%ebp)
 804c274:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c27a:	6a 02                	push   $0x2
 804c27c:	e8 ab ef ff ff       	call   804b22c <newIC>
 804c281:	83 c4 10             	add    $0x10,%esp
 804c284:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
 804c28a:	83 ec 08             	sub    $0x8,%esp
 804c28d:	ff b5 5c ff ff ff    	pushl  -0xa4(%ebp)
 804c293:	ff b5 58 ff ff ff    	pushl  -0xa8(%ebp)
 804c299:	e8 82 e4 ff ff       	call   804a720 <addTail>
 804c29e:	83 c4 10             	add    $0x10,%esp
 804c2a1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 804c2a7:	83 ec 08             	sub    $0x8,%esp
 804c2aa:	ff b5 58 ff ff ff    	pushl  -0xa8(%ebp)
 804c2b0:	ff b5 54 ff ff ff    	pushl  -0xac(%ebp)
 804c2b6:	e8 65 e4 ff ff       	call   804a720 <addTail>
 804c2bb:	83 c4 10             	add    $0x10,%esp
 804c2be:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 804c2c4:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804c2ca:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c2d0:	e9 2e 08 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c2d5:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c2db:	8b 40 04             	mov    0x4(%eax),%eax
 804c2de:	83 f8 32             	cmp    $0x32,%eax
 804c2e1:	0f 85 cf 00 00 00    	jne    804c3b6 <translate_Exp+0x5e1>
 804c2e7:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804c2ed:	8b 40 04             	mov    0x4(%eax),%eax
 804c2f0:	83 f8 0e             	cmp    $0xe,%eax
 804c2f3:	0f 85 bd 00 00 00    	jne    804c3b6 <translate_Exp+0x5e1>
 804c2f9:	e8 db e4 ff ff       	call   804a7d9 <newTemp>
 804c2fe:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 804c304:	e8 d0 e4 ff ff       	call   804a7d9 <newTemp>
 804c309:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
 804c30f:	83 ec 08             	sub    $0x8,%esp
 804c312:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804c318:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804c31e:	e8 b2 fa ff ff       	call   804bdd5 <translate_Exp>
 804c323:	83 c4 10             	add    $0x10,%esp
 804c326:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
 804c32c:	83 ec 08             	sub    $0x8,%esp
 804c32f:	ff b5 64 ff ff ff    	pushl  -0x9c(%ebp)
 804c335:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804c33b:	e8 95 fa ff ff       	call   804bdd5 <translate_Exp>
 804c340:	83 c4 10             	add    $0x10,%esp
 804c343:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
 804c349:	ff b5 64 ff ff ff    	pushl  -0x9c(%ebp)
 804c34f:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804c355:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c35b:	6a 03                	push   $0x3
 804c35d:	e8 ca ee ff ff       	call   804b22c <newIC>
 804c362:	83 c4 10             	add    $0x10,%esp
 804c365:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
 804c36b:	83 ec 08             	sub    $0x8,%esp
 804c36e:	ff b5 70 ff ff ff    	pushl  -0x90(%ebp)
 804c374:	ff b5 6c ff ff ff    	pushl  -0x94(%ebp)
 804c37a:	e8 a1 e3 ff ff       	call   804a720 <addTail>
 804c37f:	83 c4 10             	add    $0x10,%esp
 804c382:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
 804c388:	83 ec 08             	sub    $0x8,%esp
 804c38b:	ff b5 6c ff ff ff    	pushl  -0x94(%ebp)
 804c391:	ff b5 68 ff ff ff    	pushl  -0x98(%ebp)
 804c397:	e8 84 e3 ff ff       	call   804a720 <addTail>
 804c39c:	83 c4 10             	add    $0x10,%esp
 804c39f:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
 804c3a5:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
 804c3ab:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c3b1:	e9 4d 07 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c3b6:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c3bc:	8b 40 04             	mov    0x4(%eax),%eax
 804c3bf:	83 f8 32             	cmp    $0x32,%eax
 804c3c2:	0f 85 bd 00 00 00    	jne    804c485 <translate_Exp+0x6b0>
 804c3c8:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804c3ce:	8b 40 04             	mov    0x4(%eax),%eax
 804c3d1:	83 f8 0f             	cmp    $0xf,%eax
 804c3d4:	0f 85 ab 00 00 00    	jne    804c485 <translate_Exp+0x6b0>
 804c3da:	e8 fa e3 ff ff       	call   804a7d9 <newTemp>
 804c3df:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 804c3e5:	e8 ef e3 ff ff       	call   804a7d9 <newTemp>
 804c3ea:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c3f0:	83 ec 08             	sub    $0x8,%esp
 804c3f3:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
 804c3f9:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804c3ff:	e8 d1 f9 ff ff       	call   804bdd5 <translate_Exp>
 804c404:	83 c4 10             	add    $0x10,%esp
 804c407:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804c40d:	83 ec 08             	sub    $0x8,%esp
 804c410:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
 804c416:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804c41c:	e8 b4 f9 ff ff       	call   804bdd5 <translate_Exp>
 804c421:	83 c4 10             	add    $0x10,%esp
 804c424:	89 45 80             	mov    %eax,-0x80(%ebp)
 804c427:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
 804c42d:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
 804c433:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c439:	6a 05                	push   $0x5
 804c43b:	e8 ec ed ff ff       	call   804b22c <newIC>
 804c440:	83 c4 10             	add    $0x10,%esp
 804c443:	89 45 84             	mov    %eax,-0x7c(%ebp)
 804c446:	83 ec 08             	sub    $0x8,%esp
 804c449:	ff 75 84             	pushl  -0x7c(%ebp)
 804c44c:	ff 75 80             	pushl  -0x80(%ebp)
 804c44f:	e8 cc e2 ff ff       	call   804a720 <addTail>
 804c454:	83 c4 10             	add    $0x10,%esp
 804c457:	89 45 80             	mov    %eax,-0x80(%ebp)
 804c45a:	83 ec 08             	sub    $0x8,%esp
 804c45d:	ff 75 80             	pushl  -0x80(%ebp)
 804c460:	ff b5 7c ff ff ff    	pushl  -0x84(%ebp)
 804c466:	e8 b5 e2 ff ff       	call   804a720 <addTail>
 804c46b:	83 c4 10             	add    $0x10,%esp
 804c46e:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804c474:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 804c47a:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c480:	e9 7e 06 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c485:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c48b:	8b 40 04             	mov    0x4(%eax),%eax
 804c48e:	83 f8 14             	cmp    $0x14,%eax
 804c491:	75 22                	jne    804c4b5 <translate_Exp+0x6e0>
 804c493:	83 ec 08             	sub    $0x8,%esp
 804c496:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c49c:	ff b5 04 ff ff ff    	pushl  -0xfc(%ebp)
 804c4a2:	e8 2e f9 ff ff       	call   804bdd5 <translate_Exp>
 804c4a7:	83 c4 10             	add    $0x10,%esp
 804c4aa:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c4b0:	e9 4e 06 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c4b5:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c4bb:	8b 40 04             	mov    0x4(%eax),%eax
 804c4be:	83 f8 0d             	cmp    $0xd,%eax
 804c4c1:	75 6c                	jne    804c52f <translate_Exp+0x75a>
 804c4c3:	e8 11 e3 ff ff       	call   804a7d9 <newTemp>
 804c4c8:	89 45 88             	mov    %eax,-0x78(%ebp)
 804c4cb:	83 ec 08             	sub    $0x8,%esp
 804c4ce:	ff 75 88             	pushl  -0x78(%ebp)
 804c4d1:	ff b5 04 ff ff ff    	pushl  -0xfc(%ebp)
 804c4d7:	e8 f9 f8 ff ff       	call   804bdd5 <translate_Exp>
 804c4dc:	83 c4 10             	add    $0x10,%esp
 804c4df:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804c4e2:	83 ec 08             	sub    $0x8,%esp
 804c4e5:	6a 00                	push   $0x0
 804c4e7:	6a 01                	push   $0x1
 804c4e9:	e8 d8 ec ff ff       	call   804b1c6 <newOp>
 804c4ee:	83 c4 10             	add    $0x10,%esp
 804c4f1:	89 45 90             	mov    %eax,-0x70(%ebp)
 804c4f4:	ff 75 88             	pushl  -0x78(%ebp)
 804c4f7:	ff 75 90             	pushl  -0x70(%ebp)
 804c4fa:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c500:	6a 02                	push   $0x2
 804c502:	e8 25 ed ff ff       	call   804b22c <newIC>
 804c507:	83 c4 10             	add    $0x10,%esp
 804c50a:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804c50d:	83 ec 08             	sub    $0x8,%esp
 804c510:	ff 75 94             	pushl  -0x6c(%ebp)
 804c513:	ff 75 8c             	pushl  -0x74(%ebp)
 804c516:	e8 05 e2 ff ff       	call   804a720 <addTail>
 804c51b:	83 c4 10             	add    $0x10,%esp
 804c51e:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804c521:	8b 45 8c             	mov    -0x74(%ebp),%eax
 804c524:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c52a:	e9 d4 05 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c52f:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c535:	8b 40 04             	mov    0x4(%eax),%eax
 804c538:	83 f8 13             	cmp    $0x13,%eax
 804c53b:	74 40                	je     804c57d <translate_Exp+0x7a8>
 804c53d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c543:	8b 40 04             	mov    0x4(%eax),%eax
 804c546:	83 f8 32             	cmp    $0x32,%eax
 804c549:	0f 85 32 01 00 00    	jne    804c681 <translate_Exp+0x8ac>
 804c54f:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804c555:	8b 40 04             	mov    0x4(%eax),%eax
 804c558:	83 f8 10             	cmp    $0x10,%eax
 804c55b:	74 20                	je     804c57d <translate_Exp+0x7a8>
 804c55d:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804c563:	8b 40 04             	mov    0x4(%eax),%eax
 804c566:	83 f8 11             	cmp    $0x11,%eax
 804c569:	74 12                	je     804c57d <translate_Exp+0x7a8>
 804c56b:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804c571:	8b 40 04             	mov    0x4(%eax),%eax
 804c574:	83 f8 0b             	cmp    $0xb,%eax
 804c577:	0f 85 04 01 00 00    	jne    804c681 <translate_Exp+0x8ac>
 804c57d:	e8 87 e2 ff ff       	call   804a809 <newLabel>
 804c582:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804c585:	e8 7f e2 ff ff       	call   804a809 <newLabel>
 804c58a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804c58d:	83 ec 08             	sub    $0x8,%esp
 804c590:	6a 00                	push   $0x0
 804c592:	6a 01                	push   $0x1
 804c594:	e8 2d ec ff ff       	call   804b1c6 <newOp>
 804c599:	83 c4 10             	add    $0x10,%esp
 804c59c:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804c59f:	6a 00                	push   $0x0
 804c5a1:	ff 75 d8             	pushl  -0x28(%ebp)
 804c5a4:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c5aa:	6a 00                	push   $0x0
 804c5ac:	e8 7b ec ff ff       	call   804b22c <newIC>
 804c5b1:	83 c4 10             	add    $0x10,%esp
 804c5b4:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804c5b7:	83 ec 04             	sub    $0x4,%esp
 804c5ba:	ff 75 d4             	pushl  -0x2c(%ebp)
 804c5bd:	ff 75 d0             	pushl  -0x30(%ebp)
 804c5c0:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804c5c6:	e8 58 0c 00 00       	call   804d223 <translate_Cond>
 804c5cb:	83 c4 10             	add    $0x10,%esp
 804c5ce:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c5d1:	6a 00                	push   $0x0
 804c5d3:	ff 75 d0             	pushl  -0x30(%ebp)
 804c5d6:	6a 00                	push   $0x0
 804c5d8:	6a 08                	push   $0x8
 804c5da:	e8 4d ec ff ff       	call   804b22c <newIC>
 804c5df:	83 c4 10             	add    $0x10,%esp
 804c5e2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c5e5:	83 ec 08             	sub    $0x8,%esp
 804c5e8:	6a 01                	push   $0x1
 804c5ea:	6a 01                	push   $0x1
 804c5ec:	e8 d5 eb ff ff       	call   804b1c6 <newOp>
 804c5f1:	83 c4 10             	add    $0x10,%esp
 804c5f4:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c5f7:	6a 00                	push   $0x0
 804c5f9:	ff 75 e8             	pushl  -0x18(%ebp)
 804c5fc:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c602:	6a 00                	push   $0x0
 804c604:	e8 23 ec ff ff       	call   804b22c <newIC>
 804c609:	83 c4 10             	add    $0x10,%esp
 804c60c:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c60f:	83 ec 08             	sub    $0x8,%esp
 804c612:	ff 75 ec             	pushl  -0x14(%ebp)
 804c615:	ff 75 e4             	pushl  -0x1c(%ebp)
 804c618:	e8 03 e1 ff ff       	call   804a720 <addTail>
 804c61d:	83 c4 10             	add    $0x10,%esp
 804c620:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c623:	6a 00                	push   $0x0
 804c625:	ff 75 d4             	pushl  -0x2c(%ebp)
 804c628:	6a 00                	push   $0x0
 804c62a:	6a 08                	push   $0x8
 804c62c:	e8 fb eb ff ff       	call   804b22c <newIC>
 804c631:	83 c4 10             	add    $0x10,%esp
 804c634:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c637:	83 ec 08             	sub    $0x8,%esp
 804c63a:	ff 75 f0             	pushl  -0x10(%ebp)
 804c63d:	ff 75 e4             	pushl  -0x1c(%ebp)
 804c640:	e8 db e0 ff ff       	call   804a720 <addTail>
 804c645:	83 c4 10             	add    $0x10,%esp
 804c648:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c64b:	83 ec 08             	sub    $0x8,%esp
 804c64e:	ff 75 e4             	pushl  -0x1c(%ebp)
 804c651:	ff 75 e0             	pushl  -0x20(%ebp)
 804c654:	e8 c7 e0 ff ff       	call   804a720 <addTail>
 804c659:	83 c4 10             	add    $0x10,%esp
 804c65c:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c65f:	83 ec 08             	sub    $0x8,%esp
 804c662:	ff 75 e0             	pushl  -0x20(%ebp)
 804c665:	ff 75 dc             	pushl  -0x24(%ebp)
 804c668:	e8 b3 e0 ff ff       	call   804a720 <addTail>
 804c66d:	83 c4 10             	add    $0x10,%esp
 804c670:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804c673:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804c676:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c67c:	e9 82 04 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c681:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c687:	8b 40 04             	mov    0x4(%eax),%eax
 804c68a:	83 f8 03             	cmp    $0x3,%eax
 804c68d:	0f 85 a3 00 00 00    	jne    804c736 <translate_Exp+0x961>
 804c693:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804c699:	8b 40 10             	mov    0x10(%eax),%eax
 804c69c:	83 f8 01             	cmp    $0x1,%eax
 804c69f:	0f 85 91 00 00 00    	jne    804c736 <translate_Exp+0x961>
 804c6a5:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c6ab:	8b 40 08             	mov    0x8(%eax),%eax
 804c6ae:	83 ec 0c             	sub    $0xc,%esp
 804c6b1:	50                   	push   %eax
 804c6b2:	e8 0f 65 00 00       	call   8052bc6 <searchTable>
 804c6b7:	83 c4 10             	add    $0x10,%esp
 804c6ba:	89 45 98             	mov    %eax,-0x68(%ebp)
 804c6bd:	83 7d 98 00          	cmpl   $0x0,-0x68(%ebp)
 804c6c1:	75 19                	jne    804c6dc <translate_Exp+0x907>
 804c6c3:	68 68 3f 05 08       	push   $0x8053f68
 804c6c8:	68 da 02 00 00       	push   $0x2da
 804c6cd:	68 98 3b 05 08       	push   $0x8053b98
 804c6d2:	68 1c 3d 05 08       	push   $0x8053d1c
 804c6d7:	e8 e4 c2 ff ff       	call   80489c0 <__assert_fail@plt>
 804c6dc:	8b 85 d0 fe ff ff    	mov    -0x130(%ebp),%eax
 804c6e2:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804c6e5:	e8 af ea ff ff       	call   804b199 <newOperand>
 804c6ea:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804c6ed:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804c6f0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804c6f6:	8b 45 98             	mov    -0x68(%ebp),%eax
 804c6f9:	8b 50 04             	mov    0x4(%eax),%edx
 804c6fc:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804c6ff:	89 50 04             	mov    %edx,0x4(%eax)
 804c702:	e8 65 ea ff ff       	call   804b16c <newInterCodes>
 804c707:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c70d:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804c713:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804c719:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804c71f:	8b 55 9c             	mov    -0x64(%ebp),%edx
 804c722:	89 50 04             	mov    %edx,0x4(%eax)
 804c725:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804c72b:	8b 55 a0             	mov    -0x60(%ebp),%edx
 804c72e:	89 50 08             	mov    %edx,0x8(%eax)
 804c731:	e9 cd 03 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c736:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c73c:	8b 40 04             	mov    0x4(%eax),%eax
 804c73f:	83 f8 03             	cmp    $0x3,%eax
 804c742:	0f 85 d3 00 00 00    	jne    804c81b <translate_Exp+0xa46>
 804c748:	83 bd 04 ff ff ff 00 	cmpl   $0x0,-0xfc(%ebp)
 804c74f:	0f 84 c6 00 00 00    	je     804c81b <translate_Exp+0xa46>
 804c755:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804c75b:	8b 40 10             	mov    0x10(%eax),%eax
 804c75e:	83 f8 03             	cmp    $0x3,%eax
 804c761:	0f 85 b4 00 00 00    	jne    804c81b <translate_Exp+0xa46>
 804c767:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c76d:	8b 40 08             	mov    0x8(%eax),%eax
 804c770:	83 ec 0c             	sub    $0xc,%esp
 804c773:	50                   	push   %eax
 804c774:	e8 4d 64 00 00       	call   8052bc6 <searchTable>
 804c779:	83 c4 10             	add    $0x10,%esp
 804c77c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804c77f:	83 7d a4 00          	cmpl   $0x0,-0x5c(%ebp)
 804c783:	75 19                	jne    804c79e <translate_Exp+0x9c9>
 804c785:	68 68 3f 05 08       	push   $0x8053f68
 804c78a:	68 e7 02 00 00       	push   $0x2e7
 804c78f:	68 98 3b 05 08       	push   $0x8053b98
 804c794:	68 9f 3d 05 08       	push   $0x8053d9f
 804c799:	e8 22 c2 ff ff       	call   80489c0 <__assert_fail@plt>
 804c79e:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804c7a1:	8b 40 04             	mov    0x4(%eax),%eax
 804c7a4:	83 ec 08             	sub    $0x8,%esp
 804c7a7:	68 a3 3d 05 08       	push   $0x8053da3
 804c7ac:	50                   	push   %eax
 804c7ad:	e8 fe bf ff ff       	call   80487b0 <strcmp@plt>
 804c7b2:	83 c4 10             	add    $0x10,%esp
 804c7b5:	85 c0                	test   %eax,%eax
 804c7b7:	75 25                	jne    804c7de <translate_Exp+0xa09>
 804c7b9:	6a 00                	push   $0x0
 804c7bb:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c7c1:	6a 00                	push   $0x0
 804c7c3:	6a 13                	push   $0x13
 804c7c5:	e8 62 ea ff ff       	call   804b22c <newIC>
 804c7ca:	83 c4 10             	add    $0x10,%esp
 804c7cd:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804c7d0:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804c7d3:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c7d9:	e9 25 03 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c7de:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804c7e1:	8b 40 04             	mov    0x4(%eax),%eax
 804c7e4:	83 ec 08             	sub    $0x8,%esp
 804c7e7:	50                   	push   %eax
 804c7e8:	6a 00                	push   $0x0
 804c7ea:	e8 d7 e9 ff ff       	call   804b1c6 <newOp>
 804c7ef:	83 c4 10             	add    $0x10,%esp
 804c7f2:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804c7f5:	6a 00                	push   $0x0
 804c7f7:	ff 75 ac             	pushl  -0x54(%ebp)
 804c7fa:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c800:	6a 0b                	push   $0xb
 804c802:	e8 25 ea ff ff       	call   804b22c <newIC>
 804c807:	83 c4 10             	add    $0x10,%esp
 804c80a:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804c80d:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804c810:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c816:	e9 e8 02 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c81b:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c821:	8b 40 04             	mov    0x4(%eax),%eax
 804c824:	83 f8 03             	cmp    $0x3,%eax
 804c827:	0f 85 b1 01 00 00    	jne    804c9de <translate_Exp+0xc09>
 804c82d:	83 bd 04 ff ff ff 00 	cmpl   $0x0,-0xfc(%ebp)
 804c834:	0f 84 a4 01 00 00    	je     804c9de <translate_Exp+0xc09>
 804c83a:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804c840:	8b 40 10             	mov    0x10(%eax),%eax
 804c843:	83 f8 04             	cmp    $0x4,%eax
 804c846:	0f 85 92 01 00 00    	jne    804c9de <translate_Exp+0xc09>
 804c84c:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c852:	8b 40 08             	mov    0x8(%eax),%eax
 804c855:	83 ec 0c             	sub    $0xc,%esp
 804c858:	50                   	push   %eax
 804c859:	e8 68 63 00 00       	call   8052bc6 <searchTable>
 804c85e:	83 c4 10             	add    $0x10,%esp
 804c861:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804c864:	83 7d b4 00          	cmpl   $0x0,-0x4c(%ebp)
 804c868:	75 19                	jne    804c883 <translate_Exp+0xaae>
 804c86a:	68 68 3f 05 08       	push   $0x8053f68
 804c86f:	68 f5 02 00 00       	push   $0x2f5
 804c874:	68 98 3b 05 08       	push   $0x8053b98
 804c879:	68 9f 3d 05 08       	push   $0x8053d9f
 804c87e:	e8 3d c1 ff ff       	call   80489c0 <__assert_fail@plt>
 804c883:	c7 85 e4 fe ff ff 00 	movl   $0x0,-0x11c(%ebp)
 804c88a:	00 00 00 
 804c88d:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804c893:	8b 40 1c             	mov    0x1c(%eax),%eax
 804c896:	83 ec 08             	sub    $0x8,%esp
 804c899:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
 804c89f:	52                   	push   %edx
 804c8a0:	50                   	push   %eax
 804c8a1:	e8 d3 08 00 00       	call   804d179 <translate_Args>
 804c8a6:	83 c4 10             	add    $0x10,%esp
 804c8a9:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
 804c8af:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804c8b2:	8b 40 04             	mov    0x4(%eax),%eax
 804c8b5:	83 ec 08             	sub    $0x8,%esp
 804c8b8:	68 a8 3d 05 08       	push   $0x8053da8
 804c8bd:	50                   	push   %eax
 804c8be:	e8 ed be ff ff       	call   80487b0 <strcmp@plt>
 804c8c3:	83 c4 10             	add    $0x10,%esp
 804c8c6:	85 c0                	test   %eax,%eax
 804c8c8:	75 39                	jne    804c903 <translate_Exp+0xb2e>
 804c8ca:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
 804c8d0:	8b 00                	mov    (%eax),%eax
 804c8d2:	6a 00                	push   $0x0
 804c8d4:	50                   	push   %eax
 804c8d5:	6a 00                	push   $0x0
 804c8d7:	6a 14                	push   $0x14
 804c8d9:	e8 4e e9 ff ff       	call   804b22c <newIC>
 804c8de:	83 c4 10             	add    $0x10,%esp
 804c8e1:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804c8e4:	83 ec 08             	sub    $0x8,%esp
 804c8e7:	ff 75 b8             	pushl  -0x48(%ebp)
 804c8ea:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
 804c8f0:	e8 2b de ff ff       	call   804a720 <addTail>
 804c8f5:	83 c4 10             	add    $0x10,%esp
 804c8f8:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
 804c8fe:	e9 ca 00 00 00       	jmp    804c9cd <translate_Exp+0xbf8>
 804c903:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
 804c909:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%ebp)
 804c90f:	c7 85 fc fe ff ff 00 	movl   $0x0,-0x104(%ebp)
 804c916:	00 00 00 
 804c919:	eb 43                	jmp    804c95e <translate_Exp+0xb89>
 804c91b:	8b 85 f8 fe ff ff    	mov    -0x108(%ebp),%eax
 804c921:	8b 00                	mov    (%eax),%eax
 804c923:	6a 00                	push   $0x0
 804c925:	50                   	push   %eax
 804c926:	6a 00                	push   $0x0
 804c928:	6a 0c                	push   $0xc
 804c92a:	e8 fd e8 ff ff       	call   804b22c <newIC>
 804c92f:	83 c4 10             	add    $0x10,%esp
 804c932:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804c935:	83 ec 08             	sub    $0x8,%esp
 804c938:	ff 75 bc             	pushl  -0x44(%ebp)
 804c93b:	ff b5 fc fe ff ff    	pushl  -0x104(%ebp)
 804c941:	e8 da dd ff ff       	call   804a720 <addTail>
 804c946:	83 c4 10             	add    $0x10,%esp
 804c949:	89 85 fc fe ff ff    	mov    %eax,-0x104(%ebp)
 804c94f:	8b 85 f8 fe ff ff    	mov    -0x108(%ebp),%eax
 804c955:	8b 40 04             	mov    0x4(%eax),%eax
 804c958:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%ebp)
 804c95e:	83 bd f8 fe ff ff 00 	cmpl   $0x0,-0x108(%ebp)
 804c965:	75 b4                	jne    804c91b <translate_Exp+0xb46>
 804c967:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804c96a:	8b 40 04             	mov    0x4(%eax),%eax
 804c96d:	83 ec 08             	sub    $0x8,%esp
 804c970:	50                   	push   %eax
 804c971:	6a 00                	push   $0x0
 804c973:	e8 4e e8 ff ff       	call   804b1c6 <newOp>
 804c978:	83 c4 10             	add    $0x10,%esp
 804c97b:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804c97e:	6a 00                	push   $0x0
 804c980:	ff 75 c0             	pushl  -0x40(%ebp)
 804c983:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c989:	6a 0b                	push   $0xb
 804c98b:	e8 9c e8 ff ff       	call   804b22c <newIC>
 804c990:	83 c4 10             	add    $0x10,%esp
 804c993:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804c996:	83 ec 08             	sub    $0x8,%esp
 804c999:	ff 75 c4             	pushl  -0x3c(%ebp)
 804c99c:	ff b5 fc fe ff ff    	pushl  -0x104(%ebp)
 804c9a2:	e8 79 dd ff ff       	call   804a720 <addTail>
 804c9a7:	83 c4 10             	add    $0x10,%esp
 804c9aa:	89 85 fc fe ff ff    	mov    %eax,-0x104(%ebp)
 804c9b0:	83 ec 08             	sub    $0x8,%esp
 804c9b3:	ff b5 fc fe ff ff    	pushl  -0x104(%ebp)
 804c9b9:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
 804c9bf:	e8 5c dd ff ff       	call   804a720 <addTail>
 804c9c4:	83 c4 10             	add    $0x10,%esp
 804c9c7:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
 804c9cd:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
 804c9d3:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c9d9:	e9 25 01 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804c9de:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c9e4:	8b 40 04             	mov    0x4(%eax),%eax
 804c9e7:	83 f8 01             	cmp    $0x1,%eax
 804c9ea:	75 5d                	jne    804ca49 <translate_Exp+0xc74>
 804c9ec:	8b 85 d0 fe ff ff    	mov    -0x130(%ebp),%eax
 804c9f2:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804c9f5:	e8 9f e7 ff ff       	call   804b199 <newOperand>
 804c9fa:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804c9fd:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804ca00:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804ca06:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ca0c:	8b 50 08             	mov    0x8(%eax),%edx
 804ca0f:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804ca12:	89 50 04             	mov    %edx,0x4(%eax)
 804ca15:	e8 52 e7 ff ff       	call   804b16c <newInterCodes>
 804ca1a:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804ca20:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804ca26:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804ca2c:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804ca32:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804ca35:	89 50 08             	mov    %edx,0x8(%eax)
 804ca38:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804ca3e:	8b 55 c8             	mov    -0x38(%ebp),%edx
 804ca41:	89 50 04             	mov    %edx,0x4(%eax)
 804ca44:	e9 ba 00 00 00       	jmp    804cb03 <translate_Exp+0xd2e>
 804ca49:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ca4f:	8b 40 04             	mov    0x4(%eax),%eax
 804ca52:	83 f8 02             	cmp    $0x2,%eax
 804ca55:	75 19                	jne    804ca70 <translate_Exp+0xc9b>
 804ca57:	68 68 3f 05 08       	push   $0x8053f68
 804ca5c:	68 16 03 00 00       	push   $0x316
 804ca61:	68 98 3b 05 08       	push   $0x8053b98
 804ca66:	68 9d 3b 05 08       	push   $0x8053b9d
 804ca6b:	e8 50 bf ff ff       	call   80489c0 <__assert_fail@plt>
 804ca70:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ca76:	8b 40 04             	mov    0x4(%eax),%eax
 804ca79:	83 f8 32             	cmp    $0x32,%eax
 804ca7c:	75 2f                	jne    804caad <translate_Exp+0xcd8>
 804ca7e:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804ca84:	8b 40 04             	mov    0x4(%eax),%eax
 804ca87:	83 f8 12             	cmp    $0x12,%eax
 804ca8a:	75 21                	jne    804caad <translate_Exp+0xcd8>
 804ca8c:	83 ec 04             	sub    $0x4,%esp
 804ca8f:	6a 00                	push   $0x0
 804ca91:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ca97:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804ca9d:	e8 7a 00 00 00       	call   804cb1c <translate_Structure>
 804caa2:	83 c4 10             	add    $0x10,%esp
 804caa5:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804caab:	eb 56                	jmp    804cb03 <translate_Exp+0xd2e>
 804caad:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804cab3:	8b 40 04             	mov    0x4(%eax),%eax
 804cab6:	83 f8 32             	cmp    $0x32,%eax
 804cab9:	75 2f                	jne    804caea <translate_Exp+0xd15>
 804cabb:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804cac1:	8b 40 04             	mov    0x4(%eax),%eax
 804cac4:	83 f8 16             	cmp    $0x16,%eax
 804cac7:	75 21                	jne    804caea <translate_Exp+0xd15>
 804cac9:	83 ec 04             	sub    $0x4,%esp
 804cacc:	6a 00                	push   $0x0
 804cace:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804cad4:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804cada:	e8 61 03 00 00       	call   804ce40 <translate_Array>
 804cadf:	83 c4 10             	add    $0x10,%esp
 804cae2:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804cae8:	eb 19                	jmp    804cb03 <translate_Exp+0xd2e>
 804caea:	68 68 3f 05 08       	push   $0x8053f68
 804caef:	68 1f 03 00 00       	push   $0x31f
 804caf4:	68 98 3b 05 08       	push   $0x8053b98
 804caf9:	68 9d 3b 05 08       	push   $0x8053b9d
 804cafe:	e8 bd be ff ff       	call   80489c0 <__assert_fail@plt>
 804cb03:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804cb09:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804cb0c:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804cb13:	74 05                	je     804cb1a <translate_Exp+0xd45>
 804cb15:	e8 f6 bc ff ff       	call   8048810 <__stack_chk_fail@plt>
 804cb1a:	c9                   	leave  
 804cb1b:	c3                   	ret    

0804cb1c <translate_Structure>:
 804cb1c:	55                   	push   %ebp
 804cb1d:	89 e5                	mov    %esp,%ebp
 804cb1f:	83 ec 68             	sub    $0x68,%esp
 804cb22:	8b 45 08             	mov    0x8(%ebp),%eax
 804cb25:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804cb28:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cb2b:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804cb2e:	8b 45 10             	mov    0x10(%ebp),%eax
 804cb31:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804cb34:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804cb3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804cb3d:	31 c0                	xor    %eax,%eax
 804cb3f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804cb42:	8b 40 14             	mov    0x14(%eax),%eax
 804cb45:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804cb48:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804cb4b:	8b 40 18             	mov    0x18(%eax),%eax
 804cb4e:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804cb51:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804cb54:	8b 40 1c             	mov    0x1c(%eax),%eax
 804cb57:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804cb5a:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
 804cb61:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 804cb68:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 804cb6f:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 804cb76:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804cb79:	8b 40 14             	mov    0x14(%eax),%eax
 804cb7c:	8b 40 04             	mov    0x4(%eax),%eax
 804cb7f:	83 f8 03             	cmp    $0x3,%eax
 804cb82:	0f 85 92 00 00 00    	jne    804cc1a <translate_Structure+0xfe>
 804cb88:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804cb8b:	8b 40 14             	mov    0x14(%eax),%eax
 804cb8e:	8b 40 08             	mov    0x8(%eax),%eax
 804cb91:	83 ec 0c             	sub    $0xc,%esp
 804cb94:	50                   	push   %eax
 804cb95:	e8 2c 60 00 00       	call   8052bc6 <searchTable>
 804cb9a:	83 c4 10             	add    $0x10,%esp
 804cb9d:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804cba0:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 804cba4:	74 16                	je     804cbbc <translate_Structure+0xa0>
 804cba6:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804cba9:	8b 00                	mov    (%eax),%eax
 804cbab:	85 c0                	test   %eax,%eax
 804cbad:	75 0d                	jne    804cbbc <translate_Structure+0xa0>
 804cbaf:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804cbb2:	8b 40 0c             	mov    0xc(%eax),%eax
 804cbb5:	8b 00                	mov    (%eax),%eax
 804cbb7:	83 f8 02             	cmp    $0x2,%eax
 804cbba:	74 19                	je     804cbd5 <translate_Structure+0xb9>
 804cbbc:	68 78 3f 05 08       	push   $0x8053f78
 804cbc1:	68 33 03 00 00       	push   $0x333
 804cbc6:	68 98 3b 05 08       	push   $0x8053b98
 804cbcb:	68 b0 3d 05 08       	push   $0x8053db0
 804cbd0:	e8 eb bd ff ff       	call   80489c0 <__assert_fail@plt>
 804cbd5:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804cbd8:	8b 40 0c             	mov    0xc(%eax),%eax
 804cbdb:	8b 40 04             	mov    0x4(%eax),%eax
 804cbde:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804cbe1:	e8 f3 db ff ff       	call   804a7d9 <newTemp>
 804cbe6:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804cbe9:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804cbec:	8b 40 04             	mov    0x4(%eax),%eax
 804cbef:	83 ec 08             	sub    $0x8,%esp
 804cbf2:	50                   	push   %eax
 804cbf3:	6a 00                	push   $0x0
 804cbf5:	e8 cc e5 ff ff       	call   804b1c6 <newOp>
 804cbfa:	83 c4 10             	add    $0x10,%esp
 804cbfd:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804cc00:	6a 00                	push   $0x0
 804cc02:	ff 75 dc             	pushl  -0x24(%ebp)
 804cc05:	ff 75 c4             	pushl  -0x3c(%ebp)
 804cc08:	6a 00                	push   $0x0
 804cc0a:	e8 1d e6 ff ff       	call   804b22c <newIC>
 804cc0f:	83 c4 10             	add    $0x10,%esp
 804cc12:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804cc15:	e9 d2 00 00 00       	jmp    804ccec <translate_Structure+0x1d0>
 804cc1a:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804cc1d:	8b 40 18             	mov    0x18(%eax),%eax
 804cc20:	8b 40 04             	mov    0x4(%eax),%eax
 804cc23:	83 f8 12             	cmp    $0x12,%eax
 804cc26:	75 5c                	jne    804cc84 <translate_Structure+0x168>
 804cc28:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804cc2f:	e8 a5 db ff ff       	call   804a7d9 <newTemp>
 804cc34:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804cc37:	83 ec 04             	sub    $0x4,%esp
 804cc3a:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 804cc3d:	50                   	push   %eax
 804cc3e:	ff 75 c4             	pushl  -0x3c(%ebp)
 804cc41:	ff 75 cc             	pushl  -0x34(%ebp)
 804cc44:	e8 d3 fe ff ff       	call   804cb1c <translate_Structure>
 804cc49:	83 c4 10             	add    $0x10,%esp
 804cc4c:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804cc4f:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804cc52:	85 c0                	test   %eax,%eax
 804cc54:	74 0a                	je     804cc60 <translate_Structure+0x144>
 804cc56:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804cc59:	8b 00                	mov    (%eax),%eax
 804cc5b:	83 f8 02             	cmp    $0x2,%eax
 804cc5e:	74 19                	je     804cc79 <translate_Structure+0x15d>
 804cc60:	68 78 3f 05 08       	push   $0x8053f78
 804cc65:	68 40 03 00 00       	push   $0x340
 804cc6a:	68 98 3b 05 08       	push   $0x8053b98
 804cc6f:	68 ec 3d 05 08       	push   $0x8053dec
 804cc74:	e8 47 bd ff ff       	call   80489c0 <__assert_fail@plt>
 804cc79:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804cc7c:	8b 40 04             	mov    0x4(%eax),%eax
 804cc7f:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804cc82:	eb 68                	jmp    804ccec <translate_Structure+0x1d0>
 804cc84:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804cc87:	8b 40 18             	mov    0x18(%eax),%eax
 804cc8a:	8b 40 04             	mov    0x4(%eax),%eax
 804cc8d:	83 f8 16             	cmp    $0x16,%eax
 804cc90:	75 5a                	jne    804ccec <translate_Structure+0x1d0>
 804cc92:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804cc99:	e8 3b db ff ff       	call   804a7d9 <newTemp>
 804cc9e:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804cca1:	83 ec 04             	sub    $0x4,%esp
 804cca4:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 804cca7:	50                   	push   %eax
 804cca8:	ff 75 c4             	pushl  -0x3c(%ebp)
 804ccab:	ff 75 cc             	pushl  -0x34(%ebp)
 804ccae:	e8 8d 01 00 00       	call   804ce40 <translate_Array>
 804ccb3:	83 c4 10             	add    $0x10,%esp
 804ccb6:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804ccb9:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804ccbc:	85 c0                	test   %eax,%eax
 804ccbe:	74 0a                	je     804ccca <translate_Structure+0x1ae>
 804ccc0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804ccc3:	8b 00                	mov    (%eax),%eax
 804ccc5:	83 f8 02             	cmp    $0x2,%eax
 804ccc8:	74 19                	je     804cce3 <translate_Structure+0x1c7>
 804ccca:	68 78 3f 05 08       	push   $0x8053f78
 804cccf:	68 49 03 00 00       	push   $0x349
 804ccd4:	68 98 3b 05 08       	push   $0x8053b98
 804ccd9:	68 ec 3d 05 08       	push   $0x8053dec
 804ccde:	e8 dd bc ff ff       	call   80489c0 <__assert_fail@plt>
 804cce3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804cce6:	8b 40 04             	mov    0x4(%eax),%eax
 804cce9:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804ccec:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804ccef:	8b 40 04             	mov    0x4(%eax),%eax
 804ccf2:	83 f8 03             	cmp    $0x3,%eax
 804ccf5:	74 19                	je     804cd10 <translate_Structure+0x1f4>
 804ccf7:	68 78 3f 05 08       	push   $0x8053f78
 804ccfc:	68 4d 03 00 00       	push   $0x34d
 804cd01:	68 98 3b 05 08       	push   $0x8053b98
 804cd06:	68 0c 3e 05 08       	push   $0x8053e0c
 804cd0b:	e8 b0 bc ff ff       	call   80489c0 <__assert_fail@plt>
 804cd10:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804cd13:	8b 40 08             	mov    0x8(%eax),%eax
 804cd16:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804cd19:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 804cd20:	eb 1e                	jmp    804cd40 <translate_Structure+0x224>
 804cd22:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804cd25:	8b 40 04             	mov    0x4(%eax),%eax
 804cd28:	83 ec 0c             	sub    $0xc,%esp
 804cd2b:	50                   	push   %eax
 804cd2c:	e8 19 61 00 00       	call   8052e4a <typeSize>
 804cd31:	83 c4 10             	add    $0x10,%esp
 804cd34:	01 45 c8             	add    %eax,-0x38(%ebp)
 804cd37:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804cd3a:	8b 40 08             	mov    0x8(%eax),%eax
 804cd3d:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804cd40:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
 804cd44:	74 18                	je     804cd5e <translate_Structure+0x242>
 804cd46:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804cd49:	8b 00                	mov    (%eax),%eax
 804cd4b:	83 ec 08             	sub    $0x8,%esp
 804cd4e:	ff 75 e0             	pushl  -0x20(%ebp)
 804cd51:	50                   	push   %eax
 804cd52:	e8 30 67 00 00       	call   8053487 <safe_strcmp>
 804cd57:	83 c4 10             	add    $0x10,%esp
 804cd5a:	85 c0                	test   %eax,%eax
 804cd5c:	75 c4                	jne    804cd22 <translate_Structure+0x206>
 804cd5e:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
 804cd62:	75 19                	jne    804cd7d <translate_Structure+0x261>
 804cd64:	68 78 3f 05 08       	push   $0x8053f78
 804cd69:	68 55 03 00 00       	push   $0x355
 804cd6e:	68 98 3b 05 08       	push   $0x8053b98
 804cd73:	68 21 3e 05 08       	push   $0x8053e21
 804cd78:	e8 43 bc ff ff       	call   80489c0 <__assert_fail@plt>
 804cd7d:	83 7d 9c 00          	cmpl   $0x0,-0x64(%ebp)
 804cd81:	74 0b                	je     804cd8e <translate_Structure+0x272>
 804cd83:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804cd86:	8b 50 04             	mov    0x4(%eax),%edx
 804cd89:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804cd8c:	89 10                	mov    %edx,(%eax)
 804cd8e:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804cd91:	83 ec 08             	sub    $0x8,%esp
 804cd94:	50                   	push   %eax
 804cd95:	6a 01                	push   $0x1
 804cd97:	e8 2a e4 ff ff       	call   804b1c6 <newOp>
 804cd9c:	83 c4 10             	add    $0x10,%esp
 804cd9f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804cda2:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804cda5:	8b 40 04             	mov    0x4(%eax),%eax
 804cda8:	8b 00                	mov    (%eax),%eax
 804cdaa:	85 c0                	test   %eax,%eax
 804cdac:	75 4c                	jne    804cdfa <translate_Structure+0x2de>
 804cdae:	e8 26 da ff ff       	call   804a7d9 <newTemp>
 804cdb3:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804cdb6:	ff 75 e4             	pushl  -0x1c(%ebp)
 804cdb9:	ff 75 c4             	pushl  -0x3c(%ebp)
 804cdbc:	ff 75 e8             	pushl  -0x18(%ebp)
 804cdbf:	6a 01                	push   $0x1
 804cdc1:	e8 66 e4 ff ff       	call   804b22c <newIC>
 804cdc6:	83 c4 10             	add    $0x10,%esp
 804cdc9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804cdcc:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804cdcf:	c7 00 06 00 00 00    	movl   $0x6,(%eax)
 804cdd5:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804cdd8:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804cddb:	89 50 04             	mov    %edx,0x4(%eax)
 804cdde:	83 ec 08             	sub    $0x8,%esp
 804cde1:	ff 75 ec             	pushl  -0x14(%ebp)
 804cde4:	ff 75 bc             	pushl  -0x44(%ebp)
 804cde7:	e8 34 d9 ff ff       	call   804a720 <addTail>
 804cdec:	83 c4 10             	add    $0x10,%esp
 804cdef:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804cdf2:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804cdf5:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804cdf8:	eb 30                	jmp    804ce2a <translate_Structure+0x30e>
 804cdfa:	ff 75 e4             	pushl  -0x1c(%ebp)
 804cdfd:	ff 75 c4             	pushl  -0x3c(%ebp)
 804ce00:	ff 75 a0             	pushl  -0x60(%ebp)
 804ce03:	6a 01                	push   $0x1
 804ce05:	e8 22 e4 ff ff       	call   804b22c <newIC>
 804ce0a:	83 c4 10             	add    $0x10,%esp
 804ce0d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804ce10:	83 ec 08             	sub    $0x8,%esp
 804ce13:	ff 75 f0             	pushl  -0x10(%ebp)
 804ce16:	ff 75 bc             	pushl  -0x44(%ebp)
 804ce19:	e8 02 d9 ff ff       	call   804a720 <addTail>
 804ce1e:	83 c4 10             	add    $0x10,%esp
 804ce21:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804ce24:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804ce27:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804ce2a:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804ce2d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804ce30:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804ce37:	74 05                	je     804ce3e <translate_Structure+0x322>
 804ce39:	e8 d2 b9 ff ff       	call   8048810 <__stack_chk_fail@plt>
 804ce3e:	c9                   	leave  
 804ce3f:	c3                   	ret    

0804ce40 <translate_Array>:
 804ce40:	55                   	push   %ebp
 804ce41:	89 e5                	mov    %esp,%ebp
 804ce43:	83 ec 68             	sub    $0x68,%esp
 804ce46:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce49:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804ce4c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ce4f:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804ce52:	8b 45 10             	mov    0x10(%ebp),%eax
 804ce55:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804ce58:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804ce5e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ce61:	31 c0                	xor    %eax,%eax
 804ce63:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804ce66:	8b 40 14             	mov    0x14(%eax),%eax
 804ce69:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804ce6c:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804ce6f:	8b 40 18             	mov    0x18(%eax),%eax
 804ce72:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804ce75:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804ce78:	8b 40 1c             	mov    0x1c(%eax),%eax
 804ce7b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804ce7e:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
 804ce85:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804ce8c:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804ce93:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
 804ce9a:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804ce9d:	8b 40 14             	mov    0x14(%eax),%eax
 804cea0:	8b 40 04             	mov    0x4(%eax),%eax
 804cea3:	83 f8 03             	cmp    $0x3,%eax
 804cea6:	0f 85 8f 00 00 00    	jne    804cf3b <translate_Array+0xfb>
 804ceac:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804ceaf:	8b 40 14             	mov    0x14(%eax),%eax
 804ceb2:	8b 40 08             	mov    0x8(%eax),%eax
 804ceb5:	83 ec 0c             	sub    $0xc,%esp
 804ceb8:	50                   	push   %eax
 804ceb9:	e8 08 5d 00 00       	call   8052bc6 <searchTable>
 804cebe:	83 c4 10             	add    $0x10,%esp
 804cec1:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804cec4:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
 804cec8:	74 16                	je     804cee0 <translate_Array+0xa0>
 804ceca:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804cecd:	8b 00                	mov    (%eax),%eax
 804cecf:	85 c0                	test   %eax,%eax
 804ced1:	75 0d                	jne    804cee0 <translate_Array+0xa0>
 804ced3:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804ced6:	8b 40 0c             	mov    0xc(%eax),%eax
 804ced9:	8b 00                	mov    (%eax),%eax
 804cedb:	83 f8 01             	cmp    $0x1,%eax
 804cede:	74 19                	je     804cef9 <translate_Array+0xb9>
 804cee0:	68 8c 3f 05 08       	push   $0x8053f8c
 804cee5:	68 80 03 00 00       	push   $0x380
 804ceea:	68 98 3b 05 08       	push   $0x8053b98
 804ceef:	68 28 3e 05 08       	push   $0x8053e28
 804cef4:	e8 c7 ba ff ff       	call   80489c0 <__assert_fail@plt>
 804cef9:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804cefc:	8b 40 0c             	mov    0xc(%eax),%eax
 804ceff:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804cf02:	e8 d2 d8 ff ff       	call   804a7d9 <newTemp>
 804cf07:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804cf0a:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804cf0d:	8b 40 04             	mov    0x4(%eax),%eax
 804cf10:	83 ec 08             	sub    $0x8,%esp
 804cf13:	50                   	push   %eax
 804cf14:	6a 00                	push   $0x0
 804cf16:	e8 ab e2 ff ff       	call   804b1c6 <newOp>
 804cf1b:	83 c4 10             	add    $0x10,%esp
 804cf1e:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804cf21:	6a 00                	push   $0x0
 804cf23:	ff 75 cc             	pushl  -0x34(%ebp)
 804cf26:	ff 75 b4             	pushl  -0x4c(%ebp)
 804cf29:	6a 00                	push   $0x0
 804cf2b:	e8 fc e2 ff ff       	call   804b22c <newIC>
 804cf30:	83 c4 10             	add    $0x10,%esp
 804cf33:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804cf36:	e9 dc 00 00 00       	jmp    804d017 <translate_Array+0x1d7>
 804cf3b:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804cf3e:	8b 40 18             	mov    0x18(%eax),%eax
 804cf41:	8b 40 04             	mov    0x4(%eax),%eax
 804cf44:	83 f8 12             	cmp    $0x12,%eax
 804cf47:	75 59                	jne    804cfa2 <translate_Array+0x162>
 804cf49:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
 804cf50:	e8 84 d8 ff ff       	call   804a7d9 <newTemp>
 804cf55:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804cf58:	83 ec 04             	sub    $0x4,%esp
 804cf5b:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804cf5e:	50                   	push   %eax
 804cf5f:	ff 75 b4             	pushl  -0x4c(%ebp)
 804cf62:	ff 75 bc             	pushl  -0x44(%ebp)
 804cf65:	e8 b2 fb ff ff       	call   804cb1c <translate_Structure>
 804cf6a:	83 c4 10             	add    $0x10,%esp
 804cf6d:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804cf70:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804cf73:	85 c0                	test   %eax,%eax
 804cf75:	74 0a                	je     804cf81 <translate_Array+0x141>
 804cf77:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804cf7a:	8b 00                	mov    (%eax),%eax
 804cf7c:	83 f8 01             	cmp    $0x1,%eax
 804cf7f:	74 19                	je     804cf9a <translate_Array+0x15a>
 804cf81:	68 8c 3f 05 08       	push   $0x8053f8c
 804cf86:	68 8d 03 00 00       	push   $0x38d
 804cf8b:	68 98 3b 05 08       	push   $0x8053b98
 804cf90:	68 5f 3e 05 08       	push   $0x8053e5f
 804cf95:	e8 26 ba ff ff       	call   80489c0 <__assert_fail@plt>
 804cf9a:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804cf9d:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804cfa0:	eb 75                	jmp    804d017 <translate_Array+0x1d7>
 804cfa2:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804cfa5:	8b 40 18             	mov    0x18(%eax),%eax
 804cfa8:	8b 40 04             	mov    0x4(%eax),%eax
 804cfab:	83 f8 16             	cmp    $0x16,%eax
 804cfae:	75 67                	jne    804d017 <translate_Array+0x1d7>
 804cfb0:	83 ec 0c             	sub    $0xc,%esp
 804cfb3:	68 7c 3e 05 08       	push   $0x8053e7c
 804cfb8:	e8 03 b8 ff ff       	call   80487c0 <printf@plt>
 804cfbd:	83 c4 10             	add    $0x10,%esp
 804cfc0:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
 804cfc7:	e8 0d d8 ff ff       	call   804a7d9 <newTemp>
 804cfcc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804cfcf:	83 ec 04             	sub    $0x4,%esp
 804cfd2:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804cfd5:	50                   	push   %eax
 804cfd6:	ff 75 b4             	pushl  -0x4c(%ebp)
 804cfd9:	ff 75 bc             	pushl  -0x44(%ebp)
 804cfdc:	e8 5f fe ff ff       	call   804ce40 <translate_Array>
 804cfe1:	83 c4 10             	add    $0x10,%esp
 804cfe4:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804cfe7:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804cfea:	85 c0                	test   %eax,%eax
 804cfec:	74 0a                	je     804cff8 <translate_Array+0x1b8>
 804cfee:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804cff1:	8b 00                	mov    (%eax),%eax
 804cff3:	83 f8 01             	cmp    $0x1,%eax
 804cff6:	74 19                	je     804d011 <translate_Array+0x1d1>
 804cff8:	68 8c 3f 05 08       	push   $0x8053f8c
 804cffd:	68 9a 03 00 00       	push   $0x39a
 804d002:	68 98 3b 05 08       	push   $0x8053b98
 804d007:	68 5f 3e 05 08       	push   $0x8053e5f
 804d00c:	e8 af b9 ff ff       	call   80489c0 <__assert_fail@plt>
 804d011:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804d014:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804d017:	83 7d 9c 00          	cmpl   $0x0,-0x64(%ebp)
 804d01b:	74 0b                	je     804d028 <translate_Array+0x1e8>
 804d01d:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d020:	8b 50 04             	mov    0x4(%eax),%edx
 804d023:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804d026:	89 10                	mov    %edx,(%eax)
 804d028:	e8 ac d7 ff ff       	call   804a7d9 <newTemp>
 804d02d:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d030:	83 ec 08             	sub    $0x8,%esp
 804d033:	ff 75 d0             	pushl  -0x30(%ebp)
 804d036:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d039:	e8 97 ed ff ff       	call   804bdd5 <translate_Exp>
 804d03e:	83 c4 10             	add    $0x10,%esp
 804d041:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804d044:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d047:	8b 40 04             	mov    0x4(%eax),%eax
 804d04a:	83 ec 0c             	sub    $0xc,%esp
 804d04d:	50                   	push   %eax
 804d04e:	e8 f7 5d 00 00       	call   8052e4a <typeSize>
 804d053:	83 c4 10             	add    $0x10,%esp
 804d056:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804d059:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d05c:	83 ec 08             	sub    $0x8,%esp
 804d05f:	50                   	push   %eax
 804d060:	6a 01                	push   $0x1
 804d062:	e8 5f e1 ff ff       	call   804b1c6 <newOp>
 804d067:	83 c4 10             	add    $0x10,%esp
 804d06a:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804d06d:	e8 67 d7 ff ff       	call   804a7d9 <newTemp>
 804d072:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d075:	ff 75 d0             	pushl  -0x30(%ebp)
 804d078:	ff 75 dc             	pushl  -0x24(%ebp)
 804d07b:	ff 75 e0             	pushl  -0x20(%ebp)
 804d07e:	6a 03                	push   $0x3
 804d080:	e8 a7 e1 ff ff       	call   804b22c <newIC>
 804d085:	83 c4 10             	add    $0x10,%esp
 804d088:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d08b:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d08e:	8b 40 04             	mov    0x4(%eax),%eax
 804d091:	8b 00                	mov    (%eax),%eax
 804d093:	85 c0                	test   %eax,%eax
 804d095:	75 74                	jne    804d10b <translate_Array+0x2cb>
 804d097:	e8 3d d7 ff ff       	call   804a7d9 <newTemp>
 804d09c:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d09f:	ff 75 e0             	pushl  -0x20(%ebp)
 804d0a2:	ff 75 b4             	pushl  -0x4c(%ebp)
 804d0a5:	ff 75 e8             	pushl  -0x18(%ebp)
 804d0a8:	6a 01                	push   $0x1
 804d0aa:	e8 7d e1 ff ff       	call   804b22c <newIC>
 804d0af:	83 c4 10             	add    $0x10,%esp
 804d0b2:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d0b5:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804d0b8:	c7 00 06 00 00 00    	movl   $0x6,(%eax)
 804d0be:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804d0c1:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804d0c4:	89 50 04             	mov    %edx,0x4(%eax)
 804d0c7:	83 ec 08             	sub    $0x8,%esp
 804d0ca:	ff 75 ec             	pushl  -0x14(%ebp)
 804d0cd:	ff 75 e4             	pushl  -0x1c(%ebp)
 804d0d0:	e8 4b d6 ff ff       	call   804a720 <addTail>
 804d0d5:	83 c4 10             	add    $0x10,%esp
 804d0d8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d0db:	83 ec 08             	sub    $0x8,%esp
 804d0de:	ff 75 e4             	pushl  -0x1c(%ebp)
 804d0e1:	ff 75 d4             	pushl  -0x2c(%ebp)
 804d0e4:	e8 37 d6 ff ff       	call   804a720 <addTail>
 804d0e9:	83 c4 10             	add    $0x10,%esp
 804d0ec:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804d0ef:	83 ec 08             	sub    $0x8,%esp
 804d0f2:	ff 75 d4             	pushl  -0x2c(%ebp)
 804d0f5:	ff 75 b0             	pushl  -0x50(%ebp)
 804d0f8:	e8 23 d6 ff ff       	call   804a720 <addTail>
 804d0fd:	83 c4 10             	add    $0x10,%esp
 804d100:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d103:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804d106:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804d109:	eb 58                	jmp    804d163 <translate_Array+0x323>
 804d10b:	ff 75 e0             	pushl  -0x20(%ebp)
 804d10e:	ff 75 b4             	pushl  -0x4c(%ebp)
 804d111:	ff 75 a0             	pushl  -0x60(%ebp)
 804d114:	6a 01                	push   $0x1
 804d116:	e8 11 e1 ff ff       	call   804b22c <newIC>
 804d11b:	83 c4 10             	add    $0x10,%esp
 804d11e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d121:	83 ec 08             	sub    $0x8,%esp
 804d124:	ff 75 f0             	pushl  -0x10(%ebp)
 804d127:	ff 75 e4             	pushl  -0x1c(%ebp)
 804d12a:	e8 f1 d5 ff ff       	call   804a720 <addTail>
 804d12f:	83 c4 10             	add    $0x10,%esp
 804d132:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d135:	83 ec 08             	sub    $0x8,%esp
 804d138:	ff 75 e4             	pushl  -0x1c(%ebp)
 804d13b:	ff 75 d4             	pushl  -0x2c(%ebp)
 804d13e:	e8 dd d5 ff ff       	call   804a720 <addTail>
 804d143:	83 c4 10             	add    $0x10,%esp
 804d146:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804d149:	83 ec 08             	sub    $0x8,%esp
 804d14c:	ff 75 d4             	pushl  -0x2c(%ebp)
 804d14f:	ff 75 b0             	pushl  -0x50(%ebp)
 804d152:	e8 c9 d5 ff ff       	call   804a720 <addTail>
 804d157:	83 c4 10             	add    $0x10,%esp
 804d15a:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d15d:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804d160:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804d163:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804d166:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804d169:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804d170:	74 05                	je     804d177 <translate_Array+0x337>
 804d172:	e8 99 b6 ff ff       	call   8048810 <__stack_chk_fail@plt>
 804d177:	c9                   	leave  
 804d178:	c3                   	ret    

0804d179 <translate_Args>:
 804d179:	55                   	push   %ebp
 804d17a:	89 e5                	mov    %esp,%ebp
 804d17c:	83 ec 18             	sub    $0x18,%esp
 804d17f:	e8 55 d6 ff ff       	call   804a7d9 <newTemp>
 804d184:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d187:	8b 45 08             	mov    0x8(%ebp),%eax
 804d18a:	8b 40 14             	mov    0x14(%eax),%eax
 804d18d:	83 ec 08             	sub    $0x8,%esp
 804d190:	ff 75 ec             	pushl  -0x14(%ebp)
 804d193:	50                   	push   %eax
 804d194:	e8 3c ec ff ff       	call   804bdd5 <translate_Exp>
 804d199:	83 c4 10             	add    $0x10,%esp
 804d19c:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d19f:	83 ec 0c             	sub    $0xc,%esp
 804d1a2:	6a 08                	push   $0x8
 804d1a4:	e8 d7 b6 ff ff       	call   8048880 <malloc@plt>
 804d1a9:	83 c4 10             	add    $0x10,%esp
 804d1ac:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d1af:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d1b2:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804d1b5:	89 10                	mov    %edx,(%eax)
 804d1b7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d1ba:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804d1c1:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d1c4:	8b 00                	mov    (%eax),%eax
 804d1c6:	85 c0                	test   %eax,%eax
 804d1c8:	75 0a                	jne    804d1d4 <translate_Args+0x5b>
 804d1ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d1cd:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804d1d0:	89 10                	mov    %edx,(%eax)
 804d1d2:	eb 13                	jmp    804d1e7 <translate_Args+0x6e>
 804d1d4:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d1d7:	8b 10                	mov    (%eax),%edx
 804d1d9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d1dc:	89 50 04             	mov    %edx,0x4(%eax)
 804d1df:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d1e2:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804d1e5:	89 10                	mov    %edx,(%eax)
 804d1e7:	8b 45 08             	mov    0x8(%ebp),%eax
 804d1ea:	8b 40 10             	mov    0x10(%eax),%eax
 804d1ed:	83 f8 03             	cmp    $0x3,%eax
 804d1f0:	75 2c                	jne    804d21e <translate_Args+0xa5>
 804d1f2:	8b 45 08             	mov    0x8(%ebp),%eax
 804d1f5:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d1f8:	83 ec 08             	sub    $0x8,%esp
 804d1fb:	ff 75 0c             	pushl  0xc(%ebp)
 804d1fe:	50                   	push   %eax
 804d1ff:	e8 75 ff ff ff       	call   804d179 <translate_Args>
 804d204:	83 c4 10             	add    $0x10,%esp
 804d207:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d20a:	83 ec 08             	sub    $0x8,%esp
 804d20d:	ff 75 f4             	pushl  -0xc(%ebp)
 804d210:	ff 75 e8             	pushl  -0x18(%ebp)
 804d213:	e8 08 d5 ff ff       	call   804a720 <addTail>
 804d218:	83 c4 10             	add    $0x10,%esp
 804d21b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d21e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d221:	c9                   	leave  
 804d222:	c3                   	ret    

0804d223 <translate_Cond>:
 804d223:	55                   	push   %ebp
 804d224:	89 e5                	mov    %esp,%ebp
 804d226:	83 ec 68             	sub    $0x68,%esp
 804d229:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804d22d:	74 0b                	je     804d23a <translate_Cond+0x17>
 804d22f:	8b 45 08             	mov    0x8(%ebp),%eax
 804d232:	8b 40 04             	mov    0x4(%eax),%eax
 804d235:	83 f8 32             	cmp    $0x32,%eax
 804d238:	74 19                	je     804d253 <translate_Cond+0x30>
 804d23a:	68 9c 3f 05 08       	push   $0x8053f9c
 804d23f:	68 e0 03 00 00       	push   $0x3e0
 804d244:	68 98 3b 05 08       	push   $0x8053b98
 804d249:	68 e2 3e 05 08       	push   $0x8053ee2
 804d24e:	e8 6d b7 ff ff       	call   80489c0 <__assert_fail@plt>
 804d253:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
 804d25a:	8b 45 08             	mov    0x8(%ebp),%eax
 804d25d:	8b 40 14             	mov    0x14(%eax),%eax
 804d260:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804d263:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d266:	8b 40 04             	mov    0x4(%eax),%eax
 804d269:	83 f8 32             	cmp    $0x32,%eax
 804d26c:	0f 85 d9 00 00 00    	jne    804d34b <translate_Cond+0x128>
 804d272:	8b 45 08             	mov    0x8(%ebp),%eax
 804d275:	8b 40 18             	mov    0x18(%eax),%eax
 804d278:	8b 40 04             	mov    0x4(%eax),%eax
 804d27b:	83 f8 0b             	cmp    $0xb,%eax
 804d27e:	0f 85 c7 00 00 00    	jne    804d34b <translate_Cond+0x128>
 804d284:	e8 50 d5 ff ff       	call   804a7d9 <newTemp>
 804d289:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804d28c:	e8 48 d5 ff ff       	call   804a7d9 <newTemp>
 804d291:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804d294:	8b 45 08             	mov    0x8(%ebp),%eax
 804d297:	8b 40 14             	mov    0x14(%eax),%eax
 804d29a:	83 ec 08             	sub    $0x8,%esp
 804d29d:	ff 75 a8             	pushl  -0x58(%ebp)
 804d2a0:	50                   	push   %eax
 804d2a1:	e8 2f eb ff ff       	call   804bdd5 <translate_Exp>
 804d2a6:	83 c4 10             	add    $0x10,%esp
 804d2a9:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d2ac:	8b 45 08             	mov    0x8(%ebp),%eax
 804d2af:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d2b2:	83 ec 08             	sub    $0x8,%esp
 804d2b5:	ff 75 ac             	pushl  -0x54(%ebp)
 804d2b8:	50                   	push   %eax
 804d2b9:	e8 17 eb ff ff       	call   804bdd5 <translate_Exp>
 804d2be:	83 c4 10             	add    $0x10,%esp
 804d2c1:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804d2c4:	8b 45 08             	mov    0x8(%ebp),%eax
 804d2c7:	8b 40 18             	mov    0x18(%eax),%eax
 804d2ca:	83 ec 0c             	sub    $0xc,%esp
 804d2cd:	50                   	push   %eax
 804d2ce:	e8 a9 df ff ff       	call   804b27c <getRelop>
 804d2d3:	83 c4 10             	add    $0x10,%esp
 804d2d6:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804d2d9:	ff 75 ac             	pushl  -0x54(%ebp)
 804d2dc:	ff 75 a8             	pushl  -0x58(%ebp)
 804d2df:	ff 75 0c             	pushl  0xc(%ebp)
 804d2e2:	ff 75 b8             	pushl  -0x48(%ebp)
 804d2e5:	e8 42 df ff ff       	call   804b22c <newIC>
 804d2ea:	83 c4 10             	add    $0x10,%esp
 804d2ed:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804d2f0:	6a 00                	push   $0x0
 804d2f2:	ff 75 10             	pushl  0x10(%ebp)
 804d2f5:	6a 00                	push   $0x0
 804d2f7:	6a 0a                	push   $0xa
 804d2f9:	e8 2e df ff ff       	call   804b22c <newIC>
 804d2fe:	83 c4 10             	add    $0x10,%esp
 804d301:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804d304:	83 ec 08             	sub    $0x8,%esp
 804d307:	ff 75 c0             	pushl  -0x40(%ebp)
 804d30a:	ff 75 bc             	pushl  -0x44(%ebp)
 804d30d:	e8 0e d4 ff ff       	call   804a720 <addTail>
 804d312:	83 c4 10             	add    $0x10,%esp
 804d315:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804d318:	83 ec 08             	sub    $0x8,%esp
 804d31b:	ff 75 bc             	pushl  -0x44(%ebp)
 804d31e:	ff 75 b4             	pushl  -0x4c(%ebp)
 804d321:	e8 fa d3 ff ff       	call   804a720 <addTail>
 804d326:	83 c4 10             	add    $0x10,%esp
 804d329:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804d32c:	83 ec 08             	sub    $0x8,%esp
 804d32f:	ff 75 b4             	pushl  -0x4c(%ebp)
 804d332:	ff 75 b0             	pushl  -0x50(%ebp)
 804d335:	e8 e6 d3 ff ff       	call   804a720 <addTail>
 804d33a:	83 c4 10             	add    $0x10,%esp
 804d33d:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d340:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804d343:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804d346:	e9 f9 01 00 00       	jmp    804d544 <translate_Cond+0x321>
 804d34b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d34e:	8b 40 04             	mov    0x4(%eax),%eax
 804d351:	83 f8 32             	cmp    $0x32,%eax
 804d354:	0f 85 97 00 00 00    	jne    804d3f1 <translate_Cond+0x1ce>
 804d35a:	8b 45 08             	mov    0x8(%ebp),%eax
 804d35d:	8b 40 18             	mov    0x18(%eax),%eax
 804d360:	8b 40 04             	mov    0x4(%eax),%eax
 804d363:	83 f8 10             	cmp    $0x10,%eax
 804d366:	0f 85 85 00 00 00    	jne    804d3f1 <translate_Cond+0x1ce>
 804d36c:	e8 98 d4 ff ff       	call   804a809 <newLabel>
 804d371:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804d374:	8b 45 08             	mov    0x8(%ebp),%eax
 804d377:	8b 40 14             	mov    0x14(%eax),%eax
 804d37a:	83 ec 04             	sub    $0x4,%esp
 804d37d:	ff 75 10             	pushl  0x10(%ebp)
 804d380:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d383:	50                   	push   %eax
 804d384:	e8 9a fe ff ff       	call   804d223 <translate_Cond>
 804d389:	83 c4 10             	add    $0x10,%esp
 804d38c:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804d38f:	8b 45 08             	mov    0x8(%ebp),%eax
 804d392:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d395:	83 ec 04             	sub    $0x4,%esp
 804d398:	ff 75 10             	pushl  0x10(%ebp)
 804d39b:	ff 75 0c             	pushl  0xc(%ebp)
 804d39e:	50                   	push   %eax
 804d39f:	e8 7f fe ff ff       	call   804d223 <translate_Cond>
 804d3a4:	83 c4 10             	add    $0x10,%esp
 804d3a7:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804d3aa:	6a 00                	push   $0x0
 804d3ac:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d3af:	6a 00                	push   $0x0
 804d3b1:	6a 08                	push   $0x8
 804d3b3:	e8 74 de ff ff       	call   804b22c <newIC>
 804d3b8:	83 c4 10             	add    $0x10,%esp
 804d3bb:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d3be:	83 ec 08             	sub    $0x8,%esp
 804d3c1:	ff 75 cc             	pushl  -0x34(%ebp)
 804d3c4:	ff 75 d0             	pushl  -0x30(%ebp)
 804d3c7:	e8 54 d3 ff ff       	call   804a720 <addTail>
 804d3cc:	83 c4 10             	add    $0x10,%esp
 804d3cf:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d3d2:	83 ec 08             	sub    $0x8,%esp
 804d3d5:	ff 75 d0             	pushl  -0x30(%ebp)
 804d3d8:	ff 75 c8             	pushl  -0x38(%ebp)
 804d3db:	e8 40 d3 ff ff       	call   804a720 <addTail>
 804d3e0:	83 c4 10             	add    $0x10,%esp
 804d3e3:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804d3e6:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d3e9:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804d3ec:	e9 53 01 00 00       	jmp    804d544 <translate_Cond+0x321>
 804d3f1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d3f4:	8b 40 04             	mov    0x4(%eax),%eax
 804d3f7:	83 f8 32             	cmp    $0x32,%eax
 804d3fa:	0f 85 97 00 00 00    	jne    804d497 <translate_Cond+0x274>
 804d400:	8b 45 08             	mov    0x8(%ebp),%eax
 804d403:	8b 40 18             	mov    0x18(%eax),%eax
 804d406:	8b 40 04             	mov    0x4(%eax),%eax
 804d409:	83 f8 10             	cmp    $0x10,%eax
 804d40c:	0f 85 85 00 00 00    	jne    804d497 <translate_Cond+0x274>
 804d412:	e8 f2 d3 ff ff       	call   804a809 <newLabel>
 804d417:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804d41a:	8b 45 08             	mov    0x8(%ebp),%eax
 804d41d:	8b 40 14             	mov    0x14(%eax),%eax
 804d420:	83 ec 04             	sub    $0x4,%esp
 804d423:	ff 75 d4             	pushl  -0x2c(%ebp)
 804d426:	ff 75 0c             	pushl  0xc(%ebp)
 804d429:	50                   	push   %eax
 804d42a:	e8 f4 fd ff ff       	call   804d223 <translate_Cond>
 804d42f:	83 c4 10             	add    $0x10,%esp
 804d432:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804d435:	8b 45 08             	mov    0x8(%ebp),%eax
 804d438:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d43b:	83 ec 04             	sub    $0x4,%esp
 804d43e:	ff 75 10             	pushl  0x10(%ebp)
 804d441:	ff 75 0c             	pushl  0xc(%ebp)
 804d444:	50                   	push   %eax
 804d445:	e8 d9 fd ff ff       	call   804d223 <translate_Cond>
 804d44a:	83 c4 10             	add    $0x10,%esp
 804d44d:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804d450:	6a 00                	push   $0x0
 804d452:	ff 75 d4             	pushl  -0x2c(%ebp)
 804d455:	6a 00                	push   $0x0
 804d457:	6a 08                	push   $0x8
 804d459:	e8 ce dd ff ff       	call   804b22c <newIC>
 804d45e:	83 c4 10             	add    $0x10,%esp
 804d461:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d464:	83 ec 08             	sub    $0x8,%esp
 804d467:	ff 75 dc             	pushl  -0x24(%ebp)
 804d46a:	ff 75 e0             	pushl  -0x20(%ebp)
 804d46d:	e8 ae d2 ff ff       	call   804a720 <addTail>
 804d472:	83 c4 10             	add    $0x10,%esp
 804d475:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d478:	83 ec 08             	sub    $0x8,%esp
 804d47b:	ff 75 e0             	pushl  -0x20(%ebp)
 804d47e:	ff 75 d8             	pushl  -0x28(%ebp)
 804d481:	e8 9a d2 ff ff       	call   804a720 <addTail>
 804d486:	83 c4 10             	add    $0x10,%esp
 804d489:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804d48c:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d48f:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804d492:	e9 ad 00 00 00       	jmp    804d544 <translate_Cond+0x321>
 804d497:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d49a:	8b 40 04             	mov    0x4(%eax),%eax
 804d49d:	83 f8 13             	cmp    $0x13,%eax
 804d4a0:	75 1c                	jne    804d4be <translate_Cond+0x29b>
 804d4a2:	83 ec 04             	sub    $0x4,%esp
 804d4a5:	ff 75 0c             	pushl  0xc(%ebp)
 804d4a8:	ff 75 10             	pushl  0x10(%ebp)
 804d4ab:	ff 75 08             	pushl  0x8(%ebp)
 804d4ae:	e8 70 fd ff ff       	call   804d223 <translate_Cond>
 804d4b3:	83 c4 10             	add    $0x10,%esp
 804d4b6:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804d4b9:	e9 86 00 00 00       	jmp    804d544 <translate_Cond+0x321>
 804d4be:	e8 16 d3 ff ff       	call   804a7d9 <newTemp>
 804d4c3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d4c6:	83 ec 08             	sub    $0x8,%esp
 804d4c9:	ff 75 e4             	pushl  -0x1c(%ebp)
 804d4cc:	ff 75 08             	pushl  0x8(%ebp)
 804d4cf:	e8 01 e9 ff ff       	call   804bdd5 <translate_Exp>
 804d4d4:	83 c4 10             	add    $0x10,%esp
 804d4d7:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d4da:	83 ec 08             	sub    $0x8,%esp
 804d4dd:	6a 00                	push   $0x0
 804d4df:	6a 01                	push   $0x1
 804d4e1:	e8 e0 dc ff ff       	call   804b1c6 <newOp>
 804d4e6:	83 c4 10             	add    $0x10,%esp
 804d4e9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d4ec:	ff 75 ec             	pushl  -0x14(%ebp)
 804d4ef:	ff 75 e4             	pushl  -0x1c(%ebp)
 804d4f2:	ff 75 0c             	pushl  0xc(%ebp)
 804d4f5:	6a 12                	push   $0x12
 804d4f7:	e8 30 dd ff ff       	call   804b22c <newIC>
 804d4fc:	83 c4 10             	add    $0x10,%esp
 804d4ff:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d502:	6a 00                	push   $0x0
 804d504:	ff 75 10             	pushl  0x10(%ebp)
 804d507:	6a 00                	push   $0x0
 804d509:	6a 0a                	push   $0xa
 804d50b:	e8 1c dd ff ff       	call   804b22c <newIC>
 804d510:	83 c4 10             	add    $0x10,%esp
 804d513:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d516:	83 ec 08             	sub    $0x8,%esp
 804d519:	ff 75 f4             	pushl  -0xc(%ebp)
 804d51c:	ff 75 f0             	pushl  -0x10(%ebp)
 804d51f:	e8 fc d1 ff ff       	call   804a720 <addTail>
 804d524:	83 c4 10             	add    $0x10,%esp
 804d527:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d52a:	83 ec 08             	sub    $0x8,%esp
 804d52d:	ff 75 f0             	pushl  -0x10(%ebp)
 804d530:	ff 75 e8             	pushl  -0x18(%ebp)
 804d533:	e8 e8 d1 ff ff       	call   804a720 <addTail>
 804d538:	83 c4 10             	add    $0x10,%esp
 804d53b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d53e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d541:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804d544:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804d547:	c9                   	leave  
 804d548:	c3                   	ret    

0804d549 <yydestruct>:
 804d549:	55                   	push   %ebp
 804d54a:	89 e5                	mov    %esp,%ebp
 804d54c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804d550:	75 07                	jne    804d559 <yydestruct+0x10>
 804d552:	c7 45 08 25 46 05 08 	movl   $0x8054625,0x8(%ebp)
 804d559:	90                   	nop
 804d55a:	5d                   	pop    %ebp
 804d55b:	c3                   	ret    

0804d55c <yyparse>:
 804d55c:	55                   	push   %ebp
 804d55d:	89 e5                	mov    %esp,%ebp
 804d55f:	81 ec d8 11 00 00    	sub    $0x11d8,%esp
 804d565:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804d56b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d56e:	31 c0                	xor    %eax,%eax
 804d570:	c7 85 64 ee ff ff 00 	movl   $0x0,-0x119c(%ebp)
 804d577:	00 00 00 
 804d57a:	c7 85 68 ee ff ff 00 	movl   $0x0,-0x1198(%ebp)
 804d581:	00 00 00 
 804d584:	8d 85 c4 ee ff ff    	lea    -0x113c(%ebp),%eax
 804d58a:	89 85 40 ee ff ff    	mov    %eax,-0x11c0(%ebp)
 804d590:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804d596:	89 85 44 ee ff ff    	mov    %eax,-0x11bc(%ebp)
 804d59c:	8d 85 54 f0 ff ff    	lea    -0xfac(%ebp),%eax
 804d5a2:	89 85 48 ee ff ff    	mov    %eax,-0x11b8(%ebp)
 804d5a8:	8b 85 48 ee ff ff    	mov    -0x11b8(%ebp),%eax
 804d5ae:	89 85 4c ee ff ff    	mov    %eax,-0x11b4(%ebp)
 804d5b4:	8d 85 74 f3 ff ff    	lea    -0xc8c(%ebp),%eax
 804d5ba:	89 85 50 ee ff ff    	mov    %eax,-0x11b0(%ebp)
 804d5c0:	8b 85 50 ee ff ff    	mov    -0x11b0(%ebp),%eax
 804d5c6:	89 85 54 ee ff ff    	mov    %eax,-0x11ac(%ebp)
 804d5cc:	c7 85 58 ee ff ff c8 	movl   $0xc8,-0x11a8(%ebp)
 804d5d3:	00 00 00 
 804d5d6:	c7 85 38 ee ff ff 00 	movl   $0x0,-0x11c8(%ebp)
 804d5dd:	00 00 00 
 804d5e0:	c7 85 3c ee ff ff 00 	movl   $0x0,-0x11c4(%ebp)
 804d5e7:	00 00 00 
 804d5ea:	c7 05 58 81 05 08 00 	movl   $0x0,0x8058158
 804d5f1:	00 00 00 
 804d5f4:	c7 05 60 81 05 08 fe 	movl   $0xfffffffe,0x8058160
 804d5fb:	ff ff ff 
 804d5fe:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804d604:	8b 15 ac 80 05 08    	mov    0x80580ac,%edx
 804d60a:	89 10                	mov    %edx,(%eax)
 804d60c:	8b 15 b0 80 05 08    	mov    0x80580b0,%edx
 804d612:	89 50 04             	mov    %edx,0x4(%eax)
 804d615:	8b 15 b4 80 05 08    	mov    0x80580b4,%edx
 804d61b:	89 50 08             	mov    %edx,0x8(%eax)
 804d61e:	8b 15 b8 80 05 08    	mov    0x80580b8,%edx
 804d624:	89 50 0c             	mov    %edx,0xc(%eax)
 804d627:	eb 07                	jmp    804d630 <yyparse+0xd4>
 804d629:	83 85 44 ee ff ff 02 	addl   $0x2,-0x11bc(%ebp)
 804d630:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804d636:	89 c2                	mov    %eax,%edx
 804d638:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 804d63e:	66 89 10             	mov    %dx,(%eax)
 804d641:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804d647:	05 ff ff ff 7f       	add    $0x7fffffff,%eax
 804d64c:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804d64f:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804d655:	01 d0                	add    %edx,%eax
 804d657:	3b 85 44 ee ff ff    	cmp    -0x11bc(%ebp),%eax
 804d65d:	0f 87 17 02 00 00    	ja     804d87a <yyparse+0x31e>
 804d663:	8b 95 44 ee ff ff    	mov    -0x11bc(%ebp),%edx
 804d669:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804d66f:	29 c2                	sub    %eax,%edx
 804d671:	89 d0                	mov    %edx,%eax
 804d673:	d1 f8                	sar    %eax
 804d675:	83 c0 01             	add    $0x1,%eax
 804d678:	89 85 6c ee ff ff    	mov    %eax,-0x1194(%ebp)
 804d67e:	81 bd 58 ee ff ff 0f 	cmpl   $0x270f,-0x11a8(%ebp)
 804d685:	27 00 00 
 804d688:	0f 87 28 25 00 00    	ja     804fbb6 <yyparse+0x265a>
 804d68e:	d1 a5 58 ee ff ff    	shll   -0x11a8(%ebp)
 804d694:	81 bd 58 ee ff ff 10 	cmpl   $0x2710,-0x11a8(%ebp)
 804d69b:	27 00 00 
 804d69e:	76 0a                	jbe    804d6aa <yyparse+0x14e>
 804d6a0:	c7 85 58 ee ff ff 10 	movl   $0x2710,-0x11a8(%ebp)
 804d6a7:	27 00 00 
 804d6aa:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804d6b0:	89 85 70 ee ff ff    	mov    %eax,-0x1190(%ebp)
 804d6b6:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804d6bc:	6b c0 16             	imul   $0x16,%eax,%eax
 804d6bf:	83 c0 1e             	add    $0x1e,%eax
 804d6c2:	83 ec 0c             	sub    $0xc,%esp
 804d6c5:	50                   	push   %eax
 804d6c6:	e8 b5 b1 ff ff       	call   8048880 <malloc@plt>
 804d6cb:	83 c4 10             	add    $0x10,%esp
 804d6ce:	89 85 74 ee ff ff    	mov    %eax,-0x118c(%ebp)
 804d6d4:	83 bd 74 ee ff ff 00 	cmpl   $0x0,-0x118c(%ebp)
 804d6db:	0f 84 d8 24 00 00    	je     804fbb9 <yyparse+0x265d>
 804d6e1:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804d6e7:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 804d6ea:	8b 95 74 ee ff ff    	mov    -0x118c(%ebp),%edx
 804d6f0:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804d6f6:	83 ec 04             	sub    $0x4,%esp
 804d6f9:	51                   	push   %ecx
 804d6fa:	50                   	push   %eax
 804d6fb:	52                   	push   %edx
 804d6fc:	e8 df b0 ff ff       	call   80487e0 <memcpy@plt>
 804d701:	83 c4 10             	add    $0x10,%esp
 804d704:	8b 85 74 ee ff ff    	mov    -0x118c(%ebp),%eax
 804d70a:	89 85 40 ee ff ff    	mov    %eax,-0x11c0(%ebp)
 804d710:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804d716:	01 c0                	add    %eax,%eax
 804d718:	83 c0 0f             	add    $0xf,%eax
 804d71b:	89 85 78 ee ff ff    	mov    %eax,-0x1188(%ebp)
 804d721:	8b 85 78 ee ff ff    	mov    -0x1188(%ebp),%eax
 804d727:	c1 e8 04             	shr    $0x4,%eax
 804d72a:	c1 e0 04             	shl    $0x4,%eax
 804d72d:	01 85 74 ee ff ff    	add    %eax,-0x118c(%ebp)
 804d733:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804d739:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804d740:	8b 95 74 ee ff ff    	mov    -0x118c(%ebp),%edx
 804d746:	8b 85 48 ee ff ff    	mov    -0x11b8(%ebp),%eax
 804d74c:	83 ec 04             	sub    $0x4,%esp
 804d74f:	51                   	push   %ecx
 804d750:	50                   	push   %eax
 804d751:	52                   	push   %edx
 804d752:	e8 89 b0 ff ff       	call   80487e0 <memcpy@plt>
 804d757:	83 c4 10             	add    $0x10,%esp
 804d75a:	8b 85 74 ee ff ff    	mov    -0x118c(%ebp),%eax
 804d760:	89 85 48 ee ff ff    	mov    %eax,-0x11b8(%ebp)
 804d766:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804d76c:	c1 e0 02             	shl    $0x2,%eax
 804d76f:	83 c0 0f             	add    $0xf,%eax
 804d772:	89 85 7c ee ff ff    	mov    %eax,-0x1184(%ebp)
 804d778:	8b 85 7c ee ff ff    	mov    -0x1184(%ebp),%eax
 804d77e:	c1 e8 04             	shr    $0x4,%eax
 804d781:	c1 e0 04             	shl    $0x4,%eax
 804d784:	01 85 74 ee ff ff    	add    %eax,-0x118c(%ebp)
 804d78a:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804d790:	c1 e0 04             	shl    $0x4,%eax
 804d793:	89 c1                	mov    %eax,%ecx
 804d795:	8b 95 74 ee ff ff    	mov    -0x118c(%ebp),%edx
 804d79b:	8b 85 50 ee ff ff    	mov    -0x11b0(%ebp),%eax
 804d7a1:	83 ec 04             	sub    $0x4,%esp
 804d7a4:	51                   	push   %ecx
 804d7a5:	50                   	push   %eax
 804d7a6:	52                   	push   %edx
 804d7a7:	e8 34 b0 ff ff       	call   80487e0 <memcpy@plt>
 804d7ac:	83 c4 10             	add    $0x10,%esp
 804d7af:	8b 85 74 ee ff ff    	mov    -0x118c(%ebp),%eax
 804d7b5:	89 85 50 ee ff ff    	mov    %eax,-0x11b0(%ebp)
 804d7bb:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804d7c1:	c1 e0 04             	shl    $0x4,%eax
 804d7c4:	83 c0 0f             	add    $0xf,%eax
 804d7c7:	89 85 80 ee ff ff    	mov    %eax,-0x1180(%ebp)
 804d7cd:	8b 85 80 ee ff ff    	mov    -0x1180(%ebp),%eax
 804d7d3:	c1 e8 04             	shr    $0x4,%eax
 804d7d6:	c1 e0 04             	shl    $0x4,%eax
 804d7d9:	01 85 74 ee ff ff    	add    %eax,-0x118c(%ebp)
 804d7df:	8d 85 c4 ee ff ff    	lea    -0x113c(%ebp),%eax
 804d7e5:	39 85 70 ee ff ff    	cmp    %eax,-0x1190(%ebp)
 804d7eb:	74 11                	je     804d7fe <yyparse+0x2a2>
 804d7ed:	83 ec 0c             	sub    $0xc,%esp
 804d7f0:	ff b5 70 ee ff ff    	pushl  -0x1190(%ebp)
 804d7f6:	e8 d5 af ff ff       	call   80487d0 <free@plt>
 804d7fb:	83 c4 10             	add    $0x10,%esp
 804d7fe:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804d804:	05 ff ff ff 7f       	add    $0x7fffffff,%eax
 804d809:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804d80c:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804d812:	01 d0                	add    %edx,%eax
 804d814:	89 85 44 ee ff ff    	mov    %eax,-0x11bc(%ebp)
 804d81a:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804d820:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
 804d825:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804d82c:	8b 85 48 ee ff ff    	mov    -0x11b8(%ebp),%eax
 804d832:	01 d0                	add    %edx,%eax
 804d834:	89 85 4c ee ff ff    	mov    %eax,-0x11b4(%ebp)
 804d83a:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804d840:	05 ff ff ff 0f       	add    $0xfffffff,%eax
 804d845:	c1 e0 04             	shl    $0x4,%eax
 804d848:	89 c2                	mov    %eax,%edx
 804d84a:	8b 85 50 ee ff ff    	mov    -0x11b0(%ebp),%eax
 804d850:	01 d0                	add    %edx,%eax
 804d852:	89 85 54 ee ff ff    	mov    %eax,-0x11ac(%ebp)
 804d858:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804d85e:	05 ff ff ff 7f       	add    $0x7fffffff,%eax
 804d863:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804d866:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804d86c:	01 d0                	add    %edx,%eax
 804d86e:	3b 85 44 ee ff ff    	cmp    -0x11bc(%ebp),%eax
 804d874:	0f 86 2c 23 00 00    	jbe    804fba6 <yyparse+0x264a>
 804d87a:	83 bd 38 ee ff ff 0d 	cmpl   $0xd,-0x11c8(%ebp)
 804d881:	0f 84 12 23 00 00    	je     804fb99 <yyparse+0x263d>
 804d887:	90                   	nop
 804d888:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804d88e:	0f b7 84 00 e0 40 05 	movzwl 0x80540e0(%eax,%eax,1),%eax
 804d895:	08 
 804d896:	98                   	cwtl   
 804d897:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804d89d:	83 bd 5c ee ff ff c5 	cmpl   $0xffffffc5,-0x11a4(%ebp)
 804d8a4:	0f 84 3d 01 00 00    	je     804d9e7 <yyparse+0x48b>
 804d8aa:	a1 60 81 05 08       	mov    0x8058160,%eax
 804d8af:	83 f8 fe             	cmp    $0xfffffffe,%eax
 804d8b2:	75 0a                	jne    804d8be <yyparse+0x362>
 804d8b4:	e8 27 24 00 00       	call   804fce0 <yylex>
 804d8b9:	a3 60 81 05 08       	mov    %eax,0x8058160
 804d8be:	a1 60 81 05 08       	mov    0x8058160,%eax
 804d8c3:	85 c0                	test   %eax,%eax
 804d8c5:	7f 17                	jg     804d8de <yyparse+0x382>
 804d8c7:	c7 85 64 ee ff ff 00 	movl   $0x0,-0x119c(%ebp)
 804d8ce:	00 00 00 
 804d8d1:	8b 85 64 ee ff ff    	mov    -0x119c(%ebp),%eax
 804d8d7:	a3 60 81 05 08       	mov    %eax,0x8058160
 804d8dc:	eb 28                	jmp    804d906 <yyparse+0x3aa>
 804d8de:	a1 60 81 05 08       	mov    0x8058160,%eax
 804d8e3:	3d 1e 01 00 00       	cmp    $0x11e,%eax
 804d8e8:	77 11                	ja     804d8fb <yyparse+0x39f>
 804d8ea:	a1 60 81 05 08       	mov    0x8058160,%eax
 804d8ef:	0f b6 80 c0 3f 05 08 	movzbl 0x8053fc0(%eax),%eax
 804d8f6:	0f b6 c0             	movzbl %al,%eax
 804d8f9:	eb 05                	jmp    804d900 <yyparse+0x3a4>
 804d8fb:	b8 02 00 00 00       	mov    $0x2,%eax
 804d900:	89 85 64 ee ff ff    	mov    %eax,-0x119c(%ebp)
 804d906:	8b 85 64 ee ff ff    	mov    -0x119c(%ebp),%eax
 804d90c:	01 85 5c ee ff ff    	add    %eax,-0x11a4(%ebp)
 804d912:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804d919:	0f 88 c9 00 00 00    	js     804d9e8 <yyparse+0x48c>
 804d91f:	81 bd 5c ee ff ff 0a 	cmpl   $0x10a,-0x11a4(%ebp)
 804d926:	01 00 00 
 804d929:	0f 8f b9 00 00 00    	jg     804d9e8 <yyparse+0x48c>
 804d92f:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804d935:	05 e0 43 05 08       	add    $0x80543e0,%eax
 804d93a:	0f b6 00             	movzbl (%eax),%eax
 804d93d:	0f be c0             	movsbl %al,%eax
 804d940:	3b 85 64 ee ff ff    	cmp    -0x119c(%ebp),%eax
 804d946:	0f 85 9c 00 00 00    	jne    804d9e8 <yyparse+0x48c>
 804d94c:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804d952:	05 c0 42 05 08       	add    $0x80542c0,%eax
 804d957:	0f b6 00             	movzbl (%eax),%eax
 804d95a:	0f be c0             	movsbl %al,%eax
 804d95d:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804d963:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804d96a:	7f 0b                	jg     804d977 <yyparse+0x41b>
 804d96c:	f7 9d 5c ee ff ff    	negl   -0x11a4(%ebp)
 804d972:	e9 96 00 00 00       	jmp    804da0d <yyparse+0x4b1>
 804d977:	83 bd 3c ee ff ff 00 	cmpl   $0x0,-0x11c4(%ebp)
 804d97e:	74 07                	je     804d987 <yyparse+0x42b>
 804d980:	83 ad 3c ee ff ff 01 	subl   $0x1,-0x11c4(%ebp)
 804d987:	c7 05 60 81 05 08 fe 	movl   $0xfffffffe,0x8058160
 804d98e:	ff ff ff 
 804d991:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804d997:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 804d99d:	83 85 4c ee ff ff 04 	addl   $0x4,-0x11b4(%ebp)
 804d9a4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804d9aa:	8b 15 68 81 05 08    	mov    0x8058168,%edx
 804d9b0:	89 10                	mov    %edx,(%eax)
 804d9b2:	83 85 54 ee ff ff 10 	addl   $0x10,-0x11ac(%ebp)
 804d9b9:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804d9bf:	8b 15 ac 80 05 08    	mov    0x80580ac,%edx
 804d9c5:	89 10                	mov    %edx,(%eax)
 804d9c7:	8b 15 b0 80 05 08    	mov    0x80580b0,%edx
 804d9cd:	89 50 04             	mov    %edx,0x4(%eax)
 804d9d0:	8b 15 b4 80 05 08    	mov    0x80580b4,%edx
 804d9d6:	89 50 08             	mov    %edx,0x8(%eax)
 804d9d9:	8b 15 b8 80 05 08    	mov    0x80580b8,%edx
 804d9df:	89 50 0c             	mov    %edx,0xc(%eax)
 804d9e2:	e9 42 fc ff ff       	jmp    804d629 <yyparse+0xcd>
 804d9e7:	90                   	nop
 804d9e8:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804d9ee:	05 e0 41 05 08       	add    $0x80541e0,%eax
 804d9f3:	0f b6 00             	movzbl (%eax),%eax
 804d9f6:	0f b6 c0             	movzbl %al,%eax
 804d9f9:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804d9ff:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804da06:	0f 84 fc 1e 00 00    	je     804f908 <yyparse+0x23ac>
 804da0c:	90                   	nop
 804da0d:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804da13:	05 e0 45 05 08       	add    $0x80545e0,%eax
 804da18:	0f b6 00             	movzbl (%eax),%eax
 804da1b:	0f b6 c0             	movzbl %al,%eax
 804da1e:	89 85 68 ee ff ff    	mov    %eax,-0x1198(%ebp)
 804da24:	b8 01 00 00 00       	mov    $0x1,%eax
 804da29:	2b 85 68 ee ff ff    	sub    -0x1198(%ebp),%eax
 804da2f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804da36:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804da3c:	01 d0                	add    %edx,%eax
 804da3e:	8b 00                	mov    (%eax),%eax
 804da40:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804da46:	83 bd 68 ee ff ff 00 	cmpl   $0x0,-0x1198(%ebp)
 804da4d:	74 67                	je     804dab6 <yyparse+0x55a>
 804da4f:	8b 95 68 ee ff ff    	mov    -0x1198(%ebp),%edx
 804da55:	b8 00 00 00 00       	mov    $0x0,%eax
 804da5a:	29 d0                	sub    %edx,%eax
 804da5c:	c1 e0 04             	shl    $0x4,%eax
 804da5f:	8d 50 10             	lea    0x10(%eax),%edx
 804da62:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804da68:	01 d0                	add    %edx,%eax
 804da6a:	8b 00                	mov    (%eax),%eax
 804da6c:	89 85 84 ee ff ff    	mov    %eax,-0x117c(%ebp)
 804da72:	8b 95 68 ee ff ff    	mov    -0x1198(%ebp),%edx
 804da78:	b8 00 00 00 00       	mov    $0x0,%eax
 804da7d:	29 d0                	sub    %edx,%eax
 804da7f:	c1 e0 04             	shl    $0x4,%eax
 804da82:	8d 50 10             	lea    0x10(%eax),%edx
 804da85:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804da8b:	01 d0                	add    %edx,%eax
 804da8d:	8b 40 04             	mov    0x4(%eax),%eax
 804da90:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%ebp)
 804da96:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804da9c:	8b 40 08             	mov    0x8(%eax),%eax
 804da9f:	89 85 8c ee ff ff    	mov    %eax,-0x1174(%ebp)
 804daa5:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804daab:	8b 40 0c             	mov    0xc(%eax),%eax
 804daae:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%ebp)
 804dab4:	eb 54                	jmp    804db0a <yyparse+0x5ae>
 804dab6:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804dabc:	c1 e0 04             	shl    $0x4,%eax
 804dabf:	f7 d8                	neg    %eax
 804dac1:	89 c2                	mov    %eax,%edx
 804dac3:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804dac9:	01 d0                	add    %edx,%eax
 804dacb:	8b 40 08             	mov    0x8(%eax),%eax
 804dace:	89 85 8c ee ff ff    	mov    %eax,-0x1174(%ebp)
 804dad4:	8b 85 8c ee ff ff    	mov    -0x1174(%ebp),%eax
 804dada:	89 85 84 ee ff ff    	mov    %eax,-0x117c(%ebp)
 804dae0:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804dae6:	c1 e0 04             	shl    $0x4,%eax
 804dae9:	f7 d8                	neg    %eax
 804daeb:	89 c2                	mov    %eax,%edx
 804daed:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804daf3:	01 d0                	add    %edx,%eax
 804daf5:	8b 40 0c             	mov    0xc(%eax),%eax
 804daf8:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%ebp)
 804dafe:	8b 85 90 ee ff ff    	mov    -0x1170(%ebp),%eax
 804db04:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%ebp)
 804db0a:	83 bd 5c ee ff ff 44 	cmpl   $0x44,-0x11a4(%ebp)
 804db11:	0f 87 c3 1c 00 00    	ja     804f7da <yyparse+0x227e>
 804db17:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804db1d:	c1 e0 02             	shl    $0x2,%eax
 804db20:	05 6c 47 05 08       	add    $0x805476c,%eax
 804db25:	8b 00                	mov    (%eax),%eax
 804db27:	ff e0                	jmp    *%eax
 804db29:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804db2f:	83 ec 08             	sub    $0x8,%esp
 804db32:	50                   	push   %eax
 804db33:	68 2e 46 05 08       	push   $0x805462e
 804db38:	e8 cb af ff ff       	call   8048b08 <createNode>
 804db3d:	83 c4 10             	add    $0x10,%esp
 804db40:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804db46:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804db4c:	c7 40 04 1f 00 00 00 	movl   $0x1f,0x4(%eax)
 804db53:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804db59:	8b 10                	mov    (%eax),%edx
 804db5b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804db61:	83 ec 08             	sub    $0x8,%esp
 804db64:	52                   	push   %edx
 804db65:	50                   	push   %eax
 804db66:	e8 20 b0 ff ff       	call   8048b8b <addChild>
 804db6b:	83 c4 10             	add    $0x10,%esp
 804db6e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804db74:	a3 10 81 05 08       	mov    %eax,0x8058110
 804db79:	e9 5d 1c 00 00       	jmp    804f7db <yyparse+0x227f>
 804db7e:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804db84:	83 ec 08             	sub    $0x8,%esp
 804db87:	50                   	push   %eax
 804db88:	68 36 46 05 08       	push   $0x8054636
 804db8d:	e8 76 af ff ff       	call   8048b08 <createNode>
 804db92:	83 c4 10             	add    $0x10,%esp
 804db95:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804db9b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dba1:	83 e8 04             	sub    $0x4,%eax
 804dba4:	8b 10                	mov    (%eax),%edx
 804dba6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dbac:	83 ec 08             	sub    $0x8,%esp
 804dbaf:	52                   	push   %edx
 804dbb0:	50                   	push   %eax
 804dbb1:	e8 d5 af ff ff       	call   8048b8b <addChild>
 804dbb6:	83 c4 10             	add    $0x10,%esp
 804dbb9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dbbf:	8b 10                	mov    (%eax),%edx
 804dbc1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dbc7:	83 ec 08             	sub    $0x8,%esp
 804dbca:	52                   	push   %edx
 804dbcb:	50                   	push   %eax
 804dbcc:	e8 ba af ff ff       	call   8048b8b <addChild>
 804dbd1:	83 c4 10             	add    $0x10,%esp
 804dbd4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dbda:	c7 40 04 20 00 00 00 	movl   $0x20,0x4(%eax)
 804dbe1:	e9 f5 1b 00 00       	jmp    804f7db <yyparse+0x227f>
 804dbe6:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 804dbed:	00 00 00 
 804dbf0:	e9 e6 1b 00 00       	jmp    804f7db <yyparse+0x227f>
 804dbf5:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804dbfb:	83 ec 08             	sub    $0x8,%esp
 804dbfe:	50                   	push   %eax
 804dbff:	68 41 46 05 08       	push   $0x8054641
 804dc04:	e8 ff ae ff ff       	call   8048b08 <createNode>
 804dc09:	83 c4 10             	add    $0x10,%esp
 804dc0c:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804dc12:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dc18:	83 e8 08             	sub    $0x8,%eax
 804dc1b:	8b 10                	mov    (%eax),%edx
 804dc1d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dc23:	83 ec 08             	sub    $0x8,%esp
 804dc26:	52                   	push   %edx
 804dc27:	50                   	push   %eax
 804dc28:	e8 5e af ff ff       	call   8048b8b <addChild>
 804dc2d:	83 c4 10             	add    $0x10,%esp
 804dc30:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dc36:	83 e8 04             	sub    $0x4,%eax
 804dc39:	8b 10                	mov    (%eax),%edx
 804dc3b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dc41:	83 ec 08             	sub    $0x8,%esp
 804dc44:	52                   	push   %edx
 804dc45:	50                   	push   %eax
 804dc46:	e8 40 af ff ff       	call   8048b8b <addChild>
 804dc4b:	83 c4 10             	add    $0x10,%esp
 804dc4e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dc54:	8b 10                	mov    (%eax),%edx
 804dc56:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dc5c:	83 ec 08             	sub    $0x8,%esp
 804dc5f:	52                   	push   %edx
 804dc60:	50                   	push   %eax
 804dc61:	e8 25 af ff ff       	call   8048b8b <addChild>
 804dc66:	83 c4 10             	add    $0x10,%esp
 804dc69:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dc6f:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804dc76:	e9 60 1b 00 00       	jmp    804f7db <yyparse+0x227f>
 804dc7b:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804dc81:	83 ec 08             	sub    $0x8,%esp
 804dc84:	50                   	push   %eax
 804dc85:	68 41 46 05 08       	push   $0x8054641
 804dc8a:	e8 79 ae ff ff       	call   8048b08 <createNode>
 804dc8f:	83 c4 10             	add    $0x10,%esp
 804dc92:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804dc98:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dc9e:	83 e8 04             	sub    $0x4,%eax
 804dca1:	8b 10                	mov    (%eax),%edx
 804dca3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dca9:	83 ec 08             	sub    $0x8,%esp
 804dcac:	52                   	push   %edx
 804dcad:	50                   	push   %eax
 804dcae:	e8 d8 ae ff ff       	call   8048b8b <addChild>
 804dcb3:	83 c4 10             	add    $0x10,%esp
 804dcb6:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dcbc:	8b 10                	mov    (%eax),%edx
 804dcbe:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dcc4:	83 ec 08             	sub    $0x8,%esp
 804dcc7:	52                   	push   %edx
 804dcc8:	50                   	push   %eax
 804dcc9:	e8 bd ae ff ff       	call   8048b8b <addChild>
 804dcce:	83 c4 10             	add    $0x10,%esp
 804dcd1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dcd7:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804dcde:	e9 f8 1a 00 00       	jmp    804f7db <yyparse+0x227f>
 804dce3:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804dce9:	83 ec 08             	sub    $0x8,%esp
 804dcec:	50                   	push   %eax
 804dced:	68 41 46 05 08       	push   $0x8054641
 804dcf2:	e8 11 ae ff ff       	call   8048b08 <createNode>
 804dcf7:	83 c4 10             	add    $0x10,%esp
 804dcfa:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804dd00:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dd06:	83 e8 08             	sub    $0x8,%eax
 804dd09:	8b 10                	mov    (%eax),%edx
 804dd0b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dd11:	83 ec 08             	sub    $0x8,%esp
 804dd14:	52                   	push   %edx
 804dd15:	50                   	push   %eax
 804dd16:	e8 70 ae ff ff       	call   8048b8b <addChild>
 804dd1b:	83 c4 10             	add    $0x10,%esp
 804dd1e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dd24:	83 e8 04             	sub    $0x4,%eax
 804dd27:	8b 10                	mov    (%eax),%edx
 804dd29:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dd2f:	83 ec 08             	sub    $0x8,%esp
 804dd32:	52                   	push   %edx
 804dd33:	50                   	push   %eax
 804dd34:	e8 52 ae ff ff       	call   8048b8b <addChild>
 804dd39:	83 c4 10             	add    $0x10,%esp
 804dd3c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dd42:	8b 10                	mov    (%eax),%edx
 804dd44:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dd4a:	83 ec 08             	sub    $0x8,%esp
 804dd4d:	52                   	push   %edx
 804dd4e:	50                   	push   %eax
 804dd4f:	e8 37 ae ff ff       	call   8048b8b <addChild>
 804dd54:	83 c4 10             	add    $0x10,%esp
 804dd57:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dd5d:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804dd64:	e9 72 1a 00 00       	jmp    804f7db <yyparse+0x227f>
 804dd69:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804dd6f:	83 ec 08             	sub    $0x8,%esp
 804dd72:	50                   	push   %eax
 804dd73:	68 41 46 05 08       	push   $0x8054641
 804dd78:	e8 8b ad ff ff       	call   8048b08 <createNode>
 804dd7d:	83 c4 10             	add    $0x10,%esp
 804dd80:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804dd86:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dd8c:	83 e8 08             	sub    $0x8,%eax
 804dd8f:	8b 10                	mov    (%eax),%edx
 804dd91:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dd97:	83 ec 08             	sub    $0x8,%esp
 804dd9a:	52                   	push   %edx
 804dd9b:	50                   	push   %eax
 804dd9c:	e8 ea ad ff ff       	call   8048b8b <addChild>
 804dda1:	83 c4 10             	add    $0x10,%esp
 804dda4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ddaa:	83 e8 04             	sub    $0x4,%eax
 804ddad:	8b 10                	mov    (%eax),%edx
 804ddaf:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ddb5:	83 ec 08             	sub    $0x8,%esp
 804ddb8:	52                   	push   %edx
 804ddb9:	50                   	push   %eax
 804ddba:	e8 cc ad ff ff       	call   8048b8b <addChild>
 804ddbf:	83 c4 10             	add    $0x10,%esp
 804ddc2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ddc8:	8b 10                	mov    (%eax),%edx
 804ddca:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ddd0:	83 ec 08             	sub    $0x8,%esp
 804ddd3:	52                   	push   %edx
 804ddd4:	50                   	push   %eax
 804ddd5:	e8 b1 ad ff ff       	call   8048b8b <addChild>
 804ddda:	83 c4 10             	add    $0x10,%esp
 804dddd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dde3:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804ddea:	e9 ec 19 00 00       	jmp    804f7db <yyparse+0x227f>
 804ddef:	83 ec 0c             	sub    $0xc,%esp
 804ddf2:	68 48 46 05 08       	push   $0x8054648
 804ddf7:	e8 72 4b 00 00       	call   805296e <yyerror>
 804ddfc:	83 c4 10             	add    $0x10,%esp
 804ddff:	a1 20 81 05 08       	mov    0x8058120,%eax
 804de04:	83 c0 01             	add    $0x1,%eax
 804de07:	a3 20 81 05 08       	mov    %eax,0x8058120
 804de0c:	e9 ca 19 00 00       	jmp    804f7db <yyparse+0x227f>
 804de11:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804de17:	83 ec 08             	sub    $0x8,%esp
 804de1a:	50                   	push   %eax
 804de1b:	68 54 46 05 08       	push   $0x8054654
 804de20:	e8 e3 ac ff ff       	call   8048b08 <createNode>
 804de25:	83 c4 10             	add    $0x10,%esp
 804de28:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804de2e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804de34:	8b 10                	mov    (%eax),%edx
 804de36:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804de3c:	83 ec 08             	sub    $0x8,%esp
 804de3f:	52                   	push   %edx
 804de40:	50                   	push   %eax
 804de41:	e8 45 ad ff ff       	call   8048b8b <addChild>
 804de46:	83 c4 10             	add    $0x10,%esp
 804de49:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804de4f:	c7 40 04 22 00 00 00 	movl   $0x22,0x4(%eax)
 804de56:	e9 80 19 00 00       	jmp    804f7db <yyparse+0x227f>
 804de5b:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804de61:	83 ec 08             	sub    $0x8,%esp
 804de64:	50                   	push   %eax
 804de65:	68 54 46 05 08       	push   $0x8054654
 804de6a:	e8 99 ac ff ff       	call   8048b08 <createNode>
 804de6f:	83 c4 10             	add    $0x10,%esp
 804de72:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804de78:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804de7e:	83 e8 08             	sub    $0x8,%eax
 804de81:	8b 10                	mov    (%eax),%edx
 804de83:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804de89:	83 ec 08             	sub    $0x8,%esp
 804de8c:	52                   	push   %edx
 804de8d:	50                   	push   %eax
 804de8e:	e8 f8 ac ff ff       	call   8048b8b <addChild>
 804de93:	83 c4 10             	add    $0x10,%esp
 804de96:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804de9c:	83 e8 04             	sub    $0x4,%eax
 804de9f:	8b 10                	mov    (%eax),%edx
 804dea1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dea7:	83 ec 08             	sub    $0x8,%esp
 804deaa:	52                   	push   %edx
 804deab:	50                   	push   %eax
 804deac:	e8 da ac ff ff       	call   8048b8b <addChild>
 804deb1:	83 c4 10             	add    $0x10,%esp
 804deb4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804deba:	8b 10                	mov    (%eax),%edx
 804debc:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dec2:	83 ec 08             	sub    $0x8,%esp
 804dec5:	52                   	push   %edx
 804dec6:	50                   	push   %eax
 804dec7:	e8 bf ac ff ff       	call   8048b8b <addChild>
 804decc:	83 c4 10             	add    $0x10,%esp
 804decf:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ded5:	c7 40 04 22 00 00 00 	movl   $0x22,0x4(%eax)
 804dedc:	e9 fa 18 00 00       	jmp    804f7db <yyparse+0x227f>
 804dee1:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804dee7:	83 ec 08             	sub    $0x8,%esp
 804deea:	50                   	push   %eax
 804deeb:	68 5f 46 05 08       	push   $0x805465f
 804def0:	e8 13 ac ff ff       	call   8048b08 <createNode>
 804def5:	83 c4 10             	add    $0x10,%esp
 804def8:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804defe:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804df04:	8b 10                	mov    (%eax),%edx
 804df06:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804df0c:	83 ec 08             	sub    $0x8,%esp
 804df0f:	52                   	push   %edx
 804df10:	50                   	push   %eax
 804df11:	e8 75 ac ff ff       	call   8048b8b <addChild>
 804df16:	83 c4 10             	add    $0x10,%esp
 804df19:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804df1f:	c7 40 04 23 00 00 00 	movl   $0x23,0x4(%eax)
 804df26:	e9 b0 18 00 00       	jmp    804f7db <yyparse+0x227f>
 804df2b:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804df31:	83 ec 08             	sub    $0x8,%esp
 804df34:	50                   	push   %eax
 804df35:	68 5f 46 05 08       	push   $0x805465f
 804df3a:	e8 c9 ab ff ff       	call   8048b08 <createNode>
 804df3f:	83 c4 10             	add    $0x10,%esp
 804df42:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804df48:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804df4e:	8b 10                	mov    (%eax),%edx
 804df50:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804df56:	83 ec 08             	sub    $0x8,%esp
 804df59:	52                   	push   %edx
 804df5a:	50                   	push   %eax
 804df5b:	e8 2b ac ff ff       	call   8048b8b <addChild>
 804df60:	83 c4 10             	add    $0x10,%esp
 804df63:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804df69:	c7 40 04 23 00 00 00 	movl   $0x23,0x4(%eax)
 804df70:	e9 66 18 00 00       	jmp    804f7db <yyparse+0x227f>
 804df75:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804df7b:	83 ec 08             	sub    $0x8,%esp
 804df7e:	50                   	push   %eax
 804df7f:	68 69 46 05 08       	push   $0x8054669
 804df84:	e8 7f ab ff ff       	call   8048b08 <createNode>
 804df89:	83 c4 10             	add    $0x10,%esp
 804df8c:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804df92:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804df98:	83 e8 04             	sub    $0x4,%eax
 804df9b:	8b 10                	mov    (%eax),%edx
 804df9d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dfa3:	83 ec 08             	sub    $0x8,%esp
 804dfa6:	52                   	push   %edx
 804dfa7:	50                   	push   %eax
 804dfa8:	e8 de ab ff ff       	call   8048b8b <addChild>
 804dfad:	83 c4 10             	add    $0x10,%esp
 804dfb0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804dfb6:	8b 10                	mov    (%eax),%edx
 804dfb8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dfbe:	83 ec 08             	sub    $0x8,%esp
 804dfc1:	52                   	push   %edx
 804dfc2:	50                   	push   %eax
 804dfc3:	e8 c3 ab ff ff       	call   8048b8b <addChild>
 804dfc8:	83 c4 10             	add    $0x10,%esp
 804dfcb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804dfd1:	c7 40 04 24 00 00 00 	movl   $0x24,0x4(%eax)
 804dfd8:	e9 fe 17 00 00       	jmp    804f7db <yyparse+0x227f>
 804dfdd:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804dfe3:	83 ec 08             	sub    $0x8,%esp
 804dfe6:	50                   	push   %eax
 804dfe7:	68 69 46 05 08       	push   $0x8054669
 804dfec:	e8 17 ab ff ff       	call   8048b08 <createNode>
 804dff1:	83 c4 10             	add    $0x10,%esp
 804dff4:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804dffa:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e000:	83 e8 10             	sub    $0x10,%eax
 804e003:	8b 10                	mov    (%eax),%edx
 804e005:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e00b:	83 ec 08             	sub    $0x8,%esp
 804e00e:	52                   	push   %edx
 804e00f:	50                   	push   %eax
 804e010:	e8 76 ab ff ff       	call   8048b8b <addChild>
 804e015:	83 c4 10             	add    $0x10,%esp
 804e018:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e01e:	83 e8 0c             	sub    $0xc,%eax
 804e021:	8b 10                	mov    (%eax),%edx
 804e023:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e029:	83 ec 08             	sub    $0x8,%esp
 804e02c:	52                   	push   %edx
 804e02d:	50                   	push   %eax
 804e02e:	e8 58 ab ff ff       	call   8048b8b <addChild>
 804e033:	83 c4 10             	add    $0x10,%esp
 804e036:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e03c:	83 e8 08             	sub    $0x8,%eax
 804e03f:	8b 10                	mov    (%eax),%edx
 804e041:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e047:	83 ec 08             	sub    $0x8,%esp
 804e04a:	52                   	push   %edx
 804e04b:	50                   	push   %eax
 804e04c:	e8 3a ab ff ff       	call   8048b8b <addChild>
 804e051:	83 c4 10             	add    $0x10,%esp
 804e054:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e05a:	83 e8 04             	sub    $0x4,%eax
 804e05d:	8b 10                	mov    (%eax),%edx
 804e05f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e065:	83 ec 08             	sub    $0x8,%esp
 804e068:	52                   	push   %edx
 804e069:	50                   	push   %eax
 804e06a:	e8 1c ab ff ff       	call   8048b8b <addChild>
 804e06f:	83 c4 10             	add    $0x10,%esp
 804e072:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e078:	8b 10                	mov    (%eax),%edx
 804e07a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e080:	83 ec 08             	sub    $0x8,%esp
 804e083:	52                   	push   %edx
 804e084:	50                   	push   %eax
 804e085:	e8 01 ab ff ff       	call   8048b8b <addChild>
 804e08a:	83 c4 10             	add    $0x10,%esp
 804e08d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e093:	c7 40 04 24 00 00 00 	movl   $0x24,0x4(%eax)
 804e09a:	e9 3c 17 00 00       	jmp    804f7db <yyparse+0x227f>
 804e09f:	83 ec 0c             	sub    $0xc,%esp
 804e0a2:	68 79 46 05 08       	push   $0x8054679
 804e0a7:	e8 c2 48 00 00       	call   805296e <yyerror>
 804e0ac:	83 c4 10             	add    $0x10,%esp
 804e0af:	a1 20 81 05 08       	mov    0x8058120,%eax
 804e0b4:	83 c0 01             	add    $0x1,%eax
 804e0b7:	a3 20 81 05 08       	mov    %eax,0x8058120
 804e0bc:	e9 1a 17 00 00       	jmp    804f7db <yyparse+0x227f>
 804e0c1:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e0c7:	83 ec 08             	sub    $0x8,%esp
 804e0ca:	50                   	push   %eax
 804e0cb:	68 85 46 05 08       	push   $0x8054685
 804e0d0:	e8 33 aa ff ff       	call   8048b08 <createNode>
 804e0d5:	83 c4 10             	add    $0x10,%esp
 804e0d8:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e0de:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e0e4:	8b 10                	mov    (%eax),%edx
 804e0e6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e0ec:	83 ec 08             	sub    $0x8,%esp
 804e0ef:	52                   	push   %edx
 804e0f0:	50                   	push   %eax
 804e0f1:	e8 95 aa ff ff       	call   8048b8b <addChild>
 804e0f6:	83 c4 10             	add    $0x10,%esp
 804e0f9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e0ff:	c7 40 04 25 00 00 00 	movl   $0x25,0x4(%eax)
 804e106:	e9 d0 16 00 00       	jmp    804f7db <yyparse+0x227f>
 804e10b:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 804e112:	00 00 00 
 804e115:	e9 c1 16 00 00       	jmp    804f7db <yyparse+0x227f>
 804e11a:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e120:	83 ec 08             	sub    $0x8,%esp
 804e123:	50                   	push   %eax
 804e124:	68 8c 46 05 08       	push   $0x805468c
 804e129:	e8 da a9 ff ff       	call   8048b08 <createNode>
 804e12e:	83 c4 10             	add    $0x10,%esp
 804e131:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e137:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e13d:	8b 10                	mov    (%eax),%edx
 804e13f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e145:	83 ec 08             	sub    $0x8,%esp
 804e148:	52                   	push   %edx
 804e149:	50                   	push   %eax
 804e14a:	e8 3c aa ff ff       	call   8048b8b <addChild>
 804e14f:	83 c4 10             	add    $0x10,%esp
 804e152:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e158:	c7 40 04 26 00 00 00 	movl   $0x26,0x4(%eax)
 804e15f:	e9 77 16 00 00       	jmp    804f7db <yyparse+0x227f>
 804e164:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e16a:	83 ec 08             	sub    $0x8,%esp
 804e16d:	50                   	push   %eax
 804e16e:	68 90 46 05 08       	push   $0x8054690
 804e173:	e8 90 a9 ff ff       	call   8048b08 <createNode>
 804e178:	83 c4 10             	add    $0x10,%esp
 804e17b:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e181:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e187:	8b 10                	mov    (%eax),%edx
 804e189:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e18f:	83 ec 08             	sub    $0x8,%esp
 804e192:	52                   	push   %edx
 804e193:	50                   	push   %eax
 804e194:	e8 f2 a9 ff ff       	call   8048b8b <addChild>
 804e199:	83 c4 10             	add    $0x10,%esp
 804e19c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e1a2:	c7 40 04 27 00 00 00 	movl   $0x27,0x4(%eax)
 804e1a9:	e9 2d 16 00 00       	jmp    804f7db <yyparse+0x227f>
 804e1ae:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e1b4:	83 ec 08             	sub    $0x8,%esp
 804e1b7:	50                   	push   %eax
 804e1b8:	68 90 46 05 08       	push   $0x8054690
 804e1bd:	e8 46 a9 ff ff       	call   8048b08 <createNode>
 804e1c2:	83 c4 10             	add    $0x10,%esp
 804e1c5:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e1cb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e1d1:	83 e8 0c             	sub    $0xc,%eax
 804e1d4:	8b 10                	mov    (%eax),%edx
 804e1d6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e1dc:	83 ec 08             	sub    $0x8,%esp
 804e1df:	52                   	push   %edx
 804e1e0:	50                   	push   %eax
 804e1e1:	e8 a5 a9 ff ff       	call   8048b8b <addChild>
 804e1e6:	83 c4 10             	add    $0x10,%esp
 804e1e9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e1ef:	83 e8 08             	sub    $0x8,%eax
 804e1f2:	8b 10                	mov    (%eax),%edx
 804e1f4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e1fa:	83 ec 08             	sub    $0x8,%esp
 804e1fd:	52                   	push   %edx
 804e1fe:	50                   	push   %eax
 804e1ff:	e8 87 a9 ff ff       	call   8048b8b <addChild>
 804e204:	83 c4 10             	add    $0x10,%esp
 804e207:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e20d:	83 e8 04             	sub    $0x4,%eax
 804e210:	8b 10                	mov    (%eax),%edx
 804e212:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e218:	83 ec 08             	sub    $0x8,%esp
 804e21b:	52                   	push   %edx
 804e21c:	50                   	push   %eax
 804e21d:	e8 69 a9 ff ff       	call   8048b8b <addChild>
 804e222:	83 c4 10             	add    $0x10,%esp
 804e225:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e22b:	8b 10                	mov    (%eax),%edx
 804e22d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e233:	83 ec 08             	sub    $0x8,%esp
 804e236:	52                   	push   %edx
 804e237:	50                   	push   %eax
 804e238:	e8 4e a9 ff ff       	call   8048b8b <addChild>
 804e23d:	83 c4 10             	add    $0x10,%esp
 804e240:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e246:	c7 40 04 27 00 00 00 	movl   $0x27,0x4(%eax)
 804e24d:	e9 89 15 00 00       	jmp    804f7db <yyparse+0x227f>
 804e252:	83 ec 0c             	sub    $0xc,%esp
 804e255:	68 97 46 05 08       	push   $0x8054697
 804e25a:	e8 0f 47 00 00       	call   805296e <yyerror>
 804e25f:	83 c4 10             	add    $0x10,%esp
 804e262:	a1 20 81 05 08       	mov    0x8058120,%eax
 804e267:	83 c0 01             	add    $0x1,%eax
 804e26a:	a3 20 81 05 08       	mov    %eax,0x8058120
 804e26f:	e9 67 15 00 00       	jmp    804f7db <yyparse+0x227f>
 804e274:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e27a:	83 ec 08             	sub    $0x8,%esp
 804e27d:	50                   	push   %eax
 804e27e:	68 a3 46 05 08       	push   $0x80546a3
 804e283:	e8 80 a8 ff ff       	call   8048b08 <createNode>
 804e288:	83 c4 10             	add    $0x10,%esp
 804e28b:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e291:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e297:	83 e8 0c             	sub    $0xc,%eax
 804e29a:	8b 10                	mov    (%eax),%edx
 804e29c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e2a2:	83 ec 08             	sub    $0x8,%esp
 804e2a5:	52                   	push   %edx
 804e2a6:	50                   	push   %eax
 804e2a7:	e8 df a8 ff ff       	call   8048b8b <addChild>
 804e2ac:	83 c4 10             	add    $0x10,%esp
 804e2af:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e2b5:	83 e8 08             	sub    $0x8,%eax
 804e2b8:	8b 10                	mov    (%eax),%edx
 804e2ba:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e2c0:	83 ec 08             	sub    $0x8,%esp
 804e2c3:	52                   	push   %edx
 804e2c4:	50                   	push   %eax
 804e2c5:	e8 c1 a8 ff ff       	call   8048b8b <addChild>
 804e2ca:	83 c4 10             	add    $0x10,%esp
 804e2cd:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e2d3:	83 e8 04             	sub    $0x4,%eax
 804e2d6:	8b 10                	mov    (%eax),%edx
 804e2d8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e2de:	83 ec 08             	sub    $0x8,%esp
 804e2e1:	52                   	push   %edx
 804e2e2:	50                   	push   %eax
 804e2e3:	e8 a3 a8 ff ff       	call   8048b8b <addChild>
 804e2e8:	83 c4 10             	add    $0x10,%esp
 804e2eb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e2f1:	8b 10                	mov    (%eax),%edx
 804e2f3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e2f9:	83 ec 08             	sub    $0x8,%esp
 804e2fc:	52                   	push   %edx
 804e2fd:	50                   	push   %eax
 804e2fe:	e8 88 a8 ff ff       	call   8048b8b <addChild>
 804e303:	83 c4 10             	add    $0x10,%esp
 804e306:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e30c:	c7 40 04 28 00 00 00 	movl   $0x28,0x4(%eax)
 804e313:	e9 c3 14 00 00       	jmp    804f7db <yyparse+0x227f>
 804e318:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e31e:	83 ec 08             	sub    $0x8,%esp
 804e321:	50                   	push   %eax
 804e322:	68 a3 46 05 08       	push   $0x80546a3
 804e327:	e8 dc a7 ff ff       	call   8048b08 <createNode>
 804e32c:	83 c4 10             	add    $0x10,%esp
 804e32f:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e335:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e33b:	83 e8 08             	sub    $0x8,%eax
 804e33e:	8b 10                	mov    (%eax),%edx
 804e340:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e346:	83 ec 08             	sub    $0x8,%esp
 804e349:	52                   	push   %edx
 804e34a:	50                   	push   %eax
 804e34b:	e8 3b a8 ff ff       	call   8048b8b <addChild>
 804e350:	83 c4 10             	add    $0x10,%esp
 804e353:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e359:	83 e8 04             	sub    $0x4,%eax
 804e35c:	8b 10                	mov    (%eax),%edx
 804e35e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e364:	83 ec 08             	sub    $0x8,%esp
 804e367:	52                   	push   %edx
 804e368:	50                   	push   %eax
 804e369:	e8 1d a8 ff ff       	call   8048b8b <addChild>
 804e36e:	83 c4 10             	add    $0x10,%esp
 804e371:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e377:	8b 10                	mov    (%eax),%edx
 804e379:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e37f:	83 ec 08             	sub    $0x8,%esp
 804e382:	52                   	push   %edx
 804e383:	50                   	push   %eax
 804e384:	e8 02 a8 ff ff       	call   8048b8b <addChild>
 804e389:	83 c4 10             	add    $0x10,%esp
 804e38c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e392:	c7 40 04 28 00 00 00 	movl   $0x28,0x4(%eax)
 804e399:	e9 3d 14 00 00       	jmp    804f7db <yyparse+0x227f>
 804e39e:	83 ec 0c             	sub    $0xc,%esp
 804e3a1:	68 aa 46 05 08       	push   $0x80546aa
 804e3a6:	e8 c3 45 00 00       	call   805296e <yyerror>
 804e3ab:	83 c4 10             	add    $0x10,%esp
 804e3ae:	a1 20 81 05 08       	mov    0x8058120,%eax
 804e3b3:	83 c0 01             	add    $0x1,%eax
 804e3b6:	a3 20 81 05 08       	mov    %eax,0x8058120
 804e3bb:	e9 1b 14 00 00       	jmp    804f7db <yyparse+0x227f>
 804e3c0:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e3c6:	83 ec 08             	sub    $0x8,%esp
 804e3c9:	50                   	push   %eax
 804e3ca:	68 b6 46 05 08       	push   $0x80546b6
 804e3cf:	e8 34 a7 ff ff       	call   8048b08 <createNode>
 804e3d4:	83 c4 10             	add    $0x10,%esp
 804e3d7:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e3dd:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e3e3:	83 e8 08             	sub    $0x8,%eax
 804e3e6:	8b 10                	mov    (%eax),%edx
 804e3e8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e3ee:	83 ec 08             	sub    $0x8,%esp
 804e3f1:	52                   	push   %edx
 804e3f2:	50                   	push   %eax
 804e3f3:	e8 93 a7 ff ff       	call   8048b8b <addChild>
 804e3f8:	83 c4 10             	add    $0x10,%esp
 804e3fb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e401:	83 e8 04             	sub    $0x4,%eax
 804e404:	8b 10                	mov    (%eax),%edx
 804e406:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e40c:	83 ec 08             	sub    $0x8,%esp
 804e40f:	52                   	push   %edx
 804e410:	50                   	push   %eax
 804e411:	e8 75 a7 ff ff       	call   8048b8b <addChild>
 804e416:	83 c4 10             	add    $0x10,%esp
 804e419:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e41f:	8b 10                	mov    (%eax),%edx
 804e421:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e427:	83 ec 08             	sub    $0x8,%esp
 804e42a:	52                   	push   %edx
 804e42b:	50                   	push   %eax
 804e42c:	e8 5a a7 ff ff       	call   8048b8b <addChild>
 804e431:	83 c4 10             	add    $0x10,%esp
 804e434:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e43a:	c7 40 04 29 00 00 00 	movl   $0x29,0x4(%eax)
 804e441:	e9 95 13 00 00       	jmp    804f7db <yyparse+0x227f>
 804e446:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e44c:	83 ec 08             	sub    $0x8,%esp
 804e44f:	50                   	push   %eax
 804e450:	68 b6 46 05 08       	push   $0x80546b6
 804e455:	e8 ae a6 ff ff       	call   8048b08 <createNode>
 804e45a:	83 c4 10             	add    $0x10,%esp
 804e45d:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e463:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e469:	8b 10                	mov    (%eax),%edx
 804e46b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e471:	83 ec 08             	sub    $0x8,%esp
 804e474:	52                   	push   %edx
 804e475:	50                   	push   %eax
 804e476:	e8 10 a7 ff ff       	call   8048b8b <addChild>
 804e47b:	83 c4 10             	add    $0x10,%esp
 804e47e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e484:	c7 40 04 29 00 00 00 	movl   $0x29,0x4(%eax)
 804e48b:	e9 4b 13 00 00       	jmp    804f7db <yyparse+0x227f>
 804e490:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e496:	83 ec 08             	sub    $0x8,%esp
 804e499:	50                   	push   %eax
 804e49a:	68 be 46 05 08       	push   $0x80546be
 804e49f:	e8 64 a6 ff ff       	call   8048b08 <createNode>
 804e4a4:	83 c4 10             	add    $0x10,%esp
 804e4a7:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e4ad:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e4b3:	83 e8 04             	sub    $0x4,%eax
 804e4b6:	8b 10                	mov    (%eax),%edx
 804e4b8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e4be:	83 ec 08             	sub    $0x8,%esp
 804e4c1:	52                   	push   %edx
 804e4c2:	50                   	push   %eax
 804e4c3:	e8 c3 a6 ff ff       	call   8048b8b <addChild>
 804e4c8:	83 c4 10             	add    $0x10,%esp
 804e4cb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e4d1:	8b 10                	mov    (%eax),%edx
 804e4d3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e4d9:	83 ec 08             	sub    $0x8,%esp
 804e4dc:	52                   	push   %edx
 804e4dd:	50                   	push   %eax
 804e4de:	e8 a8 a6 ff ff       	call   8048b8b <addChild>
 804e4e3:	83 c4 10             	add    $0x10,%esp
 804e4e6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e4ec:	c7 40 04 2a 00 00 00 	movl   $0x2a,0x4(%eax)
 804e4f3:	e9 e3 12 00 00       	jmp    804f7db <yyparse+0x227f>
 804e4f8:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e4fe:	83 ec 08             	sub    $0x8,%esp
 804e501:	50                   	push   %eax
 804e502:	68 c7 46 05 08       	push   $0x80546c7
 804e507:	e8 fc a5 ff ff       	call   8048b08 <createNode>
 804e50c:	83 c4 10             	add    $0x10,%esp
 804e50f:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e515:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e51b:	83 e8 0c             	sub    $0xc,%eax
 804e51e:	8b 10                	mov    (%eax),%edx
 804e520:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e526:	83 ec 08             	sub    $0x8,%esp
 804e529:	52                   	push   %edx
 804e52a:	50                   	push   %eax
 804e52b:	e8 5b a6 ff ff       	call   8048b8b <addChild>
 804e530:	83 c4 10             	add    $0x10,%esp
 804e533:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e539:	83 e8 08             	sub    $0x8,%eax
 804e53c:	8b 10                	mov    (%eax),%edx
 804e53e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e544:	83 ec 08             	sub    $0x8,%esp
 804e547:	52                   	push   %edx
 804e548:	50                   	push   %eax
 804e549:	e8 3d a6 ff ff       	call   8048b8b <addChild>
 804e54e:	83 c4 10             	add    $0x10,%esp
 804e551:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e557:	83 e8 04             	sub    $0x4,%eax
 804e55a:	8b 10                	mov    (%eax),%edx
 804e55c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e562:	83 ec 08             	sub    $0x8,%esp
 804e565:	52                   	push   %edx
 804e566:	50                   	push   %eax
 804e567:	e8 1f a6 ff ff       	call   8048b8b <addChild>
 804e56c:	83 c4 10             	add    $0x10,%esp
 804e56f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e575:	8b 10                	mov    (%eax),%edx
 804e577:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e57d:	83 ec 08             	sub    $0x8,%esp
 804e580:	52                   	push   %edx
 804e581:	50                   	push   %eax
 804e582:	e8 04 a6 ff ff       	call   8048b8b <addChild>
 804e587:	83 c4 10             	add    $0x10,%esp
 804e58a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e590:	c7 40 04 2b 00 00 00 	movl   $0x2b,0x4(%eax)
 804e597:	e9 3f 12 00 00       	jmp    804f7db <yyparse+0x227f>
 804e59c:	a1 20 81 05 08       	mov    0x8058120,%eax
 804e5a1:	83 c0 01             	add    $0x1,%eax
 804e5a4:	a3 20 81 05 08       	mov    %eax,0x8058120
 804e5a9:	e9 2d 12 00 00       	jmp    804f7db <yyparse+0x227f>
 804e5ae:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e5b4:	83 ec 08             	sub    $0x8,%esp
 804e5b7:	50                   	push   %eax
 804e5b8:	68 ce 46 05 08       	push   $0x80546ce
 804e5bd:	e8 46 a5 ff ff       	call   8048b08 <createNode>
 804e5c2:	83 c4 10             	add    $0x10,%esp
 804e5c5:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e5cb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e5d1:	83 e8 04             	sub    $0x4,%eax
 804e5d4:	8b 10                	mov    (%eax),%edx
 804e5d6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e5dc:	83 ec 08             	sub    $0x8,%esp
 804e5df:	52                   	push   %edx
 804e5e0:	50                   	push   %eax
 804e5e1:	e8 a5 a5 ff ff       	call   8048b8b <addChild>
 804e5e6:	83 c4 10             	add    $0x10,%esp
 804e5e9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e5ef:	8b 10                	mov    (%eax),%edx
 804e5f1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e5f7:	83 ec 08             	sub    $0x8,%esp
 804e5fa:	52                   	push   %edx
 804e5fb:	50                   	push   %eax
 804e5fc:	e8 8a a5 ff ff       	call   8048b8b <addChild>
 804e601:	83 c4 10             	add    $0x10,%esp
 804e604:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e60a:	c7 40 04 2c 00 00 00 	movl   $0x2c,0x4(%eax)
 804e611:	e9 c5 11 00 00       	jmp    804f7db <yyparse+0x227f>
 804e616:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 804e61d:	00 00 00 
 804e620:	e9 b6 11 00 00       	jmp    804f7db <yyparse+0x227f>
 804e625:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e62b:	83 ec 08             	sub    $0x8,%esp
 804e62e:	50                   	push   %eax
 804e62f:	68 d7 46 05 08       	push   $0x80546d7
 804e634:	e8 cf a4 ff ff       	call   8048b08 <createNode>
 804e639:	83 c4 10             	add    $0x10,%esp
 804e63c:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e642:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e648:	83 e8 04             	sub    $0x4,%eax
 804e64b:	8b 10                	mov    (%eax),%edx
 804e64d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e653:	83 ec 08             	sub    $0x8,%esp
 804e656:	52                   	push   %edx
 804e657:	50                   	push   %eax
 804e658:	e8 2e a5 ff ff       	call   8048b8b <addChild>
 804e65d:	83 c4 10             	add    $0x10,%esp
 804e660:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e666:	8b 10                	mov    (%eax),%edx
 804e668:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e66e:	83 ec 08             	sub    $0x8,%esp
 804e671:	52                   	push   %edx
 804e672:	50                   	push   %eax
 804e673:	e8 13 a5 ff ff       	call   8048b8b <addChild>
 804e678:	83 c4 10             	add    $0x10,%esp
 804e67b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e681:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804e688:	e9 4e 11 00 00       	jmp    804f7db <yyparse+0x227f>
 804e68d:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e693:	83 ec 08             	sub    $0x8,%esp
 804e696:	50                   	push   %eax
 804e697:	68 d7 46 05 08       	push   $0x80546d7
 804e69c:	e8 67 a4 ff ff       	call   8048b08 <createNode>
 804e6a1:	83 c4 10             	add    $0x10,%esp
 804e6a4:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e6aa:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e6b0:	8b 10                	mov    (%eax),%edx
 804e6b2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e6b8:	83 ec 08             	sub    $0x8,%esp
 804e6bb:	52                   	push   %edx
 804e6bc:	50                   	push   %eax
 804e6bd:	e8 c9 a4 ff ff       	call   8048b8b <addChild>
 804e6c2:	83 c4 10             	add    $0x10,%esp
 804e6c5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e6cb:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804e6d2:	e9 04 11 00 00       	jmp    804f7db <yyparse+0x227f>
 804e6d7:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e6dd:	83 ec 08             	sub    $0x8,%esp
 804e6e0:	50                   	push   %eax
 804e6e1:	68 d7 46 05 08       	push   $0x80546d7
 804e6e6:	e8 1d a4 ff ff       	call   8048b08 <createNode>
 804e6eb:	83 c4 10             	add    $0x10,%esp
 804e6ee:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e6f4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e6fa:	83 e8 08             	sub    $0x8,%eax
 804e6fd:	8b 10                	mov    (%eax),%edx
 804e6ff:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e705:	83 ec 08             	sub    $0x8,%esp
 804e708:	52                   	push   %edx
 804e709:	50                   	push   %eax
 804e70a:	e8 7c a4 ff ff       	call   8048b8b <addChild>
 804e70f:	83 c4 10             	add    $0x10,%esp
 804e712:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e718:	83 e8 04             	sub    $0x4,%eax
 804e71b:	8b 10                	mov    (%eax),%edx
 804e71d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e723:	83 ec 08             	sub    $0x8,%esp
 804e726:	52                   	push   %edx
 804e727:	50                   	push   %eax
 804e728:	e8 5e a4 ff ff       	call   8048b8b <addChild>
 804e72d:	83 c4 10             	add    $0x10,%esp
 804e730:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e736:	8b 10                	mov    (%eax),%edx
 804e738:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e73e:	83 ec 08             	sub    $0x8,%esp
 804e741:	52                   	push   %edx
 804e742:	50                   	push   %eax
 804e743:	e8 43 a4 ff ff       	call   8048b8b <addChild>
 804e748:	83 c4 10             	add    $0x10,%esp
 804e74b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e751:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804e758:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e75e:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804e765:	e9 71 10 00 00       	jmp    804f7db <yyparse+0x227f>
 804e76a:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e770:	83 ec 08             	sub    $0x8,%esp
 804e773:	50                   	push   %eax
 804e774:	68 d7 46 05 08       	push   $0x80546d7
 804e779:	e8 8a a3 ff ff       	call   8048b08 <createNode>
 804e77e:	83 c4 10             	add    $0x10,%esp
 804e781:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e787:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e78d:	83 e8 10             	sub    $0x10,%eax
 804e790:	8b 10                	mov    (%eax),%edx
 804e792:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e798:	83 ec 08             	sub    $0x8,%esp
 804e79b:	52                   	push   %edx
 804e79c:	50                   	push   %eax
 804e79d:	e8 e9 a3 ff ff       	call   8048b8b <addChild>
 804e7a2:	83 c4 10             	add    $0x10,%esp
 804e7a5:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e7ab:	83 e8 0c             	sub    $0xc,%eax
 804e7ae:	8b 10                	mov    (%eax),%edx
 804e7b0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e7b6:	83 ec 08             	sub    $0x8,%esp
 804e7b9:	52                   	push   %edx
 804e7ba:	50                   	push   %eax
 804e7bb:	e8 cb a3 ff ff       	call   8048b8b <addChild>
 804e7c0:	83 c4 10             	add    $0x10,%esp
 804e7c3:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e7c9:	83 e8 08             	sub    $0x8,%eax
 804e7cc:	8b 10                	mov    (%eax),%edx
 804e7ce:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e7d4:	83 ec 08             	sub    $0x8,%esp
 804e7d7:	52                   	push   %edx
 804e7d8:	50                   	push   %eax
 804e7d9:	e8 ad a3 ff ff       	call   8048b8b <addChild>
 804e7de:	83 c4 10             	add    $0x10,%esp
 804e7e1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e7e7:	83 e8 04             	sub    $0x4,%eax
 804e7ea:	8b 10                	mov    (%eax),%edx
 804e7ec:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e7f2:	83 ec 08             	sub    $0x8,%esp
 804e7f5:	52                   	push   %edx
 804e7f6:	50                   	push   %eax
 804e7f7:	e8 8f a3 ff ff       	call   8048b8b <addChild>
 804e7fc:	83 c4 10             	add    $0x10,%esp
 804e7ff:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e805:	8b 10                	mov    (%eax),%edx
 804e807:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e80d:	83 ec 08             	sub    $0x8,%esp
 804e810:	52                   	push   %edx
 804e811:	50                   	push   %eax
 804e812:	e8 74 a3 ff ff       	call   8048b8b <addChild>
 804e817:	83 c4 10             	add    $0x10,%esp
 804e81a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e820:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804e827:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e82d:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804e834:	e9 a2 0f 00 00       	jmp    804f7db <yyparse+0x227f>
 804e839:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e83f:	83 ec 08             	sub    $0x8,%esp
 804e842:	50                   	push   %eax
 804e843:	68 d7 46 05 08       	push   $0x80546d7
 804e848:	e8 bb a2 ff ff       	call   8048b08 <createNode>
 804e84d:	83 c4 10             	add    $0x10,%esp
 804e850:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e856:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e85c:	83 e8 18             	sub    $0x18,%eax
 804e85f:	8b 10                	mov    (%eax),%edx
 804e861:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e867:	83 ec 08             	sub    $0x8,%esp
 804e86a:	52                   	push   %edx
 804e86b:	50                   	push   %eax
 804e86c:	e8 1a a3 ff ff       	call   8048b8b <addChild>
 804e871:	83 c4 10             	add    $0x10,%esp
 804e874:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e87a:	83 e8 14             	sub    $0x14,%eax
 804e87d:	8b 10                	mov    (%eax),%edx
 804e87f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e885:	83 ec 08             	sub    $0x8,%esp
 804e888:	52                   	push   %edx
 804e889:	50                   	push   %eax
 804e88a:	e8 fc a2 ff ff       	call   8048b8b <addChild>
 804e88f:	83 c4 10             	add    $0x10,%esp
 804e892:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e898:	83 e8 10             	sub    $0x10,%eax
 804e89b:	8b 10                	mov    (%eax),%edx
 804e89d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e8a3:	83 ec 08             	sub    $0x8,%esp
 804e8a6:	52                   	push   %edx
 804e8a7:	50                   	push   %eax
 804e8a8:	e8 de a2 ff ff       	call   8048b8b <addChild>
 804e8ad:	83 c4 10             	add    $0x10,%esp
 804e8b0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e8b6:	83 e8 0c             	sub    $0xc,%eax
 804e8b9:	8b 10                	mov    (%eax),%edx
 804e8bb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e8c1:	83 ec 08             	sub    $0x8,%esp
 804e8c4:	52                   	push   %edx
 804e8c5:	50                   	push   %eax
 804e8c6:	e8 c0 a2 ff ff       	call   8048b8b <addChild>
 804e8cb:	83 c4 10             	add    $0x10,%esp
 804e8ce:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e8d4:	83 e8 08             	sub    $0x8,%eax
 804e8d7:	8b 10                	mov    (%eax),%edx
 804e8d9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e8df:	83 ec 08             	sub    $0x8,%esp
 804e8e2:	52                   	push   %edx
 804e8e3:	50                   	push   %eax
 804e8e4:	e8 a2 a2 ff ff       	call   8048b8b <addChild>
 804e8e9:	83 c4 10             	add    $0x10,%esp
 804e8ec:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e8f2:	83 e8 04             	sub    $0x4,%eax
 804e8f5:	8b 10                	mov    (%eax),%edx
 804e8f7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e8fd:	83 ec 08             	sub    $0x8,%esp
 804e900:	52                   	push   %edx
 804e901:	50                   	push   %eax
 804e902:	e8 84 a2 ff ff       	call   8048b8b <addChild>
 804e907:	83 c4 10             	add    $0x10,%esp
 804e90a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e910:	8b 10                	mov    (%eax),%edx
 804e912:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e918:	83 ec 08             	sub    $0x8,%esp
 804e91b:	52                   	push   %edx
 804e91c:	50                   	push   %eax
 804e91d:	e8 69 a2 ff ff       	call   8048b8b <addChild>
 804e922:	83 c4 10             	add    $0x10,%esp
 804e925:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e92b:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804e932:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e938:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804e93f:	e9 97 0e 00 00       	jmp    804f7db <yyparse+0x227f>
 804e944:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e94a:	83 ec 08             	sub    $0x8,%esp
 804e94d:	50                   	push   %eax
 804e94e:	68 d7 46 05 08       	push   $0x80546d7
 804e953:	e8 b0 a1 ff ff       	call   8048b08 <createNode>
 804e958:	83 c4 10             	add    $0x10,%esp
 804e95b:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e961:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e967:	83 e8 10             	sub    $0x10,%eax
 804e96a:	8b 10                	mov    (%eax),%edx
 804e96c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e972:	83 ec 08             	sub    $0x8,%esp
 804e975:	52                   	push   %edx
 804e976:	50                   	push   %eax
 804e977:	e8 0f a2 ff ff       	call   8048b8b <addChild>
 804e97c:	83 c4 10             	add    $0x10,%esp
 804e97f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e985:	83 e8 0c             	sub    $0xc,%eax
 804e988:	8b 10                	mov    (%eax),%edx
 804e98a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e990:	83 ec 08             	sub    $0x8,%esp
 804e993:	52                   	push   %edx
 804e994:	50                   	push   %eax
 804e995:	e8 f1 a1 ff ff       	call   8048b8b <addChild>
 804e99a:	83 c4 10             	add    $0x10,%esp
 804e99d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e9a3:	83 e8 08             	sub    $0x8,%eax
 804e9a6:	8b 10                	mov    (%eax),%edx
 804e9a8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e9ae:	83 ec 08             	sub    $0x8,%esp
 804e9b1:	52                   	push   %edx
 804e9b2:	50                   	push   %eax
 804e9b3:	e8 d3 a1 ff ff       	call   8048b8b <addChild>
 804e9b8:	83 c4 10             	add    $0x10,%esp
 804e9bb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e9c1:	83 e8 04             	sub    $0x4,%eax
 804e9c4:	8b 10                	mov    (%eax),%edx
 804e9c6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e9cc:	83 ec 08             	sub    $0x8,%esp
 804e9cf:	52                   	push   %edx
 804e9d0:	50                   	push   %eax
 804e9d1:	e8 b5 a1 ff ff       	call   8048b8b <addChild>
 804e9d6:	83 c4 10             	add    $0x10,%esp
 804e9d9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e9df:	8b 10                	mov    (%eax),%edx
 804e9e1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e9e7:	83 ec 08             	sub    $0x8,%esp
 804e9ea:	52                   	push   %edx
 804e9eb:	50                   	push   %eax
 804e9ec:	e8 9a a1 ff ff       	call   8048b8b <addChild>
 804e9f1:	83 c4 10             	add    $0x10,%esp
 804e9f4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e9fa:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ea01:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ea07:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804ea0e:	e9 c8 0d 00 00       	jmp    804f7db <yyparse+0x227f>
 804ea13:	83 ec 0c             	sub    $0xc,%esp
 804ea16:	68 48 46 05 08       	push   $0x8054648
 804ea1b:	e8 4e 3f 00 00       	call   805296e <yyerror>
 804ea20:	83 c4 10             	add    $0x10,%esp
 804ea23:	a1 20 81 05 08       	mov    0x8058120,%eax
 804ea28:	83 c0 01             	add    $0x1,%eax
 804ea2b:	a3 20 81 05 08       	mov    %eax,0x8058120
 804ea30:	e9 a6 0d 00 00       	jmp    804f7db <yyparse+0x227f>
 804ea35:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ea3b:	83 ec 08             	sub    $0x8,%esp
 804ea3e:	50                   	push   %eax
 804ea3f:	68 dc 46 05 08       	push   $0x80546dc
 804ea44:	e8 bf a0 ff ff       	call   8048b08 <createNode>
 804ea49:	83 c4 10             	add    $0x10,%esp
 804ea4c:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ea52:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ea58:	83 e8 04             	sub    $0x4,%eax
 804ea5b:	8b 10                	mov    (%eax),%edx
 804ea5d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ea63:	83 ec 08             	sub    $0x8,%esp
 804ea66:	52                   	push   %edx
 804ea67:	50                   	push   %eax
 804ea68:	e8 1e a1 ff ff       	call   8048b8b <addChild>
 804ea6d:	83 c4 10             	add    $0x10,%esp
 804ea70:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ea76:	8b 10                	mov    (%eax),%edx
 804ea78:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ea7e:	83 ec 08             	sub    $0x8,%esp
 804ea81:	52                   	push   %edx
 804ea82:	50                   	push   %eax
 804ea83:	e8 03 a1 ff ff       	call   8048b8b <addChild>
 804ea88:	83 c4 10             	add    $0x10,%esp
 804ea8b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ea91:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ea98:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ea9e:	c7 40 04 2e 00 00 00 	movl   $0x2e,0x4(%eax)
 804eaa5:	e9 31 0d 00 00       	jmp    804f7db <yyparse+0x227f>
 804eaaa:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 804eab1:	00 00 00 
 804eab4:	e9 22 0d 00 00       	jmp    804f7db <yyparse+0x227f>
 804eab9:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804eabf:	83 ec 08             	sub    $0x8,%esp
 804eac2:	50                   	push   %eax
 804eac3:	68 e4 46 05 08       	push   $0x80546e4
 804eac8:	e8 3b a0 ff ff       	call   8048b08 <createNode>
 804eacd:	83 c4 10             	add    $0x10,%esp
 804ead0:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ead6:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eadc:	83 e8 08             	sub    $0x8,%eax
 804eadf:	8b 10                	mov    (%eax),%edx
 804eae1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eae7:	83 ec 08             	sub    $0x8,%esp
 804eaea:	52                   	push   %edx
 804eaeb:	50                   	push   %eax
 804eaec:	e8 9a a0 ff ff       	call   8048b8b <addChild>
 804eaf1:	83 c4 10             	add    $0x10,%esp
 804eaf4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eafa:	83 e8 04             	sub    $0x4,%eax
 804eafd:	8b 10                	mov    (%eax),%edx
 804eaff:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb05:	83 ec 08             	sub    $0x8,%esp
 804eb08:	52                   	push   %edx
 804eb09:	50                   	push   %eax
 804eb0a:	e8 7c a0 ff ff       	call   8048b8b <addChild>
 804eb0f:	83 c4 10             	add    $0x10,%esp
 804eb12:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eb18:	8b 10                	mov    (%eax),%edx
 804eb1a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb20:	83 ec 08             	sub    $0x8,%esp
 804eb23:	52                   	push   %edx
 804eb24:	50                   	push   %eax
 804eb25:	e8 61 a0 ff ff       	call   8048b8b <addChild>
 804eb2a:	83 c4 10             	add    $0x10,%esp
 804eb2d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb33:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804eb3a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb40:	c7 40 04 2f 00 00 00 	movl   $0x2f,0x4(%eax)
 804eb47:	e9 8f 0c 00 00       	jmp    804f7db <yyparse+0x227f>
 804eb4c:	a1 20 81 05 08       	mov    0x8058120,%eax
 804eb51:	83 c0 01             	add    $0x1,%eax
 804eb54:	a3 20 81 05 08       	mov    %eax,0x8058120
 804eb59:	e9 7d 0c 00 00       	jmp    804f7db <yyparse+0x227f>
 804eb5e:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804eb64:	83 ec 08             	sub    $0x8,%esp
 804eb67:	50                   	push   %eax
 804eb68:	68 e8 46 05 08       	push   $0x80546e8
 804eb6d:	e8 96 9f ff ff       	call   8048b08 <createNode>
 804eb72:	83 c4 10             	add    $0x10,%esp
 804eb75:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804eb7b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eb81:	8b 10                	mov    (%eax),%edx
 804eb83:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb89:	83 ec 08             	sub    $0x8,%esp
 804eb8c:	52                   	push   %edx
 804eb8d:	50                   	push   %eax
 804eb8e:	e8 f8 9f ff ff       	call   8048b8b <addChild>
 804eb93:	83 c4 10             	add    $0x10,%esp
 804eb96:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb9c:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804eba3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eba9:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%eax)
 804ebb0:	e9 26 0c 00 00       	jmp    804f7db <yyparse+0x227f>
 804ebb5:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ebbb:	83 ec 08             	sub    $0x8,%esp
 804ebbe:	50                   	push   %eax
 804ebbf:	68 e8 46 05 08       	push   $0x80546e8
 804ebc4:	e8 3f 9f ff ff       	call   8048b08 <createNode>
 804ebc9:	83 c4 10             	add    $0x10,%esp
 804ebcc:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ebd2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ebd8:	83 e8 08             	sub    $0x8,%eax
 804ebdb:	8b 10                	mov    (%eax),%edx
 804ebdd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ebe3:	83 ec 08             	sub    $0x8,%esp
 804ebe6:	52                   	push   %edx
 804ebe7:	50                   	push   %eax
 804ebe8:	e8 9e 9f ff ff       	call   8048b8b <addChild>
 804ebed:	83 c4 10             	add    $0x10,%esp
 804ebf0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ebf6:	83 e8 04             	sub    $0x4,%eax
 804ebf9:	8b 10                	mov    (%eax),%edx
 804ebfb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec01:	83 ec 08             	sub    $0x8,%esp
 804ec04:	52                   	push   %edx
 804ec05:	50                   	push   %eax
 804ec06:	e8 80 9f ff ff       	call   8048b8b <addChild>
 804ec0b:	83 c4 10             	add    $0x10,%esp
 804ec0e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ec14:	8b 10                	mov    (%eax),%edx
 804ec16:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec1c:	83 ec 08             	sub    $0x8,%esp
 804ec1f:	52                   	push   %edx
 804ec20:	50                   	push   %eax
 804ec21:	e8 65 9f ff ff       	call   8048b8b <addChild>
 804ec26:	83 c4 10             	add    $0x10,%esp
 804ec29:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec2f:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ec36:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec3c:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%eax)
 804ec43:	e9 93 0b 00 00       	jmp    804f7db <yyparse+0x227f>
 804ec48:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ec4e:	83 ec 08             	sub    $0x8,%esp
 804ec51:	50                   	push   %eax
 804ec52:	68 f0 46 05 08       	push   $0x80546f0
 804ec57:	e8 ac 9e ff ff       	call   8048b08 <createNode>
 804ec5c:	83 c4 10             	add    $0x10,%esp
 804ec5f:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ec65:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ec6b:	8b 10                	mov    (%eax),%edx
 804ec6d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec73:	83 ec 08             	sub    $0x8,%esp
 804ec76:	52                   	push   %edx
 804ec77:	50                   	push   %eax
 804ec78:	e8 0e 9f ff ff       	call   8048b8b <addChild>
 804ec7d:	83 c4 10             	add    $0x10,%esp
 804ec80:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec86:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ec8d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec93:	c7 40 04 31 00 00 00 	movl   $0x31,0x4(%eax)
 804ec9a:	e9 3c 0b 00 00       	jmp    804f7db <yyparse+0x227f>
 804ec9f:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804eca5:	83 ec 08             	sub    $0x8,%esp
 804eca8:	50                   	push   %eax
 804eca9:	68 f0 46 05 08       	push   $0x80546f0
 804ecae:	e8 55 9e ff ff       	call   8048b08 <createNode>
 804ecb3:	83 c4 10             	add    $0x10,%esp
 804ecb6:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ecbc:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ecc2:	83 e8 08             	sub    $0x8,%eax
 804ecc5:	8b 10                	mov    (%eax),%edx
 804ecc7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eccd:	83 ec 08             	sub    $0x8,%esp
 804ecd0:	52                   	push   %edx
 804ecd1:	50                   	push   %eax
 804ecd2:	e8 b4 9e ff ff       	call   8048b8b <addChild>
 804ecd7:	83 c4 10             	add    $0x10,%esp
 804ecda:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ece0:	83 e8 04             	sub    $0x4,%eax
 804ece3:	8b 10                	mov    (%eax),%edx
 804ece5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eceb:	83 ec 08             	sub    $0x8,%esp
 804ecee:	52                   	push   %edx
 804ecef:	50                   	push   %eax
 804ecf0:	e8 96 9e ff ff       	call   8048b8b <addChild>
 804ecf5:	83 c4 10             	add    $0x10,%esp
 804ecf8:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ecfe:	8b 10                	mov    (%eax),%edx
 804ed00:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ed06:	83 ec 08             	sub    $0x8,%esp
 804ed09:	52                   	push   %edx
 804ed0a:	50                   	push   %eax
 804ed0b:	e8 7b 9e ff ff       	call   8048b8b <addChild>
 804ed10:	83 c4 10             	add    $0x10,%esp
 804ed13:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ed19:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ed20:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ed26:	c7 40 04 31 00 00 00 	movl   $0x31,0x4(%eax)
 804ed2d:	e9 a9 0a 00 00       	jmp    804f7db <yyparse+0x227f>
 804ed32:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ed38:	83 ec 08             	sub    $0x8,%esp
 804ed3b:	50                   	push   %eax
 804ed3c:	68 f4 46 05 08       	push   $0x80546f4
 804ed41:	e8 c2 9d ff ff       	call   8048b08 <createNode>
 804ed46:	83 c4 10             	add    $0x10,%esp
 804ed49:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ed4f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ed55:	83 e8 08             	sub    $0x8,%eax
 804ed58:	8b 10                	mov    (%eax),%edx
 804ed5a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ed60:	83 ec 08             	sub    $0x8,%esp
 804ed63:	52                   	push   %edx
 804ed64:	50                   	push   %eax
 804ed65:	e8 21 9e ff ff       	call   8048b8b <addChild>
 804ed6a:	83 c4 10             	add    $0x10,%esp
 804ed6d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ed73:	83 e8 04             	sub    $0x4,%eax
 804ed76:	8b 10                	mov    (%eax),%edx
 804ed78:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ed7e:	83 ec 08             	sub    $0x8,%esp
 804ed81:	52                   	push   %edx
 804ed82:	50                   	push   %eax
 804ed83:	e8 03 9e ff ff       	call   8048b8b <addChild>
 804ed88:	83 c4 10             	add    $0x10,%esp
 804ed8b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ed91:	8b 10                	mov    (%eax),%edx
 804ed93:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ed99:	83 ec 08             	sub    $0x8,%esp
 804ed9c:	52                   	push   %edx
 804ed9d:	50                   	push   %eax
 804ed9e:	e8 e8 9d ff ff       	call   8048b8b <addChild>
 804eda3:	83 c4 10             	add    $0x10,%esp
 804eda6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804edac:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804edb3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804edb9:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804edc0:	e9 16 0a 00 00       	jmp    804f7db <yyparse+0x227f>
 804edc5:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804edcb:	83 ec 08             	sub    $0x8,%esp
 804edce:	50                   	push   %eax
 804edcf:	68 f4 46 05 08       	push   $0x80546f4
 804edd4:	e8 2f 9d ff ff       	call   8048b08 <createNode>
 804edd9:	83 c4 10             	add    $0x10,%esp
 804eddc:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ede2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ede8:	83 e8 08             	sub    $0x8,%eax
 804edeb:	8b 10                	mov    (%eax),%edx
 804eded:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804edf3:	83 ec 08             	sub    $0x8,%esp
 804edf6:	52                   	push   %edx
 804edf7:	50                   	push   %eax
 804edf8:	e8 8e 9d ff ff       	call   8048b8b <addChild>
 804edfd:	83 c4 10             	add    $0x10,%esp
 804ee00:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ee06:	83 e8 04             	sub    $0x4,%eax
 804ee09:	8b 10                	mov    (%eax),%edx
 804ee0b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ee11:	83 ec 08             	sub    $0x8,%esp
 804ee14:	52                   	push   %edx
 804ee15:	50                   	push   %eax
 804ee16:	e8 70 9d ff ff       	call   8048b8b <addChild>
 804ee1b:	83 c4 10             	add    $0x10,%esp
 804ee1e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ee24:	8b 10                	mov    (%eax),%edx
 804ee26:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ee2c:	83 ec 08             	sub    $0x8,%esp
 804ee2f:	52                   	push   %edx
 804ee30:	50                   	push   %eax
 804ee31:	e8 55 9d ff ff       	call   8048b8b <addChild>
 804ee36:	83 c4 10             	add    $0x10,%esp
 804ee39:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ee3f:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ee46:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ee4c:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804ee53:	e9 83 09 00 00       	jmp    804f7db <yyparse+0x227f>
 804ee58:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ee5e:	83 ec 08             	sub    $0x8,%esp
 804ee61:	50                   	push   %eax
 804ee62:	68 f4 46 05 08       	push   $0x80546f4
 804ee67:	e8 9c 9c ff ff       	call   8048b08 <createNode>
 804ee6c:	83 c4 10             	add    $0x10,%esp
 804ee6f:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ee75:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ee7b:	83 e8 08             	sub    $0x8,%eax
 804ee7e:	8b 10                	mov    (%eax),%edx
 804ee80:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ee86:	83 ec 08             	sub    $0x8,%esp
 804ee89:	52                   	push   %edx
 804ee8a:	50                   	push   %eax
 804ee8b:	e8 fb 9c ff ff       	call   8048b8b <addChild>
 804ee90:	83 c4 10             	add    $0x10,%esp
 804ee93:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ee99:	83 e8 04             	sub    $0x4,%eax
 804ee9c:	8b 10                	mov    (%eax),%edx
 804ee9e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eea4:	83 ec 08             	sub    $0x8,%esp
 804eea7:	52                   	push   %edx
 804eea8:	50                   	push   %eax
 804eea9:	e8 dd 9c ff ff       	call   8048b8b <addChild>
 804eeae:	83 c4 10             	add    $0x10,%esp
 804eeb1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eeb7:	8b 10                	mov    (%eax),%edx
 804eeb9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eebf:	83 ec 08             	sub    $0x8,%esp
 804eec2:	52                   	push   %edx
 804eec3:	50                   	push   %eax
 804eec4:	e8 c2 9c ff ff       	call   8048b8b <addChild>
 804eec9:	83 c4 10             	add    $0x10,%esp
 804eecc:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eed2:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804eed9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eedf:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804eee6:	e9 f0 08 00 00       	jmp    804f7db <yyparse+0x227f>
 804eeeb:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804eef1:	83 ec 08             	sub    $0x8,%esp
 804eef4:	50                   	push   %eax
 804eef5:	68 f4 46 05 08       	push   $0x80546f4
 804eefa:	e8 09 9c ff ff       	call   8048b08 <createNode>
 804eeff:	83 c4 10             	add    $0x10,%esp
 804ef02:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ef08:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ef0e:	83 e8 08             	sub    $0x8,%eax
 804ef11:	8b 10                	mov    (%eax),%edx
 804ef13:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ef19:	83 ec 08             	sub    $0x8,%esp
 804ef1c:	52                   	push   %edx
 804ef1d:	50                   	push   %eax
 804ef1e:	e8 68 9c ff ff       	call   8048b8b <addChild>
 804ef23:	83 c4 10             	add    $0x10,%esp
 804ef26:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ef2c:	83 e8 04             	sub    $0x4,%eax
 804ef2f:	8b 10                	mov    (%eax),%edx
 804ef31:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ef37:	83 ec 08             	sub    $0x8,%esp
 804ef3a:	52                   	push   %edx
 804ef3b:	50                   	push   %eax
 804ef3c:	e8 4a 9c ff ff       	call   8048b8b <addChild>
 804ef41:	83 c4 10             	add    $0x10,%esp
 804ef44:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ef4a:	8b 10                	mov    (%eax),%edx
 804ef4c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ef52:	83 ec 08             	sub    $0x8,%esp
 804ef55:	52                   	push   %edx
 804ef56:	50                   	push   %eax
 804ef57:	e8 2f 9c ff ff       	call   8048b8b <addChild>
 804ef5c:	83 c4 10             	add    $0x10,%esp
 804ef5f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ef65:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ef6c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ef72:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804ef79:	e9 5d 08 00 00       	jmp    804f7db <yyparse+0x227f>
 804ef7e:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ef84:	83 ec 08             	sub    $0x8,%esp
 804ef87:	50                   	push   %eax
 804ef88:	68 f4 46 05 08       	push   $0x80546f4
 804ef8d:	e8 76 9b ff ff       	call   8048b08 <createNode>
 804ef92:	83 c4 10             	add    $0x10,%esp
 804ef95:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ef9b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804efa1:	83 e8 08             	sub    $0x8,%eax
 804efa4:	8b 10                	mov    (%eax),%edx
 804efa6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804efac:	83 ec 08             	sub    $0x8,%esp
 804efaf:	52                   	push   %edx
 804efb0:	50                   	push   %eax
 804efb1:	e8 d5 9b ff ff       	call   8048b8b <addChild>
 804efb6:	83 c4 10             	add    $0x10,%esp
 804efb9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804efbf:	83 e8 04             	sub    $0x4,%eax
 804efc2:	8b 10                	mov    (%eax),%edx
 804efc4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804efca:	83 ec 08             	sub    $0x8,%esp
 804efcd:	52                   	push   %edx
 804efce:	50                   	push   %eax
 804efcf:	e8 b7 9b ff ff       	call   8048b8b <addChild>
 804efd4:	83 c4 10             	add    $0x10,%esp
 804efd7:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804efdd:	8b 10                	mov    (%eax),%edx
 804efdf:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804efe5:	83 ec 08             	sub    $0x8,%esp
 804efe8:	52                   	push   %edx
 804efe9:	50                   	push   %eax
 804efea:	e8 9c 9b ff ff       	call   8048b8b <addChild>
 804efef:	83 c4 10             	add    $0x10,%esp
 804eff2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eff8:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804efff:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f005:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f00c:	e9 ca 07 00 00       	jmp    804f7db <yyparse+0x227f>
 804f011:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f017:	83 ec 08             	sub    $0x8,%esp
 804f01a:	50                   	push   %eax
 804f01b:	68 f4 46 05 08       	push   $0x80546f4
 804f020:	e8 e3 9a ff ff       	call   8048b08 <createNode>
 804f025:	83 c4 10             	add    $0x10,%esp
 804f028:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f02e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f034:	83 e8 08             	sub    $0x8,%eax
 804f037:	8b 10                	mov    (%eax),%edx
 804f039:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f03f:	83 ec 08             	sub    $0x8,%esp
 804f042:	52                   	push   %edx
 804f043:	50                   	push   %eax
 804f044:	e8 42 9b ff ff       	call   8048b8b <addChild>
 804f049:	83 c4 10             	add    $0x10,%esp
 804f04c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f052:	83 e8 04             	sub    $0x4,%eax
 804f055:	8b 10                	mov    (%eax),%edx
 804f057:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f05d:	83 ec 08             	sub    $0x8,%esp
 804f060:	52                   	push   %edx
 804f061:	50                   	push   %eax
 804f062:	e8 24 9b ff ff       	call   8048b8b <addChild>
 804f067:	83 c4 10             	add    $0x10,%esp
 804f06a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f070:	8b 10                	mov    (%eax),%edx
 804f072:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f078:	83 ec 08             	sub    $0x8,%esp
 804f07b:	52                   	push   %edx
 804f07c:	50                   	push   %eax
 804f07d:	e8 09 9b ff ff       	call   8048b8b <addChild>
 804f082:	83 c4 10             	add    $0x10,%esp
 804f085:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f08b:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f092:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f098:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f09f:	e9 37 07 00 00       	jmp    804f7db <yyparse+0x227f>
 804f0a4:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f0aa:	83 ec 08             	sub    $0x8,%esp
 804f0ad:	50                   	push   %eax
 804f0ae:	68 f4 46 05 08       	push   $0x80546f4
 804f0b3:	e8 50 9a ff ff       	call   8048b08 <createNode>
 804f0b8:	83 c4 10             	add    $0x10,%esp
 804f0bb:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f0c1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f0c7:	83 e8 08             	sub    $0x8,%eax
 804f0ca:	8b 10                	mov    (%eax),%edx
 804f0cc:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f0d2:	83 ec 08             	sub    $0x8,%esp
 804f0d5:	52                   	push   %edx
 804f0d6:	50                   	push   %eax
 804f0d7:	e8 af 9a ff ff       	call   8048b8b <addChild>
 804f0dc:	83 c4 10             	add    $0x10,%esp
 804f0df:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f0e5:	83 e8 04             	sub    $0x4,%eax
 804f0e8:	8b 10                	mov    (%eax),%edx
 804f0ea:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f0f0:	83 ec 08             	sub    $0x8,%esp
 804f0f3:	52                   	push   %edx
 804f0f4:	50                   	push   %eax
 804f0f5:	e8 91 9a ff ff       	call   8048b8b <addChild>
 804f0fa:	83 c4 10             	add    $0x10,%esp
 804f0fd:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f103:	8b 10                	mov    (%eax),%edx
 804f105:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f10b:	83 ec 08             	sub    $0x8,%esp
 804f10e:	52                   	push   %edx
 804f10f:	50                   	push   %eax
 804f110:	e8 76 9a ff ff       	call   8048b8b <addChild>
 804f115:	83 c4 10             	add    $0x10,%esp
 804f118:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f11e:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f125:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f12b:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f132:	e9 a4 06 00 00       	jmp    804f7db <yyparse+0x227f>
 804f137:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f13d:	83 ec 08             	sub    $0x8,%esp
 804f140:	50                   	push   %eax
 804f141:	68 f4 46 05 08       	push   $0x80546f4
 804f146:	e8 bd 99 ff ff       	call   8048b08 <createNode>
 804f14b:	83 c4 10             	add    $0x10,%esp
 804f14e:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f154:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f15a:	83 e8 08             	sub    $0x8,%eax
 804f15d:	8b 10                	mov    (%eax),%edx
 804f15f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f165:	83 ec 08             	sub    $0x8,%esp
 804f168:	52                   	push   %edx
 804f169:	50                   	push   %eax
 804f16a:	e8 1c 9a ff ff       	call   8048b8b <addChild>
 804f16f:	83 c4 10             	add    $0x10,%esp
 804f172:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f178:	83 e8 04             	sub    $0x4,%eax
 804f17b:	8b 10                	mov    (%eax),%edx
 804f17d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f183:	83 ec 08             	sub    $0x8,%esp
 804f186:	52                   	push   %edx
 804f187:	50                   	push   %eax
 804f188:	e8 fe 99 ff ff       	call   8048b8b <addChild>
 804f18d:	83 c4 10             	add    $0x10,%esp
 804f190:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f196:	8b 10                	mov    (%eax),%edx
 804f198:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f19e:	83 ec 08             	sub    $0x8,%esp
 804f1a1:	52                   	push   %edx
 804f1a2:	50                   	push   %eax
 804f1a3:	e8 e3 99 ff ff       	call   8048b8b <addChild>
 804f1a8:	83 c4 10             	add    $0x10,%esp
 804f1ab:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f1b1:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f1b8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f1be:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f1c5:	e9 11 06 00 00       	jmp    804f7db <yyparse+0x227f>
 804f1ca:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f1d0:	83 ec 08             	sub    $0x8,%esp
 804f1d3:	50                   	push   %eax
 804f1d4:	68 f4 46 05 08       	push   $0x80546f4
 804f1d9:	e8 2a 99 ff ff       	call   8048b08 <createNode>
 804f1de:	83 c4 10             	add    $0x10,%esp
 804f1e1:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f1e7:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f1ed:	83 e8 08             	sub    $0x8,%eax
 804f1f0:	8b 10                	mov    (%eax),%edx
 804f1f2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f1f8:	83 ec 08             	sub    $0x8,%esp
 804f1fb:	52                   	push   %edx
 804f1fc:	50                   	push   %eax
 804f1fd:	e8 89 99 ff ff       	call   8048b8b <addChild>
 804f202:	83 c4 10             	add    $0x10,%esp
 804f205:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f20b:	83 e8 04             	sub    $0x4,%eax
 804f20e:	8b 10                	mov    (%eax),%edx
 804f210:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f216:	83 ec 08             	sub    $0x8,%esp
 804f219:	52                   	push   %edx
 804f21a:	50                   	push   %eax
 804f21b:	e8 6b 99 ff ff       	call   8048b8b <addChild>
 804f220:	83 c4 10             	add    $0x10,%esp
 804f223:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f229:	8b 10                	mov    (%eax),%edx
 804f22b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f231:	83 ec 08             	sub    $0x8,%esp
 804f234:	52                   	push   %edx
 804f235:	50                   	push   %eax
 804f236:	e8 50 99 ff ff       	call   8048b8b <addChild>
 804f23b:	83 c4 10             	add    $0x10,%esp
 804f23e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f244:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f24b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f251:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f258:	e9 7e 05 00 00       	jmp    804f7db <yyparse+0x227f>
 804f25d:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f263:	83 ec 08             	sub    $0x8,%esp
 804f266:	50                   	push   %eax
 804f267:	68 f4 46 05 08       	push   $0x80546f4
 804f26c:	e8 97 98 ff ff       	call   8048b08 <createNode>
 804f271:	83 c4 10             	add    $0x10,%esp
 804f274:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f27a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f280:	83 e8 04             	sub    $0x4,%eax
 804f283:	8b 10                	mov    (%eax),%edx
 804f285:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f28b:	83 ec 08             	sub    $0x8,%esp
 804f28e:	52                   	push   %edx
 804f28f:	50                   	push   %eax
 804f290:	e8 f6 98 ff ff       	call   8048b8b <addChild>
 804f295:	83 c4 10             	add    $0x10,%esp
 804f298:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f29e:	8b 10                	mov    (%eax),%edx
 804f2a0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f2a6:	83 ec 08             	sub    $0x8,%esp
 804f2a9:	52                   	push   %edx
 804f2aa:	50                   	push   %eax
 804f2ab:	e8 db 98 ff ff       	call   8048b8b <addChild>
 804f2b0:	83 c4 10             	add    $0x10,%esp
 804f2b3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f2b9:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f2c0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f2c6:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f2cd:	e9 09 05 00 00       	jmp    804f7db <yyparse+0x227f>
 804f2d2:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f2d8:	83 ec 08             	sub    $0x8,%esp
 804f2db:	50                   	push   %eax
 804f2dc:	68 f4 46 05 08       	push   $0x80546f4
 804f2e1:	e8 22 98 ff ff       	call   8048b08 <createNode>
 804f2e6:	83 c4 10             	add    $0x10,%esp
 804f2e9:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f2ef:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f2f5:	83 e8 04             	sub    $0x4,%eax
 804f2f8:	8b 10                	mov    (%eax),%edx
 804f2fa:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f300:	83 ec 08             	sub    $0x8,%esp
 804f303:	52                   	push   %edx
 804f304:	50                   	push   %eax
 804f305:	e8 81 98 ff ff       	call   8048b8b <addChild>
 804f30a:	83 c4 10             	add    $0x10,%esp
 804f30d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f313:	8b 10                	mov    (%eax),%edx
 804f315:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f31b:	83 ec 08             	sub    $0x8,%esp
 804f31e:	52                   	push   %edx
 804f31f:	50                   	push   %eax
 804f320:	e8 66 98 ff ff       	call   8048b8b <addChild>
 804f325:	83 c4 10             	add    $0x10,%esp
 804f328:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f32e:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f335:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f33b:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f342:	e9 94 04 00 00       	jmp    804f7db <yyparse+0x227f>
 804f347:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f34d:	83 ec 08             	sub    $0x8,%esp
 804f350:	50                   	push   %eax
 804f351:	68 f4 46 05 08       	push   $0x80546f4
 804f356:	e8 ad 97 ff ff       	call   8048b08 <createNode>
 804f35b:	83 c4 10             	add    $0x10,%esp
 804f35e:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f364:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f36a:	83 e8 0c             	sub    $0xc,%eax
 804f36d:	8b 10                	mov    (%eax),%edx
 804f36f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f375:	83 ec 08             	sub    $0x8,%esp
 804f378:	52                   	push   %edx
 804f379:	50                   	push   %eax
 804f37a:	e8 0c 98 ff ff       	call   8048b8b <addChild>
 804f37f:	83 c4 10             	add    $0x10,%esp
 804f382:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f388:	83 e8 08             	sub    $0x8,%eax
 804f38b:	8b 10                	mov    (%eax),%edx
 804f38d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f393:	83 ec 08             	sub    $0x8,%esp
 804f396:	52                   	push   %edx
 804f397:	50                   	push   %eax
 804f398:	e8 ee 97 ff ff       	call   8048b8b <addChild>
 804f39d:	83 c4 10             	add    $0x10,%esp
 804f3a0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f3a6:	83 e8 04             	sub    $0x4,%eax
 804f3a9:	8b 10                	mov    (%eax),%edx
 804f3ab:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f3b1:	83 ec 08             	sub    $0x8,%esp
 804f3b4:	52                   	push   %edx
 804f3b5:	50                   	push   %eax
 804f3b6:	e8 d0 97 ff ff       	call   8048b8b <addChild>
 804f3bb:	83 c4 10             	add    $0x10,%esp
 804f3be:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f3c4:	8b 10                	mov    (%eax),%edx
 804f3c6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f3cc:	83 ec 08             	sub    $0x8,%esp
 804f3cf:	52                   	push   %edx
 804f3d0:	50                   	push   %eax
 804f3d1:	e8 b5 97 ff ff       	call   8048b8b <addChild>
 804f3d6:	83 c4 10             	add    $0x10,%esp
 804f3d9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f3df:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f3e6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f3ec:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f3f3:	e9 e3 03 00 00       	jmp    804f7db <yyparse+0x227f>
 804f3f8:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f3fe:	83 ec 08             	sub    $0x8,%esp
 804f401:	50                   	push   %eax
 804f402:	68 f4 46 05 08       	push   $0x80546f4
 804f407:	e8 fc 96 ff ff       	call   8048b08 <createNode>
 804f40c:	83 c4 10             	add    $0x10,%esp
 804f40f:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f415:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f41b:	83 e8 08             	sub    $0x8,%eax
 804f41e:	8b 10                	mov    (%eax),%edx
 804f420:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f426:	83 ec 08             	sub    $0x8,%esp
 804f429:	52                   	push   %edx
 804f42a:	50                   	push   %eax
 804f42b:	e8 5b 97 ff ff       	call   8048b8b <addChild>
 804f430:	83 c4 10             	add    $0x10,%esp
 804f433:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f439:	83 e8 04             	sub    $0x4,%eax
 804f43c:	8b 10                	mov    (%eax),%edx
 804f43e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f444:	83 ec 08             	sub    $0x8,%esp
 804f447:	52                   	push   %edx
 804f448:	50                   	push   %eax
 804f449:	e8 3d 97 ff ff       	call   8048b8b <addChild>
 804f44e:	83 c4 10             	add    $0x10,%esp
 804f451:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f457:	8b 10                	mov    (%eax),%edx
 804f459:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f45f:	83 ec 08             	sub    $0x8,%esp
 804f462:	52                   	push   %edx
 804f463:	50                   	push   %eax
 804f464:	e8 22 97 ff ff       	call   8048b8b <addChild>
 804f469:	83 c4 10             	add    $0x10,%esp
 804f46c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f472:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f479:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f47f:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f486:	e9 50 03 00 00       	jmp    804f7db <yyparse+0x227f>
 804f48b:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f491:	83 ec 08             	sub    $0x8,%esp
 804f494:	50                   	push   %eax
 804f495:	68 f4 46 05 08       	push   $0x80546f4
 804f49a:	e8 69 96 ff ff       	call   8048b08 <createNode>
 804f49f:	83 c4 10             	add    $0x10,%esp
 804f4a2:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f4a8:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f4ae:	83 e8 0c             	sub    $0xc,%eax
 804f4b1:	8b 10                	mov    (%eax),%edx
 804f4b3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f4b9:	83 ec 08             	sub    $0x8,%esp
 804f4bc:	52                   	push   %edx
 804f4bd:	50                   	push   %eax
 804f4be:	e8 c8 96 ff ff       	call   8048b8b <addChild>
 804f4c3:	83 c4 10             	add    $0x10,%esp
 804f4c6:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f4cc:	83 e8 08             	sub    $0x8,%eax
 804f4cf:	8b 10                	mov    (%eax),%edx
 804f4d1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f4d7:	83 ec 08             	sub    $0x8,%esp
 804f4da:	52                   	push   %edx
 804f4db:	50                   	push   %eax
 804f4dc:	e8 aa 96 ff ff       	call   8048b8b <addChild>
 804f4e1:	83 c4 10             	add    $0x10,%esp
 804f4e4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f4ea:	83 e8 04             	sub    $0x4,%eax
 804f4ed:	8b 10                	mov    (%eax),%edx
 804f4ef:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f4f5:	83 ec 08             	sub    $0x8,%esp
 804f4f8:	52                   	push   %edx
 804f4f9:	50                   	push   %eax
 804f4fa:	e8 8c 96 ff ff       	call   8048b8b <addChild>
 804f4ff:	83 c4 10             	add    $0x10,%esp
 804f502:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f508:	8b 10                	mov    (%eax),%edx
 804f50a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f510:	83 ec 08             	sub    $0x8,%esp
 804f513:	52                   	push   %edx
 804f514:	50                   	push   %eax
 804f515:	e8 71 96 ff ff       	call   8048b8b <addChild>
 804f51a:	83 c4 10             	add    $0x10,%esp
 804f51d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f523:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f52a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f530:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f537:	e9 9f 02 00 00       	jmp    804f7db <yyparse+0x227f>
 804f53c:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f542:	83 ec 08             	sub    $0x8,%esp
 804f545:	50                   	push   %eax
 804f546:	68 f4 46 05 08       	push   $0x80546f4
 804f54b:	e8 b8 95 ff ff       	call   8048b08 <createNode>
 804f550:	83 c4 10             	add    $0x10,%esp
 804f553:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f559:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f55f:	83 e8 08             	sub    $0x8,%eax
 804f562:	8b 10                	mov    (%eax),%edx
 804f564:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f56a:	83 ec 08             	sub    $0x8,%esp
 804f56d:	52                   	push   %edx
 804f56e:	50                   	push   %eax
 804f56f:	e8 17 96 ff ff       	call   8048b8b <addChild>
 804f574:	83 c4 10             	add    $0x10,%esp
 804f577:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f57d:	83 e8 04             	sub    $0x4,%eax
 804f580:	8b 10                	mov    (%eax),%edx
 804f582:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f588:	83 ec 08             	sub    $0x8,%esp
 804f58b:	52                   	push   %edx
 804f58c:	50                   	push   %eax
 804f58d:	e8 f9 95 ff ff       	call   8048b8b <addChild>
 804f592:	83 c4 10             	add    $0x10,%esp
 804f595:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f59b:	8b 10                	mov    (%eax),%edx
 804f59d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f5a3:	83 ec 08             	sub    $0x8,%esp
 804f5a6:	52                   	push   %edx
 804f5a7:	50                   	push   %eax
 804f5a8:	e8 de 95 ff ff       	call   8048b8b <addChild>
 804f5ad:	83 c4 10             	add    $0x10,%esp
 804f5b0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f5b6:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f5bd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f5c3:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f5ca:	e9 0c 02 00 00       	jmp    804f7db <yyparse+0x227f>
 804f5cf:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f5d5:	83 ec 08             	sub    $0x8,%esp
 804f5d8:	50                   	push   %eax
 804f5d9:	68 f4 46 05 08       	push   $0x80546f4
 804f5de:	e8 25 95 ff ff       	call   8048b08 <createNode>
 804f5e3:	83 c4 10             	add    $0x10,%esp
 804f5e6:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f5ec:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f5f2:	8b 10                	mov    (%eax),%edx
 804f5f4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f5fa:	83 ec 08             	sub    $0x8,%esp
 804f5fd:	52                   	push   %edx
 804f5fe:	50                   	push   %eax
 804f5ff:	e8 87 95 ff ff       	call   8048b8b <addChild>
 804f604:	83 c4 10             	add    $0x10,%esp
 804f607:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f60d:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f614:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f61a:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f621:	e9 b5 01 00 00       	jmp    804f7db <yyparse+0x227f>
 804f626:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f62c:	83 ec 08             	sub    $0x8,%esp
 804f62f:	50                   	push   %eax
 804f630:	68 f4 46 05 08       	push   $0x80546f4
 804f635:	e8 ce 94 ff ff       	call   8048b08 <createNode>
 804f63a:	83 c4 10             	add    $0x10,%esp
 804f63d:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f643:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f649:	8b 10                	mov    (%eax),%edx
 804f64b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f651:	83 ec 08             	sub    $0x8,%esp
 804f654:	52                   	push   %edx
 804f655:	50                   	push   %eax
 804f656:	e8 30 95 ff ff       	call   8048b8b <addChild>
 804f65b:	83 c4 10             	add    $0x10,%esp
 804f65e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f664:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f66b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f671:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f678:	e9 5e 01 00 00       	jmp    804f7db <yyparse+0x227f>
 804f67d:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f683:	83 ec 08             	sub    $0x8,%esp
 804f686:	50                   	push   %eax
 804f687:	68 f4 46 05 08       	push   $0x80546f4
 804f68c:	e8 77 94 ff ff       	call   8048b08 <createNode>
 804f691:	83 c4 10             	add    $0x10,%esp
 804f694:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f69a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f6a0:	8b 10                	mov    (%eax),%edx
 804f6a2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f6a8:	83 ec 08             	sub    $0x8,%esp
 804f6ab:	52                   	push   %edx
 804f6ac:	50                   	push   %eax
 804f6ad:	e8 d9 94 ff ff       	call   8048b8b <addChild>
 804f6b2:	83 c4 10             	add    $0x10,%esp
 804f6b5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f6bb:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f6c2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f6c8:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f6cf:	e9 07 01 00 00       	jmp    804f7db <yyparse+0x227f>
 804f6d4:	83 ec 0c             	sub    $0xc,%esp
 804f6d7:	68 97 46 05 08       	push   $0x8054697
 804f6dc:	e8 8d 32 00 00       	call   805296e <yyerror>
 804f6e1:	83 c4 10             	add    $0x10,%esp
 804f6e4:	a1 20 81 05 08       	mov    0x8058120,%eax
 804f6e9:	83 c0 01             	add    $0x1,%eax
 804f6ec:	a3 20 81 05 08       	mov    %eax,0x8058120
 804f6f1:	e9 e5 00 00 00       	jmp    804f7db <yyparse+0x227f>
 804f6f6:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f6fc:	83 ec 08             	sub    $0x8,%esp
 804f6ff:	50                   	push   %eax
 804f700:	68 f8 46 05 08       	push   $0x80546f8
 804f705:	e8 fe 93 ff ff       	call   8048b08 <createNode>
 804f70a:	83 c4 10             	add    $0x10,%esp
 804f70d:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f713:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f719:	83 e8 08             	sub    $0x8,%eax
 804f71c:	8b 10                	mov    (%eax),%edx
 804f71e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f724:	83 ec 08             	sub    $0x8,%esp
 804f727:	52                   	push   %edx
 804f728:	50                   	push   %eax
 804f729:	e8 5d 94 ff ff       	call   8048b8b <addChild>
 804f72e:	83 c4 10             	add    $0x10,%esp
 804f731:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f737:	83 e8 04             	sub    $0x4,%eax
 804f73a:	8b 10                	mov    (%eax),%edx
 804f73c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f742:	83 ec 08             	sub    $0x8,%esp
 804f745:	52                   	push   %edx
 804f746:	50                   	push   %eax
 804f747:	e8 3f 94 ff ff       	call   8048b8b <addChild>
 804f74c:	83 c4 10             	add    $0x10,%esp
 804f74f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f755:	8b 10                	mov    (%eax),%edx
 804f757:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f75d:	83 ec 08             	sub    $0x8,%esp
 804f760:	52                   	push   %edx
 804f761:	50                   	push   %eax
 804f762:	e8 24 94 ff ff       	call   8048b8b <addChild>
 804f767:	83 c4 10             	add    $0x10,%esp
 804f76a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f770:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f777:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f77d:	c7 40 04 33 00 00 00 	movl   $0x33,0x4(%eax)
 804f784:	eb 55                	jmp    804f7db <yyparse+0x227f>
 804f786:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f78c:	83 ec 08             	sub    $0x8,%esp
 804f78f:	50                   	push   %eax
 804f790:	68 f8 46 05 08       	push   $0x80546f8
 804f795:	e8 6e 93 ff ff       	call   8048b08 <createNode>
 804f79a:	83 c4 10             	add    $0x10,%esp
 804f79d:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f7a3:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f7a9:	8b 10                	mov    (%eax),%edx
 804f7ab:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f7b1:	83 ec 08             	sub    $0x8,%esp
 804f7b4:	52                   	push   %edx
 804f7b5:	50                   	push   %eax
 804f7b6:	e8 d0 93 ff ff       	call   8048b8b <addChild>
 804f7bb:	83 c4 10             	add    $0x10,%esp
 804f7be:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f7c4:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f7cb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f7d1:	c7 40 04 33 00 00 00 	movl   $0x33,0x4(%eax)
 804f7d8:	eb 01                	jmp    804f7db <yyparse+0x227f>
 804f7da:	90                   	nop
 804f7db:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804f7e1:	c1 e0 02             	shl    $0x2,%eax
 804f7e4:	f7 d8                	neg    %eax
 804f7e6:	01 85 4c ee ff ff    	add    %eax,-0x11b4(%ebp)
 804f7ec:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804f7f2:	01 c0                	add    %eax,%eax
 804f7f4:	f7 d8                	neg    %eax
 804f7f6:	01 85 44 ee ff ff    	add    %eax,-0x11bc(%ebp)
 804f7fc:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804f802:	c1 e0 04             	shl    $0x4,%eax
 804f805:	f7 d8                	neg    %eax
 804f807:	01 85 54 ee ff ff    	add    %eax,-0x11ac(%ebp)
 804f80d:	c7 85 68 ee ff ff 00 	movl   $0x0,-0x1198(%ebp)
 804f814:	00 00 00 
 804f817:	83 85 4c ee ff ff 04 	addl   $0x4,-0x11b4(%ebp)
 804f81e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f824:	8b 95 34 ee ff ff    	mov    -0x11cc(%ebp),%edx
 804f82a:	89 10                	mov    %edx,(%eax)
 804f82c:	83 85 54 ee ff ff 10 	addl   $0x10,-0x11ac(%ebp)
 804f833:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804f839:	8b 95 84 ee ff ff    	mov    -0x117c(%ebp),%edx
 804f83f:	89 10                	mov    %edx,(%eax)
 804f841:	8b 95 88 ee ff ff    	mov    -0x1178(%ebp),%edx
 804f847:	89 50 04             	mov    %edx,0x4(%eax)
 804f84a:	8b 95 8c ee ff ff    	mov    -0x1174(%ebp),%edx
 804f850:	89 50 08             	mov    %edx,0x8(%eax)
 804f853:	8b 95 90 ee ff ff    	mov    -0x1170(%ebp),%edx
 804f859:	89 50 0c             	mov    %edx,0xc(%eax)
 804f85c:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804f862:	05 80 45 05 08       	add    $0x8054580,%eax
 804f867:	0f b6 00             	movzbl (%eax),%eax
 804f86a:	0f b6 c0             	movzbl %al,%eax
 804f86d:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804f873:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804f879:	83 e8 20             	sub    $0x20,%eax
 804f87c:	0f b7 84 00 60 42 05 	movzwl 0x8054260(%eax,%eax,1),%eax
 804f883:	08 
 804f884:	0f bf d0             	movswl %ax,%edx
 804f887:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 804f88d:	0f b7 00             	movzwl (%eax),%eax
 804f890:	98                   	cwtl   
 804f891:	01 d0                	add    %edx,%eax
 804f893:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 804f899:	83 bd 38 ee ff ff 00 	cmpl   $0x0,-0x11c8(%ebp)
 804f8a0:	78 48                	js     804f8ea <yyparse+0x238e>
 804f8a2:	81 bd 38 ee ff ff 0a 	cmpl   $0x10a,-0x11c8(%ebp)
 804f8a9:	01 00 00 
 804f8ac:	7f 3c                	jg     804f8ea <yyparse+0x238e>
 804f8ae:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804f8b4:	05 e0 43 05 08       	add    $0x80543e0,%eax
 804f8b9:	0f b6 00             	movzbl (%eax),%eax
 804f8bc:	66 0f be d0          	movsbw %al,%dx
 804f8c0:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 804f8c6:	0f b7 00             	movzwl (%eax),%eax
 804f8c9:	66 39 c2             	cmp    %ax,%dx
 804f8cc:	75 1c                	jne    804f8ea <yyparse+0x238e>
 804f8ce:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804f8d4:	05 c0 42 05 08       	add    $0x80542c0,%eax
 804f8d9:	0f b6 00             	movzbl (%eax),%eax
 804f8dc:	0f be c0             	movsbl %al,%eax
 804f8df:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 804f8e5:	e9 3f dd ff ff       	jmp    804d629 <yyparse+0xcd>
 804f8ea:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804f8f0:	83 e8 20             	sub    $0x20,%eax
 804f8f3:	0f b6 80 8c 42 05 08 	movzbl 0x805428c(%eax),%eax
 804f8fa:	0f be c0             	movsbl %al,%eax
 804f8fd:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 804f903:	e9 21 dd ff ff       	jmp    804d629 <yyparse+0xcd>
 804f908:	90                   	nop
 804f909:	a1 60 81 05 08       	mov    0x8058160,%eax
 804f90e:	83 f8 fe             	cmp    $0xfffffffe,%eax
 804f911:	74 24                	je     804f937 <yyparse+0x23db>
 804f913:	a1 60 81 05 08       	mov    0x8058160,%eax
 804f918:	3d 1e 01 00 00       	cmp    $0x11e,%eax
 804f91d:	77 11                	ja     804f930 <yyparse+0x23d4>
 804f91f:	a1 60 81 05 08       	mov    0x8058160,%eax
 804f924:	0f b6 80 c0 3f 05 08 	movzbl 0x8053fc0(%eax),%eax
 804f92b:	0f b6 c0             	movzbl %al,%eax
 804f92e:	eb 0c                	jmp    804f93c <yyparse+0x23e0>
 804f930:	b8 02 00 00 00       	mov    $0x2,%eax
 804f935:	eb 05                	jmp    804f93c <yyparse+0x23e0>
 804f937:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
 804f93c:	89 85 64 ee ff ff    	mov    %eax,-0x119c(%ebp)
 804f942:	83 bd 3c ee ff ff 00 	cmpl   $0x0,-0x11c4(%ebp)
 804f949:	75 1d                	jne    804f968 <yyparse+0x240c>
 804f94b:	a1 58 81 05 08       	mov    0x8058158,%eax
 804f950:	83 c0 01             	add    $0x1,%eax
 804f953:	a3 58 81 05 08       	mov    %eax,0x8058158
 804f958:	83 ec 0c             	sub    $0xc,%esp
 804f95b:	68 fd 46 05 08       	push   $0x80546fd
 804f960:	e8 09 30 00 00       	call   805296e <yyerror>
 804f965:	83 c4 10             	add    $0x10,%esp
 804f968:	a1 ac 80 05 08       	mov    0x80580ac,%eax
 804f96d:	89 85 a4 ee ff ff    	mov    %eax,-0x115c(%ebp)
 804f973:	a1 b0 80 05 08       	mov    0x80580b0,%eax
 804f978:	89 85 a8 ee ff ff    	mov    %eax,-0x1158(%ebp)
 804f97e:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 804f983:	89 85 ac ee ff ff    	mov    %eax,-0x1154(%ebp)
 804f989:	a1 b8 80 05 08       	mov    0x80580b8,%eax
 804f98e:	89 85 b0 ee ff ff    	mov    %eax,-0x1150(%ebp)
 804f994:	83 bd 3c ee ff ff 03 	cmpl   $0x3,-0x11c4(%ebp)
 804f99b:	75 3e                	jne    804f9db <yyparse+0x247f>
 804f99d:	a1 60 81 05 08       	mov    0x8058160,%eax
 804f9a2:	85 c0                	test   %eax,%eax
 804f9a4:	7f 0e                	jg     804f9b4 <yyparse+0x2458>
 804f9a6:	a1 60 81 05 08       	mov    0x8058160,%eax
 804f9ab:	85 c0                	test   %eax,%eax
 804f9ad:	75 2c                	jne    804f9db <yyparse+0x247f>
 804f9af:	e9 f6 01 00 00       	jmp    804fbaa <yyparse+0x264e>
 804f9b4:	68 ac 80 05 08       	push   $0x80580ac
 804f9b9:	68 68 81 05 08       	push   $0x8058168
 804f9be:	ff b5 64 ee ff ff    	pushl  -0x119c(%ebp)
 804f9c4:	68 0a 47 05 08       	push   $0x805470a
 804f9c9:	e8 7b db ff ff       	call   804d549 <yydestruct>
 804f9ce:	83 c4 10             	add    $0x10,%esp
 804f9d1:	c7 05 60 81 05 08 fe 	movl   $0xfffffffe,0x8058160
 804f9d8:	ff ff ff 
 804f9db:	90                   	nop
 804f9dc:	c7 85 3c ee ff ff 03 	movl   $0x3,-0x11c4(%ebp)
 804f9e3:	00 00 00 
 804f9e6:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804f9ec:	0f b7 84 00 e0 40 05 	movzwl 0x80540e0(%eax,%eax,1),%eax
 804f9f3:	08 
 804f9f4:	98                   	cwtl   
 804f9f5:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804f9fb:	83 bd 5c ee ff ff c5 	cmpl   $0xffffffc5,-0x11a4(%ebp)
 804fa02:	74 52                	je     804fa56 <yyparse+0x24fa>
 804fa04:	83 85 5c ee ff ff 01 	addl   $0x1,-0x11a4(%ebp)
 804fa0b:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804fa12:	78 42                	js     804fa56 <yyparse+0x24fa>
 804fa14:	81 bd 5c ee ff ff 0a 	cmpl   $0x10a,-0x11a4(%ebp)
 804fa1b:	01 00 00 
 804fa1e:	7f 36                	jg     804fa56 <yyparse+0x24fa>
 804fa20:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804fa26:	05 e0 43 05 08       	add    $0x80543e0,%eax
 804fa2b:	0f b6 00             	movzbl (%eax),%eax
 804fa2e:	3c 01                	cmp    $0x1,%al
 804fa30:	75 24                	jne    804fa56 <yyparse+0x24fa>
 804fa32:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804fa38:	05 c0 42 05 08       	add    $0x80542c0,%eax
 804fa3d:	0f b6 00             	movzbl (%eax),%eax
 804fa40:	0f be c0             	movsbl %al,%eax
 804fa43:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804fa49:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804fa50:	0f 8f 90 00 00 00    	jg     804fae6 <yyparse+0x258a>
 804fa56:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 804fa5c:	3b 85 40 ee ff ff    	cmp    -0x11c0(%ebp),%eax
 804fa62:	0f 84 41 01 00 00    	je     804fba9 <yyparse+0x264d>
 804fa68:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804fa6e:	8b 10                	mov    (%eax),%edx
 804fa70:	89 95 a4 ee ff ff    	mov    %edx,-0x115c(%ebp)
 804fa76:	8b 50 04             	mov    0x4(%eax),%edx
 804fa79:	89 95 a8 ee ff ff    	mov    %edx,-0x1158(%ebp)
 804fa7f:	8b 50 08             	mov    0x8(%eax),%edx
 804fa82:	89 95 ac ee ff ff    	mov    %edx,-0x1154(%ebp)
 804fa88:	8b 40 0c             	mov    0xc(%eax),%eax
 804fa8b:	89 85 b0 ee ff ff    	mov    %eax,-0x1150(%ebp)
 804fa91:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804fa97:	05 00 45 05 08       	add    $0x8054500,%eax
 804fa9c:	0f b6 00             	movzbl (%eax),%eax
 804fa9f:	0f b6 c0             	movzbl %al,%eax
 804faa2:	ff b5 54 ee ff ff    	pushl  -0x11ac(%ebp)
 804faa8:	ff b5 4c ee ff ff    	pushl  -0x11b4(%ebp)
 804faae:	50                   	push   %eax
 804faaf:	68 1c 47 05 08       	push   $0x805471c
 804fab4:	e8 90 da ff ff       	call   804d549 <yydestruct>
 804fab9:	83 c4 10             	add    $0x10,%esp
 804fabc:	83 ad 4c ee ff ff 04 	subl   $0x4,-0x11b4(%ebp)
 804fac3:	83 ad 44 ee ff ff 02 	subl   $0x2,-0x11bc(%ebp)
 804faca:	83 ad 54 ee ff ff 10 	subl   $0x10,-0x11ac(%ebp)
 804fad1:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 804fad7:	0f b7 00             	movzwl (%eax),%eax
 804fada:	98                   	cwtl   
 804fadb:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 804fae1:	e9 00 ff ff ff       	jmp    804f9e6 <yyparse+0x248a>
 804fae6:	90                   	nop
 804fae7:	83 85 4c ee ff ff 04 	addl   $0x4,-0x11b4(%ebp)
 804faee:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804faf4:	8b 15 68 81 05 08    	mov    0x8058168,%edx
 804fafa:	89 10                	mov    %edx,(%eax)
 804fafc:	a1 ac 80 05 08       	mov    0x80580ac,%eax
 804fb01:	89 85 b4 ee ff ff    	mov    %eax,-0x114c(%ebp)
 804fb07:	a1 b0 80 05 08       	mov    0x80580b0,%eax
 804fb0c:	89 85 b8 ee ff ff    	mov    %eax,-0x1148(%ebp)
 804fb12:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 804fb17:	89 85 bc ee ff ff    	mov    %eax,-0x1144(%ebp)
 804fb1d:	a1 b8 80 05 08       	mov    0x80580b8,%eax
 804fb22:	89 85 c0 ee ff ff    	mov    %eax,-0x1140(%ebp)
 804fb28:	8b 85 a4 ee ff ff    	mov    -0x115c(%ebp),%eax
 804fb2e:	89 85 84 ee ff ff    	mov    %eax,-0x117c(%ebp)
 804fb34:	8b 85 a8 ee ff ff    	mov    -0x1158(%ebp),%eax
 804fb3a:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%ebp)
 804fb40:	8b 85 bc ee ff ff    	mov    -0x1144(%ebp),%eax
 804fb46:	89 85 8c ee ff ff    	mov    %eax,-0x1174(%ebp)
 804fb4c:	8b 85 c0 ee ff ff    	mov    -0x1140(%ebp),%eax
 804fb52:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%ebp)
 804fb58:	83 85 54 ee ff ff 10 	addl   $0x10,-0x11ac(%ebp)
 804fb5f:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804fb65:	8b 95 84 ee ff ff    	mov    -0x117c(%ebp),%edx
 804fb6b:	89 10                	mov    %edx,(%eax)
 804fb6d:	8b 95 88 ee ff ff    	mov    -0x1178(%ebp),%edx
 804fb73:	89 50 04             	mov    %edx,0x4(%eax)
 804fb76:	8b 95 8c ee ff ff    	mov    -0x1174(%ebp),%edx
 804fb7c:	89 50 08             	mov    %edx,0x8(%eax)
 804fb7f:	8b 95 90 ee ff ff    	mov    -0x1170(%ebp),%edx
 804fb85:	89 50 0c             	mov    %edx,0xc(%eax)
 804fb88:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804fb8e:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 804fb94:	e9 90 da ff ff       	jmp    804d629 <yyparse+0xcd>
 804fb99:	90                   	nop
 804fb9a:	c7 85 60 ee ff ff 00 	movl   $0x0,-0x11a0(%ebp)
 804fba1:	00 00 00 
 804fba4:	eb 2e                	jmp    804fbd4 <yyparse+0x2678>
 804fba6:	90                   	nop
 804fba7:	eb 01                	jmp    804fbaa <yyparse+0x264e>
 804fba9:	90                   	nop
 804fbaa:	c7 85 60 ee ff ff 01 	movl   $0x1,-0x11a0(%ebp)
 804fbb1:	00 00 00 
 804fbb4:	eb 1e                	jmp    804fbd4 <yyparse+0x2678>
 804fbb6:	90                   	nop
 804fbb7:	eb 01                	jmp    804fbba <yyparse+0x265e>
 804fbb9:	90                   	nop
 804fbba:	83 ec 0c             	sub    $0xc,%esp
 804fbbd:	68 2b 47 05 08       	push   $0x805472b
 804fbc2:	e8 a7 2d 00 00       	call   805296e <yyerror>
 804fbc7:	83 c4 10             	add    $0x10,%esp
 804fbca:	c7 85 60 ee ff ff 02 	movl   $0x2,-0x11a0(%ebp)
 804fbd1:	00 00 00 
 804fbd4:	a1 60 81 05 08       	mov    0x8058160,%eax
 804fbd9:	83 f8 fe             	cmp    $0xfffffffe,%eax
 804fbdc:	74 45                	je     804fc23 <yyparse+0x26c7>
 804fbde:	a1 60 81 05 08       	mov    0x8058160,%eax
 804fbe3:	3d 1e 01 00 00       	cmp    $0x11e,%eax
 804fbe8:	77 11                	ja     804fbfb <yyparse+0x269f>
 804fbea:	a1 60 81 05 08       	mov    0x8058160,%eax
 804fbef:	0f b6 80 c0 3f 05 08 	movzbl 0x8053fc0(%eax),%eax
 804fbf6:	0f b6 c0             	movzbl %al,%eax
 804fbf9:	eb 05                	jmp    804fc00 <yyparse+0x26a4>
 804fbfb:	b8 02 00 00 00       	mov    $0x2,%eax
 804fc00:	89 85 64 ee ff ff    	mov    %eax,-0x119c(%ebp)
 804fc06:	68 ac 80 05 08       	push   $0x80580ac
 804fc0b:	68 68 81 05 08       	push   $0x8058168
 804fc10:	ff b5 64 ee ff ff    	pushl  -0x119c(%ebp)
 804fc16:	68 3c 47 05 08       	push   $0x805473c
 804fc1b:	e8 29 d9 ff ff       	call   804d549 <yydestruct>
 804fc20:	83 c4 10             	add    $0x10,%esp
 804fc23:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804fc29:	c1 e0 02             	shl    $0x2,%eax
 804fc2c:	f7 d8                	neg    %eax
 804fc2e:	01 85 4c ee ff ff    	add    %eax,-0x11b4(%ebp)
 804fc34:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804fc3a:	01 c0                	add    %eax,%eax
 804fc3c:	f7 d8                	neg    %eax
 804fc3e:	01 85 44 ee ff ff    	add    %eax,-0x11bc(%ebp)
 804fc44:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804fc4a:	c1 e0 04             	shl    $0x4,%eax
 804fc4d:	f7 d8                	neg    %eax
 804fc4f:	01 85 54 ee ff ff    	add    %eax,-0x11ac(%ebp)
 804fc55:	eb 43                	jmp    804fc9a <yyparse+0x273e>
 804fc57:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 804fc5d:	0f b7 00             	movzwl (%eax),%eax
 804fc60:	98                   	cwtl   
 804fc61:	0f b6 80 00 45 05 08 	movzbl 0x8054500(%eax),%eax
 804fc68:	0f b6 c0             	movzbl %al,%eax
 804fc6b:	ff b5 54 ee ff ff    	pushl  -0x11ac(%ebp)
 804fc71:	ff b5 4c ee ff ff    	pushl  -0x11b4(%ebp)
 804fc77:	50                   	push   %eax
 804fc78:	68 5a 47 05 08       	push   $0x805475a
 804fc7d:	e8 c7 d8 ff ff       	call   804d549 <yydestruct>
 804fc82:	83 c4 10             	add    $0x10,%esp
 804fc85:	83 ad 4c ee ff ff 04 	subl   $0x4,-0x11b4(%ebp)
 804fc8c:	83 ad 44 ee ff ff 02 	subl   $0x2,-0x11bc(%ebp)
 804fc93:	83 ad 54 ee ff ff 10 	subl   $0x10,-0x11ac(%ebp)
 804fc9a:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 804fca0:	3b 85 40 ee ff ff    	cmp    -0x11c0(%ebp),%eax
 804fca6:	75 af                	jne    804fc57 <yyparse+0x26fb>
 804fca8:	8d 85 c4 ee ff ff    	lea    -0x113c(%ebp),%eax
 804fcae:	39 85 40 ee ff ff    	cmp    %eax,-0x11c0(%ebp)
 804fcb4:	74 11                	je     804fcc7 <yyparse+0x276b>
 804fcb6:	83 ec 0c             	sub    $0xc,%esp
 804fcb9:	ff b5 40 ee ff ff    	pushl  -0x11c0(%ebp)
 804fcbf:	e8 0c 8b ff ff       	call   80487d0 <free@plt>
 804fcc4:	83 c4 10             	add    $0x10,%esp
 804fcc7:	8b 85 60 ee ff ff    	mov    -0x11a0(%ebp),%eax
 804fccd:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804fcd0:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804fcd7:	74 05                	je     804fcde <yyparse+0x2782>
 804fcd9:	e8 32 8b ff ff       	call   8048810 <__stack_chk_fail@plt>
 804fcde:	c9                   	leave  
 804fcdf:	c3                   	ret    

0804fce0 <yylex>:
 804fce0:	55                   	push   %ebp
 804fce1:	89 e5                	mov    %esp,%ebp
 804fce3:	53                   	push   %ebx
 804fce4:	83 ec 34             	sub    $0x34,%esp
 804fce7:	a1 40 81 05 08       	mov    0x8058140,%eax
 804fcec:	85 c0                	test   %eax,%eax
 804fcee:	0f 85 95 00 00 00    	jne    804fd89 <yylex+0xa9>
 804fcf4:	c7 05 40 81 05 08 01 	movl   $0x1,0x8058140
 804fcfb:	00 00 00 
 804fcfe:	a1 44 81 05 08       	mov    0x8058144,%eax
 804fd03:	85 c0                	test   %eax,%eax
 804fd05:	75 0a                	jne    804fd11 <yylex+0x31>
 804fd07:	c7 05 44 81 05 08 01 	movl   $0x1,0x8058144
 804fd0e:	00 00 00 
 804fd11:	a1 14 81 05 08       	mov    0x8058114,%eax
 804fd16:	85 c0                	test   %eax,%eax
 804fd18:	75 0a                	jne    804fd24 <yylex+0x44>
 804fd1a:	a1 00 81 05 08       	mov    0x8058100,%eax
 804fd1f:	a3 14 81 05 08       	mov    %eax,0x8058114
 804fd24:	a1 18 81 05 08       	mov    0x8058118,%eax
 804fd29:	85 c0                	test   %eax,%eax
 804fd2b:	75 0a                	jne    804fd37 <yylex+0x57>
 804fd2d:	a1 04 81 05 08       	mov    0x8058104,%eax
 804fd32:	a3 18 81 05 08       	mov    %eax,0x8058118
 804fd37:	a1 30 81 05 08       	mov    0x8058130,%eax
 804fd3c:	85 c0                	test   %eax,%eax
 804fd3e:	74 16                	je     804fd56 <yylex+0x76>
 804fd40:	a1 30 81 05 08       	mov    0x8058130,%eax
 804fd45:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 804fd4b:	c1 e2 02             	shl    $0x2,%edx
 804fd4e:	01 d0                	add    %edx,%eax
 804fd50:	8b 00                	mov    (%eax),%eax
 804fd52:	85 c0                	test   %eax,%eax
 804fd54:	75 2e                	jne    804fd84 <yylex+0xa4>
 804fd56:	e8 64 27 00 00       	call   80524bf <yyensure_buffer_stack>
 804fd5b:	a1 30 81 05 08       	mov    0x8058130,%eax
 804fd60:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 804fd66:	c1 e2 02             	shl    $0x2,%edx
 804fd69:	8d 1c 10             	lea    (%eax,%edx,1),%ebx
 804fd6c:	a1 14 81 05 08       	mov    0x8058114,%eax
 804fd71:	83 ec 08             	sub    $0x8,%esp
 804fd74:	68 00 40 00 00       	push   $0x4000
 804fd79:	50                   	push   %eax
 804fd7a:	e8 92 23 00 00       	call   8052111 <yy_create_buffer>
 804fd7f:	83 c4 10             	add    $0x10,%esp
 804fd82:	89 03                	mov    %eax,(%ebx)
 804fd84:	e8 1e 23 00 00       	call   80520a7 <yy_load_buffer_state>
 804fd89:	a1 3c 81 05 08       	mov    0x805813c,%eax
 804fd8e:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804fd91:	0f b6 15 34 81 05 08 	movzbl 0x8058134,%edx
 804fd98:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804fd9b:	88 10                	mov    %dl,(%eax)
 804fd9d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804fda0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804fda3:	a1 44 81 05 08       	mov    0x8058144,%eax
 804fda8:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804fdab:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804fdae:	0f b6 00             	movzbl (%eax),%eax
 804fdb1:	0f b6 c0             	movzbl %al,%eax
 804fdb4:	0f b6 80 40 49 05 08 	movzbl 0x8054940(%eax),%eax
 804fdbb:	88 45 d9             	mov    %al,-0x27(%ebp)
 804fdbe:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fdc1:	0f b7 84 00 80 48 05 	movzwl 0x8054880(%eax,%eax,1),%eax
 804fdc8:	08 
 804fdc9:	66 85 c0             	test   %ax,%ax
 804fdcc:	74 35                	je     804fe03 <yylex+0x123>
 804fdce:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fdd1:	a3 4c 81 05 08       	mov    %eax,0x805814c
 804fdd6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804fdd9:	a3 50 81 05 08       	mov    %eax,0x8058150
 804fdde:	eb 23                	jmp    804fe03 <yylex+0x123>
 804fde0:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fde3:	0f b7 84 00 40 4b 05 	movzwl 0x8054b40(%eax,%eax,1),%eax
 804fdea:	08 
 804fdeb:	98                   	cwtl   
 804fdec:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804fdef:	83 7d dc 51          	cmpl   $0x51,-0x24(%ebp)
 804fdf3:	7e 0e                	jle    804fe03 <yylex+0x123>
 804fdf5:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
 804fdf9:	0f b6 80 40 4a 05 08 	movzbl 0x8054a40(%eax),%eax
 804fe00:	88 45 d9             	mov    %al,-0x27(%ebp)
 804fe03:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fe06:	0f b7 84 00 80 4a 05 	movzwl 0x8054a80(%eax,%eax,1),%eax
 804fe0d:	08 
 804fe0e:	0f b7 d0             	movzwl %ax,%edx
 804fe11:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
 804fe15:	01 d0                	add    %edx,%eax
 804fe17:	0f b7 84 00 c0 4d 05 	movzwl 0x8054dc0(%eax,%eax,1),%eax
 804fe1e:	08 
 804fe1f:	98                   	cwtl   
 804fe20:	3b 45 dc             	cmp    -0x24(%ebp),%eax
 804fe23:	75 bb                	jne    804fde0 <yylex+0x100>
 804fe25:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fe28:	0f b7 84 00 80 4a 05 	movzwl 0x8054a80(%eax,%eax,1),%eax
 804fe2f:	08 
 804fe30:	0f b7 d0             	movzwl %ax,%edx
 804fe33:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
 804fe37:	01 d0                	add    %edx,%eax
 804fe39:	0f b7 84 00 00 4c 05 	movzwl 0x8054c00(%eax,%eax,1),%eax
 804fe40:	08 
 804fe41:	0f b7 c0             	movzwl %ax,%eax
 804fe44:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804fe47:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 804fe4b:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fe4e:	0f b7 84 00 80 4a 05 	movzwl 0x8054a80(%eax,%eax,1),%eax
 804fe55:	08 
 804fe56:	66 3d b0 00          	cmp    $0xb0,%ax
 804fe5a:	0f 85 4b ff ff ff    	jne    804fdab <yylex+0xcb>
 804fe60:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fe63:	0f b7 84 00 80 48 05 	movzwl 0x8054880(%eax,%eax,1),%eax
 804fe6a:	08 
 804fe6b:	98                   	cwtl   
 804fe6c:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804fe6f:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804fe73:	75 1f                	jne    804fe94 <yylex+0x1b4>
 804fe75:	a1 50 81 05 08       	mov    0x8058150,%eax
 804fe7a:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804fe7d:	a1 4c 81 05 08       	mov    0x805814c,%eax
 804fe82:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804fe85:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fe88:	0f b7 84 00 80 48 05 	movzwl 0x8054880(%eax,%eax,1),%eax
 804fe8f:	08 
 804fe90:	98                   	cwtl   
 804fe91:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804fe94:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804fe97:	a3 5c 81 05 08       	mov    %eax,0x805815c
 804fe9c:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804fe9f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804fea2:	29 c2                	sub    %eax,%edx
 804fea4:	89 d0                	mov    %edx,%eax
 804fea6:	a3 64 81 05 08       	mov    %eax,0x8058164
 804feab:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804feae:	0f b6 00             	movzbl (%eax),%eax
 804feb1:	a2 34 81 05 08       	mov    %al,0x8058134
 804feb6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804feb9:	c6 00 00             	movb   $0x0,(%eax)
 804febc:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804febf:	a3 3c 81 05 08       	mov    %eax,0x805813c
 804fec4:	83 7d e8 27          	cmpl   $0x27,-0x18(%ebp)
 804fec8:	74 44                	je     804ff0e <yylex+0x22e>
 804feca:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804fecd:	8b 04 85 80 4f 05 08 	mov    0x8054f80(,%eax,4),%eax
 804fed4:	85 c0                	test   %eax,%eax
 804fed6:	74 36                	je     804ff0e <yylex+0x22e>
 804fed8:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804fedf:	eb 23                	jmp    804ff04 <yylex+0x224>
 804fee1:	8b 15 5c 81 05 08    	mov    0x805815c,%edx
 804fee7:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804feea:	01 d0                	add    %edx,%eax
 804feec:	0f b6 00             	movzbl (%eax),%eax
 804feef:	3c 0a                	cmp    $0xa,%al
 804fef1:	75 0d                	jne    804ff00 <yylex+0x220>
 804fef3:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 804fef8:	83 c0 01             	add    $0x1,%eax
 804fefb:	a3 bc 80 05 08       	mov    %eax,0x80580bc
 804ff00:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 804ff04:	a1 64 81 05 08       	mov    0x8058164,%eax
 804ff09:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 804ff0c:	72 d3                	jb     804fee1 <yylex+0x201>
 804ff0e:	83 7d e8 28          	cmpl   $0x28,-0x18(%ebp)
 804ff12:	0f 87 a9 16 00 00    	ja     80515c1 <yylex+0x18e1>
 804ff18:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ff1b:	c1 e0 02             	shl    $0x2,%eax
 804ff1e:	05 88 51 05 08       	add    $0x8055188,%eax
 804ff23:	8b 00                	mov    (%eax),%eax
 804ff25:	ff e0                	jmp    *%eax
 804ff27:	0f b6 15 34 81 05 08 	movzbl 0x8058134,%edx
 804ff2e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804ff31:	88 10                	mov    %dl,(%eax)
 804ff33:	a1 50 81 05 08       	mov    0x8058150,%eax
 804ff38:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804ff3b:	a1 4c 81 05 08       	mov    0x805814c,%eax
 804ff40:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804ff43:	e9 18 ff ff ff       	jmp    804fe60 <yylex+0x180>
 804ff48:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 804ff4d:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 804ff52:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 804ff57:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 804ff5c:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 804ff61:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 804ff66:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 804ff6b:	89 c2                	mov    %eax,%edx
 804ff6d:	a1 64 81 05 08       	mov    0x8058164,%eax
 804ff72:	01 d0                	add    %edx,%eax
 804ff74:	83 e8 01             	sub    $0x1,%eax
 804ff77:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 804ff7c:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 804ff81:	89 c2                	mov    %eax,%edx
 804ff83:	a1 64 81 05 08       	mov    0x8058164,%eax
 804ff88:	01 d0                	add    %edx,%eax
 804ff8a:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 804ff8f:	c7 05 c0 80 05 08 01 	movl   $0x1,0x80580c0
 804ff96:	00 00 00 
 804ff99:	c7 05 24 81 05 08 01 	movl   $0x1,0x8058124
 804ffa0:	00 00 00 
 804ffa3:	e9 27 16 00 00       	jmp    80515cf <yylex+0x18ef>
 804ffa8:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 804ffad:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 804ffb2:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 804ffb7:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 804ffbc:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 804ffc1:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 804ffc6:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 804ffcb:	89 c2                	mov    %eax,%edx
 804ffcd:	a1 64 81 05 08       	mov    0x8058164,%eax
 804ffd2:	01 d0                	add    %edx,%eax
 804ffd4:	83 e8 01             	sub    $0x1,%eax
 804ffd7:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 804ffdc:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 804ffe1:	89 c2                	mov    %eax,%edx
 804ffe3:	a1 64 81 05 08       	mov    0x8058164,%eax
 804ffe8:	01 d0                	add    %edx,%eax
 804ffea:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 804ffef:	e9 db 15 00 00       	jmp    80515cf <yylex+0x18ef>
 804fff4:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 804fff9:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 804fffe:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050003:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050008:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805000d:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050012:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050017:	89 c2                	mov    %eax,%edx
 8050019:	a1 64 81 05 08       	mov    0x8058164,%eax
 805001e:	01 d0                	add    %edx,%eax
 8050020:	83 e8 01             	sub    $0x1,%eax
 8050023:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050028:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805002d:	89 c2                	mov    %eax,%edx
 805002f:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050034:	01 d0                	add    %edx,%eax
 8050036:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 805003b:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050040:	83 ec 08             	sub    $0x8,%esp
 8050043:	50                   	push   %eax
 8050044:	68 1c 50 05 08       	push   $0x805501c
 8050049:	e8 ba 8a ff ff       	call   8048b08 <createNode>
 805004e:	83 c4 10             	add    $0x10,%esp
 8050051:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050056:	a1 68 81 05 08       	mov    0x8058168,%eax
 805005b:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 8050062:	8b 1d 68 81 05 08    	mov    0x8058168,%ebx
 8050068:	a1 5c 81 05 08       	mov    0x805815c,%eax
 805006d:	83 ec 0c             	sub    $0xc,%esp
 8050070:	50                   	push   %eax
 8050071:	e8 fa 88 ff ff       	call   8048970 <atoi@plt>
 8050076:	83 c4 10             	add    $0x10,%esp
 8050079:	89 43 08             	mov    %eax,0x8(%ebx)
 805007c:	b8 02 01 00 00       	mov    $0x102,%eax
 8050081:	e9 4e 15 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050086:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 805008b:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050090:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050095:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 805009a:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805009f:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 80500a4:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80500a9:	89 c2                	mov    %eax,%edx
 80500ab:	a1 64 81 05 08       	mov    0x8058164,%eax
 80500b0:	01 d0                	add    %edx,%eax
 80500b2:	83 e8 01             	sub    $0x1,%eax
 80500b5:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 80500ba:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80500bf:	89 c2                	mov    %eax,%edx
 80500c1:	a1 64 81 05 08       	mov    0x8058164,%eax
 80500c6:	01 d0                	add    %edx,%eax
 80500c8:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80500cd:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80500d2:	83 ec 08             	sub    $0x8,%esp
 80500d5:	50                   	push   %eax
 80500d6:	68 1c 50 05 08       	push   $0x805501c
 80500db:	e8 28 8a ff ff       	call   8048b08 <createNode>
 80500e0:	83 c4 10             	add    $0x10,%esp
 80500e3:	a3 68 81 05 08       	mov    %eax,0x8058168
 80500e8:	a1 68 81 05 08       	mov    0x8058168,%eax
 80500ed:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 80500f4:	8b 1d 68 81 05 08    	mov    0x8058168,%ebx
 80500fa:	a1 5c 81 05 08       	mov    0x805815c,%eax
 80500ff:	83 ec 04             	sub    $0x4,%esp
 8050102:	6a 10                	push   $0x10
 8050104:	6a 00                	push   $0x0
 8050106:	50                   	push   %eax
 8050107:	e8 94 88 ff ff       	call   80489a0 <strtol@plt>
 805010c:	83 c4 10             	add    $0x10,%esp
 805010f:	89 43 08             	mov    %eax,0x8(%ebx)
 8050112:	b8 02 01 00 00       	mov    $0x102,%eax
 8050117:	e9 b8 14 00 00       	jmp    80515d4 <yylex+0x18f4>
 805011c:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050121:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050126:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 805012b:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050130:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050135:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 805013a:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805013f:	89 c2                	mov    %eax,%edx
 8050141:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050146:	01 d0                	add    %edx,%eax
 8050148:	83 e8 01             	sub    $0x1,%eax
 805014b:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050150:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050155:	89 c2                	mov    %eax,%edx
 8050157:	a1 64 81 05 08       	mov    0x8058164,%eax
 805015c:	01 d0                	add    %edx,%eax
 805015e:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050163:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050168:	83 ec 08             	sub    $0x8,%esp
 805016b:	50                   	push   %eax
 805016c:	68 1c 50 05 08       	push   $0x805501c
 8050171:	e8 92 89 ff ff       	call   8048b08 <createNode>
 8050176:	83 c4 10             	add    $0x10,%esp
 8050179:	a3 68 81 05 08       	mov    %eax,0x8058168
 805017e:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050183:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 805018a:	8b 1d 68 81 05 08    	mov    0x8058168,%ebx
 8050190:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8050195:	83 ec 04             	sub    $0x4,%esp
 8050198:	6a 08                	push   $0x8
 805019a:	6a 00                	push   $0x0
 805019c:	50                   	push   %eax
 805019d:	e8 fe 87 ff ff       	call   80489a0 <strtol@plt>
 80501a2:	83 c4 10             	add    $0x10,%esp
 80501a5:	89 43 08             	mov    %eax,0x8(%ebx)
 80501a8:	b8 02 01 00 00       	mov    $0x102,%eax
 80501ad:	e9 22 14 00 00       	jmp    80515d4 <yylex+0x18f4>
 80501b2:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80501b7:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 80501bc:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 80501c1:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 80501c6:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80501cb:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 80501d0:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80501d5:	89 c2                	mov    %eax,%edx
 80501d7:	a1 64 81 05 08       	mov    0x8058164,%eax
 80501dc:	01 d0                	add    %edx,%eax
 80501de:	83 e8 01             	sub    $0x1,%eax
 80501e1:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 80501e6:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80501eb:	89 c2                	mov    %eax,%edx
 80501ed:	a1 64 81 05 08       	mov    0x8058164,%eax
 80501f2:	01 d0                	add    %edx,%eax
 80501f4:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80501f9:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80501fe:	83 ec 08             	sub    $0x8,%esp
 8050201:	50                   	push   %eax
 8050202:	68 20 50 05 08       	push   $0x8055020
 8050207:	e8 fc 88 ff ff       	call   8048b08 <createNode>
 805020c:	83 c4 10             	add    $0x10,%esp
 805020f:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050214:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050219:	c7 40 04 02 00 00 00 	movl   $0x2,0x4(%eax)
 8050220:	8b 1d 68 81 05 08    	mov    0x8058168,%ebx
 8050226:	a1 5c 81 05 08       	mov    0x805815c,%eax
 805022b:	83 ec 0c             	sub    $0xc,%esp
 805022e:	50                   	push   %eax
 805022f:	e8 4c 87 ff ff       	call   8048980 <atof@plt>
 8050234:	83 c4 10             	add    $0x10,%esp
 8050237:	d9 5d d4             	fstps  -0x2c(%ebp)
 805023a:	d9 45 d4             	flds   -0x2c(%ebp)
 805023d:	d9 5b 08             	fstps  0x8(%ebx)
 8050240:	b8 03 01 00 00       	mov    $0x103,%eax
 8050245:	e9 8a 13 00 00       	jmp    80515d4 <yylex+0x18f4>
 805024a:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 805024f:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050254:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050259:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 805025e:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050263:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050268:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805026d:	89 c2                	mov    %eax,%edx
 805026f:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050274:	01 d0                	add    %edx,%eax
 8050276:	83 e8 01             	sub    $0x1,%eax
 8050279:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 805027e:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050283:	89 c2                	mov    %eax,%edx
 8050285:	a1 64 81 05 08       	mov    0x8058164,%eax
 805028a:	01 d0                	add    %edx,%eax
 805028c:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050291:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050296:	83 ec 08             	sub    $0x8,%esp
 8050299:	50                   	push   %eax
 805029a:	68 20 50 05 08       	push   $0x8055020
 805029f:	e8 64 88 ff ff       	call   8048b08 <createNode>
 80502a4:	83 c4 10             	add    $0x10,%esp
 80502a7:	a3 68 81 05 08       	mov    %eax,0x8058168
 80502ac:	a1 68 81 05 08       	mov    0x8058168,%eax
 80502b1:	c7 40 04 02 00 00 00 	movl   $0x2,0x4(%eax)
 80502b8:	8b 1d 68 81 05 08    	mov    0x8058168,%ebx
 80502be:	a1 5c 81 05 08       	mov    0x805815c,%eax
 80502c3:	83 ec 0c             	sub    $0xc,%esp
 80502c6:	50                   	push   %eax
 80502c7:	e8 b4 86 ff ff       	call   8048980 <atof@plt>
 80502cc:	83 c4 10             	add    $0x10,%esp
 80502cf:	d9 5d d4             	fstps  -0x2c(%ebp)
 80502d2:	d9 45 d4             	flds   -0x2c(%ebp)
 80502d5:	d9 5b 08             	fstps  0x8(%ebx)
 80502d8:	b8 03 01 00 00       	mov    $0x103,%eax
 80502dd:	e9 f2 12 00 00       	jmp    80515d4 <yylex+0x18f4>
 80502e2:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80502e7:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 80502ec:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 80502f1:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 80502f6:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80502fb:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050300:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050305:	89 c2                	mov    %eax,%edx
 8050307:	a1 64 81 05 08       	mov    0x8058164,%eax
 805030c:	01 d0                	add    %edx,%eax
 805030e:	83 e8 01             	sub    $0x1,%eax
 8050311:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050316:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805031b:	89 c2                	mov    %eax,%edx
 805031d:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050322:	01 d0                	add    %edx,%eax
 8050324:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050329:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 805032e:	83 ec 08             	sub    $0x8,%esp
 8050331:	50                   	push   %eax
 8050332:	68 26 50 05 08       	push   $0x8055026
 8050337:	e8 cc 87 ff ff       	call   8048b08 <createNode>
 805033c:	83 c4 10             	add    $0x10,%esp
 805033f:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050344:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050349:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050350:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050355:	c7 40 04 08 00 00 00 	movl   $0x8,0x4(%eax)
 805035c:	b8 05 01 00 00       	mov    $0x105,%eax
 8050361:	e9 6e 12 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050366:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 805036b:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050370:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050375:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 805037a:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805037f:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050384:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050389:	89 c2                	mov    %eax,%edx
 805038b:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050390:	01 d0                	add    %edx,%eax
 8050392:	83 e8 01             	sub    $0x1,%eax
 8050395:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 805039a:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805039f:	89 c2                	mov    %eax,%edx
 80503a1:	a1 64 81 05 08       	mov    0x8058164,%eax
 80503a6:	01 d0                	add    %edx,%eax
 80503a8:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80503ad:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80503b2:	83 ec 08             	sub    $0x8,%esp
 80503b5:	50                   	push   %eax
 80503b6:	68 2b 50 05 08       	push   $0x805502b
 80503bb:	e8 48 87 ff ff       	call   8048b08 <createNode>
 80503c0:	83 c4 10             	add    $0x10,%esp
 80503c3:	a3 68 81 05 08       	mov    %eax,0x8058168
 80503c8:	a1 68 81 05 08       	mov    0x8058168,%eax
 80503cd:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80503d4:	a1 68 81 05 08       	mov    0x8058168,%eax
 80503d9:	c7 40 04 09 00 00 00 	movl   $0x9,0x4(%eax)
 80503e0:	b8 06 01 00 00       	mov    $0x106,%eax
 80503e5:	e9 ea 11 00 00       	jmp    80515d4 <yylex+0x18f4>
 80503ea:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80503ef:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 80503f4:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 80503f9:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 80503fe:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050403:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050408:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805040d:	89 c2                	mov    %eax,%edx
 805040f:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050414:	01 d0                	add    %edx,%eax
 8050416:	83 e8 01             	sub    $0x1,%eax
 8050419:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 805041e:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050423:	89 c2                	mov    %eax,%edx
 8050425:	a1 64 81 05 08       	mov    0x8058164,%eax
 805042a:	01 d0                	add    %edx,%eax
 805042c:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050431:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050436:	83 ec 08             	sub    $0x8,%esp
 8050439:	50                   	push   %eax
 805043a:	68 31 50 05 08       	push   $0x8055031
 805043f:	e8 c4 86 ff ff       	call   8048b08 <createNode>
 8050444:	83 c4 10             	add    $0x10,%esp
 8050447:	a3 68 81 05 08       	mov    %eax,0x8058168
 805044c:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050451:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050458:	a1 68 81 05 08       	mov    0x8058168,%eax
 805045d:	c7 40 04 0a 00 00 00 	movl   $0xa,0x4(%eax)
 8050464:	b8 07 01 00 00       	mov    $0x107,%eax
 8050469:	e9 66 11 00 00       	jmp    80515d4 <yylex+0x18f4>
 805046e:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050473:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050478:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 805047d:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050482:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050487:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 805048c:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050491:	89 c2                	mov    %eax,%edx
 8050493:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050498:	01 d0                	add    %edx,%eax
 805049a:	83 e8 01             	sub    $0x1,%eax
 805049d:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 80504a2:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80504a7:	89 c2                	mov    %eax,%edx
 80504a9:	a1 64 81 05 08       	mov    0x8058164,%eax
 80504ae:	01 d0                	add    %edx,%eax
 80504b0:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80504b5:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80504ba:	83 ec 08             	sub    $0x8,%esp
 80504bd:	50                   	push   %eax
 80504be:	68 3a 50 05 08       	push   $0x805503a
 80504c3:	e8 40 86 ff ff       	call   8048b08 <createNode>
 80504c8:	83 c4 10             	add    $0x10,%esp
 80504cb:	a3 68 81 05 08       	mov    %eax,0x8058168
 80504d0:	a1 68 81 05 08       	mov    0x8058168,%eax
 80504d5:	c7 40 04 0b 00 00 00 	movl   $0xb,0x4(%eax)
 80504dc:	8b 1d 68 81 05 08    	mov    0x8058168,%ebx
 80504e2:	a1 5c 81 05 08       	mov    0x805815c,%eax
 80504e7:	83 ec 0c             	sub    $0xc,%esp
 80504ea:	50                   	push   %eax
 80504eb:	e8 c0 83 ff ff       	call   80488b0 <strlen@plt>
 80504f0:	83 c4 10             	add    $0x10,%esp
 80504f3:	83 ec 0c             	sub    $0xc,%esp
 80504f6:	50                   	push   %eax
 80504f7:	e8 84 83 ff ff       	call   8048880 <malloc@plt>
 80504fc:	83 c4 10             	add    $0x10,%esp
 80504ff:	89 43 08             	mov    %eax,0x8(%ebx)
 8050502:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8050507:	83 ec 0c             	sub    $0xc,%esp
 805050a:	50                   	push   %eax
 805050b:	e8 a0 83 ff ff       	call   80488b0 <strlen@plt>
 8050510:	83 c4 10             	add    $0x10,%esp
 8050513:	89 c1                	mov    %eax,%ecx
 8050515:	8b 15 5c 81 05 08    	mov    0x805815c,%edx
 805051b:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050520:	8b 40 08             	mov    0x8(%eax),%eax
 8050523:	83 ec 04             	sub    $0x4,%esp
 8050526:	51                   	push   %ecx
 8050527:	52                   	push   %edx
 8050528:	50                   	push   %eax
 8050529:	e8 02 84 ff ff       	call   8048930 <strncpy@plt>
 805052e:	83 c4 10             	add    $0x10,%esp
 8050531:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050536:	8b 58 08             	mov    0x8(%eax),%ebx
 8050539:	a1 5c 81 05 08       	mov    0x805815c,%eax
 805053e:	83 ec 0c             	sub    $0xc,%esp
 8050541:	50                   	push   %eax
 8050542:	e8 69 83 ff ff       	call   80488b0 <strlen@plt>
 8050547:	83 c4 10             	add    $0x10,%esp
 805054a:	01 d8                	add    %ebx,%eax
 805054c:	c6 00 00             	movb   $0x0,(%eax)
 805054f:	b8 08 01 00 00       	mov    $0x108,%eax
 8050554:	e9 7b 10 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050559:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 805055e:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050563:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050568:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 805056d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050572:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050577:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805057c:	89 c2                	mov    %eax,%edx
 805057e:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050583:	01 d0                	add    %edx,%eax
 8050585:	83 e8 01             	sub    $0x1,%eax
 8050588:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 805058d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050592:	89 c2                	mov    %eax,%edx
 8050594:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050599:	01 d0                	add    %edx,%eax
 805059b:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80505a0:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80505a5:	83 ec 08             	sub    $0x8,%esp
 80505a8:	50                   	push   %eax
 80505a9:	68 40 50 05 08       	push   $0x8055040
 80505ae:	e8 55 85 ff ff       	call   8048b08 <createNode>
 80505b3:	83 c4 10             	add    $0x10,%esp
 80505b6:	a3 68 81 05 08       	mov    %eax,0x8058168
 80505bb:	a1 68 81 05 08       	mov    0x8058168,%eax
 80505c0:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80505c7:	a1 68 81 05 08       	mov    0x8058168,%eax
 80505cc:	c7 40 04 0c 00 00 00 	movl   $0xc,0x4(%eax)
 80505d3:	b8 09 01 00 00       	mov    $0x109,%eax
 80505d8:	e9 f7 0f 00 00       	jmp    80515d4 <yylex+0x18f4>
 80505dd:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80505e2:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 80505e7:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 80505ec:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 80505f1:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80505f6:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 80505fb:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050600:	89 c2                	mov    %eax,%edx
 8050602:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050607:	01 d0                	add    %edx,%eax
 8050609:	83 e8 01             	sub    $0x1,%eax
 805060c:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050611:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050616:	89 c2                	mov    %eax,%edx
 8050618:	a1 64 81 05 08       	mov    0x8058164,%eax
 805061d:	01 d0                	add    %edx,%eax
 805061f:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050624:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050629:	83 ec 08             	sub    $0x8,%esp
 805062c:	50                   	push   %eax
 805062d:	68 45 50 05 08       	push   $0x8055045
 8050632:	e8 d1 84 ff ff       	call   8048b08 <createNode>
 8050637:	83 c4 10             	add    $0x10,%esp
 805063a:	a3 68 81 05 08       	mov    %eax,0x8058168
 805063f:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050644:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 805064b:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050650:	c7 40 04 0d 00 00 00 	movl   $0xd,0x4(%eax)
 8050657:	b8 0a 01 00 00       	mov    $0x10a,%eax
 805065c:	e9 73 0f 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050661:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050666:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 805066b:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050670:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050675:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805067a:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 805067f:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050684:	89 c2                	mov    %eax,%edx
 8050686:	a1 64 81 05 08       	mov    0x8058164,%eax
 805068b:	01 d0                	add    %edx,%eax
 805068d:	83 e8 01             	sub    $0x1,%eax
 8050690:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050695:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805069a:	89 c2                	mov    %eax,%edx
 805069c:	a1 64 81 05 08       	mov    0x8058164,%eax
 80506a1:	01 d0                	add    %edx,%eax
 80506a3:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80506a8:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80506ad:	83 ec 08             	sub    $0x8,%esp
 80506b0:	50                   	push   %eax
 80506b1:	68 4b 50 05 08       	push   $0x805504b
 80506b6:	e8 4d 84 ff ff       	call   8048b08 <createNode>
 80506bb:	83 c4 10             	add    $0x10,%esp
 80506be:	a3 68 81 05 08       	mov    %eax,0x8058168
 80506c3:	a1 68 81 05 08       	mov    0x8058168,%eax
 80506c8:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80506cf:	a1 68 81 05 08       	mov    0x8058168,%eax
 80506d4:	c7 40 04 0e 00 00 00 	movl   $0xe,0x4(%eax)
 80506db:	b8 0b 01 00 00       	mov    $0x10b,%eax
 80506e0:	e9 ef 0e 00 00       	jmp    80515d4 <yylex+0x18f4>
 80506e5:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80506ea:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 80506ef:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 80506f4:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 80506f9:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80506fe:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050703:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050708:	89 c2                	mov    %eax,%edx
 805070a:	a1 64 81 05 08       	mov    0x8058164,%eax
 805070f:	01 d0                	add    %edx,%eax
 8050711:	83 e8 01             	sub    $0x1,%eax
 8050714:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050719:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805071e:	89 c2                	mov    %eax,%edx
 8050720:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050725:	01 d0                	add    %edx,%eax
 8050727:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 805072c:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050731:	83 ec 08             	sub    $0x8,%esp
 8050734:	50                   	push   %eax
 8050735:	68 50 50 05 08       	push   $0x8055050
 805073a:	e8 c9 83 ff ff       	call   8048b08 <createNode>
 805073f:	83 c4 10             	add    $0x10,%esp
 8050742:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050747:	a1 68 81 05 08       	mov    0x8058168,%eax
 805074c:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050753:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050758:	c7 40 04 0f 00 00 00 	movl   $0xf,0x4(%eax)
 805075f:	b8 0c 01 00 00       	mov    $0x10c,%eax
 8050764:	e9 6b 0e 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050769:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 805076e:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050773:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050778:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 805077d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050782:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050787:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805078c:	89 c2                	mov    %eax,%edx
 805078e:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050793:	01 d0                	add    %edx,%eax
 8050795:	83 e8 01             	sub    $0x1,%eax
 8050798:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 805079d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80507a2:	89 c2                	mov    %eax,%edx
 80507a4:	a1 64 81 05 08       	mov    0x8058164,%eax
 80507a9:	01 d0                	add    %edx,%eax
 80507ab:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80507b0:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80507b5:	83 ec 08             	sub    $0x8,%esp
 80507b8:	50                   	push   %eax
 80507b9:	68 54 50 05 08       	push   $0x8055054
 80507be:	e8 45 83 ff ff       	call   8048b08 <createNode>
 80507c3:	83 c4 10             	add    $0x10,%esp
 80507c6:	a3 68 81 05 08       	mov    %eax,0x8058168
 80507cb:	a1 68 81 05 08       	mov    0x8058168,%eax
 80507d0:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80507d7:	a1 68 81 05 08       	mov    0x8058168,%eax
 80507dc:	c7 40 04 10 00 00 00 	movl   $0x10,0x4(%eax)
 80507e3:	b8 0d 01 00 00       	mov    $0x10d,%eax
 80507e8:	e9 e7 0d 00 00       	jmp    80515d4 <yylex+0x18f4>
 80507ed:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80507f2:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 80507f7:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 80507fc:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050801:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050806:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 805080b:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050810:	89 c2                	mov    %eax,%edx
 8050812:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050817:	01 d0                	add    %edx,%eax
 8050819:	83 e8 01             	sub    $0x1,%eax
 805081c:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050821:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050826:	89 c2                	mov    %eax,%edx
 8050828:	a1 64 81 05 08       	mov    0x8058164,%eax
 805082d:	01 d0                	add    %edx,%eax
 805082f:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050834:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050839:	83 ec 08             	sub    $0x8,%esp
 805083c:	50                   	push   %eax
 805083d:	68 58 50 05 08       	push   $0x8055058
 8050842:	e8 c1 82 ff ff       	call   8048b08 <createNode>
 8050847:	83 c4 10             	add    $0x10,%esp
 805084a:	a3 68 81 05 08       	mov    %eax,0x8058168
 805084f:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050854:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 805085b:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050860:	c7 40 04 11 00 00 00 	movl   $0x11,0x4(%eax)
 8050867:	b8 0e 01 00 00       	mov    $0x10e,%eax
 805086c:	e9 63 0d 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050871:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050876:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 805087b:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050880:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050885:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805088a:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 805088f:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050894:	89 c2                	mov    %eax,%edx
 8050896:	a1 64 81 05 08       	mov    0x8058164,%eax
 805089b:	01 d0                	add    %edx,%eax
 805089d:	83 e8 01             	sub    $0x1,%eax
 80508a0:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 80508a5:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80508aa:	89 c2                	mov    %eax,%edx
 80508ac:	a1 64 81 05 08       	mov    0x8058164,%eax
 80508b1:	01 d0                	add    %edx,%eax
 80508b3:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80508b8:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80508bd:	83 ec 08             	sub    $0x8,%esp
 80508c0:	50                   	push   %eax
 80508c1:	68 5b 50 05 08       	push   $0x805505b
 80508c6:	e8 3d 82 ff ff       	call   8048b08 <createNode>
 80508cb:	83 c4 10             	add    $0x10,%esp
 80508ce:	a3 68 81 05 08       	mov    %eax,0x8058168
 80508d3:	a1 68 81 05 08       	mov    0x8058168,%eax
 80508d8:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80508df:	a1 68 81 05 08       	mov    0x8058168,%eax
 80508e4:	c7 40 04 12 00 00 00 	movl   $0x12,0x4(%eax)
 80508eb:	b8 0f 01 00 00       	mov    $0x10f,%eax
 80508f0:	e9 df 0c 00 00       	jmp    80515d4 <yylex+0x18f4>
 80508f5:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80508fa:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 80508ff:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050904:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050909:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805090e:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050913:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050918:	89 c2                	mov    %eax,%edx
 805091a:	a1 64 81 05 08       	mov    0x8058164,%eax
 805091f:	01 d0                	add    %edx,%eax
 8050921:	83 e8 01             	sub    $0x1,%eax
 8050924:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050929:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805092e:	89 c2                	mov    %eax,%edx
 8050930:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050935:	01 d0                	add    %edx,%eax
 8050937:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 805093c:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050941:	83 ec 08             	sub    $0x8,%esp
 8050944:	50                   	push   %eax
 8050945:	68 5f 50 05 08       	push   $0x805505f
 805094a:	e8 b9 81 ff ff       	call   8048b08 <createNode>
 805094f:	83 c4 10             	add    $0x10,%esp
 8050952:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050957:	a1 68 81 05 08       	mov    0x8058168,%eax
 805095c:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050963:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050968:	c7 40 04 13 00 00 00 	movl   $0x13,0x4(%eax)
 805096f:	b8 10 01 00 00       	mov    $0x110,%eax
 8050974:	e9 5b 0c 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050979:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 805097e:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050983:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050988:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 805098d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050992:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050997:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805099c:	89 c2                	mov    %eax,%edx
 805099e:	a1 64 81 05 08       	mov    0x8058164,%eax
 80509a3:	01 d0                	add    %edx,%eax
 80509a5:	83 e8 01             	sub    $0x1,%eax
 80509a8:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 80509ad:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80509b2:	89 c2                	mov    %eax,%edx
 80509b4:	a1 64 81 05 08       	mov    0x8058164,%eax
 80509b9:	01 d0                	add    %edx,%eax
 80509bb:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80509c0:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80509c5:	83 ec 08             	sub    $0x8,%esp
 80509c8:	50                   	push   %eax
 80509c9:	68 63 50 05 08       	push   $0x8055063
 80509ce:	e8 35 81 ff ff       	call   8048b08 <createNode>
 80509d3:	83 c4 10             	add    $0x10,%esp
 80509d6:	a3 68 81 05 08       	mov    %eax,0x8058168
 80509db:	a1 68 81 05 08       	mov    0x8058168,%eax
 80509e0:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80509e7:	a1 68 81 05 08       	mov    0x8058168,%eax
 80509ec:	c7 40 04 14 00 00 00 	movl   $0x14,0x4(%eax)
 80509f3:	b8 11 01 00 00       	mov    $0x111,%eax
 80509f8:	e9 d7 0b 00 00       	jmp    80515d4 <yylex+0x18f4>
 80509fd:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050a02:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050a07:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050a0c:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050a11:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050a16:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050a1b:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050a20:	89 c2                	mov    %eax,%edx
 8050a22:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050a27:	01 d0                	add    %edx,%eax
 8050a29:	83 e8 01             	sub    $0x1,%eax
 8050a2c:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050a31:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050a36:	89 c2                	mov    %eax,%edx
 8050a38:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050a3d:	01 d0                	add    %edx,%eax
 8050a3f:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050a44:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050a49:	83 ec 08             	sub    $0x8,%esp
 8050a4c:	50                   	push   %eax
 8050a4d:	68 66 50 05 08       	push   $0x8055066
 8050a52:	e8 b1 80 ff ff       	call   8048b08 <createNode>
 8050a57:	83 c4 10             	add    $0x10,%esp
 8050a5a:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050a5f:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050a64:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050a6b:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050a70:	c7 40 04 15 00 00 00 	movl   $0x15,0x4(%eax)
 8050a77:	b8 12 01 00 00       	mov    $0x112,%eax
 8050a7c:	e9 53 0b 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050a81:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050a86:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050a8b:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050a90:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050a95:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050a9a:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050a9f:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050aa4:	89 c2                	mov    %eax,%edx
 8050aa6:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050aab:	01 d0                	add    %edx,%eax
 8050aad:	83 e8 01             	sub    $0x1,%eax
 8050ab0:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050ab5:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050aba:	89 c2                	mov    %eax,%edx
 8050abc:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050ac1:	01 d0                	add    %edx,%eax
 8050ac3:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050ac8:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050acd:	83 ec 08             	sub    $0x8,%esp
 8050ad0:	50                   	push   %eax
 8050ad1:	68 69 50 05 08       	push   $0x8055069
 8050ad6:	e8 2d 80 ff ff       	call   8048b08 <createNode>
 8050adb:	83 c4 10             	add    $0x10,%esp
 8050ade:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050ae3:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050ae8:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050aef:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050af4:	c7 40 04 16 00 00 00 	movl   $0x16,0x4(%eax)
 8050afb:	b8 13 01 00 00       	mov    $0x113,%eax
 8050b00:	e9 cf 0a 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050b05:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050b0a:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050b0f:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050b14:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050b19:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050b1e:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050b23:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050b28:	89 c2                	mov    %eax,%edx
 8050b2a:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050b2f:	01 d0                	add    %edx,%eax
 8050b31:	83 e8 01             	sub    $0x1,%eax
 8050b34:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050b39:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050b3e:	89 c2                	mov    %eax,%edx
 8050b40:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050b45:	01 d0                	add    %edx,%eax
 8050b47:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050b4c:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050b51:	83 ec 08             	sub    $0x8,%esp
 8050b54:	50                   	push   %eax
 8050b55:	68 6c 50 05 08       	push   $0x805506c
 8050b5a:	e8 a9 7f ff ff       	call   8048b08 <createNode>
 8050b5f:	83 c4 10             	add    $0x10,%esp
 8050b62:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050b67:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050b6c:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050b73:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050b78:	c7 40 04 17 00 00 00 	movl   $0x17,0x4(%eax)
 8050b7f:	b8 14 01 00 00       	mov    $0x114,%eax
 8050b84:	e9 4b 0a 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050b89:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050b8e:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050b93:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050b98:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050b9d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050ba2:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050ba7:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050bac:	89 c2                	mov    %eax,%edx
 8050bae:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050bb3:	01 d0                	add    %edx,%eax
 8050bb5:	83 e8 01             	sub    $0x1,%eax
 8050bb8:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050bbd:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050bc2:	89 c2                	mov    %eax,%edx
 8050bc4:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050bc9:	01 d0                	add    %edx,%eax
 8050bcb:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050bd0:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050bd5:	83 ec 08             	sub    $0x8,%esp
 8050bd8:	50                   	push   %eax
 8050bd9:	68 6f 50 05 08       	push   $0x805506f
 8050bde:	e8 25 7f ff ff       	call   8048b08 <createNode>
 8050be3:	83 c4 10             	add    $0x10,%esp
 8050be6:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050beb:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050bf0:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050bf7:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050bfc:	c7 40 04 18 00 00 00 	movl   $0x18,0x4(%eax)
 8050c03:	b8 15 01 00 00       	mov    $0x115,%eax
 8050c08:	e9 c7 09 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050c0d:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050c12:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050c17:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050c1c:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050c21:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050c26:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050c2b:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050c30:	89 c2                	mov    %eax,%edx
 8050c32:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050c37:	01 d0                	add    %edx,%eax
 8050c39:	83 e8 01             	sub    $0x1,%eax
 8050c3c:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050c41:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050c46:	89 c2                	mov    %eax,%edx
 8050c48:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050c4d:	01 d0                	add    %edx,%eax
 8050c4f:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050c54:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050c59:	83 ec 08             	sub    $0x8,%esp
 8050c5c:	50                   	push   %eax
 8050c5d:	68 72 50 05 08       	push   $0x8055072
 8050c62:	e8 a1 7e ff ff       	call   8048b08 <createNode>
 8050c67:	83 c4 10             	add    $0x10,%esp
 8050c6a:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050c6f:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050c74:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050c7b:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050c80:	c7 40 04 19 00 00 00 	movl   $0x19,0x4(%eax)
 8050c87:	b8 16 01 00 00       	mov    $0x116,%eax
 8050c8c:	e9 43 09 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050c91:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050c96:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050c9b:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050ca0:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050ca5:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050caa:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050caf:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050cb4:	89 c2                	mov    %eax,%edx
 8050cb6:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050cbb:	01 d0                	add    %edx,%eax
 8050cbd:	83 e8 01             	sub    $0x1,%eax
 8050cc0:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050cc5:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050cca:	89 c2                	mov    %eax,%edx
 8050ccc:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050cd1:	01 d0                	add    %edx,%eax
 8050cd3:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050cd8:	e8 51 11 00 00       	call   8051e2e <input>
 8050cdd:	88 45 da             	mov    %al,-0x26(%ebp)
 8050ce0:	eb 08                	jmp    8050cea <yylex+0x100a>
 8050ce2:	e8 47 11 00 00       	call   8051e2e <input>
 8050ce7:	88 45 da             	mov    %al,-0x26(%ebp)
 8050cea:	80 7d da ff          	cmpb   $0xff,-0x26(%ebp)
 8050cee:	0f 84 da 08 00 00    	je     80515ce <yylex+0x18ee>
 8050cf4:	80 7d da 0a          	cmpb   $0xa,-0x26(%ebp)
 8050cf8:	75 e8                	jne    8050ce2 <yylex+0x1002>
 8050cfa:	e9 cf 08 00 00       	jmp    80515ce <yylex+0x18ee>
 8050cff:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050d04:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050d09:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050d0e:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050d13:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050d18:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050d1d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050d22:	89 c2                	mov    %eax,%edx
 8050d24:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050d29:	01 d0                	add    %edx,%eax
 8050d2b:	83 e8 01             	sub    $0x1,%eax
 8050d2e:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050d33:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050d38:	89 c2                	mov    %eax,%edx
 8050d3a:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050d3f:	01 d0                	add    %edx,%eax
 8050d41:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050d46:	e8 e3 10 00 00       	call   8051e2e <input>
 8050d4b:	88 45 db             	mov    %al,-0x25(%ebp)
 8050d4e:	eb 1e                	jmp    8050d6e <yylex+0x108e>
 8050d50:	80 7d db 2a          	cmpb   $0x2a,-0x25(%ebp)
 8050d54:	75 10                	jne    8050d66 <yylex+0x1086>
 8050d56:	e8 d3 10 00 00       	call   8051e2e <input>
 8050d5b:	88 45 db             	mov    %al,-0x25(%ebp)
 8050d5e:	80 7d db 2f          	cmpb   $0x2f,-0x25(%ebp)
 8050d62:	75 0a                	jne    8050d6e <yylex+0x108e>
 8050d64:	eb 13                	jmp    8050d79 <yylex+0x1099>
 8050d66:	e8 c3 10 00 00       	call   8051e2e <input>
 8050d6b:	88 45 db             	mov    %al,-0x25(%ebp)
 8050d6e:	80 7d db ff          	cmpb   $0xff,-0x25(%ebp)
 8050d72:	75 dc                	jne    8050d50 <yylex+0x1070>
 8050d74:	e9 56 08 00 00       	jmp    80515cf <yylex+0x18ef>
 8050d79:	e9 51 08 00 00       	jmp    80515cf <yylex+0x18ef>
 8050d7e:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050d83:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050d88:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050d8d:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050d92:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050d97:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050d9c:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050da1:	89 c2                	mov    %eax,%edx
 8050da3:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050da8:	01 d0                	add    %edx,%eax
 8050daa:	83 e8 01             	sub    $0x1,%eax
 8050dad:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050db2:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050db7:	89 c2                	mov    %eax,%edx
 8050db9:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050dbe:	01 d0                	add    %edx,%eax
 8050dc0:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050dc5:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050dca:	83 ec 08             	sub    $0x8,%esp
 8050dcd:	50                   	push   %eax
 8050dce:	68 75 50 05 08       	push   $0x8055075
 8050dd3:	e8 30 7d ff ff       	call   8048b08 <createNode>
 8050dd8:	83 c4 10             	add    $0x10,%esp
 8050ddb:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050de0:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050de5:	c7 40 04 04 00 00 00 	movl   $0x4,0x4(%eax)
 8050dec:	8b 1d 68 81 05 08    	mov    0x8058168,%ebx
 8050df2:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8050df7:	83 ec 0c             	sub    $0xc,%esp
 8050dfa:	50                   	push   %eax
 8050dfb:	e8 b0 7a ff ff       	call   80488b0 <strlen@plt>
 8050e00:	83 c4 10             	add    $0x10,%esp
 8050e03:	83 ec 0c             	sub    $0xc,%esp
 8050e06:	50                   	push   %eax
 8050e07:	e8 74 7a ff ff       	call   8048880 <malloc@plt>
 8050e0c:	83 c4 10             	add    $0x10,%esp
 8050e0f:	89 43 08             	mov    %eax,0x8(%ebx)
 8050e12:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8050e17:	83 ec 0c             	sub    $0xc,%esp
 8050e1a:	50                   	push   %eax
 8050e1b:	e8 90 7a ff ff       	call   80488b0 <strlen@plt>
 8050e20:	83 c4 10             	add    $0x10,%esp
 8050e23:	89 c1                	mov    %eax,%ecx
 8050e25:	8b 15 5c 81 05 08    	mov    0x805815c,%edx
 8050e2b:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050e30:	8b 40 08             	mov    0x8(%eax),%eax
 8050e33:	83 ec 04             	sub    $0x4,%esp
 8050e36:	51                   	push   %ecx
 8050e37:	52                   	push   %edx
 8050e38:	50                   	push   %eax
 8050e39:	e8 f2 7a ff ff       	call   8048930 <strncpy@plt>
 8050e3e:	83 c4 10             	add    $0x10,%esp
 8050e41:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050e46:	8b 58 08             	mov    0x8(%eax),%ebx
 8050e49:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8050e4e:	83 ec 0c             	sub    $0xc,%esp
 8050e51:	50                   	push   %eax
 8050e52:	e8 59 7a ff ff       	call   80488b0 <strlen@plt>
 8050e57:	83 c4 10             	add    $0x10,%esp
 8050e5a:	01 d8                	add    %ebx,%eax
 8050e5c:	c6 00 00             	movb   $0x0,(%eax)
 8050e5f:	b8 1d 01 00 00       	mov    $0x11d,%eax
 8050e64:	e9 6b 07 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050e69:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050e6e:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050e73:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050e78:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050e7d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050e82:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050e87:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050e8c:	89 c2                	mov    %eax,%edx
 8050e8e:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050e93:	01 d0                	add    %edx,%eax
 8050e95:	83 e8 01             	sub    $0x1,%eax
 8050e98:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050e9d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050ea2:	89 c2                	mov    %eax,%edx
 8050ea4:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050ea9:	01 d0                	add    %edx,%eax
 8050eab:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050eb0:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050eb5:	83 ec 08             	sub    $0x8,%esp
 8050eb8:	50                   	push   %eax
 8050eb9:	68 7a 50 05 08       	push   $0x805507a
 8050ebe:	e8 45 7c ff ff       	call   8048b08 <createNode>
 8050ec3:	83 c4 10             	add    $0x10,%esp
 8050ec6:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050ecb:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050ed0:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050ed7:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050edc:	c7 40 04 1a 00 00 00 	movl   $0x1a,0x4(%eax)
 8050ee3:	b8 17 01 00 00       	mov    $0x117,%eax
 8050ee8:	e9 e7 06 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050eed:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050ef2:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050ef7:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050efc:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050f01:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050f06:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050f0b:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050f10:	89 c2                	mov    %eax,%edx
 8050f12:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050f17:	01 d0                	add    %edx,%eax
 8050f19:	83 e8 01             	sub    $0x1,%eax
 8050f1c:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050f21:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050f26:	89 c2                	mov    %eax,%edx
 8050f28:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050f2d:	01 d0                	add    %edx,%eax
 8050f2f:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050f34:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050f39:	83 ec 08             	sub    $0x8,%esp
 8050f3c:	50                   	push   %eax
 8050f3d:	68 81 50 05 08       	push   $0x8055081
 8050f42:	e8 c1 7b ff ff       	call   8048b08 <createNode>
 8050f47:	83 c4 10             	add    $0x10,%esp
 8050f4a:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050f4f:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050f54:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050f5b:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050f60:	c7 40 04 1b 00 00 00 	movl   $0x1b,0x4(%eax)
 8050f67:	b8 18 01 00 00       	mov    $0x118,%eax
 8050f6c:	e9 63 06 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050f71:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050f76:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050f7b:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8050f80:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8050f85:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050f8a:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8050f8f:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050f94:	89 c2                	mov    %eax,%edx
 8050f96:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050f9b:	01 d0                	add    %edx,%eax
 8050f9d:	83 e8 01             	sub    $0x1,%eax
 8050fa0:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8050fa5:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8050faa:	89 c2                	mov    %eax,%edx
 8050fac:	a1 64 81 05 08       	mov    0x8058164,%eax
 8050fb1:	01 d0                	add    %edx,%eax
 8050fb3:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8050fb8:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050fbd:	83 ec 08             	sub    $0x8,%esp
 8050fc0:	50                   	push   %eax
 8050fc1:	68 88 50 05 08       	push   $0x8055088
 8050fc6:	e8 3d 7b ff ff       	call   8048b08 <createNode>
 8050fcb:	83 c4 10             	add    $0x10,%esp
 8050fce:	a3 68 81 05 08       	mov    %eax,0x8058168
 8050fd3:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050fd8:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050fdf:	a1 68 81 05 08       	mov    0x8058168,%eax
 8050fe4:	c7 40 04 1c 00 00 00 	movl   $0x1c,0x4(%eax)
 8050feb:	b8 19 01 00 00       	mov    $0x119,%eax
 8050ff0:	e9 df 05 00 00       	jmp    80515d4 <yylex+0x18f4>
 8050ff5:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8050ffa:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8050fff:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8051004:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8051009:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805100e:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8051013:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051018:	89 c2                	mov    %eax,%edx
 805101a:	a1 64 81 05 08       	mov    0x8058164,%eax
 805101f:	01 d0                	add    %edx,%eax
 8051021:	83 e8 01             	sub    $0x1,%eax
 8051024:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8051029:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805102e:	89 c2                	mov    %eax,%edx
 8051030:	a1 64 81 05 08       	mov    0x8058164,%eax
 8051035:	01 d0                	add    %edx,%eax
 8051037:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 805103c:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8051041:	83 ec 08             	sub    $0x8,%esp
 8051044:	50                   	push   %eax
 8051045:	68 8b 50 05 08       	push   $0x805508b
 805104a:	e8 b9 7a ff ff       	call   8048b08 <createNode>
 805104f:	83 c4 10             	add    $0x10,%esp
 8051052:	a3 68 81 05 08       	mov    %eax,0x8058168
 8051057:	a1 68 81 05 08       	mov    0x8058168,%eax
 805105c:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8051063:	a1 68 81 05 08       	mov    0x8058168,%eax
 8051068:	c7 40 04 1d 00 00 00 	movl   $0x1d,0x4(%eax)
 805106f:	b8 1a 01 00 00       	mov    $0x11a,%eax
 8051074:	e9 5b 05 00 00       	jmp    80515d4 <yylex+0x18f4>
 8051079:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 805107e:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8051083:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8051088:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 805108d:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051092:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8051097:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805109c:	89 c2                	mov    %eax,%edx
 805109e:	a1 64 81 05 08       	mov    0x8058164,%eax
 80510a3:	01 d0                	add    %edx,%eax
 80510a5:	83 e8 01             	sub    $0x1,%eax
 80510a8:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 80510ad:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80510b2:	89 c2                	mov    %eax,%edx
 80510b4:	a1 64 81 05 08       	mov    0x8058164,%eax
 80510b9:	01 d0                	add    %edx,%eax
 80510bb:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80510c0:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80510c5:	83 ec 08             	sub    $0x8,%esp
 80510c8:	50                   	push   %eax
 80510c9:	68 90 50 05 08       	push   $0x8055090
 80510ce:	e8 35 7a ff ff       	call   8048b08 <createNode>
 80510d3:	83 c4 10             	add    $0x10,%esp
 80510d6:	a3 68 81 05 08       	mov    %eax,0x8058168
 80510db:	a1 68 81 05 08       	mov    0x8058168,%eax
 80510e0:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80510e7:	a1 68 81 05 08       	mov    0x8058168,%eax
 80510ec:	c7 40 04 1e 00 00 00 	movl   $0x1e,0x4(%eax)
 80510f3:	b8 1b 01 00 00       	mov    $0x11b,%eax
 80510f8:	e9 d7 04 00 00       	jmp    80515d4 <yylex+0x18f4>
 80510fd:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8051102:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8051107:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 805110c:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8051111:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051116:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 805111b:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051120:	89 c2                	mov    %eax,%edx
 8051122:	a1 64 81 05 08       	mov    0x8058164,%eax
 8051127:	01 d0                	add    %edx,%eax
 8051129:	83 e8 01             	sub    $0x1,%eax
 805112c:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8051131:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051136:	89 c2                	mov    %eax,%edx
 8051138:	a1 64 81 05 08       	mov    0x8058164,%eax
 805113d:	01 d0                	add    %edx,%eax
 805113f:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 8051144:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8051149:	83 ec 08             	sub    $0x8,%esp
 805114c:	50                   	push   %eax
 805114d:	68 96 50 05 08       	push   $0x8055096
 8051152:	e8 b1 79 ff ff       	call   8048b08 <createNode>
 8051157:	83 c4 10             	add    $0x10,%esp
 805115a:	a3 68 81 05 08       	mov    %eax,0x8058168
 805115f:	a1 68 81 05 08       	mov    0x8058168,%eax
 8051164:	c7 40 04 03 00 00 00 	movl   $0x3,0x4(%eax)
 805116b:	8b 1d 68 81 05 08    	mov    0x8058168,%ebx
 8051171:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8051176:	83 ec 0c             	sub    $0xc,%esp
 8051179:	50                   	push   %eax
 805117a:	e8 31 77 ff ff       	call   80488b0 <strlen@plt>
 805117f:	83 c4 10             	add    $0x10,%esp
 8051182:	83 ec 0c             	sub    $0xc,%esp
 8051185:	50                   	push   %eax
 8051186:	e8 f5 76 ff ff       	call   8048880 <malloc@plt>
 805118b:	83 c4 10             	add    $0x10,%esp
 805118e:	89 43 08             	mov    %eax,0x8(%ebx)
 8051191:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8051196:	83 ec 0c             	sub    $0xc,%esp
 8051199:	50                   	push   %eax
 805119a:	e8 11 77 ff ff       	call   80488b0 <strlen@plt>
 805119f:	83 c4 10             	add    $0x10,%esp
 80511a2:	89 c1                	mov    %eax,%ecx
 80511a4:	8b 15 5c 81 05 08    	mov    0x805815c,%edx
 80511aa:	a1 68 81 05 08       	mov    0x8058168,%eax
 80511af:	8b 40 08             	mov    0x8(%eax),%eax
 80511b2:	83 ec 04             	sub    $0x4,%esp
 80511b5:	51                   	push   %ecx
 80511b6:	52                   	push   %edx
 80511b7:	50                   	push   %eax
 80511b8:	e8 73 77 ff ff       	call   8048930 <strncpy@plt>
 80511bd:	83 c4 10             	add    $0x10,%esp
 80511c0:	a1 68 81 05 08       	mov    0x8058168,%eax
 80511c5:	8b 58 08             	mov    0x8(%eax),%ebx
 80511c8:	a1 5c 81 05 08       	mov    0x805815c,%eax
 80511cd:	83 ec 0c             	sub    $0xc,%esp
 80511d0:	50                   	push   %eax
 80511d1:	e8 da 76 ff ff       	call   80488b0 <strlen@plt>
 80511d6:	83 c4 10             	add    $0x10,%esp
 80511d9:	01 d8                	add    %ebx,%eax
 80511db:	c6 00 00             	movb   $0x0,(%eax)
 80511de:	b8 04 01 00 00       	mov    $0x104,%eax
 80511e3:	e9 ec 03 00 00       	jmp    80515d4 <yylex+0x18f4>
 80511e8:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80511ed:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 80511f2:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 80511f7:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 80511fc:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051201:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8051206:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805120b:	89 c2                	mov    %eax,%edx
 805120d:	a1 64 81 05 08       	mov    0x8058164,%eax
 8051212:	01 d0                	add    %edx,%eax
 8051214:	83 e8 01             	sub    $0x1,%eax
 8051217:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 805121c:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051221:	89 c2                	mov    %eax,%edx
 8051223:	a1 64 81 05 08       	mov    0x8058164,%eax
 8051228:	01 d0                	add    %edx,%eax
 805122a:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 805122f:	8b 0d 5c 81 05 08    	mov    0x805815c,%ecx
 8051235:	8b 15 bc 80 05 08    	mov    0x80580bc,%edx
 805123b:	a1 20 81 05 08       	mov    0x8058120,%eax
 8051240:	51                   	push   %ecx
 8051241:	52                   	push   %edx
 8051242:	50                   	push   %eax
 8051243:	68 9c 50 05 08       	push   $0x805509c
 8051248:	e8 73 75 ff ff       	call   80487c0 <printf@plt>
 805124d:	83 c4 10             	add    $0x10,%esp
 8051250:	a1 20 81 05 08       	mov    0x8058120,%eax
 8051255:	83 c0 01             	add    $0x1,%eax
 8051258:	a3 20 81 05 08       	mov    %eax,0x8058120
 805125d:	b8 02 01 00 00       	mov    $0x102,%eax
 8051262:	e9 6d 03 00 00       	jmp    80515d4 <yylex+0x18f4>
 8051267:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 805126c:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 8051271:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 8051276:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 805127b:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051280:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8051285:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805128a:	89 c2                	mov    %eax,%edx
 805128c:	a1 64 81 05 08       	mov    0x8058164,%eax
 8051291:	01 d0                	add    %edx,%eax
 8051293:	83 e8 01             	sub    $0x1,%eax
 8051296:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 805129b:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80512a0:	89 c2                	mov    %eax,%edx
 80512a2:	a1 64 81 05 08       	mov    0x8058164,%eax
 80512a7:	01 d0                	add    %edx,%eax
 80512a9:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80512ae:	8b 0d 5c 81 05 08    	mov    0x805815c,%ecx
 80512b4:	8b 15 bc 80 05 08    	mov    0x80580bc,%edx
 80512ba:	a1 20 81 05 08       	mov    0x8058120,%eax
 80512bf:	51                   	push   %ecx
 80512c0:	52                   	push   %edx
 80512c1:	50                   	push   %eax
 80512c2:	68 dc 50 05 08       	push   $0x80550dc
 80512c7:	e8 f4 74 ff ff       	call   80487c0 <printf@plt>
 80512cc:	83 c4 10             	add    $0x10,%esp
 80512cf:	a1 20 81 05 08       	mov    0x8058120,%eax
 80512d4:	83 c0 01             	add    $0x1,%eax
 80512d7:	a3 20 81 05 08       	mov    %eax,0x8058120
 80512dc:	b8 02 01 00 00       	mov    $0x102,%eax
 80512e1:	e9 ee 02 00 00       	jmp    80515d4 <yylex+0x18f4>
 80512e6:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80512eb:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 80512f0:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 80512f5:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 80512fa:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 80512ff:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 8051304:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051309:	89 c2                	mov    %eax,%edx
 805130b:	a1 64 81 05 08       	mov    0x8058164,%eax
 8051310:	01 d0                	add    %edx,%eax
 8051312:	83 e8 01             	sub    $0x1,%eax
 8051315:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 805131a:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 805131f:	89 c2                	mov    %eax,%edx
 8051321:	a1 64 81 05 08       	mov    0x8058164,%eax
 8051326:	01 d0                	add    %edx,%eax
 8051328:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 805132d:	8b 0d 5c 81 05 08    	mov    0x805815c,%ecx
 8051333:	8b 15 bc 80 05 08    	mov    0x80580bc,%edx
 8051339:	a1 20 81 05 08       	mov    0x8058120,%eax
 805133e:	51                   	push   %ecx
 805133f:	52                   	push   %edx
 8051340:	50                   	push   %eax
 8051341:	68 18 51 05 08       	push   $0x8055118
 8051346:	e8 75 74 ff ff       	call   80487c0 <printf@plt>
 805134b:	83 c4 10             	add    $0x10,%esp
 805134e:	a1 20 81 05 08       	mov    0x8058120,%eax
 8051353:	83 c0 01             	add    $0x1,%eax
 8051356:	a3 20 81 05 08       	mov    %eax,0x8058120
 805135b:	e9 6f 02 00 00       	jmp    80515cf <yylex+0x18ef>
 8051360:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8051365:	a3 b4 80 05 08       	mov    %eax,0x80580b4
 805136a:	a1 b4 80 05 08       	mov    0x80580b4,%eax
 805136f:	a3 ac 80 05 08       	mov    %eax,0x80580ac
 8051374:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051379:	a3 b0 80 05 08       	mov    %eax,0x80580b0
 805137e:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051383:	89 c2                	mov    %eax,%edx
 8051385:	a1 64 81 05 08       	mov    0x8058164,%eax
 805138a:	01 d0                	add    %edx,%eax
 805138c:	83 e8 01             	sub    $0x1,%eax
 805138f:	a3 b8 80 05 08       	mov    %eax,0x80580b8
 8051394:	a1 c0 80 05 08       	mov    0x80580c0,%eax
 8051399:	89 c2                	mov    %eax,%edx
 805139b:	a1 64 81 05 08       	mov    0x8058164,%eax
 80513a0:	01 d0                	add    %edx,%eax
 80513a2:	a3 c0 80 05 08       	mov    %eax,0x80580c0
 80513a7:	8b 0d 18 81 05 08    	mov    0x8058118,%ecx
 80513ad:	8b 15 64 81 05 08    	mov    0x8058164,%edx
 80513b3:	a1 5c 81 05 08       	mov    0x805815c,%eax
 80513b8:	51                   	push   %ecx
 80513b9:	6a 01                	push   $0x1
 80513bb:	52                   	push   %edx
 80513bc:	50                   	push   %eax
 80513bd:	e8 7e 74 ff ff       	call   8048840 <fwrite@plt>
 80513c2:	83 c4 10             	add    $0x10,%esp
 80513c5:	e9 05 02 00 00       	jmp    80515cf <yylex+0x18ef>
 80513ca:	b8 00 00 00 00       	mov    $0x0,%eax
 80513cf:	e9 00 02 00 00       	jmp    80515d4 <yylex+0x18f4>
 80513d4:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80513d7:	8b 15 5c 81 05 08    	mov    0x805815c,%edx
 80513dd:	29 d0                	sub    %edx,%eax
 80513df:	83 e8 01             	sub    $0x1,%eax
 80513e2:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80513e5:	0f b6 15 34 81 05 08 	movzbl 0x8058134,%edx
 80513ec:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80513ef:	88 10                	mov    %dl,(%eax)
 80513f1:	a1 30 81 05 08       	mov    0x8058130,%eax
 80513f6:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80513fc:	c1 e2 02             	shl    $0x2,%edx
 80513ff:	01 d0                	add    %edx,%eax
 8051401:	8b 00                	mov    (%eax),%eax
 8051403:	8b 40 2c             	mov    0x2c(%eax),%eax
 8051406:	85 c0                	test   %eax,%eax
 8051408:	75 4d                	jne    8051457 <yylex+0x1777>
 805140a:	a1 30 81 05 08       	mov    0x8058130,%eax
 805140f:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051415:	c1 e2 02             	shl    $0x2,%edx
 8051418:	01 d0                	add    %edx,%eax
 805141a:	8b 00                	mov    (%eax),%eax
 805141c:	8b 40 10             	mov    0x10(%eax),%eax
 805141f:	a3 38 81 05 08       	mov    %eax,0x8058138
 8051424:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051429:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 805142f:	c1 e2 02             	shl    $0x2,%edx
 8051432:	01 d0                	add    %edx,%eax
 8051434:	8b 00                	mov    (%eax),%eax
 8051436:	8b 15 14 81 05 08    	mov    0x8058114,%edx
 805143c:	89 10                	mov    %edx,(%eax)
 805143e:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051443:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051449:	c1 e2 02             	shl    $0x2,%edx
 805144c:	01 d0                	add    %edx,%eax
 805144e:	8b 00                	mov    (%eax),%eax
 8051450:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
 8051457:	a1 30 81 05 08       	mov    0x8058130,%eax
 805145c:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051462:	c1 e2 02             	shl    $0x2,%edx
 8051465:	01 d0                	add    %edx,%eax
 8051467:	8b 00                	mov    (%eax),%eax
 8051469:	8b 40 04             	mov    0x4(%eax),%eax
 805146c:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 8051472:	01 c2                	add    %eax,%edx
 8051474:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051479:	39 c2                	cmp    %eax,%edx
 805147b:	72 64                	jb     80514e1 <yylex+0x1801>
 805147d:	8b 15 5c 81 05 08    	mov    0x805815c,%edx
 8051483:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8051486:	01 d0                	add    %edx,%eax
 8051488:	a3 3c 81 05 08       	mov    %eax,0x805813c
 805148d:	e8 85 06 00 00       	call   8051b17 <yy_get_previous_state>
 8051492:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8051495:	83 ec 0c             	sub    $0xc,%esp
 8051498:	ff 75 dc             	pushl  -0x24(%ebp)
 805149b:	e8 56 07 00 00       	call   8051bf6 <yy_try_NUL_trans>
 80514a0:	83 c4 10             	add    $0x10,%esp
 80514a3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80514a6:	a1 5c 81 05 08       	mov    0x805815c,%eax
 80514ab:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80514ae:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80514b2:	74 20                	je     80514d4 <yylex+0x17f4>
 80514b4:	a1 3c 81 05 08       	mov    0x805813c,%eax
 80514b9:	83 c0 01             	add    $0x1,%eax
 80514bc:	a3 3c 81 05 08       	mov    %eax,0x805813c
 80514c1:	a1 3c 81 05 08       	mov    0x805813c,%eax
 80514c6:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80514c9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80514cc:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80514cf:	e9 d7 e8 ff ff       	jmp    804fdab <yylex+0xcb>
 80514d4:	a1 3c 81 05 08       	mov    0x805813c,%eax
 80514d9:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80514dc:	e9 7f e9 ff ff       	jmp    804fe60 <yylex+0x180>
 80514e1:	e8 f3 00 00 00       	call   80515d9 <yy_get_next_buffer>
 80514e6:	83 f8 01             	cmp    $0x1,%eax
 80514e9:	74 12                	je     80514fd <yylex+0x181d>
 80514eb:	83 f8 02             	cmp    $0x2,%eax
 80514ee:	0f 84 8b 00 00 00    	je     805157f <yylex+0x189f>
 80514f4:	85 c0                	test   %eax,%eax
 80514f6:	74 5a                	je     8051552 <yylex+0x1872>
 80514f8:	e9 d2 00 00 00       	jmp    80515cf <yylex+0x18ef>
 80514fd:	c7 05 48 81 05 08 00 	movl   $0x0,0x8058148
 8051504:	00 00 00 
 8051507:	e8 c4 1f 00 00       	call   80534d0 <yywrap>
 805150c:	85 c0                	test   %eax,%eax
 805150e:	74 26                	je     8051536 <yylex+0x1856>
 8051510:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8051515:	a3 3c 81 05 08       	mov    %eax,0x805813c
 805151a:	a1 44 81 05 08       	mov    0x8058144,%eax
 805151f:	83 e8 01             	sub    $0x1,%eax
 8051522:	89 c2                	mov    %eax,%edx
 8051524:	c1 ea 1f             	shr    $0x1f,%edx
 8051527:	01 d0                	add    %edx,%eax
 8051529:	d1 f8                	sar    %eax
 805152b:	83 c0 28             	add    $0x28,%eax
 805152e:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8051531:	e9 d8 e9 ff ff       	jmp    804ff0e <yylex+0x22e>
 8051536:	a1 48 81 05 08       	mov    0x8058148,%eax
 805153b:	85 c0                	test   %eax,%eax
 805153d:	75 7f                	jne    80515be <yylex+0x18de>
 805153f:	a1 14 81 05 08       	mov    0x8058114,%eax
 8051544:	83 ec 0c             	sub    $0xc,%esp
 8051547:	50                   	push   %eax
 8051548:	e8 08 0a 00 00       	call   8051f55 <yyrestart>
 805154d:	83 c4 10             	add    $0x10,%esp
 8051550:	eb 6c                	jmp    80515be <yylex+0x18de>
 8051552:	8b 15 5c 81 05 08    	mov    0x805815c,%edx
 8051558:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805155b:	01 d0                	add    %edx,%eax
 805155d:	a3 3c 81 05 08       	mov    %eax,0x805813c
 8051562:	e8 b0 05 00 00       	call   8051b17 <yy_get_previous_state>
 8051567:	89 45 dc             	mov    %eax,-0x24(%ebp)
 805156a:	a1 3c 81 05 08       	mov    0x805813c,%eax
 805156f:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8051572:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8051577:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 805157a:	e9 2c e8 ff ff       	jmp    804fdab <yylex+0xcb>
 805157f:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051584:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 805158a:	c1 e2 02             	shl    $0x2,%edx
 805158d:	01 d0                	add    %edx,%eax
 805158f:	8b 00                	mov    (%eax),%eax
 8051591:	8b 40 04             	mov    0x4(%eax),%eax
 8051594:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 805159a:	01 d0                	add    %edx,%eax
 805159c:	a3 3c 81 05 08       	mov    %eax,0x805813c
 80515a1:	e8 71 05 00 00       	call   8051b17 <yy_get_previous_state>
 80515a6:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80515a9:	a1 3c 81 05 08       	mov    0x805813c,%eax
 80515ae:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80515b1:	a1 5c 81 05 08       	mov    0x805815c,%eax
 80515b6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80515b9:	e9 a2 e8 ff ff       	jmp    804fe60 <yylex+0x180>
 80515be:	90                   	nop
 80515bf:	eb 0e                	jmp    80515cf <yylex+0x18ef>
 80515c1:	83 ec 0c             	sub    $0xc,%esp
 80515c4:	68 54 51 05 08       	push   $0x8055154
 80515c9:	e8 a6 11 00 00       	call   8052774 <yy_fatal_error>
 80515ce:	90                   	nop
 80515cf:	e9 b5 e7 ff ff       	jmp    804fd89 <yylex+0xa9>
 80515d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80515d7:	c9                   	leave  
 80515d8:	c3                   	ret    

080515d9 <yy_get_next_buffer>:
 80515d9:	55                   	push   %ebp
 80515da:	89 e5                	mov    %esp,%ebp
 80515dc:	53                   	push   %ebx
 80515dd:	83 ec 34             	sub    $0x34,%esp
 80515e0:	a1 30 81 05 08       	mov    0x8058130,%eax
 80515e5:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80515eb:	c1 e2 02             	shl    $0x2,%edx
 80515ee:	01 d0                	add    %edx,%eax
 80515f0:	8b 00                	mov    (%eax),%eax
 80515f2:	8b 40 04             	mov    0x4(%eax),%eax
 80515f5:	89 45 c8             	mov    %eax,-0x38(%ebp)
 80515f8:	a1 5c 81 05 08       	mov    0x805815c,%eax
 80515fd:	89 45 cc             	mov    %eax,-0x34(%ebp)
 8051600:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051605:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 805160b:	c1 e2 02             	shl    $0x2,%edx
 805160e:	01 d0                	add    %edx,%eax
 8051610:	8b 00                	mov    (%eax),%eax
 8051612:	8b 40 04             	mov    0x4(%eax),%eax
 8051615:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 805161b:	83 c2 01             	add    $0x1,%edx
 805161e:	01 c2                	add    %eax,%edx
 8051620:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051625:	39 c2                	cmp    %eax,%edx
 8051627:	73 0d                	jae    8051636 <yy_get_next_buffer+0x5d>
 8051629:	83 ec 0c             	sub    $0xc,%esp
 805162c:	68 2c 52 05 08       	push   $0x805522c
 8051631:	e8 3e 11 00 00       	call   8052774 <yy_fatal_error>
 8051636:	a1 30 81 05 08       	mov    0x8058130,%eax
 805163b:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051641:	c1 e2 02             	shl    $0x2,%edx
 8051644:	01 d0                	add    %edx,%eax
 8051646:	8b 00                	mov    (%eax),%eax
 8051648:	8b 40 28             	mov    0x28(%eax),%eax
 805164b:	85 c0                	test   %eax,%eax
 805164d:	75 29                	jne    8051678 <yy_get_next_buffer+0x9f>
 805164f:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051654:	89 c2                	mov    %eax,%edx
 8051656:	a1 5c 81 05 08       	mov    0x805815c,%eax
 805165b:	29 c2                	sub    %eax,%edx
 805165d:	89 d0                	mov    %edx,%eax
 805165f:	83 f8 01             	cmp    $0x1,%eax
 8051662:	75 0a                	jne    805166e <yy_get_next_buffer+0x95>
 8051664:	b8 01 00 00 00       	mov    $0x1,%eax
 8051669:	e9 a4 04 00 00       	jmp    8051b12 <yy_get_next_buffer+0x539>
 805166e:	b8 02 00 00 00       	mov    $0x2,%eax
 8051673:	e9 9a 04 00 00       	jmp    8051b12 <yy_get_next_buffer+0x539>
 8051678:	a1 3c 81 05 08       	mov    0x805813c,%eax
 805167d:	89 c2                	mov    %eax,%edx
 805167f:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8051684:	29 c2                	sub    %eax,%edx
 8051686:	89 d0                	mov    %edx,%eax
 8051688:	83 e8 01             	sub    $0x1,%eax
 805168b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 805168e:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 8051695:	eb 1b                	jmp    80516b2 <yy_get_next_buffer+0xd9>
 8051697:	8b 45 c8             	mov    -0x38(%ebp),%eax
 805169a:	8d 50 01             	lea    0x1(%eax),%edx
 805169d:	89 55 c8             	mov    %edx,-0x38(%ebp)
 80516a0:	8b 55 cc             	mov    -0x34(%ebp),%edx
 80516a3:	8d 4a 01             	lea    0x1(%edx),%ecx
 80516a6:	89 4d cc             	mov    %ecx,-0x34(%ebp)
 80516a9:	0f b6 12             	movzbl (%edx),%edx
 80516ac:	88 10                	mov    %dl,(%eax)
 80516ae:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
 80516b2:	8b 45 d0             	mov    -0x30(%ebp),%eax
 80516b5:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
 80516b8:	72 dd                	jb     8051697 <yy_get_next_buffer+0xbe>
 80516ba:	a1 30 81 05 08       	mov    0x8058130,%eax
 80516bf:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80516c5:	c1 e2 02             	shl    $0x2,%edx
 80516c8:	01 d0                	add    %edx,%eax
 80516ca:	8b 00                	mov    (%eax),%eax
 80516cc:	8b 40 2c             	mov    0x2c(%eax),%eax
 80516cf:	83 f8 02             	cmp    $0x2,%eax
 80516d2:	75 2a                	jne    80516fe <yy_get_next_buffer+0x125>
 80516d4:	a1 30 81 05 08       	mov    0x8058130,%eax
 80516d9:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80516df:	c1 e2 02             	shl    $0x2,%edx
 80516e2:	01 d0                	add    %edx,%eax
 80516e4:	8b 00                	mov    (%eax),%eax
 80516e6:	c7 05 38 81 05 08 00 	movl   $0x0,0x8058138
 80516ed:	00 00 00 
 80516f0:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 80516f6:	89 50 10             	mov    %edx,0x10(%eax)
 80516f9:	e9 b3 02 00 00       	jmp    80519b1 <yy_get_next_buffer+0x3d8>
 80516fe:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051703:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051709:	c1 e2 02             	shl    $0x2,%edx
 805170c:	01 d0                	add    %edx,%eax
 805170e:	8b 00                	mov    (%eax),%eax
 8051710:	8b 40 0c             	mov    0xc(%eax),%eax
 8051713:	2b 45 e4             	sub    -0x1c(%ebp),%eax
 8051716:	83 e8 01             	sub    $0x1,%eax
 8051719:	89 45 d8             	mov    %eax,-0x28(%ebp)
 805171c:	e9 e1 00 00 00       	jmp    8051802 <yy_get_next_buffer+0x229>
 8051721:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051726:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 805172c:	c1 e2 02             	shl    $0x2,%edx
 805172f:	01 d0                	add    %edx,%eax
 8051731:	8b 00                	mov    (%eax),%eax
 8051733:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8051736:	a1 3c 81 05 08       	mov    0x805813c,%eax
 805173b:	89 c2                	mov    %eax,%edx
 805173d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051740:	8b 40 04             	mov    0x4(%eax),%eax
 8051743:	29 c2                	sub    %eax,%edx
 8051745:	89 d0                	mov    %edx,%eax
 8051747:	89 45 ec             	mov    %eax,-0x14(%ebp)
 805174a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805174d:	8b 40 14             	mov    0x14(%eax),%eax
 8051750:	85 c0                	test   %eax,%eax
 8051752:	74 5f                	je     80517b3 <yy_get_next_buffer+0x1da>
 8051754:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051757:	8b 40 0c             	mov    0xc(%eax),%eax
 805175a:	01 c0                	add    %eax,%eax
 805175c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 805175f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8051763:	75 19                	jne    805177e <yy_get_next_buffer+0x1a5>
 8051765:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051768:	8b 50 0c             	mov    0xc(%eax),%edx
 805176b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805176e:	8b 40 0c             	mov    0xc(%eax),%eax
 8051771:	c1 e8 03             	shr    $0x3,%eax
 8051774:	01 c2                	add    %eax,%edx
 8051776:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051779:	89 50 0c             	mov    %edx,0xc(%eax)
 805177c:	eb 0f                	jmp    805178d <yy_get_next_buffer+0x1b4>
 805177e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051781:	8b 40 0c             	mov    0xc(%eax),%eax
 8051784:	8d 14 00             	lea    (%eax,%eax,1),%edx
 8051787:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805178a:	89 50 0c             	mov    %edx,0xc(%eax)
 805178d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051790:	8b 40 0c             	mov    0xc(%eax),%eax
 8051793:	8d 50 02             	lea    0x2(%eax),%edx
 8051796:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051799:	8b 40 04             	mov    0x4(%eax),%eax
 805179c:	83 ec 08             	sub    $0x8,%esp
 805179f:	52                   	push   %edx
 80517a0:	50                   	push   %eax
 80517a1:	e8 7c 11 00 00       	call   8052922 <yyrealloc>
 80517a6:	83 c4 10             	add    $0x10,%esp
 80517a9:	89 c2                	mov    %eax,%edx
 80517ab:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80517ae:	89 50 04             	mov    %edx,0x4(%eax)
 80517b1:	eb 0a                	jmp    80517bd <yy_get_next_buffer+0x1e4>
 80517b3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80517b6:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 80517bd:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80517c0:	8b 40 04             	mov    0x4(%eax),%eax
 80517c3:	85 c0                	test   %eax,%eax
 80517c5:	75 0d                	jne    80517d4 <yy_get_next_buffer+0x1fb>
 80517c7:	83 ec 0c             	sub    $0xc,%esp
 80517ca:	68 64 52 05 08       	push   $0x8055264
 80517cf:	e8 a0 0f 00 00       	call   8052774 <yy_fatal_error>
 80517d4:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80517d7:	8b 50 04             	mov    0x4(%eax),%edx
 80517da:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80517dd:	01 d0                	add    %edx,%eax
 80517df:	a3 3c 81 05 08       	mov    %eax,0x805813c
 80517e4:	a1 30 81 05 08       	mov    0x8058130,%eax
 80517e9:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80517ef:	c1 e2 02             	shl    $0x2,%edx
 80517f2:	01 d0                	add    %edx,%eax
 80517f4:	8b 00                	mov    (%eax),%eax
 80517f6:	8b 40 0c             	mov    0xc(%eax),%eax
 80517f9:	2b 45 e4             	sub    -0x1c(%ebp),%eax
 80517fc:	83 e8 01             	sub    $0x1,%eax
 80517ff:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8051802:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 8051806:	0f 84 15 ff ff ff    	je     8051721 <yy_get_next_buffer+0x148>
 805180c:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
 8051813:	76 07                	jbe    805181c <yy_get_next_buffer+0x243>
 8051815:	c7 45 d8 00 20 00 00 	movl   $0x2000,-0x28(%ebp)
 805181c:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051821:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051827:	c1 e2 02             	shl    $0x2,%edx
 805182a:	01 d0                	add    %edx,%eax
 805182c:	8b 00                	mov    (%eax),%eax
 805182e:	8b 40 18             	mov    0x18(%eax),%eax
 8051831:	85 c0                	test   %eax,%eax
 8051833:	0f 84 c5 00 00 00    	je     80518fe <yy_get_next_buffer+0x325>
 8051839:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
 8051840:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 8051847:	eb 28                	jmp    8051871 <yy_get_next_buffer+0x298>
 8051849:	a1 30 81 05 08       	mov    0x8058130,%eax
 805184e:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051854:	c1 e2 02             	shl    $0x2,%edx
 8051857:	01 d0                	add    %edx,%eax
 8051859:	8b 00                	mov    (%eax),%eax
 805185b:	8b 40 04             	mov    0x4(%eax),%eax
 805185e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8051861:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8051864:	01 ca                	add    %ecx,%edx
 8051866:	01 d0                	add    %edx,%eax
 8051868:	8b 55 dc             	mov    -0x24(%ebp),%edx
 805186b:	88 10                	mov    %dl,(%eax)
 805186d:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 8051871:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8051874:	3b 45 d8             	cmp    -0x28(%ebp),%eax
 8051877:	73 20                	jae    8051899 <yy_get_next_buffer+0x2c0>
 8051879:	a1 14 81 05 08       	mov    0x8058114,%eax
 805187e:	83 ec 0c             	sub    $0xc,%esp
 8051881:	50                   	push   %eax
 8051882:	e8 99 6f ff ff       	call   8048820 <_IO_getc@plt>
 8051887:	83 c4 10             	add    $0x10,%esp
 805188a:	89 45 dc             	mov    %eax,-0x24(%ebp)
 805188d:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
 8051891:	74 06                	je     8051899 <yy_get_next_buffer+0x2c0>
 8051893:	83 7d dc 0a          	cmpl   $0xa,-0x24(%ebp)
 8051897:	75 b0                	jne    8051849 <yy_get_next_buffer+0x270>
 8051899:	83 7d dc 0a          	cmpl   $0xa,-0x24(%ebp)
 805189d:	75 2a                	jne    80518c9 <yy_get_next_buffer+0x2f0>
 805189f:	a1 30 81 05 08       	mov    0x8058130,%eax
 80518a4:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80518aa:	c1 e2 02             	shl    $0x2,%edx
 80518ad:	01 d0                	add    %edx,%eax
 80518af:	8b 00                	mov    (%eax),%eax
 80518b1:	8b 48 04             	mov    0x4(%eax),%ecx
 80518b4:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80518b7:	8d 50 01             	lea    0x1(%eax),%edx
 80518ba:	89 55 e0             	mov    %edx,-0x20(%ebp)
 80518bd:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 80518c0:	01 d0                	add    %edx,%eax
 80518c2:	01 c8                	add    %ecx,%eax
 80518c4:	8b 55 dc             	mov    -0x24(%ebp),%edx
 80518c7:	88 10                	mov    %dl,(%eax)
 80518c9:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
 80518cd:	75 22                	jne    80518f1 <yy_get_next_buffer+0x318>
 80518cf:	a1 14 81 05 08       	mov    0x8058114,%eax
 80518d4:	83 ec 0c             	sub    $0xc,%esp
 80518d7:	50                   	push   %eax
 80518d8:	e8 13 6f ff ff       	call   80487f0 <ferror@plt>
 80518dd:	83 c4 10             	add    $0x10,%esp
 80518e0:	85 c0                	test   %eax,%eax
 80518e2:	74 0d                	je     80518f1 <yy_get_next_buffer+0x318>
 80518e4:	83 ec 0c             	sub    $0xc,%esp
 80518e7:	68 90 52 05 08       	push   $0x8055290
 80518ec:	e8 83 0e 00 00       	call   8052774 <yy_fatal_error>
 80518f1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80518f4:	a3 38 81 05 08       	mov    %eax,0x8058138
 80518f9:	e9 98 00 00 00       	jmp    8051996 <yy_get_next_buffer+0x3bd>
 80518fe:	e8 1d 70 ff ff       	call   8048920 <__errno_location@plt>
 8051903:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8051909:	eb 35                	jmp    8051940 <yy_get_next_buffer+0x367>
 805190b:	e8 10 70 ff ff       	call   8048920 <__errno_location@plt>
 8051910:	8b 00                	mov    (%eax),%eax
 8051912:	83 f8 04             	cmp    $0x4,%eax
 8051915:	74 0d                	je     8051924 <yy_get_next_buffer+0x34b>
 8051917:	83 ec 0c             	sub    $0xc,%esp
 805191a:	68 90 52 05 08       	push   $0x8055290
 805191f:	e8 50 0e 00 00       	call   8052774 <yy_fatal_error>
 8051924:	e8 f7 6f ff ff       	call   8048920 <__errno_location@plt>
 8051929:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 805192f:	a1 14 81 05 08       	mov    0x8058114,%eax
 8051934:	83 ec 0c             	sub    $0xc,%esp
 8051937:	50                   	push   %eax
 8051938:	e8 23 70 ff ff       	call   8048960 <clearerr@plt>
 805193d:	83 c4 10             	add    $0x10,%esp
 8051940:	a1 14 81 05 08       	mov    0x8058114,%eax
 8051945:	8b 15 30 81 05 08    	mov    0x8058130,%edx
 805194b:	8b 0d 28 81 05 08    	mov    0x8058128,%ecx
 8051951:	c1 e1 02             	shl    $0x2,%ecx
 8051954:	01 ca                	add    %ecx,%edx
 8051956:	8b 12                	mov    (%edx),%edx
 8051958:	8b 4a 04             	mov    0x4(%edx),%ecx
 805195b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 805195e:	01 ca                	add    %ecx,%edx
 8051960:	50                   	push   %eax
 8051961:	ff 75 d8             	pushl  -0x28(%ebp)
 8051964:	6a 01                	push   $0x1
 8051966:	52                   	push   %edx
 8051967:	e8 e4 6e ff ff       	call   8048850 <fread@plt>
 805196c:	83 c4 10             	add    $0x10,%esp
 805196f:	a3 38 81 05 08       	mov    %eax,0x8058138
 8051974:	a1 38 81 05 08       	mov    0x8058138,%eax
 8051979:	85 c0                	test   %eax,%eax
 805197b:	75 19                	jne    8051996 <yy_get_next_buffer+0x3bd>
 805197d:	a1 14 81 05 08       	mov    0x8058114,%eax
 8051982:	83 ec 0c             	sub    $0xc,%esp
 8051985:	50                   	push   %eax
 8051986:	e8 65 6e ff ff       	call   80487f0 <ferror@plt>
 805198b:	83 c4 10             	add    $0x10,%esp
 805198e:	85 c0                	test   %eax,%eax
 8051990:	0f 85 75 ff ff ff    	jne    805190b <yy_get_next_buffer+0x332>
 8051996:	a1 30 81 05 08       	mov    0x8058130,%eax
 805199b:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80519a1:	c1 e2 02             	shl    $0x2,%edx
 80519a4:	01 d0                	add    %edx,%eax
 80519a6:	8b 00                	mov    (%eax),%eax
 80519a8:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 80519ae:	89 50 10             	mov    %edx,0x10(%eax)
 80519b1:	a1 38 81 05 08       	mov    0x8058138,%eax
 80519b6:	85 c0                	test   %eax,%eax
 80519b8:	75 42                	jne    80519fc <yy_get_next_buffer+0x423>
 80519ba:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 80519be:	75 1a                	jne    80519da <yy_get_next_buffer+0x401>
 80519c0:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 80519c7:	a1 14 81 05 08       	mov    0x8058114,%eax
 80519cc:	83 ec 0c             	sub    $0xc,%esp
 80519cf:	50                   	push   %eax
 80519d0:	e8 80 05 00 00       	call   8051f55 <yyrestart>
 80519d5:	83 c4 10             	add    $0x10,%esp
 80519d8:	eb 29                	jmp    8051a03 <yy_get_next_buffer+0x42a>
 80519da:	c7 45 d4 02 00 00 00 	movl   $0x2,-0x2c(%ebp)
 80519e1:	a1 30 81 05 08       	mov    0x8058130,%eax
 80519e6:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80519ec:	c1 e2 02             	shl    $0x2,%edx
 80519ef:	01 d0                	add    %edx,%eax
 80519f1:	8b 00                	mov    (%eax),%eax
 80519f3:	c7 40 2c 02 00 00 00 	movl   $0x2,0x2c(%eax)
 80519fa:	eb 07                	jmp    8051a03 <yy_get_next_buffer+0x42a>
 80519fc:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8051a03:	a1 38 81 05 08       	mov    0x8058138,%eax
 8051a08:	89 c2                	mov    %eax,%edx
 8051a0a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8051a0d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 8051a10:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051a15:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051a1b:	c1 e2 02             	shl    $0x2,%edx
 8051a1e:	01 d0                	add    %edx,%eax
 8051a20:	8b 00                	mov    (%eax),%eax
 8051a22:	8b 40 0c             	mov    0xc(%eax),%eax
 8051a25:	39 c1                	cmp    %eax,%ecx
 8051a27:	76 78                	jbe    8051aa1 <yy_get_next_buffer+0x4c8>
 8051a29:	a1 38 81 05 08       	mov    0x8058138,%eax
 8051a2e:	89 c2                	mov    %eax,%edx
 8051a30:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8051a33:	01 c2                	add    %eax,%edx
 8051a35:	a1 38 81 05 08       	mov    0x8058138,%eax
 8051a3a:	d1 f8                	sar    %eax
 8051a3c:	01 d0                	add    %edx,%eax
 8051a3e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8051a41:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051a46:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051a4c:	c1 e2 02             	shl    $0x2,%edx
 8051a4f:	01 d0                	add    %edx,%eax
 8051a51:	8b 18                	mov    (%eax),%ebx
 8051a53:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8051a56:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051a5b:	8b 0d 28 81 05 08    	mov    0x8058128,%ecx
 8051a61:	c1 e1 02             	shl    $0x2,%ecx
 8051a64:	01 c8                	add    %ecx,%eax
 8051a66:	8b 00                	mov    (%eax),%eax
 8051a68:	8b 40 04             	mov    0x4(%eax),%eax
 8051a6b:	83 ec 08             	sub    $0x8,%esp
 8051a6e:	52                   	push   %edx
 8051a6f:	50                   	push   %eax
 8051a70:	e8 ad 0e 00 00       	call   8052922 <yyrealloc>
 8051a75:	83 c4 10             	add    $0x10,%esp
 8051a78:	89 43 04             	mov    %eax,0x4(%ebx)
 8051a7b:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051a80:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051a86:	c1 e2 02             	shl    $0x2,%edx
 8051a89:	01 d0                	add    %edx,%eax
 8051a8b:	8b 00                	mov    (%eax),%eax
 8051a8d:	8b 40 04             	mov    0x4(%eax),%eax
 8051a90:	85 c0                	test   %eax,%eax
 8051a92:	75 0d                	jne    8051aa1 <yy_get_next_buffer+0x4c8>
 8051a94:	83 ec 0c             	sub    $0xc,%esp
 8051a97:	68 b0 52 05 08       	push   $0x80552b0
 8051a9c:	e8 d3 0c 00 00       	call   8052774 <yy_fatal_error>
 8051aa1:	a1 38 81 05 08       	mov    0x8058138,%eax
 8051aa6:	89 c2                	mov    %eax,%edx
 8051aa8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8051aab:	01 d0                	add    %edx,%eax
 8051aad:	a3 38 81 05 08       	mov    %eax,0x8058138
 8051ab2:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051ab7:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051abd:	c1 e2 02             	shl    $0x2,%edx
 8051ac0:	01 d0                	add    %edx,%eax
 8051ac2:	8b 00                	mov    (%eax),%eax
 8051ac4:	8b 40 04             	mov    0x4(%eax),%eax
 8051ac7:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 8051acd:	01 d0                	add    %edx,%eax
 8051acf:	c6 00 00             	movb   $0x0,(%eax)
 8051ad2:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051ad7:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051add:	c1 e2 02             	shl    $0x2,%edx
 8051ae0:	01 d0                	add    %edx,%eax
 8051ae2:	8b 00                	mov    (%eax),%eax
 8051ae4:	8b 40 04             	mov    0x4(%eax),%eax
 8051ae7:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 8051aed:	83 c2 01             	add    $0x1,%edx
 8051af0:	01 d0                	add    %edx,%eax
 8051af2:	c6 00 00             	movb   $0x0,(%eax)
 8051af5:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051afa:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051b00:	c1 e2 02             	shl    $0x2,%edx
 8051b03:	01 d0                	add    %edx,%eax
 8051b05:	8b 00                	mov    (%eax),%eax
 8051b07:	8b 40 04             	mov    0x4(%eax),%eax
 8051b0a:	a3 5c 81 05 08       	mov    %eax,0x805815c
 8051b0f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8051b12:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8051b15:	c9                   	leave  
 8051b16:	c3                   	ret    

08051b17 <yy_get_previous_state>:
 8051b17:	55                   	push   %ebp
 8051b18:	89 e5                	mov    %esp,%ebp
 8051b1a:	83 ec 10             	sub    $0x10,%esp
 8051b1d:	a1 44 81 05 08       	mov    0x8058144,%eax
 8051b22:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8051b25:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8051b2a:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8051b2d:	e9 b1 00 00 00       	jmp    8051be3 <yy_get_previous_state+0xcc>
 8051b32:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8051b35:	0f b6 00             	movzbl (%eax),%eax
 8051b38:	84 c0                	test   %al,%al
 8051b3a:	74 12                	je     8051b4e <yy_get_previous_state+0x37>
 8051b3c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8051b3f:	0f b6 00             	movzbl (%eax),%eax
 8051b42:	0f b6 c0             	movzbl %al,%eax
 8051b45:	0f b6 80 40 49 05 08 	movzbl 0x8054940(%eax),%eax
 8051b4c:	eb 05                	jmp    8051b53 <yy_get_previous_state+0x3c>
 8051b4e:	b8 01 00 00 00       	mov    $0x1,%eax
 8051b53:	88 45 f7             	mov    %al,-0x9(%ebp)
 8051b56:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8051b59:	0f b7 84 00 80 48 05 	movzwl 0x8054880(%eax,%eax,1),%eax
 8051b60:	08 
 8051b61:	66 85 c0             	test   %ax,%ax
 8051b64:	74 35                	je     8051b9b <yy_get_previous_state+0x84>
 8051b66:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8051b69:	a3 4c 81 05 08       	mov    %eax,0x805814c
 8051b6e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8051b71:	a3 50 81 05 08       	mov    %eax,0x8058150
 8051b76:	eb 23                	jmp    8051b9b <yy_get_previous_state+0x84>
 8051b78:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8051b7b:	0f b7 84 00 40 4b 05 	movzwl 0x8054b40(%eax,%eax,1),%eax
 8051b82:	08 
 8051b83:	98                   	cwtl   
 8051b84:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8051b87:	83 7d f8 51          	cmpl   $0x51,-0x8(%ebp)
 8051b8b:	7e 0e                	jle    8051b9b <yy_get_previous_state+0x84>
 8051b8d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8051b91:	0f b6 80 40 4a 05 08 	movzbl 0x8054a40(%eax),%eax
 8051b98:	88 45 f7             	mov    %al,-0x9(%ebp)
 8051b9b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8051b9e:	0f b7 84 00 80 4a 05 	movzwl 0x8054a80(%eax,%eax,1),%eax
 8051ba5:	08 
 8051ba6:	0f b7 d0             	movzwl %ax,%edx
 8051ba9:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8051bad:	01 d0                	add    %edx,%eax
 8051baf:	0f b7 84 00 c0 4d 05 	movzwl 0x8054dc0(%eax,%eax,1),%eax
 8051bb6:	08 
 8051bb7:	98                   	cwtl   
 8051bb8:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 8051bbb:	75 bb                	jne    8051b78 <yy_get_previous_state+0x61>
 8051bbd:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8051bc0:	0f b7 84 00 80 4a 05 	movzwl 0x8054a80(%eax,%eax,1),%eax
 8051bc7:	08 
 8051bc8:	0f b7 d0             	movzwl %ax,%edx
 8051bcb:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8051bcf:	01 d0                	add    %edx,%eax
 8051bd1:	0f b7 84 00 00 4c 05 	movzwl 0x8054c00(%eax,%eax,1),%eax
 8051bd8:	08 
 8051bd9:	0f b7 c0             	movzwl %ax,%eax
 8051bdc:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8051bdf:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8051be3:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051be8:	39 45 fc             	cmp    %eax,-0x4(%ebp)
 8051beb:	0f 82 41 ff ff ff    	jb     8051b32 <yy_get_previous_state+0x1b>
 8051bf1:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8051bf4:	c9                   	leave  
 8051bf5:	c3                   	ret    

08051bf6 <yy_try_NUL_trans>:
 8051bf6:	55                   	push   %ebp
 8051bf7:	89 e5                	mov    %esp,%ebp
 8051bf9:	83 ec 10             	sub    $0x10,%esp
 8051bfc:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051c01:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8051c04:	c6 45 f7 01          	movb   $0x1,-0x9(%ebp)
 8051c08:	8b 45 08             	mov    0x8(%ebp),%eax
 8051c0b:	0f b7 84 00 80 48 05 	movzwl 0x8054880(%eax,%eax,1),%eax
 8051c12:	08 
 8051c13:	66 85 c0             	test   %ax,%ax
 8051c16:	74 35                	je     8051c4d <yy_try_NUL_trans+0x57>
 8051c18:	8b 45 08             	mov    0x8(%ebp),%eax
 8051c1b:	a3 4c 81 05 08       	mov    %eax,0x805814c
 8051c20:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8051c23:	a3 50 81 05 08       	mov    %eax,0x8058150
 8051c28:	eb 23                	jmp    8051c4d <yy_try_NUL_trans+0x57>
 8051c2a:	8b 45 08             	mov    0x8(%ebp),%eax
 8051c2d:	0f b7 84 00 40 4b 05 	movzwl 0x8054b40(%eax,%eax,1),%eax
 8051c34:	08 
 8051c35:	98                   	cwtl   
 8051c36:	89 45 08             	mov    %eax,0x8(%ebp)
 8051c39:	83 7d 08 51          	cmpl   $0x51,0x8(%ebp)
 8051c3d:	7e 0e                	jle    8051c4d <yy_try_NUL_trans+0x57>
 8051c3f:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8051c43:	0f b6 80 40 4a 05 08 	movzbl 0x8054a40(%eax),%eax
 8051c4a:	88 45 f7             	mov    %al,-0x9(%ebp)
 8051c4d:	8b 45 08             	mov    0x8(%ebp),%eax
 8051c50:	0f b7 84 00 80 4a 05 	movzwl 0x8054a80(%eax,%eax,1),%eax
 8051c57:	08 
 8051c58:	0f b7 d0             	movzwl %ax,%edx
 8051c5b:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8051c5f:	01 d0                	add    %edx,%eax
 8051c61:	0f b7 84 00 c0 4d 05 	movzwl 0x8054dc0(%eax,%eax,1),%eax
 8051c68:	08 
 8051c69:	98                   	cwtl   
 8051c6a:	3b 45 08             	cmp    0x8(%ebp),%eax
 8051c6d:	75 bb                	jne    8051c2a <yy_try_NUL_trans+0x34>
 8051c6f:	8b 45 08             	mov    0x8(%ebp),%eax
 8051c72:	0f b7 84 00 80 4a 05 	movzwl 0x8054a80(%eax,%eax,1),%eax
 8051c79:	08 
 8051c7a:	0f b7 d0             	movzwl %ax,%edx
 8051c7d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8051c81:	01 d0                	add    %edx,%eax
 8051c83:	0f b7 84 00 00 4c 05 	movzwl 0x8054c00(%eax,%eax,1),%eax
 8051c8a:	08 
 8051c8b:	0f b7 c0             	movzwl %ax,%eax
 8051c8e:	89 45 08             	mov    %eax,0x8(%ebp)
 8051c91:	83 7d 08 51          	cmpl   $0x51,0x8(%ebp)
 8051c95:	0f 94 c0             	sete   %al
 8051c98:	0f b6 c0             	movzbl %al,%eax
 8051c9b:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8051c9e:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8051ca2:	75 05                	jne    8051ca9 <yy_try_NUL_trans+0xb3>
 8051ca4:	8b 45 08             	mov    0x8(%ebp),%eax
 8051ca7:	eb 05                	jmp    8051cae <yy_try_NUL_trans+0xb8>
 8051ca9:	b8 00 00 00 00       	mov    $0x0,%eax
 8051cae:	c9                   	leave  
 8051caf:	c3                   	ret    

08051cb0 <yyunput>:
 8051cb0:	55                   	push   %ebp
 8051cb1:	89 e5                	mov    %esp,%ebp
 8051cb3:	83 ec 18             	sub    $0x18,%esp
 8051cb6:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051cbb:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8051cbe:	0f b6 15 34 81 05 08 	movzbl 0x8058134,%edx
 8051cc5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051cc8:	88 10                	mov    %dl,(%eax)
 8051cca:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051ccf:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051cd5:	c1 e2 02             	shl    $0x2,%edx
 8051cd8:	01 d0                	add    %edx,%eax
 8051cda:	8b 00                	mov    (%eax),%eax
 8051cdc:	8b 40 04             	mov    0x4(%eax),%eax
 8051cdf:	83 c0 02             	add    $0x2,%eax
 8051ce2:	3b 45 e8             	cmp    -0x18(%ebp),%eax
 8051ce5:	0f 86 04 01 00 00    	jbe    8051def <yyunput+0x13f>
 8051ceb:	a1 38 81 05 08       	mov    0x8058138,%eax
 8051cf0:	83 c0 02             	add    $0x2,%eax
 8051cf3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8051cf6:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051cfb:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051d01:	c1 e2 02             	shl    $0x2,%edx
 8051d04:	01 d0                	add    %edx,%eax
 8051d06:	8b 00                	mov    (%eax),%eax
 8051d08:	8b 50 04             	mov    0x4(%eax),%edx
 8051d0b:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051d10:	8b 0d 28 81 05 08    	mov    0x8058128,%ecx
 8051d16:	c1 e1 02             	shl    $0x2,%ecx
 8051d19:	01 c8                	add    %ecx,%eax
 8051d1b:	8b 00                	mov    (%eax),%eax
 8051d1d:	8b 40 0c             	mov    0xc(%eax),%eax
 8051d20:	83 c0 02             	add    $0x2,%eax
 8051d23:	01 d0                	add    %edx,%eax
 8051d25:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8051d28:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051d2d:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051d33:	c1 e2 02             	shl    $0x2,%edx
 8051d36:	01 d0                	add    %edx,%eax
 8051d38:	8b 00                	mov    (%eax),%eax
 8051d3a:	8b 50 04             	mov    0x4(%eax),%edx
 8051d3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8051d40:	01 d0                	add    %edx,%eax
 8051d42:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8051d45:	eb 13                	jmp    8051d5a <yyunput+0xaa>
 8051d47:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 8051d4b:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
 8051d4f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8051d52:	0f b6 10             	movzbl (%eax),%edx
 8051d55:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8051d58:	88 10                	mov    %dl,(%eax)
 8051d5a:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051d5f:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051d65:	c1 e2 02             	shl    $0x2,%edx
 8051d68:	01 d0                	add    %edx,%eax
 8051d6a:	8b 00                	mov    (%eax),%eax
 8051d6c:	8b 40 04             	mov    0x4(%eax),%eax
 8051d6f:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 8051d72:	72 d3                	jb     8051d47 <yyunput+0x97>
 8051d74:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8051d77:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8051d7a:	29 c2                	sub    %eax,%edx
 8051d7c:	89 d0                	mov    %edx,%eax
 8051d7e:	01 45 e8             	add    %eax,-0x18(%ebp)
 8051d81:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8051d84:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8051d87:	29 c2                	sub    %eax,%edx
 8051d89:	89 d0                	mov    %edx,%eax
 8051d8b:	01 45 0c             	add    %eax,0xc(%ebp)
 8051d8e:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051d93:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051d99:	c1 e2 02             	shl    $0x2,%edx
 8051d9c:	01 d0                	add    %edx,%eax
 8051d9e:	8b 00                	mov    (%eax),%eax
 8051da0:	8b 15 30 81 05 08    	mov    0x8058130,%edx
 8051da6:	8b 0d 28 81 05 08    	mov    0x8058128,%ecx
 8051dac:	c1 e1 02             	shl    $0x2,%ecx
 8051daf:	01 ca                	add    %ecx,%edx
 8051db1:	8b 12                	mov    (%edx),%edx
 8051db3:	8b 52 0c             	mov    0xc(%edx),%edx
 8051db6:	89 15 38 81 05 08    	mov    %edx,0x8058138
 8051dbc:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 8051dc2:	89 50 10             	mov    %edx,0x10(%eax)
 8051dc5:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051dca:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051dd0:	c1 e2 02             	shl    $0x2,%edx
 8051dd3:	01 d0                	add    %edx,%eax
 8051dd5:	8b 00                	mov    (%eax),%eax
 8051dd7:	8b 40 04             	mov    0x4(%eax),%eax
 8051dda:	83 c0 02             	add    $0x2,%eax
 8051ddd:	3b 45 e8             	cmp    -0x18(%ebp),%eax
 8051de0:	76 0d                	jbe    8051def <yyunput+0x13f>
 8051de2:	83 ec 0c             	sub    $0xc,%esp
 8051de5:	68 e0 52 05 08       	push   $0x80552e0
 8051dea:	e8 85 09 00 00       	call   8052774 <yy_fatal_error>
 8051def:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
 8051df3:	8b 45 08             	mov    0x8(%ebp),%eax
 8051df6:	89 c2                	mov    %eax,%edx
 8051df8:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051dfb:	88 10                	mov    %dl,(%eax)
 8051dfd:	83 7d 08 0a          	cmpl   $0xa,0x8(%ebp)
 8051e01:	75 0d                	jne    8051e10 <yyunput+0x160>
 8051e03:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8051e08:	83 e8 01             	sub    $0x1,%eax
 8051e0b:	a3 bc 80 05 08       	mov    %eax,0x80580bc
 8051e10:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051e13:	a3 5c 81 05 08       	mov    %eax,0x805815c
 8051e18:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051e1b:	0f b6 00             	movzbl (%eax),%eax
 8051e1e:	a2 34 81 05 08       	mov    %al,0x8058134
 8051e23:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8051e26:	a3 3c 81 05 08       	mov    %eax,0x805813c
 8051e2b:	90                   	nop
 8051e2c:	c9                   	leave  
 8051e2d:	c3                   	ret    

08051e2e <input>:
 8051e2e:	55                   	push   %ebp
 8051e2f:	89 e5                	mov    %esp,%ebp
 8051e31:	83 ec 18             	sub    $0x18,%esp
 8051e34:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051e39:	0f b6 15 34 81 05 08 	movzbl 0x8058134,%edx
 8051e40:	88 10                	mov    %dl,(%eax)
 8051e42:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051e47:	0f b6 00             	movzbl (%eax),%eax
 8051e4a:	84 c0                	test   %al,%al
 8051e4c:	0f 85 bb 00 00 00    	jne    8051f0d <input+0xdf>
 8051e52:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051e57:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051e5d:	c1 e2 02             	shl    $0x2,%edx
 8051e60:	01 d0                	add    %edx,%eax
 8051e62:	8b 00                	mov    (%eax),%eax
 8051e64:	8b 40 04             	mov    0x4(%eax),%eax
 8051e67:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 8051e6d:	01 c2                	add    %eax,%edx
 8051e6f:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051e74:	39 c2                	cmp    %eax,%edx
 8051e76:	76 0d                	jbe    8051e85 <input+0x57>
 8051e78:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051e7d:	c6 00 00             	movb   $0x0,(%eax)
 8051e80:	e9 88 00 00 00       	jmp    8051f0d <input+0xdf>
 8051e85:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051e8a:	89 c2                	mov    %eax,%edx
 8051e8c:	a1 5c 81 05 08       	mov    0x805815c,%eax
 8051e91:	29 c2                	sub    %eax,%edx
 8051e93:	89 d0                	mov    %edx,%eax
 8051e95:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8051e98:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051e9d:	83 c0 01             	add    $0x1,%eax
 8051ea0:	a3 3c 81 05 08       	mov    %eax,0x805813c
 8051ea5:	e8 2f f7 ff ff       	call   80515d9 <yy_get_next_buffer>
 8051eaa:	83 f8 01             	cmp    $0x1,%eax
 8051ead:	74 1c                	je     8051ecb <input+0x9d>
 8051eaf:	83 f8 02             	cmp    $0x2,%eax
 8051eb2:	74 06                	je     8051eba <input+0x8c>
 8051eb4:	85 c0                	test   %eax,%eax
 8051eb6:	74 44                	je     8051efc <input+0xce>
 8051eb8:	eb 53                	jmp    8051f0d <input+0xdf>
 8051eba:	a1 14 81 05 08       	mov    0x8058114,%eax
 8051ebf:	83 ec 0c             	sub    $0xc,%esp
 8051ec2:	50                   	push   %eax
 8051ec3:	e8 8d 00 00 00       	call   8051f55 <yyrestart>
 8051ec8:	83 c4 10             	add    $0x10,%esp
 8051ecb:	e8 00 16 00 00       	call   80534d0 <yywrap>
 8051ed0:	85 c0                	test   %eax,%eax
 8051ed2:	74 07                	je     8051edb <input+0xad>
 8051ed4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8051ed9:	eb 78                	jmp    8051f53 <input+0x125>
 8051edb:	a1 48 81 05 08       	mov    0x8058148,%eax
 8051ee0:	85 c0                	test   %eax,%eax
 8051ee2:	75 11                	jne    8051ef5 <input+0xc7>
 8051ee4:	a1 14 81 05 08       	mov    0x8058114,%eax
 8051ee9:	83 ec 0c             	sub    $0xc,%esp
 8051eec:	50                   	push   %eax
 8051eed:	e8 63 00 00 00       	call   8051f55 <yyrestart>
 8051ef2:	83 c4 10             	add    $0x10,%esp
 8051ef5:	e8 34 ff ff ff       	call   8051e2e <input>
 8051efa:	eb 57                	jmp    8051f53 <input+0x125>
 8051efc:	8b 15 5c 81 05 08    	mov    0x805815c,%edx
 8051f02:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8051f05:	01 d0                	add    %edx,%eax
 8051f07:	a3 3c 81 05 08       	mov    %eax,0x805813c
 8051f0c:	90                   	nop
 8051f0d:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051f12:	0f b6 00             	movzbl (%eax),%eax
 8051f15:	0f b6 c0             	movzbl %al,%eax
 8051f18:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8051f1b:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051f20:	c6 00 00             	movb   $0x0,(%eax)
 8051f23:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051f28:	83 c0 01             	add    $0x1,%eax
 8051f2b:	a3 3c 81 05 08       	mov    %eax,0x805813c
 8051f30:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8051f35:	0f b6 00             	movzbl (%eax),%eax
 8051f38:	a2 34 81 05 08       	mov    %al,0x8058134
 8051f3d:	83 7d f4 0a          	cmpl   $0xa,-0xc(%ebp)
 8051f41:	75 0d                	jne    8051f50 <input+0x122>
 8051f43:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 8051f48:	83 c0 01             	add    $0x1,%eax
 8051f4b:	a3 bc 80 05 08       	mov    %eax,0x80580bc
 8051f50:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8051f53:	c9                   	leave  
 8051f54:	c3                   	ret    

08051f55 <yyrestart>:
 8051f55:	55                   	push   %ebp
 8051f56:	89 e5                	mov    %esp,%ebp
 8051f58:	53                   	push   %ebx
 8051f59:	83 ec 04             	sub    $0x4,%esp
 8051f5c:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051f61:	85 c0                	test   %eax,%eax
 8051f63:	74 16                	je     8051f7b <yyrestart+0x26>
 8051f65:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051f6a:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051f70:	c1 e2 02             	shl    $0x2,%edx
 8051f73:	01 d0                	add    %edx,%eax
 8051f75:	8b 00                	mov    (%eax),%eax
 8051f77:	85 c0                	test   %eax,%eax
 8051f79:	75 2e                	jne    8051fa9 <yyrestart+0x54>
 8051f7b:	e8 3f 05 00 00       	call   80524bf <yyensure_buffer_stack>
 8051f80:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051f85:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051f8b:	c1 e2 02             	shl    $0x2,%edx
 8051f8e:	8d 1c 10             	lea    (%eax,%edx,1),%ebx
 8051f91:	a1 14 81 05 08       	mov    0x8058114,%eax
 8051f96:	83 ec 08             	sub    $0x8,%esp
 8051f99:	68 00 40 00 00       	push   $0x4000
 8051f9e:	50                   	push   %eax
 8051f9f:	e8 6d 01 00 00       	call   8052111 <yy_create_buffer>
 8051fa4:	83 c4 10             	add    $0x10,%esp
 8051fa7:	89 03                	mov    %eax,(%ebx)
 8051fa9:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051fae:	85 c0                	test   %eax,%eax
 8051fb0:	74 14                	je     8051fc6 <yyrestart+0x71>
 8051fb2:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051fb7:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8051fbd:	c1 e2 02             	shl    $0x2,%edx
 8051fc0:	01 d0                	add    %edx,%eax
 8051fc2:	8b 00                	mov    (%eax),%eax
 8051fc4:	eb 05                	jmp    8051fcb <yyrestart+0x76>
 8051fc6:	b8 00 00 00 00       	mov    $0x0,%eax
 8051fcb:	83 ec 08             	sub    $0x8,%esp
 8051fce:	ff 75 08             	pushl  0x8(%ebp)
 8051fd1:	50                   	push   %eax
 8051fd2:	e8 38 02 00 00       	call   805220f <yy_init_buffer>
 8051fd7:	83 c4 10             	add    $0x10,%esp
 8051fda:	e8 c8 00 00 00       	call   80520a7 <yy_load_buffer_state>
 8051fdf:	90                   	nop
 8051fe0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8051fe3:	c9                   	leave  
 8051fe4:	c3                   	ret    

08051fe5 <yy_switch_to_buffer>:
 8051fe5:	55                   	push   %ebp
 8051fe6:	89 e5                	mov    %esp,%ebp
 8051fe8:	83 ec 08             	sub    $0x8,%esp
 8051feb:	e8 cf 04 00 00       	call   80524bf <yyensure_buffer_stack>
 8051ff0:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051ff5:	85 c0                	test   %eax,%eax
 8051ff7:	74 14                	je     805200d <yy_switch_to_buffer+0x28>
 8051ff9:	a1 30 81 05 08       	mov    0x8058130,%eax
 8051ffe:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8052004:	c1 e2 02             	shl    $0x2,%edx
 8052007:	01 d0                	add    %edx,%eax
 8052009:	8b 00                	mov    (%eax),%eax
 805200b:	eb 05                	jmp    8052012 <yy_switch_to_buffer+0x2d>
 805200d:	b8 00 00 00 00       	mov    $0x0,%eax
 8052012:	3b 45 08             	cmp    0x8(%ebp),%eax
 8052015:	0f 84 89 00 00 00    	je     80520a4 <yy_switch_to_buffer+0xbf>
 805201b:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052020:	85 c0                	test   %eax,%eax
 8052022:	74 5a                	je     805207e <yy_switch_to_buffer+0x99>
 8052024:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052029:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 805202f:	c1 e2 02             	shl    $0x2,%edx
 8052032:	01 d0                	add    %edx,%eax
 8052034:	8b 00                	mov    (%eax),%eax
 8052036:	85 c0                	test   %eax,%eax
 8052038:	74 44                	je     805207e <yy_switch_to_buffer+0x99>
 805203a:	a1 3c 81 05 08       	mov    0x805813c,%eax
 805203f:	0f b6 15 34 81 05 08 	movzbl 0x8058134,%edx
 8052046:	88 10                	mov    %dl,(%eax)
 8052048:	a1 30 81 05 08       	mov    0x8058130,%eax
 805204d:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8052053:	c1 e2 02             	shl    $0x2,%edx
 8052056:	01 d0                	add    %edx,%eax
 8052058:	8b 00                	mov    (%eax),%eax
 805205a:	8b 15 3c 81 05 08    	mov    0x805813c,%edx
 8052060:	89 50 08             	mov    %edx,0x8(%eax)
 8052063:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052068:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 805206e:	c1 e2 02             	shl    $0x2,%edx
 8052071:	01 d0                	add    %edx,%eax
 8052073:	8b 00                	mov    (%eax),%eax
 8052075:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 805207b:	89 50 10             	mov    %edx,0x10(%eax)
 805207e:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052083:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8052089:	c1 e2 02             	shl    $0x2,%edx
 805208c:	01 c2                	add    %eax,%edx
 805208e:	8b 45 08             	mov    0x8(%ebp),%eax
 8052091:	89 02                	mov    %eax,(%edx)
 8052093:	e8 0f 00 00 00       	call   80520a7 <yy_load_buffer_state>
 8052098:	c7 05 48 81 05 08 01 	movl   $0x1,0x8058148
 805209f:	00 00 00 
 80520a2:	eb 01                	jmp    80520a5 <yy_switch_to_buffer+0xc0>
 80520a4:	90                   	nop
 80520a5:	c9                   	leave  
 80520a6:	c3                   	ret    

080520a7 <yy_load_buffer_state>:
 80520a7:	55                   	push   %ebp
 80520a8:	89 e5                	mov    %esp,%ebp
 80520aa:	a1 30 81 05 08       	mov    0x8058130,%eax
 80520af:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80520b5:	c1 e2 02             	shl    $0x2,%edx
 80520b8:	01 d0                	add    %edx,%eax
 80520ba:	8b 00                	mov    (%eax),%eax
 80520bc:	8b 40 10             	mov    0x10(%eax),%eax
 80520bf:	a3 38 81 05 08       	mov    %eax,0x8058138
 80520c4:	a1 30 81 05 08       	mov    0x8058130,%eax
 80520c9:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80520cf:	c1 e2 02             	shl    $0x2,%edx
 80520d2:	01 d0                	add    %edx,%eax
 80520d4:	8b 00                	mov    (%eax),%eax
 80520d6:	8b 40 08             	mov    0x8(%eax),%eax
 80520d9:	a3 3c 81 05 08       	mov    %eax,0x805813c
 80520de:	a1 3c 81 05 08       	mov    0x805813c,%eax
 80520e3:	a3 5c 81 05 08       	mov    %eax,0x805815c
 80520e8:	a1 30 81 05 08       	mov    0x8058130,%eax
 80520ed:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80520f3:	c1 e2 02             	shl    $0x2,%edx
 80520f6:	01 d0                	add    %edx,%eax
 80520f8:	8b 00                	mov    (%eax),%eax
 80520fa:	8b 00                	mov    (%eax),%eax
 80520fc:	a3 14 81 05 08       	mov    %eax,0x8058114
 8052101:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8052106:	0f b6 00             	movzbl (%eax),%eax
 8052109:	a2 34 81 05 08       	mov    %al,0x8058134
 805210e:	90                   	nop
 805210f:	5d                   	pop    %ebp
 8052110:	c3                   	ret    

08052111 <yy_create_buffer>:
 8052111:	55                   	push   %ebp
 8052112:	89 e5                	mov    %esp,%ebp
 8052114:	83 ec 18             	sub    $0x18,%esp
 8052117:	83 ec 0c             	sub    $0xc,%esp
 805211a:	6a 30                	push   $0x30
 805211c:	e8 eb 07 00 00       	call   805290c <yyalloc>
 8052121:	83 c4 10             	add    $0x10,%esp
 8052124:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052127:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 805212b:	75 0d                	jne    805213a <yy_create_buffer+0x29>
 805212d:	83 ec 0c             	sub    $0xc,%esp
 8052130:	68 00 53 05 08       	push   $0x8055300
 8052135:	e8 3a 06 00 00       	call   8052774 <yy_fatal_error>
 805213a:	8b 55 0c             	mov    0xc(%ebp),%edx
 805213d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052140:	89 50 0c             	mov    %edx,0xc(%eax)
 8052143:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052146:	8b 40 0c             	mov    0xc(%eax),%eax
 8052149:	83 c0 02             	add    $0x2,%eax
 805214c:	83 ec 0c             	sub    $0xc,%esp
 805214f:	50                   	push   %eax
 8052150:	e8 b7 07 00 00       	call   805290c <yyalloc>
 8052155:	83 c4 10             	add    $0x10,%esp
 8052158:	89 c2                	mov    %eax,%edx
 805215a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805215d:	89 50 04             	mov    %edx,0x4(%eax)
 8052160:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052163:	8b 40 04             	mov    0x4(%eax),%eax
 8052166:	85 c0                	test   %eax,%eax
 8052168:	75 0d                	jne    8052177 <yy_create_buffer+0x66>
 805216a:	83 ec 0c             	sub    $0xc,%esp
 805216d:	68 00 53 05 08       	push   $0x8055300
 8052172:	e8 fd 05 00 00       	call   8052774 <yy_fatal_error>
 8052177:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805217a:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
 8052181:	83 ec 08             	sub    $0x8,%esp
 8052184:	ff 75 08             	pushl  0x8(%ebp)
 8052187:	ff 75 f4             	pushl  -0xc(%ebp)
 805218a:	e8 80 00 00 00       	call   805220f <yy_init_buffer>
 805218f:	83 c4 10             	add    $0x10,%esp
 8052192:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052195:	c9                   	leave  
 8052196:	c3                   	ret    

08052197 <yy_delete_buffer>:
 8052197:	55                   	push   %ebp
 8052198:	89 e5                	mov    %esp,%ebp
 805219a:	83 ec 08             	sub    $0x8,%esp
 805219d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80521a1:	74 69                	je     805220c <yy_delete_buffer+0x75>
 80521a3:	a1 30 81 05 08       	mov    0x8058130,%eax
 80521a8:	85 c0                	test   %eax,%eax
 80521aa:	74 14                	je     80521c0 <yy_delete_buffer+0x29>
 80521ac:	a1 30 81 05 08       	mov    0x8058130,%eax
 80521b1:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80521b7:	c1 e2 02             	shl    $0x2,%edx
 80521ba:	01 d0                	add    %edx,%eax
 80521bc:	8b 00                	mov    (%eax),%eax
 80521be:	eb 05                	jmp    80521c5 <yy_delete_buffer+0x2e>
 80521c0:	b8 00 00 00 00       	mov    $0x0,%eax
 80521c5:	3b 45 08             	cmp    0x8(%ebp),%eax
 80521c8:	75 16                	jne    80521e0 <yy_delete_buffer+0x49>
 80521ca:	a1 30 81 05 08       	mov    0x8058130,%eax
 80521cf:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80521d5:	c1 e2 02             	shl    $0x2,%edx
 80521d8:	01 d0                	add    %edx,%eax
 80521da:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80521e0:	8b 45 08             	mov    0x8(%ebp),%eax
 80521e3:	8b 40 14             	mov    0x14(%eax),%eax
 80521e6:	85 c0                	test   %eax,%eax
 80521e8:	74 12                	je     80521fc <yy_delete_buffer+0x65>
 80521ea:	8b 45 08             	mov    0x8(%ebp),%eax
 80521ed:	8b 40 04             	mov    0x4(%eax),%eax
 80521f0:	83 ec 0c             	sub    $0xc,%esp
 80521f3:	50                   	push   %eax
 80521f4:	e8 42 07 00 00       	call   805293b <yyfree>
 80521f9:	83 c4 10             	add    $0x10,%esp
 80521fc:	83 ec 0c             	sub    $0xc,%esp
 80521ff:	ff 75 08             	pushl  0x8(%ebp)
 8052202:	e8 34 07 00 00       	call   805293b <yyfree>
 8052207:	83 c4 10             	add    $0x10,%esp
 805220a:	eb 01                	jmp    805220d <yy_delete_buffer+0x76>
 805220c:	90                   	nop
 805220d:	c9                   	leave  
 805220e:	c3                   	ret    

0805220f <yy_init_buffer>:
 805220f:	55                   	push   %ebp
 8052210:	89 e5                	mov    %esp,%ebp
 8052212:	83 ec 18             	sub    $0x18,%esp
 8052215:	e8 06 67 ff ff       	call   8048920 <__errno_location@plt>
 805221a:	8b 00                	mov    (%eax),%eax
 805221c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805221f:	83 ec 0c             	sub    $0xc,%esp
 8052222:	ff 75 08             	pushl  0x8(%ebp)
 8052225:	e8 95 00 00 00       	call   80522bf <yy_flush_buffer>
 805222a:	83 c4 10             	add    $0x10,%esp
 805222d:	8b 45 08             	mov    0x8(%ebp),%eax
 8052230:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052233:	89 10                	mov    %edx,(%eax)
 8052235:	8b 45 08             	mov    0x8(%ebp),%eax
 8052238:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
 805223f:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052244:	85 c0                	test   %eax,%eax
 8052246:	74 14                	je     805225c <yy_init_buffer+0x4d>
 8052248:	a1 30 81 05 08       	mov    0x8058130,%eax
 805224d:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8052253:	c1 e2 02             	shl    $0x2,%edx
 8052256:	01 d0                	add    %edx,%eax
 8052258:	8b 00                	mov    (%eax),%eax
 805225a:	eb 05                	jmp    8052261 <yy_init_buffer+0x52>
 805225c:	b8 00 00 00 00       	mov    $0x0,%eax
 8052261:	3b 45 08             	cmp    0x8(%ebp),%eax
 8052264:	74 14                	je     805227a <yy_init_buffer+0x6b>
 8052266:	8b 45 08             	mov    0x8(%ebp),%eax
 8052269:	c7 40 20 01 00 00 00 	movl   $0x1,0x20(%eax)
 8052270:	8b 45 08             	mov    0x8(%ebp),%eax
 8052273:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
 805227a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 805227e:	74 25                	je     80522a5 <yy_init_buffer+0x96>
 8052280:	83 ec 0c             	sub    $0xc,%esp
 8052283:	ff 75 0c             	pushl  0xc(%ebp)
 8052286:	e8 b5 66 ff ff       	call   8048940 <fileno@plt>
 805228b:	83 c4 10             	add    $0x10,%esp
 805228e:	83 ec 0c             	sub    $0xc,%esp
 8052291:	50                   	push   %eax
 8052292:	e8 f9 66 ff ff       	call   8048990 <isatty@plt>
 8052297:	83 c4 10             	add    $0x10,%esp
 805229a:	85 c0                	test   %eax,%eax
 805229c:	7e 07                	jle    80522a5 <yy_init_buffer+0x96>
 805229e:	ba 01 00 00 00       	mov    $0x1,%edx
 80522a3:	eb 05                	jmp    80522aa <yy_init_buffer+0x9b>
 80522a5:	ba 00 00 00 00       	mov    $0x0,%edx
 80522aa:	8b 45 08             	mov    0x8(%ebp),%eax
 80522ad:	89 50 18             	mov    %edx,0x18(%eax)
 80522b0:	e8 6b 66 ff ff       	call   8048920 <__errno_location@plt>
 80522b5:	89 c2                	mov    %eax,%edx
 80522b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80522ba:	89 02                	mov    %eax,(%edx)
 80522bc:	90                   	nop
 80522bd:	c9                   	leave  
 80522be:	c3                   	ret    

080522bf <yy_flush_buffer>:
 80522bf:	55                   	push   %ebp
 80522c0:	89 e5                	mov    %esp,%ebp
 80522c2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80522c6:	74 6d                	je     8052335 <yy_flush_buffer+0x76>
 80522c8:	8b 45 08             	mov    0x8(%ebp),%eax
 80522cb:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 80522d2:	8b 45 08             	mov    0x8(%ebp),%eax
 80522d5:	8b 40 04             	mov    0x4(%eax),%eax
 80522d8:	c6 00 00             	movb   $0x0,(%eax)
 80522db:	8b 45 08             	mov    0x8(%ebp),%eax
 80522de:	8b 40 04             	mov    0x4(%eax),%eax
 80522e1:	83 c0 01             	add    $0x1,%eax
 80522e4:	c6 00 00             	movb   $0x0,(%eax)
 80522e7:	8b 45 08             	mov    0x8(%ebp),%eax
 80522ea:	8b 50 04             	mov    0x4(%eax),%edx
 80522ed:	8b 45 08             	mov    0x8(%ebp),%eax
 80522f0:	89 50 08             	mov    %edx,0x8(%eax)
 80522f3:	8b 45 08             	mov    0x8(%ebp),%eax
 80522f6:	c7 40 1c 01 00 00 00 	movl   $0x1,0x1c(%eax)
 80522fd:	8b 45 08             	mov    0x8(%ebp),%eax
 8052300:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
 8052307:	a1 30 81 05 08       	mov    0x8058130,%eax
 805230c:	85 c0                	test   %eax,%eax
 805230e:	74 14                	je     8052324 <yy_flush_buffer+0x65>
 8052310:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052315:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 805231b:	c1 e2 02             	shl    $0x2,%edx
 805231e:	01 d0                	add    %edx,%eax
 8052320:	8b 00                	mov    (%eax),%eax
 8052322:	eb 05                	jmp    8052329 <yy_flush_buffer+0x6a>
 8052324:	b8 00 00 00 00       	mov    $0x0,%eax
 8052329:	3b 45 08             	cmp    0x8(%ebp),%eax
 805232c:	75 08                	jne    8052336 <yy_flush_buffer+0x77>
 805232e:	e8 74 fd ff ff       	call   80520a7 <yy_load_buffer_state>
 8052333:	eb 01                	jmp    8052336 <yy_flush_buffer+0x77>
 8052335:	90                   	nop
 8052336:	5d                   	pop    %ebp
 8052337:	c3                   	ret    

08052338 <yypush_buffer_state>:
 8052338:	55                   	push   %ebp
 8052339:	89 e5                	mov    %esp,%ebp
 805233b:	83 ec 08             	sub    $0x8,%esp
 805233e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8052342:	0f 84 ba 00 00 00    	je     8052402 <yypush_buffer_state+0xca>
 8052348:	e8 72 01 00 00       	call   80524bf <yyensure_buffer_stack>
 805234d:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052352:	85 c0                	test   %eax,%eax
 8052354:	74 5a                	je     80523b0 <yypush_buffer_state+0x78>
 8052356:	a1 30 81 05 08       	mov    0x8058130,%eax
 805235b:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8052361:	c1 e2 02             	shl    $0x2,%edx
 8052364:	01 d0                	add    %edx,%eax
 8052366:	8b 00                	mov    (%eax),%eax
 8052368:	85 c0                	test   %eax,%eax
 805236a:	74 44                	je     80523b0 <yypush_buffer_state+0x78>
 805236c:	a1 3c 81 05 08       	mov    0x805813c,%eax
 8052371:	0f b6 15 34 81 05 08 	movzbl 0x8058134,%edx
 8052378:	88 10                	mov    %dl,(%eax)
 805237a:	a1 30 81 05 08       	mov    0x8058130,%eax
 805237f:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8052385:	c1 e2 02             	shl    $0x2,%edx
 8052388:	01 d0                	add    %edx,%eax
 805238a:	8b 00                	mov    (%eax),%eax
 805238c:	8b 15 3c 81 05 08    	mov    0x805813c,%edx
 8052392:	89 50 08             	mov    %edx,0x8(%eax)
 8052395:	a1 30 81 05 08       	mov    0x8058130,%eax
 805239a:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80523a0:	c1 e2 02             	shl    $0x2,%edx
 80523a3:	01 d0                	add    %edx,%eax
 80523a5:	8b 00                	mov    (%eax),%eax
 80523a7:	8b 15 38 81 05 08    	mov    0x8058138,%edx
 80523ad:	89 50 10             	mov    %edx,0x10(%eax)
 80523b0:	a1 30 81 05 08       	mov    0x8058130,%eax
 80523b5:	85 c0                	test   %eax,%eax
 80523b7:	74 23                	je     80523dc <yypush_buffer_state+0xa4>
 80523b9:	a1 30 81 05 08       	mov    0x8058130,%eax
 80523be:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80523c4:	c1 e2 02             	shl    $0x2,%edx
 80523c7:	01 d0                	add    %edx,%eax
 80523c9:	8b 00                	mov    (%eax),%eax
 80523cb:	85 c0                	test   %eax,%eax
 80523cd:	74 0d                	je     80523dc <yypush_buffer_state+0xa4>
 80523cf:	a1 28 81 05 08       	mov    0x8058128,%eax
 80523d4:	83 c0 01             	add    $0x1,%eax
 80523d7:	a3 28 81 05 08       	mov    %eax,0x8058128
 80523dc:	a1 30 81 05 08       	mov    0x8058130,%eax
 80523e1:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80523e7:	c1 e2 02             	shl    $0x2,%edx
 80523ea:	01 c2                	add    %eax,%edx
 80523ec:	8b 45 08             	mov    0x8(%ebp),%eax
 80523ef:	89 02                	mov    %eax,(%edx)
 80523f1:	e8 b1 fc ff ff       	call   80520a7 <yy_load_buffer_state>
 80523f6:	c7 05 48 81 05 08 01 	movl   $0x1,0x8058148
 80523fd:	00 00 00 
 8052400:	eb 01                	jmp    8052403 <yypush_buffer_state+0xcb>
 8052402:	90                   	nop
 8052403:	c9                   	leave  
 8052404:	c3                   	ret    

08052405 <yypop_buffer_state>:
 8052405:	55                   	push   %ebp
 8052406:	89 e5                	mov    %esp,%ebp
 8052408:	83 ec 08             	sub    $0x8,%esp
 805240b:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052410:	85 c0                	test   %eax,%eax
 8052412:	0f 84 a4 00 00 00    	je     80524bc <yypop_buffer_state+0xb7>
 8052418:	a1 30 81 05 08       	mov    0x8058130,%eax
 805241d:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8052423:	c1 e2 02             	shl    $0x2,%edx
 8052426:	01 d0                	add    %edx,%eax
 8052428:	8b 00                	mov    (%eax),%eax
 805242a:	85 c0                	test   %eax,%eax
 805242c:	0f 84 8a 00 00 00    	je     80524bc <yypop_buffer_state+0xb7>
 8052432:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052437:	85 c0                	test   %eax,%eax
 8052439:	74 14                	je     805244f <yypop_buffer_state+0x4a>
 805243b:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052440:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8052446:	c1 e2 02             	shl    $0x2,%edx
 8052449:	01 d0                	add    %edx,%eax
 805244b:	8b 00                	mov    (%eax),%eax
 805244d:	eb 05                	jmp    8052454 <yypop_buffer_state+0x4f>
 805244f:	b8 00 00 00 00       	mov    $0x0,%eax
 8052454:	83 ec 0c             	sub    $0xc,%esp
 8052457:	50                   	push   %eax
 8052458:	e8 3a fd ff ff       	call   8052197 <yy_delete_buffer>
 805245d:	83 c4 10             	add    $0x10,%esp
 8052460:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052465:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 805246b:	c1 e2 02             	shl    $0x2,%edx
 805246e:	01 d0                	add    %edx,%eax
 8052470:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052476:	a1 28 81 05 08       	mov    0x8058128,%eax
 805247b:	85 c0                	test   %eax,%eax
 805247d:	74 0d                	je     805248c <yypop_buffer_state+0x87>
 805247f:	a1 28 81 05 08       	mov    0x8058128,%eax
 8052484:	83 e8 01             	sub    $0x1,%eax
 8052487:	a3 28 81 05 08       	mov    %eax,0x8058128
 805248c:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052491:	85 c0                	test   %eax,%eax
 8052493:	74 28                	je     80524bd <yypop_buffer_state+0xb8>
 8052495:	a1 30 81 05 08       	mov    0x8058130,%eax
 805249a:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80524a0:	c1 e2 02             	shl    $0x2,%edx
 80524a3:	01 d0                	add    %edx,%eax
 80524a5:	8b 00                	mov    (%eax),%eax
 80524a7:	85 c0                	test   %eax,%eax
 80524a9:	74 12                	je     80524bd <yypop_buffer_state+0xb8>
 80524ab:	e8 f7 fb ff ff       	call   80520a7 <yy_load_buffer_state>
 80524b0:	c7 05 48 81 05 08 01 	movl   $0x1,0x8058148
 80524b7:	00 00 00 
 80524ba:	eb 01                	jmp    80524bd <yypop_buffer_state+0xb8>
 80524bc:	90                   	nop
 80524bd:	c9                   	leave  
 80524be:	c3                   	ret    

080524bf <yyensure_buffer_stack>:
 80524bf:	55                   	push   %ebp
 80524c0:	89 e5                	mov    %esp,%ebp
 80524c2:	83 ec 18             	sub    $0x18,%esp
 80524c5:	a1 30 81 05 08       	mov    0x8058130,%eax
 80524ca:	85 c0                	test   %eax,%eax
 80524cc:	75 69                	jne    8052537 <yyensure_buffer_stack+0x78>
 80524ce:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 80524d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80524d8:	c1 e0 02             	shl    $0x2,%eax
 80524db:	83 ec 0c             	sub    $0xc,%esp
 80524de:	50                   	push   %eax
 80524df:	e8 28 04 00 00       	call   805290c <yyalloc>
 80524e4:	83 c4 10             	add    $0x10,%esp
 80524e7:	a3 30 81 05 08       	mov    %eax,0x8058130
 80524ec:	a1 30 81 05 08       	mov    0x8058130,%eax
 80524f1:	85 c0                	test   %eax,%eax
 80524f3:	75 0d                	jne    8052502 <yyensure_buffer_stack+0x43>
 80524f5:	83 ec 0c             	sub    $0xc,%esp
 80524f8:	68 2c 53 05 08       	push   $0x805532c
 80524fd:	e8 72 02 00 00       	call   8052774 <yy_fatal_error>
 8052502:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052505:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 805250c:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052511:	83 ec 04             	sub    $0x4,%esp
 8052514:	52                   	push   %edx
 8052515:	6a 00                	push   $0x0
 8052517:	50                   	push   %eax
 8052518:	e8 e3 63 ff ff       	call   8048900 <memset@plt>
 805251d:	83 c4 10             	add    $0x10,%esp
 8052520:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052523:	a3 2c 81 05 08       	mov    %eax,0x805812c
 8052528:	c7 05 28 81 05 08 00 	movl   $0x0,0x8058128
 805252f:	00 00 00 
 8052532:	e9 8e 00 00 00       	jmp    80525c5 <yyensure_buffer_stack+0x106>
 8052537:	a1 2c 81 05 08       	mov    0x805812c,%eax
 805253c:	8d 50 ff             	lea    -0x1(%eax),%edx
 805253f:	a1 28 81 05 08       	mov    0x8058128,%eax
 8052544:	39 c2                	cmp    %eax,%edx
 8052546:	77 7d                	ja     80525c5 <yyensure_buffer_stack+0x106>
 8052548:	c7 45 f4 08 00 00 00 	movl   $0x8,-0xc(%ebp)
 805254f:	8b 15 2c 81 05 08    	mov    0x805812c,%edx
 8052555:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052558:	01 d0                	add    %edx,%eax
 805255a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 805255d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052560:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8052567:	a1 30 81 05 08       	mov    0x8058130,%eax
 805256c:	83 ec 08             	sub    $0x8,%esp
 805256f:	52                   	push   %edx
 8052570:	50                   	push   %eax
 8052571:	e8 ac 03 00 00       	call   8052922 <yyrealloc>
 8052576:	83 c4 10             	add    $0x10,%esp
 8052579:	a3 30 81 05 08       	mov    %eax,0x8058130
 805257e:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052583:	85 c0                	test   %eax,%eax
 8052585:	75 0d                	jne    8052594 <yyensure_buffer_stack+0xd5>
 8052587:	83 ec 0c             	sub    $0xc,%esp
 805258a:	68 2c 53 05 08       	push   $0x805532c
 805258f:	e8 e0 01 00 00       	call   8052774 <yy_fatal_error>
 8052594:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052597:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 805259e:	a1 30 81 05 08       	mov    0x8058130,%eax
 80525a3:	8b 0d 2c 81 05 08    	mov    0x805812c,%ecx
 80525a9:	c1 e1 02             	shl    $0x2,%ecx
 80525ac:	01 c8                	add    %ecx,%eax
 80525ae:	83 ec 04             	sub    $0x4,%esp
 80525b1:	52                   	push   %edx
 80525b2:	6a 00                	push   $0x0
 80525b4:	50                   	push   %eax
 80525b5:	e8 46 63 ff ff       	call   8048900 <memset@plt>
 80525ba:	83 c4 10             	add    $0x10,%esp
 80525bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80525c0:	a3 2c 81 05 08       	mov    %eax,0x805812c
 80525c5:	c9                   	leave  
 80525c6:	c3                   	ret    

080525c7 <yy_scan_buffer>:
 80525c7:	55                   	push   %ebp
 80525c8:	89 e5                	mov    %esp,%ebp
 80525ca:	83 ec 18             	sub    $0x18,%esp
 80525cd:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
 80525d1:	76 24                	jbe    80525f7 <yy_scan_buffer+0x30>
 80525d3:	8b 45 0c             	mov    0xc(%ebp),%eax
 80525d6:	8d 50 fe             	lea    -0x2(%eax),%edx
 80525d9:	8b 45 08             	mov    0x8(%ebp),%eax
 80525dc:	01 d0                	add    %edx,%eax
 80525de:	0f b6 00             	movzbl (%eax),%eax
 80525e1:	84 c0                	test   %al,%al
 80525e3:	75 12                	jne    80525f7 <yy_scan_buffer+0x30>
 80525e5:	8b 45 0c             	mov    0xc(%ebp),%eax
 80525e8:	8d 50 ff             	lea    -0x1(%eax),%edx
 80525eb:	8b 45 08             	mov    0x8(%ebp),%eax
 80525ee:	01 d0                	add    %edx,%eax
 80525f0:	0f b6 00             	movzbl (%eax),%eax
 80525f3:	84 c0                	test   %al,%al
 80525f5:	74 0a                	je     8052601 <yy_scan_buffer+0x3a>
 80525f7:	b8 00 00 00 00       	mov    $0x0,%eax
 80525fc:	e9 9e 00 00 00       	jmp    805269f <yy_scan_buffer+0xd8>
 8052601:	83 ec 0c             	sub    $0xc,%esp
 8052604:	6a 30                	push   $0x30
 8052606:	e8 01 03 00 00       	call   805290c <yyalloc>
 805260b:	83 c4 10             	add    $0x10,%esp
 805260e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052611:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8052615:	75 0d                	jne    8052624 <yy_scan_buffer+0x5d>
 8052617:	83 ec 0c             	sub    $0xc,%esp
 805261a:	68 60 53 05 08       	push   $0x8055360
 805261f:	e8 50 01 00 00       	call   8052774 <yy_fatal_error>
 8052624:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052627:	8d 50 fe             	lea    -0x2(%eax),%edx
 805262a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805262d:	89 50 0c             	mov    %edx,0xc(%eax)
 8052630:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052633:	8b 55 08             	mov    0x8(%ebp),%edx
 8052636:	89 50 04             	mov    %edx,0x4(%eax)
 8052639:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805263c:	8b 50 04             	mov    0x4(%eax),%edx
 805263f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052642:	89 50 08             	mov    %edx,0x8(%eax)
 8052645:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052648:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 805264f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052652:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052658:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805265b:	8b 40 0c             	mov    0xc(%eax),%eax
 805265e:	89 c2                	mov    %eax,%edx
 8052660:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052663:	89 50 10             	mov    %edx,0x10(%eax)
 8052666:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052669:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
 8052670:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052673:	c7 40 1c 01 00 00 00 	movl   $0x1,0x1c(%eax)
 805267a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805267d:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
 8052684:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052687:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
 805268e:	83 ec 0c             	sub    $0xc,%esp
 8052691:	ff 75 f4             	pushl  -0xc(%ebp)
 8052694:	e8 4c f9 ff ff       	call   8051fe5 <yy_switch_to_buffer>
 8052699:	83 c4 10             	add    $0x10,%esp
 805269c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805269f:	c9                   	leave  
 80526a0:	c3                   	ret    

080526a1 <yy_scan_string>:
 80526a1:	55                   	push   %ebp
 80526a2:	89 e5                	mov    %esp,%ebp
 80526a4:	83 ec 08             	sub    $0x8,%esp
 80526a7:	83 ec 0c             	sub    $0xc,%esp
 80526aa:	ff 75 08             	pushl  0x8(%ebp)
 80526ad:	e8 fe 61 ff ff       	call   80488b0 <strlen@plt>
 80526b2:	83 c4 10             	add    $0x10,%esp
 80526b5:	83 ec 08             	sub    $0x8,%esp
 80526b8:	50                   	push   %eax
 80526b9:	ff 75 08             	pushl  0x8(%ebp)
 80526bc:	e8 05 00 00 00       	call   80526c6 <yy_scan_bytes>
 80526c1:	83 c4 10             	add    $0x10,%esp
 80526c4:	c9                   	leave  
 80526c5:	c3                   	ret    

080526c6 <yy_scan_bytes>:
 80526c6:	55                   	push   %ebp
 80526c7:	89 e5                	mov    %esp,%ebp
 80526c9:	83 ec 18             	sub    $0x18,%esp
 80526cc:	8b 45 0c             	mov    0xc(%ebp),%eax
 80526cf:	83 c0 02             	add    $0x2,%eax
 80526d2:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80526d5:	83 ec 0c             	sub    $0xc,%esp
 80526d8:	ff 75 ec             	pushl  -0x14(%ebp)
 80526db:	e8 2c 02 00 00       	call   805290c <yyalloc>
 80526e0:	83 c4 10             	add    $0x10,%esp
 80526e3:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80526e6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80526ea:	75 0d                	jne    80526f9 <yy_scan_bytes+0x33>
 80526ec:	83 ec 0c             	sub    $0xc,%esp
 80526ef:	68 8c 53 05 08       	push   $0x805538c
 80526f4:	e8 7b 00 00 00       	call   8052774 <yy_fatal_error>
 80526f9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8052700:	eb 19                	jmp    805271b <yy_scan_bytes+0x55>
 8052702:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8052705:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052708:	01 c2                	add    %eax,%edx
 805270a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 805270d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052710:	01 c8                	add    %ecx,%eax
 8052712:	0f b6 00             	movzbl (%eax),%eax
 8052715:	88 02                	mov    %al,(%edx)
 8052717:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 805271b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805271e:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8052721:	72 df                	jb     8052702 <yy_scan_bytes+0x3c>
 8052723:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8052726:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052729:	01 c2                	add    %eax,%edx
 805272b:	8b 45 0c             	mov    0xc(%ebp),%eax
 805272e:	8d 48 01             	lea    0x1(%eax),%ecx
 8052731:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052734:	01 c8                	add    %ecx,%eax
 8052736:	c6 00 00             	movb   $0x0,(%eax)
 8052739:	0f b6 00             	movzbl (%eax),%eax
 805273c:	88 02                	mov    %al,(%edx)
 805273e:	83 ec 08             	sub    $0x8,%esp
 8052741:	ff 75 ec             	pushl  -0x14(%ebp)
 8052744:	ff 75 f0             	pushl  -0x10(%ebp)
 8052747:	e8 7b fe ff ff       	call   80525c7 <yy_scan_buffer>
 805274c:	83 c4 10             	add    $0x10,%esp
 805274f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052752:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8052756:	75 0d                	jne    8052765 <yy_scan_bytes+0x9f>
 8052758:	83 ec 0c             	sub    $0xc,%esp
 805275b:	68 b5 53 05 08       	push   $0x80553b5
 8052760:	e8 0f 00 00 00       	call   8052774 <yy_fatal_error>
 8052765:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052768:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
 805276f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052772:	c9                   	leave  
 8052773:	c3                   	ret    

08052774 <yy_fatal_error>:
 8052774:	55                   	push   %ebp
 8052775:	89 e5                	mov    %esp,%ebp
 8052777:	83 ec 08             	sub    $0x8,%esp
 805277a:	a1 e0 80 05 08       	mov    0x80580e0,%eax
 805277f:	83 ec 04             	sub    $0x4,%esp
 8052782:	ff 75 08             	pushl  0x8(%ebp)
 8052785:	68 d3 53 05 08       	push   $0x80553d3
 805278a:	50                   	push   %eax
 805278b:	e8 50 61 ff ff       	call   80488e0 <fprintf@plt>
 8052790:	83 c4 10             	add    $0x10,%esp
 8052793:	83 ec 0c             	sub    $0xc,%esp
 8052796:	6a 02                	push   $0x2
 8052798:	e8 03 61 ff ff       	call   80488a0 <exit@plt>

0805279d <yyget_lineno>:
 805279d:	55                   	push   %ebp
 805279e:	89 e5                	mov    %esp,%ebp
 80527a0:	a1 bc 80 05 08       	mov    0x80580bc,%eax
 80527a5:	5d                   	pop    %ebp
 80527a6:	c3                   	ret    

080527a7 <yyget_in>:
 80527a7:	55                   	push   %ebp
 80527a8:	89 e5                	mov    %esp,%ebp
 80527aa:	a1 14 81 05 08       	mov    0x8058114,%eax
 80527af:	5d                   	pop    %ebp
 80527b0:	c3                   	ret    

080527b1 <yyget_out>:
 80527b1:	55                   	push   %ebp
 80527b2:	89 e5                	mov    %esp,%ebp
 80527b4:	a1 18 81 05 08       	mov    0x8058118,%eax
 80527b9:	5d                   	pop    %ebp
 80527ba:	c3                   	ret    

080527bb <yyget_leng>:
 80527bb:	55                   	push   %ebp
 80527bc:	89 e5                	mov    %esp,%ebp
 80527be:	a1 64 81 05 08       	mov    0x8058164,%eax
 80527c3:	5d                   	pop    %ebp
 80527c4:	c3                   	ret    

080527c5 <yyget_text>:
 80527c5:	55                   	push   %ebp
 80527c6:	89 e5                	mov    %esp,%ebp
 80527c8:	a1 5c 81 05 08       	mov    0x805815c,%eax
 80527cd:	5d                   	pop    %ebp
 80527ce:	c3                   	ret    

080527cf <yyset_lineno>:
 80527cf:	55                   	push   %ebp
 80527d0:	89 e5                	mov    %esp,%ebp
 80527d2:	8b 45 08             	mov    0x8(%ebp),%eax
 80527d5:	a3 bc 80 05 08       	mov    %eax,0x80580bc
 80527da:	90                   	nop
 80527db:	5d                   	pop    %ebp
 80527dc:	c3                   	ret    

080527dd <yyset_in>:
 80527dd:	55                   	push   %ebp
 80527de:	89 e5                	mov    %esp,%ebp
 80527e0:	8b 45 08             	mov    0x8(%ebp),%eax
 80527e3:	a3 14 81 05 08       	mov    %eax,0x8058114
 80527e8:	90                   	nop
 80527e9:	5d                   	pop    %ebp
 80527ea:	c3                   	ret    

080527eb <yyset_out>:
 80527eb:	55                   	push   %ebp
 80527ec:	89 e5                	mov    %esp,%ebp
 80527ee:	8b 45 08             	mov    0x8(%ebp),%eax
 80527f1:	a3 18 81 05 08       	mov    %eax,0x8058118
 80527f6:	90                   	nop
 80527f7:	5d                   	pop    %ebp
 80527f8:	c3                   	ret    

080527f9 <yyget_debug>:
 80527f9:	55                   	push   %ebp
 80527fa:	89 e5                	mov    %esp,%ebp
 80527fc:	a1 1c 81 05 08       	mov    0x805811c,%eax
 8052801:	5d                   	pop    %ebp
 8052802:	c3                   	ret    

08052803 <yyset_debug>:
 8052803:	55                   	push   %ebp
 8052804:	89 e5                	mov    %esp,%ebp
 8052806:	8b 45 08             	mov    0x8(%ebp),%eax
 8052809:	a3 1c 81 05 08       	mov    %eax,0x805811c
 805280e:	90                   	nop
 805280f:	5d                   	pop    %ebp
 8052810:	c3                   	ret    

08052811 <yy_init_globals>:
 8052811:	55                   	push   %ebp
 8052812:	89 e5                	mov    %esp,%ebp
 8052814:	c7 05 bc 80 05 08 01 	movl   $0x1,0x80580bc
 805281b:	00 00 00 
 805281e:	c7 05 30 81 05 08 00 	movl   $0x0,0x8058130
 8052825:	00 00 00 
 8052828:	c7 05 28 81 05 08 00 	movl   $0x0,0x8058128
 805282f:	00 00 00 
 8052832:	c7 05 2c 81 05 08 00 	movl   $0x0,0x805812c
 8052839:	00 00 00 
 805283c:	c7 05 3c 81 05 08 00 	movl   $0x0,0x805813c
 8052843:	00 00 00 
 8052846:	c7 05 40 81 05 08 00 	movl   $0x0,0x8058140
 805284d:	00 00 00 
 8052850:	c7 05 44 81 05 08 00 	movl   $0x0,0x8058144
 8052857:	00 00 00 
 805285a:	c7 05 14 81 05 08 00 	movl   $0x0,0x8058114
 8052861:	00 00 00 
 8052864:	c7 05 18 81 05 08 00 	movl   $0x0,0x8058118
 805286b:	00 00 00 
 805286e:	b8 00 00 00 00       	mov    $0x0,%eax
 8052873:	5d                   	pop    %ebp
 8052874:	c3                   	ret    

08052875 <yylex_destroy>:
 8052875:	55                   	push   %ebp
 8052876:	89 e5                	mov    %esp,%ebp
 8052878:	83 ec 08             	sub    $0x8,%esp
 805287b:	eb 49                	jmp    80528c6 <yylex_destroy+0x51>
 805287d:	a1 30 81 05 08       	mov    0x8058130,%eax
 8052882:	85 c0                	test   %eax,%eax
 8052884:	74 14                	je     805289a <yylex_destroy+0x25>
 8052886:	a1 30 81 05 08       	mov    0x8058130,%eax
 805288b:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 8052891:	c1 e2 02             	shl    $0x2,%edx
 8052894:	01 d0                	add    %edx,%eax
 8052896:	8b 00                	mov    (%eax),%eax
 8052898:	eb 05                	jmp    805289f <yylex_destroy+0x2a>
 805289a:	b8 00 00 00 00       	mov    $0x0,%eax
 805289f:	83 ec 0c             	sub    $0xc,%esp
 80528a2:	50                   	push   %eax
 80528a3:	e8 ef f8 ff ff       	call   8052197 <yy_delete_buffer>
 80528a8:	83 c4 10             	add    $0x10,%esp
 80528ab:	a1 30 81 05 08       	mov    0x8058130,%eax
 80528b0:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80528b6:	c1 e2 02             	shl    $0x2,%edx
 80528b9:	01 d0                	add    %edx,%eax
 80528bb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80528c1:	e8 3f fb ff ff       	call   8052405 <yypop_buffer_state>
 80528c6:	a1 30 81 05 08       	mov    0x8058130,%eax
 80528cb:	85 c0                	test   %eax,%eax
 80528cd:	74 16                	je     80528e5 <yylex_destroy+0x70>
 80528cf:	a1 30 81 05 08       	mov    0x8058130,%eax
 80528d4:	8b 15 28 81 05 08    	mov    0x8058128,%edx
 80528da:	c1 e2 02             	shl    $0x2,%edx
 80528dd:	01 d0                	add    %edx,%eax
 80528df:	8b 00                	mov    (%eax),%eax
 80528e1:	85 c0                	test   %eax,%eax
 80528e3:	75 98                	jne    805287d <yylex_destroy+0x8>
 80528e5:	a1 30 81 05 08       	mov    0x8058130,%eax
 80528ea:	83 ec 0c             	sub    $0xc,%esp
 80528ed:	50                   	push   %eax
 80528ee:	e8 48 00 00 00       	call   805293b <yyfree>
 80528f3:	83 c4 10             	add    $0x10,%esp
 80528f6:	c7 05 30 81 05 08 00 	movl   $0x0,0x8058130
 80528fd:	00 00 00 
 8052900:	e8 0c ff ff ff       	call   8052811 <yy_init_globals>
 8052905:	b8 00 00 00 00       	mov    $0x0,%eax
 805290a:	c9                   	leave  
 805290b:	c3                   	ret    

0805290c <yyalloc>:
 805290c:	55                   	push   %ebp
 805290d:	89 e5                	mov    %esp,%ebp
 805290f:	83 ec 08             	sub    $0x8,%esp
 8052912:	83 ec 0c             	sub    $0xc,%esp
 8052915:	ff 75 08             	pushl  0x8(%ebp)
 8052918:	e8 63 5f ff ff       	call   8048880 <malloc@plt>
 805291d:	83 c4 10             	add    $0x10,%esp
 8052920:	c9                   	leave  
 8052921:	c3                   	ret    

08052922 <yyrealloc>:
 8052922:	55                   	push   %ebp
 8052923:	89 e5                	mov    %esp,%ebp
 8052925:	83 ec 08             	sub    $0x8,%esp
 8052928:	83 ec 08             	sub    $0x8,%esp
 805292b:	ff 75 0c             	pushl  0xc(%ebp)
 805292e:	ff 75 08             	pushl  0x8(%ebp)
 8052931:	e8 3a 5f ff ff       	call   8048870 <realloc@plt>
 8052936:	83 c4 10             	add    $0x10,%esp
 8052939:	c9                   	leave  
 805293a:	c3                   	ret    

0805293b <yyfree>:
 805293b:	55                   	push   %ebp
 805293c:	89 e5                	mov    %esp,%ebp
 805293e:	83 ec 08             	sub    $0x8,%esp
 8052941:	83 ec 0c             	sub    $0xc,%esp
 8052944:	ff 75 08             	pushl  0x8(%ebp)
 8052947:	e8 84 5e ff ff       	call   80487d0 <free@plt>
 805294c:	83 c4 10             	add    $0x10,%esp
 805294f:	90                   	nop
 8052950:	c9                   	leave  
 8052951:	c3                   	ret    

08052952 <detailedMessage>:
 8052952:	55                   	push   %ebp
 8052953:	89 e5                	mov    %esp,%ebp
 8052955:	83 ec 08             	sub    $0x8,%esp
 8052958:	83 ec 08             	sub    $0x8,%esp
 805295b:	ff 75 08             	pushl  0x8(%ebp)
 805295e:	68 d7 53 05 08       	push   $0x80553d7
 8052963:	e8 58 5e ff ff       	call   80487c0 <printf@plt>
 8052968:	83 c4 10             	add    $0x10,%esp
 805296b:	90                   	nop
 805296c:	c9                   	leave  
 805296d:	c3                   	ret    

0805296e <yyerror>:
 805296e:	55                   	push   %ebp
 805296f:	89 e5                	mov    %esp,%ebp
 8052971:	83 ec 28             	sub    $0x28,%esp
 8052974:	8b 45 08             	mov    0x8(%ebp),%eax
 8052977:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 805297a:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8052980:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052983:	31 c0                	xor    %eax,%eax
 8052985:	8b 0d bc 80 05 08    	mov    0x80580bc,%ecx
 805298b:	8b 15 20 81 05 08    	mov    0x8058120,%edx
 8052991:	a1 e0 80 05 08       	mov    0x80580e0,%eax
 8052996:	51                   	push   %ecx
 8052997:	52                   	push   %edx
 8052998:	68 de 53 05 08       	push   $0x80553de
 805299d:	50                   	push   %eax
 805299e:	e8 3d 5f ff ff       	call   80488e0 <fprintf@plt>
 80529a3:	83 c4 10             	add    $0x10,%esp
 80529a6:	8d 45 0c             	lea    0xc(%ebp),%eax
 80529a9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80529ac:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80529af:	83 ec 08             	sub    $0x8,%esp
 80529b2:	50                   	push   %eax
 80529b3:	ff 75 e4             	pushl  -0x1c(%ebp)
 80529b6:	e8 05 5f ff ff       	call   80488c0 <vprintf@plt>
 80529bb:	83 c4 10             	add    $0x10,%esp
 80529be:	83 ec 0c             	sub    $0xc,%esp
 80529c1:	68 fc 53 05 08       	push   $0x80553fc
 80529c6:	e8 c5 5e ff ff       	call   8048890 <puts@plt>
 80529cb:	83 c4 10             	add    $0x10,%esp
 80529ce:	c7 05 24 81 05 08 00 	movl   $0x0,0x8058124
 80529d5:	00 00 00 
 80529d8:	90                   	nop
 80529d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80529dc:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80529e3:	74 05                	je     80529ea <yyerror+0x7c>
 80529e5:	e8 26 5e ff ff       	call   8048810 <__stack_chk_fail@plt>
 80529ea:	c9                   	leave  
 80529eb:	c3                   	ret    

080529ec <newTypeSymbol>:
 80529ec:	55                   	push   %ebp
 80529ed:	89 e5                	mov    %esp,%ebp
 80529ef:	83 ec 18             	sub    $0x18,%esp
 80529f2:	83 ec 0c             	sub    $0xc,%esp
 80529f5:	ff 75 0c             	pushl  0xc(%ebp)
 80529f8:	e8 b3 5e ff ff       	call   80488b0 <strlen@plt>
 80529fd:	83 c4 10             	add    $0x10,%esp
 8052a00:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052a03:	83 ec 0c             	sub    $0xc,%esp
 8052a06:	6a 14                	push   $0x14
 8052a08:	e8 73 5e ff ff       	call   8048880 <malloc@plt>
 8052a0d:	83 c4 10             	add    $0x10,%esp
 8052a10:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052a13:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052a16:	8b 55 08             	mov    0x8(%ebp),%edx
 8052a19:	89 10                	mov    %edx,(%eax)
 8052a1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052a1e:	8b 55 10             	mov    0x10(%ebp),%edx
 8052a21:	89 50 0c             	mov    %edx,0xc(%eax)
 8052a24:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052a27:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 8052a2e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052a31:	83 c0 01             	add    $0x1,%eax
 8052a34:	83 ec 0c             	sub    $0xc,%esp
 8052a37:	50                   	push   %eax
 8052a38:	e8 43 5e ff ff       	call   8048880 <malloc@plt>
 8052a3d:	83 c4 10             	add    $0x10,%esp
 8052a40:	89 c2                	mov    %eax,%edx
 8052a42:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052a45:	89 50 04             	mov    %edx,0x4(%eax)
 8052a48:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052a4b:	8b 40 04             	mov    0x4(%eax),%eax
 8052a4e:	83 ec 08             	sub    $0x8,%esp
 8052a51:	ff 75 0c             	pushl  0xc(%ebp)
 8052a54:	50                   	push   %eax
 8052a55:	e8 06 5e ff ff       	call   8048860 <strcpy@plt>
 8052a5a:	83 c4 10             	add    $0x10,%esp
 8052a5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052a60:	8b 50 04             	mov    0x4(%eax),%edx
 8052a63:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052a66:	01 d0                	add    %edx,%eax
 8052a68:	c6 00 00             	movb   $0x0,(%eax)
 8052a6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052a6e:	c9                   	leave  
 8052a6f:	c3                   	ret    

08052a70 <newFuncSymbol>:
 8052a70:	55                   	push   %ebp
 8052a71:	89 e5                	mov    %esp,%ebp
 8052a73:	83 ec 18             	sub    $0x18,%esp
 8052a76:	83 ec 0c             	sub    $0xc,%esp
 8052a79:	ff 75 0c             	pushl  0xc(%ebp)
 8052a7c:	e8 2f 5e ff ff       	call   80488b0 <strlen@plt>
 8052a81:	83 c4 10             	add    $0x10,%esp
 8052a84:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052a87:	83 ec 0c             	sub    $0xc,%esp
 8052a8a:	6a 14                	push   $0x14
 8052a8c:	e8 ef 5d ff ff       	call   8048880 <malloc@plt>
 8052a91:	83 c4 10             	add    $0x10,%esp
 8052a94:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052a97:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052a9a:	8b 55 08             	mov    0x8(%ebp),%edx
 8052a9d:	89 10                	mov    %edx,(%eax)
 8052a9f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052aa2:	8b 55 10             	mov    0x10(%ebp),%edx
 8052aa5:	89 50 0c             	mov    %edx,0xc(%eax)
 8052aa8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052aab:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 8052ab2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052ab5:	83 c0 01             	add    $0x1,%eax
 8052ab8:	83 ec 0c             	sub    $0xc,%esp
 8052abb:	50                   	push   %eax
 8052abc:	e8 bf 5d ff ff       	call   8048880 <malloc@plt>
 8052ac1:	83 c4 10             	add    $0x10,%esp
 8052ac4:	89 c2                	mov    %eax,%edx
 8052ac6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052ac9:	89 50 04             	mov    %edx,0x4(%eax)
 8052acc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052acf:	8b 40 04             	mov    0x4(%eax),%eax
 8052ad2:	83 ec 08             	sub    $0x8,%esp
 8052ad5:	ff 75 0c             	pushl  0xc(%ebp)
 8052ad8:	50                   	push   %eax
 8052ad9:	e8 82 5d ff ff       	call   8048860 <strcpy@plt>
 8052ade:	83 c4 10             	add    $0x10,%esp
 8052ae1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052ae4:	c9                   	leave  
 8052ae5:	c3                   	ret    

08052ae6 <hash_pjw>:
 8052ae6:	55                   	push   %ebp
 8052ae7:	89 e5                	mov    %esp,%ebp
 8052ae9:	83 ec 10             	sub    $0x10,%esp
 8052aec:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8052af3:	eb 3e                	jmp    8052b33 <hash_pjw+0x4d>
 8052af5:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8052af8:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8052aff:	8b 45 08             	mov    0x8(%ebp),%eax
 8052b02:	0f b6 00             	movzbl (%eax),%eax
 8052b05:	0f be c0             	movsbl %al,%eax
 8052b08:	01 d0                	add    %edx,%eax
 8052b0a:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8052b0d:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8052b10:	25 00 c0 ff ff       	and    $0xffffc000,%eax
 8052b15:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8052b18:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8052b1c:	74 11                	je     8052b2f <hash_pjw+0x49>
 8052b1e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8052b21:	c1 e8 0c             	shr    $0xc,%eax
 8052b24:	33 45 f8             	xor    -0x8(%ebp),%eax
 8052b27:	25 ff 3f 00 00       	and    $0x3fff,%eax
 8052b2c:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8052b2f:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 8052b33:	8b 45 08             	mov    0x8(%ebp),%eax
 8052b36:	0f b6 00             	movzbl (%eax),%eax
 8052b39:	84 c0                	test   %al,%al
 8052b3b:	75 b8                	jne    8052af5 <hash_pjw+0xf>
 8052b3d:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8052b40:	c9                   	leave  
 8052b41:	c3                   	ret    

08052b42 <initTable>:
 8052b42:	55                   	push   %ebp
 8052b43:	89 e5                	mov    %esp,%ebp
 8052b45:	83 ec 10             	sub    $0x10,%esp
 8052b48:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8052b4f:	eb 12                	jmp    8052b63 <initTable+0x21>
 8052b51:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8052b54:	c7 04 85 80 81 05 08 	movl   $0x0,0x8058180(,%eax,4)
 8052b5b:	00 00 00 00 
 8052b5f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8052b63:	81 7d fc fe 3f 00 00 	cmpl   $0x3ffe,-0x4(%ebp)
 8052b6a:	7e e5                	jle    8052b51 <initTable+0xf>
 8052b6c:	c7 05 54 81 05 08 00 	movl   $0x0,0x8058154
 8052b73:	00 00 00 
 8052b76:	90                   	nop
 8052b77:	c9                   	leave  
 8052b78:	c3                   	ret    

08052b79 <clearTable>:
 8052b79:	55                   	push   %ebp
 8052b7a:	89 e5                	mov    %esp,%ebp
 8052b7c:	83 ec 18             	sub    $0x18,%esp
 8052b7f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8052b86:	eb 28                	jmp    8052bb0 <clearTable+0x37>
 8052b88:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052b8b:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 8052b92:	85 c0                	test   %eax,%eax
 8052b94:	74 16                	je     8052bac <clearTable+0x33>
 8052b96:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052b99:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 8052ba0:	83 ec 0c             	sub    $0xc,%esp
 8052ba3:	50                   	push   %eax
 8052ba4:	e8 27 5c ff ff       	call   80487d0 <free@plt>
 8052ba9:	83 c4 10             	add    $0x10,%esp
 8052bac:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8052bb0:	81 7d f4 fe 3f 00 00 	cmpl   $0x3ffe,-0xc(%ebp)
 8052bb7:	7e cf                	jle    8052b88 <clearTable+0xf>
 8052bb9:	c7 05 54 81 05 08 00 	movl   $0x0,0x8058154
 8052bc0:	00 00 00 
 8052bc3:	90                   	nop
 8052bc4:	c9                   	leave  
 8052bc5:	c3                   	ret    

08052bc6 <searchTable>:
 8052bc6:	55                   	push   %ebp
 8052bc7:	89 e5                	mov    %esp,%ebp
 8052bc9:	83 ec 18             	sub    $0x18,%esp
 8052bcc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8052bd0:	75 07                	jne    8052bd9 <searchTable+0x13>
 8052bd2:	b8 00 00 00 00       	mov    $0x0,%eax
 8052bd7:	eb 63                	jmp    8052c3c <searchTable+0x76>
 8052bd9:	ff 75 08             	pushl  0x8(%ebp)
 8052bdc:	e8 05 ff ff ff       	call   8052ae6 <hash_pjw>
 8052be1:	83 c4 04             	add    $0x4,%esp
 8052be4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052be7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052bea:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 8052bf1:	85 c0                	test   %eax,%eax
 8052bf3:	74 42                	je     8052c37 <searchTable+0x71>
 8052bf5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052bf8:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 8052bff:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052c02:	eb 09                	jmp    8052c0d <searchTable+0x47>
 8052c04:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052c07:	8b 40 10             	mov    0x10(%eax),%eax
 8052c0a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052c0d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8052c11:	74 19                	je     8052c2c <searchTable+0x66>
 8052c13:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052c16:	8b 40 04             	mov    0x4(%eax),%eax
 8052c19:	83 ec 08             	sub    $0x8,%esp
 8052c1c:	50                   	push   %eax
 8052c1d:	ff 75 08             	pushl  0x8(%ebp)
 8052c20:	e8 8b 5b ff ff       	call   80487b0 <strcmp@plt>
 8052c25:	83 c4 10             	add    $0x10,%esp
 8052c28:	85 c0                	test   %eax,%eax
 8052c2a:	75 d8                	jne    8052c04 <searchTable+0x3e>
 8052c2c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8052c30:	74 05                	je     8052c37 <searchTable+0x71>
 8052c32:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052c35:	eb 05                	jmp    8052c3c <searchTable+0x76>
 8052c37:	b8 00 00 00 00       	mov    $0x0,%eax
 8052c3c:	c9                   	leave  
 8052c3d:	c3                   	ret    

08052c3e <insertTable>:
 8052c3e:	55                   	push   %ebp
 8052c3f:	89 e5                	mov    %esp,%ebp
 8052c41:	83 ec 18             	sub    $0x18,%esp
 8052c44:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8052c48:	74 0a                	je     8052c54 <insertTable+0x16>
 8052c4a:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c4d:	8b 40 04             	mov    0x4(%eax),%eax
 8052c50:	85 c0                	test   %eax,%eax
 8052c52:	75 0a                	jne    8052c5e <insertTable+0x20>
 8052c54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8052c59:	e9 86 00 00 00       	jmp    8052ce4 <insertTable+0xa6>
 8052c5e:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c61:	8b 40 04             	mov    0x4(%eax),%eax
 8052c64:	50                   	push   %eax
 8052c65:	e8 7c fe ff ff       	call   8052ae6 <hash_pjw>
 8052c6a:	83 c4 04             	add    $0x4,%esp
 8052c6d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052c70:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052c73:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 8052c7a:	85 c0                	test   %eax,%eax
 8052c7c:	75 0f                	jne    8052c8d <insertTable+0x4f>
 8052c7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052c81:	8b 55 08             	mov    0x8(%ebp),%edx
 8052c84:	89 14 85 80 81 05 08 	mov    %edx,0x8058180(,%eax,4)
 8052c8b:	eb 52                	jmp    8052cdf <insertTable+0xa1>
 8052c8d:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c90:	8b 40 04             	mov    0x4(%eax),%eax
 8052c93:	83 ec 0c             	sub    $0xc,%esp
 8052c96:	50                   	push   %eax
 8052c97:	e8 2a ff ff ff       	call   8052bc6 <searchTable>
 8052c9c:	83 c4 10             	add    $0x10,%esp
 8052c9f:	85 c0                	test   %eax,%eax
 8052ca1:	74 07                	je     8052caa <insertTable+0x6c>
 8052ca3:	b8 01 00 00 00       	mov    $0x1,%eax
 8052ca8:	eb 3a                	jmp    8052ce4 <insertTable+0xa6>
 8052caa:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052cad:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 8052cb4:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052cb7:	eb 09                	jmp    8052cc2 <insertTable+0x84>
 8052cb9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052cbc:	8b 40 10             	mov    0x10(%eax),%eax
 8052cbf:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052cc2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052cc5:	8b 40 10             	mov    0x10(%eax),%eax
 8052cc8:	85 c0                	test   %eax,%eax
 8052cca:	75 ed                	jne    8052cb9 <insertTable+0x7b>
 8052ccc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052ccf:	8b 55 08             	mov    0x8(%ebp),%edx
 8052cd2:	89 50 10             	mov    %edx,0x10(%eax)
 8052cd5:	8b 45 08             	mov    0x8(%ebp),%eax
 8052cd8:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 8052cdf:	b8 00 00 00 00       	mov    $0x0,%eax
 8052ce4:	c9                   	leave  
 8052ce5:	c3                   	ret    

08052ce6 <preprocessTable>:
 8052ce6:	55                   	push   %ebp
 8052ce7:	89 e5                	mov    %esp,%ebp
 8052ce9:	53                   	push   %ebx
 8052cea:	83 ec 14             	sub    $0x14,%esp
 8052ced:	83 ec 0c             	sub    $0xc,%esp
 8052cf0:	6a 0c                	push   $0xc
 8052cf2:	e8 89 5b ff ff       	call   8048880 <malloc@plt>
 8052cf7:	83 c4 10             	add    $0x10,%esp
 8052cfa:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8052cfd:	83 ec 0c             	sub    $0xc,%esp
 8052d00:	6a 0c                	push   $0xc
 8052d02:	e8 79 5b ff ff       	call   8048880 <malloc@plt>
 8052d07:	83 c4 10             	add    $0x10,%esp
 8052d0a:	89 c2                	mov    %eax,%edx
 8052d0c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052d0f:	89 10                	mov    %edx,(%eax)
 8052d11:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052d14:	8b 00                	mov    (%eax),%eax
 8052d16:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052d1c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052d1f:	8b 00                	mov    (%eax),%eax
 8052d21:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8052d28:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052d2b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8052d32:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052d35:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 8052d3c:	83 ec 04             	sub    $0x4,%esp
 8052d3f:	ff 75 e8             	pushl  -0x18(%ebp)
 8052d42:	68 00 54 05 08       	push   $0x8055400
 8052d47:	6a 01                	push   $0x1
 8052d49:	e8 22 fd ff ff       	call   8052a70 <newFuncSymbol>
 8052d4e:	83 c4 10             	add    $0x10,%esp
 8052d51:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8052d54:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8052d57:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8052d5e:	83 ec 0c             	sub    $0xc,%esp
 8052d61:	ff 75 ec             	pushl  -0x14(%ebp)
 8052d64:	e8 d5 fe ff ff       	call   8052c3e <insertTable>
 8052d69:	83 c4 10             	add    $0x10,%esp
 8052d6c:	83 ec 0c             	sub    $0xc,%esp
 8052d6f:	6a 0c                	push   $0xc
 8052d71:	e8 0a 5b ff ff       	call   8048880 <malloc@plt>
 8052d76:	83 c4 10             	add    $0x10,%esp
 8052d79:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052d7c:	83 ec 0c             	sub    $0xc,%esp
 8052d7f:	6a 0c                	push   $0xc
 8052d81:	e8 fa 5a ff ff       	call   8048880 <malloc@plt>
 8052d86:	83 c4 10             	add    $0x10,%esp
 8052d89:	89 c2                	mov    %eax,%edx
 8052d8b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052d8e:	89 10                	mov    %edx,(%eax)
 8052d90:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052d93:	8b 00                	mov    (%eax),%eax
 8052d95:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052d9b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052d9e:	8b 00                	mov    (%eax),%eax
 8052da0:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8052da7:	83 ec 0c             	sub    $0xc,%esp
 8052daa:	6a 0c                	push   $0xc
 8052dac:	e8 cf 5a ff ff       	call   8048880 <malloc@plt>
 8052db1:	83 c4 10             	add    $0x10,%esp
 8052db4:	89 c2                	mov    %eax,%edx
 8052db6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052db9:	89 50 04             	mov    %edx,0x4(%eax)
 8052dbc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052dbf:	8b 40 04             	mov    0x4(%eax),%eax
 8052dc2:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052dc8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052dcb:	8b 40 04             	mov    0x4(%eax),%eax
 8052dce:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8052dd5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052dd8:	8b 58 04             	mov    0x4(%eax),%ebx
 8052ddb:	83 ec 0c             	sub    $0xc,%esp
 8052dde:	6a 0c                	push   $0xc
 8052de0:	e8 9b 5a ff ff       	call   8048880 <malloc@plt>
 8052de5:	83 c4 10             	add    $0x10,%esp
 8052de8:	89 43 04             	mov    %eax,0x4(%ebx)
 8052deb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052dee:	8b 40 04             	mov    0x4(%eax),%eax
 8052df1:	8b 40 04             	mov    0x4(%eax),%eax
 8052df4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052dfa:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052dfd:	8b 40 04             	mov    0x4(%eax),%eax
 8052e00:	8b 40 04             	mov    0x4(%eax),%eax
 8052e03:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8052e0a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052e0d:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 8052e14:	83 ec 04             	sub    $0x4,%esp
 8052e17:	ff 75 f0             	pushl  -0x10(%ebp)
 8052e1a:	68 05 54 05 08       	push   $0x8055405
 8052e1f:	6a 01                	push   $0x1
 8052e21:	e8 4a fc ff ff       	call   8052a70 <newFuncSymbol>
 8052e26:	83 c4 10             	add    $0x10,%esp
 8052e29:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052e2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052e2f:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8052e36:	83 ec 0c             	sub    $0xc,%esp
 8052e39:	ff 75 f4             	pushl  -0xc(%ebp)
 8052e3c:	e8 fd fd ff ff       	call   8052c3e <insertTable>
 8052e41:	83 c4 10             	add    $0x10,%esp
 8052e44:	90                   	nop
 8052e45:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8052e48:	c9                   	leave  
 8052e49:	c3                   	ret    

08052e4a <typeSize>:
 8052e4a:	55                   	push   %ebp
 8052e4b:	89 e5                	mov    %esp,%ebp
 8052e4d:	83 ec 18             	sub    $0x18,%esp
 8052e50:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8052e57:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8052e5b:	75 08                	jne    8052e65 <typeSize+0x1b>
 8052e5d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052e60:	e9 8e 00 00 00       	jmp    8052ef3 <typeSize+0xa9>
 8052e65:	8b 45 08             	mov    0x8(%ebp),%eax
 8052e68:	8b 00                	mov    (%eax),%eax
 8052e6a:	83 f8 01             	cmp    $0x1,%eax
 8052e6d:	74 15                	je     8052e84 <typeSize+0x3a>
 8052e6f:	83 f8 01             	cmp    $0x1,%eax
 8052e72:	72 07                	jb     8052e7b <typeSize+0x31>
 8052e74:	83 f8 02             	cmp    $0x2,%eax
 8052e77:	74 2d                	je     8052ea6 <typeSize+0x5c>
 8052e79:	eb 5c                	jmp    8052ed7 <typeSize+0x8d>
 8052e7b:	c7 45 f0 04 00 00 00 	movl   $0x4,-0x10(%ebp)
 8052e82:	eb 6c                	jmp    8052ef0 <typeSize+0xa6>
 8052e84:	8b 45 08             	mov    0x8(%ebp),%eax
 8052e87:	8b 40 04             	mov    0x4(%eax),%eax
 8052e8a:	83 ec 0c             	sub    $0xc,%esp
 8052e8d:	50                   	push   %eax
 8052e8e:	e8 b7 ff ff ff       	call   8052e4a <typeSize>
 8052e93:	83 c4 10             	add    $0x10,%esp
 8052e96:	89 c2                	mov    %eax,%edx
 8052e98:	8b 45 08             	mov    0x8(%ebp),%eax
 8052e9b:	8b 40 08             	mov    0x8(%eax),%eax
 8052e9e:	0f af c2             	imul   %edx,%eax
 8052ea1:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052ea4:	eb 4a                	jmp    8052ef0 <typeSize+0xa6>
 8052ea6:	8b 45 08             	mov    0x8(%ebp),%eax
 8052ea9:	8b 40 04             	mov    0x4(%eax),%eax
 8052eac:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052eaf:	eb 1e                	jmp    8052ecf <typeSize+0x85>
 8052eb1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052eb4:	8b 40 04             	mov    0x4(%eax),%eax
 8052eb7:	83 ec 0c             	sub    $0xc,%esp
 8052eba:	50                   	push   %eax
 8052ebb:	e8 8a ff ff ff       	call   8052e4a <typeSize>
 8052ec0:	83 c4 10             	add    $0x10,%esp
 8052ec3:	01 45 f0             	add    %eax,-0x10(%ebp)
 8052ec6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052ec9:	8b 40 08             	mov    0x8(%eax),%eax
 8052ecc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052ecf:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8052ed3:	75 dc                	jne    8052eb1 <typeSize+0x67>
 8052ed5:	eb 19                	jmp    8052ef0 <typeSize+0xa6>
 8052ed7:	68 74 54 05 08       	push   $0x8055474
 8052edc:	68 9d 00 00 00       	push   $0x9d
 8052ee1:	68 0b 54 05 08       	push   $0x805540b
 8052ee6:	68 17 54 05 08       	push   $0x8055417
 8052eeb:	e8 d0 5a ff ff       	call   80489c0 <__assert_fail@plt>
 8052ef0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052ef3:	c9                   	leave  
 8052ef4:	c3                   	ret    

08052ef5 <structureField>:
 8052ef5:	55                   	push   %ebp
 8052ef6:	89 e5                	mov    %esp,%ebp
 8052ef8:	83 ec 08             	sub    $0x8,%esp
 8052efb:	eb 29                	jmp    8052f26 <structureField+0x31>
 8052efd:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f00:	8b 00                	mov    (%eax),%eax
 8052f02:	83 ec 08             	sub    $0x8,%esp
 8052f05:	ff 75 0c             	pushl  0xc(%ebp)
 8052f08:	50                   	push   %eax
 8052f09:	e8 79 05 00 00       	call   8053487 <safe_strcmp>
 8052f0e:	83 c4 10             	add    $0x10,%esp
 8052f11:	85 c0                	test   %eax,%eax
 8052f13:	75 08                	jne    8052f1d <structureField+0x28>
 8052f15:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f18:	8b 40 04             	mov    0x4(%eax),%eax
 8052f1b:	eb 14                	jmp    8052f31 <structureField+0x3c>
 8052f1d:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f20:	8b 40 08             	mov    0x8(%eax),%eax
 8052f23:	89 45 08             	mov    %eax,0x8(%ebp)
 8052f26:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8052f2a:	75 d1                	jne    8052efd <structureField+0x8>
 8052f2c:	b8 00 00 00 00       	mov    $0x0,%eax
 8052f31:	c9                   	leave  
 8052f32:	c3                   	ret    

08052f33 <compareType>:
 8052f33:	55                   	push   %ebp
 8052f34:	89 e5                	mov    %esp,%ebp
 8052f36:	83 ec 08             	sub    $0x8,%esp
 8052f39:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f3c:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8052f3f:	75 0a                	jne    8052f4b <compareType+0x18>
 8052f41:	b8 01 00 00 00       	mov    $0x1,%eax
 8052f46:	e9 a1 00 00 00       	jmp    8052fec <compareType+0xb9>
 8052f4b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8052f4f:	74 06                	je     8052f57 <compareType+0x24>
 8052f51:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8052f55:	75 0a                	jne    8052f61 <compareType+0x2e>
 8052f57:	b8 00 00 00 00       	mov    $0x0,%eax
 8052f5c:	e9 8b 00 00 00       	jmp    8052fec <compareType+0xb9>
 8052f61:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f64:	8b 10                	mov    (%eax),%edx
 8052f66:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052f69:	8b 00                	mov    (%eax),%eax
 8052f6b:	39 c2                	cmp    %eax,%edx
 8052f6d:	74 07                	je     8052f76 <compareType+0x43>
 8052f6f:	b8 00 00 00 00       	mov    $0x0,%eax
 8052f74:	eb 76                	jmp    8052fec <compareType+0xb9>
 8052f76:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f79:	8b 00                	mov    (%eax),%eax
 8052f7b:	85 c0                	test   %eax,%eax
 8052f7d:	75 1e                	jne    8052f9d <compareType+0x6a>
 8052f7f:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f82:	8b 50 04             	mov    0x4(%eax),%edx
 8052f85:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052f88:	8b 40 04             	mov    0x4(%eax),%eax
 8052f8b:	39 c2                	cmp    %eax,%edx
 8052f8d:	75 07                	jne    8052f96 <compareType+0x63>
 8052f8f:	b8 01 00 00 00       	mov    $0x1,%eax
 8052f94:	eb 56                	jmp    8052fec <compareType+0xb9>
 8052f96:	b8 00 00 00 00       	mov    $0x0,%eax
 8052f9b:	eb 4f                	jmp    8052fec <compareType+0xb9>
 8052f9d:	8b 45 08             	mov    0x8(%ebp),%eax
 8052fa0:	8b 00                	mov    (%eax),%eax
 8052fa2:	83 f8 01             	cmp    $0x1,%eax
 8052fa5:	75 1b                	jne    8052fc2 <compareType+0x8f>
 8052fa7:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052faa:	8b 50 04             	mov    0x4(%eax),%edx
 8052fad:	8b 45 08             	mov    0x8(%ebp),%eax
 8052fb0:	8b 40 04             	mov    0x4(%eax),%eax
 8052fb3:	83 ec 08             	sub    $0x8,%esp
 8052fb6:	52                   	push   %edx
 8052fb7:	50                   	push   %eax
 8052fb8:	e8 76 ff ff ff       	call   8052f33 <compareType>
 8052fbd:	83 c4 10             	add    $0x10,%esp
 8052fc0:	eb 2a                	jmp    8052fec <compareType+0xb9>
 8052fc2:	8b 45 08             	mov    0x8(%ebp),%eax
 8052fc5:	8b 00                	mov    (%eax),%eax
 8052fc7:	83 f8 02             	cmp    $0x2,%eax
 8052fca:	75 1b                	jne    8052fe7 <compareType+0xb4>
 8052fcc:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052fcf:	8b 50 04             	mov    0x4(%eax),%edx
 8052fd2:	8b 45 08             	mov    0x8(%ebp),%eax
 8052fd5:	8b 40 04             	mov    0x4(%eax),%eax
 8052fd8:	83 ec 08             	sub    $0x8,%esp
 8052fdb:	52                   	push   %edx
 8052fdc:	50                   	push   %eax
 8052fdd:	e8 0c 00 00 00       	call   8052fee <compareStructure>
 8052fe2:	83 c4 10             	add    $0x10,%esp
 8052fe5:	eb 05                	jmp    8052fec <compareType+0xb9>
 8052fe7:	b8 00 00 00 00       	mov    $0x0,%eax
 8052fec:	c9                   	leave  
 8052fed:	c3                   	ret    

08052fee <compareStructure>:
 8052fee:	55                   	push   %ebp
 8052fef:	89 e5                	mov    %esp,%ebp
 8052ff1:	83 ec 08             	sub    $0x8,%esp
 8052ff4:	8b 45 08             	mov    0x8(%ebp),%eax
 8052ff7:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8052ffa:	75 07                	jne    8053003 <compareStructure+0x15>
 8052ffc:	b8 01 00 00 00       	mov    $0x1,%eax
 8053001:	eb 3a                	jmp    805303d <compareStructure+0x4f>
 8053003:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8053007:	74 06                	je     805300f <compareStructure+0x21>
 8053009:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 805300d:	75 07                	jne    8053016 <compareStructure+0x28>
 805300f:	b8 00 00 00 00       	mov    $0x0,%eax
 8053014:	eb 27                	jmp    805303d <compareStructure+0x4f>
 8053016:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053019:	8b 10                	mov    (%eax),%edx
 805301b:	8b 45 08             	mov    0x8(%ebp),%eax
 805301e:	8b 00                	mov    (%eax),%eax
 8053020:	83 ec 08             	sub    $0x8,%esp
 8053023:	52                   	push   %edx
 8053024:	50                   	push   %eax
 8053025:	e8 86 57 ff ff       	call   80487b0 <strcmp@plt>
 805302a:	83 c4 10             	add    $0x10,%esp
 805302d:	85 c0                	test   %eax,%eax
 805302f:	75 07                	jne    8053038 <compareStructure+0x4a>
 8053031:	b8 01 00 00 00       	mov    $0x1,%eax
 8053036:	eb 05                	jmp    805303d <compareStructure+0x4f>
 8053038:	b8 00 00 00 00       	mov    $0x0,%eax
 805303d:	c9                   	leave  
 805303e:	c3                   	ret    

0805303f <compareArgs>:
 805303f:	55                   	push   %ebp
 8053040:	89 e5                	mov    %esp,%ebp
 8053042:	83 ec 08             	sub    $0x8,%esp
 8053045:	8b 45 08             	mov    0x8(%ebp),%eax
 8053048:	3b 45 0c             	cmp    0xc(%ebp),%eax
 805304b:	75 07                	jne    8053054 <compareArgs+0x15>
 805304d:	b8 01 00 00 00       	mov    $0x1,%eax
 8053052:	eb 50                	jmp    80530a4 <compareArgs+0x65>
 8053054:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8053058:	74 06                	je     8053060 <compareArgs+0x21>
 805305a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 805305e:	75 07                	jne    8053067 <compareArgs+0x28>
 8053060:	b8 00 00 00 00       	mov    $0x0,%eax
 8053065:	eb 3d                	jmp    80530a4 <compareArgs+0x65>
 8053067:	8b 45 0c             	mov    0xc(%ebp),%eax
 805306a:	8b 50 04             	mov    0x4(%eax),%edx
 805306d:	8b 45 08             	mov    0x8(%ebp),%eax
 8053070:	8b 40 04             	mov    0x4(%eax),%eax
 8053073:	83 ec 08             	sub    $0x8,%esp
 8053076:	52                   	push   %edx
 8053077:	50                   	push   %eax
 8053078:	e8 b6 fe ff ff       	call   8052f33 <compareType>
 805307d:	83 c4 10             	add    $0x10,%esp
 8053080:	85 c0                	test   %eax,%eax
 8053082:	75 07                	jne    805308b <compareArgs+0x4c>
 8053084:	b8 00 00 00 00       	mov    $0x0,%eax
 8053089:	eb 19                	jmp    80530a4 <compareArgs+0x65>
 805308b:	8b 45 0c             	mov    0xc(%ebp),%eax
 805308e:	8b 50 08             	mov    0x8(%eax),%edx
 8053091:	8b 45 08             	mov    0x8(%ebp),%eax
 8053094:	8b 40 08             	mov    0x8(%eax),%eax
 8053097:	83 ec 08             	sub    $0x8,%esp
 805309a:	52                   	push   %edx
 805309b:	50                   	push   %eax
 805309c:	e8 9e ff ff ff       	call   805303f <compareArgs>
 80530a1:	83 c4 10             	add    $0x10,%esp
 80530a4:	c9                   	leave  
 80530a5:	c3                   	ret    

080530a6 <compareFunction>:
 80530a6:	55                   	push   %ebp
 80530a7:	89 e5                	mov    %esp,%ebp
 80530a9:	83 ec 08             	sub    $0x8,%esp
 80530ac:	8b 45 08             	mov    0x8(%ebp),%eax
 80530af:	3b 45 0c             	cmp    0xc(%ebp),%eax
 80530b2:	75 07                	jne    80530bb <compareFunction+0x15>
 80530b4:	b8 01 00 00 00       	mov    $0x1,%eax
 80530b9:	eb 75                	jmp    8053130 <compareFunction+0x8a>
 80530bb:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80530bf:	74 06                	je     80530c7 <compareFunction+0x21>
 80530c1:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 80530c5:	75 07                	jne    80530ce <compareFunction+0x28>
 80530c7:	b8 00 00 00 00       	mov    $0x0,%eax
 80530cc:	eb 62                	jmp    8053130 <compareFunction+0x8a>
 80530ce:	8b 45 08             	mov    0x8(%ebp),%eax
 80530d1:	8b 00                	mov    (%eax),%eax
 80530d3:	83 f8 01             	cmp    $0x1,%eax
 80530d6:	75 0a                	jne    80530e2 <compareFunction+0x3c>
 80530d8:	8b 45 0c             	mov    0xc(%ebp),%eax
 80530db:	8b 00                	mov    (%eax),%eax
 80530dd:	83 f8 01             	cmp    $0x1,%eax
 80530e0:	74 07                	je     80530e9 <compareFunction+0x43>
 80530e2:	b8 00 00 00 00       	mov    $0x0,%eax
 80530e7:	eb 47                	jmp    8053130 <compareFunction+0x8a>
 80530e9:	8b 45 0c             	mov    0xc(%ebp),%eax
 80530ec:	8b 40 0c             	mov    0xc(%eax),%eax
 80530ef:	8b 10                	mov    (%eax),%edx
 80530f1:	8b 45 08             	mov    0x8(%ebp),%eax
 80530f4:	8b 40 0c             	mov    0xc(%eax),%eax
 80530f7:	8b 00                	mov    (%eax),%eax
 80530f9:	83 ec 08             	sub    $0x8,%esp
 80530fc:	52                   	push   %edx
 80530fd:	50                   	push   %eax
 80530fe:	e8 30 fe ff ff       	call   8052f33 <compareType>
 8053103:	83 c4 10             	add    $0x10,%esp
 8053106:	85 c0                	test   %eax,%eax
 8053108:	75 07                	jne    8053111 <compareFunction+0x6b>
 805310a:	b8 00 00 00 00       	mov    $0x0,%eax
 805310f:	eb 1f                	jmp    8053130 <compareFunction+0x8a>
 8053111:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053114:	8b 40 0c             	mov    0xc(%eax),%eax
 8053117:	8b 50 04             	mov    0x4(%eax),%edx
 805311a:	8b 45 08             	mov    0x8(%ebp),%eax
 805311d:	8b 40 0c             	mov    0xc(%eax),%eax
 8053120:	8b 40 04             	mov    0x4(%eax),%eax
 8053123:	83 ec 08             	sub    $0x8,%esp
 8053126:	52                   	push   %edx
 8053127:	50                   	push   %eax
 8053128:	e8 12 ff ff ff       	call   805303f <compareArgs>
 805312d:	83 c4 10             	add    $0x10,%esp
 8053130:	c9                   	leave  
 8053131:	c3                   	ret    

08053132 <printFieldList>:
 8053132:	55                   	push   %ebp
 8053133:	89 e5                	mov    %esp,%ebp
 8053135:	83 ec 08             	sub    $0x8,%esp
 8053138:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 805313c:	0f 84 89 00 00 00    	je     80531cb <printFieldList+0x99>
 8053142:	eb 4a                	jmp    805318e <printFieldList+0x5c>
 8053144:	8b 45 08             	mov    0x8(%ebp),%eax
 8053147:	8b 40 04             	mov    0x4(%eax),%eax
 805314a:	83 ec 0c             	sub    $0xc,%esp
 805314d:	50                   	push   %eax
 805314e:	e8 7b 00 00 00       	call   80531ce <printType>
 8053153:	83 c4 10             	add    $0x10,%esp
 8053156:	8b 45 08             	mov    0x8(%ebp),%eax
 8053159:	8b 00                	mov    (%eax),%eax
 805315b:	85 c0                	test   %eax,%eax
 805315d:	74 16                	je     8053175 <printFieldList+0x43>
 805315f:	8b 45 08             	mov    0x8(%ebp),%eax
 8053162:	8b 00                	mov    (%eax),%eax
 8053164:	83 ec 08             	sub    $0x8,%esp
 8053167:	50                   	push   %eax
 8053168:	68 19 54 05 08       	push   $0x8055419
 805316d:	e8 4e 56 ff ff       	call   80487c0 <printf@plt>
 8053172:	83 c4 10             	add    $0x10,%esp
 8053175:	83 ec 0c             	sub    $0xc,%esp
 8053178:	68 1d 54 05 08       	push   $0x805541d
 805317d:	e8 3e 56 ff ff       	call   80487c0 <printf@plt>
 8053182:	83 c4 10             	add    $0x10,%esp
 8053185:	8b 45 08             	mov    0x8(%ebp),%eax
 8053188:	8b 40 08             	mov    0x8(%eax),%eax
 805318b:	89 45 08             	mov    %eax,0x8(%ebp)
 805318e:	8b 45 08             	mov    0x8(%ebp),%eax
 8053191:	8b 40 08             	mov    0x8(%eax),%eax
 8053194:	85 c0                	test   %eax,%eax
 8053196:	75 ac                	jne    8053144 <printFieldList+0x12>
 8053198:	8b 45 08             	mov    0x8(%ebp),%eax
 805319b:	8b 40 04             	mov    0x4(%eax),%eax
 805319e:	83 ec 0c             	sub    $0xc,%esp
 80531a1:	50                   	push   %eax
 80531a2:	e8 27 00 00 00       	call   80531ce <printType>
 80531a7:	83 c4 10             	add    $0x10,%esp
 80531aa:	8b 45 08             	mov    0x8(%ebp),%eax
 80531ad:	8b 00                	mov    (%eax),%eax
 80531af:	85 c0                	test   %eax,%eax
 80531b1:	74 19                	je     80531cc <printFieldList+0x9a>
 80531b3:	8b 45 08             	mov    0x8(%ebp),%eax
 80531b6:	8b 00                	mov    (%eax),%eax
 80531b8:	83 ec 08             	sub    $0x8,%esp
 80531bb:	50                   	push   %eax
 80531bc:	68 19 54 05 08       	push   $0x8055419
 80531c1:	e8 fa 55 ff ff       	call   80487c0 <printf@plt>
 80531c6:	83 c4 10             	add    $0x10,%esp
 80531c9:	eb 01                	jmp    80531cc <printFieldList+0x9a>
 80531cb:	90                   	nop
 80531cc:	c9                   	leave  
 80531cd:	c3                   	ret    

080531ce <printType>:
 80531ce:	55                   	push   %ebp
 80531cf:	89 e5                	mov    %esp,%ebp
 80531d1:	83 ec 08             	sub    $0x8,%esp
 80531d4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80531d8:	0f 84 84 00 00 00    	je     8053262 <printType+0x94>
 80531de:	8b 45 08             	mov    0x8(%ebp),%eax
 80531e1:	8b 00                	mov    (%eax),%eax
 80531e3:	83 f8 01             	cmp    $0x1,%eax
 80531e6:	74 3a                	je     8053222 <printType+0x54>
 80531e8:	83 f8 01             	cmp    $0x1,%eax
 80531eb:	72 07                	jb     80531f4 <printType+0x26>
 80531ed:	83 f8 02             	cmp    $0x2,%eax
 80531f0:	74 5b                	je     805324d <printType+0x7f>
 80531f2:	eb 6f                	jmp    8053263 <printType+0x95>
 80531f4:	8b 45 08             	mov    0x8(%ebp),%eax
 80531f7:	8b 40 04             	mov    0x4(%eax),%eax
 80531fa:	85 c0                	test   %eax,%eax
 80531fc:	75 12                	jne    8053210 <printType+0x42>
 80531fe:	83 ec 0c             	sub    $0xc,%esp
 8053201:	68 20 54 05 08       	push   $0x8055420
 8053206:	e8 b5 55 ff ff       	call   80487c0 <printf@plt>
 805320b:	83 c4 10             	add    $0x10,%esp
 805320e:	eb 53                	jmp    8053263 <printType+0x95>
 8053210:	83 ec 0c             	sub    $0xc,%esp
 8053213:	68 24 54 05 08       	push   $0x8055424
 8053218:	e8 a3 55 ff ff       	call   80487c0 <printf@plt>
 805321d:	83 c4 10             	add    $0x10,%esp
 8053220:	eb 41                	jmp    8053263 <printType+0x95>
 8053222:	8b 45 08             	mov    0x8(%ebp),%eax
 8053225:	8b 40 08             	mov    0x8(%eax),%eax
 8053228:	83 ec 08             	sub    $0x8,%esp
 805322b:	50                   	push   %eax
 805322c:	68 2a 54 05 08       	push   $0x805542a
 8053231:	e8 8a 55 ff ff       	call   80487c0 <printf@plt>
 8053236:	83 c4 10             	add    $0x10,%esp
 8053239:	8b 45 08             	mov    0x8(%ebp),%eax
 805323c:	8b 40 04             	mov    0x4(%eax),%eax
 805323f:	83 ec 0c             	sub    $0xc,%esp
 8053242:	50                   	push   %eax
 8053243:	e8 86 ff ff ff       	call   80531ce <printType>
 8053248:	83 c4 10             	add    $0x10,%esp
 805324b:	eb 16                	jmp    8053263 <printType+0x95>
 805324d:	8b 45 08             	mov    0x8(%ebp),%eax
 8053250:	8b 40 04             	mov    0x4(%eax),%eax
 8053253:	83 ec 0c             	sub    $0xc,%esp
 8053256:	50                   	push   %eax
 8053257:	e8 d6 fe ff ff       	call   8053132 <printFieldList>
 805325c:	83 c4 10             	add    $0x10,%esp
 805325f:	90                   	nop
 8053260:	eb 01                	jmp    8053263 <printType+0x95>
 8053262:	90                   	nop
 8053263:	c9                   	leave  
 8053264:	c3                   	ret    

08053265 <printFunc>:
 8053265:	55                   	push   %ebp
 8053266:	89 e5                	mov    %esp,%ebp
 8053268:	83 ec 08             	sub    $0x8,%esp
 805326b:	8b 45 08             	mov    0x8(%ebp),%eax
 805326e:	8b 00                	mov    (%eax),%eax
 8053270:	83 ec 0c             	sub    $0xc,%esp
 8053273:	50                   	push   %eax
 8053274:	e8 55 ff ff ff       	call   80531ce <printType>
 8053279:	83 c4 10             	add    $0x10,%esp
 805327c:	83 ec 0c             	sub    $0xc,%esp
 805327f:	68 2f 54 05 08       	push   $0x805542f
 8053284:	e8 37 55 ff ff       	call   80487c0 <printf@plt>
 8053289:	83 c4 10             	add    $0x10,%esp
 805328c:	8b 45 08             	mov    0x8(%ebp),%eax
 805328f:	8b 40 04             	mov    0x4(%eax),%eax
 8053292:	83 ec 0c             	sub    $0xc,%esp
 8053295:	50                   	push   %eax
 8053296:	e8 97 fe ff ff       	call   8053132 <printFieldList>
 805329b:	83 c4 10             	add    $0x10,%esp
 805329e:	83 ec 0c             	sub    $0xc,%esp
 80532a1:	6a 29                	push   $0x29
 80532a3:	e8 68 56 ff ff       	call   8048910 <putchar@plt>
 80532a8:	83 c4 10             	add    $0x10,%esp
 80532ab:	90                   	nop
 80532ac:	c9                   	leave  
 80532ad:	c3                   	ret    

080532ae <printFuncType>:
 80532ae:	55                   	push   %ebp
 80532af:	89 e5                	mov    %esp,%ebp
 80532b1:	83 ec 18             	sub    $0x18,%esp
 80532b4:	8b 45 08             	mov    0x8(%ebp),%eax
 80532b7:	8b 40 04             	mov    0x4(%eax),%eax
 80532ba:	83 ec 08             	sub    $0x8,%esp
 80532bd:	50                   	push   %eax
 80532be:	68 32 54 05 08       	push   $0x8055432
 80532c3:	e8 f8 54 ff ff       	call   80487c0 <printf@plt>
 80532c8:	83 c4 10             	add    $0x10,%esp
 80532cb:	83 ec 0c             	sub    $0xc,%esp
 80532ce:	6a 28                	push   $0x28
 80532d0:	e8 3b 56 ff ff       	call   8048910 <putchar@plt>
 80532d5:	83 c4 10             	add    $0x10,%esp
 80532d8:	8b 45 08             	mov    0x8(%ebp),%eax
 80532db:	8b 40 0c             	mov    0xc(%eax),%eax
 80532de:	8b 40 04             	mov    0x4(%eax),%eax
 80532e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80532e4:	eb 28                	jmp    805330e <printFuncType+0x60>
 80532e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80532e9:	8b 40 04             	mov    0x4(%eax),%eax
 80532ec:	83 ec 0c             	sub    $0xc,%esp
 80532ef:	50                   	push   %eax
 80532f0:	e8 d9 fe ff ff       	call   80531ce <printType>
 80532f5:	83 c4 10             	add    $0x10,%esp
 80532f8:	83 ec 0c             	sub    $0xc,%esp
 80532fb:	6a 2c                	push   $0x2c
 80532fd:	e8 0e 56 ff ff       	call   8048910 <putchar@plt>
 8053302:	83 c4 10             	add    $0x10,%esp
 8053305:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053308:	8b 40 08             	mov    0x8(%eax),%eax
 805330b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805330e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8053312:	74 0a                	je     805331e <printFuncType+0x70>
 8053314:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053317:	8b 40 08             	mov    0x8(%eax),%eax
 805331a:	85 c0                	test   %eax,%eax
 805331c:	75 c8                	jne    80532e6 <printFuncType+0x38>
 805331e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053321:	8b 40 04             	mov    0x4(%eax),%eax
 8053324:	83 ec 0c             	sub    $0xc,%esp
 8053327:	50                   	push   %eax
 8053328:	e8 a1 fe ff ff       	call   80531ce <printType>
 805332d:	83 c4 10             	add    $0x10,%esp
 8053330:	83 ec 0c             	sub    $0xc,%esp
 8053333:	6a 29                	push   $0x29
 8053335:	e8 d6 55 ff ff       	call   8048910 <putchar@plt>
 805333a:	83 c4 10             	add    $0x10,%esp
 805333d:	90                   	nop
 805333e:	c9                   	leave  
 805333f:	c3                   	ret    

08053340 <printSymbol>:
 8053340:	55                   	push   %ebp
 8053341:	89 e5                	mov    %esp,%ebp
 8053343:	83 ec 08             	sub    $0x8,%esp
 8053346:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 805334a:	0f 84 d1 00 00 00    	je     8053421 <printSymbol+0xe1>
 8053350:	8b 45 08             	mov    0x8(%ebp),%eax
 8053353:	8b 00                	mov    (%eax),%eax
 8053355:	85 c0                	test   %eax,%eax
 8053357:	75 3e                	jne    8053397 <printSymbol+0x57>
 8053359:	83 ec 0c             	sub    $0xc,%esp
 805335c:	68 35 54 05 08       	push   $0x8055435
 8053361:	e8 5a 54 ff ff       	call   80487c0 <printf@plt>
 8053366:	83 c4 10             	add    $0x10,%esp
 8053369:	8b 45 08             	mov    0x8(%ebp),%eax
 805336c:	8b 40 04             	mov    0x4(%eax),%eax
 805336f:	83 ec 08             	sub    $0x8,%esp
 8053372:	50                   	push   %eax
 8053373:	68 3a 54 05 08       	push   $0x805543a
 8053378:	e8 43 54 ff ff       	call   80487c0 <printf@plt>
 805337d:	83 c4 10             	add    $0x10,%esp
 8053380:	8b 45 08             	mov    0x8(%ebp),%eax
 8053383:	8b 40 0c             	mov    0xc(%eax),%eax
 8053386:	83 ec 0c             	sub    $0xc,%esp
 8053389:	50                   	push   %eax
 805338a:	e8 3f fe ff ff       	call   80531ce <printType>
 805338f:	83 c4 10             	add    $0x10,%esp
 8053392:	e9 8b 00 00 00       	jmp    8053422 <printSymbol+0xe2>
 8053397:	8b 45 08             	mov    0x8(%ebp),%eax
 805339a:	8b 00                	mov    (%eax),%eax
 805339c:	83 f8 01             	cmp    $0x1,%eax
 805339f:	75 3b                	jne    80533dc <printSymbol+0x9c>
 80533a1:	83 ec 0c             	sub    $0xc,%esp
 80533a4:	68 3f 54 05 08       	push   $0x805543f
 80533a9:	e8 12 54 ff ff       	call   80487c0 <printf@plt>
 80533ae:	83 c4 10             	add    $0x10,%esp
 80533b1:	8b 45 08             	mov    0x8(%ebp),%eax
 80533b4:	8b 40 04             	mov    0x4(%eax),%eax
 80533b7:	83 ec 08             	sub    $0x8,%esp
 80533ba:	50                   	push   %eax
 80533bb:	68 3a 54 05 08       	push   $0x805543a
 80533c0:	e8 fb 53 ff ff       	call   80487c0 <printf@plt>
 80533c5:	83 c4 10             	add    $0x10,%esp
 80533c8:	8b 45 08             	mov    0x8(%ebp),%eax
 80533cb:	8b 40 0c             	mov    0xc(%eax),%eax
 80533ce:	83 ec 0c             	sub    $0xc,%esp
 80533d1:	50                   	push   %eax
 80533d2:	e8 8e fe ff ff       	call   8053265 <printFunc>
 80533d7:	83 c4 10             	add    $0x10,%esp
 80533da:	eb 46                	jmp    8053422 <printSymbol+0xe2>
 80533dc:	8b 45 08             	mov    0x8(%ebp),%eax
 80533df:	8b 00                	mov    (%eax),%eax
 80533e1:	83 f8 02             	cmp    $0x2,%eax
 80533e4:	75 3c                	jne    8053422 <printSymbol+0xe2>
 80533e6:	83 ec 0c             	sub    $0xc,%esp
 80533e9:	68 45 54 05 08       	push   $0x8055445
 80533ee:	e8 cd 53 ff ff       	call   80487c0 <printf@plt>
 80533f3:	83 c4 10             	add    $0x10,%esp
 80533f6:	8b 45 08             	mov    0x8(%ebp),%eax
 80533f9:	8b 40 04             	mov    0x4(%eax),%eax
 80533fc:	83 ec 08             	sub    $0x8,%esp
 80533ff:	50                   	push   %eax
 8053400:	68 3a 54 05 08       	push   $0x805543a
 8053405:	e8 b6 53 ff ff       	call   80487c0 <printf@plt>
 805340a:	83 c4 10             	add    $0x10,%esp
 805340d:	8b 45 08             	mov    0x8(%ebp),%eax
 8053410:	8b 40 0c             	mov    0xc(%eax),%eax
 8053413:	83 ec 0c             	sub    $0xc,%esp
 8053416:	50                   	push   %eax
 8053417:	e8 b2 fd ff ff       	call   80531ce <printType>
 805341c:	83 c4 10             	add    $0x10,%esp
 805341f:	eb 01                	jmp    8053422 <printSymbol+0xe2>
 8053421:	90                   	nop
 8053422:	c9                   	leave  
 8053423:	c3                   	ret    

08053424 <printTable>:
 8053424:	55                   	push   %ebp
 8053425:	89 e5                	mov    %esp,%ebp
 8053427:	83 ec 18             	sub    $0x18,%esp
 805342a:	83 ec 0c             	sub    $0xc,%esp
 805342d:	68 50 54 05 08       	push   $0x8055450
 8053432:	e8 59 54 ff ff       	call   8048890 <puts@plt>
 8053437:	83 c4 10             	add    $0x10,%esp
 805343a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8053441:	eb 38                	jmp    805347b <printTable+0x57>
 8053443:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053446:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 805344d:	85 c0                	test   %eax,%eax
 805344f:	74 26                	je     8053477 <printTable+0x53>
 8053451:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053454:	8b 04 85 80 81 05 08 	mov    0x8058180(,%eax,4),%eax
 805345b:	83 ec 0c             	sub    $0xc,%esp
 805345e:	50                   	push   %eax
 805345f:	e8 dc fe ff ff       	call   8053340 <printSymbol>
 8053464:	83 c4 10             	add    $0x10,%esp
 8053467:	83 ec 0c             	sub    $0xc,%esp
 805346a:	68 50 54 05 08       	push   $0x8055450
 805346f:	e8 1c 54 ff ff       	call   8048890 <puts@plt>
 8053474:	83 c4 10             	add    $0x10,%esp
 8053477:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 805347b:	81 7d f4 fe 3f 00 00 	cmpl   $0x3ffe,-0xc(%ebp)
 8053482:	7e bf                	jle    8053443 <printTable+0x1f>
 8053484:	90                   	nop
 8053485:	c9                   	leave  
 8053486:	c3                   	ret    

08053487 <safe_strcmp>:
 8053487:	55                   	push   %ebp
 8053488:	89 e5                	mov    %esp,%ebp
 805348a:	83 ec 08             	sub    $0x8,%esp
 805348d:	8b 45 08             	mov    0x8(%ebp),%eax
 8053490:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8053493:	75 07                	jne    805349c <safe_strcmp+0x15>
 8053495:	b8 00 00 00 00       	mov    $0x0,%eax
 805349a:	eb 24                	jmp    80534c0 <safe_strcmp+0x39>
 805349c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80534a0:	74 06                	je     80534a8 <safe_strcmp+0x21>
 80534a2:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 80534a6:	75 07                	jne    80534af <safe_strcmp+0x28>
 80534a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80534ad:	eb 11                	jmp    80534c0 <safe_strcmp+0x39>
 80534af:	83 ec 08             	sub    $0x8,%esp
 80534b2:	ff 75 0c             	pushl  0xc(%ebp)
 80534b5:	ff 75 08             	pushl  0x8(%ebp)
 80534b8:	e8 f3 52 ff ff       	call   80487b0 <strcmp@plt>
 80534bd:	83 c4 10             	add    $0x10,%esp
 80534c0:	c9                   	leave  
 80534c1:	c3                   	ret    
 80534c2:	66 90                	xchg   %ax,%ax
 80534c4:	66 90                	xchg   %ax,%ax
 80534c6:	66 90                	xchg   %ax,%ax
 80534c8:	66 90                	xchg   %ax,%ax
 80534ca:	66 90                	xchg   %ax,%ax
 80534cc:	66 90                	xchg   %ax,%ax
 80534ce:	66 90                	xchg   %ax,%ax

080534d0 <yywrap>:
 80534d0:	b8 01 00 00 00       	mov    $0x1,%eax
 80534d5:	c3                   	ret    
 80534d6:	66 90                	xchg   %ax,%ax
 80534d8:	66 90                	xchg   %ax,%ax
 80534da:	66 90                	xchg   %ax,%ax
 80534dc:	66 90                	xchg   %ax,%ax
 80534de:	66 90                	xchg   %ax,%ax

080534e0 <__libc_csu_init>:
 80534e0:	55                   	push   %ebp
 80534e1:	57                   	push   %edi
 80534e2:	56                   	push   %esi
 80534e3:	53                   	push   %ebx
 80534e4:	e8 27 55 ff ff       	call   8048a10 <__x86.get_pc_thunk.bx>
 80534e9:	81 c3 17 4b 00 00    	add    $0x4b17,%ebx
 80534ef:	83 ec 0c             	sub    $0xc,%esp
 80534f2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80534f6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80534fc:	e8 7b 52 ff ff       	call   804877c <_init>
 8053501:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8053507:	29 c6                	sub    %eax,%esi
 8053509:	c1 fe 02             	sar    $0x2,%esi
 805350c:	85 f6                	test   %esi,%esi
 805350e:	74 25                	je     8053535 <__libc_csu_init+0x55>
 8053510:	31 ff                	xor    %edi,%edi
 8053512:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053518:	83 ec 04             	sub    $0x4,%esp
 805351b:	ff 74 24 2c          	pushl  0x2c(%esp)
 805351f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8053523:	55                   	push   %ebp
 8053524:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 805352b:	83 c7 01             	add    $0x1,%edi
 805352e:	83 c4 10             	add    $0x10,%esp
 8053531:	39 f7                	cmp    %esi,%edi
 8053533:	75 e3                	jne    8053518 <__libc_csu_init+0x38>
 8053535:	83 c4 0c             	add    $0xc,%esp
 8053538:	5b                   	pop    %ebx
 8053539:	5e                   	pop    %esi
 805353a:	5f                   	pop    %edi
 805353b:	5d                   	pop    %ebp
 805353c:	c3                   	ret    
 805353d:	8d 76 00             	lea    0x0(%esi),%esi

08053540 <__libc_csu_fini>:
 8053540:	f3 c3                	repz ret 

Disassembly of section .fini:

08053544 <_fini>:
 8053544:	53                   	push   %ebx
 8053545:	83 ec 08             	sub    $0x8,%esp
 8053548:	e8 c3 54 ff ff       	call   8048a10 <__x86.get_pc_thunk.bx>
 805354d:	81 c3 b3 4a 00 00    	add    $0x4ab3,%ebx
 8053553:	83 c4 08             	add    $0x8,%esp
 8053556:	5b                   	pop    %ebx
 8053557:	c3                   	ret    
