
parser：     文件格式 elf32-i386


Disassembly of section .init:

0804877c <_init>:
 804877c:	53                   	push   %ebx
 804877d:	83 ec 08             	sub    $0x8,%esp
 8048780:	e8 8b 02 00 00       	call   8048a10 <__x86.get_pc_thunk.bx>
 8048785:	81 c3 7b 08 01 00    	add    $0x1087b,%ebx
 804878b:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048791:	85 c0                	test   %eax,%eax
 8048793:	74 05                	je     804879a <_init+0x1e>
 8048795:	e8 36 02 00 00       	call   80489d0 <__assert_fail@plt+0x10>
 804879a:	83 c4 08             	add    $0x8,%esp
 804879d:	5b                   	pop    %ebx
 804879e:	c3                   	ret    

Disassembly of section .plt:

080487a0 <strcmp@plt-0x10>:
 80487a0:	ff 35 04 90 05 08    	pushl  0x8059004
 80487a6:	ff 25 08 90 05 08    	jmp    *0x8059008
 80487ac:	00 00                	add    %al,(%eax)
	...

080487b0 <strcmp@plt>:
 80487b0:	ff 25 0c 90 05 08    	jmp    *0x805900c
 80487b6:	68 00 00 00 00       	push   $0x0
 80487bb:	e9 e0 ff ff ff       	jmp    80487a0 <_init+0x24>

080487c0 <printf@plt>:
 80487c0:	ff 25 10 90 05 08    	jmp    *0x8059010
 80487c6:	68 08 00 00 00       	push   $0x8
 80487cb:	e9 d0 ff ff ff       	jmp    80487a0 <_init+0x24>

080487d0 <free@plt>:
 80487d0:	ff 25 14 90 05 08    	jmp    *0x8059014
 80487d6:	68 10 00 00 00       	push   $0x10
 80487db:	e9 c0 ff ff ff       	jmp    80487a0 <_init+0x24>

080487e0 <memcpy@plt>:
 80487e0:	ff 25 18 90 05 08    	jmp    *0x8059018
 80487e6:	68 18 00 00 00       	push   $0x18
 80487eb:	e9 b0 ff ff ff       	jmp    80487a0 <_init+0x24>

080487f0 <ferror@plt>:
 80487f0:	ff 25 1c 90 05 08    	jmp    *0x805901c
 80487f6:	68 20 00 00 00       	push   $0x20
 80487fb:	e9 a0 ff ff ff       	jmp    80487a0 <_init+0x24>

08048800 <fclose@plt>:
 8048800:	ff 25 20 90 05 08    	jmp    *0x8059020
 8048806:	68 28 00 00 00       	push   $0x28
 804880b:	e9 90 ff ff ff       	jmp    80487a0 <_init+0x24>

08048810 <__stack_chk_fail@plt>:
 8048810:	ff 25 24 90 05 08    	jmp    *0x8059024
 8048816:	68 30 00 00 00       	push   $0x30
 804881b:	e9 80 ff ff ff       	jmp    80487a0 <_init+0x24>

08048820 <_IO_getc@plt>:
 8048820:	ff 25 28 90 05 08    	jmp    *0x8059028
 8048826:	68 38 00 00 00       	push   $0x38
 804882b:	e9 70 ff ff ff       	jmp    80487a0 <_init+0x24>

08048830 <perror@plt>:
 8048830:	ff 25 2c 90 05 08    	jmp    *0x805902c
 8048836:	68 40 00 00 00       	push   $0x40
 804883b:	e9 60 ff ff ff       	jmp    80487a0 <_init+0x24>

08048840 <fwrite@plt>:
 8048840:	ff 25 30 90 05 08    	jmp    *0x8059030
 8048846:	68 48 00 00 00       	push   $0x48
 804884b:	e9 50 ff ff ff       	jmp    80487a0 <_init+0x24>

08048850 <fread@plt>:
 8048850:	ff 25 34 90 05 08    	jmp    *0x8059034
 8048856:	68 50 00 00 00       	push   $0x50
 804885b:	e9 40 ff ff ff       	jmp    80487a0 <_init+0x24>

08048860 <strcpy@plt>:
 8048860:	ff 25 38 90 05 08    	jmp    *0x8059038
 8048866:	68 58 00 00 00       	push   $0x58
 804886b:	e9 30 ff ff ff       	jmp    80487a0 <_init+0x24>

08048870 <realloc@plt>:
 8048870:	ff 25 3c 90 05 08    	jmp    *0x805903c
 8048876:	68 60 00 00 00       	push   $0x60
 804887b:	e9 20 ff ff ff       	jmp    80487a0 <_init+0x24>

08048880 <malloc@plt>:
 8048880:	ff 25 40 90 05 08    	jmp    *0x8059040
 8048886:	68 68 00 00 00       	push   $0x68
 804888b:	e9 10 ff ff ff       	jmp    80487a0 <_init+0x24>

08048890 <puts@plt>:
 8048890:	ff 25 44 90 05 08    	jmp    *0x8059044
 8048896:	68 70 00 00 00       	push   $0x70
 804889b:	e9 00 ff ff ff       	jmp    80487a0 <_init+0x24>

080488a0 <exit@plt>:
 80488a0:	ff 25 48 90 05 08    	jmp    *0x8059048
 80488a6:	68 78 00 00 00       	push   $0x78
 80488ab:	e9 f0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488b0 <strlen@plt>:
 80488b0:	ff 25 4c 90 05 08    	jmp    *0x805904c
 80488b6:	68 80 00 00 00       	push   $0x80
 80488bb:	e9 e0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488c0 <vprintf@plt>:
 80488c0:	ff 25 50 90 05 08    	jmp    *0x8059050
 80488c6:	68 88 00 00 00       	push   $0x88
 80488cb:	e9 d0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488d0 <__libc_start_main@plt>:
 80488d0:	ff 25 54 90 05 08    	jmp    *0x8059054
 80488d6:	68 90 00 00 00       	push   $0x90
 80488db:	e9 c0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488e0 <fprintf@plt>:
 80488e0:	ff 25 58 90 05 08    	jmp    *0x8059058
 80488e6:	68 98 00 00 00       	push   $0x98
 80488eb:	e9 b0 fe ff ff       	jmp    80487a0 <_init+0x24>

080488f0 <fopen@plt>:
 80488f0:	ff 25 5c 90 05 08    	jmp    *0x805905c
 80488f6:	68 a0 00 00 00       	push   $0xa0
 80488fb:	e9 a0 fe ff ff       	jmp    80487a0 <_init+0x24>

08048900 <memset@plt>:
 8048900:	ff 25 60 90 05 08    	jmp    *0x8059060
 8048906:	68 a8 00 00 00       	push   $0xa8
 804890b:	e9 90 fe ff ff       	jmp    80487a0 <_init+0x24>

08048910 <putchar@plt>:
 8048910:	ff 25 64 90 05 08    	jmp    *0x8059064
 8048916:	68 b0 00 00 00       	push   $0xb0
 804891b:	e9 80 fe ff ff       	jmp    80487a0 <_init+0x24>

08048920 <__errno_location@plt>:
 8048920:	ff 25 68 90 05 08    	jmp    *0x8059068
 8048926:	68 b8 00 00 00       	push   $0xb8
 804892b:	e9 70 fe ff ff       	jmp    80487a0 <_init+0x24>

08048930 <strncpy@plt>:
 8048930:	ff 25 6c 90 05 08    	jmp    *0x805906c
 8048936:	68 c0 00 00 00       	push   $0xc0
 804893b:	e9 60 fe ff ff       	jmp    80487a0 <_init+0x24>

08048940 <fileno@plt>:
 8048940:	ff 25 70 90 05 08    	jmp    *0x8059070
 8048946:	68 c8 00 00 00       	push   $0xc8
 804894b:	e9 50 fe ff ff       	jmp    80487a0 <_init+0x24>

08048950 <fputc@plt>:
 8048950:	ff 25 74 90 05 08    	jmp    *0x8059074
 8048956:	68 d0 00 00 00       	push   $0xd0
 804895b:	e9 40 fe ff ff       	jmp    80487a0 <_init+0x24>

08048960 <clearerr@plt>:
 8048960:	ff 25 78 90 05 08    	jmp    *0x8059078
 8048966:	68 d8 00 00 00       	push   $0xd8
 804896b:	e9 30 fe ff ff       	jmp    80487a0 <_init+0x24>

08048970 <atoi@plt>:
 8048970:	ff 25 7c 90 05 08    	jmp    *0x805907c
 8048976:	68 e0 00 00 00       	push   $0xe0
 804897b:	e9 20 fe ff ff       	jmp    80487a0 <_init+0x24>

08048980 <atof@plt>:
 8048980:	ff 25 80 90 05 08    	jmp    *0x8059080
 8048986:	68 e8 00 00 00       	push   $0xe8
 804898b:	e9 10 fe ff ff       	jmp    80487a0 <_init+0x24>

08048990 <isatty@plt>:
 8048990:	ff 25 84 90 05 08    	jmp    *0x8059084
 8048996:	68 f0 00 00 00       	push   $0xf0
 804899b:	e9 00 fe ff ff       	jmp    80487a0 <_init+0x24>

080489a0 <strtol@plt>:
 80489a0:	ff 25 88 90 05 08    	jmp    *0x8059088
 80489a6:	68 f8 00 00 00       	push   $0xf8
 80489ab:	e9 f0 fd ff ff       	jmp    80487a0 <_init+0x24>

080489b0 <fputs@plt>:
 80489b0:	ff 25 8c 90 05 08    	jmp    *0x805908c
 80489b6:	68 00 01 00 00       	push   $0x100
 80489bb:	e9 e0 fd ff ff       	jmp    80487a0 <_init+0x24>

080489c0 <__assert_fail@plt>:
 80489c0:	ff 25 90 90 05 08    	jmp    *0x8059090
 80489c6:	68 08 01 00 00       	push   $0x108
 80489cb:	e9 d0 fd ff ff       	jmp    80487a0 <_init+0x24>

Disassembly of section .plt.got:

080489d0 <.plt.got>:
 80489d0:	ff 25 fc 8f 05 08    	jmp    *0x8058ffc
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
 80489eb:	68 c0 3e 05 08       	push   $0x8053ec0
 80489f0:	68 60 3e 05 08       	push   $0x8053e60
 80489f5:	51                   	push   %ecx
 80489f6:	56                   	push   %esi
 80489f7:	68 1d ad 04 08       	push   $0x804ad1d
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
 8048a20:	b8 c7 90 05 08       	mov    $0x80590c7,%eax
 8048a25:	2d c4 90 05 08       	sub    $0x80590c4,%eax
 8048a2a:	83 f8 06             	cmp    $0x6,%eax
 8048a2d:	76 1a                	jbe    8048a49 <deregister_tm_clones+0x29>
 8048a2f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048a34:	85 c0                	test   %eax,%eax
 8048a36:	74 11                	je     8048a49 <deregister_tm_clones+0x29>
 8048a38:	55                   	push   %ebp
 8048a39:	89 e5                	mov    %esp,%ebp
 8048a3b:	83 ec 14             	sub    $0x14,%esp
 8048a3e:	68 c4 90 05 08       	push   $0x80590c4
 8048a43:	ff d0                	call   *%eax
 8048a45:	83 c4 10             	add    $0x10,%esp
 8048a48:	c9                   	leave  
 8048a49:	f3 c3                	repz ret 
 8048a4b:	90                   	nop
 8048a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048a50 <register_tm_clones>:
 8048a50:	b8 c4 90 05 08       	mov    $0x80590c4,%eax
 8048a55:	2d c4 90 05 08       	sub    $0x80590c4,%eax
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
 8048a78:	68 c4 90 05 08       	push   $0x80590c4
 8048a7d:	ff d2                	call   *%edx
 8048a7f:	83 c4 10             	add    $0x10,%esp
 8048a82:	c9                   	leave  
 8048a83:	f3 c3                	repz ret 
 8048a85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048a89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048a90 <__do_global_dtors_aux>:
 8048a90:	80 3d 08 91 05 08 00 	cmpb   $0x0,0x8059108
 8048a97:	75 13                	jne    8048aac <__do_global_dtors_aux+0x1c>
 8048a99:	55                   	push   %ebp
 8048a9a:	89 e5                	mov    %esp,%ebp
 8048a9c:	83 ec 08             	sub    $0x8,%esp
 8048a9f:	e8 7c ff ff ff       	call   8048a20 <deregister_tm_clones>
 8048aa4:	c6 05 08 91 05 08 01 	movb   $0x1,0x8059108
 8048aab:	c9                   	leave  
 8048aac:	f3 c3                	repz ret 
 8048aae:	66 90                	xchg   %ax,%ax

08048ab0 <frame_dummy>:
 8048ab0:	b8 10 8f 05 08       	mov    $0x8058f10,%eax
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
 8048bc7:	68 e8 3e 05 08       	push   $0x8053ee8
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
 8048bfb:	68 eb 3e 05 08       	push   $0x8053eeb
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
 8048c69:	68 f4 3e 05 08       	push   $0x8053ef4
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
 8048c8c:	68 fc 3e 05 08       	push   $0x8053efc
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
 8048cac:	68 04 3f 05 08       	push   $0x8053f04
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
 8048ccc:	68 04 3f 05 08       	push   $0x8053f04
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
 8048db0:	e8 02 16 00 00       	call   804a3b7 <checkFunc>
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
 8048ed3:	e8 6d a6 00 00       	call   8053545 <searchTable>
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
 8048f12:	a1 24 91 05 08       	mov    0x8059124,%eax
 8048f17:	83 c0 01             	add    $0x1,%eax
 8048f1a:	a3 24 91 05 08       	mov    %eax,0x8059124
 8048f1f:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048f22:	8b 50 04             	mov    0x4(%eax),%edx
 8048f25:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048f28:	8b 00                	mov    (%eax),%eax
 8048f2a:	83 ec 04             	sub    $0x4,%esp
 8048f2d:	52                   	push   %edx
 8048f2e:	50                   	push   %eax
 8048f2f:	68 0c 3f 05 08       	push   $0x8053f0c
 8048f34:	e8 87 f8 ff ff       	call   80487c0 <printf@plt>
 8048f39:	83 c4 10             	add    $0x10,%esp
 8048f3c:	e9 af 00 00 00       	jmp    8048ff0 <ExtDef+0x1d5>
 8048f41:	83 ec 08             	sub    $0x8,%esp
 8048f44:	ff 75 d8             	pushl  -0x28(%ebp)
 8048f47:	ff 75 f0             	pushl  -0x10(%ebp)
 8048f4a:	e8 d6 aa 00 00       	call   8053a25 <compareFunction>
 8048f4f:	83 c4 10             	add    $0x10,%esp
 8048f52:	85 c0                	test   %eax,%eax
 8048f54:	75 2f                	jne    8048f85 <ExtDef+0x16a>
 8048f56:	a1 24 91 05 08       	mov    0x8059124,%eax
 8048f5b:	83 c0 01             	add    $0x1,%eax
 8048f5e:	a3 24 91 05 08       	mov    %eax,0x8059124
 8048f63:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048f66:	8b 50 04             	mov    0x4(%eax),%edx
 8048f69:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048f6c:	8b 00                	mov    (%eax),%eax
 8048f6e:	83 ec 04             	sub    $0x4,%esp
 8048f71:	52                   	push   %edx
 8048f72:	50                   	push   %eax
 8048f73:	68 40 3f 05 08       	push   $0x8053f40
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
 8048fb5:	e8 03 a6 00 00       	call   80535bd <insertTable>
 8048fba:	83 c4 10             	add    $0x10,%esp
 8048fbd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048fc0:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 8048fc4:	75 2a                	jne    8048ff0 <ExtDef+0x1d5>
 8048fc6:	a1 24 91 05 08       	mov    0x8059124,%eax
 8048fcb:	83 c0 01             	add    $0x1,%eax
 8048fce:	a3 24 91 05 08       	mov    %eax,0x8059124
 8048fd3:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048fd6:	8b 50 04             	mov    0x4(%eax),%edx
 8048fd9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048fdc:	8b 00                	mov    (%eax),%eax
 8048fde:	83 ec 04             	sub    $0x4,%esp
 8048fe1:	52                   	push   %edx
 8048fe2:	50                   	push   %eax
 8048fe3:	68 0c 3f 05 08       	push   $0x8053f0c
 8048fe8:	e8 d3 f7 ff ff       	call   80487c0 <printf@plt>
 8048fed:	83 c4 10             	add    $0x10,%esp
 8048ff0:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ff3:	8b 40 1c             	mov    0x1c(%eax),%eax
 8048ff6:	8b 40 04             	mov    0x4(%eax),%eax
 8048ff9:	83 f8 2b             	cmp    $0x2b,%eax
 8048ffc:	75 4b                	jne    8049049 <ExtDef+0x22e>
 8048ffe:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8049001:	8b 40 0c             	mov    0xc(%eax),%eax
 8049004:	a3 58 91 05 08       	mov    %eax,0x8059158
 8049009:	8b 45 08             	mov    0x8(%ebp),%eax
 804900c:	8b 40 1c             	mov    0x1c(%eax),%eax
 804900f:	83 ec 0c             	sub    $0xc,%esp
 8049012:	50                   	push   %eax
 8049013:	e8 c3 05 00 00       	call   80495db <CompSt>
 8049018:	83 c4 10             	add    $0x10,%esp
 804901b:	c7 05 58 91 05 08 00 	movl   $0x0,0x8059158
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
 8049074:	e8 44 a5 00 00       	call   80535bd <insertTable>
 8049079:	83 c4 10             	add    $0x10,%esp
 804907c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804907f:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 8049083:	75 2b                	jne    80490b0 <ExtDecList+0x65>
 8049085:	a1 24 91 05 08       	mov    0x8059124,%eax
 804908a:	83 c0 01             	add    $0x1,%eax
 804908d:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049092:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049095:	8b 50 04             	mov    0x4(%eax),%edx
 8049098:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804909b:	8b 40 08             	mov    0x8(%eax),%eax
 804909e:	83 ec 04             	sub    $0x4,%esp
 80490a1:	52                   	push   %edx
 80490a2:	50                   	push   %eax
 80490a3:	68 88 3f 05 08       	push   $0x8053f88
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
 8049116:	68 bb 3f 05 08       	push   $0x8053fbb
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
 804913d:	68 bf 3f 05 08       	push   $0x8053fbf
 8049142:	50                   	push   %eax
 8049143:	e8 68 f6 ff ff       	call   80487b0 <strcmp@plt>
 8049148:	83 c4 10             	add    $0x10,%esp
 804914b:	85 c0                	test   %eax,%eax
 804914d:	75 0c                	jne    804915b <Specifier+0x88>
 804914f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049152:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 8049159:	eb 51                	jmp    80491ac <Specifier+0xd9>
 804915b:	68 90 44 05 08       	push   $0x8054490
 8049160:	6a 7c                	push   $0x7c
 8049162:	68 c5 3f 05 08       	push   $0x8053fc5
 8049167:	68 cf 3f 05 08       	push   $0x8053fcf
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
 8049193:	68 90 44 05 08       	push   $0x8054490
 8049198:	68 84 00 00 00       	push   $0x84
 804919d:	68 c5 3f 05 08       	push   $0x8053fc5
 80491a2:	68 cf 3f 05 08       	push   $0x8053fcf
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
 8049202:	e8 3e a3 00 00       	call   8053545 <searchTable>
 8049207:	83 c4 10             	add    $0x10,%esp
 804920a:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804920d:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 8049211:	74 0a                	je     804921d <StructSpecifier+0x6c>
 8049213:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049216:	8b 00                	mov    (%eax),%eax
 8049218:	83 f8 02             	cmp    $0x2,%eax
 804921b:	74 40                	je     804925d <StructSpecifier+0xac>
 804921d:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049222:	83 c0 01             	add    $0x1,%eax
 8049225:	a3 24 91 05 08       	mov    %eax,0x8059124
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
 8049246:	68 d4 3f 05 08       	push   $0x8053fd4
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
 804930a:	e8 5c a0 00 00       	call   805336b <newTypeSymbol>
 804930f:	83 c4 10             	add    $0x10,%esp
 8049312:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049315:	83 ec 0c             	sub    $0xc,%esp
 8049318:	ff 75 f0             	pushl  -0x10(%ebp)
 804931b:	e8 9d a2 00 00       	call   80535bd <insertTable>
 8049320:	83 c4 10             	add    $0x10,%esp
 8049323:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049326:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 804932a:	75 2a                	jne    8049356 <StructSpecifier+0x1a5>
 804932c:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049331:	83 c0 01             	add    $0x1,%eax
 8049334:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049339:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804933c:	8b 50 04             	mov    0x4(%eax),%edx
 804933f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049342:	8b 00                	mov    (%eax),%eax
 8049344:	83 ec 04             	sub    $0x4,%esp
 8049347:	52                   	push   %edx
 8049348:	50                   	push   %eax
 8049349:	68 0c 40 05 08       	push   $0x805400c
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
 804938b:	e8 db 9f 00 00       	call   805336b <newTypeSymbol>
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
 80493f5:	68 9c 44 05 08       	push   $0x805449c
 80493fa:	68 d8 00 00 00       	push   $0xd8
 80493ff:	68 c5 3f 05 08       	push   $0x8053fc5
 8049404:	68 cf 3f 05 08       	push   $0x8053fcf
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
 8049494:	e8 56 9f 00 00       	call   80533ef <newFuncSymbol>
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
 804952e:	e8 8a a0 00 00       	call   80535bd <insertTable>
 8049533:	83 c4 10             	add    $0x10,%esp
 8049536:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049539:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 804953d:	75 2b                	jne    804956a <ParamDec+0x7b>
 804953f:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049544:	83 c0 01             	add    $0x1,%eax
 8049547:	a3 24 91 05 08       	mov    %eax,0x8059124
 804954c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804954f:	8b 50 04             	mov    0x4(%eax),%edx
 8049552:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049555:	8b 40 08             	mov    0x8(%eax),%eax
 8049558:	83 ec 04             	sub    $0x4,%esp
 804955b:	52                   	push   %edx
 804955c:	50                   	push   %eax
 804955d:	68 88 3f 05 08       	push   $0x8053f88
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
 80496a2:	8b 04 85 98 40 05 08 	mov    0x8054098(,%eax,4),%eax
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
 80496d1:	a1 58 91 05 08       	mov    0x8059158,%eax
 80496d6:	85 c0                	test   %eax,%eax
 80496d8:	75 40                	jne    804971a <Stmt+0xa0>
 80496da:	a1 24 91 05 08       	mov    0x8059124,%eax
 80496df:	83 c0 01             	add    $0x1,%eax
 80496e2:	a3 24 91 05 08       	mov    %eax,0x8059124
 80496e7:	8b 45 08             	mov    0x8(%ebp),%eax
 80496ea:	8b 00                	mov    (%eax),%eax
 80496ec:	68 3d 40 05 08       	push   $0x805403d
 80496f1:	50                   	push   %eax
 80496f2:	6a 08                	push   $0x8
 80496f4:	68 59 40 05 08       	push   $0x8054059
 80496f9:	e8 c2 f0 ff ff       	call   80487c0 <printf@plt>
 80496fe:	83 c4 10             	add    $0x10,%esp
 8049701:	68 a4 44 05 08       	push   $0x80544a4
 8049706:	68 44 01 00 00       	push   $0x144
 804970b:	68 c5 3f 05 08       	push   $0x8053fc5
 8049710:	68 cf 3f 05 08       	push   $0x8053fcf
 8049715:	e8 a6 f2 ff ff       	call   80489c0 <__assert_fail@plt>
 804971a:	8b 45 08             	mov    0x8(%ebp),%eax
 804971d:	8b 40 18             	mov    0x18(%eax),%eax
 8049720:	83 ec 0c             	sub    $0xc,%esp
 8049723:	50                   	push   %eax
 8049724:	e8 0a 04 00 00       	call   8049b33 <Exp>
 8049729:	83 c4 10             	add    $0x10,%esp
 804972c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804972f:	a1 58 91 05 08       	mov    0x8059158,%eax
 8049734:	8b 00                	mov    (%eax),%eax
 8049736:	83 ec 08             	sub    $0x8,%esp
 8049739:	ff 75 f4             	pushl  -0xc(%ebp)
 804973c:	50                   	push   %eax
 804973d:	e8 70 a1 00 00       	call   80538b2 <compareType>
 8049742:	83 c4 10             	add    $0x10,%esp
 8049745:	85 c0                	test   %eax,%eax
 8049747:	0f 85 52 01 00 00    	jne    804989f <Stmt+0x225>
 804974d:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049752:	83 c0 01             	add    $0x1,%eax
 8049755:	a3 24 91 05 08       	mov    %eax,0x8059124
 804975a:	8b 45 08             	mov    0x8(%ebp),%eax
 804975d:	8b 00                	mov    (%eax),%eax
 804975f:	68 3d 40 05 08       	push   $0x805403d
 8049764:	50                   	push   %eax
 8049765:	6a 08                	push   $0x8
 8049767:	68 59 40 05 08       	push   $0x8054059
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
 80497a7:	a1 24 91 05 08       	mov    0x8059124,%eax
 80497ac:	83 c0 01             	add    $0x1,%eax
 80497af:	a3 24 91 05 08       	mov    %eax,0x8059124
 80497b4:	8b 45 08             	mov    0x8(%ebp),%eax
 80497b7:	8b 40 1c             	mov    0x1c(%eax),%eax
 80497ba:	8b 00                	mov    (%eax),%eax
 80497bc:	68 78 40 05 08       	push   $0x8054078
 80497c1:	50                   	push   %eax
 80497c2:	6a 07                	push   $0x7
 80497c4:	68 59 40 05 08       	push   $0x8054059
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
 8049848:	a1 24 91 05 08       	mov    0x8059124,%eax
 804984d:	83 c0 01             	add    $0x1,%eax
 8049850:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049855:	8b 45 08             	mov    0x8(%ebp),%eax
 8049858:	8b 40 1c             	mov    0x1c(%eax),%eax
 804985b:	8b 00                	mov    (%eax),%eax
 804985d:	68 78 40 05 08       	push   $0x8054078
 8049862:	50                   	push   %eax
 8049863:	6a 07                	push   $0x7
 8049865:	68 59 40 05 08       	push   $0x8054059
 804986a:	e8 51 ef ff ff       	call   80487c0 <printf@plt>
 804986f:	83 c4 10             	add    $0x10,%esp
 8049872:	8b 45 08             	mov    0x8(%ebp),%eax
 8049875:	8b 40 24             	mov    0x24(%eax),%eax
 8049878:	83 ec 0c             	sub    $0xc,%esp
 804987b:	50                   	push   %eax
 804987c:	e8 f9 fd ff ff       	call   804967a <Stmt>
 8049881:	83 c4 10             	add    $0x10,%esp
 8049884:	eb 1d                	jmp    80498a3 <Stmt+0x229>
 8049886:	68 a4 44 05 08       	push   $0x80544a4
 804988b:	68 5f 01 00 00       	push   $0x15f
 8049890:	68 c5 3f 05 08       	push   $0x8053fc5
 8049895:	68 cf 3f 05 08       	push   $0x8053fcf
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
 80499c1:	e8 f7 9b 00 00       	call   80535bd <insertTable>
 80499c6:	83 c4 10             	add    $0x10,%esp
 80499c9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80499cc:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 80499d0:	75 2b                	jne    80499fd <Dec+0x6b>
 80499d2:	a1 24 91 05 08       	mov    0x8059124,%eax
 80499d7:	83 c0 01             	add    $0x1,%eax
 80499da:	a3 24 91 05 08       	mov    %eax,0x8059124
 80499df:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80499e2:	8b 50 04             	mov    0x4(%eax),%edx
 80499e5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80499e8:	8b 40 08             	mov    0x8(%eax),%eax
 80499eb:	83 ec 04             	sub    $0x4,%esp
 80499ee:	52                   	push   %edx
 80499ef:	50                   	push   %eax
 80499f0:	68 88 3f 05 08       	push   $0x8053f88
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
 8049a5e:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049a63:	83 c0 01             	add    $0x1,%eax
 8049a66:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049a6b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049a6e:	8b 50 04             	mov    0x4(%eax),%edx
 8049a71:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049a74:	8b 40 08             	mov    0x8(%eax),%eax
 8049a77:	83 ec 04             	sub    $0x4,%esp
 8049a7a:	52                   	push   %edx
 8049a7b:	50                   	push   %eax
 8049a7c:	68 f8 40 05 08       	push   $0x80540f8
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
 8049ace:	e8 df 9d 00 00       	call   80538b2 <compareType>
 8049ad3:	83 c4 10             	add    $0x10,%esp
 8049ad6:	85 c0                	test   %eax,%eax
 8049ad8:	75 27                	jne    8049b01 <Dec+0x16f>
 8049ada:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049adf:	83 c0 01             	add    $0x1,%eax
 8049ae2:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049ae7:	8b 45 08             	mov    0x8(%ebp),%eax
 8049aea:	8b 00                	mov    (%eax),%eax
 8049aec:	68 2c 41 05 08       	push   $0x805412c
 8049af1:	50                   	push   %eax
 8049af2:	6a 05                	push   $0x5
 8049af4:	68 59 40 05 08       	push   $0x8054059
 8049af9:	e8 c2 ec ff ff       	call   80487c0 <printf@plt>
 8049afe:	83 c4 10             	add    $0x10,%esp
 8049b01:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 8049b05:	75 27                	jne    8049b2e <Dec+0x19c>
 8049b07:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049b0c:	83 c0 01             	add    $0x1,%eax
 8049b0f:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049b14:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b17:	8b 00                	mov    (%eax),%eax
 8049b19:	68 4c 41 05 08       	push   $0x805414c
 8049b1e:	50                   	push   %eax
 8049b1f:	6a 0f                	push   $0xf
 8049b21:	68 59 40 05 08       	push   $0x8054059
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
 8049b44:	e9 48 06 00 00       	jmp    804a191 <Exp+0x65e>
 8049b49:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b4c:	8b 40 14             	mov    0x14(%eax),%eax
 8049b4f:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8049b52:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b55:	8b 40 18             	mov    0x18(%eax),%eax
 8049b58:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8049b5b:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b5e:	8b 40 1c             	mov    0x1c(%eax),%eax
 8049b61:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049b64:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049b6b:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8049b72:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049b75:	8b 40 04             	mov    0x4(%eax),%eax
 8049b78:	83 f8 32             	cmp    $0x32,%eax
 8049b7b:	0f 87 e2 05 00 00    	ja     804a163 <Exp+0x630>
 8049b81:	8b 04 85 90 43 05 08 	mov    0x8054390(,%eax,4),%eax
 8049b88:	ff e0                	jmp    *%eax
 8049b8a:	83 ec 0c             	sub    $0xc,%esp
 8049b8d:	ff 75 dc             	pushl  -0x24(%ebp)
 8049b90:	e8 9e ff ff ff       	call   8049b33 <Exp>
 8049b95:	83 c4 10             	add    $0x10,%esp
 8049b98:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049b9b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049b9e:	8b 40 04             	mov    0x4(%eax),%eax
 8049ba1:	83 f8 0a             	cmp    $0xa,%eax
 8049ba4:	0f 85 bc 00 00 00    	jne    8049c66 <Exp+0x133>
 8049baa:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049bae:	74 45                	je     8049bf5 <Exp+0xc2>
 8049bb0:	83 ec 0c             	sub    $0xc,%esp
 8049bb3:	ff 75 dc             	pushl  -0x24(%ebp)
 8049bb6:	e8 d8 05 00 00       	call   804a193 <isLeftVar>
 8049bbb:	83 c4 10             	add    $0x10,%esp
 8049bbe:	85 c0                	test   %eax,%eax
 8049bc0:	75 33                	jne    8049bf5 <Exp+0xc2>
 8049bc2:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049bc7:	83 c0 01             	add    $0x1,%eax
 8049bca:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049bcf:	8b 45 08             	mov    0x8(%ebp),%eax
 8049bd2:	8b 00                	mov    (%eax),%eax
 8049bd4:	68 78 41 05 08       	push   $0x8054178
 8049bd9:	50                   	push   %eax
 8049bda:	6a 06                	push   $0x6
 8049bdc:	68 59 40 05 08       	push   $0x8054059
 8049be1:	e8 da eb ff ff       	call   80487c0 <printf@plt>
 8049be6:	83 c4 10             	add    $0x10,%esp
 8049be9:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049bf0:	e9 24 03 00 00       	jmp    8049f19 <Exp+0x3e6>
 8049bf5:	83 ec 0c             	sub    $0xc,%esp
 8049bf8:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049bfb:	e8 33 ff ff ff       	call   8049b33 <Exp>
 8049c00:	83 c4 10             	add    $0x10,%esp
 8049c03:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049c06:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049c0a:	0f 84 7a 05 00 00    	je     804a18a <Exp+0x657>
 8049c10:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049c14:	0f 84 70 05 00 00    	je     804a18a <Exp+0x657>
 8049c1a:	83 ec 08             	sub    $0x8,%esp
 8049c1d:	ff 75 e8             	pushl  -0x18(%ebp)
 8049c20:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049c23:	e8 8a 9c 00 00       	call   80538b2 <compareType>
 8049c28:	83 c4 10             	add    $0x10,%esp
 8049c2b:	85 c0                	test   %eax,%eax
 8049c2d:	0f 85 57 05 00 00    	jne    804a18a <Exp+0x657>
 8049c33:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049c38:	83 c0 01             	add    $0x1,%eax
 8049c3b:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049c40:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c43:	8b 00                	mov    (%eax),%eax
 8049c45:	68 2c 41 05 08       	push   $0x805412c
 8049c4a:	50                   	push   %eax
 8049c4b:	6a 05                	push   $0x5
 8049c4d:	68 59 40 05 08       	push   $0x8054059
 8049c52:	e8 69 eb ff ff       	call   80487c0 <printf@plt>
 8049c57:	83 c4 10             	add    $0x10,%esp
 8049c5a:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049c61:	e9 24 05 00 00       	jmp    804a18a <Exp+0x657>
 8049c66:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049c69:	8b 40 04             	mov    0x4(%eax),%eax
 8049c6c:	83 f8 10             	cmp    $0x10,%eax
 8049c6f:	74 0b                	je     8049c7c <Exp+0x149>
 8049c71:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049c74:	8b 40 04             	mov    0x4(%eax),%eax
 8049c77:	83 f8 11             	cmp    $0x11,%eax
 8049c7a:	75 6a                	jne    8049ce6 <Exp+0x1b3>
 8049c7c:	83 ec 0c             	sub    $0xc,%esp
 8049c7f:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049c82:	e8 ac fe ff ff       	call   8049b33 <Exp>
 8049c87:	83 c4 10             	add    $0x10,%esp
 8049c8a:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049c8d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049c91:	74 09                	je     8049c9c <Exp+0x169>
 8049c93:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049c96:	8b 00                	mov    (%eax),%eax
 8049c98:	85 c0                	test   %eax,%eax
 8049c9a:	75 17                	jne    8049cb3 <Exp+0x180>
 8049c9c:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049ca0:	0f 84 6c 02 00 00    	je     8049f12 <Exp+0x3df>
 8049ca6:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049ca9:	8b 00                	mov    (%eax),%eax
 8049cab:	85 c0                	test   %eax,%eax
 8049cad:	0f 84 5f 02 00 00    	je     8049f12 <Exp+0x3df>
 8049cb3:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049cb8:	83 c0 01             	add    $0x1,%eax
 8049cbb:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049cc0:	8b 45 08             	mov    0x8(%ebp),%eax
 8049cc3:	8b 00                	mov    (%eax),%eax
 8049cc5:	68 b0 41 05 08       	push   $0x80541b0
 8049cca:	50                   	push   %eax
 8049ccb:	6a 07                	push   $0x7
 8049ccd:	68 59 40 05 08       	push   $0x8054059
 8049cd2:	e8 e9 ea ff ff       	call   80487c0 <printf@plt>
 8049cd7:	83 c4 10             	add    $0x10,%esp
 8049cda:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049ce1:	e9 2c 02 00 00       	jmp    8049f12 <Exp+0x3df>
 8049ce6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049ce9:	8b 40 04             	mov    0x4(%eax),%eax
 8049cec:	83 f8 0c             	cmp    $0xc,%eax
 8049cef:	74 2c                	je     8049d1d <Exp+0x1ea>
 8049cf1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049cf4:	8b 40 04             	mov    0x4(%eax),%eax
 8049cf7:	83 f8 0d             	cmp    $0xd,%eax
 8049cfa:	74 21                	je     8049d1d <Exp+0x1ea>
 8049cfc:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049cff:	8b 40 04             	mov    0x4(%eax),%eax
 8049d02:	83 f8 0e             	cmp    $0xe,%eax
 8049d05:	74 16                	je     8049d1d <Exp+0x1ea>
 8049d07:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d0a:	8b 40 04             	mov    0x4(%eax),%eax
 8049d0d:	83 f8 0f             	cmp    $0xf,%eax
 8049d10:	74 0b                	je     8049d1d <Exp+0x1ea>
 8049d12:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d15:	8b 40 04             	mov    0x4(%eax),%eax
 8049d18:	83 f8 0b             	cmp    $0xb,%eax
 8049d1b:	75 70                	jne    8049d8d <Exp+0x25a>
 8049d1d:	83 ec 0c             	sub    $0xc,%esp
 8049d20:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049d23:	e8 0b fe ff ff       	call   8049b33 <Exp>
 8049d28:	83 c4 10             	add    $0x10,%esp
 8049d2b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049d2e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049d32:	0f 84 e0 01 00 00    	je     8049f18 <Exp+0x3e5>
 8049d38:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049d3b:	8b 00                	mov    (%eax),%eax
 8049d3d:	85 c0                	test   %eax,%eax
 8049d3f:	75 19                	jne    8049d5a <Exp+0x227>
 8049d41:	83 ec 08             	sub    $0x8,%esp
 8049d44:	ff 75 e8             	pushl  -0x18(%ebp)
 8049d47:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049d4a:	e8 63 9b 00 00       	call   80538b2 <compareType>
 8049d4f:	83 c4 10             	add    $0x10,%esp
 8049d52:	85 c0                	test   %eax,%eax
 8049d54:	0f 85 be 01 00 00    	jne    8049f18 <Exp+0x3e5>
 8049d5a:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049d5f:	83 c0 01             	add    $0x1,%eax
 8049d62:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049d67:	8b 45 08             	mov    0x8(%ebp),%eax
 8049d6a:	8b 00                	mov    (%eax),%eax
 8049d6c:	68 b0 41 05 08       	push   $0x80541b0
 8049d71:	50                   	push   %eax
 8049d72:	6a 07                	push   $0x7
 8049d74:	68 59 40 05 08       	push   $0x8054059
 8049d79:	e8 42 ea ff ff       	call   80487c0 <printf@plt>
 8049d7e:	83 c4 10             	add    $0x10,%esp
 8049d81:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049d88:	e9 8b 01 00 00       	jmp    8049f18 <Exp+0x3e5>
 8049d8d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d90:	8b 40 04             	mov    0x4(%eax),%eax
 8049d93:	83 f8 16             	cmp    $0x16,%eax
 8049d96:	0f 85 a0 00 00 00    	jne    8049e3c <Exp+0x309>
 8049d9c:	83 ec 0c             	sub    $0xc,%esp
 8049d9f:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049da2:	e8 8c fd ff ff       	call   8049b33 <Exp>
 8049da7:	83 c4 10             	add    $0x10,%esp
 8049daa:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049dad:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049db0:	8b 00                	mov    (%eax),%eax
 8049db2:	83 f8 01             	cmp    $0x1,%eax
 8049db5:	74 2f                	je     8049de6 <Exp+0x2b3>
 8049db7:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049dbc:	83 c0 01             	add    $0x1,%eax
 8049dbf:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049dc4:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049dc7:	8b 00                	mov    (%eax),%eax
 8049dc9:	83 ec 08             	sub    $0x8,%esp
 8049dcc:	50                   	push   %eax
 8049dcd:	68 d0 41 05 08       	push   $0x80541d0
 8049dd2:	e8 e9 e9 ff ff       	call   80487c0 <printf@plt>
 8049dd7:	83 c4 10             	add    $0x10,%esp
 8049dda:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049de1:	e9 a4 03 00 00       	jmp    804a18a <Exp+0x657>
 8049de6:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049dea:	74 42                	je     8049e2e <Exp+0x2fb>
 8049dec:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049def:	8b 00                	mov    (%eax),%eax
 8049df1:	85 c0                	test   %eax,%eax
 8049df3:	75 0a                	jne    8049dff <Exp+0x2cc>
 8049df5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049df8:	8b 40 04             	mov    0x4(%eax),%eax
 8049dfb:	85 c0                	test   %eax,%eax
 8049dfd:	74 2f                	je     8049e2e <Exp+0x2fb>
 8049dff:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049e04:	83 c0 01             	add    $0x1,%eax
 8049e07:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049e0c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049e0f:	8b 00                	mov    (%eax),%eax
 8049e11:	83 ec 08             	sub    $0x8,%esp
 8049e14:	50                   	push   %eax
 8049e15:	68 08 42 05 08       	push   $0x8054208
 8049e1a:	e8 a1 e9 ff ff       	call   80487c0 <printf@plt>
 8049e1f:	83 c4 10             	add    $0x10,%esp
 8049e22:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049e29:	e9 eb 00 00 00       	jmp    8049f19 <Exp+0x3e6>
 8049e2e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049e31:	8b 40 04             	mov    0x4(%eax),%eax
 8049e34:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049e37:	e9 4e 03 00 00       	jmp    804a18a <Exp+0x657>
 8049e3c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049e3f:	8b 40 04             	mov    0x4(%eax),%eax
 8049e42:	83 f8 12             	cmp    $0x12,%eax
 8049e45:	0f 85 ae 00 00 00    	jne    8049ef9 <Exp+0x3c6>
 8049e4b:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049e4f:	74 32                	je     8049e83 <Exp+0x350>
 8049e51:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049e54:	8b 00                	mov    (%eax),%eax
 8049e56:	83 f8 02             	cmp    $0x2,%eax
 8049e59:	74 28                	je     8049e83 <Exp+0x350>
 8049e5b:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049e60:	83 c0 01             	add    $0x1,%eax
 8049e63:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049e68:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049e6b:	8b 00                	mov    (%eax),%eax
 8049e6d:	83 ec 08             	sub    $0x8,%esp
 8049e70:	50                   	push   %eax
 8049e71:	68 44 42 05 08       	push   $0x8054244
 8049e76:	e8 45 e9 ff ff       	call   80487c0 <printf@plt>
 8049e7b:	83 c4 10             	add    $0x10,%esp
 8049e7e:	e9 96 00 00 00       	jmp    8049f19 <Exp+0x3e6>
 8049e83:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8049e87:	75 0c                	jne    8049e95 <Exp+0x362>
 8049e89:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049e90:	e9 f5 02 00 00       	jmp    804a18a <Exp+0x657>
 8049e95:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049e98:	8b 40 08             	mov    0x8(%eax),%eax
 8049e9b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049e9e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049ea1:	8b 40 04             	mov    0x4(%eax),%eax
 8049ea4:	83 ec 08             	sub    $0x8,%esp
 8049ea7:	ff 75 ec             	pushl  -0x14(%ebp)
 8049eaa:	50                   	push   %eax
 8049eab:	e8 c4 99 00 00       	call   8053874 <structureField>
 8049eb0:	83 c4 10             	add    $0x10,%esp
 8049eb3:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049eb6:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049eba:	75 32                	jne    8049eee <Exp+0x3bb>
 8049ebc:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049ec1:	83 c0 01             	add    $0x1,%eax
 8049ec4:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049ec9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049ecc:	8b 00                	mov    (%eax),%eax
 8049ece:	83 ec 04             	sub    $0x4,%esp
 8049ed1:	ff 75 ec             	pushl  -0x14(%ebp)
 8049ed4:	50                   	push   %eax
 8049ed5:	68 74 42 05 08       	push   $0x8054274
 8049eda:	e8 e1 e8 ff ff       	call   80487c0 <printf@plt>
 8049edf:	83 c4 10             	add    $0x10,%esp
 8049ee2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049ee9:	e9 9c 02 00 00       	jmp    804a18a <Exp+0x657>
 8049eee:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049ef1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049ef4:	e9 91 02 00 00       	jmp    804a18a <Exp+0x657>
 8049ef9:	68 ac 44 05 08       	push   $0x80544ac
 8049efe:	68 25 02 00 00       	push   $0x225
 8049f03:	68 c5 3f 05 08       	push   $0x8053fc5
 8049f08:	68 cf 3f 05 08       	push   $0x8053fcf
 8049f0d:	e8 ae ea ff ff       	call   80489c0 <__assert_fail@plt>
 8049f12:	90                   	nop
 8049f13:	e9 72 02 00 00       	jmp    804a18a <Exp+0x657>
 8049f18:	90                   	nop
 8049f19:	e9 6c 02 00 00       	jmp    804a18a <Exp+0x657>
 8049f1e:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 8049f22:	75 79                	jne    8049f9d <Exp+0x46a>
 8049f24:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049f27:	8b 40 08             	mov    0x8(%eax),%eax
 8049f2a:	83 ec 0c             	sub    $0xc,%esp
 8049f2d:	50                   	push   %eax
 8049f2e:	e8 12 96 00 00       	call   8053545 <searchTable>
 8049f33:	83 c4 10             	add    $0x10,%esp
 8049f36:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049f39:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049f3d:	75 36                	jne    8049f75 <Exp+0x442>
 8049f3f:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049f44:	83 c0 01             	add    $0x1,%eax
 8049f47:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049f4c:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049f4f:	8b 50 08             	mov    0x8(%eax),%edx
 8049f52:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f55:	8b 00                	mov    (%eax),%eax
 8049f57:	83 ec 04             	sub    $0x4,%esp
 8049f5a:	52                   	push   %edx
 8049f5b:	50                   	push   %eax
 8049f5c:	68 a8 42 05 08       	push   $0x80542a8
 8049f61:	e8 5a e8 ff ff       	call   80487c0 <printf@plt>
 8049f66:	83 c4 10             	add    $0x10,%esp
 8049f69:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049f70:	e9 18 02 00 00       	jmp    804a18d <Exp+0x65a>
 8049f75:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049f78:	8b 00                	mov    (%eax),%eax
 8049f7a:	83 f8 01             	cmp    $0x1,%eax
 8049f7d:	75 10                	jne    8049f8f <Exp+0x45c>
 8049f7f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049f82:	8b 40 0c             	mov    0xc(%eax),%eax
 8049f85:	8b 00                	mov    (%eax),%eax
 8049f87:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049f8a:	e9 fe 01 00 00       	jmp    804a18d <Exp+0x65a>
 8049f8f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049f92:	8b 40 0c             	mov    0xc(%eax),%eax
 8049f95:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049f98:	e9 f0 01 00 00       	jmp    804a18d <Exp+0x65a>
 8049f9d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049fa0:	8b 40 04             	mov    0x4(%eax),%eax
 8049fa3:	83 f8 14             	cmp    $0x14,%eax
 8049fa6:	0f 85 e1 01 00 00    	jne    804a18d <Exp+0x65a>
 8049fac:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049faf:	8b 40 08             	mov    0x8(%eax),%eax
 8049fb2:	83 ec 0c             	sub    $0xc,%esp
 8049fb5:	50                   	push   %eax
 8049fb6:	e8 8a 95 00 00       	call   8053545 <searchTable>
 8049fbb:	83 c4 10             	add    $0x10,%esp
 8049fbe:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049fc1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049fc5:	75 36                	jne    8049ffd <Exp+0x4ca>
 8049fc7:	a1 24 91 05 08       	mov    0x8059124,%eax
 8049fcc:	83 c0 01             	add    $0x1,%eax
 8049fcf:	a3 24 91 05 08       	mov    %eax,0x8059124
 8049fd4:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049fd7:	8b 50 08             	mov    0x8(%eax),%edx
 8049fda:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fdd:	8b 00                	mov    (%eax),%eax
 8049fdf:	83 ec 04             	sub    $0x4,%esp
 8049fe2:	52                   	push   %edx
 8049fe3:	50                   	push   %eax
 8049fe4:	68 dc 42 05 08       	push   $0x80542dc
 8049fe9:	e8 d2 e7 ff ff       	call   80487c0 <printf@plt>
 8049fee:	83 c4 10             	add    $0x10,%esp
 8049ff1:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8049ff8:	e9 90 01 00 00       	jmp    804a18d <Exp+0x65a>
 8049ffd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a000:	8b 00                	mov    (%eax),%eax
 804a002:	83 f8 01             	cmp    $0x1,%eax
 804a005:	74 36                	je     804a03d <Exp+0x50a>
 804a007:	a1 24 91 05 08       	mov    0x8059124,%eax
 804a00c:	83 c0 01             	add    $0x1,%eax
 804a00f:	a3 24 91 05 08       	mov    %eax,0x8059124
 804a014:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a017:	8b 50 04             	mov    0x4(%eax),%edx
 804a01a:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a01d:	8b 00                	mov    (%eax),%eax
 804a01f:	83 ec 04             	sub    $0x4,%esp
 804a022:	52                   	push   %edx
 804a023:	50                   	push   %eax
 804a024:	68 10 43 05 08       	push   $0x8054310
 804a029:	e8 92 e7 ff ff       	call   80487c0 <printf@plt>
 804a02e:	83 c4 10             	add    $0x10,%esp
 804a031:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804a038:	e9 50 01 00 00       	jmp    804a18d <Exp+0x65a>
 804a03d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804a044:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a047:	8b 40 0c             	mov    0xc(%eax),%eax
 804a04a:	8b 00                	mov    (%eax),%eax
 804a04c:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a04f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a052:	8b 40 04             	mov    0x4(%eax),%eax
 804a055:	83 f8 33             	cmp    $0x33,%eax
 804a058:	75 15                	jne    804a06f <Exp+0x53c>
 804a05a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a05d:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a060:	83 ec 0c             	sub    $0xc,%esp
 804a063:	50                   	push   %eax
 804a064:	e8 23 02 00 00       	call   804a28c <Args>
 804a069:	83 c4 10             	add    $0x10,%esp
 804a06c:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804a06f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a072:	8b 40 0c             	mov    0xc(%eax),%eax
 804a075:	8b 40 04             	mov    0x4(%eax),%eax
 804a078:	83 ec 08             	sub    $0x8,%esp
 804a07b:	50                   	push   %eax
 804a07c:	ff 75 d8             	pushl  -0x28(%ebp)
 804a07f:	e8 3a 99 00 00       	call   80539be <compareArgs>
 804a084:	83 c4 10             	add    $0x10,%esp
 804a087:	85 c0                	test   %eax,%eax
 804a089:	0f 85 fe 00 00 00    	jne    804a18d <Exp+0x65a>
 804a08f:	a1 24 91 05 08       	mov    0x8059124,%eax
 804a094:	83 c0 01             	add    $0x1,%eax
 804a097:	a3 24 91 05 08       	mov    %eax,0x8059124
 804a09c:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a09f:	8b 00                	mov    (%eax),%eax
 804a0a1:	83 ec 08             	sub    $0x8,%esp
 804a0a4:	50                   	push   %eax
 804a0a5:	68 44 43 05 08       	push   $0x8054344
 804a0aa:	e8 11 e7 ff ff       	call   80487c0 <printf@plt>
 804a0af:	83 c4 10             	add    $0x10,%esp
 804a0b2:	83 ec 0c             	sub    $0xc,%esp
 804a0b5:	ff 75 f4             	pushl  -0xc(%ebp)
 804a0b8:	e8 70 9b 00 00       	call   8053c2d <printFuncType>
 804a0bd:	83 c4 10             	add    $0x10,%esp
 804a0c0:	83 ec 0c             	sub    $0xc,%esp
 804a0c3:	68 68 43 05 08       	push   $0x8054368
 804a0c8:	e8 f3 e6 ff ff       	call   80487c0 <printf@plt>
 804a0cd:	83 c4 10             	add    $0x10,%esp
 804a0d0:	83 ec 0c             	sub    $0xc,%esp
 804a0d3:	ff 75 d8             	pushl  -0x28(%ebp)
 804a0d6:	e8 d6 99 00 00       	call   8053ab1 <printFieldList>
 804a0db:	83 c4 10             	add    $0x10,%esp
 804a0de:	83 ec 0c             	sub    $0xc,%esp
 804a0e1:	68 8c 43 05 08       	push   $0x805438c
 804a0e6:	e8 a5 e7 ff ff       	call   8048890 <puts@plt>
 804a0eb:	83 c4 10             	add    $0x10,%esp
 804a0ee:	e9 9a 00 00 00       	jmp    804a18d <Exp+0x65a>
 804a0f3:	83 ec 0c             	sub    $0xc,%esp
 804a0f6:	6a 0c                	push   $0xc
 804a0f8:	e8 83 e7 ff ff       	call   8048880 <malloc@plt>
 804a0fd:	83 c4 10             	add    $0x10,%esp
 804a100:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a103:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a106:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a10c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a10f:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a116:	eb 76                	jmp    804a18e <Exp+0x65b>
 804a118:	83 ec 0c             	sub    $0xc,%esp
 804a11b:	6a 0c                	push   $0xc
 804a11d:	e8 5e e7 ff ff       	call   8048880 <malloc@plt>
 804a122:	83 c4 10             	add    $0x10,%esp
 804a125:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a128:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a12b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a131:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a134:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 804a13b:	eb 51                	jmp    804a18e <Exp+0x65b>
 804a13d:	83 ec 0c             	sub    $0xc,%esp
 804a140:	ff 75 e0             	pushl  -0x20(%ebp)
 804a143:	e8 eb f9 ff ff       	call   8049b33 <Exp>
 804a148:	83 c4 10             	add    $0x10,%esp
 804a14b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a14e:	eb 3e                	jmp    804a18e <Exp+0x65b>
 804a150:	83 ec 0c             	sub    $0xc,%esp
 804a153:	ff 75 e0             	pushl  -0x20(%ebp)
 804a156:	e8 d8 f9 ff ff       	call   8049b33 <Exp>
 804a15b:	83 c4 10             	add    $0x10,%esp
 804a15e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a161:	eb 2b                	jmp    804a18e <Exp+0x65b>
 804a163:	83 ec 0c             	sub    $0xc,%esp
 804a166:	ff 75 08             	pushl  0x8(%ebp)
 804a169:	e8 c7 eb ff ff       	call   8048d35 <printTree>
 804a16e:	83 c4 10             	add    $0x10,%esp
 804a171:	68 ac 44 05 08       	push   $0x80544ac
 804a176:	68 74 02 00 00       	push   $0x274
 804a17b:	68 c5 3f 05 08       	push   $0x8053fc5
 804a180:	68 cf 3f 05 08       	push   $0x8053fcf
 804a185:	e8 36 e8 ff ff       	call   80489c0 <__assert_fail@plt>
 804a18a:	90                   	nop
 804a18b:	eb 01                	jmp    804a18e <Exp+0x65b>
 804a18d:	90                   	nop
 804a18e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a191:	c9                   	leave  
 804a192:	c3                   	ret    

0804a193 <isLeftVar>:
 804a193:	55                   	push   %ebp
 804a194:	89 e5                	mov    %esp,%ebp
 804a196:	83 ec 18             	sub    $0x18,%esp
 804a199:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a19d:	75 0a                	jne    804a1a9 <isLeftVar+0x16>
 804a19f:	b8 01 00 00 00       	mov    $0x1,%eax
 804a1a4:	e9 e1 00 00 00       	jmp    804a28a <isLeftVar+0xf7>
 804a1a9:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1ac:	8b 40 14             	mov    0x14(%eax),%eax
 804a1af:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a1b2:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1b5:	8b 40 04             	mov    0x4(%eax),%eax
 804a1b8:	83 f8 03             	cmp    $0x3,%eax
 804a1bb:	75 36                	jne    804a1f3 <isLeftVar+0x60>
 804a1bd:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1c0:	8b 40 08             	mov    0x8(%eax),%eax
 804a1c3:	83 ec 0c             	sub    $0xc,%esp
 804a1c6:	50                   	push   %eax
 804a1c7:	e8 79 93 00 00       	call   8053545 <searchTable>
 804a1cc:	83 c4 10             	add    $0x10,%esp
 804a1cf:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a1d2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a1d6:	0f 84 a9 00 00 00    	je     804a285 <isLeftVar+0xf2>
 804a1dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a1df:	8b 00                	mov    (%eax),%eax
 804a1e1:	85 c0                	test   %eax,%eax
 804a1e3:	0f 85 9c 00 00 00    	jne    804a285 <isLeftVar+0xf2>
 804a1e9:	b8 01 00 00 00       	mov    $0x1,%eax
 804a1ee:	e9 97 00 00 00       	jmp    804a28a <isLeftVar+0xf7>
 804a1f3:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1f6:	8b 40 04             	mov    0x4(%eax),%eax
 804a1f9:	83 f8 32             	cmp    $0x32,%eax
 804a1fc:	75 3c                	jne    804a23a <isLeftVar+0xa7>
 804a1fe:	8b 45 08             	mov    0x8(%ebp),%eax
 804a201:	8b 40 14             	mov    0x14(%eax),%eax
 804a204:	8b 40 04             	mov    0x4(%eax),%eax
 804a207:	83 f8 03             	cmp    $0x3,%eax
 804a20a:	75 2e                	jne    804a23a <isLeftVar+0xa7>
 804a20c:	8b 45 08             	mov    0x8(%ebp),%eax
 804a20f:	8b 40 14             	mov    0x14(%eax),%eax
 804a212:	8b 40 08             	mov    0x8(%eax),%eax
 804a215:	83 ec 0c             	sub    $0xc,%esp
 804a218:	50                   	push   %eax
 804a219:	e8 27 93 00 00       	call   8053545 <searchTable>
 804a21e:	83 c4 10             	add    $0x10,%esp
 804a221:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a224:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804a228:	74 5a                	je     804a284 <isLeftVar+0xf1>
 804a22a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a22d:	8b 00                	mov    (%eax),%eax
 804a22f:	85 c0                	test   %eax,%eax
 804a231:	75 51                	jne    804a284 <isLeftVar+0xf1>
 804a233:	b8 01 00 00 00       	mov    $0x1,%eax
 804a238:	eb 50                	jmp    804a28a <isLeftVar+0xf7>
 804a23a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a23d:	8b 40 04             	mov    0x4(%eax),%eax
 804a240:	83 f8 32             	cmp    $0x32,%eax
 804a243:	75 40                	jne    804a285 <isLeftVar+0xf2>
 804a245:	8b 45 08             	mov    0x8(%ebp),%eax
 804a248:	8b 40 14             	mov    0x14(%eax),%eax
 804a24b:	8b 40 04             	mov    0x4(%eax),%eax
 804a24e:	83 f8 32             	cmp    $0x32,%eax
 804a251:	75 32                	jne    804a285 <isLeftVar+0xf2>
 804a253:	8b 45 08             	mov    0x8(%ebp),%eax
 804a256:	8b 40 18             	mov    0x18(%eax),%eax
 804a259:	8b 40 04             	mov    0x4(%eax),%eax
 804a25c:	83 f8 16             	cmp    $0x16,%eax
 804a25f:	74 1c                	je     804a27d <isLeftVar+0xea>
 804a261:	8b 45 08             	mov    0x8(%ebp),%eax
 804a264:	8b 40 18             	mov    0x18(%eax),%eax
 804a267:	8b 40 04             	mov    0x4(%eax),%eax
 804a26a:	83 f8 12             	cmp    $0x12,%eax
 804a26d:	74 0e                	je     804a27d <isLeftVar+0xea>
 804a26f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a272:	8b 40 18             	mov    0x18(%eax),%eax
 804a275:	8b 40 04             	mov    0x4(%eax),%eax
 804a278:	83 f8 03             	cmp    $0x3,%eax
 804a27b:	75 08                	jne    804a285 <isLeftVar+0xf2>
 804a27d:	b8 01 00 00 00       	mov    $0x1,%eax
 804a282:	eb 06                	jmp    804a28a <isLeftVar+0xf7>
 804a284:	90                   	nop
 804a285:	b8 00 00 00 00       	mov    $0x0,%eax
 804a28a:	c9                   	leave  
 804a28b:	c3                   	ret    

0804a28c <Args>:
 804a28c:	55                   	push   %ebp
 804a28d:	89 e5                	mov    %esp,%ebp
 804a28f:	83 ec 18             	sub    $0x18,%esp
 804a292:	83 ec 0c             	sub    $0xc,%esp
 804a295:	6a 0c                	push   $0xc
 804a297:	e8 e4 e5 ff ff       	call   8048880 <malloc@plt>
 804a29c:	83 c4 10             	add    $0x10,%esp
 804a29f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a2a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2a5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a2ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2ae:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a2b5:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2b8:	8b 40 10             	mov    0x10(%eax),%eax
 804a2bb:	83 f8 01             	cmp    $0x1,%eax
 804a2be:	75 1c                	jne    804a2dc <Args+0x50>
 804a2c0:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2c3:	8b 40 14             	mov    0x14(%eax),%eax
 804a2c6:	83 ec 0c             	sub    $0xc,%esp
 804a2c9:	50                   	push   %eax
 804a2ca:	e8 64 f8 ff ff       	call   8049b33 <Exp>
 804a2cf:	83 c4 10             	add    $0x10,%esp
 804a2d2:	89 c2                	mov    %eax,%edx
 804a2d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2d7:	89 50 04             	mov    %edx,0x4(%eax)
 804a2da:	eb 5a                	jmp    804a336 <Args+0xaa>
 804a2dc:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2df:	8b 40 10             	mov    0x10(%eax),%eax
 804a2e2:	83 f8 03             	cmp    $0x3,%eax
 804a2e5:	75 36                	jne    804a31d <Args+0x91>
 804a2e7:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2ea:	8b 40 14             	mov    0x14(%eax),%eax
 804a2ed:	83 ec 0c             	sub    $0xc,%esp
 804a2f0:	50                   	push   %eax
 804a2f1:	e8 3d f8 ff ff       	call   8049b33 <Exp>
 804a2f6:	83 c4 10             	add    $0x10,%esp
 804a2f9:	89 c2                	mov    %eax,%edx
 804a2fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2fe:	89 50 04             	mov    %edx,0x4(%eax)
 804a301:	8b 45 08             	mov    0x8(%ebp),%eax
 804a304:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a307:	83 ec 0c             	sub    $0xc,%esp
 804a30a:	50                   	push   %eax
 804a30b:	e8 7c ff ff ff       	call   804a28c <Args>
 804a310:	83 c4 10             	add    $0x10,%esp
 804a313:	89 c2                	mov    %eax,%edx
 804a315:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a318:	89 50 08             	mov    %edx,0x8(%eax)
 804a31b:	eb 19                	jmp    804a336 <Args+0xaa>
 804a31d:	68 b0 44 05 08       	push   $0x80544b0
 804a322:	68 a4 02 00 00       	push   $0x2a4
 804a327:	68 c5 3f 05 08       	push   $0x8053fc5
 804a32c:	68 cf 3f 05 08       	push   $0x8053fcf
 804a331:	e8 8a e6 ff ff       	call   80489c0 <__assert_fail@plt>
 804a336:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a339:	c9                   	leave  
 804a33a:	c3                   	ret    

0804a33b <checkStructure>:
 804a33b:	55                   	push   %ebp
 804a33c:	89 e5                	mov    %esp,%ebp
 804a33e:	83 ec 18             	sub    $0x18,%esp
 804a341:	eb 63                	jmp    804a3a6 <checkStructure+0x6b>
 804a343:	8b 45 08             	mov    0x8(%ebp),%eax
 804a346:	8b 40 08             	mov    0x8(%eax),%eax
 804a349:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a34c:	eb 49                	jmp    804a397 <checkStructure+0x5c>
 804a34e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a351:	8b 10                	mov    (%eax),%edx
 804a353:	8b 45 08             	mov    0x8(%ebp),%eax
 804a356:	8b 00                	mov    (%eax),%eax
 804a358:	83 ec 08             	sub    $0x8,%esp
 804a35b:	52                   	push   %edx
 804a35c:	50                   	push   %eax
 804a35d:	e8 4e e4 ff ff       	call   80487b0 <strcmp@plt>
 804a362:	83 c4 10             	add    $0x10,%esp
 804a365:	85 c0                	test   %eax,%eax
 804a367:	75 25                	jne    804a38e <checkStructure+0x53>
 804a369:	a1 24 91 05 08       	mov    0x8059124,%eax
 804a36e:	83 c0 01             	add    $0x1,%eax
 804a371:	a3 24 91 05 08       	mov    %eax,0x8059124
 804a376:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a379:	8b 00                	mov    (%eax),%eax
 804a37b:	83 ec 04             	sub    $0x4,%esp
 804a37e:	50                   	push   %eax
 804a37f:	6a 01                	push   $0x1
 804a381:	68 f8 40 05 08       	push   $0x80540f8
 804a386:	e8 35 e4 ff ff       	call   80487c0 <printf@plt>
 804a38b:	83 c4 10             	add    $0x10,%esp
 804a38e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a391:	8b 40 08             	mov    0x8(%eax),%eax
 804a394:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a397:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804a39b:	75 b1                	jne    804a34e <checkStructure+0x13>
 804a39d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3a0:	8b 40 08             	mov    0x8(%eax),%eax
 804a3a3:	89 45 08             	mov    %eax,0x8(%ebp)
 804a3a6:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3a9:	8b 40 08             	mov    0x8(%eax),%eax
 804a3ac:	85 c0                	test   %eax,%eax
 804a3ae:	75 93                	jne    804a343 <checkStructure+0x8>
 804a3b0:	b8 01 00 00 00       	mov    $0x1,%eax
 804a3b5:	c9                   	leave  
 804a3b6:	c3                   	ret    

0804a3b7 <checkFunc>:
 804a3b7:	55                   	push   %ebp
 804a3b8:	89 e5                	mov    %esp,%ebp
 804a3ba:	83 ec 18             	sub    $0x18,%esp
 804a3bd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a3c4:	eb 70                	jmp    804a436 <checkFunc+0x7f>
 804a3c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a3c9:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 804a3d0:	85 c0                	test   %eax,%eax
 804a3d2:	74 5e                	je     804a432 <checkFunc+0x7b>
 804a3d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a3d7:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 804a3de:	8b 00                	mov    (%eax),%eax
 804a3e0:	83 f8 01             	cmp    $0x1,%eax
 804a3e3:	75 4d                	jne    804a432 <checkFunc+0x7b>
 804a3e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a3e8:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 804a3ef:	8b 40 0c             	mov    0xc(%eax),%eax
 804a3f2:	8b 40 08             	mov    0x8(%eax),%eax
 804a3f5:	85 c0                	test   %eax,%eax
 804a3f7:	75 39                	jne    804a432 <checkFunc+0x7b>
 804a3f9:	a1 24 91 05 08       	mov    0x8059124,%eax
 804a3fe:	83 c0 01             	add    $0x1,%eax
 804a401:	a3 24 91 05 08       	mov    %eax,0x8059124
 804a406:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a409:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 804a410:	8b 50 04             	mov    0x4(%eax),%edx
 804a413:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a416:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 804a41d:	8b 40 08             	mov    0x8(%eax),%eax
 804a420:	83 ec 04             	sub    $0x4,%esp
 804a423:	52                   	push   %edx
 804a424:	50                   	push   %eax
 804a425:	68 5c 44 05 08       	push   $0x805445c
 804a42a:	e8 91 e3 ff ff       	call   80487c0 <printf@plt>
 804a42f:	83 c4 10             	add    $0x10,%esp
 804a432:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804a436:	81 7d f4 fe 3f 00 00 	cmpl   $0x3ffe,-0xc(%ebp)
 804a43d:	7e 87                	jle    804a3c6 <checkFunc+0xf>
 804a43f:	90                   	nop
 804a440:	c9                   	leave  
 804a441:	c3                   	ret    

0804a442 <compareDAGNode>:
 804a442:	55                   	push   %ebp
 804a443:	89 e5                	mov    %esp,%ebp
 804a445:	8b 45 08             	mov    0x8(%ebp),%eax
 804a448:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804a44b:	75 07                	jne    804a454 <compareDAGNode+0x12>
 804a44d:	b8 01 00 00 00       	mov    $0x1,%eax
 804a452:	eb 18                	jmp    804a46c <compareDAGNode+0x2a>
 804a454:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a458:	74 06                	je     804a460 <compareDAGNode+0x1e>
 804a45a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804a45e:	75 07                	jne    804a467 <compareDAGNode+0x25>
 804a460:	b8 00 00 00 00       	mov    $0x0,%eax
 804a465:	eb 05                	jmp    804a46c <compareDAGNode+0x2a>
 804a467:	b8 00 00 00 00       	mov    $0x0,%eax
 804a46c:	5d                   	pop    %ebp
 804a46d:	c3                   	ret    

0804a46e <existSign>:
 804a46e:	55                   	push   %ebp
 804a46f:	89 e5                	mov    %esp,%ebp
 804a471:	83 ec 18             	sub    $0x18,%esp
 804a474:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a478:	75 07                	jne    804a481 <existSign+0x13>
 804a47a:	b8 00 00 00 00       	mov    $0x0,%eax
 804a47f:	eb 45                	jmp    804a4c6 <existSign+0x58>
 804a481:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a488:	eb 29                	jmp    804a4b3 <existSign+0x45>
 804a48a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a48d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a490:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
 804a494:	83 ec 08             	sub    $0x8,%esp
 804a497:	50                   	push   %eax
 804a498:	ff 75 0c             	pushl  0xc(%ebp)
 804a49b:	e8 ea 17 00 00       	call   804bc8a <compareOperand>
 804a4a0:	83 c4 10             	add    $0x10,%esp
 804a4a3:	83 f8 01             	cmp    $0x1,%eax
 804a4a6:	75 07                	jne    804a4af <existSign+0x41>
 804a4a8:	b8 01 00 00 00       	mov    $0x1,%eax
 804a4ad:	eb 17                	jmp    804a4c6 <existSign+0x58>
 804a4af:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804a4b3:	8b 45 08             	mov    0x8(%ebp),%eax
 804a4b6:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804a4bc:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804a4bf:	7f c9                	jg     804a48a <existSign+0x1c>
 804a4c1:	b8 00 00 00 00       	mov    $0x0,%eax
 804a4c6:	c9                   	leave  
 804a4c7:	c3                   	ret    

0804a4c8 <findSign>:
 804a4c8:	55                   	push   %ebp
 804a4c9:	89 e5                	mov    %esp,%ebp
 804a4cb:	83 ec 18             	sub    $0x18,%esp
 804a4ce:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804a4d5:	eb 5c                	jmp    804a533 <findSign+0x6b>
 804a4d7:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a4de:	eb 3a                	jmp    804a51a <findSign+0x52>
 804a4e0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a4e3:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804a4ea:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804a4ed:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
 804a4f1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a4f4:	83 ec 08             	sub    $0x8,%esp
 804a4f7:	ff 75 f4             	pushl  -0xc(%ebp)
 804a4fa:	ff 75 08             	pushl  0x8(%ebp)
 804a4fd:	e8 88 17 00 00       	call   804bc8a <compareOperand>
 804a502:	83 c4 10             	add    $0x10,%esp
 804a505:	83 f8 01             	cmp    $0x1,%eax
 804a508:	75 0c                	jne    804a516 <findSign+0x4e>
 804a50a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a50d:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804a514:	eb 5d                	jmp    804a573 <findSign+0xab>
 804a516:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804a51a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a51d:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804a524:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804a52a:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 804a52d:	7f b1                	jg     804a4e0 <findSign+0x18>
 804a52f:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 804a533:	a1 0c 91 05 08       	mov    0x805910c,%eax
 804a538:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 804a53b:	7c 9a                	jl     804a4d7 <findSign+0xf>
 804a53d:	83 ec 0c             	sub    $0xc,%esp
 804a540:	68 b8 44 05 08       	push   $0x80544b8
 804a545:	e8 76 e2 ff ff       	call   80487c0 <printf@plt>
 804a54a:	83 c4 10             	add    $0x10,%esp
 804a54d:	a1 04 91 05 08       	mov    0x8059104,%eax
 804a552:	83 ec 08             	sub    $0x8,%esp
 804a555:	50                   	push   %eax
 804a556:	ff 75 08             	pushl  0x8(%ebp)
 804a559:	e8 cb 0b 00 00       	call   804b129 <printOperand>
 804a55e:	83 c4 10             	add    $0x10,%esp
 804a561:	83 ec 0c             	sub    $0xc,%esp
 804a564:	6a 0a                	push   $0xa
 804a566:	e8 a5 e3 ff ff       	call   8048910 <putchar@plt>
 804a56b:	83 c4 10             	add    $0x10,%esp
 804a56e:	b8 00 00 00 00       	mov    $0x0,%eax
 804a573:	c9                   	leave  
 804a574:	c3                   	ret    

0804a575 <findLeaf>:
 804a575:	55                   	push   %ebp
 804a576:	89 e5                	mov    %esp,%ebp
 804a578:	83 ec 18             	sub    $0x18,%esp
 804a57b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a582:	eb 44                	jmp    804a5c8 <findLeaf+0x53>
 804a584:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a587:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804a58e:	8b 00                	mov    (%eax),%eax
 804a590:	85 c0                	test   %eax,%eax
 804a592:	74 30                	je     804a5c4 <findLeaf+0x4f>
 804a594:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a597:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804a59e:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
 804a5a4:	83 ec 08             	sub    $0x8,%esp
 804a5a7:	50                   	push   %eax
 804a5a8:	ff 75 08             	pushl  0x8(%ebp)
 804a5ab:	e8 da 16 00 00       	call   804bc8a <compareOperand>
 804a5b0:	83 c4 10             	add    $0x10,%esp
 804a5b3:	83 f8 01             	cmp    $0x1,%eax
 804a5b6:	75 0c                	jne    804a5c4 <findLeaf+0x4f>
 804a5b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a5bb:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804a5c2:	eb 44                	jmp    804a608 <findLeaf+0x93>
 804a5c4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804a5c8:	a1 0c 91 05 08       	mov    0x805910c,%eax
 804a5cd:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 804a5d0:	7c b2                	jl     804a584 <findLeaf+0xf>
 804a5d2:	83 ec 0c             	sub    $0xc,%esp
 804a5d5:	68 c8 44 05 08       	push   $0x80544c8
 804a5da:	e8 e1 e1 ff ff       	call   80487c0 <printf@plt>
 804a5df:	83 c4 10             	add    $0x10,%esp
 804a5e2:	a1 04 91 05 08       	mov    0x8059104,%eax
 804a5e7:	83 ec 08             	sub    $0x8,%esp
 804a5ea:	50                   	push   %eax
 804a5eb:	ff 75 08             	pushl  0x8(%ebp)
 804a5ee:	e8 36 0b 00 00       	call   804b129 <printOperand>
 804a5f3:	83 c4 10             	add    $0x10,%esp
 804a5f6:	83 ec 0c             	sub    $0xc,%esp
 804a5f9:	6a 0a                	push   $0xa
 804a5fb:	e8 10 e3 ff ff       	call   8048910 <putchar@plt>
 804a600:	83 c4 10             	add    $0x10,%esp
 804a603:	b8 00 00 00 00       	mov    $0x0,%eax
 804a608:	c9                   	leave  
 804a609:	c3                   	ret    

0804a60a <findOp>:
 804a60a:	55                   	push   %ebp
 804a60b:	89 e5                	mov    %esp,%ebp
 804a60d:	83 ec 18             	sub    $0x18,%esp
 804a610:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a617:	eb 62                	jmp    804a67b <findOp+0x71>
 804a619:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a61c:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804a623:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a626:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a629:	8b 00                	mov    (%eax),%eax
 804a62b:	85 c0                	test   %eax,%eax
 804a62d:	75 48                	jne    804a677 <findOp+0x6d>
 804a62f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a632:	8b 40 04             	mov    0x4(%eax),%eax
 804a635:	3b 45 08             	cmp    0x8(%ebp),%eax
 804a638:	75 3d                	jne    804a677 <findOp+0x6d>
 804a63a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a63d:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804a643:	83 ec 08             	sub    $0x8,%esp
 804a646:	ff 75 0c             	pushl  0xc(%ebp)
 804a649:	50                   	push   %eax
 804a64a:	e8 1f fe ff ff       	call   804a46e <existSign>
 804a64f:	83 c4 10             	add    $0x10,%esp
 804a652:	85 c0                	test   %eax,%eax
 804a654:	74 21                	je     804a677 <findOp+0x6d>
 804a656:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a659:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804a65f:	83 ec 08             	sub    $0x8,%esp
 804a662:	ff 75 10             	pushl  0x10(%ebp)
 804a665:	50                   	push   %eax
 804a666:	e8 03 fe ff ff       	call   804a46e <existSign>
 804a66b:	83 c4 10             	add    $0x10,%esp
 804a66e:	85 c0                	test   %eax,%eax
 804a670:	74 05                	je     804a677 <findOp+0x6d>
 804a672:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a675:	eb 13                	jmp    804a68a <findOp+0x80>
 804a677:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804a67b:	a1 0c 91 05 08       	mov    0x805910c,%eax
 804a680:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 804a683:	7c 94                	jl     804a619 <findOp+0xf>
 804a685:	b8 00 00 00 00       	mov    $0x0,%eax
 804a68a:	c9                   	leave  
 804a68b:	c3                   	ret    

0804a68c <removeSign>:
 804a68c:	55                   	push   %ebp
 804a68d:	89 e5                	mov    %esp,%ebp
 804a68f:	83 ec 18             	sub    $0x18,%esp
 804a692:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a699:	eb 6c                	jmp    804a707 <removeSign+0x7b>
 804a69b:	8b 45 08             	mov    0x8(%ebp),%eax
 804a69e:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804a6a1:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
 804a6a5:	83 ec 08             	sub    $0x8,%esp
 804a6a8:	50                   	push   %eax
 804a6a9:	ff 75 0c             	pushl  0xc(%ebp)
 804a6ac:	e8 d9 15 00 00       	call   804bc8a <compareOperand>
 804a6b1:	83 c4 10             	add    $0x10,%esp
 804a6b4:	85 c0                	test   %eax,%eax
 804a6b6:	75 4b                	jne    804a703 <removeSign+0x77>
 804a6b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a6bb:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a6be:	eb 1b                	jmp    804a6db <removeSign+0x4f>
 804a6c0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a6c3:	8d 50 01             	lea    0x1(%eax),%edx
 804a6c6:	8b 45 08             	mov    0x8(%ebp),%eax
 804a6c9:	8b 4c 90 08          	mov    0x8(%eax,%edx,4),%ecx
 804a6cd:	8b 45 08             	mov    0x8(%ebp),%eax
 804a6d0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a6d3:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
 804a6d7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804a6db:	8b 45 08             	mov    0x8(%ebp),%eax
 804a6de:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804a6e4:	83 e8 01             	sub    $0x1,%eax
 804a6e7:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804a6ea:	7f d4                	jg     804a6c0 <removeSign+0x34>
 804a6ec:	8b 45 08             	mov    0x8(%ebp),%eax
 804a6ef:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804a6f5:	8d 50 ff             	lea    -0x1(%eax),%edx
 804a6f8:	8b 45 08             	mov    0x8(%ebp),%eax
 804a6fb:	89 90 88 00 00 00    	mov    %edx,0x88(%eax)
 804a701:	eb 12                	jmp    804a715 <removeSign+0x89>
 804a703:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804a707:	8b 45 08             	mov    0x8(%ebp),%eax
 804a70a:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804a710:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 804a713:	7f 86                	jg     804a69b <removeSign+0xf>
 804a715:	90                   	nop
 804a716:	c9                   	leave  
 804a717:	c3                   	ret    

0804a718 <createDAGNode>:
 804a718:	55                   	push   %ebp
 804a719:	89 e5                	mov    %esp,%ebp
 804a71b:	83 ec 18             	sub    $0x18,%esp
 804a71e:	83 ec 0c             	sub    $0xc,%esp
 804a721:	68 9c 00 00 00       	push   $0x9c
 804a726:	e8 55 e1 ff ff       	call   8048880 <malloc@plt>
 804a72b:	83 c4 10             	add    $0x10,%esp
 804a72e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a731:	83 ec 04             	sub    $0x4,%esp
 804a734:	68 9c 00 00 00       	push   $0x9c
 804a739:	6a 00                	push   $0x0
 804a73b:	ff 75 f4             	pushl  -0xc(%ebp)
 804a73e:	e8 bd e1 ff ff       	call   8048900 <memset@plt>
 804a743:	83 c4 10             	add    $0x10,%esp
 804a746:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804a74a:	75 17                	jne    804a763 <createDAGNode+0x4b>
 804a74c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a74f:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804a755:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a758:	8b 55 08             	mov    0x8(%ebp),%edx
 804a75b:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
 804a761:	eb 16                	jmp    804a779 <createDAGNode+0x61>
 804a763:	68 20 45 05 08       	push   $0x8054520
 804a768:	6a 66                	push   $0x66
 804a76a:	68 d8 44 05 08       	push   $0x80544d8
 804a76f:	68 e1 44 05 08       	push   $0x80544e1
 804a774:	e8 47 e2 ff ff       	call   80489c0 <__assert_fail@plt>
 804a779:	a1 0c 91 05 08       	mov    0x805910c,%eax
 804a77e:	8d 50 01             	lea    0x1(%eax),%edx
 804a781:	89 15 0c 91 05 08    	mov    %edx,0x805910c
 804a787:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a78a:	89 14 85 60 91 05 08 	mov    %edx,0x8059160(,%eax,4)
 804a791:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a794:	c9                   	leave  
 804a795:	c3                   	ret    

0804a796 <insertNode>:
 804a796:	55                   	push   %ebp
 804a797:	89 e5                	mov    %esp,%ebp
 804a799:	83 ec 18             	sub    $0x18,%esp
 804a79c:	83 ec 0c             	sub    $0xc,%esp
 804a79f:	68 e3 44 05 08       	push   $0x80544e3
 804a7a4:	e8 e7 e0 ff ff       	call   8048890 <puts@plt>
 804a7a9:	83 c4 10             	add    $0x10,%esp
 804a7ac:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a7b3:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804a7b7:	75 16                	jne    804a7cf <insertNode+0x39>
 804a7b9:	83 ec 08             	sub    $0x8,%esp
 804a7bc:	ff 75 0c             	pushl  0xc(%ebp)
 804a7bf:	ff 75 08             	pushl  0x8(%ebp)
 804a7c2:	e8 51 ff ff ff       	call   804a718 <createDAGNode>
 804a7c7:	83 c4 10             	add    $0x10,%esp
 804a7ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a7cd:	eb 16                	jmp    804a7e5 <insertNode+0x4f>
 804a7cf:	68 30 45 05 08       	push   $0x8054530
 804a7d4:	6a 7d                	push   $0x7d
 804a7d6:	68 d8 44 05 08       	push   $0x80544d8
 804a7db:	68 e1 44 05 08       	push   $0x80544e1
 804a7e0:	e8 db e1 ff ff       	call   80489c0 <__assert_fail@plt>
 804a7e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a7e8:	c9                   	leave  
 804a7e9:	c3                   	ret    

0804a7ea <insertTuple3>:
 804a7ea:	55                   	push   %ebp
 804a7eb:	89 e5                	mov    %esp,%ebp
 804a7ed:	83 ec 18             	sub    $0x18,%esp
 804a7f0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a7f7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a7fa:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a7fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a800:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a803:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a806:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a809:	8b 45 08             	mov    0x8(%ebp),%eax
 804a80c:	8b 40 08             	mov    0x8(%eax),%eax
 804a80f:	83 ec 0c             	sub    $0xc,%esp
 804a812:	50                   	push   %eax
 804a813:	e8 b0 fc ff ff       	call   804a4c8 <findSign>
 804a818:	83 c4 10             	add    $0x10,%esp
 804a81b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a81e:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804a822:	75 32                	jne    804a856 <insertTuple3+0x6c>
 804a824:	8b 45 08             	mov    0x8(%ebp),%eax
 804a827:	8b 40 08             	mov    0x8(%eax),%eax
 804a82a:	83 ec 0c             	sub    $0xc,%esp
 804a82d:	50                   	push   %eax
 804a82e:	e8 42 fd ff ff       	call   804a575 <findLeaf>
 804a833:	83 c4 10             	add    $0x10,%esp
 804a836:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a839:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804a83d:	75 17                	jne    804a856 <insertTuple3+0x6c>
 804a83f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a842:	8b 40 08             	mov    0x8(%eax),%eax
 804a845:	83 ec 08             	sub    $0x8,%esp
 804a848:	6a 00                	push   $0x0
 804a84a:	50                   	push   %eax
 804a84b:	e8 46 ff ff ff       	call   804a796 <insertNode>
 804a850:	83 c4 10             	add    $0x10,%esp
 804a853:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a856:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804a85a:	75 19                	jne    804a875 <insertTuple3+0x8b>
 804a85c:	68 3c 45 05 08       	push   $0x805453c
 804a861:	68 94 00 00 00       	push   $0x94
 804a866:	68 d8 44 05 08       	push   $0x80544d8
 804a86b:	68 fd 44 05 08       	push   $0x80544fd
 804a870:	e8 4b e1 ff ff       	call   80489c0 <__assert_fail@plt>
 804a875:	8b 45 08             	mov    0x8(%ebp),%eax
 804a878:	8b 40 0c             	mov    0xc(%eax),%eax
 804a87b:	85 c0                	test   %eax,%eax
 804a87d:	74 4d                	je     804a8cc <insertTuple3+0xe2>
 804a87f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a882:	8b 40 0c             	mov    0xc(%eax),%eax
 804a885:	83 ec 0c             	sub    $0xc,%esp
 804a888:	50                   	push   %eax
 804a889:	e8 3a fc ff ff       	call   804a4c8 <findSign>
 804a88e:	83 c4 10             	add    $0x10,%esp
 804a891:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a894:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a898:	75 32                	jne    804a8cc <insertTuple3+0xe2>
 804a89a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a89d:	8b 40 0c             	mov    0xc(%eax),%eax
 804a8a0:	83 ec 0c             	sub    $0xc,%esp
 804a8a3:	50                   	push   %eax
 804a8a4:	e8 cc fc ff ff       	call   804a575 <findLeaf>
 804a8a9:	83 c4 10             	add    $0x10,%esp
 804a8ac:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a8af:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a8b3:	75 17                	jne    804a8cc <insertTuple3+0xe2>
 804a8b5:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8b8:	8b 40 0c             	mov    0xc(%eax),%eax
 804a8bb:	83 ec 08             	sub    $0x8,%esp
 804a8be:	6a 00                	push   $0x0
 804a8c0:	50                   	push   %eax
 804a8c1:	e8 d0 fe ff ff       	call   804a796 <insertNode>
 804a8c6:	83 c4 10             	add    $0x10,%esp
 804a8c9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a8cc:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8cf:	8b 40 04             	mov    0x4(%eax),%eax
 804a8d2:	85 c0                	test   %eax,%eax
 804a8d4:	74 30                	je     804a906 <insertTuple3+0x11c>
 804a8d6:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8d9:	8b 40 04             	mov    0x4(%eax),%eax
 804a8dc:	83 ec 0c             	sub    $0xc,%esp
 804a8df:	50                   	push   %eax
 804a8e0:	e8 e3 fb ff ff       	call   804a4c8 <findSign>
 804a8e5:	83 c4 10             	add    $0x10,%esp
 804a8e8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a8eb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804a8ef:	74 15                	je     804a906 <insertTuple3+0x11c>
 804a8f1:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8f4:	8b 40 04             	mov    0x4(%eax),%eax
 804a8f7:	83 ec 08             	sub    $0x8,%esp
 804a8fa:	50                   	push   %eax
 804a8fb:	ff 75 f4             	pushl  -0xc(%ebp)
 804a8fe:	e8 89 fd ff ff       	call   804a68c <removeSign>
 804a903:	83 c4 10             	add    $0x10,%esp
 804a906:	8b 45 08             	mov    0x8(%ebp),%eax
 804a909:	8b 00                	mov    (%eax),%eax
 804a90b:	83 f8 01             	cmp    $0x1,%eax
 804a90e:	75 27                	jne    804a937 <insertTuple3+0x14d>
 804a910:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a913:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804a919:	8d 48 01             	lea    0x1(%eax),%ecx
 804a91c:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804a91f:	89 8a 88 00 00 00    	mov    %ecx,0x88(%edx)
 804a925:	8b 55 08             	mov    0x8(%ebp),%edx
 804a928:	8b 4a 04             	mov    0x4(%edx),%ecx
 804a92b:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804a92e:	89 4c 82 08          	mov    %ecx,0x8(%edx,%eax,4)
 804a932:	e9 d5 00 00 00       	jmp    804aa0c <insertTuple3+0x222>
 804a937:	8b 45 08             	mov    0x8(%ebp),%eax
 804a93a:	8b 48 0c             	mov    0xc(%eax),%ecx
 804a93d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a940:	8b 50 08             	mov    0x8(%eax),%edx
 804a943:	8b 45 08             	mov    0x8(%ebp),%eax
 804a946:	8b 00                	mov    (%eax),%eax
 804a948:	83 ec 04             	sub    $0x4,%esp
 804a94b:	51                   	push   %ecx
 804a94c:	52                   	push   %edx
 804a94d:	50                   	push   %eax
 804a94e:	e8 b7 fc ff ff       	call   804a60a <findOp>
 804a953:	83 c4 10             	add    $0x10,%esp
 804a956:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a959:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a95d:	0f 85 87 00 00 00    	jne    804a9ea <insertTuple3+0x200>
 804a963:	83 ec 0c             	sub    $0xc,%esp
 804a966:	68 9c 00 00 00       	push   $0x9c
 804a96b:	e8 10 df ff ff       	call   8048880 <malloc@plt>
 804a970:	83 c4 10             	add    $0x10,%esp
 804a973:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a976:	83 ec 04             	sub    $0x4,%esp
 804a979:	68 9c 00 00 00       	push   $0x9c
 804a97e:	6a 00                	push   $0x0
 804a980:	ff 75 f0             	pushl  -0x10(%ebp)
 804a983:	e8 78 df ff ff       	call   8048900 <memset@plt>
 804a988:	83 c4 10             	add    $0x10,%esp
 804a98b:	8b 45 08             	mov    0x8(%ebp),%eax
 804a98e:	8b 10                	mov    (%eax),%edx
 804a990:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a993:	89 50 04             	mov    %edx,0x4(%eax)
 804a996:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a999:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804a99c:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
 804a9a2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a9a5:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804a9a8:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
 804a9ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a9b1:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804a9b7:	8d 48 01             	lea    0x1(%eax),%ecx
 804a9ba:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804a9bd:	89 8a 88 00 00 00    	mov    %ecx,0x88(%edx)
 804a9c3:	8b 55 08             	mov    0x8(%ebp),%edx
 804a9c6:	8b 4a 04             	mov    0x4(%edx),%ecx
 804a9c9:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804a9cc:	89 4c 82 08          	mov    %ecx,0x8(%edx,%eax,4)
 804a9d0:	a1 0c 91 05 08       	mov    0x805910c,%eax
 804a9d5:	8d 50 01             	lea    0x1(%eax),%edx
 804a9d8:	89 15 0c 91 05 08    	mov    %edx,0x805910c
 804a9de:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804a9e1:	89 14 85 60 91 05 08 	mov    %edx,0x8059160(,%eax,4)
 804a9e8:	eb 22                	jmp    804aa0c <insertTuple3+0x222>
 804a9ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a9ed:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804a9f3:	8d 48 01             	lea    0x1(%eax),%ecx
 804a9f6:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804a9f9:	89 8a 88 00 00 00    	mov    %ecx,0x88(%edx)
 804a9ff:	8b 55 08             	mov    0x8(%ebp),%edx
 804aa02:	8b 4a 04             	mov    0x4(%edx),%ecx
 804aa05:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804aa08:	89 4c 82 08          	mov    %ecx,0x8(%edx,%eax,4)
 804aa0c:	90                   	nop
 804aa0d:	c9                   	leave  
 804aa0e:	c3                   	ret    

0804aa0f <DAG2ir>:
 804aa0f:	55                   	push   %ebp
 804aa10:	89 e5                	mov    %esp,%ebp
 804aa12:	83 ec 38             	sub    $0x38,%esp
 804aa15:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 804aa1c:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804aa23:	e9 7d 01 00 00       	jmp    804aba5 <DAG2ir+0x196>
 804aa28:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804aa2b:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804aa32:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804aa35:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804aa38:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804aa3f:	8b 00                	mov    (%eax),%eax
 804aa41:	85 c0                	test   %eax,%eax
 804aa43:	0f 85 57 01 00 00    	jne    804aba0 <DAG2ir+0x191>
 804aa49:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 804aa50:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804aa57:	e9 25 01 00 00       	jmp    804ab81 <DAG2ir+0x172>
 804aa5c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804aa5f:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804aa66:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804aa69:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
 804aa6d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804aa70:	8b 45 ec             	mov    -0x14(%ebp),%eax
 //804aa73:	8b 00                	mov    (%eax),%eax
 804aa75:	85 c0                	test   %eax,%eax
 804aa77:	0f 85 00 01 00 00    	jne    804ab7d <DAG2ir+0x16e>
 804aa7d:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804aa81:	7e 35                	jle    804aab8 <DAG2ir+0xa9>
 804aa83:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804aa86:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804aa8c:	6a 00                	push   $0x0
 804aa8e:	50                   	push   %eax
 804aa8f:	ff 75 ec             	pushl  -0x14(%ebp)
 804aa92:	6a 01                	push   $0x1
 804aa94:	e8 83 10 00 00       	call   804bb1c <newIC>
 804aa99:	83 c4 10             	add    $0x10,%esp
 804aa9c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804aa9f:	83 ec 08             	sub    $0x8,%esp
 804aaa2:	ff 75 f0             	pushl  -0x10(%ebp)
 804aaa5:	ff 75 d0             	pushl  -0x30(%ebp)
 804aaa8:	e8 63 05 00 00       	call   804b010 <addTail>
 804aaad:	83 c4 10             	add    $0x10,%esp
 804aab0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804aab3:	e9 c1 00 00 00       	jmp    804ab79 <DAG2ir+0x16a>
 804aab8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804aabf:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 804aac6:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804aac9:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804aacf:	85 c0                	test   %eax,%eax
 804aad1:	74 2f                	je     804ab02 <DAG2ir+0xf3>
 804aad3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804aad6:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804aadc:	8b 00                	mov    (%eax),%eax
 804aade:	85 c0                	test   %eax,%eax
 804aae0:	74 0e                	je     804aaf0 <DAG2ir+0xe1>
 804aae2:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804aae5:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
 804aaeb:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804aaee:	eb 12                	jmp    804ab02 <DAG2ir+0xf3>
 804aaf0:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804aaf3:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804aaf9:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804aaff:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804ab02:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ab05:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804ab0b:	85 c0                	test   %eax,%eax
 804ab0d:	74 2f                	je     804ab3e <DAG2ir+0x12f>
 804ab0f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ab12:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804ab18:	8b 00                	mov    (%eax),%eax
 804ab1a:	85 c0                	test   %eax,%eax
 804ab1c:	74 0e                	je     804ab2c <DAG2ir+0x11d>
 804ab1e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ab21:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
 804ab27:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804ab2a:	eb 12                	jmp    804ab3e <DAG2ir+0x12f>
 804ab2c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ab2f:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804ab35:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804ab3b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804ab3e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ab41:	8b 40 04             	mov    0x4(%eax),%eax
 804ab44:	ff 75 e4             	pushl  -0x1c(%ebp)
 804ab47:	ff 75 e0             	pushl  -0x20(%ebp)
 804ab4a:	ff 75 ec             	pushl  -0x14(%ebp)
 804ab4d:	50                   	push   %eax
 804ab4e:	e8 c9 0f 00 00       	call   804bb1c <newIC>
 804ab53:	83 c4 10             	add    $0x10,%esp
 804ab56:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ab59:	83 ec 08             	sub    $0x8,%esp
 804ab5c:	ff 75 f4             	pushl  -0xc(%ebp)
 804ab5f:	ff 75 d0             	pushl  -0x30(%ebp)
 804ab62:	e8 a9 04 00 00       	call   804b010 <addTail>
 804ab67:	83 c4 10             	add    $0x10,%esp
 804ab6a:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804ab6d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ab70:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804ab73:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
 804ab79:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
 804ab7d:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
 804ab81:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804ab84:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804ab8b:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804ab91:	3b 45 d8             	cmp    -0x28(%ebp),%eax
 804ab94:	0f 8f c2 fe ff ff    	jg     804aa5c <DAG2ir+0x4d>
 804ab9a:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804ab9e:	eb 01                	jmp    804aba1 <DAG2ir+0x192>
 804aba0:	90                   	nop
 804aba1:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
 804aba5:	a1 0c 91 05 08       	mov    0x805910c,%eax
 804abaa:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
 804abad:	0f 8c 75 fe ff ff    	jl     804aa28 <DAG2ir+0x19>
 804abb3:	a1 04 91 05 08       	mov    0x8059104,%eax
 804abb8:	83 ec 08             	sub    $0x8,%esp
 804abbb:	50                   	push   %eax
 804abbc:	ff 75 d0             	pushl  -0x30(%ebp)
 804abbf:	e8 7b 06 00 00       	call   804b23f <printInterCodes>
 804abc4:	83 c4 10             	add    $0x10,%esp
 804abc7:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804abca:	c9                   	leave  
 804abcb:	c3                   	ret    

0804abcc <opt_ir>:
 804abcc:	55                   	push   %ebp
 804abcd:	89 e5                	mov    %esp,%ebp
 804abcf:	83 ec 18             	sub    $0x18,%esp
 804abd2:	8b 45 08             	mov    0x8(%ebp),%eax
 804abd5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804abd8:	eb 3a                	jmp    804ac14 <opt_ir+0x48>
 804abda:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804abdd:	8b 00                	mov    (%eax),%eax
 804abdf:	83 e8 01             	sub    $0x1,%eax
 804abe2:	83 f8 16             	cmp    $0x16,%eax
 804abe5:	77 24                	ja     804ac0b <opt_ir+0x3f>
 804abe7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804abea:	83 ec 0c             	sub    $0xc,%esp
 804abed:	50                   	push   %eax
 804abee:	e8 f7 fb ff ff       	call   804a7ea <insertTuple3>
 804abf3:	83 c4 10             	add    $0x10,%esp
 804abf6:	e8 27 00 00 00       	call   804ac22 <printMap>
 804abfb:	83 ec 0c             	sub    $0xc,%esp
 804abfe:	68 12 45 05 08       	push   $0x8054512
 804ac03:	e8 88 dc ff ff       	call   8048890 <puts@plt>
 804ac08:	83 c4 10             	add    $0x10,%esp
 804ac0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ac0e:	8b 40 14             	mov    0x14(%eax),%eax
 804ac11:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ac14:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804ac18:	75 c0                	jne    804abda <opt_ir+0xe>
 804ac1a:	e8 f0 fd ff ff       	call   804aa0f <DAG2ir>
 804ac1f:	90                   	nop
 804ac20:	c9                   	leave  
 804ac21:	c3                   	ret    

0804ac22 <printMap>:
 804ac22:	55                   	push   %ebp
 804ac23:	89 e5                	mov    %esp,%ebp
 804ac25:	83 ec 18             	sub    $0x18,%esp
 804ac28:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804ac2f:	e9 d8 00 00 00       	jmp    804ad0c <printMap+0xea>
 804ac34:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ac37:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804ac3e:	8b 00                	mov    (%eax),%eax
 804ac40:	83 f8 01             	cmp    $0x1,%eax
 804ac43:	75 35                	jne    804ac7a <printMap+0x58>
 804ac45:	83 ec 0c             	sub    $0xc,%esp
 804ac48:	68 14 45 05 08       	push   $0x8054514
 804ac4d:	e8 6e db ff ff       	call   80487c0 <printf@plt>
 804ac52:	83 c4 10             	add    $0x10,%esp
 804ac55:	8b 15 04 91 05 08    	mov    0x8059104,%edx
 804ac5b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ac5e:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804ac65:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
 804ac6b:	83 ec 08             	sub    $0x8,%esp
 804ac6e:	52                   	push   %edx
 804ac6f:	50                   	push   %eax
 804ac70:	e8 b4 04 00 00       	call   804b129 <printOperand>
 804ac75:	83 c4 10             	add    $0x10,%esp
 804ac78:	eb 1e                	jmp    804ac98 <printMap+0x76>
 804ac7a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ac7d:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804ac84:	8b 40 04             	mov    0x4(%eax),%eax
 804ac87:	83 ec 08             	sub    $0x8,%esp
 804ac8a:	50                   	push   %eax
 804ac8b:	68 1a 45 05 08       	push   $0x805451a
 804ac90:	e8 2b db ff ff       	call   80487c0 <printf@plt>
 804ac95:	83 c4 10             	add    $0x10,%esp
 804ac98:	83 ec 0c             	sub    $0xc,%esp
 804ac9b:	68 1d 45 05 08       	push   $0x805451d
 804aca0:	e8 1b db ff ff       	call   80487c0 <printf@plt>
 804aca5:	83 c4 10             	add    $0x10,%esp
 804aca8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804acaf:	eb 35                	jmp    804ace6 <printMap+0xc4>
 804acb1:	8b 15 04 91 05 08    	mov    0x8059104,%edx
 804acb7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804acba:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804acc1:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804acc4:	8b 44 88 08          	mov    0x8(%eax,%ecx,4),%eax
 804acc8:	83 ec 08             	sub    $0x8,%esp
 804accb:	52                   	push   %edx
 804accc:	50                   	push   %eax
 804accd:	e8 57 04 00 00       	call   804b129 <printOperand>
 804acd2:	83 c4 10             	add    $0x10,%esp
 804acd5:	83 ec 0c             	sub    $0xc,%esp
 804acd8:	6a 2c                	push   $0x2c
 804acda:	e8 31 dc ff ff       	call   8048910 <putchar@plt>
 804acdf:	83 c4 10             	add    $0x10,%esp
 804ace2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804ace6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ace9:	8b 04 85 60 91 05 08 	mov    0x8059160(,%eax,4),%eax
 804acf0:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804acf6:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804acf9:	7f b6                	jg     804acb1 <printMap+0x8f>
 804acfb:	83 ec 0c             	sub    $0xc,%esp
 804acfe:	6a 0a                	push   $0xa
 804ad00:	e8 0b dc ff ff       	call   8048910 <putchar@plt>
 804ad05:	83 c4 10             	add    $0x10,%esp
 804ad08:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804ad0c:	a1 0c 91 05 08       	mov    0x805910c,%eax
 804ad11:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 804ad14:	0f 8c 1a ff ff ff    	jl     804ac34 <printMap+0x12>
 804ad1a:	90                   	nop
 804ad1b:	c9                   	leave  
 804ad1c:	c3                   	ret    

0804ad1d <main>:
 804ad1d:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804ad21:	83 e4 f0             	and    $0xfffffff0,%esp
 804ad24:	ff 71 fc             	pushl  -0x4(%ecx)
 804ad27:	55                   	push   %ebp
 804ad28:	89 e5                	mov    %esp,%ebp
 804ad2a:	57                   	push   %edi
 804ad2b:	53                   	push   %ebx
 804ad2c:	51                   	push   %ecx
 804ad2d:	81 ec ac 00 00 00    	sub    $0xac,%esp
 804ad33:	89 cb                	mov    %ecx,%ebx
 804ad35:	8b 43 04             	mov    0x4(%ebx),%eax
 804ad38:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 804ad3e:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804ad44:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804ad47:	31 c0                	xor    %eax,%eax
 804ad49:	83 3b 01             	cmpl   $0x1,(%ebx)
 804ad4c:	0f 8e 4c 02 00 00    	jle    804af9e <main+0x281>
 804ad52:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 804ad59:	00 00 00 
 804ad5c:	e9 2f 02 00 00       	jmp    804af90 <main+0x273>
 804ad61:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804ad67:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804ad6e:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804ad74:	01 d0                	add    %edx,%eax
 804ad76:	8b 00                	mov    (%eax),%eax
 804ad78:	83 ec 08             	sub    $0x8,%esp
 804ad7b:	68 4c 45 05 08       	push   $0x805454c
 804ad80:	50                   	push   %eax
 804ad81:	e8 6a db ff ff       	call   80488f0 <fopen@plt>
 804ad86:	83 c4 10             	add    $0x10,%esp
 804ad89:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
 804ad8f:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
 804ad96:	75 21                	jne    804adb9 <main+0x9c>
 804ad98:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804ad9e:	83 c0 04             	add    $0x4,%eax
 804ada1:	8b 00                	mov    (%eax),%eax
 804ada3:	83 ec 0c             	sub    $0xc,%esp
 804ada6:	50                   	push   %eax
 804ada7:	e8 84 da ff ff       	call   8048830 <perror@plt>
 804adac:	83 c4 10             	add    $0x10,%esp
 804adaf:	b8 01 00 00 00       	mov    $0x1,%eax
 804adb4:	e9 ea 01 00 00       	jmp    804afa3 <main+0x286>
 804adb9:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804adbf:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804adc6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804adcc:	01 d0                	add    %edx,%eax
 804adce:	8b 00                	mov    (%eax),%eax
 804add0:	83 ec 08             	sub    $0x8,%esp
 804add3:	50                   	push   %eax
 804add4:	68 4e 45 05 08       	push   $0x805454e
 804add9:	e8 e2 d9 ff ff       	call   80487c0 <printf@plt>
 804adde:	83 c4 10             	add    $0x10,%esp
 804ade1:	83 ec 0c             	sub    $0xc,%esp
 804ade4:	ff b5 5c ff ff ff    	pushl  -0xa4(%ebp)
 804adea:	e8 e5 7a 00 00       	call   80528d4 <yyrestart>
 804adef:	83 c4 10             	add    $0x10,%esp
 804adf2:	e8 e4 30 00 00       	call   804dedb <yyparse>
 804adf7:	83 ec 0c             	sub    $0xc,%esp
 804adfa:	ff b5 5c ff ff ff    	pushl  -0xa4(%ebp)
 804ae00:	e8 fb d9 ff ff       	call   8048800 <fclose@plt>
 804ae05:	83 c4 10             	add    $0x10,%esp
 804ae08:	c7 05 bc 90 05 08 01 	movl   $0x1,0x80590bc
 804ae0f:	00 00 00 
 804ae12:	a1 24 91 05 08       	mov    0x8059124,%eax
 804ae17:	85 c0                	test   %eax,%eax
 804ae19:	0f 85 69 01 00 00    	jne    804af88 <main+0x26b>
 804ae1f:	a1 14 91 05 08       	mov    0x8059114,%eax
 804ae24:	85 c0                	test   %eax,%eax
 804ae26:	0f 84 5c 01 00 00    	je     804af88 <main+0x26b>
 804ae2c:	e8 90 86 00 00       	call   80534c1 <initTable>
 804ae31:	e8 2f 88 00 00       	call   8053665 <preprocessTable>
 804ae36:	a1 14 91 05 08       	mov    0x8059114,%eax
 804ae3b:	83 ec 0c             	sub    $0xc,%esp
 804ae3e:	50                   	push   %eax
 804ae3f:	e8 58 df ff ff       	call   8048d9c <sematicCheck>
 804ae44:	83 c4 10             	add    $0x10,%esp
 804ae47:	a1 24 91 05 08       	mov    0x8059124,%eax
 804ae4c:	85 c0                	test   %eax,%eax
 804ae4e:	0f 85 f7 00 00 00    	jne    804af4b <main+0x22e>
 804ae54:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804ae5a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804ae61:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804ae67:	01 d0                	add    %edx,%eax
 804ae69:	8b 00                	mov    (%eax),%eax
 804ae6b:	83 ec 08             	sub    $0x8,%esp
 804ae6e:	50                   	push   %eax
 804ae6f:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
 804ae75:	50                   	push   %eax
 804ae76:	e8 e5 d9 ff ff       	call   8048860 <strcpy@plt>
 804ae7b:	83 c4 10             	add    $0x10,%esp
 804ae7e:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
 804ae84:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804ae89:	89 c2                	mov    %eax,%edx
 804ae8b:	b8 00 00 00 00       	mov    $0x0,%eax
 804ae90:	89 d7                	mov    %edx,%edi
 804ae92:	f2 ae                	repnz scas %es:(%edi),%al
 804ae94:	89 c8                	mov    %ecx,%eax
 804ae96:	f7 d0                	not    %eax
 804ae98:	8d 50 ff             	lea    -0x1(%eax),%edx
 804ae9b:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
 804aea1:	01 d0                	add    %edx,%eax
 804aea3:	c7 00 2e 69 72 00    	movl   $0x72692e,(%eax)
 804aea9:	83 ec 08             	sub    $0x8,%esp
 804aeac:	68 6a 45 05 08       	push   $0x805456a
 804aeb1:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
 804aeb7:	50                   	push   %eax
 804aeb8:	e8 33 da ff ff       	call   80488f0 <fopen@plt>
 804aebd:	83 c4 10             	add    $0x10,%esp
 804aec0:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 804aec6:	83 bd 60 ff ff ff 00 	cmpl   $0x0,-0xa0(%ebp)
 804aecd:	75 16                	jne    804aee5 <main+0x1c8>
 804aecf:	68 78 45 05 08       	push   $0x8054578
 804aed4:	6a 31                	push   $0x31
 804aed6:	68 6c 45 05 08       	push   $0x805456c
 804aedb:	68 73 45 05 08       	push   $0x8054573
 804aee0:	e8 db da ff ff       	call   80489c0 <__assert_fail@plt>
 804aee5:	a1 14 91 05 08       	mov    0x8059114,%eax
 804aeea:	83 ec 08             	sub    $0x8,%esp
 804aeed:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804aef3:	50                   	push   %eax
 804aef4:	e8 20 0e 00 00       	call   804bd19 <generate_ir>
 804aef9:	83 c4 10             	add    $0x10,%esp
 804aefc:	a3 10 91 05 08       	mov    %eax,0x8059110
 804af01:	a1 10 91 05 08       	mov    0x8059110,%eax
 804af06:	83 ec 0c             	sub    $0xc,%esp
 804af09:	50                   	push   %eax
 804af0a:	e8 b0 00 00 00       	call   804afbf <test_ir>
 804af0f:	83 c4 10             	add    $0x10,%esp
 804af12:	a1 10 91 05 08       	mov    0x8059110,%eax
 804af17:	83 ec 08             	sub    $0x8,%esp
 804af1a:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804af20:	50                   	push   %eax
 804af21:	e8 19 03 00 00       	call   804b23f <printInterCodes>
 804af26:	83 c4 10             	add    $0x10,%esp
 804af29:	a1 10 91 05 08       	mov    0x8059110,%eax
 804af2e:	83 ec 0c             	sub    $0xc,%esp
 804af31:	50                   	push   %eax
 804af32:	e8 95 fc ff ff       	call   804abcc <opt_ir>
 804af37:	83 c4 10             	add    $0x10,%esp
 804af3a:	83 ec 0c             	sub    $0xc,%esp
 804af3d:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804af43:	e8 b8 d8 ff ff       	call   8048800 <fclose@plt>
 804af48:	83 c4 10             	add    $0x10,%esp
 804af4b:	a1 14 91 05 08       	mov    0x8059114,%eax
 804af50:	83 ec 0c             	sub    $0xc,%esp
 804af53:	50                   	push   %eax
 804af54:	e8 f5 dd ff ff       	call   8048d4e <deleteTree>
 804af59:	83 c4 10             	add    $0x10,%esp
 804af5c:	e8 97 85 00 00       	call   80534f8 <clearTable>
 804af61:	a1 10 91 05 08       	mov    0x8059110,%eax
 804af66:	83 ec 0c             	sub    $0xc,%esp
 804af69:	50                   	push   %eax
 804af6a:	e8 06 01 00 00       	call   804b075 <clearInterCodes>
 804af6f:	83 c4 10             	add    $0x10,%esp
 804af72:	c7 05 14 91 05 08 00 	movl   $0x0,0x8059114
 804af79:	00 00 00 
 804af7c:	c7 05 24 91 05 08 00 	movl   $0x0,0x8059124
 804af83:	00 00 00 
 804af86:	eb 01                	jmp    804af89 <main+0x26c>
 804af88:	90                   	nop
 804af89:	83 85 58 ff ff ff 01 	addl   $0x1,-0xa8(%ebp)
 804af90:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804af96:	3b 03                	cmp    (%ebx),%eax
 804af98:	0f 8c c3 fd ff ff    	jl     804ad61 <main+0x44>
 804af9e:	b8 00 00 00 00       	mov    $0x0,%eax
 804afa3:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 804afa6:	65 33 3d 14 00 00 00 	xor    %gs:0x14,%edi
 804afad:	74 05                	je     804afb4 <main+0x297>
 804afaf:	e8 5c d8 ff ff       	call   8048810 <__stack_chk_fail@plt>
 804afb4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804afb7:	59                   	pop    %ecx
 804afb8:	5b                   	pop    %ebx
 804afb9:	5f                   	pop    %edi
 804afba:	5d                   	pop    %ebp
 804afbb:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804afbe:	c3                   	ret    

0804afbf <test_ir>:
 804afbf:	55                   	push   %ebp
 804afc0:	89 e5                	mov    %esp,%ebp
 804afc2:	83 ec 18             	sub    $0x18,%esp
 804afc5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804afcc:	eb 2d                	jmp    804affb <test_ir+0x3c>
 804afce:	8b 45 08             	mov    0x8(%ebp),%eax
 804afd1:	8b 40 14             	mov    0x14(%eax),%eax
 804afd4:	8b 40 10             	mov    0x10(%eax),%eax
 804afd7:	3b 45 08             	cmp    0x8(%ebp),%eax
 804afda:	74 16                	je     804aff2 <test_ir+0x33>
 804afdc:	68 a4 45 05 08       	push   $0x80545a4
 804afe1:	6a 0c                	push   $0xc
 804afe3:	68 80 45 05 08       	push   $0x8054580
 804afe8:	68 87 45 05 08       	push   $0x8054587
 804afed:	e8 ce d9 ff ff       	call   80489c0 <__assert_fail@plt>
 804aff2:	8b 45 08             	mov    0x8(%ebp),%eax
 804aff5:	8b 40 14             	mov    0x14(%eax),%eax
 804aff8:	89 45 08             	mov    %eax,0x8(%ebp)
 804affb:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804afff:	74 0a                	je     804b00b <test_ir+0x4c>
 804b001:	8b 45 08             	mov    0x8(%ebp),%eax
 804b004:	8b 40 14             	mov    0x14(%eax),%eax
 804b007:	85 c0                	test   %eax,%eax
 804b009:	75 c3                	jne    804afce <test_ir+0xf>
 804b00b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b00e:	c9                   	leave  
 804b00f:	c3                   	ret    

0804b010 <addTail>:
 804b010:	55                   	push   %ebp
 804b011:	89 e5                	mov    %esp,%ebp
 804b013:	83 ec 10             	sub    $0x10,%esp
 804b016:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b01a:	75 05                	jne    804b021 <addTail+0x11>
 804b01c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b01f:	eb 36                	jmp    804b057 <addTail+0x47>
 804b021:	8b 45 08             	mov    0x8(%ebp),%eax
 804b024:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804b027:	eb 09                	jmp    804b032 <addTail+0x22>
 804b029:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b02c:	8b 40 14             	mov    0x14(%eax),%eax
 804b02f:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804b032:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b035:	8b 40 14             	mov    0x14(%eax),%eax
 804b038:	85 c0                	test   %eax,%eax
 804b03a:	75 ed                	jne    804b029 <addTail+0x19>
 804b03c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b03f:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b042:	89 50 14             	mov    %edx,0x14(%eax)
 804b045:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804b049:	74 09                	je     804b054 <addTail+0x44>
 804b04b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b04e:	8b 55 fc             	mov    -0x4(%ebp),%edx
 804b051:	89 50 10             	mov    %edx,0x10(%eax)
 804b054:	8b 45 08             	mov    0x8(%ebp),%eax
 804b057:	c9                   	leave  
 804b058:	c3                   	ret    

0804b059 <delInterCodes>:
 804b059:	55                   	push   %ebp
 804b05a:	89 e5                	mov    %esp,%ebp
 804b05c:	83 ec 08             	sub    $0x8,%esp
 804b05f:	68 18 49 05 08       	push   $0x8054918
 804b064:	6a 14                	push   $0x14
 804b066:	68 ac 45 05 08       	push   $0x80545ac
 804b06b:	68 b1 45 05 08       	push   $0x80545b1
 804b070:	e8 4b d9 ff ff       	call   80489c0 <__assert_fail@plt>

0804b075 <clearInterCodes>:
 804b075:	55                   	push   %ebp
 804b076:	89 e5                	mov    %esp,%ebp
 804b078:	83 ec 18             	sub    $0x18,%esp
 804b07b:	eb 1d                	jmp    804b09a <clearInterCodes+0x25>
 804b07d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b080:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b083:	8b 45 08             	mov    0x8(%ebp),%eax
 804b086:	8b 40 14             	mov    0x14(%eax),%eax
 804b089:	89 45 08             	mov    %eax,0x8(%ebp)
 804b08c:	83 ec 0c             	sub    $0xc,%esp
 804b08f:	ff 75 f4             	pushl  -0xc(%ebp)
 804b092:	e8 39 d7 ff ff       	call   80487d0 <free@plt>
 804b097:	83 c4 10             	add    $0x10,%esp
 804b09a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b09e:	75 dd                	jne    804b07d <clearInterCodes+0x8>
 804b0a0:	90                   	nop
 804b0a1:	c9                   	leave  
 804b0a2:	c3                   	ret    

0804b0a3 <newParm>:
 804b0a3:	55                   	push   %ebp
 804b0a4:	89 e5                	mov    %esp,%ebp
 804b0a6:	a1 9c 90 05 08       	mov    0x805909c,%eax
 804b0ab:	8d 50 01             	lea    0x1(%eax),%edx
 804b0ae:	89 15 9c 90 05 08    	mov    %edx,0x805909c
 804b0b4:	5d                   	pop    %ebp
 804b0b5:	c3                   	ret    

0804b0b6 <newArg>:
 804b0b6:	55                   	push   %ebp
 804b0b7:	89 e5                	mov    %esp,%ebp
 804b0b9:	a1 a0 90 05 08       	mov    0x80590a0,%eax
 804b0be:	8d 50 01             	lea    0x1(%eax),%edx
 804b0c1:	89 15 a0 90 05 08    	mov    %edx,0x80590a0
 804b0c7:	5d                   	pop    %ebp
 804b0c8:	c3                   	ret    

0804b0c9 <newTemp>:
 804b0c9:	55                   	push   %ebp
 804b0ca:	89 e5                	mov    %esp,%ebp
 804b0cc:	83 ec 18             	sub    $0x18,%esp
 804b0cf:	e8 b5 09 00 00       	call   804ba89 <newOperand>
 804b0d4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b0d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b0da:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
 804b0e0:	a1 a4 90 05 08       	mov    0x80590a4,%eax
 804b0e5:	8d 50 01             	lea    0x1(%eax),%edx
 804b0e8:	89 15 a4 90 05 08    	mov    %edx,0x80590a4
 804b0ee:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b0f1:	89 42 04             	mov    %eax,0x4(%edx)
 804b0f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b0f7:	c9                   	leave  
 804b0f8:	c3                   	ret    

0804b0f9 <newLabel>:
 804b0f9:	55                   	push   %ebp
 804b0fa:	89 e5                	mov    %esp,%ebp
 804b0fc:	83 ec 18             	sub    $0x18,%esp
 804b0ff:	e8 85 09 00 00       	call   804ba89 <newOperand>
 804b104:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b107:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b10a:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
 804b110:	a1 a8 90 05 08       	mov    0x80590a8,%eax
 804b115:	8d 50 01             	lea    0x1(%eax),%edx
 804b118:	89 15 a8 90 05 08    	mov    %edx,0x80590a8
 804b11e:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b121:	89 42 04             	mov    %eax,0x4(%edx)
 804b124:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b127:	c9                   	leave  
 804b128:	c3                   	ret    

0804b129 <printOperand>:
 804b129:	55                   	push   %ebp
 804b12a:	89 e5                	mov    %esp,%ebp
 804b12c:	83 ec 08             	sub    $0x8,%esp
 804b12f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b133:	75 15                	jne    804b14a <printOperand+0x21>
 804b135:	83 ec 0c             	sub    $0xc,%esp
 804b138:	68 b3 45 05 08       	push   $0x80545b3
 804b13d:	e8 7e d6 ff ff       	call   80487c0 <printf@plt>
 804b142:	83 c4 10             	add    $0x10,%esp
 804b145:	e9 f3 00 00 00       	jmp    804b23d <printOperand+0x114>
 804b14a:	8b 45 08             	mov    0x8(%ebp),%eax
 804b14d:	8b 00                	mov    (%eax),%eax
 804b14f:	83 f8 06             	cmp    $0x6,%eax
 804b152:	0f 87 cb 00 00 00    	ja     804b223 <printOperand+0xfa>
 804b158:	8b 04 85 d0 45 05 08 	mov    0x80545d0(,%eax,4),%eax
 804b15f:	ff e0                	jmp    *%eax
 804b161:	8b 45 08             	mov    0x8(%ebp),%eax
 804b164:	8b 40 04             	mov    0x4(%eax),%eax
 804b167:	83 ec 08             	sub    $0x8,%esp
 804b16a:	ff 75 0c             	pushl  0xc(%ebp)
 804b16d:	50                   	push   %eax
 804b16e:	e8 3d d8 ff ff       	call   80489b0 <fputs@plt>
 804b173:	83 c4 10             	add    $0x10,%esp
 804b176:	e9 c2 00 00 00       	jmp    804b23d <printOperand+0x114>
 804b17b:	8b 45 08             	mov    0x8(%ebp),%eax
 804b17e:	8b 40 04             	mov    0x4(%eax),%eax
 804b181:	83 ec 04             	sub    $0x4,%esp
 804b184:	50                   	push   %eax
 804b185:	68 bb 45 05 08       	push   $0x80545bb
 804b18a:	ff 75 0c             	pushl  0xc(%ebp)
 804b18d:	e8 4e d7 ff ff       	call   80488e0 <fprintf@plt>
 804b192:	83 c4 10             	add    $0x10,%esp
 804b195:	e9 a3 00 00 00       	jmp    804b23d <printOperand+0x114>
 804b19a:	8b 45 08             	mov    0x8(%ebp),%eax
 804b19d:	8b 40 04             	mov    0x4(%eax),%eax
 804b1a0:	83 ec 04             	sub    $0x4,%esp
 804b1a3:	50                   	push   %eax
 804b1a4:	68 bf 45 05 08       	push   $0x80545bf
 804b1a9:	ff 75 0c             	pushl  0xc(%ebp)
 804b1ac:	e8 2f d7 ff ff       	call   80488e0 <fprintf@plt>
 804b1b1:	83 c4 10             	add    $0x10,%esp
 804b1b4:	e9 84 00 00 00       	jmp    804b23d <printOperand+0x114>
 804b1b9:	8b 45 08             	mov    0x8(%ebp),%eax
 804b1bc:	8b 40 04             	mov    0x4(%eax),%eax
 804b1bf:	83 ec 04             	sub    $0x4,%esp
 804b1c2:	50                   	push   %eax
 804b1c3:	68 c3 45 05 08       	push   $0x80545c3
 804b1c8:	ff 75 0c             	pushl  0xc(%ebp)
 804b1cb:	e8 10 d7 ff ff       	call   80488e0 <fprintf@plt>
 804b1d0:	83 c4 10             	add    $0x10,%esp
 804b1d3:	eb 68                	jmp    804b23d <printOperand+0x114>
 804b1d5:	83 ec 08             	sub    $0x8,%esp
 804b1d8:	ff 75 0c             	pushl  0xc(%ebp)
 804b1db:	6a 26                	push   $0x26
 804b1dd:	e8 6e d7 ff ff       	call   8048950 <fputc@plt>
 804b1e2:	83 c4 10             	add    $0x10,%esp
 804b1e5:	8b 45 08             	mov    0x8(%ebp),%eax
 804b1e8:	8b 40 04             	mov    0x4(%eax),%eax
 804b1eb:	83 ec 08             	sub    $0x8,%esp
 804b1ee:	ff 75 0c             	pushl  0xc(%ebp)
 804b1f1:	50                   	push   %eax
 804b1f2:	e8 32 ff ff ff       	call   804b129 <printOperand>
 804b1f7:	83 c4 10             	add    $0x10,%esp
 804b1fa:	eb 41                	jmp    804b23d <printOperand+0x114>
 804b1fc:	83 ec 08             	sub    $0x8,%esp
 804b1ff:	ff 75 0c             	pushl  0xc(%ebp)
 804b202:	6a 2a                	push   $0x2a
 804b204:	e8 47 d7 ff ff       	call   8048950 <fputc@plt>
 804b209:	83 c4 10             	add    $0x10,%esp
 804b20c:	8b 45 08             	mov    0x8(%ebp),%eax
 804b20f:	8b 40 04             	mov    0x4(%eax),%eax
 804b212:	83 ec 08             	sub    $0x8,%esp
 804b215:	ff 75 0c             	pushl  0xc(%ebp)
 804b218:	50                   	push   %eax
 804b219:	e8 0b ff ff ff       	call   804b129 <printOperand>
 804b21e:	83 c4 10             	add    $0x10,%esp
 804b221:	eb 1a                	jmp    804b23d <printOperand+0x114>
 804b223:	8b 45 08             	mov    0x8(%ebp),%eax
 804b226:	8b 40 04             	mov    0x4(%eax),%eax
 804b229:	83 ec 04             	sub    $0x4,%esp
 804b22c:	50                   	push   %eax
 804b22d:	68 cb 45 05 08       	push   $0x80545cb
 804b232:	ff 75 0c             	pushl  0xc(%ebp)
 804b235:	e8 a6 d6 ff ff       	call   80488e0 <fprintf@plt>
 804b23a:	83 c4 10             	add    $0x10,%esp
 804b23d:	c9                   	leave  
 804b23e:	c3                   	ret    

0804b23f <printInterCodes>:
 804b23f:	55                   	push   %ebp
 804b240:	89 e5                	mov    %esp,%ebp
 804b242:	83 ec 18             	sub    $0x18,%esp
 804b245:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b249:	75 1a                	jne    804b265 <printInterCodes+0x26>
 804b24b:	83 ec 0c             	sub    $0xc,%esp
 804b24e:	68 ec 45 05 08       	push   $0x80545ec
 804b253:	e8 38 d6 ff ff       	call   8048890 <puts@plt>
 804b258:	83 c4 10             	add    $0x10,%esp
 804b25b:	b8 00 00 00 00       	mov    $0x0,%eax
 804b260:	e9 f5 07 00 00       	jmp    804ba5a <printInterCodes+0x81b>
 804b265:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804b269:	75 08                	jne    804b273 <printInterCodes+0x34>
 804b26b:	a1 04 91 05 08       	mov    0x8059104,%eax
 804b270:	89 45 0c             	mov    %eax,0xc(%ebp)
 804b273:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804b27a:	e9 ce 07 00 00       	jmp    804ba4d <printInterCodes+0x80e>
 804b27f:	8b 45 08             	mov    0x8(%ebp),%eax
 804b282:	8b 00                	mov    (%eax),%eax
 804b284:	83 f8 17             	cmp    $0x17,%eax
 804b287:	0f 87 90 07 00 00    	ja     804ba1d <printInterCodes+0x7de>
 804b28d:	8b 04 85 90 46 05 08 	mov    0x8054690(,%eax,4),%eax
 804b294:	ff e0                	jmp    *%eax
 804b296:	8b 45 08             	mov    0x8(%ebp),%eax
 804b299:	8b 40 04             	mov    0x4(%eax),%eax
 804b29c:	83 ec 08             	sub    $0x8,%esp
 804b29f:	ff 75 0c             	pushl  0xc(%ebp)
 804b2a2:	50                   	push   %eax
 804b2a3:	e8 81 fe ff ff       	call   804b129 <printOperand>
 804b2a8:	83 c4 10             	add    $0x10,%esp
 804b2ab:	ff 75 0c             	pushl  0xc(%ebp)
 804b2ae:	6a 04                	push   $0x4
 804b2b0:	6a 01                	push   $0x1
 804b2b2:	68 f1 45 05 08       	push   $0x80545f1
 804b2b7:	e8 84 d5 ff ff       	call   8048840 <fwrite@plt>
 804b2bc:	83 c4 10             	add    $0x10,%esp
 804b2bf:	8b 45 08             	mov    0x8(%ebp),%eax
 804b2c2:	8b 40 08             	mov    0x8(%eax),%eax
 804b2c5:	83 ec 08             	sub    $0x8,%esp
 804b2c8:	ff 75 0c             	pushl  0xc(%ebp)
 804b2cb:	50                   	push   %eax
 804b2cc:	e8 58 fe ff ff       	call   804b129 <printOperand>
 804b2d1:	83 c4 10             	add    $0x10,%esp
 804b2d4:	e9 57 07 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b2d9:	8b 45 08             	mov    0x8(%ebp),%eax
 804b2dc:	8b 40 04             	mov    0x4(%eax),%eax
 804b2df:	83 ec 08             	sub    $0x8,%esp
 804b2e2:	ff 75 0c             	pushl  0xc(%ebp)
 804b2e5:	50                   	push   %eax
 804b2e6:	e8 3e fe ff ff       	call   804b129 <printOperand>
 804b2eb:	83 c4 10             	add    $0x10,%esp
 804b2ee:	ff 75 0c             	pushl  0xc(%ebp)
 804b2f1:	6a 04                	push   $0x4
 804b2f3:	6a 01                	push   $0x1
 804b2f5:	68 f1 45 05 08       	push   $0x80545f1
 804b2fa:	e8 41 d5 ff ff       	call   8048840 <fwrite@plt>
 804b2ff:	83 c4 10             	add    $0x10,%esp
 804b302:	8b 45 08             	mov    0x8(%ebp),%eax
 804b305:	8b 40 08             	mov    0x8(%eax),%eax
 804b308:	83 ec 08             	sub    $0x8,%esp
 804b30b:	ff 75 0c             	pushl  0xc(%ebp)
 804b30e:	50                   	push   %eax
 804b30f:	e8 15 fe ff ff       	call   804b129 <printOperand>
 804b314:	83 c4 10             	add    $0x10,%esp
 804b317:	ff 75 0c             	pushl  0xc(%ebp)
 804b31a:	6a 03                	push   $0x3
 804b31c:	6a 01                	push   $0x1
 804b31e:	68 f6 45 05 08       	push   $0x80545f6
 804b323:	e8 18 d5 ff ff       	call   8048840 <fwrite@plt>
 804b328:	83 c4 10             	add    $0x10,%esp
 804b32b:	8b 45 08             	mov    0x8(%ebp),%eax
 804b32e:	8b 40 0c             	mov    0xc(%eax),%eax
 804b331:	83 ec 08             	sub    $0x8,%esp
 804b334:	ff 75 0c             	pushl  0xc(%ebp)
 804b337:	50                   	push   %eax
 804b338:	e8 ec fd ff ff       	call   804b129 <printOperand>
 804b33d:	83 c4 10             	add    $0x10,%esp
 804b340:	e9 eb 06 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b345:	8b 45 08             	mov    0x8(%ebp),%eax
 804b348:	8b 40 04             	mov    0x4(%eax),%eax
 804b34b:	83 ec 08             	sub    $0x8,%esp
 804b34e:	ff 75 0c             	pushl  0xc(%ebp)
 804b351:	50                   	push   %eax
 804b352:	e8 d2 fd ff ff       	call   804b129 <printOperand>
 804b357:	83 c4 10             	add    $0x10,%esp
 804b35a:	ff 75 0c             	pushl  0xc(%ebp)
 804b35d:	6a 04                	push   $0x4
 804b35f:	6a 01                	push   $0x1
 804b361:	68 f1 45 05 08       	push   $0x80545f1
 804b366:	e8 d5 d4 ff ff       	call   8048840 <fwrite@plt>
 804b36b:	83 c4 10             	add    $0x10,%esp
 804b36e:	8b 45 08             	mov    0x8(%ebp),%eax
 804b371:	8b 40 08             	mov    0x8(%eax),%eax
 804b374:	83 ec 08             	sub    $0x8,%esp
 804b377:	ff 75 0c             	pushl  0xc(%ebp)
 804b37a:	50                   	push   %eax
 804b37b:	e8 a9 fd ff ff       	call   804b129 <printOperand>
 804b380:	83 c4 10             	add    $0x10,%esp
 804b383:	ff 75 0c             	pushl  0xc(%ebp)
 804b386:	6a 03                	push   $0x3
 804b388:	6a 01                	push   $0x1
 804b38a:	68 fa 45 05 08       	push   $0x80545fa
 804b38f:	e8 ac d4 ff ff       	call   8048840 <fwrite@plt>
 804b394:	83 c4 10             	add    $0x10,%esp
 804b397:	8b 45 08             	mov    0x8(%ebp),%eax
 804b39a:	8b 40 0c             	mov    0xc(%eax),%eax
 804b39d:	83 ec 08             	sub    $0x8,%esp
 804b3a0:	ff 75 0c             	pushl  0xc(%ebp)
 804b3a3:	50                   	push   %eax
 804b3a4:	e8 80 fd ff ff       	call   804b129 <printOperand>
 804b3a9:	83 c4 10             	add    $0x10,%esp
 804b3ac:	e9 7f 06 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b3b1:	8b 45 08             	mov    0x8(%ebp),%eax
 804b3b4:	8b 40 04             	mov    0x4(%eax),%eax
 804b3b7:	83 ec 08             	sub    $0x8,%esp
 804b3ba:	ff 75 0c             	pushl  0xc(%ebp)
 804b3bd:	50                   	push   %eax
 804b3be:	e8 66 fd ff ff       	call   804b129 <printOperand>
 804b3c3:	83 c4 10             	add    $0x10,%esp
 804b3c6:	ff 75 0c             	pushl  0xc(%ebp)
 804b3c9:	6a 04                	push   $0x4
 804b3cb:	6a 01                	push   $0x1
 804b3cd:	68 f1 45 05 08       	push   $0x80545f1
 804b3d2:	e8 69 d4 ff ff       	call   8048840 <fwrite@plt>
 804b3d7:	83 c4 10             	add    $0x10,%esp
 804b3da:	8b 45 08             	mov    0x8(%ebp),%eax
 804b3dd:	8b 40 08             	mov    0x8(%eax),%eax
 804b3e0:	83 ec 08             	sub    $0x8,%esp
 804b3e3:	ff 75 0c             	pushl  0xc(%ebp)
 804b3e6:	50                   	push   %eax
 804b3e7:	e8 3d fd ff ff       	call   804b129 <printOperand>
 804b3ec:	83 c4 10             	add    $0x10,%esp
 804b3ef:	ff 75 0c             	pushl  0xc(%ebp)
 804b3f2:	6a 03                	push   $0x3
 804b3f4:	6a 01                	push   $0x1
 804b3f6:	68 fe 45 05 08       	push   $0x80545fe
 804b3fb:	e8 40 d4 ff ff       	call   8048840 <fwrite@plt>
 804b400:	83 c4 10             	add    $0x10,%esp
 804b403:	8b 45 08             	mov    0x8(%ebp),%eax
 804b406:	8b 40 0c             	mov    0xc(%eax),%eax
 804b409:	83 ec 08             	sub    $0x8,%esp
 804b40c:	ff 75 0c             	pushl  0xc(%ebp)
 804b40f:	50                   	push   %eax
 804b410:	e8 14 fd ff ff       	call   804b129 <printOperand>
 804b415:	83 c4 10             	add    $0x10,%esp
 804b418:	e9 13 06 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b41d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b420:	8b 40 04             	mov    0x4(%eax),%eax
 804b423:	83 ec 08             	sub    $0x8,%esp
 804b426:	ff 75 0c             	pushl  0xc(%ebp)
 804b429:	50                   	push   %eax
 804b42a:	e8 fa fc ff ff       	call   804b129 <printOperand>
 804b42f:	83 c4 10             	add    $0x10,%esp
 804b432:	ff 75 0c             	pushl  0xc(%ebp)
 804b435:	6a 04                	push   $0x4
 804b437:	6a 01                	push   $0x1
 804b439:	68 f1 45 05 08       	push   $0x80545f1
 804b43e:	e8 fd d3 ff ff       	call   8048840 <fwrite@plt>
 804b443:	83 c4 10             	add    $0x10,%esp
 804b446:	8b 45 08             	mov    0x8(%ebp),%eax
 804b449:	8b 40 08             	mov    0x8(%eax),%eax
 804b44c:	83 ec 08             	sub    $0x8,%esp
 804b44f:	ff 75 0c             	pushl  0xc(%ebp)
 804b452:	50                   	push   %eax
 804b453:	e8 d1 fc ff ff       	call   804b129 <printOperand>
 804b458:	83 c4 10             	add    $0x10,%esp
 804b45b:	ff 75 0c             	pushl  0xc(%ebp)
 804b45e:	6a 03                	push   $0x3
 804b460:	6a 01                	push   $0x1
 804b462:	68 02 46 05 08       	push   $0x8054602
 804b467:	e8 d4 d3 ff ff       	call   8048840 <fwrite@plt>
 804b46c:	83 c4 10             	add    $0x10,%esp
 804b46f:	8b 45 08             	mov    0x8(%ebp),%eax
 804b472:	8b 40 0c             	mov    0xc(%eax),%eax
 804b475:	83 ec 08             	sub    $0x8,%esp
 804b478:	ff 75 0c             	pushl  0xc(%ebp)
 804b47b:	50                   	push   %eax
 804b47c:	e8 a8 fc ff ff       	call   804b129 <printOperand>
 804b481:	83 c4 10             	add    $0x10,%esp
 804b484:	e9 a7 05 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b489:	ff 75 0c             	pushl  0xc(%ebp)
 804b48c:	6a 04                	push   $0x4
 804b48e:	6a 01                	push   $0x1
 804b490:	68 06 46 05 08       	push   $0x8054606
 804b495:	e8 a6 d3 ff ff       	call   8048840 <fwrite@plt>
 804b49a:	83 c4 10             	add    $0x10,%esp
 804b49d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4a0:	8b 40 08             	mov    0x8(%eax),%eax
 804b4a3:	83 ec 08             	sub    $0x8,%esp
 804b4a6:	ff 75 0c             	pushl  0xc(%ebp)
 804b4a9:	50                   	push   %eax
 804b4aa:	e8 7a fc ff ff       	call   804b129 <printOperand>
 804b4af:	83 c4 10             	add    $0x10,%esp
 804b4b2:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4b5:	8b 40 0c             	mov    0xc(%eax),%eax
 804b4b8:	85 c0                	test   %eax,%eax
 804b4ba:	0f 84 6f 05 00 00    	je     804ba2f <printInterCodes+0x7f0>
 804b4c0:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4c3:	8b 40 0c             	mov    0xc(%eax),%eax
 804b4c6:	8b 40 04             	mov    0x4(%eax),%eax
 804b4c9:	83 ec 04             	sub    $0x4,%esp
 804b4cc:	50                   	push   %eax
 804b4cd:	68 0b 46 05 08       	push   $0x805460b
 804b4d2:	ff 75 0c             	pushl  0xc(%ebp)
 804b4d5:	e8 06 d4 ff ff       	call   80488e0 <fprintf@plt>
 804b4da:	83 c4 10             	add    $0x10,%esp
 804b4dd:	e9 4d 05 00 00       	jmp    804ba2f <printInterCodes+0x7f0>
 804b4e2:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4e5:	8b 40 08             	mov    0x8(%eax),%eax
 804b4e8:	8b 40 04             	mov    0x4(%eax),%eax
 804b4eb:	83 ec 04             	sub    $0x4,%esp
 804b4ee:	50                   	push   %eax
 804b4ef:	68 0f 46 05 08       	push   $0x805460f
 804b4f4:	ff 75 0c             	pushl  0xc(%ebp)
 804b4f7:	e8 e4 d3 ff ff       	call   80488e0 <fprintf@plt>
 804b4fc:	83 c4 10             	add    $0x10,%esp
 804b4ff:	e9 2c 05 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b504:	ff 75 0c             	pushl  0xc(%ebp)
 804b507:	6a 06                	push   $0x6
 804b509:	6a 01                	push   $0x1
 804b50b:	68 1d 46 05 08       	push   $0x805461d
 804b510:	e8 2b d3 ff ff       	call   8048840 <fwrite@plt>
 804b515:	83 c4 10             	add    $0x10,%esp
 804b518:	8b 45 08             	mov    0x8(%ebp),%eax
 804b51b:	8b 40 08             	mov    0x8(%eax),%eax
 804b51e:	83 ec 08             	sub    $0x8,%esp
 804b521:	ff 75 0c             	pushl  0xc(%ebp)
 804b524:	50                   	push   %eax
 804b525:	e8 ff fb ff ff       	call   804b129 <printOperand>
 804b52a:	83 c4 10             	add    $0x10,%esp
 804b52d:	e9 fe 04 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b532:	ff 75 0c             	pushl  0xc(%ebp)
 804b535:	6a 06                	push   $0x6
 804b537:	6a 01                	push   $0x1
 804b539:	68 24 46 05 08       	push   $0x8054624
 804b53e:	e8 fd d2 ff ff       	call   8048840 <fwrite@plt>
 804b543:	83 c4 10             	add    $0x10,%esp
 804b546:	8b 45 08             	mov    0x8(%ebp),%eax
 804b549:	8b 40 08             	mov    0x8(%eax),%eax
 804b54c:	83 ec 08             	sub    $0x8,%esp
 804b54f:	ff 75 0c             	pushl  0xc(%ebp)
 804b552:	50                   	push   %eax
 804b553:	e8 d1 fb ff ff       	call   804b129 <printOperand>
 804b558:	83 c4 10             	add    $0x10,%esp
 804b55b:	ff 75 0c             	pushl  0xc(%ebp)
 804b55e:	6a 02                	push   $0x2
 804b560:	6a 01                	push   $0x1
 804b562:	68 2b 46 05 08       	push   $0x805462b
 804b567:	e8 d4 d2 ff ff       	call   8048840 <fwrite@plt>
 804b56c:	83 c4 10             	add    $0x10,%esp
 804b56f:	e9 bc 04 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b574:	ff 75 0c             	pushl  0xc(%ebp)
 804b577:	6a 07                	push   $0x7
 804b579:	6a 01                	push   $0x1
 804b57b:	68 2e 46 05 08       	push   $0x805462e
 804b580:	e8 bb d2 ff ff       	call   8048840 <fwrite@plt>
 804b585:	83 c4 10             	add    $0x10,%esp
 804b588:	8b 45 08             	mov    0x8(%ebp),%eax
 804b58b:	8b 40 08             	mov    0x8(%eax),%eax
 804b58e:	83 ec 08             	sub    $0x8,%esp
 804b591:	ff 75 0c             	pushl  0xc(%ebp)
 804b594:	50                   	push   %eax
 804b595:	e8 8f fb ff ff       	call   804b129 <printOperand>
 804b59a:	83 c4 10             	add    $0x10,%esp
 804b59d:	e9 8e 04 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b5a2:	ff 75 0c             	pushl  0xc(%ebp)
 804b5a5:	6a 05                	push   $0x5
 804b5a7:	6a 01                	push   $0x1
 804b5a9:	68 36 46 05 08       	push   $0x8054636
 804b5ae:	e8 8d d2 ff ff       	call   8048840 <fwrite@plt>
 804b5b3:	83 c4 10             	add    $0x10,%esp
 804b5b6:	8b 45 08             	mov    0x8(%ebp),%eax
 804b5b9:	8b 40 08             	mov    0x8(%eax),%eax
 804b5bc:	83 ec 08             	sub    $0x8,%esp
 804b5bf:	ff 75 0c             	pushl  0xc(%ebp)
 804b5c2:	50                   	push   %eax
 804b5c3:	e8 61 fb ff ff       	call   804b129 <printOperand>
 804b5c8:	83 c4 10             	add    $0x10,%esp
 804b5cb:	e9 60 04 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b5d0:	ff 75 0c             	pushl  0xc(%ebp)
 804b5d3:	6a 03                	push   $0x3
 804b5d5:	6a 01                	push   $0x1
 804b5d7:	68 3c 46 05 08       	push   $0x805463c
 804b5dc:	e8 5f d2 ff ff       	call   8048840 <fwrite@plt>
 804b5e1:	83 c4 10             	add    $0x10,%esp
 804b5e4:	8b 45 08             	mov    0x8(%ebp),%eax
 804b5e7:	8b 40 08             	mov    0x8(%eax),%eax
 804b5ea:	83 ec 08             	sub    $0x8,%esp
 804b5ed:	ff 75 0c             	pushl  0xc(%ebp)
 804b5f0:	50                   	push   %eax
 804b5f1:	e8 33 fb ff ff       	call   804b129 <printOperand>
 804b5f6:	83 c4 10             	add    $0x10,%esp
 804b5f9:	ff 75 0c             	pushl  0xc(%ebp)
 804b5fc:	6a 03                	push   $0x3
 804b5fe:	6a 01                	push   $0x1
 804b600:	68 40 46 05 08       	push   $0x8054640
 804b605:	e8 36 d2 ff ff       	call   8048840 <fwrite@plt>
 804b60a:	83 c4 10             	add    $0x10,%esp
 804b60d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b610:	8b 40 0c             	mov    0xc(%eax),%eax
 804b613:	83 ec 08             	sub    $0x8,%esp
 804b616:	ff 75 0c             	pushl  0xc(%ebp)
 804b619:	50                   	push   %eax
 804b61a:	e8 0a fb ff ff       	call   804b129 <printOperand>
 804b61f:	83 c4 10             	add    $0x10,%esp
 804b622:	ff 75 0c             	pushl  0xc(%ebp)
 804b625:	6a 06                	push   $0x6
 804b627:	6a 01                	push   $0x1
 804b629:	68 44 46 05 08       	push   $0x8054644
 804b62e:	e8 0d d2 ff ff       	call   8048840 <fwrite@plt>
 804b633:	83 c4 10             	add    $0x10,%esp
 804b636:	8b 45 08             	mov    0x8(%ebp),%eax
 804b639:	8b 40 04             	mov    0x4(%eax),%eax
 804b63c:	83 ec 08             	sub    $0x8,%esp
 804b63f:	ff 75 0c             	pushl  0xc(%ebp)
 804b642:	50                   	push   %eax
 804b643:	e8 e1 fa ff ff       	call   804b129 <printOperand>
 804b648:	83 c4 10             	add    $0x10,%esp
 804b64b:	e9 e0 03 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b650:	ff 75 0c             	pushl  0xc(%ebp)
 804b653:	6a 03                	push   $0x3
 804b655:	6a 01                	push   $0x1
 804b657:	68 3c 46 05 08       	push   $0x805463c
 804b65c:	e8 df d1 ff ff       	call   8048840 <fwrite@plt>
 804b661:	83 c4 10             	add    $0x10,%esp
 804b664:	8b 45 08             	mov    0x8(%ebp),%eax
 804b667:	8b 40 08             	mov    0x8(%eax),%eax
 804b66a:	83 ec 08             	sub    $0x8,%esp
 804b66d:	ff 75 0c             	pushl  0xc(%ebp)
 804b670:	50                   	push   %eax
 804b671:	e8 b3 fa ff ff       	call   804b129 <printOperand>
 804b676:	83 c4 10             	add    $0x10,%esp
 804b679:	ff 75 0c             	pushl  0xc(%ebp)
 804b67c:	6a 03                	push   $0x3
 804b67e:	6a 01                	push   $0x1
 804b680:	68 4b 46 05 08       	push   $0x805464b
 804b685:	e8 b6 d1 ff ff       	call   8048840 <fwrite@plt>
 804b68a:	83 c4 10             	add    $0x10,%esp
 804b68d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b690:	8b 40 0c             	mov    0xc(%eax),%eax
 804b693:	83 ec 08             	sub    $0x8,%esp
 804b696:	ff 75 0c             	pushl  0xc(%ebp)
 804b699:	50                   	push   %eax
 804b69a:	e8 8a fa ff ff       	call   804b129 <printOperand>
 804b69f:	83 c4 10             	add    $0x10,%esp
 804b6a2:	ff 75 0c             	pushl  0xc(%ebp)
 804b6a5:	6a 06                	push   $0x6
 804b6a7:	6a 01                	push   $0x1
 804b6a9:	68 44 46 05 08       	push   $0x8054644
 804b6ae:	e8 8d d1 ff ff       	call   8048840 <fwrite@plt>
 804b6b3:	83 c4 10             	add    $0x10,%esp
 804b6b6:	8b 45 08             	mov    0x8(%ebp),%eax
 804b6b9:	8b 40 04             	mov    0x4(%eax),%eax
 804b6bc:	83 ec 08             	sub    $0x8,%esp
 804b6bf:	ff 75 0c             	pushl  0xc(%ebp)
 804b6c2:	50                   	push   %eax
 804b6c3:	e8 61 fa ff ff       	call   804b129 <printOperand>
 804b6c8:	83 c4 10             	add    $0x10,%esp
 804b6cb:	e9 60 03 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b6d0:	ff 75 0c             	pushl  0xc(%ebp)
 804b6d3:	6a 03                	push   $0x3
 804b6d5:	6a 01                	push   $0x1
 804b6d7:	68 3c 46 05 08       	push   $0x805463c
 804b6dc:	e8 5f d1 ff ff       	call   8048840 <fwrite@plt>
 804b6e1:	83 c4 10             	add    $0x10,%esp
 804b6e4:	8b 45 08             	mov    0x8(%ebp),%eax
 804b6e7:	8b 40 08             	mov    0x8(%eax),%eax
 804b6ea:	83 ec 08             	sub    $0x8,%esp
 804b6ed:	ff 75 0c             	pushl  0xc(%ebp)
 804b6f0:	50                   	push   %eax
 804b6f1:	e8 33 fa ff ff       	call   804b129 <printOperand>
 804b6f6:	83 c4 10             	add    $0x10,%esp
 804b6f9:	ff 75 0c             	pushl  0xc(%ebp)
 804b6fc:	6a 04                	push   $0x4
 804b6fe:	6a 01                	push   $0x1
 804b700:	68 4f 46 05 08       	push   $0x805464f
 804b705:	e8 36 d1 ff ff       	call   8048840 <fwrite@plt>
 804b70a:	83 c4 10             	add    $0x10,%esp
 804b70d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b710:	8b 40 0c             	mov    0xc(%eax),%eax
 804b713:	83 ec 08             	sub    $0x8,%esp
 804b716:	ff 75 0c             	pushl  0xc(%ebp)
 804b719:	50                   	push   %eax
 804b71a:	e8 0a fa ff ff       	call   804b129 <printOperand>
 804b71f:	83 c4 10             	add    $0x10,%esp
 804b722:	ff 75 0c             	pushl  0xc(%ebp)
 804b725:	6a 06                	push   $0x6
 804b727:	6a 01                	push   $0x1
 804b729:	68 44 46 05 08       	push   $0x8054644
 804b72e:	e8 0d d1 ff ff       	call   8048840 <fwrite@plt>
 804b733:	83 c4 10             	add    $0x10,%esp
 804b736:	8b 45 08             	mov    0x8(%ebp),%eax
 804b739:	8b 40 04             	mov    0x4(%eax),%eax
 804b73c:	83 ec 08             	sub    $0x8,%esp
 804b73f:	ff 75 0c             	pushl  0xc(%ebp)
 804b742:	50                   	push   %eax
 804b743:	e8 e1 f9 ff ff       	call   804b129 <printOperand>
 804b748:	83 c4 10             	add    $0x10,%esp
 804b74b:	e9 e0 02 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b750:	ff 75 0c             	pushl  0xc(%ebp)
 804b753:	6a 03                	push   $0x3
 804b755:	6a 01                	push   $0x1
 804b757:	68 3c 46 05 08       	push   $0x805463c
 804b75c:	e8 df d0 ff ff       	call   8048840 <fwrite@plt>
 804b761:	83 c4 10             	add    $0x10,%esp
 804b764:	8b 45 08             	mov    0x8(%ebp),%eax
 804b767:	8b 40 08             	mov    0x8(%eax),%eax
 804b76a:	83 ec 08             	sub    $0x8,%esp
 804b76d:	ff 75 0c             	pushl  0xc(%ebp)
 804b770:	50                   	push   %eax
 804b771:	e8 b3 f9 ff ff       	call   804b129 <printOperand>
 804b776:	83 c4 10             	add    $0x10,%esp
 804b779:	ff 75 0c             	pushl  0xc(%ebp)
 804b77c:	6a 04                	push   $0x4
 804b77e:	6a 01                	push   $0x1
 804b780:	68 54 46 05 08       	push   $0x8054654
 804b785:	e8 b6 d0 ff ff       	call   8048840 <fwrite@plt>
 804b78a:	83 c4 10             	add    $0x10,%esp
 804b78d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b790:	8b 40 0c             	mov    0xc(%eax),%eax
 804b793:	83 ec 08             	sub    $0x8,%esp
 804b796:	ff 75 0c             	pushl  0xc(%ebp)
 804b799:	50                   	push   %eax
 804b79a:	e8 8a f9 ff ff       	call   804b129 <printOperand>
 804b79f:	83 c4 10             	add    $0x10,%esp
 804b7a2:	ff 75 0c             	pushl  0xc(%ebp)
 804b7a5:	6a 06                	push   $0x6
 804b7a7:	6a 01                	push   $0x1
 804b7a9:	68 44 46 05 08       	push   $0x8054644
 804b7ae:	e8 8d d0 ff ff       	call   8048840 <fwrite@plt>
 804b7b3:	83 c4 10             	add    $0x10,%esp
 804b7b6:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7b9:	8b 40 04             	mov    0x4(%eax),%eax
 804b7bc:	83 ec 08             	sub    $0x8,%esp
 804b7bf:	ff 75 0c             	pushl  0xc(%ebp)
 804b7c2:	50                   	push   %eax
 804b7c3:	e8 61 f9 ff ff       	call   804b129 <printOperand>
 804b7c8:	83 c4 10             	add    $0x10,%esp
 804b7cb:	e9 60 02 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b7d0:	ff 75 0c             	pushl  0xc(%ebp)
 804b7d3:	6a 03                	push   $0x3
 804b7d5:	6a 01                	push   $0x1
 804b7d7:	68 3c 46 05 08       	push   $0x805463c
 804b7dc:	e8 5f d0 ff ff       	call   8048840 <fwrite@plt>
 804b7e1:	83 c4 10             	add    $0x10,%esp
 804b7e4:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7e7:	8b 40 08             	mov    0x8(%eax),%eax
 804b7ea:	83 ec 08             	sub    $0x8,%esp
 804b7ed:	ff 75 0c             	pushl  0xc(%ebp)
 804b7f0:	50                   	push   %eax
 804b7f1:	e8 33 f9 ff ff       	call   804b129 <printOperand>
 804b7f6:	83 c4 10             	add    $0x10,%esp
 804b7f9:	ff 75 0c             	pushl  0xc(%ebp)
 804b7fc:	6a 04                	push   $0x4
 804b7fe:	6a 01                	push   $0x1
 804b800:	68 59 46 05 08       	push   $0x8054659
 804b805:	e8 36 d0 ff ff       	call   8048840 <fwrite@plt>
 804b80a:	83 c4 10             	add    $0x10,%esp
 804b80d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b810:	8b 40 0c             	mov    0xc(%eax),%eax
 804b813:	83 ec 08             	sub    $0x8,%esp
 804b816:	ff 75 0c             	pushl  0xc(%ebp)
 804b819:	50                   	push   %eax
 804b81a:	e8 0a f9 ff ff       	call   804b129 <printOperand>
 804b81f:	83 c4 10             	add    $0x10,%esp
 804b822:	ff 75 0c             	pushl  0xc(%ebp)
 804b825:	6a 06                	push   $0x6
 804b827:	6a 01                	push   $0x1
 804b829:	68 44 46 05 08       	push   $0x8054644
 804b82e:	e8 0d d0 ff ff       	call   8048840 <fwrite@plt>
 804b833:	83 c4 10             	add    $0x10,%esp
 804b836:	8b 45 08             	mov    0x8(%ebp),%eax
 804b839:	8b 40 04             	mov    0x4(%eax),%eax
 804b83c:	83 ec 08             	sub    $0x8,%esp
 804b83f:	ff 75 0c             	pushl  0xc(%ebp)
 804b842:	50                   	push   %eax
 804b843:	e8 e1 f8 ff ff       	call   804b129 <printOperand>
 804b848:	83 c4 10             	add    $0x10,%esp
 804b84b:	e9 e0 01 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b850:	ff 75 0c             	pushl  0xc(%ebp)
 804b853:	6a 03                	push   $0x3
 804b855:	6a 01                	push   $0x1
 804b857:	68 3c 46 05 08       	push   $0x805463c
 804b85c:	e8 df cf ff ff       	call   8048840 <fwrite@plt>
 804b861:	83 c4 10             	add    $0x10,%esp
 804b864:	8b 45 08             	mov    0x8(%ebp),%eax
 804b867:	8b 40 08             	mov    0x8(%eax),%eax
 804b86a:	83 ec 08             	sub    $0x8,%esp
 804b86d:	ff 75 0c             	pushl  0xc(%ebp)
 804b870:	50                   	push   %eax
 804b871:	e8 b3 f8 ff ff       	call   804b129 <printOperand>
 804b876:	83 c4 10             	add    $0x10,%esp
 804b879:	ff 75 0c             	pushl  0xc(%ebp)
 804b87c:	6a 04                	push   $0x4
 804b87e:	6a 01                	push   $0x1
 804b880:	68 5e 46 05 08       	push   $0x805465e
 804b885:	e8 b6 cf ff ff       	call   8048840 <fwrite@plt>
 804b88a:	83 c4 10             	add    $0x10,%esp
 804b88d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b890:	8b 40 0c             	mov    0xc(%eax),%eax
 804b893:	83 ec 08             	sub    $0x8,%esp
 804b896:	ff 75 0c             	pushl  0xc(%ebp)
 804b899:	50                   	push   %eax
 804b89a:	e8 8a f8 ff ff       	call   804b129 <printOperand>
 804b89f:	83 c4 10             	add    $0x10,%esp
 804b8a2:	ff 75 0c             	pushl  0xc(%ebp)
 804b8a5:	6a 06                	push   $0x6
 804b8a7:	6a 01                	push   $0x1
 804b8a9:	68 44 46 05 08       	push   $0x8054644
 804b8ae:	e8 8d cf ff ff       	call   8048840 <fwrite@plt>
 804b8b3:	83 c4 10             	add    $0x10,%esp
 804b8b6:	8b 45 08             	mov    0x8(%ebp),%eax
 804b8b9:	8b 40 04             	mov    0x4(%eax),%eax
 804b8bc:	83 ec 08             	sub    $0x8,%esp
 804b8bf:	ff 75 0c             	pushl  0xc(%ebp)
 804b8c2:	50                   	push   %eax
 804b8c3:	e8 61 f8 ff ff       	call   804b129 <printOperand>
 804b8c8:	83 c4 10             	add    $0x10,%esp
 804b8cb:	e9 60 01 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b8d0:	ff 75 0c             	pushl  0xc(%ebp)
 804b8d3:	6a 04                	push   $0x4
 804b8d5:	6a 01                	push   $0x1
 804b8d7:	68 63 46 05 08       	push   $0x8054663
 804b8dc:	e8 5f cf ff ff       	call   8048840 <fwrite@plt>
 804b8e1:	83 c4 10             	add    $0x10,%esp
 804b8e4:	8b 45 08             	mov    0x8(%ebp),%eax
 804b8e7:	8b 40 08             	mov    0x8(%eax),%eax
 804b8ea:	83 ec 08             	sub    $0x8,%esp
 804b8ed:	ff 75 0c             	pushl  0xc(%ebp)
 804b8f0:	50                   	push   %eax
 804b8f1:	e8 33 f8 ff ff       	call   804b129 <printOperand>
 804b8f6:	83 c4 10             	add    $0x10,%esp
 804b8f9:	e9 32 01 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b8fe:	8b 45 08             	mov    0x8(%ebp),%eax
 804b901:	8b 40 04             	mov    0x4(%eax),%eax
 804b904:	83 ec 08             	sub    $0x8,%esp
 804b907:	ff 75 0c             	pushl  0xc(%ebp)
 804b90a:	50                   	push   %eax
 804b90b:	e8 19 f8 ff ff       	call   804b129 <printOperand>
 804b910:	83 c4 10             	add    $0x10,%esp
 804b913:	ff 75 0c             	pushl  0xc(%ebp)
 804b916:	6a 09                	push   $0x9
 804b918:	6a 01                	push   $0x1
 804b91a:	68 68 46 05 08       	push   $0x8054668
 804b91f:	e8 1c cf ff ff       	call   8048840 <fwrite@plt>
 804b924:	83 c4 10             	add    $0x10,%esp
 804b927:	8b 45 08             	mov    0x8(%ebp),%eax
 804b92a:	8b 40 08             	mov    0x8(%eax),%eax
 804b92d:	83 ec 08             	sub    $0x8,%esp
 804b930:	ff 75 0c             	pushl  0xc(%ebp)
 804b933:	50                   	push   %eax
 804b934:	e8 f0 f7 ff ff       	call   804b129 <printOperand>
 804b939:	83 c4 10             	add    $0x10,%esp
 804b93c:	e9 ef 00 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b941:	ff 75 0c             	pushl  0xc(%ebp)
 804b944:	6a 05                	push   $0x5
 804b946:	6a 01                	push   $0x1
 804b948:	68 72 46 05 08       	push   $0x8054672
 804b94d:	e8 ee ce ff ff       	call   8048840 <fwrite@plt>
 804b952:	83 c4 10             	add    $0x10,%esp
 804b955:	8b 45 08             	mov    0x8(%ebp),%eax
 804b958:	8b 40 08             	mov    0x8(%eax),%eax
 804b95b:	83 ec 08             	sub    $0x8,%esp
 804b95e:	ff 75 0c             	pushl  0xc(%ebp)
 804b961:	50                   	push   %eax
 804b962:	e8 c2 f7 ff ff       	call   804b129 <printOperand>
 804b967:	83 c4 10             	add    $0x10,%esp
 804b96a:	e9 c1 00 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b96f:	ff 75 0c             	pushl  0xc(%ebp)
 804b972:	6a 06                	push   $0x6
 804b974:	6a 01                	push   $0x1
 804b976:	68 78 46 05 08       	push   $0x8054678
 804b97b:	e8 c0 ce ff ff       	call   8048840 <fwrite@plt>
 804b980:	83 c4 10             	add    $0x10,%esp
 804b983:	8b 45 08             	mov    0x8(%ebp),%eax
 804b986:	8b 40 08             	mov    0x8(%eax),%eax
 804b989:	83 ec 08             	sub    $0x8,%esp
 804b98c:	ff 75 0c             	pushl  0xc(%ebp)
 804b98f:	50                   	push   %eax
 804b990:	e8 94 f7 ff ff       	call   804b129 <printOperand>
 804b995:	83 c4 10             	add    $0x10,%esp
 804b998:	e9 93 00 00 00       	jmp    804ba30 <printInterCodes+0x7f1>
 804b99d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b9a0:	8b 40 04             	mov    0x4(%eax),%eax
 804b9a3:	83 ec 08             	sub    $0x8,%esp
 804b9a6:	ff 75 0c             	pushl  0xc(%ebp)
 804b9a9:	50                   	push   %eax
 804b9aa:	e8 7a f7 ff ff       	call   804b129 <printOperand>
 804b9af:	83 c4 10             	add    $0x10,%esp
 804b9b2:	ff 75 0c             	pushl  0xc(%ebp)
 804b9b5:	6a 05                	push   $0x5
 804b9b7:	6a 01                	push   $0x1
 804b9b9:	68 7f 46 05 08       	push   $0x805467f
 804b9be:	e8 7d ce ff ff       	call   8048840 <fwrite@plt>
 804b9c3:	83 c4 10             	add    $0x10,%esp
 804b9c6:	8b 45 08             	mov    0x8(%ebp),%eax
 804b9c9:	8b 40 08             	mov    0x8(%eax),%eax
 804b9cc:	83 ec 08             	sub    $0x8,%esp
 804b9cf:	ff 75 0c             	pushl  0xc(%ebp)
 804b9d2:	50                   	push   %eax
 804b9d3:	e8 51 f7 ff ff       	call   804b129 <printOperand>
 804b9d8:	83 c4 10             	add    $0x10,%esp
 804b9db:	eb 53                	jmp    804ba30 <printInterCodes+0x7f1>
 804b9dd:	8b 45 08             	mov    0x8(%ebp),%eax
 804b9e0:	8b 40 04             	mov    0x4(%eax),%eax
 804b9e3:	83 ec 08             	sub    $0x8,%esp
 804b9e6:	ff 75 0c             	pushl  0xc(%ebp)
 804b9e9:	50                   	push   %eax
 804b9ea:	e8 3a f7 ff ff       	call   804b129 <printOperand>
 804b9ef:	83 c4 10             	add    $0x10,%esp
 804b9f2:	ff 75 0c             	pushl  0xc(%ebp)
 804b9f5:	6a 05                	push   $0x5
 804b9f7:	6a 01                	push   $0x1
 804b9f9:	68 85 46 05 08       	push   $0x8054685
 804b9fe:	e8 3d ce ff ff       	call   8048840 <fwrite@plt>
 804ba03:	83 c4 10             	add    $0x10,%esp
 804ba06:	8b 45 08             	mov    0x8(%ebp),%eax
 804ba09:	8b 40 08             	mov    0x8(%eax),%eax
 804ba0c:	83 ec 08             	sub    $0x8,%esp
 804ba0f:	ff 75 0c             	pushl  0xc(%ebp)
 804ba12:	50                   	push   %eax
 804ba13:	e8 11 f7 ff ff       	call   804b129 <printOperand>
 804ba18:	83 c4 10             	add    $0x10,%esp
 804ba1b:	eb 13                	jmp    804ba30 <printInterCodes+0x7f1>
 804ba1d:	83 ec 0c             	sub    $0xc,%esp
 804ba20:	68 8b 46 05 08       	push   $0x805468b
 804ba25:	e8 96 cd ff ff       	call   80487c0 <printf@plt>
 804ba2a:	83 c4 10             	add    $0x10,%esp
 804ba2d:	eb 01                	jmp    804ba30 <printInterCodes+0x7f1>
 804ba2f:	90                   	nop
 804ba30:	83 ec 08             	sub    $0x8,%esp
 804ba33:	ff 75 0c             	pushl  0xc(%ebp)
 804ba36:	6a 0a                	push   $0xa
 804ba38:	e8 13 cf ff ff       	call   8048950 <fputc@plt>
 804ba3d:	83 c4 10             	add    $0x10,%esp
 804ba40:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804ba44:	8b 45 08             	mov    0x8(%ebp),%eax
 804ba47:	8b 40 14             	mov    0x14(%eax),%eax
 804ba4a:	89 45 08             	mov    %eax,0x8(%ebp)
 804ba4d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ba51:	0f 85 28 f8 ff ff    	jne    804b27f <printInterCodes+0x40>
 804ba57:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ba5a:	c9                   	leave  
 804ba5b:	c3                   	ret    

0804ba5c <newInterCodes>:
 804ba5c:	55                   	push   %ebp
 804ba5d:	89 e5                	mov    %esp,%ebp
 804ba5f:	83 ec 18             	sub    $0x18,%esp
 804ba62:	83 ec 0c             	sub    $0xc,%esp
 804ba65:	6a 18                	push   $0x18
 804ba67:	e8 14 ce ff ff       	call   8048880 <malloc@plt>
 804ba6c:	83 c4 10             	add    $0x10,%esp
 804ba6f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ba72:	83 ec 04             	sub    $0x4,%esp
 804ba75:	6a 18                	push   $0x18
 804ba77:	6a 00                	push   $0x0
 804ba79:	ff 75 f4             	pushl  -0xc(%ebp)
 804ba7c:	e8 7f ce ff ff       	call   8048900 <memset@plt>
 804ba81:	83 c4 10             	add    $0x10,%esp
 804ba84:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ba87:	c9                   	leave  
 804ba88:	c3                   	ret    

0804ba89 <newOperand>:
 804ba89:	55                   	push   %ebp
 804ba8a:	89 e5                	mov    %esp,%ebp
 804ba8c:	83 ec 18             	sub    $0x18,%esp
 804ba8f:	83 ec 0c             	sub    $0xc,%esp
 804ba92:	6a 08                	push   $0x8
 804ba94:	e8 e7 cd ff ff       	call   8048880 <malloc@plt>
 804ba99:	83 c4 10             	add    $0x10,%esp
 804ba9c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ba9f:	83 ec 04             	sub    $0x4,%esp
 804baa2:	6a 08                	push   $0x8
 804baa4:	6a 00                	push   $0x0
 804baa6:	ff 75 f4             	pushl  -0xc(%ebp)
 804baa9:	e8 52 ce ff ff       	call   8048900 <memset@plt>
 804baae:	83 c4 10             	add    $0x10,%esp
 804bab1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bab4:	c9                   	leave  
 804bab5:	c3                   	ret    

0804bab6 <newOp>:
 804bab6:	55                   	push   %ebp
 804bab7:	89 e5                	mov    %esp,%ebp
 804bab9:	83 ec 18             	sub    $0x18,%esp
 804babc:	83 ec 0c             	sub    $0xc,%esp
 804babf:	6a 08                	push   $0x8
 804bac1:	e8 ba cd ff ff       	call   8048880 <malloc@plt>
 804bac6:	83 c4 10             	add    $0x10,%esp
 804bac9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bacc:	83 ec 04             	sub    $0x4,%esp
 804bacf:	6a 08                	push   $0x8
 804bad1:	6a 00                	push   $0x0
 804bad3:	ff 75 f4             	pushl  -0xc(%ebp)
 804bad6:	e8 25 ce ff ff       	call   8048900 <memset@plt>
 804badb:	83 c4 10             	add    $0x10,%esp
 804bade:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bae1:	8b 55 08             	mov    0x8(%ebp),%edx
 804bae4:	89 10                	mov    %edx,(%eax)
 804bae6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804baea:	75 0b                	jne    804baf7 <newOp+0x41>
 804baec:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804baef:	8b 55 0c             	mov    0xc(%ebp),%edx
 804baf2:	89 50 04             	mov    %edx,0x4(%eax)
 804baf5:	eb 20                	jmp    804bb17 <newOp+0x61>
 804baf7:	83 7d 08 05          	cmpl   $0x5,0x8(%ebp)
 804bafb:	74 06                	je     804bb03 <newOp+0x4d>
 804bafd:	83 7d 08 06          	cmpl   $0x6,0x8(%ebp)
 804bb01:	75 0b                	jne    804bb0e <newOp+0x58>
 804bb03:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb06:	8b 55 0c             	mov    0xc(%ebp),%edx
 804bb09:	89 50 04             	mov    %edx,0x4(%eax)
 804bb0c:	eb 09                	jmp    804bb17 <newOp+0x61>
 804bb0e:	8b 55 0c             	mov    0xc(%ebp),%edx
 804bb11:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb14:	89 50 04             	mov    %edx,0x4(%eax)
 804bb17:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb1a:	c9                   	leave  
 804bb1b:	c3                   	ret    

0804bb1c <newIC>:
 804bb1c:	55                   	push   %ebp
 804bb1d:	89 e5                	mov    %esp,%ebp
 804bb1f:	83 ec 18             	sub    $0x18,%esp
 804bb22:	83 ec 0c             	sub    $0xc,%esp
 804bb25:	6a 18                	push   $0x18
 804bb27:	e8 54 cd ff ff       	call   8048880 <malloc@plt>
 804bb2c:	83 c4 10             	add    $0x10,%esp
 804bb2f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bb32:	83 ec 04             	sub    $0x4,%esp
 804bb35:	6a 18                	push   $0x18
 804bb37:	6a 00                	push   $0x0
 804bb39:	ff 75 f4             	pushl  -0xc(%ebp)
 804bb3c:	e8 bf cd ff ff       	call   8048900 <memset@plt>
 804bb41:	83 c4 10             	add    $0x10,%esp
 804bb44:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb47:	8b 55 08             	mov    0x8(%ebp),%edx
 804bb4a:	89 10                	mov    %edx,(%eax)
 804bb4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb4f:	8b 55 0c             	mov    0xc(%ebp),%edx
 804bb52:	89 50 04             	mov    %edx,0x4(%eax)
 804bb55:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb58:	8b 55 10             	mov    0x10(%ebp),%edx
 804bb5b:	89 50 08             	mov    %edx,0x8(%eax)
 804bb5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb61:	8b 55 14             	mov    0x14(%ebp),%edx
 804bb64:	89 50 0c             	mov    %edx,0xc(%eax)
 804bb67:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb6a:	c9                   	leave  
 804bb6b:	c3                   	ret    

0804bb6c <getRelop>:
 804bb6c:	55                   	push   %ebp
 804bb6d:	89 e5                	mov    %esp,%ebp
 804bb6f:	83 ec 18             	sub    $0x18,%esp
 804bb72:	8b 45 08             	mov    0x8(%ebp),%eax
 804bb75:	8b 40 04             	mov    0x4(%eax),%eax
 804bb78:	83 f8 0b             	cmp    $0xb,%eax
 804bb7b:	74 19                	je     804bb96 <getRelop+0x2a>
 804bb7d:	68 28 49 05 08       	push   $0x8054928
 804bb82:	68 31 01 00 00       	push   $0x131
 804bb87:	68 ac 45 05 08       	push   $0x80545ac
 804bb8c:	68 f0 46 05 08       	push   $0x80546f0
 804bb91:	e8 2a ce ff ff       	call   80489c0 <__assert_fail@plt>
 804bb96:	8b 45 08             	mov    0x8(%ebp),%eax
 804bb99:	8b 40 08             	mov    0x8(%eax),%eax
 804bb9c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bb9f:	c7 45 f0 12 00 00 00 	movl   $0x12,-0x10(%ebp)
 804bba6:	83 ec 08             	sub    $0x8,%esp
 804bba9:	68 08 47 05 08       	push   $0x8054708
 804bbae:	ff 75 f4             	pushl  -0xc(%ebp)
 804bbb1:	e8 fa cb ff ff       	call   80487b0 <strcmp@plt>
 804bbb6:	83 c4 10             	add    $0x10,%esp
 804bbb9:	85 c0                	test   %eax,%eax
 804bbbb:	75 0c                	jne    804bbc9 <getRelop+0x5d>
 804bbbd:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
 804bbc4:	e9 bc 00 00 00       	jmp    804bc85 <getRelop+0x119>
 804bbc9:	83 ec 08             	sub    $0x8,%esp
 804bbcc:	68 0a 47 05 08       	push   $0x805470a
 804bbd1:	ff 75 f4             	pushl  -0xc(%ebp)
 804bbd4:	e8 d7 cb ff ff       	call   80487b0 <strcmp@plt>
 804bbd9:	83 c4 10             	add    $0x10,%esp
 804bbdc:	85 c0                	test   %eax,%eax
 804bbde:	75 0c                	jne    804bbec <getRelop+0x80>
 804bbe0:	c7 45 f0 0f 00 00 00 	movl   $0xf,-0x10(%ebp)
 804bbe7:	e9 99 00 00 00       	jmp    804bc85 <getRelop+0x119>
 804bbec:	83 ec 08             	sub    $0x8,%esp
 804bbef:	68 0c 47 05 08       	push   $0x805470c
 804bbf4:	ff 75 f4             	pushl  -0xc(%ebp)
 804bbf7:	e8 b4 cb ff ff       	call   80487b0 <strcmp@plt>
 804bbfc:	83 c4 10             	add    $0x10,%esp
 804bbff:	85 c0                	test   %eax,%eax
 804bc01:	75 09                	jne    804bc0c <getRelop+0xa0>
 804bc03:	c7 45 f0 10 00 00 00 	movl   $0x10,-0x10(%ebp)
 804bc0a:	eb 79                	jmp    804bc85 <getRelop+0x119>
 804bc0c:	83 ec 08             	sub    $0x8,%esp
 804bc0f:	68 0f 47 05 08       	push   $0x805470f
 804bc14:	ff 75 f4             	pushl  -0xc(%ebp)
 804bc17:	e8 94 cb ff ff       	call   80487b0 <strcmp@plt>
 804bc1c:	83 c4 10             	add    $0x10,%esp
 804bc1f:	85 c0                	test   %eax,%eax
 804bc21:	75 09                	jne    804bc2c <getRelop+0xc0>
 804bc23:	c7 45 f0 11 00 00 00 	movl   $0x11,-0x10(%ebp)
 804bc2a:	eb 59                	jmp    804bc85 <getRelop+0x119>
 804bc2c:	83 ec 08             	sub    $0x8,%esp
 804bc2f:	68 12 47 05 08       	push   $0x8054712
 804bc34:	ff 75 f4             	pushl  -0xc(%ebp)
 804bc37:	e8 74 cb ff ff       	call   80487b0 <strcmp@plt>
 804bc3c:	83 c4 10             	add    $0x10,%esp
 804bc3f:	85 c0                	test   %eax,%eax
 804bc41:	75 09                	jne    804bc4c <getRelop+0xe0>
 804bc43:	c7 45 f0 12 00 00 00 	movl   $0x12,-0x10(%ebp)
 804bc4a:	eb 39                	jmp    804bc85 <getRelop+0x119>
 804bc4c:	83 ec 08             	sub    $0x8,%esp
 804bc4f:	68 15 47 05 08       	push   $0x8054715
 804bc54:	ff 75 f4             	pushl  -0xc(%ebp)
 804bc57:	e8 54 cb ff ff       	call   80487b0 <strcmp@plt>
 804bc5c:	83 c4 10             	add    $0x10,%esp
 804bc5f:	85 c0                	test   %eax,%eax
 804bc61:	75 09                	jne    804bc6c <getRelop+0x100>
 804bc63:	c7 45 f0 13 00 00 00 	movl   $0x13,-0x10(%ebp)
 804bc6a:	eb 19                	jmp    804bc85 <getRelop+0x119>
 804bc6c:	68 28 49 05 08       	push   $0x8054928
 804bc71:	68 3b 01 00 00       	push   $0x13b
 804bc76:	68 ac 45 05 08       	push   $0x80545ac
 804bc7b:	68 b1 45 05 08       	push   $0x80545b1
 804bc80:	e8 3b cd ff ff       	call   80489c0 <__assert_fail@plt>
 804bc85:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bc88:	c9                   	leave  
 804bc89:	c3                   	ret    

0804bc8a <compareOperand>:
 804bc8a:	55                   	push   %ebp
 804bc8b:	89 e5                	mov    %esp,%ebp
 804bc8d:	83 ec 08             	sub    $0x8,%esp
 804bc90:	8b 45 08             	mov    0x8(%ebp),%eax
 804bc93:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804bc96:	75 07                	jne    804bc9f <compareOperand+0x15>
 804bc98:	b8 01 00 00 00       	mov    $0x1,%eax
 804bc9d:	eb 78                	jmp    804bd17 <compareOperand+0x8d>
 804bc9f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804bca3:	74 06                	je     804bcab <compareOperand+0x21>
 804bca5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804bca9:	75 07                	jne    804bcb2 <compareOperand+0x28>
 804bcab:	b8 00 00 00 00       	mov    $0x0,%eax
 804bcb0:	eb 65                	jmp    804bd17 <compareOperand+0x8d>
 804bcb2:	8b 45 08             	mov    0x8(%ebp),%eax
 804bcb5:	8b 00                	mov    (%eax),%eax
 804bcb7:	85 c0                	test   %eax,%eax
 804bcb9:	75 32                	jne    804bced <compareOperand+0x63>
 804bcbb:	8b 45 08             	mov    0x8(%ebp),%eax
 804bcbe:	8b 10                	mov    (%eax),%edx
 804bcc0:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bcc3:	8b 00                	mov    (%eax),%eax
 804bcc5:	39 c2                	cmp    %eax,%edx
 804bcc7:	75 24                	jne    804bced <compareOperand+0x63>
 804bcc9:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bccc:	8b 50 04             	mov    0x4(%eax),%edx
 804bccf:	8b 45 08             	mov    0x8(%ebp),%eax
 804bcd2:	8b 40 04             	mov    0x4(%eax),%eax
 804bcd5:	83 ec 08             	sub    $0x8,%esp
 804bcd8:	52                   	push   %edx
 804bcd9:	50                   	push   %eax
 804bcda:	e8 27 81 00 00       	call   8053e06 <safe_strcmp>
 804bcdf:	83 c4 10             	add    $0x10,%esp
 804bce2:	85 c0                	test   %eax,%eax
 804bce4:	75 07                	jne    804bced <compareOperand+0x63>
 804bce6:	b8 01 00 00 00       	mov    $0x1,%eax
 804bceb:	eb 2a                	jmp    804bd17 <compareOperand+0x8d>
 804bced:	8b 45 08             	mov    0x8(%ebp),%eax
 804bcf0:	8b 10                	mov    (%eax),%edx
 804bcf2:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bcf5:	8b 00                	mov    (%eax),%eax
 804bcf7:	39 c2                	cmp    %eax,%edx
 804bcf9:	75 17                	jne    804bd12 <compareOperand+0x88>
 804bcfb:	8b 45 08             	mov    0x8(%ebp),%eax
 804bcfe:	8b 50 04             	mov    0x4(%eax),%edx
 804bd01:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bd04:	8b 40 04             	mov    0x4(%eax),%eax
 804bd07:	39 c2                	cmp    %eax,%edx
 804bd09:	75 07                	jne    804bd12 <compareOperand+0x88>
 804bd0b:	b8 01 00 00 00       	mov    $0x1,%eax
 804bd10:	eb 05                	jmp    804bd17 <compareOperand+0x8d>
 804bd12:	b8 00 00 00 00       	mov    $0x0,%eax
 804bd17:	c9                   	leave  
 804bd18:	c3                   	ret    

0804bd19 <generate_ir>:
 804bd19:	55                   	push   %ebp
 804bd1a:	89 e5                	mov    %esp,%ebp
 804bd1c:	83 ec 08             	sub    $0x8,%esp
 804bd1f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804bd23:	75 07                	jne    804bd2c <generate_ir+0x13>
 804bd25:	b8 00 00 00 00       	mov    $0x0,%eax
 804bd2a:	eb 0e                	jmp    804bd3a <generate_ir+0x21>
 804bd2c:	83 ec 0c             	sub    $0xc,%esp
 804bd2f:	ff 75 08             	pushl  0x8(%ebp)
 804bd32:	e8 05 00 00 00       	call   804bd3c <translate_Program>
 804bd37:	83 c4 10             	add    $0x10,%esp
 804bd3a:	c9                   	leave  
 804bd3b:	c3                   	ret    

0804bd3c <translate_Program>:
 804bd3c:	55                   	push   %ebp
 804bd3d:	89 e5                	mov    %esp,%ebp
 804bd3f:	83 ec 18             	sub    $0x18,%esp
 804bd42:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd45:	8b 40 04             	mov    0x4(%eax),%eax
 804bd48:	83 f8 1f             	cmp    $0x1f,%eax
 804bd4b:	74 19                	je     804bd66 <translate_Program+0x2a>
 804bd4d:	68 34 49 05 08       	push   $0x8054934
 804bd52:	68 53 01 00 00       	push   $0x153
 804bd57:	68 ac 45 05 08       	push   $0x80545ac
 804bd5c:	68 18 47 05 08       	push   $0x8054718
 804bd61:	e8 5a cc ff ff       	call   80489c0 <__assert_fail@plt>
 804bd66:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd69:	8b 40 14             	mov    0x14(%eax),%eax
 804bd6c:	83 ec 0c             	sub    $0xc,%esp
 804bd6f:	50                   	push   %eax
 804bd70:	e8 0b 00 00 00       	call   804bd80 <translate_ExtDefList>
 804bd75:	83 c4 10             	add    $0x10,%esp
 804bd78:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bd7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bd7e:	c9                   	leave  
 804bd7f:	c3                   	ret    

0804bd80 <translate_ExtDefList>:
 804bd80:	55                   	push   %ebp
 804bd81:	89 e5                	mov    %esp,%ebp
 804bd83:	83 ec 18             	sub    $0x18,%esp
 804bd86:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804bd8a:	75 07                	jne    804bd93 <translate_ExtDefList+0x13>
 804bd8c:	b8 00 00 00 00       	mov    $0x0,%eax
 804bd91:	eb 41                	jmp    804bdd4 <translate_ExtDefList+0x54>
 804bd93:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd96:	8b 40 14             	mov    0x14(%eax),%eax
 804bd99:	83 ec 0c             	sub    $0xc,%esp
 804bd9c:	50                   	push   %eax
 804bd9d:	e8 34 00 00 00       	call   804bdd6 <translate_ExtDef>
 804bda2:	83 c4 10             	add    $0x10,%esp
 804bda5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804bda8:	8b 45 08             	mov    0x8(%ebp),%eax
 804bdab:	8b 40 18             	mov    0x18(%eax),%eax
 804bdae:	83 ec 0c             	sub    $0xc,%esp
 804bdb1:	50                   	push   %eax
 804bdb2:	e8 c9 ff ff ff       	call   804bd80 <translate_ExtDefList>
 804bdb7:	83 c4 10             	add    $0x10,%esp
 804bdba:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bdbd:	83 ec 08             	sub    $0x8,%esp
 804bdc0:	ff 75 f4             	pushl  -0xc(%ebp)
 804bdc3:	ff 75 f0             	pushl  -0x10(%ebp)
 804bdc6:	e8 45 f2 ff ff       	call   804b010 <addTail>
 804bdcb:	83 c4 10             	add    $0x10,%esp
 804bdce:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804bdd1:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bdd4:	c9                   	leave  
 804bdd5:	c3                   	ret    

0804bdd6 <translate_ExtDef>:
 804bdd6:	55                   	push   %ebp
 804bdd7:	89 e5                	mov    %esp,%ebp
 804bdd9:	83 ec 18             	sub    $0x18,%esp
 804bddc:	8b 45 08             	mov    0x8(%ebp),%eax
 804bddf:	8b 40 18             	mov    0x18(%eax),%eax
 804bde2:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804bde5:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804bde8:	8b 40 04             	mov    0x4(%eax),%eax
 804bdeb:	83 f8 22             	cmp    $0x22,%eax
 804bdee:	75 10                	jne    804be00 <translate_ExtDef+0x2a>
 804bdf0:	83 ec 0c             	sub    $0xc,%esp
 804bdf3:	ff 75 ec             	pushl  -0x14(%ebp)
 804bdf6:	e8 56 00 00 00       	call   804be51 <translate_ExtDecList>
 804bdfb:	83 c4 10             	add    $0x10,%esp
 804bdfe:	eb 4f                	jmp    804be4f <translate_ExtDef+0x79>
 804be00:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804be03:	8b 40 04             	mov    0x4(%eax),%eax
 804be06:	83 f8 28             	cmp    $0x28,%eax
 804be09:	75 3f                	jne    804be4a <translate_ExtDef+0x74>
 804be0b:	83 ec 0c             	sub    $0xc,%esp
 804be0e:	ff 75 ec             	pushl  -0x14(%ebp)
 804be11:	e8 be 01 00 00       	call   804bfd4 <translate_FunDec>
 804be16:	83 c4 10             	add    $0x10,%esp
 804be19:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804be1c:	8b 45 08             	mov    0x8(%ebp),%eax
 804be1f:	8b 40 1c             	mov    0x1c(%eax),%eax
 804be22:	83 ec 0c             	sub    $0xc,%esp
 804be25:	50                   	push   %eax
 804be26:	e8 ac 02 00 00       	call   804c0d7 <translate_CompSt>
 804be2b:	83 c4 10             	add    $0x10,%esp
 804be2e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804be31:	83 ec 08             	sub    $0x8,%esp
 804be34:	ff 75 f4             	pushl  -0xc(%ebp)
 804be37:	ff 75 f0             	pushl  -0x10(%ebp)
 804be3a:	e8 d1 f1 ff ff       	call   804b010 <addTail>
 804be3f:	83 c4 10             	add    $0x10,%esp
 804be42:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804be45:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804be48:	eb 05                	jmp    804be4f <translate_ExtDef+0x79>
 804be4a:	b8 00 00 00 00       	mov    $0x0,%eax
 804be4f:	c9                   	leave  
 804be50:	c3                   	ret    

0804be51 <translate_ExtDecList>:
 804be51:	55                   	push   %ebp
 804be52:	89 e5                	mov    %esp,%ebp
 804be54:	83 ec 18             	sub    $0x18,%esp
 804be57:	8b 45 08             	mov    0x8(%ebp),%eax
 804be5a:	8b 40 14             	mov    0x14(%eax),%eax
 804be5d:	83 ec 0c             	sub    $0xc,%esp
 804be60:	50                   	push   %eax
 804be61:	e8 3f 00 00 00       	call   804bea5 <translate_VarDec>
 804be66:	83 c4 10             	add    $0x10,%esp
 804be69:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804be6c:	8b 45 08             	mov    0x8(%ebp),%eax
 804be6f:	8b 40 10             	mov    0x10(%eax),%eax
 804be72:	83 f8 03             	cmp    $0x3,%eax
 804be75:	75 29                	jne    804bea0 <translate_ExtDecList+0x4f>
 804be77:	8b 45 08             	mov    0x8(%ebp),%eax
 804be7a:	8b 40 1c             	mov    0x1c(%eax),%eax
 804be7d:	83 ec 0c             	sub    $0xc,%esp
 804be80:	50                   	push   %eax
 804be81:	e8 cb ff ff ff       	call   804be51 <translate_ExtDecList>
 804be86:	83 c4 10             	add    $0x10,%esp
 804be89:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804be8c:	83 ec 08             	sub    $0x8,%esp
 804be8f:	ff 75 f4             	pushl  -0xc(%ebp)
 804be92:	ff 75 f0             	pushl  -0x10(%ebp)
 804be95:	e8 76 f1 ff ff       	call   804b010 <addTail>
 804be9a:	83 c4 10             	add    $0x10,%esp
 804be9d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804bea0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bea3:	c9                   	leave  
 804bea4:	c3                   	ret    

0804bea5 <translate_VarDec>:
 804bea5:	55                   	push   %ebp
 804bea6:	89 e5                	mov    %esp,%ebp
 804bea8:	83 ec 38             	sub    $0x38,%esp
 804beab:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 804beb2:	8b 45 08             	mov    0x8(%ebp),%eax
 804beb5:	8b 40 14             	mov    0x14(%eax),%eax
 804beb8:	8b 40 04             	mov    0x4(%eax),%eax
 804bebb:	83 f8 03             	cmp    $0x3,%eax
 804bebe:	0f 85 f6 00 00 00    	jne    804bfba <translate_VarDec+0x115>
 804bec4:	8b 45 08             	mov    0x8(%ebp),%eax
 804bec7:	8b 40 14             	mov    0x14(%eax),%eax
 804beca:	8b 40 08             	mov    0x8(%eax),%eax
 804becd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804bed0:	83 ec 0c             	sub    $0xc,%esp
 804bed3:	ff 75 d4             	pushl  -0x2c(%ebp)
 804bed6:	e8 6a 76 00 00       	call   8053545 <searchTable>
 804bedb:	83 c4 10             	add    $0x10,%esp
 804bede:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804bee1:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 804bee5:	75 19                	jne    804bf00 <translate_VarDec+0x5b>
 804bee7:	68 48 49 05 08       	push   $0x8054948
 804beec:	68 85 01 00 00       	push   $0x185
 804bef1:	68 ac 45 05 08       	push   $0x80545ac
 804bef6:	68 34 47 05 08       	push   $0x8054734
 804befb:	e8 c0 ca ff ff       	call   80489c0 <__assert_fail@plt>
 804bf00:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804bf03:	8b 00                	mov    (%eax),%eax
 804bf05:	85 c0                	test   %eax,%eax
 804bf07:	0f 85 c2 00 00 00    	jne    804bfcf <translate_VarDec+0x12a>
 804bf0d:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804bf10:	8b 40 0c             	mov    0xc(%eax),%eax
 804bf13:	8b 00                	mov    (%eax),%eax
 804bf15:	85 c0                	test   %eax,%eax
 804bf17:	0f 84 b2 00 00 00    	je     804bfcf <translate_VarDec+0x12a>
 804bf1d:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804bf20:	8b 40 0c             	mov    0xc(%eax),%eax
 804bf23:	83 ec 0c             	sub    $0xc,%esp
 804bf26:	50                   	push   %eax
 804bf27:	e8 9d 78 00 00       	call   80537c9 <typeSize>
 804bf2c:	83 c4 10             	add    $0x10,%esp
 804bf2f:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804bf32:	e8 92 f1 ff ff       	call   804b0c9 <newTemp>
 804bf37:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804bf3a:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804bf3d:	83 ec 08             	sub    $0x8,%esp
 804bf40:	50                   	push   %eax
 804bf41:	6a 01                	push   $0x1
 804bf43:	e8 6e fb ff ff       	call   804bab6 <newOp>
 804bf48:	83 c4 10             	add    $0x10,%esp
 804bf4b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804bf4e:	ff 75 e4             	pushl  -0x1c(%ebp)
 804bf51:	ff 75 e0             	pushl  -0x20(%ebp)
 804bf54:	6a 00                	push   $0x0
 804bf56:	6a 06                	push   $0x6
 804bf58:	e8 bf fb ff ff       	call   804bb1c <newIC>
 804bf5d:	83 c4 10             	add    $0x10,%esp
 804bf60:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804bf63:	83 ec 08             	sub    $0x8,%esp
 804bf66:	ff 75 d4             	pushl  -0x2c(%ebp)
 804bf69:	6a 00                	push   $0x0
 804bf6b:	e8 46 fb ff ff       	call   804bab6 <newOp>
 804bf70:	83 c4 10             	add    $0x10,%esp
 804bf73:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804bf76:	83 ec 08             	sub    $0x8,%esp
 804bf79:	ff 75 e0             	pushl  -0x20(%ebp)
 804bf7c:	6a 05                	push   $0x5
 804bf7e:	e8 33 fb ff ff       	call   804bab6 <newOp>
 804bf83:	83 c4 10             	add    $0x10,%esp
 804bf86:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804bf89:	6a 00                	push   $0x0
 804bf8b:	ff 75 f0             	pushl  -0x10(%ebp)
 804bf8e:	ff 75 ec             	pushl  -0x14(%ebp)
 804bf91:	6a 01                	push   $0x1
 804bf93:	e8 84 fb ff ff       	call   804bb1c <newIC>
 804bf98:	83 c4 10             	add    $0x10,%esp
 804bf9b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bf9e:	83 ec 08             	sub    $0x8,%esp
 804bfa1:	ff 75 f4             	pushl  -0xc(%ebp)
 804bfa4:	ff 75 e8             	pushl  -0x18(%ebp)
 804bfa7:	e8 64 f0 ff ff       	call   804b010 <addTail>
 804bfac:	83 c4 10             	add    $0x10,%esp
 804bfaf:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804bfb2:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804bfb5:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804bfb8:	eb 15                	jmp    804bfcf <translate_VarDec+0x12a>
 804bfba:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfbd:	8b 40 14             	mov    0x14(%eax),%eax
 804bfc0:	83 ec 0c             	sub    $0xc,%esp
 804bfc3:	50                   	push   %eax
 804bfc4:	e8 dc fe ff ff       	call   804bea5 <translate_VarDec>
 804bfc9:	83 c4 10             	add    $0x10,%esp
 804bfcc:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804bfcf:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804bfd2:	c9                   	leave  
 804bfd3:	c3                   	ret    

0804bfd4 <translate_FunDec>:
 804bfd4:	55                   	push   %ebp
 804bfd5:	89 e5                	mov    %esp,%ebp
 804bfd7:	83 ec 28             	sub    $0x28,%esp
 804bfda:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfdd:	8b 40 14             	mov    0x14(%eax),%eax
 804bfe0:	8b 40 08             	mov    0x8(%eax),%eax
 804bfe3:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804bfe6:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfe9:	8b 40 14             	mov    0x14(%eax),%eax
 804bfec:	8b 40 08             	mov    0x8(%eax),%eax
 804bfef:	83 ec 0c             	sub    $0xc,%esp
 804bff2:	50                   	push   %eax
 804bff3:	e8 4d 75 00 00       	call   8053545 <searchTable>
 804bff8:	83 c4 10             	add    $0x10,%esp
 804bffb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804bffe:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804c002:	74 0a                	je     804c00e <translate_FunDec+0x3a>
 804c004:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804c007:	8b 00                	mov    (%eax),%eax
 804c009:	83 f8 01             	cmp    $0x1,%eax
 804c00c:	74 19                	je     804c027 <translate_FunDec+0x53>
 804c00e:	68 5c 49 05 08       	push   $0x805495c
 804c013:	68 a0 01 00 00       	push   $0x1a0
 804c018:	68 ac 45 05 08       	push   $0x80545ac
 804c01d:	68 48 47 05 08       	push   $0x8054748
 804c022:	e8 99 c9 ff ff       	call   80489c0 <__assert_fail@plt>
 804c027:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804c02a:	8b 40 04             	mov    0x4(%eax),%eax
 804c02d:	83 ec 08             	sub    $0x8,%esp
 804c030:	50                   	push   %eax
 804c031:	6a 00                	push   $0x0
 804c033:	e8 7e fa ff ff       	call   804bab6 <newOp>
 804c038:	83 c4 10             	add    $0x10,%esp
 804c03b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c03e:	6a 00                	push   $0x0
 804c040:	ff 75 e8             	pushl  -0x18(%ebp)
 804c043:	6a 00                	push   $0x0
 804c045:	6a 07                	push   $0x7
 804c047:	e8 d0 fa ff ff       	call   804bb1c <newIC>
 804c04c:	83 c4 10             	add    $0x10,%esp
 804c04f:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c052:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804c059:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804c05c:	8b 40 0c             	mov    0xc(%eax),%eax
 804c05f:	8b 40 04             	mov    0x4(%eax),%eax
 804c062:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804c065:	eb 47                	jmp    804c0ae <translate_FunDec+0xda>
 804c067:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804c06a:	8b 00                	mov    (%eax),%eax
 804c06c:	83 ec 08             	sub    $0x8,%esp
 804c06f:	50                   	push   %eax
 804c070:	6a 00                	push   $0x0
 804c072:	e8 3f fa ff ff       	call   804bab6 <newOp>
 804c077:	83 c4 10             	add    $0x10,%esp
 804c07a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c07d:	6a 00                	push   $0x0
 804c07f:	ff 75 f0             	pushl  -0x10(%ebp)
 804c082:	6a 00                	push   $0x0
 804c084:	6a 08                	push   $0x8
 804c086:	e8 91 fa ff ff       	call   804bb1c <newIC>
 804c08b:	83 c4 10             	add    $0x10,%esp
 804c08e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c091:	83 ec 08             	sub    $0x8,%esp
 804c094:	ff 75 f4             	pushl  -0xc(%ebp)
 804c097:	ff 75 d8             	pushl  -0x28(%ebp)
 804c09a:	e8 71 ef ff ff       	call   804b010 <addTail>
 804c09f:	83 c4 10             	add    $0x10,%esp
 804c0a2:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804c0a5:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804c0a8:	8b 40 08             	mov    0x8(%eax),%eax
 804c0ab:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804c0ae:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804c0b2:	75 b3                	jne    804c067 <translate_FunDec+0x93>
 804c0b4:	83 ec 08             	sub    $0x8,%esp
 804c0b7:	ff 75 d8             	pushl  -0x28(%ebp)
 804c0ba:	ff 75 ec             	pushl  -0x14(%ebp)
 804c0bd:	e8 4e ef ff ff       	call   804b010 <addTail>
 804c0c2:	83 c4 10             	add    $0x10,%esp
 804c0c5:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c0c8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c0cb:	c9                   	leave  
 804c0cc:	c3                   	ret    

0804c0cd <translate_VarList>:
 804c0cd:	55                   	push   %ebp
 804c0ce:	89 e5                	mov    %esp,%ebp
 804c0d0:	b8 00 00 00 00       	mov    $0x0,%eax
 804c0d5:	5d                   	pop    %ebp
 804c0d6:	c3                   	ret    

0804c0d7 <translate_CompSt>:
 804c0d7:	55                   	push   %ebp
 804c0d8:	89 e5                	mov    %esp,%ebp
 804c0da:	83 ec 18             	sub    $0x18,%esp
 804c0dd:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0e0:	8b 40 18             	mov    0x18(%eax),%eax
 804c0e3:	83 ec 0c             	sub    $0xc,%esp
 804c0e6:	50                   	push   %eax
 804c0e7:	e8 34 00 00 00       	call   804c120 <translate_DefList>
 804c0ec:	83 c4 10             	add    $0x10,%esp
 804c0ef:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c0f2:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0f5:	8b 40 1c             	mov    0x1c(%eax),%eax
 804c0f8:	83 ec 0c             	sub    $0xc,%esp
 804c0fb:	50                   	push   %eax
 804c0fc:	e8 17 02 00 00       	call   804c318 <translate_StmtList>
 804c101:	83 c4 10             	add    $0x10,%esp
 804c104:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c107:	83 ec 08             	sub    $0x8,%esp
 804c10a:	ff 75 f4             	pushl  -0xc(%ebp)
 804c10d:	ff 75 f0             	pushl  -0x10(%ebp)
 804c110:	e8 fb ee ff ff       	call   804b010 <addTail>
 804c115:	83 c4 10             	add    $0x10,%esp
 804c118:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c11b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c11e:	c9                   	leave  
 804c11f:	c3                   	ret    

0804c120 <translate_DefList>:
 804c120:	55                   	push   %ebp
 804c121:	89 e5                	mov    %esp,%ebp
 804c123:	83 ec 18             	sub    $0x18,%esp
 804c126:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804c12a:	75 07                	jne    804c133 <translate_DefList+0x13>
 804c12c:	b8 00 00 00 00       	mov    $0x0,%eax
 804c131:	eb 41                	jmp    804c174 <translate_DefList+0x54>
 804c133:	8b 45 08             	mov    0x8(%ebp),%eax
 804c136:	8b 40 14             	mov    0x14(%eax),%eax
 804c139:	83 ec 0c             	sub    $0xc,%esp
 804c13c:	50                   	push   %eax
 804c13d:	e8 34 00 00 00       	call   804c176 <translate_Def>
 804c142:	83 c4 10             	add    $0x10,%esp
 804c145:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c148:	8b 45 08             	mov    0x8(%ebp),%eax
 804c14b:	8b 40 18             	mov    0x18(%eax),%eax
 804c14e:	83 ec 0c             	sub    $0xc,%esp
 804c151:	50                   	push   %eax
 804c152:	e8 c9 ff ff ff       	call   804c120 <translate_DefList>
 804c157:	83 c4 10             	add    $0x10,%esp
 804c15a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c15d:	83 ec 08             	sub    $0x8,%esp
 804c160:	ff 75 f4             	pushl  -0xc(%ebp)
 804c163:	ff 75 f0             	pushl  -0x10(%ebp)
 804c166:	e8 a5 ee ff ff       	call   804b010 <addTail>
 804c16b:	83 c4 10             	add    $0x10,%esp
 804c16e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c171:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c174:	c9                   	leave  
 804c175:	c3                   	ret    

0804c176 <translate_Def>:
 804c176:	55                   	push   %ebp
 804c177:	89 e5                	mov    %esp,%ebp
 804c179:	83 ec 08             	sub    $0x8,%esp
 804c17c:	8b 45 08             	mov    0x8(%ebp),%eax
 804c17f:	8b 40 18             	mov    0x18(%eax),%eax
 804c182:	83 ec 0c             	sub    $0xc,%esp
 804c185:	50                   	push   %eax
 804c186:	e8 05 00 00 00       	call   804c190 <translate_DecList>
 804c18b:	83 c4 10             	add    $0x10,%esp
 804c18e:	c9                   	leave  
 804c18f:	c3                   	ret    

0804c190 <translate_DecList>:
 804c190:	55                   	push   %ebp
 804c191:	89 e5                	mov    %esp,%ebp
 804c193:	83 ec 18             	sub    $0x18,%esp
 804c196:	8b 45 08             	mov    0x8(%ebp),%eax
 804c199:	8b 40 14             	mov    0x14(%eax),%eax
 804c19c:	83 ec 0c             	sub    $0xc,%esp
 804c19f:	50                   	push   %eax
 804c1a0:	e8 3f 00 00 00       	call   804c1e4 <translate_Dec>
 804c1a5:	83 c4 10             	add    $0x10,%esp
 804c1a8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c1ab:	8b 45 08             	mov    0x8(%ebp),%eax
 804c1ae:	8b 40 10             	mov    0x10(%eax),%eax
 804c1b1:	83 f8 03             	cmp    $0x3,%eax
 804c1b4:	75 29                	jne    804c1df <translate_DecList+0x4f>
 804c1b6:	8b 45 08             	mov    0x8(%ebp),%eax
 804c1b9:	8b 40 1c             	mov    0x1c(%eax),%eax
 804c1bc:	83 ec 0c             	sub    $0xc,%esp
 804c1bf:	50                   	push   %eax
 804c1c0:	e8 cb ff ff ff       	call   804c190 <translate_DecList>
 804c1c5:	83 c4 10             	add    $0x10,%esp
 804c1c8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c1cb:	83 ec 08             	sub    $0x8,%esp
 804c1ce:	ff 75 f4             	pushl  -0xc(%ebp)
 804c1d1:	ff 75 f0             	pushl  -0x10(%ebp)
 804c1d4:	e8 37 ee ff ff       	call   804b010 <addTail>
 804c1d9:	83 c4 10             	add    $0x10,%esp
 804c1dc:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c1df:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c1e2:	c9                   	leave  
 804c1e3:	c3                   	ret    

0804c1e4 <translate_Dec>:
 804c1e4:	55                   	push   %ebp
 804c1e5:	89 e5                	mov    %esp,%ebp
 804c1e7:	83 ec 28             	sub    $0x28,%esp
 804c1ea:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804c1f1:	8b 45 08             	mov    0x8(%ebp),%eax
 804c1f4:	8b 40 10             	mov    0x10(%eax),%eax
 804c1f7:	83 f8 01             	cmp    $0x1,%eax
 804c1fa:	75 1a                	jne    804c216 <translate_Dec+0x32>
 804c1fc:	8b 45 08             	mov    0x8(%ebp),%eax
 804c1ff:	8b 40 14             	mov    0x14(%eax),%eax
 804c202:	83 ec 0c             	sub    $0xc,%esp
 804c205:	50                   	push   %eax
 804c206:	e8 9a fc ff ff       	call   804bea5 <translate_VarDec>
 804c20b:	83 c4 10             	add    $0x10,%esp
 804c20e:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c211:	e9 fd 00 00 00       	jmp    804c313 <translate_Dec+0x12f>
 804c216:	8b 45 08             	mov    0x8(%ebp),%eax
 804c219:	8b 40 10             	mov    0x10(%eax),%eax
 804c21c:	83 f8 03             	cmp    $0x3,%eax
 804c21f:	0f 85 d5 00 00 00    	jne    804c2fa <translate_Dec+0x116>
 804c225:	8b 45 08             	mov    0x8(%ebp),%eax
 804c228:	8b 40 14             	mov    0x14(%eax),%eax
 804c22b:	8b 40 14             	mov    0x14(%eax),%eax
 804c22e:	8b 40 04             	mov    0x4(%eax),%eax
 804c231:	83 f8 03             	cmp    $0x3,%eax
 804c234:	74 19                	je     804c24f <translate_Dec+0x6b>
 804c236:	68 70 49 05 08       	push   $0x8054970
 804c23b:	68 e9 01 00 00       	push   $0x1e9
 804c240:	68 ac 45 05 08       	push   $0x80545ac
 804c245:	68 74 47 05 08       	push   $0x8054774
 804c24a:	e8 71 c7 ff ff       	call   80489c0 <__assert_fail@plt>
 804c24f:	8b 45 08             	mov    0x8(%ebp),%eax
 804c252:	8b 40 14             	mov    0x14(%eax),%eax
 804c255:	8b 40 14             	mov    0x14(%eax),%eax
 804c258:	8b 40 08             	mov    0x8(%eax),%eax
 804c25b:	83 ec 0c             	sub    $0xc,%esp
 804c25e:	50                   	push   %eax
 804c25f:	e8 e1 72 00 00       	call   8053545 <searchTable>
 804c264:	83 c4 10             	add    $0x10,%esp
 804c267:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c26a:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804c26e:	74 09                	je     804c279 <translate_Dec+0x95>
 804c270:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804c273:	8b 00                	mov    (%eax),%eax
 804c275:	85 c0                	test   %eax,%eax
 804c277:	74 19                	je     804c292 <translate_Dec+0xae>
 804c279:	68 70 49 05 08       	push   $0x8054970
 804c27e:	68 eb 01 00 00       	push   $0x1eb
 804c283:	68 ac 45 05 08       	push   $0x80545ac
 804c288:	68 9d 47 05 08       	push   $0x805479d
 804c28d:	e8 2e c7 ff ff       	call   80489c0 <__assert_fail@plt>
 804c292:	e8 32 ee ff ff       	call   804b0c9 <newTemp>
 804c297:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c29a:	8b 45 08             	mov    0x8(%ebp),%eax
 804c29d:	8b 40 1c             	mov    0x1c(%eax),%eax
 804c2a0:	83 ec 08             	sub    $0x8,%esp
 804c2a3:	ff 75 e8             	pushl  -0x18(%ebp)
 804c2a6:	50                   	push   %eax
 804c2a7:	e8 a8 04 00 00       	call   804c754 <translate_Exp>
 804c2ac:	83 c4 10             	add    $0x10,%esp
 804c2af:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c2b2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804c2b5:	8b 40 04             	mov    0x4(%eax),%eax
 804c2b8:	83 ec 08             	sub    $0x8,%esp
 804c2bb:	50                   	push   %eax
 804c2bc:	6a 00                	push   $0x0
 804c2be:	e8 f3 f7 ff ff       	call   804bab6 <newOp>
 804c2c3:	83 c4 10             	add    $0x10,%esp
 804c2c6:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c2c9:	6a 00                	push   $0x0
 804c2cb:	ff 75 e8             	pushl  -0x18(%ebp)
 804c2ce:	ff 75 f0             	pushl  -0x10(%ebp)
 804c2d1:	6a 01                	push   $0x1
 804c2d3:	e8 44 f8 ff ff       	call   804bb1c <newIC>
 804c2d8:	83 c4 10             	add    $0x10,%esp
 804c2db:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c2de:	83 ec 08             	sub    $0x8,%esp
 804c2e1:	ff 75 f4             	pushl  -0xc(%ebp)
 804c2e4:	ff 75 ec             	pushl  -0x14(%ebp)
 804c2e7:	e8 24 ed ff ff       	call   804b010 <addTail>
 804c2ec:	83 c4 10             	add    $0x10,%esp
 804c2ef:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c2f2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c2f5:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c2f8:	eb 19                	jmp    804c313 <translate_Dec+0x12f>
 804c2fa:	68 70 49 05 08       	push   $0x8054970
 804c2ff:	68 f6 01 00 00       	push   $0x1f6
 804c304:	68 ac 45 05 08       	push   $0x80545ac
 804c309:	68 b1 45 05 08       	push   $0x80545b1
 804c30e:	e8 ad c6 ff ff       	call   80489c0 <__assert_fail@plt>
 804c313:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804c316:	c9                   	leave  
 804c317:	c3                   	ret    

0804c318 <translate_StmtList>:
 804c318:	55                   	push   %ebp
 804c319:	89 e5                	mov    %esp,%ebp
 804c31b:	83 ec 18             	sub    $0x18,%esp
 804c31e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804c322:	75 07                	jne    804c32b <translate_StmtList+0x13>
 804c324:	b8 00 00 00 00       	mov    $0x0,%eax
 804c329:	eb 41                	jmp    804c36c <translate_StmtList+0x54>
 804c32b:	8b 45 08             	mov    0x8(%ebp),%eax
 804c32e:	8b 40 14             	mov    0x14(%eax),%eax
 804c331:	83 ec 0c             	sub    $0xc,%esp
 804c334:	50                   	push   %eax
 804c335:	e8 34 00 00 00       	call   804c36e <translate_Stmt>
 804c33a:	83 c4 10             	add    $0x10,%esp
 804c33d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c340:	8b 45 08             	mov    0x8(%ebp),%eax
 804c343:	8b 40 18             	mov    0x18(%eax),%eax
 804c346:	83 ec 0c             	sub    $0xc,%esp
 804c349:	50                   	push   %eax
 804c34a:	e8 c9 ff ff ff       	call   804c318 <translate_StmtList>
 804c34f:	83 c4 10             	add    $0x10,%esp
 804c352:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c355:	83 ec 08             	sub    $0x8,%esp
 804c358:	ff 75 f4             	pushl  -0xc(%ebp)
 804c35b:	ff 75 f0             	pushl  -0x10(%ebp)
 804c35e:	e8 ad ec ff ff       	call   804b010 <addTail>
 804c363:	83 c4 10             	add    $0x10,%esp
 804c366:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c369:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c36c:	c9                   	leave  
 804c36d:	c3                   	ret    

0804c36e <translate_Stmt>:
 804c36e:	55                   	push   %ebp
 804c36f:	89 e5                	mov    %esp,%ebp
 804c371:	81 ec 88 00 00 00    	sub    $0x88,%esp
 804c377:	8b 45 08             	mov    0x8(%ebp),%eax
 804c37a:	8b 40 14             	mov    0x14(%eax),%eax
 804c37d:	89 45 84             	mov    %eax,-0x7c(%ebp)
 804c380:	c7 45 80 00 00 00 00 	movl   $0x0,-0x80(%ebp)
 804c387:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804c38a:	8b 40 04             	mov    0x4(%eax),%eax
 804c38d:	83 f8 32             	cmp    $0x32,%eax
 804c390:	75 18                	jne    804c3aa <translate_Stmt+0x3c>
 804c392:	83 ec 08             	sub    $0x8,%esp
 804c395:	6a 00                	push   $0x0
 804c397:	ff 75 84             	pushl  -0x7c(%ebp)
 804c39a:	e8 b5 03 00 00       	call   804c754 <translate_Exp>
 804c39f:	83 c4 10             	add    $0x10,%esp
 804c3a2:	89 45 80             	mov    %eax,-0x80(%ebp)
 804c3a5:	e9 a5 03 00 00       	jmp    804c74f <translate_Stmt+0x3e1>
 804c3aa:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804c3ad:	8b 40 04             	mov    0x4(%eax),%eax
 804c3b0:	83 f8 2b             	cmp    $0x2b,%eax
 804c3b3:	75 16                	jne    804c3cb <translate_Stmt+0x5d>
 804c3b5:	83 ec 0c             	sub    $0xc,%esp
 804c3b8:	ff 75 84             	pushl  -0x7c(%ebp)
 804c3bb:	e8 17 fd ff ff       	call   804c0d7 <translate_CompSt>
 804c3c0:	83 c4 10             	add    $0x10,%esp
 804c3c3:	89 45 80             	mov    %eax,-0x80(%ebp)
 804c3c6:	e9 84 03 00 00       	jmp    804c74f <translate_Stmt+0x3e1>
 804c3cb:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804c3ce:	8b 40 04             	mov    0x4(%eax),%eax
 804c3d1:	83 f8 1b             	cmp    $0x1b,%eax
 804c3d4:	75 4d                	jne    804c423 <translate_Stmt+0xb5>
 804c3d6:	e8 ee ec ff ff       	call   804b0c9 <newTemp>
 804c3db:	89 45 88             	mov    %eax,-0x78(%ebp)
 804c3de:	8b 45 08             	mov    0x8(%ebp),%eax
 804c3e1:	8b 40 18             	mov    0x18(%eax),%eax
 804c3e4:	83 ec 08             	sub    $0x8,%esp
 804c3e7:	ff 75 88             	pushl  -0x78(%ebp)
 804c3ea:	50                   	push   %eax
 804c3eb:	e8 64 03 00 00       	call   804c754 <translate_Exp>
 804c3f0:	83 c4 10             	add    $0x10,%esp
 804c3f3:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804c3f6:	6a 00                	push   $0x0
 804c3f8:	ff 75 88             	pushl  -0x78(%ebp)
 804c3fb:	6a 00                	push   $0x0
 804c3fd:	6a 0a                	push   $0xa
 804c3ff:	e8 18 f7 ff ff       	call   804bb1c <newIC>
 804c404:	83 c4 10             	add    $0x10,%esp
 804c407:	89 45 90             	mov    %eax,-0x70(%ebp)
 804c40a:	83 ec 08             	sub    $0x8,%esp
 804c40d:	ff 75 90             	pushl  -0x70(%ebp)
 804c410:	ff 75 8c             	pushl  -0x74(%ebp)
 804c413:	e8 f8 eb ff ff       	call   804b010 <addTail>
 804c418:	83 c4 10             	add    $0x10,%esp
 804c41b:	89 45 80             	mov    %eax,-0x80(%ebp)
 804c41e:	e9 2c 03 00 00       	jmp    804c74f <translate_Stmt+0x3e1>
 804c423:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804c426:	8b 40 04             	mov    0x4(%eax),%eax
 804c429:	83 f8 1c             	cmp    $0x1c,%eax
 804c42c:	0f 85 be 00 00 00    	jne    804c4f0 <translate_Stmt+0x182>
 804c432:	8b 45 08             	mov    0x8(%ebp),%eax
 804c435:	8b 40 10             	mov    0x10(%eax),%eax
 804c438:	83 f8 05             	cmp    $0x5,%eax
 804c43b:	0f 85 af 00 00 00    	jne    804c4f0 <translate_Stmt+0x182>
 804c441:	e8 b3 ec ff ff       	call   804b0f9 <newLabel>
 804c446:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804c449:	e8 ab ec ff ff       	call   804b0f9 <newLabel>
 804c44e:	89 45 98             	mov    %eax,-0x68(%ebp)
 804c451:	8b 45 08             	mov    0x8(%ebp),%eax
 804c454:	8b 40 1c             	mov    0x1c(%eax),%eax
 804c457:	83 ec 04             	sub    $0x4,%esp
 804c45a:	ff 75 98             	pushl  -0x68(%ebp)
 804c45d:	ff 75 94             	pushl  -0x6c(%ebp)
 804c460:	50                   	push   %eax
 804c461:	e8 3c 17 00 00       	call   804dba2 <translate_Cond>
 804c466:	83 c4 10             	add    $0x10,%esp
 804c469:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804c46c:	8b 45 08             	mov    0x8(%ebp),%eax
 804c46f:	8b 40 24             	mov    0x24(%eax),%eax
 804c472:	83 ec 0c             	sub    $0xc,%esp
 804c475:	50                   	push   %eax
 804c476:	e8 f3 fe ff ff       	call   804c36e <translate_Stmt>
 804c47b:	83 c4 10             	add    $0x10,%esp
 804c47e:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804c481:	6a 00                	push   $0x0
 804c483:	ff 75 94             	pushl  -0x6c(%ebp)
 804c486:	6a 00                	push   $0x0
 804c488:	6a 09                	push   $0x9
 804c48a:	e8 8d f6 ff ff       	call   804bb1c <newIC>
 804c48f:	83 c4 10             	add    $0x10,%esp
 804c492:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804c495:	6a 00                	push   $0x0
 804c497:	ff 75 98             	pushl  -0x68(%ebp)
 804c49a:	6a 00                	push   $0x0
 804c49c:	6a 09                	push   $0x9
 804c49e:	e8 79 f6 ff ff       	call   804bb1c <newIC>
 804c4a3:	83 c4 10             	add    $0x10,%esp
 804c4a6:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804c4a9:	83 ec 08             	sub    $0x8,%esp
 804c4ac:	ff 75 a8             	pushl  -0x58(%ebp)
 804c4af:	ff 75 a0             	pushl  -0x60(%ebp)
 804c4b2:	e8 59 eb ff ff       	call   804b010 <addTail>
 804c4b7:	83 c4 10             	add    $0x10,%esp
 804c4ba:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804c4bd:	83 ec 08             	sub    $0x8,%esp
 804c4c0:	ff 75 a0             	pushl  -0x60(%ebp)
 804c4c3:	ff 75 a4             	pushl  -0x5c(%ebp)
 804c4c6:	e8 45 eb ff ff       	call   804b010 <addTail>
 804c4cb:	83 c4 10             	add    $0x10,%esp
 804c4ce:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804c4d1:	83 ec 08             	sub    $0x8,%esp
 804c4d4:	ff 75 a4             	pushl  -0x5c(%ebp)
 804c4d7:	ff 75 9c             	pushl  -0x64(%ebp)
 804c4da:	e8 31 eb ff ff       	call   804b010 <addTail>
 804c4df:	83 c4 10             	add    $0x10,%esp
 804c4e2:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804c4e5:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804c4e8:	89 45 80             	mov    %eax,-0x80(%ebp)
 804c4eb:	e9 5f 02 00 00       	jmp    804c74f <translate_Stmt+0x3e1>
 804c4f0:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804c4f3:	8b 40 04             	mov    0x4(%eax),%eax
 804c4f6:	83 f8 1c             	cmp    $0x1c,%eax
 804c4f9:	0f 85 3f 01 00 00    	jne    804c63e <translate_Stmt+0x2d0>
 804c4ff:	8b 45 08             	mov    0x8(%ebp),%eax
 804c502:	8b 40 10             	mov    0x10(%eax),%eax
 804c505:	83 f8 07             	cmp    $0x7,%eax
 804c508:	0f 85 30 01 00 00    	jne    804c63e <translate_Stmt+0x2d0>
 804c50e:	e8 e6 eb ff ff       	call   804b0f9 <newLabel>
 804c513:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804c516:	e8 de eb ff ff       	call   804b0f9 <newLabel>
 804c51b:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804c51e:	e8 d6 eb ff ff       	call   804b0f9 <newLabel>
 804c523:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804c526:	8b 45 08             	mov    0x8(%ebp),%eax
 804c529:	8b 40 1c             	mov    0x1c(%eax),%eax
 804c52c:	83 ec 04             	sub    $0x4,%esp
 804c52f:	ff 75 b0             	pushl  -0x50(%ebp)
 804c532:	ff 75 ac             	pushl  -0x54(%ebp)
 804c535:	50                   	push   %eax
 804c536:	e8 67 16 00 00       	call   804dba2 <translate_Cond>
 804c53b:	83 c4 10             	add    $0x10,%esp
 804c53e:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804c541:	8b 45 08             	mov    0x8(%ebp),%eax
 804c544:	8b 40 24             	mov    0x24(%eax),%eax
 804c547:	83 ec 0c             	sub    $0xc,%esp
 804c54a:	50                   	push   %eax
 804c54b:	e8 1e fe ff ff       	call   804c36e <translate_Stmt>
 804c550:	83 c4 10             	add    $0x10,%esp
 804c553:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804c556:	8b 45 08             	mov    0x8(%ebp),%eax
 804c559:	8b 40 2c             	mov    0x2c(%eax),%eax
 804c55c:	83 ec 0c             	sub    $0xc,%esp
 804c55f:	50                   	push   %eax
 804c560:	e8 09 fe ff ff       	call   804c36e <translate_Stmt>
 804c565:	83 c4 10             	add    $0x10,%esp
 804c568:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804c56b:	6a 00                	push   $0x0
 804c56d:	ff 75 ac             	pushl  -0x54(%ebp)
 804c570:	6a 00                	push   $0x0
 804c572:	6a 09                	push   $0x9
 804c574:	e8 a3 f5 ff ff       	call   804bb1c <newIC>
 804c579:	83 c4 10             	add    $0x10,%esp
 804c57c:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804c57f:	6a 00                	push   $0x0
 804c581:	ff 75 b4             	pushl  -0x4c(%ebp)
 804c584:	6a 00                	push   $0x0
 804c586:	6a 0b                	push   $0xb
 804c588:	e8 8f f5 ff ff       	call   804bb1c <newIC>
 804c58d:	83 c4 10             	add    $0x10,%esp
 804c590:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804c593:	6a 00                	push   $0x0
 804c595:	ff 75 b0             	pushl  -0x50(%ebp)
 804c598:	6a 00                	push   $0x0
 804c59a:	6a 09                	push   $0x9
 804c59c:	e8 7b f5 ff ff       	call   804bb1c <newIC>
 804c5a1:	83 c4 10             	add    $0x10,%esp
 804c5a4:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804c5a7:	6a 00                	push   $0x0
 804c5a9:	ff 75 b4             	pushl  -0x4c(%ebp)
 804c5ac:	6a 00                	push   $0x0
 804c5ae:	6a 09                	push   $0x9
 804c5b0:	e8 67 f5 ff ff       	call   804bb1c <newIC>
 804c5b5:	83 c4 10             	add    $0x10,%esp
 804c5b8:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804c5bb:	83 ec 08             	sub    $0x8,%esp
 804c5be:	ff 75 d0             	pushl  -0x30(%ebp)
 804c5c1:	ff 75 c0             	pushl  -0x40(%ebp)
 804c5c4:	e8 47 ea ff ff       	call   804b010 <addTail>
 804c5c9:	83 c4 10             	add    $0x10,%esp
 804c5cc:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804c5cf:	83 ec 08             	sub    $0x8,%esp
 804c5d2:	ff 75 c0             	pushl  -0x40(%ebp)
 804c5d5:	ff 75 cc             	pushl  -0x34(%ebp)
 804c5d8:	e8 33 ea ff ff       	call   804b010 <addTail>
 804c5dd:	83 c4 10             	add    $0x10,%esp
 804c5e0:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804c5e3:	83 ec 08             	sub    $0x8,%esp
 804c5e6:	ff 75 cc             	pushl  -0x34(%ebp)
 804c5e9:	ff 75 c8             	pushl  -0x38(%ebp)
 804c5ec:	e8 1f ea ff ff       	call   804b010 <addTail>
 804c5f1:	83 c4 10             	add    $0x10,%esp
 804c5f4:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804c5f7:	83 ec 08             	sub    $0x8,%esp
 804c5fa:	ff 75 c8             	pushl  -0x38(%ebp)
 804c5fd:	ff 75 bc             	pushl  -0x44(%ebp)
 804c600:	e8 0b ea ff ff       	call   804b010 <addTail>
 804c605:	83 c4 10             	add    $0x10,%esp
 804c608:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804c60b:	83 ec 08             	sub    $0x8,%esp
 804c60e:	ff 75 bc             	pushl  -0x44(%ebp)
 804c611:	ff 75 c4             	pushl  -0x3c(%ebp)
 804c614:	e8 f7 e9 ff ff       	call   804b010 <addTail>
 804c619:	83 c4 10             	add    $0x10,%esp
 804c61c:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804c61f:	83 ec 08             	sub    $0x8,%esp
 804c622:	ff 75 c4             	pushl  -0x3c(%ebp)
 804c625:	ff 75 b8             	pushl  -0x48(%ebp)
 804c628:	e8 e3 e9 ff ff       	call   804b010 <addTail>
 804c62d:	83 c4 10             	add    $0x10,%esp
 804c630:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804c633:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804c636:	89 45 80             	mov    %eax,-0x80(%ebp)
 804c639:	e9 11 01 00 00       	jmp    804c74f <translate_Stmt+0x3e1>
 804c63e:	8b 45 84             	mov    -0x7c(%ebp),%eax
 804c641:	8b 40 04             	mov    0x4(%eax),%eax
 804c644:	83 f8 1e             	cmp    $0x1e,%eax
 804c647:	0f 85 02 01 00 00    	jne    804c74f <translate_Stmt+0x3e1>
 804c64d:	e8 a7 ea ff ff       	call   804b0f9 <newLabel>
 804c652:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804c655:	e8 9f ea ff ff       	call   804b0f9 <newLabel>
 804c65a:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804c65d:	e8 97 ea ff ff       	call   804b0f9 <newLabel>
 804c662:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804c665:	8b 45 08             	mov    0x8(%ebp),%eax
 804c668:	8b 40 1c             	mov    0x1c(%eax),%eax
 804c66b:	83 ec 04             	sub    $0x4,%esp
 804c66e:	ff 75 dc             	pushl  -0x24(%ebp)
 804c671:	ff 75 d8             	pushl  -0x28(%ebp)
 804c674:	50                   	push   %eax
 804c675:	e8 28 15 00 00       	call   804dba2 <translate_Cond>
 804c67a:	83 c4 10             	add    $0x10,%esp
 804c67d:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c680:	8b 45 08             	mov    0x8(%ebp),%eax
 804c683:	8b 40 24             	mov    0x24(%eax),%eax
 804c686:	83 ec 0c             	sub    $0xc,%esp
 804c689:	50                   	push   %eax
 804c68a:	e8 df fc ff ff       	call   804c36e <translate_Stmt>
 804c68f:	83 c4 10             	add    $0x10,%esp
 804c692:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c695:	6a 00                	push   $0x0
 804c697:	ff 75 d4             	pushl  -0x2c(%ebp)
 804c69a:	6a 00                	push   $0x0
 804c69c:	6a 09                	push   $0x9
 804c69e:	e8 79 f4 ff ff       	call   804bb1c <newIC>
 804c6a3:	83 c4 10             	add    $0x10,%esp
 804c6a6:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c6a9:	6a 00                	push   $0x0
 804c6ab:	ff 75 d8             	pushl  -0x28(%ebp)
 804c6ae:	6a 00                	push   $0x0
 804c6b0:	6a 09                	push   $0x9
 804c6b2:	e8 65 f4 ff ff       	call   804bb1c <newIC>
 804c6b7:	83 c4 10             	add    $0x10,%esp
 804c6ba:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c6bd:	6a 00                	push   $0x0
 804c6bf:	ff 75 d4             	pushl  -0x2c(%ebp)
 804c6c2:	6a 00                	push   $0x0
 804c6c4:	6a 0b                	push   $0xb
 804c6c6:	e8 51 f4 ff ff       	call   804bb1c <newIC>
 804c6cb:	83 c4 10             	add    $0x10,%esp
 804c6ce:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c6d1:	6a 00                	push   $0x0
 804c6d3:	ff 75 dc             	pushl  -0x24(%ebp)
 804c6d6:	6a 00                	push   $0x0
 804c6d8:	6a 09                	push   $0x9
 804c6da:	e8 3d f4 ff ff       	call   804bb1c <newIC>
 804c6df:	83 c4 10             	add    $0x10,%esp
 804c6e2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c6e5:	83 ec 08             	sub    $0x8,%esp
 804c6e8:	ff 75 f4             	pushl  -0xc(%ebp)
 804c6eb:	ff 75 f0             	pushl  -0x10(%ebp)
 804c6ee:	e8 1d e9 ff ff       	call   804b010 <addTail>
 804c6f3:	83 c4 10             	add    $0x10,%esp
 804c6f6:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c6f9:	83 ec 08             	sub    $0x8,%esp
 804c6fc:	ff 75 f0             	pushl  -0x10(%ebp)
 804c6ff:	ff 75 e4             	pushl  -0x1c(%ebp)
 804c702:	e8 09 e9 ff ff       	call   804b010 <addTail>
 804c707:	83 c4 10             	add    $0x10,%esp
 804c70a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c70d:	83 ec 08             	sub    $0x8,%esp
 804c710:	ff 75 e4             	pushl  -0x1c(%ebp)
 804c713:	ff 75 ec             	pushl  -0x14(%ebp)
 804c716:	e8 f5 e8 ff ff       	call   804b010 <addTail>
 804c71b:	83 c4 10             	add    $0x10,%esp
 804c71e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c721:	83 ec 08             	sub    $0x8,%esp
 804c724:	ff 75 ec             	pushl  -0x14(%ebp)
 804c727:	ff 75 e0             	pushl  -0x20(%ebp)
 804c72a:	e8 e1 e8 ff ff       	call   804b010 <addTail>
 804c72f:	83 c4 10             	add    $0x10,%esp
 804c732:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c735:	83 ec 08             	sub    $0x8,%esp
 804c738:	ff 75 e0             	pushl  -0x20(%ebp)
 804c73b:	ff 75 e8             	pushl  -0x18(%ebp)
 804c73e:	e8 cd e8 ff ff       	call   804b010 <addTail>
 804c743:	83 c4 10             	add    $0x10,%esp
 804c746:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c749:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c74c:	89 45 80             	mov    %eax,-0x80(%ebp)
 804c74f:	8b 45 80             	mov    -0x80(%ebp),%eax
 804c752:	c9                   	leave  
 804c753:	c3                   	ret    

0804c754 <translate_Exp>:
 804c754:	55                   	push   %ebp
 804c755:	89 e5                	mov    %esp,%ebp
 804c757:	81 ec 38 01 00 00    	sub    $0x138,%esp
 804c75d:	8b 45 08             	mov    0x8(%ebp),%eax
 804c760:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
 804c766:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c769:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%ebp)
 804c76f:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804c775:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c778:	31 c0                	xor    %eax,%eax
 804c77a:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804c780:	8b 40 14             	mov    0x14(%eax),%eax
 804c783:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
 804c789:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804c78f:	8b 40 18             	mov    0x18(%eax),%eax
 804c792:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
 804c798:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804c79e:	8b 40 1c             	mov    0x1c(%eax),%eax
 804c7a1:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
 804c7a7:	c7 85 e8 fe ff ff 00 	movl   $0x0,-0x118(%ebp)
 804c7ae:	00 00 00 
 804c7b1:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c7b7:	8b 40 04             	mov    0x4(%eax),%eax
 804c7ba:	83 f8 32             	cmp    $0x32,%eax
 804c7bd:	0f 85 ad 02 00 00    	jne    804ca70 <translate_Exp+0x31c>
 804c7c3:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804c7c9:	8b 40 04             	mov    0x4(%eax),%eax
 804c7cc:	83 f8 0a             	cmp    $0xa,%eax
 804c7cf:	0f 85 9b 02 00 00    	jne    804ca70 <translate_Exp+0x31c>
 804c7d5:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c7db:	8b 40 14             	mov    0x14(%eax),%eax
 804c7de:	8b 40 04             	mov    0x4(%eax),%eax
 804c7e1:	83 f8 03             	cmp    $0x3,%eax
 804c7e4:	0f 85 34 01 00 00    	jne    804c91e <translate_Exp+0x1ca>
 804c7ea:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c7f0:	8b 40 14             	mov    0x14(%eax),%eax
 804c7f3:	8b 40 08             	mov    0x8(%eax),%eax
 804c7f6:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
 804c7fc:	83 ec 0c             	sub    $0xc,%esp
 804c7ff:	ff b5 0c ff ff ff    	pushl  -0xf4(%ebp)
 804c805:	e8 3b 6d 00 00       	call   8053545 <searchTable>
 804c80a:	83 c4 10             	add    $0x10,%esp
 804c80d:	89 85 10 ff ff ff    	mov    %eax,-0xf0(%ebp)
 804c813:	83 bd 10 ff ff ff 00 	cmpl   $0x0,-0xf0(%ebp)
 804c81a:	75 19                	jne    804c835 <translate_Exp+0xe1>
 804c81c:	68 80 49 05 08       	push   $0x8054980
 804c821:	68 5d 02 00 00       	push   $0x25d
 804c826:	68 ac 45 05 08       	push   $0x80545ac
 804c82b:	68 b7 47 05 08       	push   $0x80547b7
 804c830:	e8 8b c1 ff ff       	call   80489c0 <__assert_fail@plt>
 804c835:	e8 8f e8 ff ff       	call   804b0c9 <newTemp>
 804c83a:	89 85 14 ff ff ff    	mov    %eax,-0xec(%ebp)
 804c840:	83 ec 08             	sub    $0x8,%esp
 804c843:	ff b5 14 ff ff ff    	pushl  -0xec(%ebp)
 804c849:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804c84f:	e8 00 ff ff ff       	call   804c754 <translate_Exp>
 804c854:	83 c4 10             	add    $0x10,%esp
 804c857:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%ebp)
 804c85d:	e8 fa f1 ff ff       	call   804ba5c <newInterCodes>
 804c862:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
 804c868:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
 804c86e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804c874:	e8 10 f2 ff ff       	call   804ba89 <newOperand>
 804c879:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804c87f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804c885:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804c88b:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804c891:	8b 95 0c ff ff ff    	mov    -0xf4(%ebp),%edx
 804c897:	89 50 04             	mov    %edx,0x4(%eax)
 804c89a:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
 804c8a0:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
 804c8a6:	89 50 04             	mov    %edx,0x4(%eax)
 804c8a9:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
 804c8af:	8b 95 14 ff ff ff    	mov    -0xec(%ebp),%edx
 804c8b5:	89 50 08             	mov    %edx,0x8(%eax)
 804c8b8:	83 bd d0 fe ff ff 00 	cmpl   $0x0,-0x130(%ebp)
 804c8bf:	74 3b                	je     804c8fc <translate_Exp+0x1a8>
 804c8c1:	6a 00                	push   $0x0
 804c8c3:	ff b5 1c ff ff ff    	pushl  -0xe4(%ebp)
 804c8c9:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804c8cf:	6a 01                	push   $0x1
 804c8d1:	e8 46 f2 ff ff       	call   804bb1c <newIC>
 804c8d6:	83 c4 10             	add    $0x10,%esp
 804c8d9:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804c8df:	83 ec 08             	sub    $0x8,%esp
 804c8e2:	ff b5 20 ff ff ff    	pushl  -0xe0(%ebp)
 804c8e8:	ff b5 ec fe ff ff    	pushl  -0x114(%ebp)
 804c8ee:	e8 1d e7 ff ff       	call   804b010 <addTail>
 804c8f3:	83 c4 10             	add    $0x10,%esp
 804c8f6:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
 804c8fc:	83 ec 08             	sub    $0x8,%esp
 804c8ff:	ff b5 ec fe ff ff    	pushl  -0x114(%ebp)
 804c905:	ff b5 18 ff ff ff    	pushl  -0xe8(%ebp)
 804c90b:	e8 00 e7 ff ff       	call   804b010 <addTail>
 804c910:	83 c4 10             	add    $0x10,%esp
 804c913:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804c919:	e9 64 0b 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804c91e:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c924:	8b 40 14             	mov    0x14(%eax),%eax
 804c927:	8b 40 04             	mov    0x4(%eax),%eax
 804c92a:	83 f8 32             	cmp    $0x32,%eax
 804c92d:	0f 85 24 01 00 00    	jne    804ca57 <translate_Exp+0x303>
 804c933:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c939:	8b 40 18             	mov    0x18(%eax),%eax
 804c93c:	8b 40 04             	mov    0x4(%eax),%eax
 804c93f:	83 f8 12             	cmp    $0x12,%eax
 804c942:	74 15                	je     804c959 <translate_Exp+0x205>
 804c944:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c94a:	8b 40 18             	mov    0x18(%eax),%eax
 804c94d:	8b 40 04             	mov    0x4(%eax),%eax
 804c950:	83 f8 16             	cmp    $0x16,%eax
 804c953:	0f 85 fe 00 00 00    	jne    804ca57 <translate_Exp+0x303>
 804c959:	e8 6b e7 ff ff       	call   804b0c9 <newTemp>
 804c95e:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804c964:	83 ec 08             	sub    $0x8,%esp
 804c967:	ff b5 24 ff ff ff    	pushl  -0xdc(%ebp)
 804c96d:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804c973:	e8 dc fd ff ff       	call   804c754 <translate_Exp>
 804c978:	83 c4 10             	add    $0x10,%esp
 804c97b:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
 804c981:	e8 43 e7 ff ff       	call   804b0c9 <newTemp>
 804c986:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804c98c:	83 ec 08             	sub    $0x8,%esp
 804c98f:	ff b5 28 ff ff ff    	pushl  -0xd8(%ebp)
 804c995:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804c99b:	e8 b4 fd ff ff       	call   804c754 <translate_Exp>
 804c9a0:	83 c4 10             	add    $0x10,%esp
 804c9a3:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c9a9:	6a 00                	push   $0x0
 804c9ab:	ff b5 28 ff ff ff    	pushl  -0xd8(%ebp)
 804c9b1:	ff b5 24 ff ff ff    	pushl  -0xdc(%ebp)
 804c9b7:	6a 01                	push   $0x1
 804c9b9:	e8 5e f1 ff ff       	call   804bb1c <newIC>
 804c9be:	83 c4 10             	add    $0x10,%esp
 804c9c1:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
 804c9c7:	83 ec 08             	sub    $0x8,%esp
 804c9ca:	ff b5 30 ff ff ff    	pushl  -0xd0(%ebp)
 804c9d0:	ff b5 2c ff ff ff    	pushl  -0xd4(%ebp)
 804c9d6:	e8 35 e6 ff ff       	call   804b010 <addTail>
 804c9db:	83 c4 10             	add    $0x10,%esp
 804c9de:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c9e4:	83 ec 08             	sub    $0x8,%esp
 804c9e7:	ff b5 2c ff ff ff    	pushl  -0xd4(%ebp)
 804c9ed:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
 804c9f3:	e8 18 e6 ff ff       	call   804b010 <addTail>
 804c9f8:	83 c4 10             	add    $0x10,%esp
 804c9fb:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
 804ca01:	83 bd d0 fe ff ff 00 	cmpl   $0x0,-0x130(%ebp)
 804ca08:	74 3b                	je     804ca45 <translate_Exp+0x2f1>
 804ca0a:	6a 00                	push   $0x0
 804ca0c:	ff b5 24 ff ff ff    	pushl  -0xdc(%ebp)
 804ca12:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ca18:	6a 01                	push   $0x1
 804ca1a:	e8 fd f0 ff ff       	call   804bb1c <newIC>
 804ca1f:	83 c4 10             	add    $0x10,%esp
 804ca22:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%ebp)
 804ca28:	83 ec 08             	sub    $0x8,%esp
 804ca2b:	ff b5 34 ff ff ff    	pushl  -0xcc(%ebp)
 804ca31:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
 804ca37:	e8 d4 e5 ff ff       	call   804b010 <addTail>
 804ca3c:	83 c4 10             	add    $0x10,%esp
 804ca3f:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
 804ca45:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
 804ca4b:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804ca51:	90                   	nop
 804ca52:	e9 2b 0a 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804ca57:	68 80 49 05 08       	push   $0x8054980
 804ca5c:	68 89 02 00 00       	push   $0x289
 804ca61:	68 ac 45 05 08       	push   $0x80545ac
 804ca66:	68 b1 45 05 08       	push   $0x80545b1
 804ca6b:	e8 50 bf ff ff       	call   80489c0 <__assert_fail@plt>
 804ca70:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ca76:	8b 40 04             	mov    0x4(%eax),%eax
 804ca79:	83 f8 32             	cmp    $0x32,%eax
 804ca7c:	0f 85 f1 00 00 00    	jne    804cb73 <translate_Exp+0x41f>
 804ca82:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804ca88:	8b 40 04             	mov    0x4(%eax),%eax
 804ca8b:	83 f8 0c             	cmp    $0xc,%eax
 804ca8e:	0f 85 df 00 00 00    	jne    804cb73 <translate_Exp+0x41f>
 804ca94:	e8 30 e6 ff ff       	call   804b0c9 <newTemp>
 804ca99:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804ca9f:	e8 25 e6 ff ff       	call   804b0c9 <newTemp>
 804caa4:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
 804caaa:	83 ec 08             	sub    $0x8,%esp
 804caad:	ff b5 38 ff ff ff    	pushl  -0xc8(%ebp)
 804cab3:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804cab9:	e8 96 fc ff ff       	call   804c754 <translate_Exp>
 804cabe:	83 c4 10             	add    $0x10,%esp
 804cac1:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 804cac7:	83 ec 08             	sub    $0x8,%esp
 804caca:	ff b5 3c ff ff ff    	pushl  -0xc4(%ebp)
 804cad0:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804cad6:	e8 79 fc ff ff       	call   804c754 <translate_Exp>
 804cadb:	83 c4 10             	add    $0x10,%esp
 804cade:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804cae4:	e8 73 ef ff ff       	call   804ba5c <newInterCodes>
 804cae9:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804caef:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804caf5:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
 804cafb:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804cb01:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
 804cb07:	89 50 08             	mov    %edx,0x8(%eax)
 804cb0a:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804cb10:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
 804cb16:	89 50 0c             	mov    %edx,0xc(%eax)
 804cb19:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804cb1f:	8b 95 d0 fe ff ff    	mov    -0x130(%ebp),%edx
 804cb25:	89 50 04             	mov    %edx,0x4(%eax)
 804cb28:	83 ec 08             	sub    $0x8,%esp
 804cb2b:	ff b5 48 ff ff ff    	pushl  -0xb8(%ebp)
 804cb31:	ff b5 44 ff ff ff    	pushl  -0xbc(%ebp)
 804cb37:	e8 d4 e4 ff ff       	call   804b010 <addTail>
 804cb3c:	83 c4 10             	add    $0x10,%esp
 804cb3f:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804cb45:	83 ec 08             	sub    $0x8,%esp
 804cb48:	ff b5 44 ff ff ff    	pushl  -0xbc(%ebp)
 804cb4e:	ff b5 40 ff ff ff    	pushl  -0xc0(%ebp)
 804cb54:	e8 b7 e4 ff ff       	call   804b010 <addTail>
 804cb59:	83 c4 10             	add    $0x10,%esp
 804cb5c:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 804cb62:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
 804cb68:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804cb6e:	e9 0f 09 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804cb73:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804cb79:	8b 40 04             	mov    0x4(%eax),%eax
 804cb7c:	83 f8 32             	cmp    $0x32,%eax
 804cb7f:	0f 85 cf 00 00 00    	jne    804cc54 <translate_Exp+0x500>
 804cb85:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804cb8b:	8b 40 04             	mov    0x4(%eax),%eax
 804cb8e:	83 f8 0d             	cmp    $0xd,%eax
 804cb91:	0f 85 bd 00 00 00    	jne    804cc54 <translate_Exp+0x500>
 804cb97:	e8 2d e5 ff ff       	call   804b0c9 <newTemp>
 804cb9c:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804cba2:	e8 22 e5 ff ff       	call   804b0c9 <newTemp>
 804cba7:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
 804cbad:	83 ec 08             	sub    $0x8,%esp
 804cbb0:	ff b5 4c ff ff ff    	pushl  -0xb4(%ebp)
 804cbb6:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804cbbc:	e8 93 fb ff ff       	call   804c754 <translate_Exp>
 804cbc1:	83 c4 10             	add    $0x10,%esp
 804cbc4:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 804cbca:	83 ec 08             	sub    $0x8,%esp
 804cbcd:	ff b5 50 ff ff ff    	pushl  -0xb0(%ebp)
 804cbd3:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804cbd9:	e8 76 fb ff ff       	call   804c754 <translate_Exp>
 804cbde:	83 c4 10             	add    $0x10,%esp
 804cbe1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 804cbe7:	ff b5 50 ff ff ff    	pushl  -0xb0(%ebp)
 804cbed:	ff b5 4c ff ff ff    	pushl  -0xb4(%ebp)
 804cbf3:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804cbf9:	6a 03                	push   $0x3
 804cbfb:	e8 1c ef ff ff       	call   804bb1c <newIC>
 804cc00:	83 c4 10             	add    $0x10,%esp
 804cc03:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
 804cc09:	83 ec 08             	sub    $0x8,%esp
 804cc0c:	ff b5 5c ff ff ff    	pushl  -0xa4(%ebp)
 804cc12:	ff b5 58 ff ff ff    	pushl  -0xa8(%ebp)
 804cc18:	e8 f3 e3 ff ff       	call   804b010 <addTail>
 804cc1d:	83 c4 10             	add    $0x10,%esp
 804cc20:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 804cc26:	83 ec 08             	sub    $0x8,%esp
 804cc29:	ff b5 58 ff ff ff    	pushl  -0xa8(%ebp)
 804cc2f:	ff b5 54 ff ff ff    	pushl  -0xac(%ebp)
 804cc35:	e8 d6 e3 ff ff       	call   804b010 <addTail>
 804cc3a:	83 c4 10             	add    $0x10,%esp
 804cc3d:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 804cc43:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804cc49:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804cc4f:	e9 2e 08 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804cc54:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804cc5a:	8b 40 04             	mov    0x4(%eax),%eax
 804cc5d:	83 f8 32             	cmp    $0x32,%eax
 804cc60:	0f 85 cf 00 00 00    	jne    804cd35 <translate_Exp+0x5e1>
 804cc66:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804cc6c:	8b 40 04             	mov    0x4(%eax),%eax
 804cc6f:	83 f8 0e             	cmp    $0xe,%eax
 804cc72:	0f 85 bd 00 00 00    	jne    804cd35 <translate_Exp+0x5e1>
 804cc78:	e8 4c e4 ff ff       	call   804b0c9 <newTemp>
 804cc7d:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 804cc83:	e8 41 e4 ff ff       	call   804b0c9 <newTemp>
 804cc88:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
 804cc8e:	83 ec 08             	sub    $0x8,%esp
 804cc91:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804cc97:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804cc9d:	e8 b2 fa ff ff       	call   804c754 <translate_Exp>
 804cca2:	83 c4 10             	add    $0x10,%esp
 804cca5:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
 804ccab:	83 ec 08             	sub    $0x8,%esp
 804ccae:	ff b5 64 ff ff ff    	pushl  -0x9c(%ebp)
 804ccb4:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804ccba:	e8 95 fa ff ff       	call   804c754 <translate_Exp>
 804ccbf:	83 c4 10             	add    $0x10,%esp
 804ccc2:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
 804ccc8:	ff b5 64 ff ff ff    	pushl  -0x9c(%ebp)
 804ccce:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804ccd4:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ccda:	6a 04                	push   $0x4
 804ccdc:	e8 3b ee ff ff       	call   804bb1c <newIC>
 804cce1:	83 c4 10             	add    $0x10,%esp
 804cce4:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
 804ccea:	83 ec 08             	sub    $0x8,%esp
 804cced:	ff b5 70 ff ff ff    	pushl  -0x90(%ebp)
 804ccf3:	ff b5 6c ff ff ff    	pushl  -0x94(%ebp)
 804ccf9:	e8 12 e3 ff ff       	call   804b010 <addTail>
 804ccfe:	83 c4 10             	add    $0x10,%esp
 804cd01:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
 804cd07:	83 ec 08             	sub    $0x8,%esp
 804cd0a:	ff b5 6c ff ff ff    	pushl  -0x94(%ebp)
 804cd10:	ff b5 68 ff ff ff    	pushl  -0x98(%ebp)
 804cd16:	e8 f5 e2 ff ff       	call   804b010 <addTail>
 804cd1b:	83 c4 10             	add    $0x10,%esp
 804cd1e:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
 804cd24:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
 804cd2a:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804cd30:	e9 4d 07 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804cd35:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804cd3b:	8b 40 04             	mov    0x4(%eax),%eax
 804cd3e:	83 f8 32             	cmp    $0x32,%eax
 804cd41:	0f 85 bd 00 00 00    	jne    804ce04 <translate_Exp+0x6b0>
 804cd47:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804cd4d:	8b 40 04             	mov    0x4(%eax),%eax
 804cd50:	83 f8 0f             	cmp    $0xf,%eax
 804cd53:	0f 85 ab 00 00 00    	jne    804ce04 <translate_Exp+0x6b0>
 804cd59:	e8 6b e3 ff ff       	call   804b0c9 <newTemp>
 804cd5e:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 804cd64:	e8 60 e3 ff ff       	call   804b0c9 <newTemp>
 804cd69:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cd6f:	83 ec 08             	sub    $0x8,%esp
 804cd72:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
 804cd78:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804cd7e:	e8 d1 f9 ff ff       	call   804c754 <translate_Exp>
 804cd83:	83 c4 10             	add    $0x10,%esp
 804cd86:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804cd8c:	83 ec 08             	sub    $0x8,%esp
 804cd8f:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
 804cd95:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804cd9b:	e8 b4 f9 ff ff       	call   804c754 <translate_Exp>
 804cda0:	83 c4 10             	add    $0x10,%esp
 804cda3:	89 45 80             	mov    %eax,-0x80(%ebp)
 804cda6:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
 804cdac:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
 804cdb2:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804cdb8:	6a 06                	push   $0x6
 804cdba:	e8 5d ed ff ff       	call   804bb1c <newIC>
 804cdbf:	83 c4 10             	add    $0x10,%esp
 804cdc2:	89 45 84             	mov    %eax,-0x7c(%ebp)
 804cdc5:	83 ec 08             	sub    $0x8,%esp
 804cdc8:	ff 75 84             	pushl  -0x7c(%ebp)
 804cdcb:	ff 75 80             	pushl  -0x80(%ebp)
 804cdce:	e8 3d e2 ff ff       	call   804b010 <addTail>
 804cdd3:	83 c4 10             	add    $0x10,%esp
 804cdd6:	89 45 80             	mov    %eax,-0x80(%ebp)
 804cdd9:	83 ec 08             	sub    $0x8,%esp
 804cddc:	ff 75 80             	pushl  -0x80(%ebp)
 804cddf:	ff b5 7c ff ff ff    	pushl  -0x84(%ebp)
 804cde5:	e8 26 e2 ff ff       	call   804b010 <addTail>
 804cdea:	83 c4 10             	add    $0x10,%esp
 804cded:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804cdf3:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 804cdf9:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804cdff:	e9 7e 06 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804ce04:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ce0a:	8b 40 04             	mov    0x4(%eax),%eax
 804ce0d:	83 f8 14             	cmp    $0x14,%eax
 804ce10:	75 22                	jne    804ce34 <translate_Exp+0x6e0>
 804ce12:	83 ec 08             	sub    $0x8,%esp
 804ce15:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ce1b:	ff b5 04 ff ff ff    	pushl  -0xfc(%ebp)
 804ce21:	e8 2e f9 ff ff       	call   804c754 <translate_Exp>
 804ce26:	83 c4 10             	add    $0x10,%esp
 804ce29:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804ce2f:	e9 4e 06 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804ce34:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ce3a:	8b 40 04             	mov    0x4(%eax),%eax
 804ce3d:	83 f8 0d             	cmp    $0xd,%eax
 804ce40:	75 6c                	jne    804ceae <translate_Exp+0x75a>
 804ce42:	e8 82 e2 ff ff       	call   804b0c9 <newTemp>
 804ce47:	89 45 88             	mov    %eax,-0x78(%ebp)
 804ce4a:	83 ec 08             	sub    $0x8,%esp
 804ce4d:	ff 75 88             	pushl  -0x78(%ebp)
 804ce50:	ff b5 04 ff ff ff    	pushl  -0xfc(%ebp)
 804ce56:	e8 f9 f8 ff ff       	call   804c754 <translate_Exp>
 804ce5b:	83 c4 10             	add    $0x10,%esp
 804ce5e:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804ce61:	83 ec 08             	sub    $0x8,%esp
 804ce64:	6a 00                	push   $0x0
 804ce66:	6a 01                	push   $0x1
 804ce68:	e8 49 ec ff ff       	call   804bab6 <newOp>
 804ce6d:	83 c4 10             	add    $0x10,%esp
 804ce70:	89 45 90             	mov    %eax,-0x70(%ebp)
 804ce73:	ff 75 88             	pushl  -0x78(%ebp)
 804ce76:	ff 75 90             	pushl  -0x70(%ebp)
 804ce79:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ce7f:	6a 03                	push   $0x3
 804ce81:	e8 96 ec ff ff       	call   804bb1c <newIC>
 804ce86:	83 c4 10             	add    $0x10,%esp
 804ce89:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804ce8c:	83 ec 08             	sub    $0x8,%esp
 804ce8f:	ff 75 94             	pushl  -0x6c(%ebp)
 804ce92:	ff 75 8c             	pushl  -0x74(%ebp)
 804ce95:	e8 76 e1 ff ff       	call   804b010 <addTail>
 804ce9a:	83 c4 10             	add    $0x10,%esp
 804ce9d:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804cea0:	8b 45 8c             	mov    -0x74(%ebp),%eax
 804cea3:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804cea9:	e9 d4 05 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804ceae:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ceb4:	8b 40 04             	mov    0x4(%eax),%eax
 804ceb7:	83 f8 13             	cmp    $0x13,%eax
 804ceba:	74 40                	je     804cefc <translate_Exp+0x7a8>
 804cebc:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804cec2:	8b 40 04             	mov    0x4(%eax),%eax
 804cec5:	83 f8 32             	cmp    $0x32,%eax
 804cec8:	0f 85 32 01 00 00    	jne    804d000 <translate_Exp+0x8ac>
 804cece:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804ced4:	8b 40 04             	mov    0x4(%eax),%eax
 804ced7:	83 f8 10             	cmp    $0x10,%eax
 804ceda:	74 20                	je     804cefc <translate_Exp+0x7a8>
 804cedc:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804cee2:	8b 40 04             	mov    0x4(%eax),%eax
 804cee5:	83 f8 11             	cmp    $0x11,%eax
 804cee8:	74 12                	je     804cefc <translate_Exp+0x7a8>
 804ceea:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804cef0:	8b 40 04             	mov    0x4(%eax),%eax
 804cef3:	83 f8 0b             	cmp    $0xb,%eax
 804cef6:	0f 85 04 01 00 00    	jne    804d000 <translate_Exp+0x8ac>
 804cefc:	e8 f8 e1 ff ff       	call   804b0f9 <newLabel>
 804cf01:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804cf04:	e8 f0 e1 ff ff       	call   804b0f9 <newLabel>
 804cf09:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804cf0c:	83 ec 08             	sub    $0x8,%esp
 804cf0f:	6a 00                	push   $0x0
 804cf11:	6a 01                	push   $0x1
 804cf13:	e8 9e eb ff ff       	call   804bab6 <newOp>
 804cf18:	83 c4 10             	add    $0x10,%esp
 804cf1b:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804cf1e:	6a 00                	push   $0x0
 804cf20:	ff 75 d8             	pushl  -0x28(%ebp)
 804cf23:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804cf29:	6a 01                	push   $0x1
 804cf2b:	e8 ec eb ff ff       	call   804bb1c <newIC>
 804cf30:	83 c4 10             	add    $0x10,%esp
 804cf33:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804cf36:	83 ec 04             	sub    $0x4,%esp
 804cf39:	ff 75 d4             	pushl  -0x2c(%ebp)
 804cf3c:	ff 75 d0             	pushl  -0x30(%ebp)
 804cf3f:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804cf45:	e8 58 0c 00 00       	call   804dba2 <translate_Cond>
 804cf4a:	83 c4 10             	add    $0x10,%esp
 804cf4d:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804cf50:	6a 00                	push   $0x0
 804cf52:	ff 75 d0             	pushl  -0x30(%ebp)
 804cf55:	6a 00                	push   $0x0
 804cf57:	6a 09                	push   $0x9
 804cf59:	e8 be eb ff ff       	call   804bb1c <newIC>
 804cf5e:	83 c4 10             	add    $0x10,%esp
 804cf61:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804cf64:	83 ec 08             	sub    $0x8,%esp
 804cf67:	6a 01                	push   $0x1
 804cf69:	6a 01                	push   $0x1
 804cf6b:	e8 46 eb ff ff       	call   804bab6 <newOp>
 804cf70:	83 c4 10             	add    $0x10,%esp
 804cf73:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804cf76:	6a 00                	push   $0x0
 804cf78:	ff 75 e8             	pushl  -0x18(%ebp)
 804cf7b:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804cf81:	6a 01                	push   $0x1
 804cf83:	e8 94 eb ff ff       	call   804bb1c <newIC>
 804cf88:	83 c4 10             	add    $0x10,%esp
 804cf8b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804cf8e:	83 ec 08             	sub    $0x8,%esp
 804cf91:	ff 75 ec             	pushl  -0x14(%ebp)
 804cf94:	ff 75 e4             	pushl  -0x1c(%ebp)
 804cf97:	e8 74 e0 ff ff       	call   804b010 <addTail>
 804cf9c:	83 c4 10             	add    $0x10,%esp
 804cf9f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804cfa2:	6a 00                	push   $0x0
 804cfa4:	ff 75 d4             	pushl  -0x2c(%ebp)
 804cfa7:	6a 00                	push   $0x0
 804cfa9:	6a 09                	push   $0x9
 804cfab:	e8 6c eb ff ff       	call   804bb1c <newIC>
 804cfb0:	83 c4 10             	add    $0x10,%esp
 804cfb3:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804cfb6:	83 ec 08             	sub    $0x8,%esp
 804cfb9:	ff 75 f0             	pushl  -0x10(%ebp)
 804cfbc:	ff 75 e4             	pushl  -0x1c(%ebp)
 804cfbf:	e8 4c e0 ff ff       	call   804b010 <addTail>
 804cfc4:	83 c4 10             	add    $0x10,%esp
 804cfc7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804cfca:	83 ec 08             	sub    $0x8,%esp
 804cfcd:	ff 75 e4             	pushl  -0x1c(%ebp)
 804cfd0:	ff 75 e0             	pushl  -0x20(%ebp)
 804cfd3:	e8 38 e0 ff ff       	call   804b010 <addTail>
 804cfd8:	83 c4 10             	add    $0x10,%esp
 804cfdb:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804cfde:	83 ec 08             	sub    $0x8,%esp
 804cfe1:	ff 75 e0             	pushl  -0x20(%ebp)
 804cfe4:	ff 75 dc             	pushl  -0x24(%ebp)
 804cfe7:	e8 24 e0 ff ff       	call   804b010 <addTail>
 804cfec:	83 c4 10             	add    $0x10,%esp
 804cfef:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804cff2:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804cff5:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804cffb:	e9 82 04 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804d000:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d006:	8b 40 04             	mov    0x4(%eax),%eax
 804d009:	83 f8 03             	cmp    $0x3,%eax
 804d00c:	0f 85 a3 00 00 00    	jne    804d0b5 <translate_Exp+0x961>
 804d012:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804d018:	8b 40 10             	mov    0x10(%eax),%eax
 804d01b:	83 f8 01             	cmp    $0x1,%eax
 804d01e:	0f 85 91 00 00 00    	jne    804d0b5 <translate_Exp+0x961>
 804d024:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d02a:	8b 40 08             	mov    0x8(%eax),%eax
 804d02d:	83 ec 0c             	sub    $0xc,%esp
 804d030:	50                   	push   %eax
 804d031:	e8 0f 65 00 00       	call   8053545 <searchTable>
 804d036:	83 c4 10             	add    $0x10,%esp
 804d039:	89 45 98             	mov    %eax,-0x68(%ebp)
 804d03c:	83 7d 98 00          	cmpl   $0x0,-0x68(%ebp)
 804d040:	75 19                	jne    804d05b <translate_Exp+0x907>
 804d042:	68 80 49 05 08       	push   $0x8054980
 804d047:	68 e6 02 00 00       	push   $0x2e6
 804d04c:	68 ac 45 05 08       	push   $0x80545ac
 804d051:	68 34 47 05 08       	push   $0x8054734
 804d056:	e8 65 b9 ff ff       	call   80489c0 <__assert_fail@plt>
 804d05b:	8b 85 d0 fe ff ff    	mov    -0x130(%ebp),%eax
 804d061:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804d064:	e8 20 ea ff ff       	call   804ba89 <newOperand>
 804d069:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804d06c:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804d06f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804d075:	8b 45 98             	mov    -0x68(%ebp),%eax
 804d078:	8b 50 04             	mov    0x4(%eax),%edx
 804d07b:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804d07e:	89 50 04             	mov    %edx,0x4(%eax)
 804d081:	e8 d6 e9 ff ff       	call   804ba5c <newInterCodes>
 804d086:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804d08c:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804d092:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804d098:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804d09e:	8b 55 9c             	mov    -0x64(%ebp),%edx
 804d0a1:	89 50 04             	mov    %edx,0x4(%eax)
 804d0a4:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804d0aa:	8b 55 a0             	mov    -0x60(%ebp),%edx
 804d0ad:	89 50 08             	mov    %edx,0x8(%eax)
 804d0b0:	e9 cd 03 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804d0b5:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d0bb:	8b 40 04             	mov    0x4(%eax),%eax
 804d0be:	83 f8 03             	cmp    $0x3,%eax
 804d0c1:	0f 85 d3 00 00 00    	jne    804d19a <translate_Exp+0xa46>
 804d0c7:	83 bd 04 ff ff ff 00 	cmpl   $0x0,-0xfc(%ebp)
 804d0ce:	0f 84 c6 00 00 00    	je     804d19a <translate_Exp+0xa46>
 804d0d4:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804d0da:	8b 40 10             	mov    0x10(%eax),%eax
 804d0dd:	83 f8 03             	cmp    $0x3,%eax
 804d0e0:	0f 85 b4 00 00 00    	jne    804d19a <translate_Exp+0xa46>
 804d0e6:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d0ec:	8b 40 08             	mov    0x8(%eax),%eax
 804d0ef:	83 ec 0c             	sub    $0xc,%esp
 804d0f2:	50                   	push   %eax
 804d0f3:	e8 4d 64 00 00       	call   8053545 <searchTable>
 804d0f8:	83 c4 10             	add    $0x10,%esp
 804d0fb:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804d0fe:	83 7d a4 00          	cmpl   $0x0,-0x5c(%ebp)
 804d102:	75 19                	jne    804d11d <translate_Exp+0x9c9>
 804d104:	68 80 49 05 08       	push   $0x8054980
 804d109:	68 f4 02 00 00       	push   $0x2f4
 804d10e:	68 ac 45 05 08       	push   $0x80545ac
 804d113:	68 b7 47 05 08       	push   $0x80547b7
 804d118:	e8 a3 b8 ff ff       	call   80489c0 <__assert_fail@plt>
 804d11d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d120:	8b 40 04             	mov    0x4(%eax),%eax
 804d123:	83 ec 08             	sub    $0x8,%esp
 804d126:	68 bb 47 05 08       	push   $0x80547bb
 804d12b:	50                   	push   %eax
 804d12c:	e8 7f b6 ff ff       	call   80487b0 <strcmp@plt>
 804d131:	83 c4 10             	add    $0x10,%esp
 804d134:	85 c0                	test   %eax,%eax
 804d136:	75 25                	jne    804d15d <translate_Exp+0xa09>
 804d138:	6a 00                	push   $0x0
 804d13a:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804d140:	6a 00                	push   $0x0
 804d142:	6a 14                	push   $0x14
 804d144:	e8 d3 e9 ff ff       	call   804bb1c <newIC>
 804d149:	83 c4 10             	add    $0x10,%esp
 804d14c:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804d14f:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804d152:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804d158:	e9 25 03 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804d15d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d160:	8b 40 04             	mov    0x4(%eax),%eax
 804d163:	83 ec 08             	sub    $0x8,%esp
 804d166:	50                   	push   %eax
 804d167:	6a 00                	push   $0x0
 804d169:	e8 48 e9 ff ff       	call   804bab6 <newOp>
 804d16e:	83 c4 10             	add    $0x10,%esp
 804d171:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804d174:	6a 00                	push   $0x0
 804d176:	ff 75 ac             	pushl  -0x54(%ebp)
 804d179:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804d17f:	6a 0c                	push   $0xc
 804d181:	e8 96 e9 ff ff       	call   804bb1c <newIC>
 804d186:	83 c4 10             	add    $0x10,%esp
 804d189:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d18c:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804d18f:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804d195:	e9 e8 02 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804d19a:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d1a0:	8b 40 04             	mov    0x4(%eax),%eax
 804d1a3:	83 f8 03             	cmp    $0x3,%eax
 804d1a6:	0f 85 b1 01 00 00    	jne    804d35d <translate_Exp+0xc09>
 804d1ac:	83 bd 04 ff ff ff 00 	cmpl   $0x0,-0xfc(%ebp)
 804d1b3:	0f 84 a4 01 00 00    	je     804d35d <translate_Exp+0xc09>
 804d1b9:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804d1bf:	8b 40 10             	mov    0x10(%eax),%eax
 804d1c2:	83 f8 04             	cmp    $0x4,%eax
 804d1c5:	0f 85 92 01 00 00    	jne    804d35d <translate_Exp+0xc09>
 804d1cb:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d1d1:	8b 40 08             	mov    0x8(%eax),%eax
 804d1d4:	83 ec 0c             	sub    $0xc,%esp
 804d1d7:	50                   	push   %eax
 804d1d8:	e8 68 63 00 00       	call   8053545 <searchTable>
 804d1dd:	83 c4 10             	add    $0x10,%esp
 804d1e0:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804d1e3:	83 7d b4 00          	cmpl   $0x0,-0x4c(%ebp)
 804d1e7:	75 19                	jne    804d202 <translate_Exp+0xaae>
 804d1e9:	68 80 49 05 08       	push   $0x8054980
 804d1ee:	68 03 03 00 00       	push   $0x303
 804d1f3:	68 ac 45 05 08       	push   $0x80545ac
 804d1f8:	68 b7 47 05 08       	push   $0x80547b7
 804d1fd:	e8 be b7 ff ff       	call   80489c0 <__assert_fail@plt>
 804d202:	c7 85 e4 fe ff ff 00 	movl   $0x0,-0x11c(%ebp)
 804d209:	00 00 00 
 804d20c:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804d212:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d215:	83 ec 08             	sub    $0x8,%esp
 804d218:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
 804d21e:	52                   	push   %edx
 804d21f:	50                   	push   %eax
 804d220:	e8 d3 08 00 00       	call   804daf8 <translate_Args>
 804d225:	83 c4 10             	add    $0x10,%esp
 804d228:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
 804d22e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d231:	8b 40 04             	mov    0x4(%eax),%eax
 804d234:	83 ec 08             	sub    $0x8,%esp
 804d237:	68 c0 47 05 08       	push   $0x80547c0
 804d23c:	50                   	push   %eax
 804d23d:	e8 6e b5 ff ff       	call   80487b0 <strcmp@plt>
 804d242:	83 c4 10             	add    $0x10,%esp
 804d245:	85 c0                	test   %eax,%eax
 804d247:	75 39                	jne    804d282 <translate_Exp+0xb2e>
 804d249:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
 804d24f:	8b 00                	mov    (%eax),%eax
 804d251:	6a 00                	push   $0x0
 804d253:	50                   	push   %eax
 804d254:	6a 00                	push   $0x0
 804d256:	6a 15                	push   $0x15
 804d258:	e8 bf e8 ff ff       	call   804bb1c <newIC>
 804d25d:	83 c4 10             	add    $0x10,%esp
 804d260:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804d263:	83 ec 08             	sub    $0x8,%esp
 804d266:	ff 75 b8             	pushl  -0x48(%ebp)
 804d269:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
 804d26f:	e8 9c dd ff ff       	call   804b010 <addTail>
 804d274:	83 c4 10             	add    $0x10,%esp
 804d277:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
 804d27d:	e9 ca 00 00 00       	jmp    804d34c <translate_Exp+0xbf8>
 804d282:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
 804d288:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%ebp)
 804d28e:	c7 85 fc fe ff ff 00 	movl   $0x0,-0x104(%ebp)
 804d295:	00 00 00 
 804d298:	eb 43                	jmp    804d2dd <translate_Exp+0xb89>
 804d29a:	8b 85 f8 fe ff ff    	mov    -0x108(%ebp),%eax
 804d2a0:	8b 00                	mov    (%eax),%eax
 804d2a2:	6a 00                	push   $0x0
 804d2a4:	50                   	push   %eax
 804d2a5:	6a 00                	push   $0x0
 804d2a7:	6a 0d                	push   $0xd
 804d2a9:	e8 6e e8 ff ff       	call   804bb1c <newIC>
 804d2ae:	83 c4 10             	add    $0x10,%esp
 804d2b1:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804d2b4:	83 ec 08             	sub    $0x8,%esp
 804d2b7:	ff 75 bc             	pushl  -0x44(%ebp)
 804d2ba:	ff b5 fc fe ff ff    	pushl  -0x104(%ebp)
 804d2c0:	e8 4b dd ff ff       	call   804b010 <addTail>
 804d2c5:	83 c4 10             	add    $0x10,%esp
 804d2c8:	89 85 fc fe ff ff    	mov    %eax,-0x104(%ebp)
 804d2ce:	8b 85 f8 fe ff ff    	mov    -0x108(%ebp),%eax
 804d2d4:	8b 40 04             	mov    0x4(%eax),%eax
 804d2d7:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%ebp)
 804d2dd:	83 bd f8 fe ff ff 00 	cmpl   $0x0,-0x108(%ebp)
 804d2e4:	75 b4                	jne    804d29a <translate_Exp+0xb46>
 804d2e6:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d2e9:	8b 40 04             	mov    0x4(%eax),%eax
 804d2ec:	83 ec 08             	sub    $0x8,%esp
 804d2ef:	50                   	push   %eax
 804d2f0:	6a 00                	push   $0x0
 804d2f2:	e8 bf e7 ff ff       	call   804bab6 <newOp>
 804d2f7:	83 c4 10             	add    $0x10,%esp
 804d2fa:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804d2fd:	6a 00                	push   $0x0
 804d2ff:	ff 75 c0             	pushl  -0x40(%ebp)
 804d302:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804d308:	6a 0c                	push   $0xc
 804d30a:	e8 0d e8 ff ff       	call   804bb1c <newIC>
 804d30f:	83 c4 10             	add    $0x10,%esp
 804d312:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804d315:	83 ec 08             	sub    $0x8,%esp
 804d318:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d31b:	ff b5 fc fe ff ff    	pushl  -0x104(%ebp)
 804d321:	e8 ea dc ff ff       	call   804b010 <addTail>
 804d326:	83 c4 10             	add    $0x10,%esp
 804d329:	89 85 fc fe ff ff    	mov    %eax,-0x104(%ebp)
 804d32f:	83 ec 08             	sub    $0x8,%esp
 804d332:	ff b5 fc fe ff ff    	pushl  -0x104(%ebp)
 804d338:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
 804d33e:	e8 cd dc ff ff       	call   804b010 <addTail>
 804d343:	83 c4 10             	add    $0x10,%esp
 804d346:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
 804d34c:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
 804d352:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804d358:	e9 25 01 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804d35d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d363:	8b 40 04             	mov    0x4(%eax),%eax
 804d366:	83 f8 01             	cmp    $0x1,%eax
 804d369:	75 5d                	jne    804d3c8 <translate_Exp+0xc74>
 804d36b:	8b 85 d0 fe ff ff    	mov    -0x130(%ebp),%eax
 804d371:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804d374:	e8 10 e7 ff ff       	call   804ba89 <newOperand>
 804d379:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804d37c:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d37f:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804d385:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d38b:	8b 50 08             	mov    0x8(%eax),%edx
 804d38e:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d391:	89 50 04             	mov    %edx,0x4(%eax)
 804d394:	e8 c3 e6 ff ff       	call   804ba5c <newInterCodes>
 804d399:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804d39f:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804d3a5:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804d3ab:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804d3b1:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804d3b4:	89 50 08             	mov    %edx,0x8(%eax)
 804d3b7:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804d3bd:	8b 55 c8             	mov    -0x38(%ebp),%edx
 804d3c0:	89 50 04             	mov    %edx,0x4(%eax)
 804d3c3:	e9 ba 00 00 00       	jmp    804d482 <translate_Exp+0xd2e>
 804d3c8:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d3ce:	8b 40 04             	mov    0x4(%eax),%eax
 804d3d1:	83 f8 02             	cmp    $0x2,%eax
 804d3d4:	75 19                	jne    804d3ef <translate_Exp+0xc9b>
 804d3d6:	68 80 49 05 08       	push   $0x8054980
 804d3db:	68 24 03 00 00       	push   $0x324
 804d3e0:	68 ac 45 05 08       	push   $0x80545ac
 804d3e5:	68 b1 45 05 08       	push   $0x80545b1
 804d3ea:	e8 d1 b5 ff ff       	call   80489c0 <__assert_fail@plt>
 804d3ef:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d3f5:	8b 40 04             	mov    0x4(%eax),%eax
 804d3f8:	83 f8 32             	cmp    $0x32,%eax
 804d3fb:	75 2f                	jne    804d42c <translate_Exp+0xcd8>
 804d3fd:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804d403:	8b 40 04             	mov    0x4(%eax),%eax
 804d406:	83 f8 12             	cmp    $0x12,%eax
 804d409:	75 21                	jne    804d42c <translate_Exp+0xcd8>
 804d40b:	83 ec 04             	sub    $0x4,%esp
 804d40e:	6a 00                	push   $0x0
 804d410:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804d416:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804d41c:	e8 7a 00 00 00       	call   804d49b <translate_Structure>
 804d421:	83 c4 10             	add    $0x10,%esp
 804d424:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804d42a:	eb 56                	jmp    804d482 <translate_Exp+0xd2e>
 804d42c:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804d432:	8b 40 04             	mov    0x4(%eax),%eax
 804d435:	83 f8 32             	cmp    $0x32,%eax
 804d438:	75 2f                	jne    804d469 <translate_Exp+0xd15>
 804d43a:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804d440:	8b 40 04             	mov    0x4(%eax),%eax
 804d443:	83 f8 16             	cmp    $0x16,%eax
 804d446:	75 21                	jne    804d469 <translate_Exp+0xd15>
 804d448:	83 ec 04             	sub    $0x4,%esp
 804d44b:	6a 00                	push   $0x0
 804d44d:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804d453:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804d459:	e8 61 03 00 00       	call   804d7bf <translate_Array>
 804d45e:	83 c4 10             	add    $0x10,%esp
 804d461:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804d467:	eb 19                	jmp    804d482 <translate_Exp+0xd2e>
 804d469:	68 80 49 05 08       	push   $0x8054980
 804d46e:	68 2d 03 00 00       	push   $0x32d
 804d473:	68 ac 45 05 08       	push   $0x80545ac
 804d478:	68 b1 45 05 08       	push   $0x80545b1
 804d47d:	e8 3e b5 ff ff       	call   80489c0 <__assert_fail@plt>
 804d482:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804d488:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804d48b:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804d492:	74 05                	je     804d499 <translate_Exp+0xd45>
 804d494:	e8 77 b3 ff ff       	call   8048810 <__stack_chk_fail@plt>
 804d499:	c9                   	leave  
 804d49a:	c3                   	ret    

0804d49b <translate_Structure>:
 804d49b:	55                   	push   %ebp
 804d49c:	89 e5                	mov    %esp,%ebp
 804d49e:	83 ec 68             	sub    $0x68,%esp
 804d4a1:	8b 45 08             	mov    0x8(%ebp),%eax
 804d4a4:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804d4a7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d4aa:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804d4ad:	8b 45 10             	mov    0x10(%ebp),%eax
 804d4b0:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804d4b3:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804d4b9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d4bc:	31 c0                	xor    %eax,%eax
 804d4be:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d4c1:	8b 40 14             	mov    0x14(%eax),%eax
 804d4c4:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804d4c7:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d4ca:	8b 40 18             	mov    0x18(%eax),%eax
 804d4cd:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d4d0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d4d3:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d4d6:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804d4d9:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
 804d4e0:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 804d4e7:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 804d4ee:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 804d4f5:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d4f8:	8b 40 14             	mov    0x14(%eax),%eax
 804d4fb:	8b 40 04             	mov    0x4(%eax),%eax
 804d4fe:	83 f8 03             	cmp    $0x3,%eax
 804d501:	0f 85 92 00 00 00    	jne    804d599 <translate_Structure+0xfe>
 804d507:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d50a:	8b 40 14             	mov    0x14(%eax),%eax
 804d50d:	8b 40 08             	mov    0x8(%eax),%eax
 804d510:	83 ec 0c             	sub    $0xc,%esp
 804d513:	50                   	push   %eax
 804d514:	e8 2c 60 00 00       	call   8053545 <searchTable>
 804d519:	83 c4 10             	add    $0x10,%esp
 804d51c:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804d51f:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 804d523:	74 16                	je     804d53b <translate_Structure+0xa0>
 804d525:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d528:	8b 00                	mov    (%eax),%eax
 804d52a:	85 c0                	test   %eax,%eax
 804d52c:	75 0d                	jne    804d53b <translate_Structure+0xa0>
 804d52e:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d531:	8b 40 0c             	mov    0xc(%eax),%eax
 804d534:	8b 00                	mov    (%eax),%eax
 804d536:	83 f8 02             	cmp    $0x2,%eax
 804d539:	74 19                	je     804d554 <translate_Structure+0xb9>
 804d53b:	68 90 49 05 08       	push   $0x8054990
 804d540:	68 41 03 00 00       	push   $0x341
 804d545:	68 ac 45 05 08       	push   $0x80545ac
 804d54a:	68 c8 47 05 08       	push   $0x80547c8
 804d54f:	e8 6c b4 ff ff       	call   80489c0 <__assert_fail@plt>
 804d554:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d557:	8b 40 0c             	mov    0xc(%eax),%eax
 804d55a:	8b 40 04             	mov    0x4(%eax),%eax
 804d55d:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804d560:	e8 64 db ff ff       	call   804b0c9 <newTemp>
 804d565:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804d568:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d56b:	8b 40 04             	mov    0x4(%eax),%eax
 804d56e:	83 ec 08             	sub    $0x8,%esp
 804d571:	50                   	push   %eax
 804d572:	6a 00                	push   $0x0
 804d574:	e8 3d e5 ff ff       	call   804bab6 <newOp>
 804d579:	83 c4 10             	add    $0x10,%esp
 804d57c:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804d57f:	6a 00                	push   $0x0
 804d581:	ff 75 dc             	pushl  -0x24(%ebp)
 804d584:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d587:	6a 01                	push   $0x1
 804d589:	e8 8e e5 ff ff       	call   804bb1c <newIC>
 804d58e:	83 c4 10             	add    $0x10,%esp
 804d591:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804d594:	e9 d2 00 00 00       	jmp    804d66b <translate_Structure+0x1d0>
 804d599:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d59c:	8b 40 18             	mov    0x18(%eax),%eax
 804d59f:	8b 40 04             	mov    0x4(%eax),%eax
 804d5a2:	83 f8 12             	cmp    $0x12,%eax
 804d5a5:	75 5c                	jne    804d603 <translate_Structure+0x168>
 804d5a7:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804d5ae:	e8 16 db ff ff       	call   804b0c9 <newTemp>
 804d5b3:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804d5b6:	83 ec 04             	sub    $0x4,%esp
 804d5b9:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 804d5bc:	50                   	push   %eax
 804d5bd:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d5c0:	ff 75 cc             	pushl  -0x34(%ebp)
 804d5c3:	e8 d3 fe ff ff       	call   804d49b <translate_Structure>
 804d5c8:	83 c4 10             	add    $0x10,%esp
 804d5cb:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804d5ce:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d5d1:	85 c0                	test   %eax,%eax
 804d5d3:	74 0a                	je     804d5df <translate_Structure+0x144>
 804d5d5:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d5d8:	8b 00                	mov    (%eax),%eax
 804d5da:	83 f8 02             	cmp    $0x2,%eax
 804d5dd:	74 19                	je     804d5f8 <translate_Structure+0x15d>
 804d5df:	68 90 49 05 08       	push   $0x8054990
 804d5e4:	68 4e 03 00 00       	push   $0x34e
 804d5e9:	68 ac 45 05 08       	push   $0x80545ac
 804d5ee:	68 04 48 05 08       	push   $0x8054804
 804d5f3:	e8 c8 b3 ff ff       	call   80489c0 <__assert_fail@plt>
 804d5f8:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d5fb:	8b 40 04             	mov    0x4(%eax),%eax
 804d5fe:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804d601:	eb 68                	jmp    804d66b <translate_Structure+0x1d0>
 804d603:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d606:	8b 40 18             	mov    0x18(%eax),%eax
 804d609:	8b 40 04             	mov    0x4(%eax),%eax
 804d60c:	83 f8 16             	cmp    $0x16,%eax
 804d60f:	75 5a                	jne    804d66b <translate_Structure+0x1d0>
 804d611:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804d618:	e8 ac da ff ff       	call   804b0c9 <newTemp>
 804d61d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804d620:	83 ec 04             	sub    $0x4,%esp
 804d623:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 804d626:	50                   	push   %eax
 804d627:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d62a:	ff 75 cc             	pushl  -0x34(%ebp)
 804d62d:	e8 8d 01 00 00       	call   804d7bf <translate_Array>
 804d632:	83 c4 10             	add    $0x10,%esp
 804d635:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804d638:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d63b:	85 c0                	test   %eax,%eax
 804d63d:	74 0a                	je     804d649 <translate_Structure+0x1ae>
 804d63f:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d642:	8b 00                	mov    (%eax),%eax
 804d644:	83 f8 02             	cmp    $0x2,%eax
 804d647:	74 19                	je     804d662 <translate_Structure+0x1c7>
 804d649:	68 90 49 05 08       	push   $0x8054990
 804d64e:	68 57 03 00 00       	push   $0x357
 804d653:	68 ac 45 05 08       	push   $0x80545ac
 804d658:	68 04 48 05 08       	push   $0x8054804
 804d65d:	e8 5e b3 ff ff       	call   80489c0 <__assert_fail@plt>
 804d662:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d665:	8b 40 04             	mov    0x4(%eax),%eax
 804d668:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804d66b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804d66e:	8b 40 04             	mov    0x4(%eax),%eax
 804d671:	83 f8 03             	cmp    $0x3,%eax
 804d674:	74 19                	je     804d68f <translate_Structure+0x1f4>
 804d676:	68 90 49 05 08       	push   $0x8054990
 804d67b:	68 5b 03 00 00       	push   $0x35b
 804d680:	68 ac 45 05 08       	push   $0x80545ac
 804d685:	68 24 48 05 08       	push   $0x8054824
 804d68a:	e8 31 b3 ff ff       	call   80489c0 <__assert_fail@plt>
 804d68f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804d692:	8b 40 08             	mov    0x8(%eax),%eax
 804d695:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d698:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 804d69f:	eb 1e                	jmp    804d6bf <translate_Structure+0x224>
 804d6a1:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804d6a4:	8b 40 04             	mov    0x4(%eax),%eax
 804d6a7:	83 ec 0c             	sub    $0xc,%esp
 804d6aa:	50                   	push   %eax
 804d6ab:	e8 19 61 00 00       	call   80537c9 <typeSize>
 804d6b0:	83 c4 10             	add    $0x10,%esp
 804d6b3:	01 45 c8             	add    %eax,-0x38(%ebp)
 804d6b6:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804d6b9:	8b 40 08             	mov    0x8(%eax),%eax
 804d6bc:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804d6bf:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
 804d6c3:	74 18                	je     804d6dd <translate_Structure+0x242>
 804d6c5:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804d6c8:	8b 00                	mov    (%eax),%eax
 804d6ca:	83 ec 08             	sub    $0x8,%esp
 804d6cd:	ff 75 e0             	pushl  -0x20(%ebp)
 804d6d0:	50                   	push   %eax
 804d6d1:	e8 30 67 00 00       	call   8053e06 <safe_strcmp>
 804d6d6:	83 c4 10             	add    $0x10,%esp
 804d6d9:	85 c0                	test   %eax,%eax
 804d6db:	75 c4                	jne    804d6a1 <translate_Structure+0x206>
 804d6dd:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
 804d6e1:	75 19                	jne    804d6fc <translate_Structure+0x261>
 804d6e3:	68 90 49 05 08       	push   $0x8054990
 804d6e8:	68 63 03 00 00       	push   $0x363
 804d6ed:	68 ac 45 05 08       	push   $0x80545ac
 804d6f2:	68 39 48 05 08       	push   $0x8054839
 804d6f7:	e8 c4 b2 ff ff       	call   80489c0 <__assert_fail@plt>
 804d6fc:	83 7d 9c 00          	cmpl   $0x0,-0x64(%ebp)
 804d700:	74 0b                	je     804d70d <translate_Structure+0x272>
 804d702:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804d705:	8b 50 04             	mov    0x4(%eax),%edx
 804d708:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804d70b:	89 10                	mov    %edx,(%eax)
 804d70d:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d710:	83 ec 08             	sub    $0x8,%esp
 804d713:	50                   	push   %eax
 804d714:	6a 01                	push   $0x1
 804d716:	e8 9b e3 ff ff       	call   804bab6 <newOp>
 804d71b:	83 c4 10             	add    $0x10,%esp
 804d71e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d721:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804d724:	8b 40 04             	mov    0x4(%eax),%eax
 804d727:	8b 00                	mov    (%eax),%eax
 804d729:	85 c0                	test   %eax,%eax
 804d72b:	75 4c                	jne    804d779 <translate_Structure+0x2de>
 804d72d:	e8 97 d9 ff ff       	call   804b0c9 <newTemp>
 804d732:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d735:	ff 75 e4             	pushl  -0x1c(%ebp)
 804d738:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d73b:	ff 75 e8             	pushl  -0x18(%ebp)
 804d73e:	6a 02                	push   $0x2
 804d740:	e8 d7 e3 ff ff       	call   804bb1c <newIC>
 804d745:	83 c4 10             	add    $0x10,%esp
 804d748:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d74b:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804d74e:	c7 00 06 00 00 00    	movl   $0x6,(%eax)
 804d754:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804d757:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804d75a:	89 50 04             	mov    %edx,0x4(%eax)
 804d75d:	83 ec 08             	sub    $0x8,%esp
 804d760:	ff 75 ec             	pushl  -0x14(%ebp)
 804d763:	ff 75 bc             	pushl  -0x44(%ebp)
 804d766:	e8 a5 d8 ff ff       	call   804b010 <addTail>
 804d76b:	83 c4 10             	add    $0x10,%esp
 804d76e:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804d771:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804d774:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804d777:	eb 30                	jmp    804d7a9 <translate_Structure+0x30e>
 804d779:	ff 75 e4             	pushl  -0x1c(%ebp)
 804d77c:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d77f:	ff 75 a0             	pushl  -0x60(%ebp)
 804d782:	6a 02                	push   $0x2
 804d784:	e8 93 e3 ff ff       	call   804bb1c <newIC>
 804d789:	83 c4 10             	add    $0x10,%esp
 804d78c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d78f:	83 ec 08             	sub    $0x8,%esp
 804d792:	ff 75 f0             	pushl  -0x10(%ebp)
 804d795:	ff 75 bc             	pushl  -0x44(%ebp)
 804d798:	e8 73 d8 ff ff       	call   804b010 <addTail>
 804d79d:	83 c4 10             	add    $0x10,%esp
 804d7a0:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804d7a3:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804d7a6:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804d7a9:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d7ac:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804d7af:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804d7b6:	74 05                	je     804d7bd <translate_Structure+0x322>
 804d7b8:	e8 53 b0 ff ff       	call   8048810 <__stack_chk_fail@plt>
 804d7bd:	c9                   	leave  
 804d7be:	c3                   	ret    

0804d7bf <translate_Array>:
 804d7bf:	55                   	push   %ebp
 804d7c0:	89 e5                	mov    %esp,%ebp
 804d7c2:	83 ec 68             	sub    $0x68,%esp
 804d7c5:	8b 45 08             	mov    0x8(%ebp),%eax
 804d7c8:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804d7cb:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d7ce:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804d7d1:	8b 45 10             	mov    0x10(%ebp),%eax
 804d7d4:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804d7d7:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804d7dd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d7e0:	31 c0                	xor    %eax,%eax
 804d7e2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d7e5:	8b 40 14             	mov    0x14(%eax),%eax
 804d7e8:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804d7eb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d7ee:	8b 40 18             	mov    0x18(%eax),%eax
 804d7f1:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804d7f4:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d7f7:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d7fa:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804d7fd:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
 804d804:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804d80b:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804d812:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
 804d819:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804d81c:	8b 40 14             	mov    0x14(%eax),%eax
 804d81f:	8b 40 04             	mov    0x4(%eax),%eax
 804d822:	83 f8 03             	cmp    $0x3,%eax
 804d825:	0f 85 8f 00 00 00    	jne    804d8ba <translate_Array+0xfb>
 804d82b:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804d82e:	8b 40 14             	mov    0x14(%eax),%eax
 804d831:	8b 40 08             	mov    0x8(%eax),%eax
 804d834:	83 ec 0c             	sub    $0xc,%esp
 804d837:	50                   	push   %eax
 804d838:	e8 08 5d 00 00       	call   8053545 <searchTable>
 804d83d:	83 c4 10             	add    $0x10,%esp
 804d840:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804d843:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
 804d847:	74 16                	je     804d85f <translate_Array+0xa0>
 804d849:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d84c:	8b 00                	mov    (%eax),%eax
 804d84e:	85 c0                	test   %eax,%eax
 804d850:	75 0d                	jne    804d85f <translate_Array+0xa0>
 804d852:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d855:	8b 40 0c             	mov    0xc(%eax),%eax
 804d858:	8b 00                	mov    (%eax),%eax
 804d85a:	83 f8 01             	cmp    $0x1,%eax
 804d85d:	74 19                	je     804d878 <translate_Array+0xb9>
 804d85f:	68 a4 49 05 08       	push   $0x80549a4
 804d864:	68 8e 03 00 00       	push   $0x38e
 804d869:	68 ac 45 05 08       	push   $0x80545ac
 804d86e:	68 40 48 05 08       	push   $0x8054840
 804d873:	e8 48 b1 ff ff       	call   80489c0 <__assert_fail@plt>
 804d878:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d87b:	8b 40 0c             	mov    0xc(%eax),%eax
 804d87e:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804d881:	e8 43 d8 ff ff       	call   804b0c9 <newTemp>
 804d886:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804d889:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d88c:	8b 40 04             	mov    0x4(%eax),%eax
 804d88f:	83 ec 08             	sub    $0x8,%esp
 804d892:	50                   	push   %eax
 804d893:	6a 00                	push   $0x0
 804d895:	e8 1c e2 ff ff       	call   804bab6 <newOp>
 804d89a:	83 c4 10             	add    $0x10,%esp
 804d89d:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804d8a0:	6a 00                	push   $0x0
 804d8a2:	ff 75 cc             	pushl  -0x34(%ebp)
 804d8a5:	ff 75 b4             	pushl  -0x4c(%ebp)
 804d8a8:	6a 01                	push   $0x1
 804d8aa:	e8 6d e2 ff ff       	call   804bb1c <newIC>
 804d8af:	83 c4 10             	add    $0x10,%esp
 804d8b2:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d8b5:	e9 dc 00 00 00       	jmp    804d996 <translate_Array+0x1d7>
 804d8ba:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804d8bd:	8b 40 18             	mov    0x18(%eax),%eax
 804d8c0:	8b 40 04             	mov    0x4(%eax),%eax
 804d8c3:	83 f8 12             	cmp    $0x12,%eax
 804d8c6:	75 59                	jne    804d921 <translate_Array+0x162>
 804d8c8:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
 804d8cf:	e8 f5 d7 ff ff       	call   804b0c9 <newTemp>
 804d8d4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804d8d7:	83 ec 04             	sub    $0x4,%esp
 804d8da:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804d8dd:	50                   	push   %eax
 804d8de:	ff 75 b4             	pushl  -0x4c(%ebp)
 804d8e1:	ff 75 bc             	pushl  -0x44(%ebp)
 804d8e4:	e8 b2 fb ff ff       	call   804d49b <translate_Structure>
 804d8e9:	83 c4 10             	add    $0x10,%esp
 804d8ec:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d8ef:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804d8f2:	85 c0                	test   %eax,%eax
 804d8f4:	74 0a                	je     804d900 <translate_Array+0x141>
 804d8f6:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804d8f9:	8b 00                	mov    (%eax),%eax
 804d8fb:	83 f8 01             	cmp    $0x1,%eax
 804d8fe:	74 19                	je     804d919 <translate_Array+0x15a>
 804d900:	68 a4 49 05 08       	push   $0x80549a4
 804d905:	68 9b 03 00 00       	push   $0x39b
 804d90a:	68 ac 45 05 08       	push   $0x80545ac
 804d90f:	68 77 48 05 08       	push   $0x8054877
 804d914:	e8 a7 b0 ff ff       	call   80489c0 <__assert_fail@plt>
 804d919:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804d91c:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804d91f:	eb 75                	jmp    804d996 <translate_Array+0x1d7>
 804d921:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804d924:	8b 40 18             	mov    0x18(%eax),%eax
 804d927:	8b 40 04             	mov    0x4(%eax),%eax
 804d92a:	83 f8 16             	cmp    $0x16,%eax
 804d92d:	75 67                	jne    804d996 <translate_Array+0x1d7>
 804d92f:	83 ec 0c             	sub    $0xc,%esp
 804d932:	68 94 48 05 08       	push   $0x8054894
 804d937:	e8 84 ae ff ff       	call   80487c0 <printf@plt>
 804d93c:	83 c4 10             	add    $0x10,%esp
 804d93f:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
 804d946:	e8 7e d7 ff ff       	call   804b0c9 <newTemp>
 804d94b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804d94e:	83 ec 04             	sub    $0x4,%esp
 804d951:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804d954:	50                   	push   %eax
 804d955:	ff 75 b4             	pushl  -0x4c(%ebp)
 804d958:	ff 75 bc             	pushl  -0x44(%ebp)
 804d95b:	e8 5f fe ff ff       	call   804d7bf <translate_Array>
 804d960:	83 c4 10             	add    $0x10,%esp
 804d963:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d966:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804d969:	85 c0                	test   %eax,%eax
 804d96b:	74 0a                	je     804d977 <translate_Array+0x1b8>
 804d96d:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804d970:	8b 00                	mov    (%eax),%eax
 804d972:	83 f8 01             	cmp    $0x1,%eax
 804d975:	74 19                	je     804d990 <translate_Array+0x1d1>
 804d977:	68 a4 49 05 08       	push   $0x80549a4
 804d97c:	68 a8 03 00 00       	push   $0x3a8
 804d981:	68 ac 45 05 08       	push   $0x80545ac
 804d986:	68 77 48 05 08       	push   $0x8054877
 804d98b:	e8 30 b0 ff ff       	call   80489c0 <__assert_fail@plt>
 804d990:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804d993:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804d996:	83 7d 9c 00          	cmpl   $0x0,-0x64(%ebp)
 804d99a:	74 0b                	je     804d9a7 <translate_Array+0x1e8>
 804d99c:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d99f:	8b 50 04             	mov    0x4(%eax),%edx
 804d9a2:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804d9a5:	89 10                	mov    %edx,(%eax)
 804d9a7:	e8 1d d7 ff ff       	call   804b0c9 <newTemp>
 804d9ac:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d9af:	83 ec 08             	sub    $0x8,%esp
 804d9b2:	ff 75 d0             	pushl  -0x30(%ebp)
 804d9b5:	ff 75 c4             	pushl  -0x3c(%ebp)
 804d9b8:	e8 97 ed ff ff       	call   804c754 <translate_Exp>
 804d9bd:	83 c4 10             	add    $0x10,%esp
 804d9c0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804d9c3:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d9c6:	8b 40 04             	mov    0x4(%eax),%eax
 804d9c9:	83 ec 0c             	sub    $0xc,%esp
 804d9cc:	50                   	push   %eax
 804d9cd:	e8 f7 5d 00 00       	call   80537c9 <typeSize>
 804d9d2:	83 c4 10             	add    $0x10,%esp
 804d9d5:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804d9d8:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d9db:	83 ec 08             	sub    $0x8,%esp
 804d9de:	50                   	push   %eax
 804d9df:	6a 01                	push   $0x1
 804d9e1:	e8 d0 e0 ff ff       	call   804bab6 <newOp>
 804d9e6:	83 c4 10             	add    $0x10,%esp
 804d9e9:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804d9ec:	e8 d8 d6 ff ff       	call   804b0c9 <newTemp>
 804d9f1:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d9f4:	ff 75 d0             	pushl  -0x30(%ebp)
 804d9f7:	ff 75 dc             	pushl  -0x24(%ebp)
 804d9fa:	ff 75 e0             	pushl  -0x20(%ebp)
 804d9fd:	6a 04                	push   $0x4
 804d9ff:	e8 18 e1 ff ff       	call   804bb1c <newIC>
 804da04:	83 c4 10             	add    $0x10,%esp
 804da07:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804da0a:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804da0d:	8b 40 04             	mov    0x4(%eax),%eax
 804da10:	8b 00                	mov    (%eax),%eax
 804da12:	85 c0                	test   %eax,%eax
 804da14:	75 74                	jne    804da8a <translate_Array+0x2cb>
 804da16:	e8 ae d6 ff ff       	call   804b0c9 <newTemp>
 804da1b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804da1e:	ff 75 e0             	pushl  -0x20(%ebp)
 804da21:	ff 75 b4             	pushl  -0x4c(%ebp)
 804da24:	ff 75 e8             	pushl  -0x18(%ebp)
 804da27:	6a 02                	push   $0x2
 804da29:	e8 ee e0 ff ff       	call   804bb1c <newIC>
 804da2e:	83 c4 10             	add    $0x10,%esp
 804da31:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804da34:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804da37:	c7 00 06 00 00 00    	movl   $0x6,(%eax)
 804da3d:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804da40:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804da43:	89 50 04             	mov    %edx,0x4(%eax)
 804da46:	83 ec 08             	sub    $0x8,%esp
 804da49:	ff 75 ec             	pushl  -0x14(%ebp)
 804da4c:	ff 75 e4             	pushl  -0x1c(%ebp)
 804da4f:	e8 bc d5 ff ff       	call   804b010 <addTail>
 804da54:	83 c4 10             	add    $0x10,%esp
 804da57:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804da5a:	83 ec 08             	sub    $0x8,%esp
 804da5d:	ff 75 e4             	pushl  -0x1c(%ebp)
 804da60:	ff 75 d4             	pushl  -0x2c(%ebp)
 804da63:	e8 a8 d5 ff ff       	call   804b010 <addTail>
 804da68:	83 c4 10             	add    $0x10,%esp
 804da6b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804da6e:	83 ec 08             	sub    $0x8,%esp
 804da71:	ff 75 d4             	pushl  -0x2c(%ebp)
 804da74:	ff 75 b0             	pushl  -0x50(%ebp)
 804da77:	e8 94 d5 ff ff       	call   804b010 <addTail>
 804da7c:	83 c4 10             	add    $0x10,%esp
 804da7f:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804da82:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804da85:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804da88:	eb 58                	jmp    804dae2 <translate_Array+0x323>
 804da8a:	ff 75 e0             	pushl  -0x20(%ebp)
 804da8d:	ff 75 b4             	pushl  -0x4c(%ebp)
 804da90:	ff 75 a0             	pushl  -0x60(%ebp)
 804da93:	6a 02                	push   $0x2
 804da95:	e8 82 e0 ff ff       	call   804bb1c <newIC>
 804da9a:	83 c4 10             	add    $0x10,%esp
 804da9d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804daa0:	83 ec 08             	sub    $0x8,%esp
 804daa3:	ff 75 f0             	pushl  -0x10(%ebp)
 804daa6:	ff 75 e4             	pushl  -0x1c(%ebp)
 804daa9:	e8 62 d5 ff ff       	call   804b010 <addTail>
 804daae:	83 c4 10             	add    $0x10,%esp
 804dab1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804dab4:	83 ec 08             	sub    $0x8,%esp
 804dab7:	ff 75 e4             	pushl  -0x1c(%ebp)
 804daba:	ff 75 d4             	pushl  -0x2c(%ebp)
 804dabd:	e8 4e d5 ff ff       	call   804b010 <addTail>
 804dac2:	83 c4 10             	add    $0x10,%esp
 804dac5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804dac8:	83 ec 08             	sub    $0x8,%esp
 804dacb:	ff 75 d4             	pushl  -0x2c(%ebp)
 804dace:	ff 75 b0             	pushl  -0x50(%ebp)
 804dad1:	e8 3a d5 ff ff       	call   804b010 <addTail>
 804dad6:	83 c4 10             	add    $0x10,%esp
 804dad9:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804dadc:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804dadf:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804dae2:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804dae5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804dae8:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804daef:	74 05                	je     804daf6 <translate_Array+0x337>
 804daf1:	e8 1a ad ff ff       	call   8048810 <__stack_chk_fail@plt>
 804daf6:	c9                   	leave  
 804daf7:	c3                   	ret    

0804daf8 <translate_Args>:
 804daf8:	55                   	push   %ebp
 804daf9:	89 e5                	mov    %esp,%ebp
 804dafb:	83 ec 18             	sub    $0x18,%esp
 804dafe:	e8 c6 d5 ff ff       	call   804b0c9 <newTemp>
 804db03:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804db06:	8b 45 08             	mov    0x8(%ebp),%eax
 804db09:	8b 40 14             	mov    0x14(%eax),%eax
 804db0c:	83 ec 08             	sub    $0x8,%esp
 804db0f:	ff 75 ec             	pushl  -0x14(%ebp)
 804db12:	50                   	push   %eax
 804db13:	e8 3c ec ff ff       	call   804c754 <translate_Exp>
 804db18:	83 c4 10             	add    $0x10,%esp
 804db1b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804db1e:	83 ec 0c             	sub    $0xc,%esp
 804db21:	6a 08                	push   $0x8
 804db23:	e8 58 ad ff ff       	call   8048880 <malloc@plt>
 804db28:	83 c4 10             	add    $0x10,%esp
 804db2b:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804db2e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804db31:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804db34:	89 10                	mov    %edx,(%eax)
 804db36:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804db39:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804db40:	8b 45 0c             	mov    0xc(%ebp),%eax
 804db43:	8b 00                	mov    (%eax),%eax
 804db45:	85 c0                	test   %eax,%eax
 804db47:	75 0a                	jne    804db53 <translate_Args+0x5b>
 804db49:	8b 45 0c             	mov    0xc(%ebp),%eax
 804db4c:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804db4f:	89 10                	mov    %edx,(%eax)
 804db51:	eb 13                	jmp    804db66 <translate_Args+0x6e>
 804db53:	8b 45 0c             	mov    0xc(%ebp),%eax
 804db56:	8b 10                	mov    (%eax),%edx
 804db58:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804db5b:	89 50 04             	mov    %edx,0x4(%eax)
 804db5e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804db61:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804db64:	89 10                	mov    %edx,(%eax)
 804db66:	8b 45 08             	mov    0x8(%ebp),%eax
 804db69:	8b 40 10             	mov    0x10(%eax),%eax
 804db6c:	83 f8 03             	cmp    $0x3,%eax
 804db6f:	75 2c                	jne    804db9d <translate_Args+0xa5>
 804db71:	8b 45 08             	mov    0x8(%ebp),%eax
 804db74:	8b 40 1c             	mov    0x1c(%eax),%eax
 804db77:	83 ec 08             	sub    $0x8,%esp
 804db7a:	ff 75 0c             	pushl  0xc(%ebp)
 804db7d:	50                   	push   %eax
 804db7e:	e8 75 ff ff ff       	call   804daf8 <translate_Args>
 804db83:	83 c4 10             	add    $0x10,%esp
 804db86:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804db89:	83 ec 08             	sub    $0x8,%esp
 804db8c:	ff 75 f4             	pushl  -0xc(%ebp)
 804db8f:	ff 75 e8             	pushl  -0x18(%ebp)
 804db92:	e8 79 d4 ff ff       	call   804b010 <addTail>
 804db97:	83 c4 10             	add    $0x10,%esp
 804db9a:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804db9d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804dba0:	c9                   	leave  
 804dba1:	c3                   	ret    

0804dba2 <translate_Cond>:
 804dba2:	55                   	push   %ebp
 804dba3:	89 e5                	mov    %esp,%ebp
 804dba5:	83 ec 68             	sub    $0x68,%esp
 804dba8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804dbac:	74 0b                	je     804dbb9 <translate_Cond+0x17>
 804dbae:	8b 45 08             	mov    0x8(%ebp),%eax
 804dbb1:	8b 40 04             	mov    0x4(%eax),%eax
 804dbb4:	83 f8 32             	cmp    $0x32,%eax
 804dbb7:	74 19                	je     804dbd2 <translate_Cond+0x30>
 804dbb9:	68 b4 49 05 08       	push   $0x80549b4
 804dbbe:	68 ee 03 00 00       	push   $0x3ee
 804dbc3:	68 ac 45 05 08       	push   $0x80545ac
 804dbc8:	68 fa 48 05 08       	push   $0x80548fa
 804dbcd:	e8 ee ad ff ff       	call   80489c0 <__assert_fail@plt>
 804dbd2:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
 804dbd9:	8b 45 08             	mov    0x8(%ebp),%eax
 804dbdc:	8b 40 14             	mov    0x14(%eax),%eax
 804dbdf:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804dbe2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804dbe5:	8b 40 04             	mov    0x4(%eax),%eax
 804dbe8:	83 f8 32             	cmp    $0x32,%eax
 804dbeb:	0f 85 d9 00 00 00    	jne    804dcca <translate_Cond+0x128>
 804dbf1:	8b 45 08             	mov    0x8(%ebp),%eax
 804dbf4:	8b 40 18             	mov    0x18(%eax),%eax
 804dbf7:	8b 40 04             	mov    0x4(%eax),%eax
 804dbfa:	83 f8 0b             	cmp    $0xb,%eax
 804dbfd:	0f 85 c7 00 00 00    	jne    804dcca <translate_Cond+0x128>
 804dc03:	e8 c1 d4 ff ff       	call   804b0c9 <newTemp>
 804dc08:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804dc0b:	e8 b9 d4 ff ff       	call   804b0c9 <newTemp>
 804dc10:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804dc13:	8b 45 08             	mov    0x8(%ebp),%eax
 804dc16:	8b 40 14             	mov    0x14(%eax),%eax
 804dc19:	83 ec 08             	sub    $0x8,%esp
 804dc1c:	ff 75 a8             	pushl  -0x58(%ebp)
 804dc1f:	50                   	push   %eax
 804dc20:	e8 2f eb ff ff       	call   804c754 <translate_Exp>
 804dc25:	83 c4 10             	add    $0x10,%esp
 804dc28:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804dc2b:	8b 45 08             	mov    0x8(%ebp),%eax
 804dc2e:	8b 40 1c             	mov    0x1c(%eax),%eax
 804dc31:	83 ec 08             	sub    $0x8,%esp
 804dc34:	ff 75 ac             	pushl  -0x54(%ebp)
 804dc37:	50                   	push   %eax
 804dc38:	e8 17 eb ff ff       	call   804c754 <translate_Exp>
 804dc3d:	83 c4 10             	add    $0x10,%esp
 804dc40:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804dc43:	8b 45 08             	mov    0x8(%ebp),%eax
 804dc46:	8b 40 18             	mov    0x18(%eax),%eax
 804dc49:	83 ec 0c             	sub    $0xc,%esp
 804dc4c:	50                   	push   %eax
 804dc4d:	e8 1a df ff ff       	call   804bb6c <getRelop>
 804dc52:	83 c4 10             	add    $0x10,%esp
 804dc55:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804dc58:	ff 75 ac             	pushl  -0x54(%ebp)
 804dc5b:	ff 75 a8             	pushl  -0x58(%ebp)
 804dc5e:	ff 75 0c             	pushl  0xc(%ebp)
 804dc61:	ff 75 b8             	pushl  -0x48(%ebp)
 804dc64:	e8 b3 de ff ff       	call   804bb1c <newIC>
 804dc69:	83 c4 10             	add    $0x10,%esp
 804dc6c:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804dc6f:	6a 00                	push   $0x0
 804dc71:	ff 75 10             	pushl  0x10(%ebp)
 804dc74:	6a 00                	push   $0x0
 804dc76:	6a 0b                	push   $0xb
 804dc78:	e8 9f de ff ff       	call   804bb1c <newIC>
 804dc7d:	83 c4 10             	add    $0x10,%esp
 804dc80:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804dc83:	83 ec 08             	sub    $0x8,%esp
 804dc86:	ff 75 c0             	pushl  -0x40(%ebp)
 804dc89:	ff 75 bc             	pushl  -0x44(%ebp)
 804dc8c:	e8 7f d3 ff ff       	call   804b010 <addTail>
 804dc91:	83 c4 10             	add    $0x10,%esp
 804dc94:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804dc97:	83 ec 08             	sub    $0x8,%esp
 804dc9a:	ff 75 bc             	pushl  -0x44(%ebp)
 804dc9d:	ff 75 b4             	pushl  -0x4c(%ebp)
 804dca0:	e8 6b d3 ff ff       	call   804b010 <addTail>
 804dca5:	83 c4 10             	add    $0x10,%esp
 804dca8:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804dcab:	83 ec 08             	sub    $0x8,%esp
 804dcae:	ff 75 b4             	pushl  -0x4c(%ebp)
 804dcb1:	ff 75 b0             	pushl  -0x50(%ebp)
 804dcb4:	e8 57 d3 ff ff       	call   804b010 <addTail>
 804dcb9:	83 c4 10             	add    $0x10,%esp
 804dcbc:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804dcbf:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804dcc2:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804dcc5:	e9 f9 01 00 00       	jmp    804dec3 <translate_Cond+0x321>
 804dcca:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804dccd:	8b 40 04             	mov    0x4(%eax),%eax
 804dcd0:	83 f8 32             	cmp    $0x32,%eax
 804dcd3:	0f 85 97 00 00 00    	jne    804dd70 <translate_Cond+0x1ce>
 804dcd9:	8b 45 08             	mov    0x8(%ebp),%eax
 804dcdc:	8b 40 18             	mov    0x18(%eax),%eax
 804dcdf:	8b 40 04             	mov    0x4(%eax),%eax
 804dce2:	83 f8 10             	cmp    $0x10,%eax
 804dce5:	0f 85 85 00 00 00    	jne    804dd70 <translate_Cond+0x1ce>
 804dceb:	e8 09 d4 ff ff       	call   804b0f9 <newLabel>
 804dcf0:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804dcf3:	8b 45 08             	mov    0x8(%ebp),%eax
 804dcf6:	8b 40 14             	mov    0x14(%eax),%eax
 804dcf9:	83 ec 04             	sub    $0x4,%esp
 804dcfc:	ff 75 10             	pushl  0x10(%ebp)
 804dcff:	ff 75 c4             	pushl  -0x3c(%ebp)
 804dd02:	50                   	push   %eax
 804dd03:	e8 9a fe ff ff       	call   804dba2 <translate_Cond>
 804dd08:	83 c4 10             	add    $0x10,%esp
 804dd0b:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804dd0e:	8b 45 08             	mov    0x8(%ebp),%eax
 804dd11:	8b 40 1c             	mov    0x1c(%eax),%eax
 804dd14:	83 ec 04             	sub    $0x4,%esp
 804dd17:	ff 75 10             	pushl  0x10(%ebp)
 804dd1a:	ff 75 0c             	pushl  0xc(%ebp)
 804dd1d:	50                   	push   %eax
 804dd1e:	e8 7f fe ff ff       	call   804dba2 <translate_Cond>
 804dd23:	83 c4 10             	add    $0x10,%esp
 804dd26:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804dd29:	6a 00                	push   $0x0
 804dd2b:	ff 75 c4             	pushl  -0x3c(%ebp)
 804dd2e:	6a 00                	push   $0x0
 804dd30:	6a 09                	push   $0x9
 804dd32:	e8 e5 dd ff ff       	call   804bb1c <newIC>
 804dd37:	83 c4 10             	add    $0x10,%esp
 804dd3a:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804dd3d:	83 ec 08             	sub    $0x8,%esp
 804dd40:	ff 75 cc             	pushl  -0x34(%ebp)
 804dd43:	ff 75 d0             	pushl  -0x30(%ebp)
 804dd46:	e8 c5 d2 ff ff       	call   804b010 <addTail>
 804dd4b:	83 c4 10             	add    $0x10,%esp
 804dd4e:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804dd51:	83 ec 08             	sub    $0x8,%esp
 804dd54:	ff 75 d0             	pushl  -0x30(%ebp)
 804dd57:	ff 75 c8             	pushl  -0x38(%ebp)
 804dd5a:	e8 b1 d2 ff ff       	call   804b010 <addTail>
 804dd5f:	83 c4 10             	add    $0x10,%esp
 804dd62:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804dd65:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804dd68:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804dd6b:	e9 53 01 00 00       	jmp    804dec3 <translate_Cond+0x321>
 804dd70:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804dd73:	8b 40 04             	mov    0x4(%eax),%eax
 804dd76:	83 f8 32             	cmp    $0x32,%eax
 804dd79:	0f 85 97 00 00 00    	jne    804de16 <translate_Cond+0x274>
 804dd7f:	8b 45 08             	mov    0x8(%ebp),%eax
 804dd82:	8b 40 18             	mov    0x18(%eax),%eax
 804dd85:	8b 40 04             	mov    0x4(%eax),%eax
 804dd88:	83 f8 10             	cmp    $0x10,%eax
 804dd8b:	0f 85 85 00 00 00    	jne    804de16 <translate_Cond+0x274>
 804dd91:	e8 63 d3 ff ff       	call   804b0f9 <newLabel>
 804dd96:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804dd99:	8b 45 08             	mov    0x8(%ebp),%eax
 804dd9c:	8b 40 14             	mov    0x14(%eax),%eax
 804dd9f:	83 ec 04             	sub    $0x4,%esp
 804dda2:	ff 75 d4             	pushl  -0x2c(%ebp)
 804dda5:	ff 75 0c             	pushl  0xc(%ebp)
 804dda8:	50                   	push   %eax
 804dda9:	e8 f4 fd ff ff       	call   804dba2 <translate_Cond>
 804ddae:	83 c4 10             	add    $0x10,%esp
 804ddb1:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804ddb4:	8b 45 08             	mov    0x8(%ebp),%eax
 804ddb7:	8b 40 1c             	mov    0x1c(%eax),%eax
 804ddba:	83 ec 04             	sub    $0x4,%esp
 804ddbd:	ff 75 10             	pushl  0x10(%ebp)
 804ddc0:	ff 75 0c             	pushl  0xc(%ebp)
 804ddc3:	50                   	push   %eax
 804ddc4:	e8 d9 fd ff ff       	call   804dba2 <translate_Cond>
 804ddc9:	83 c4 10             	add    $0x10,%esp
 804ddcc:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804ddcf:	6a 00                	push   $0x0
 804ddd1:	ff 75 d4             	pushl  -0x2c(%ebp)
 804ddd4:	6a 00                	push   $0x0
 804ddd6:	6a 09                	push   $0x9
 804ddd8:	e8 3f dd ff ff       	call   804bb1c <newIC>
 804dddd:	83 c4 10             	add    $0x10,%esp
 804dde0:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804dde3:	83 ec 08             	sub    $0x8,%esp
 804dde6:	ff 75 dc             	pushl  -0x24(%ebp)
 804dde9:	ff 75 e0             	pushl  -0x20(%ebp)
 804ddec:	e8 1f d2 ff ff       	call   804b010 <addTail>
 804ddf1:	83 c4 10             	add    $0x10,%esp
 804ddf4:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804ddf7:	83 ec 08             	sub    $0x8,%esp
 804ddfa:	ff 75 e0             	pushl  -0x20(%ebp)
 804ddfd:	ff 75 d8             	pushl  -0x28(%ebp)
 804de00:	e8 0b d2 ff ff       	call   804b010 <addTail>
 804de05:	83 c4 10             	add    $0x10,%esp
 804de08:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804de0b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804de0e:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804de11:	e9 ad 00 00 00       	jmp    804dec3 <translate_Cond+0x321>
 804de16:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804de19:	8b 40 04             	mov    0x4(%eax),%eax
 804de1c:	83 f8 13             	cmp    $0x13,%eax
 804de1f:	75 1c                	jne    804de3d <translate_Cond+0x29b>
 804de21:	83 ec 04             	sub    $0x4,%esp
 804de24:	ff 75 0c             	pushl  0xc(%ebp)
 804de27:	ff 75 10             	pushl  0x10(%ebp)
 804de2a:	ff 75 08             	pushl  0x8(%ebp)
 804de2d:	e8 70 fd ff ff       	call   804dba2 <translate_Cond>
 804de32:	83 c4 10             	add    $0x10,%esp
 804de35:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804de38:	e9 86 00 00 00       	jmp    804dec3 <translate_Cond+0x321>
 804de3d:	e8 87 d2 ff ff       	call   804b0c9 <newTemp>
 804de42:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804de45:	83 ec 08             	sub    $0x8,%esp
 804de48:	ff 75 e4             	pushl  -0x1c(%ebp)
 804de4b:	ff 75 08             	pushl  0x8(%ebp)
 804de4e:	e8 01 e9 ff ff       	call   804c754 <translate_Exp>
 804de53:	83 c4 10             	add    $0x10,%esp
 804de56:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804de59:	83 ec 08             	sub    $0x8,%esp
 804de5c:	6a 00                	push   $0x0
 804de5e:	6a 01                	push   $0x1
 804de60:	e8 51 dc ff ff       	call   804bab6 <newOp>
 804de65:	83 c4 10             	add    $0x10,%esp
 804de68:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804de6b:	ff 75 ec             	pushl  -0x14(%ebp)
 804de6e:	ff 75 e4             	pushl  -0x1c(%ebp)
 804de71:	ff 75 0c             	pushl  0xc(%ebp)
 804de74:	6a 13                	push   $0x13
 804de76:	e8 a1 dc ff ff       	call   804bb1c <newIC>
 804de7b:	83 c4 10             	add    $0x10,%esp
 804de7e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804de81:	6a 00                	push   $0x0
 804de83:	ff 75 10             	pushl  0x10(%ebp)
 804de86:	6a 00                	push   $0x0
 804de88:	6a 0b                	push   $0xb
 804de8a:	e8 8d dc ff ff       	call   804bb1c <newIC>
 804de8f:	83 c4 10             	add    $0x10,%esp
 804de92:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804de95:	83 ec 08             	sub    $0x8,%esp
 804de98:	ff 75 f4             	pushl  -0xc(%ebp)
 804de9b:	ff 75 f0             	pushl  -0x10(%ebp)
 804de9e:	e8 6d d1 ff ff       	call   804b010 <addTail>
 804dea3:	83 c4 10             	add    $0x10,%esp
 804dea6:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804dea9:	83 ec 08             	sub    $0x8,%esp
 804deac:	ff 75 f0             	pushl  -0x10(%ebp)
 804deaf:	ff 75 e8             	pushl  -0x18(%ebp)
 804deb2:	e8 59 d1 ff ff       	call   804b010 <addTail>
 804deb7:	83 c4 10             	add    $0x10,%esp
 804deba:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804debd:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804dec0:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804dec3:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804dec6:	c9                   	leave  
 804dec7:	c3                   	ret    

0804dec8 <yydestruct>:
 804dec8:	55                   	push   %ebp
 804dec9:	89 e5                	mov    %esp,%ebp
 804decb:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804decf:	75 07                	jne    804ded8 <yydestruct+0x10>
 804ded1:	c7 45 08 45 50 05 08 	movl   $0x8055045,0x8(%ebp)
 804ded8:	90                   	nop
 804ded9:	5d                   	pop    %ebp
 804deda:	c3                   	ret    

0804dedb <yyparse>:
 804dedb:	55                   	push   %ebp
 804dedc:	89 e5                	mov    %esp,%ebp
 804dede:	81 ec d8 11 00 00    	sub    $0x11d8,%esp
 804dee4:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804deea:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804deed:	31 c0                	xor    %eax,%eax
 804deef:	c7 85 64 ee ff ff 00 	movl   $0x0,-0x119c(%ebp)
 804def6:	00 00 00 
 804def9:	c7 85 68 ee ff ff 00 	movl   $0x0,-0x1198(%ebp)
 804df00:	00 00 00 
 804df03:	8d 85 c4 ee ff ff    	lea    -0x113c(%ebp),%eax
 804df09:	89 85 40 ee ff ff    	mov    %eax,-0x11c0(%ebp)
 804df0f:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804df15:	89 85 44 ee ff ff    	mov    %eax,-0x11bc(%ebp)
 804df1b:	8d 85 54 f0 ff ff    	lea    -0xfac(%ebp),%eax
 804df21:	89 85 48 ee ff ff    	mov    %eax,-0x11b8(%ebp)
 804df27:	8b 85 48 ee ff ff    	mov    -0x11b8(%ebp),%eax
 804df2d:	89 85 4c ee ff ff    	mov    %eax,-0x11b4(%ebp)
 804df33:	8d 85 74 f3 ff ff    	lea    -0xc8c(%ebp),%eax
 804df39:	89 85 50 ee ff ff    	mov    %eax,-0x11b0(%ebp)
 804df3f:	8b 85 50 ee ff ff    	mov    -0x11b0(%ebp),%eax
 804df45:	89 85 54 ee ff ff    	mov    %eax,-0x11ac(%ebp)
 804df4b:	c7 85 58 ee ff ff c8 	movl   $0xc8,-0x11a8(%ebp)
 804df52:	00 00 00 
 804df55:	c7 85 38 ee ff ff 00 	movl   $0x0,-0x11c8(%ebp)
 804df5c:	00 00 00 
 804df5f:	c7 85 3c ee ff ff 00 	movl   $0x0,-0x11c4(%ebp)
 804df66:	00 00 00 
 804df69:	c7 05 60 95 05 08 00 	movl   $0x0,0x8059560
 804df70:	00 00 00 
 804df73:	c7 05 68 95 05 08 fe 	movl   $0xfffffffe,0x8059568
 804df7a:	ff ff ff 
 804df7d:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804df83:	8b 15 ac 90 05 08    	mov    0x80590ac,%edx
 804df89:	89 10                	mov    %edx,(%eax)
 804df8b:	8b 15 b0 90 05 08    	mov    0x80590b0,%edx
 804df91:	89 50 04             	mov    %edx,0x4(%eax)
 804df94:	8b 15 b4 90 05 08    	mov    0x80590b4,%edx
 804df9a:	89 50 08             	mov    %edx,0x8(%eax)
 804df9d:	8b 15 b8 90 05 08    	mov    0x80590b8,%edx
 804dfa3:	89 50 0c             	mov    %edx,0xc(%eax)
 804dfa6:	eb 07                	jmp    804dfaf <yyparse+0xd4>
 804dfa8:	83 85 44 ee ff ff 02 	addl   $0x2,-0x11bc(%ebp)
 804dfaf:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804dfb5:	89 c2                	mov    %eax,%edx
 804dfb7:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 804dfbd:	66 89 10             	mov    %dx,(%eax)
 804dfc0:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804dfc6:	05 ff ff ff 7f       	add    $0x7fffffff,%eax
 804dfcb:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804dfce:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804dfd4:	01 d0                	add    %edx,%eax
 804dfd6:	3b 85 44 ee ff ff    	cmp    -0x11bc(%ebp),%eax
 804dfdc:	0f 87 17 02 00 00    	ja     804e1f9 <yyparse+0x31e>
 804dfe2:	8b 95 44 ee ff ff    	mov    -0x11bc(%ebp),%edx
 804dfe8:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804dfee:	29 c2                	sub    %eax,%edx
 804dff0:	89 d0                	mov    %edx,%eax
 804dff2:	d1 f8                	sar    %eax
 804dff4:	83 c0 01             	add    $0x1,%eax
 804dff7:	89 85 6c ee ff ff    	mov    %eax,-0x1194(%ebp)
 804dffd:	81 bd 58 ee ff ff 0f 	cmpl   $0x270f,-0x11a8(%ebp)
 804e004:	27 00 00 
 804e007:	0f 87 28 25 00 00    	ja     8050535 <yyparse+0x265a>
 804e00d:	d1 a5 58 ee ff ff    	shll   -0x11a8(%ebp)
 804e013:	81 bd 58 ee ff ff 10 	cmpl   $0x2710,-0x11a8(%ebp)
 804e01a:	27 00 00 
 804e01d:	76 0a                	jbe    804e029 <yyparse+0x14e>
 804e01f:	c7 85 58 ee ff ff 10 	movl   $0x2710,-0x11a8(%ebp)
 804e026:	27 00 00 
 804e029:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804e02f:	89 85 70 ee ff ff    	mov    %eax,-0x1190(%ebp)
 804e035:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804e03b:	6b c0 16             	imul   $0x16,%eax,%eax
 804e03e:	83 c0 1e             	add    $0x1e,%eax
 804e041:	83 ec 0c             	sub    $0xc,%esp
 804e044:	50                   	push   %eax
 804e045:	e8 36 a8 ff ff       	call   8048880 <malloc@plt>
 804e04a:	83 c4 10             	add    $0x10,%esp
 804e04d:	89 85 74 ee ff ff    	mov    %eax,-0x118c(%ebp)
 804e053:	83 bd 74 ee ff ff 00 	cmpl   $0x0,-0x118c(%ebp)
 804e05a:	0f 84 d8 24 00 00    	je     8050538 <yyparse+0x265d>
 804e060:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804e066:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 804e069:	8b 95 74 ee ff ff    	mov    -0x118c(%ebp),%edx
 804e06f:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804e075:	83 ec 04             	sub    $0x4,%esp
 804e078:	51                   	push   %ecx
 804e079:	50                   	push   %eax
 804e07a:	52                   	push   %edx
 804e07b:	e8 60 a7 ff ff       	call   80487e0 <memcpy@plt>
 804e080:	83 c4 10             	add    $0x10,%esp
 804e083:	8b 85 74 ee ff ff    	mov    -0x118c(%ebp),%eax
 804e089:	89 85 40 ee ff ff    	mov    %eax,-0x11c0(%ebp)
 804e08f:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804e095:	01 c0                	add    %eax,%eax
 804e097:	83 c0 0f             	add    $0xf,%eax
 804e09a:	89 85 78 ee ff ff    	mov    %eax,-0x1188(%ebp)
 804e0a0:	8b 85 78 ee ff ff    	mov    -0x1188(%ebp),%eax
 804e0a6:	c1 e8 04             	shr    $0x4,%eax
 804e0a9:	c1 e0 04             	shl    $0x4,%eax
 804e0ac:	01 85 74 ee ff ff    	add    %eax,-0x118c(%ebp)
 804e0b2:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804e0b8:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804e0bf:	8b 95 74 ee ff ff    	mov    -0x118c(%ebp),%edx
 804e0c5:	8b 85 48 ee ff ff    	mov    -0x11b8(%ebp),%eax
 804e0cb:	83 ec 04             	sub    $0x4,%esp
 804e0ce:	51                   	push   %ecx
 804e0cf:	50                   	push   %eax
 804e0d0:	52                   	push   %edx
 804e0d1:	e8 0a a7 ff ff       	call   80487e0 <memcpy@plt>
 804e0d6:	83 c4 10             	add    $0x10,%esp
 804e0d9:	8b 85 74 ee ff ff    	mov    -0x118c(%ebp),%eax
 804e0df:	89 85 48 ee ff ff    	mov    %eax,-0x11b8(%ebp)
 804e0e5:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804e0eb:	c1 e0 02             	shl    $0x2,%eax
 804e0ee:	83 c0 0f             	add    $0xf,%eax
 804e0f1:	89 85 7c ee ff ff    	mov    %eax,-0x1184(%ebp)
 804e0f7:	8b 85 7c ee ff ff    	mov    -0x1184(%ebp),%eax
 804e0fd:	c1 e8 04             	shr    $0x4,%eax
 804e100:	c1 e0 04             	shl    $0x4,%eax
 804e103:	01 85 74 ee ff ff    	add    %eax,-0x118c(%ebp)
 804e109:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804e10f:	c1 e0 04             	shl    $0x4,%eax
 804e112:	89 c1                	mov    %eax,%ecx
 804e114:	8b 95 74 ee ff ff    	mov    -0x118c(%ebp),%edx
 804e11a:	8b 85 50 ee ff ff    	mov    -0x11b0(%ebp),%eax
 804e120:	83 ec 04             	sub    $0x4,%esp
 804e123:	51                   	push   %ecx
 804e124:	50                   	push   %eax
 804e125:	52                   	push   %edx
 804e126:	e8 b5 a6 ff ff       	call   80487e0 <memcpy@plt>
 804e12b:	83 c4 10             	add    $0x10,%esp
 804e12e:	8b 85 74 ee ff ff    	mov    -0x118c(%ebp),%eax
 804e134:	89 85 50 ee ff ff    	mov    %eax,-0x11b0(%ebp)
 804e13a:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804e140:	c1 e0 04             	shl    $0x4,%eax
 804e143:	83 c0 0f             	add    $0xf,%eax
 804e146:	89 85 80 ee ff ff    	mov    %eax,-0x1180(%ebp)
 804e14c:	8b 85 80 ee ff ff    	mov    -0x1180(%ebp),%eax
 804e152:	c1 e8 04             	shr    $0x4,%eax
 804e155:	c1 e0 04             	shl    $0x4,%eax
 804e158:	01 85 74 ee ff ff    	add    %eax,-0x118c(%ebp)
 804e15e:	8d 85 c4 ee ff ff    	lea    -0x113c(%ebp),%eax
 804e164:	39 85 70 ee ff ff    	cmp    %eax,-0x1190(%ebp)
 804e16a:	74 11                	je     804e17d <yyparse+0x2a2>
 804e16c:	83 ec 0c             	sub    $0xc,%esp
 804e16f:	ff b5 70 ee ff ff    	pushl  -0x1190(%ebp)
 804e175:	e8 56 a6 ff ff       	call   80487d0 <free@plt>
 804e17a:	83 c4 10             	add    $0x10,%esp
 804e17d:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804e183:	05 ff ff ff 7f       	add    $0x7fffffff,%eax
 804e188:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804e18b:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804e191:	01 d0                	add    %edx,%eax
 804e193:	89 85 44 ee ff ff    	mov    %eax,-0x11bc(%ebp)
 804e199:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804e19f:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
 804e1a4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804e1ab:	8b 85 48 ee ff ff    	mov    -0x11b8(%ebp),%eax
 804e1b1:	01 d0                	add    %edx,%eax
 804e1b3:	89 85 4c ee ff ff    	mov    %eax,-0x11b4(%ebp)
 804e1b9:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804e1bf:	05 ff ff ff 0f       	add    $0xfffffff,%eax
 804e1c4:	c1 e0 04             	shl    $0x4,%eax
 804e1c7:	89 c2                	mov    %eax,%edx
 804e1c9:	8b 85 50 ee ff ff    	mov    -0x11b0(%ebp),%eax
 804e1cf:	01 d0                	add    %edx,%eax
 804e1d1:	89 85 54 ee ff ff    	mov    %eax,-0x11ac(%ebp)
 804e1d7:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804e1dd:	05 ff ff ff 7f       	add    $0x7fffffff,%eax
 804e1e2:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804e1e5:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804e1eb:	01 d0                	add    %edx,%eax
 804e1ed:	3b 85 44 ee ff ff    	cmp    -0x11bc(%ebp),%eax
 804e1f3:	0f 86 2c 23 00 00    	jbe    8050525 <yyparse+0x264a>
 804e1f9:	83 bd 38 ee ff ff 0d 	cmpl   $0xd,-0x11c8(%ebp)
 804e200:	0f 84 12 23 00 00    	je     8050518 <yyparse+0x263d>
 804e206:	90                   	nop
 804e207:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804e20d:	0f b7 84 00 00 4b 05 	movzwl 0x8054b00(%eax,%eax,1),%eax
 804e214:	08 
 804e215:	98                   	cwtl   
 804e216:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804e21c:	83 bd 5c ee ff ff c5 	cmpl   $0xffffffc5,-0x11a4(%ebp)
 804e223:	0f 84 3d 01 00 00    	je     804e366 <yyparse+0x48b>
 804e229:	a1 68 95 05 08       	mov    0x8059568,%eax
 804e22e:	83 f8 fe             	cmp    $0xfffffffe,%eax
 804e231:	75 0a                	jne    804e23d <yyparse+0x362>
 804e233:	e8 27 24 00 00       	call   805065f <yylex>
 804e238:	a3 68 95 05 08       	mov    %eax,0x8059568
 804e23d:	a1 68 95 05 08       	mov    0x8059568,%eax
 804e242:	85 c0                	test   %eax,%eax
 804e244:	7f 17                	jg     804e25d <yyparse+0x382>
 804e246:	c7 85 64 ee ff ff 00 	movl   $0x0,-0x119c(%ebp)
 804e24d:	00 00 00 
 804e250:	8b 85 64 ee ff ff    	mov    -0x119c(%ebp),%eax
 804e256:	a3 68 95 05 08       	mov    %eax,0x8059568
 804e25b:	eb 28                	jmp    804e285 <yyparse+0x3aa>
 804e25d:	a1 68 95 05 08       	mov    0x8059568,%eax
 804e262:	3d 1e 01 00 00       	cmp    $0x11e,%eax
 804e267:	77 11                	ja     804e27a <yyparse+0x39f>
 804e269:	a1 68 95 05 08       	mov    0x8059568,%eax
 804e26e:	0f b6 80 e0 49 05 08 	movzbl 0x80549e0(%eax),%eax
 804e275:	0f b6 c0             	movzbl %al,%eax
 804e278:	eb 05                	jmp    804e27f <yyparse+0x3a4>
 804e27a:	b8 02 00 00 00       	mov    $0x2,%eax
 804e27f:	89 85 64 ee ff ff    	mov    %eax,-0x119c(%ebp)
 804e285:	8b 85 64 ee ff ff    	mov    -0x119c(%ebp),%eax
 804e28b:	01 85 5c ee ff ff    	add    %eax,-0x11a4(%ebp)
 804e291:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804e298:	0f 88 c9 00 00 00    	js     804e367 <yyparse+0x48c>
 804e29e:	81 bd 5c ee ff ff 0a 	cmpl   $0x10a,-0x11a4(%ebp)
 804e2a5:	01 00 00 
 804e2a8:	0f 8f b9 00 00 00    	jg     804e367 <yyparse+0x48c>
 804e2ae:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804e2b4:	05 00 4e 05 08       	add    $0x8054e00,%eax
 804e2b9:	0f b6 00             	movzbl (%eax),%eax
 804e2bc:	0f be c0             	movsbl %al,%eax
 804e2bf:	3b 85 64 ee ff ff    	cmp    -0x119c(%ebp),%eax
 804e2c5:	0f 85 9c 00 00 00    	jne    804e367 <yyparse+0x48c>
 804e2cb:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804e2d1:	05 e0 4c 05 08       	add    $0x8054ce0,%eax
 804e2d6:	0f b6 00             	movzbl (%eax),%eax
 804e2d9:	0f be c0             	movsbl %al,%eax
 804e2dc:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804e2e2:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804e2e9:	7f 0b                	jg     804e2f6 <yyparse+0x41b>
 804e2eb:	f7 9d 5c ee ff ff    	negl   -0x11a4(%ebp)
 804e2f1:	e9 96 00 00 00       	jmp    804e38c <yyparse+0x4b1>
 804e2f6:	83 bd 3c ee ff ff 00 	cmpl   $0x0,-0x11c4(%ebp)
 804e2fd:	74 07                	je     804e306 <yyparse+0x42b>
 804e2ff:	83 ad 3c ee ff ff 01 	subl   $0x1,-0x11c4(%ebp)
 804e306:	c7 05 68 95 05 08 fe 	movl   $0xfffffffe,0x8059568
 804e30d:	ff ff ff 
 804e310:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804e316:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 804e31c:	83 85 4c ee ff ff 04 	addl   $0x4,-0x11b4(%ebp)
 804e323:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e329:	8b 15 70 95 05 08    	mov    0x8059570,%edx
 804e32f:	89 10                	mov    %edx,(%eax)
 804e331:	83 85 54 ee ff ff 10 	addl   $0x10,-0x11ac(%ebp)
 804e338:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804e33e:	8b 15 ac 90 05 08    	mov    0x80590ac,%edx
 804e344:	89 10                	mov    %edx,(%eax)
 804e346:	8b 15 b0 90 05 08    	mov    0x80590b0,%edx
 804e34c:	89 50 04             	mov    %edx,0x4(%eax)
 804e34f:	8b 15 b4 90 05 08    	mov    0x80590b4,%edx
 804e355:	89 50 08             	mov    %edx,0x8(%eax)
 804e358:	8b 15 b8 90 05 08    	mov    0x80590b8,%edx
 804e35e:	89 50 0c             	mov    %edx,0xc(%eax)
 804e361:	e9 42 fc ff ff       	jmp    804dfa8 <yyparse+0xcd>
 804e366:	90                   	nop
 804e367:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804e36d:	05 00 4c 05 08       	add    $0x8054c00,%eax
 804e372:	0f b6 00             	movzbl (%eax),%eax
 804e375:	0f b6 c0             	movzbl %al,%eax
 804e378:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804e37e:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804e385:	0f 84 fc 1e 00 00    	je     8050287 <yyparse+0x23ac>
 804e38b:	90                   	nop
 804e38c:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804e392:	05 00 50 05 08       	add    $0x8055000,%eax
 804e397:	0f b6 00             	movzbl (%eax),%eax
 804e39a:	0f b6 c0             	movzbl %al,%eax
 804e39d:	89 85 68 ee ff ff    	mov    %eax,-0x1198(%ebp)
 804e3a3:	b8 01 00 00 00       	mov    $0x1,%eax
 804e3a8:	2b 85 68 ee ff ff    	sub    -0x1198(%ebp),%eax
 804e3ae:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804e3b5:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e3bb:	01 d0                	add    %edx,%eax
 804e3bd:	8b 00                	mov    (%eax),%eax
 804e3bf:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e3c5:	83 bd 68 ee ff ff 00 	cmpl   $0x0,-0x1198(%ebp)
 804e3cc:	74 67                	je     804e435 <yyparse+0x55a>
 804e3ce:	8b 95 68 ee ff ff    	mov    -0x1198(%ebp),%edx
 804e3d4:	b8 00 00 00 00       	mov    $0x0,%eax
 804e3d9:	29 d0                	sub    %edx,%eax
 804e3db:	c1 e0 04             	shl    $0x4,%eax
 804e3de:	8d 50 10             	lea    0x10(%eax),%edx
 804e3e1:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804e3e7:	01 d0                	add    %edx,%eax
 804e3e9:	8b 00                	mov    (%eax),%eax
 804e3eb:	89 85 84 ee ff ff    	mov    %eax,-0x117c(%ebp)
 804e3f1:	8b 95 68 ee ff ff    	mov    -0x1198(%ebp),%edx
 804e3f7:	b8 00 00 00 00       	mov    $0x0,%eax
 804e3fc:	29 d0                	sub    %edx,%eax
 804e3fe:	c1 e0 04             	shl    $0x4,%eax
 804e401:	8d 50 10             	lea    0x10(%eax),%edx
 804e404:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804e40a:	01 d0                	add    %edx,%eax
 804e40c:	8b 40 04             	mov    0x4(%eax),%eax
 804e40f:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%ebp)
 804e415:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804e41b:	8b 40 08             	mov    0x8(%eax),%eax
 804e41e:	89 85 8c ee ff ff    	mov    %eax,-0x1174(%ebp)
 804e424:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804e42a:	8b 40 0c             	mov    0xc(%eax),%eax
 804e42d:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%ebp)
 804e433:	eb 54                	jmp    804e489 <yyparse+0x5ae>
 804e435:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804e43b:	c1 e0 04             	shl    $0x4,%eax
 804e43e:	f7 d8                	neg    %eax
 804e440:	89 c2                	mov    %eax,%edx
 804e442:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804e448:	01 d0                	add    %edx,%eax
 804e44a:	8b 40 08             	mov    0x8(%eax),%eax
 804e44d:	89 85 8c ee ff ff    	mov    %eax,-0x1174(%ebp)
 804e453:	8b 85 8c ee ff ff    	mov    -0x1174(%ebp),%eax
 804e459:	89 85 84 ee ff ff    	mov    %eax,-0x117c(%ebp)
 804e45f:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804e465:	c1 e0 04             	shl    $0x4,%eax
 804e468:	f7 d8                	neg    %eax
 804e46a:	89 c2                	mov    %eax,%edx
 804e46c:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804e472:	01 d0                	add    %edx,%eax
 804e474:	8b 40 0c             	mov    0xc(%eax),%eax
 804e477:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%ebp)
 804e47d:	8b 85 90 ee ff ff    	mov    -0x1170(%ebp),%eax
 804e483:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%ebp)
 804e489:	83 bd 5c ee ff ff 44 	cmpl   $0x44,-0x11a4(%ebp)
 804e490:	0f 87 c3 1c 00 00    	ja     8050159 <yyparse+0x227e>
 804e496:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804e49c:	c1 e0 02             	shl    $0x2,%eax
 804e49f:	05 8c 51 05 08       	add    $0x805518c,%eax
 804e4a4:	8b 00                	mov    (%eax),%eax
 804e4a6:	ff e0                	jmp    *%eax
 804e4a8:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e4ae:	83 ec 08             	sub    $0x8,%esp
 804e4b1:	50                   	push   %eax
 804e4b2:	68 4e 50 05 08       	push   $0x805504e
 804e4b7:	e8 4c a6 ff ff       	call   8048b08 <createNode>
 804e4bc:	83 c4 10             	add    $0x10,%esp
 804e4bf:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e4c5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e4cb:	c7 40 04 1f 00 00 00 	movl   $0x1f,0x4(%eax)
 804e4d2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e4d8:	8b 10                	mov    (%eax),%edx
 804e4da:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e4e0:	83 ec 08             	sub    $0x8,%esp
 804e4e3:	52                   	push   %edx
 804e4e4:	50                   	push   %eax
 804e4e5:	e8 a1 a6 ff ff       	call   8048b8b <addChild>
 804e4ea:	83 c4 10             	add    $0x10,%esp
 804e4ed:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e4f3:	a3 14 91 05 08       	mov    %eax,0x8059114
 804e4f8:	e9 5d 1c 00 00       	jmp    805015a <yyparse+0x227f>
 804e4fd:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e503:	83 ec 08             	sub    $0x8,%esp
 804e506:	50                   	push   %eax
 804e507:	68 56 50 05 08       	push   $0x8055056
 804e50c:	e8 f7 a5 ff ff       	call   8048b08 <createNode>
 804e511:	83 c4 10             	add    $0x10,%esp
 804e514:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e51a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e520:	83 e8 04             	sub    $0x4,%eax
 804e523:	8b 10                	mov    (%eax),%edx
 804e525:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e52b:	83 ec 08             	sub    $0x8,%esp
 804e52e:	52                   	push   %edx
 804e52f:	50                   	push   %eax
 804e530:	e8 56 a6 ff ff       	call   8048b8b <addChild>
 804e535:	83 c4 10             	add    $0x10,%esp
 804e538:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e53e:	8b 10                	mov    (%eax),%edx
 804e540:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e546:	83 ec 08             	sub    $0x8,%esp
 804e549:	52                   	push   %edx
 804e54a:	50                   	push   %eax
 804e54b:	e8 3b a6 ff ff       	call   8048b8b <addChild>
 804e550:	83 c4 10             	add    $0x10,%esp
 804e553:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e559:	c7 40 04 20 00 00 00 	movl   $0x20,0x4(%eax)
 804e560:	e9 f5 1b 00 00       	jmp    805015a <yyparse+0x227f>
 804e565:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 804e56c:	00 00 00 
 804e56f:	e9 e6 1b 00 00       	jmp    805015a <yyparse+0x227f>
 804e574:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e57a:	83 ec 08             	sub    $0x8,%esp
 804e57d:	50                   	push   %eax
 804e57e:	68 61 50 05 08       	push   $0x8055061
 804e583:	e8 80 a5 ff ff       	call   8048b08 <createNode>
 804e588:	83 c4 10             	add    $0x10,%esp
 804e58b:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e591:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e597:	83 e8 08             	sub    $0x8,%eax
 804e59a:	8b 10                	mov    (%eax),%edx
 804e59c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e5a2:	83 ec 08             	sub    $0x8,%esp
 804e5a5:	52                   	push   %edx
 804e5a6:	50                   	push   %eax
 804e5a7:	e8 df a5 ff ff       	call   8048b8b <addChild>
 804e5ac:	83 c4 10             	add    $0x10,%esp
 804e5af:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e5b5:	83 e8 04             	sub    $0x4,%eax
 804e5b8:	8b 10                	mov    (%eax),%edx
 804e5ba:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e5c0:	83 ec 08             	sub    $0x8,%esp
 804e5c3:	52                   	push   %edx
 804e5c4:	50                   	push   %eax
 804e5c5:	e8 c1 a5 ff ff       	call   8048b8b <addChild>
 804e5ca:	83 c4 10             	add    $0x10,%esp
 804e5cd:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e5d3:	8b 10                	mov    (%eax),%edx
 804e5d5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e5db:	83 ec 08             	sub    $0x8,%esp
 804e5de:	52                   	push   %edx
 804e5df:	50                   	push   %eax
 804e5e0:	e8 a6 a5 ff ff       	call   8048b8b <addChild>
 804e5e5:	83 c4 10             	add    $0x10,%esp
 804e5e8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e5ee:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804e5f5:	e9 60 1b 00 00       	jmp    805015a <yyparse+0x227f>
 804e5fa:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e600:	83 ec 08             	sub    $0x8,%esp
 804e603:	50                   	push   %eax
 804e604:	68 61 50 05 08       	push   $0x8055061
 804e609:	e8 fa a4 ff ff       	call   8048b08 <createNode>
 804e60e:	83 c4 10             	add    $0x10,%esp
 804e611:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e617:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e61d:	83 e8 04             	sub    $0x4,%eax
 804e620:	8b 10                	mov    (%eax),%edx
 804e622:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e628:	83 ec 08             	sub    $0x8,%esp
 804e62b:	52                   	push   %edx
 804e62c:	50                   	push   %eax
 804e62d:	e8 59 a5 ff ff       	call   8048b8b <addChild>
 804e632:	83 c4 10             	add    $0x10,%esp
 804e635:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e63b:	8b 10                	mov    (%eax),%edx
 804e63d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e643:	83 ec 08             	sub    $0x8,%esp
 804e646:	52                   	push   %edx
 804e647:	50                   	push   %eax
 804e648:	e8 3e a5 ff ff       	call   8048b8b <addChild>
 804e64d:	83 c4 10             	add    $0x10,%esp
 804e650:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e656:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804e65d:	e9 f8 1a 00 00       	jmp    805015a <yyparse+0x227f>
 804e662:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e668:	83 ec 08             	sub    $0x8,%esp
 804e66b:	50                   	push   %eax
 804e66c:	68 61 50 05 08       	push   $0x8055061
 804e671:	e8 92 a4 ff ff       	call   8048b08 <createNode>
 804e676:	83 c4 10             	add    $0x10,%esp
 804e679:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e67f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e685:	83 e8 08             	sub    $0x8,%eax
 804e688:	8b 10                	mov    (%eax),%edx
 804e68a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e690:	83 ec 08             	sub    $0x8,%esp
 804e693:	52                   	push   %edx
 804e694:	50                   	push   %eax
 804e695:	e8 f1 a4 ff ff       	call   8048b8b <addChild>
 804e69a:	83 c4 10             	add    $0x10,%esp
 804e69d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e6a3:	83 e8 04             	sub    $0x4,%eax
 804e6a6:	8b 10                	mov    (%eax),%edx
 804e6a8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e6ae:	83 ec 08             	sub    $0x8,%esp
 804e6b1:	52                   	push   %edx
 804e6b2:	50                   	push   %eax
 804e6b3:	e8 d3 a4 ff ff       	call   8048b8b <addChild>
 804e6b8:	83 c4 10             	add    $0x10,%esp
 804e6bb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e6c1:	8b 10                	mov    (%eax),%edx
 804e6c3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e6c9:	83 ec 08             	sub    $0x8,%esp
 804e6cc:	52                   	push   %edx
 804e6cd:	50                   	push   %eax
 804e6ce:	e8 b8 a4 ff ff       	call   8048b8b <addChild>
 804e6d3:	83 c4 10             	add    $0x10,%esp
 804e6d6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e6dc:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804e6e3:	e9 72 1a 00 00       	jmp    805015a <yyparse+0x227f>
 804e6e8:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e6ee:	83 ec 08             	sub    $0x8,%esp
 804e6f1:	50                   	push   %eax
 804e6f2:	68 61 50 05 08       	push   $0x8055061
 804e6f7:	e8 0c a4 ff ff       	call   8048b08 <createNode>
 804e6fc:	83 c4 10             	add    $0x10,%esp
 804e6ff:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e705:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e70b:	83 e8 08             	sub    $0x8,%eax
 804e70e:	8b 10                	mov    (%eax),%edx
 804e710:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e716:	83 ec 08             	sub    $0x8,%esp
 804e719:	52                   	push   %edx
 804e71a:	50                   	push   %eax
 804e71b:	e8 6b a4 ff ff       	call   8048b8b <addChild>
 804e720:	83 c4 10             	add    $0x10,%esp
 804e723:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e729:	83 e8 04             	sub    $0x4,%eax
 804e72c:	8b 10                	mov    (%eax),%edx
 804e72e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e734:	83 ec 08             	sub    $0x8,%esp
 804e737:	52                   	push   %edx
 804e738:	50                   	push   %eax
 804e739:	e8 4d a4 ff ff       	call   8048b8b <addChild>
 804e73e:	83 c4 10             	add    $0x10,%esp
 804e741:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e747:	8b 10                	mov    (%eax),%edx
 804e749:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e74f:	83 ec 08             	sub    $0x8,%esp
 804e752:	52                   	push   %edx
 804e753:	50                   	push   %eax
 804e754:	e8 32 a4 ff ff       	call   8048b8b <addChild>
 804e759:	83 c4 10             	add    $0x10,%esp
 804e75c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e762:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804e769:	e9 ec 19 00 00       	jmp    805015a <yyparse+0x227f>
 804e76e:	83 ec 0c             	sub    $0xc,%esp
 804e771:	68 68 50 05 08       	push   $0x8055068
 804e776:	e8 72 4b 00 00       	call   80532ed <yyerror>
 804e77b:	83 c4 10             	add    $0x10,%esp
 804e77e:	a1 24 91 05 08       	mov    0x8059124,%eax
 804e783:	83 c0 01             	add    $0x1,%eax
 804e786:	a3 24 91 05 08       	mov    %eax,0x8059124
 804e78b:	e9 ca 19 00 00       	jmp    805015a <yyparse+0x227f>
 804e790:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e796:	83 ec 08             	sub    $0x8,%esp
 804e799:	50                   	push   %eax
 804e79a:	68 74 50 05 08       	push   $0x8055074
 804e79f:	e8 64 a3 ff ff       	call   8048b08 <createNode>
 804e7a4:	83 c4 10             	add    $0x10,%esp
 804e7a7:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e7ad:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e7b3:	8b 10                	mov    (%eax),%edx
 804e7b5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e7bb:	83 ec 08             	sub    $0x8,%esp
 804e7be:	52                   	push   %edx
 804e7bf:	50                   	push   %eax
 804e7c0:	e8 c6 a3 ff ff       	call   8048b8b <addChild>
 804e7c5:	83 c4 10             	add    $0x10,%esp
 804e7c8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e7ce:	c7 40 04 22 00 00 00 	movl   $0x22,0x4(%eax)
 804e7d5:	e9 80 19 00 00       	jmp    805015a <yyparse+0x227f>
 804e7da:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e7e0:	83 ec 08             	sub    $0x8,%esp
 804e7e3:	50                   	push   %eax
 804e7e4:	68 74 50 05 08       	push   $0x8055074
 804e7e9:	e8 1a a3 ff ff       	call   8048b08 <createNode>
 804e7ee:	83 c4 10             	add    $0x10,%esp
 804e7f1:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e7f7:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e7fd:	83 e8 08             	sub    $0x8,%eax
 804e800:	8b 10                	mov    (%eax),%edx
 804e802:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e808:	83 ec 08             	sub    $0x8,%esp
 804e80b:	52                   	push   %edx
 804e80c:	50                   	push   %eax
 804e80d:	e8 79 a3 ff ff       	call   8048b8b <addChild>
 804e812:	83 c4 10             	add    $0x10,%esp
 804e815:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e81b:	83 e8 04             	sub    $0x4,%eax
 804e81e:	8b 10                	mov    (%eax),%edx
 804e820:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e826:	83 ec 08             	sub    $0x8,%esp
 804e829:	52                   	push   %edx
 804e82a:	50                   	push   %eax
 804e82b:	e8 5b a3 ff ff       	call   8048b8b <addChild>
 804e830:	83 c4 10             	add    $0x10,%esp
 804e833:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e839:	8b 10                	mov    (%eax),%edx
 804e83b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e841:	83 ec 08             	sub    $0x8,%esp
 804e844:	52                   	push   %edx
 804e845:	50                   	push   %eax
 804e846:	e8 40 a3 ff ff       	call   8048b8b <addChild>
 804e84b:	83 c4 10             	add    $0x10,%esp
 804e84e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e854:	c7 40 04 22 00 00 00 	movl   $0x22,0x4(%eax)
 804e85b:	e9 fa 18 00 00       	jmp    805015a <yyparse+0x227f>
 804e860:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e866:	83 ec 08             	sub    $0x8,%esp
 804e869:	50                   	push   %eax
 804e86a:	68 7f 50 05 08       	push   $0x805507f
 804e86f:	e8 94 a2 ff ff       	call   8048b08 <createNode>
 804e874:	83 c4 10             	add    $0x10,%esp
 804e877:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e87d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e883:	8b 10                	mov    (%eax),%edx
 804e885:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e88b:	83 ec 08             	sub    $0x8,%esp
 804e88e:	52                   	push   %edx
 804e88f:	50                   	push   %eax
 804e890:	e8 f6 a2 ff ff       	call   8048b8b <addChild>
 804e895:	83 c4 10             	add    $0x10,%esp
 804e898:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e89e:	c7 40 04 23 00 00 00 	movl   $0x23,0x4(%eax)
 804e8a5:	e9 b0 18 00 00       	jmp    805015a <yyparse+0x227f>
 804e8aa:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e8b0:	83 ec 08             	sub    $0x8,%esp
 804e8b3:	50                   	push   %eax
 804e8b4:	68 7f 50 05 08       	push   $0x805507f
 804e8b9:	e8 4a a2 ff ff       	call   8048b08 <createNode>
 804e8be:	83 c4 10             	add    $0x10,%esp
 804e8c1:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e8c7:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e8cd:	8b 10                	mov    (%eax),%edx
 804e8cf:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e8d5:	83 ec 08             	sub    $0x8,%esp
 804e8d8:	52                   	push   %edx
 804e8d9:	50                   	push   %eax
 804e8da:	e8 ac a2 ff ff       	call   8048b8b <addChild>
 804e8df:	83 c4 10             	add    $0x10,%esp
 804e8e2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e8e8:	c7 40 04 23 00 00 00 	movl   $0x23,0x4(%eax)
 804e8ef:	e9 66 18 00 00       	jmp    805015a <yyparse+0x227f>
 804e8f4:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e8fa:	83 ec 08             	sub    $0x8,%esp
 804e8fd:	50                   	push   %eax
 804e8fe:	68 89 50 05 08       	push   $0x8055089
 804e903:	e8 00 a2 ff ff       	call   8048b08 <createNode>
 804e908:	83 c4 10             	add    $0x10,%esp
 804e90b:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e911:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e917:	83 e8 04             	sub    $0x4,%eax
 804e91a:	8b 10                	mov    (%eax),%edx
 804e91c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e922:	83 ec 08             	sub    $0x8,%esp
 804e925:	52                   	push   %edx
 804e926:	50                   	push   %eax
 804e927:	e8 5f a2 ff ff       	call   8048b8b <addChild>
 804e92c:	83 c4 10             	add    $0x10,%esp
 804e92f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e935:	8b 10                	mov    (%eax),%edx
 804e937:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e93d:	83 ec 08             	sub    $0x8,%esp
 804e940:	52                   	push   %edx
 804e941:	50                   	push   %eax
 804e942:	e8 44 a2 ff ff       	call   8048b8b <addChild>
 804e947:	83 c4 10             	add    $0x10,%esp
 804e94a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e950:	c7 40 04 24 00 00 00 	movl   $0x24,0x4(%eax)
 804e957:	e9 fe 17 00 00       	jmp    805015a <yyparse+0x227f>
 804e95c:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804e962:	83 ec 08             	sub    $0x8,%esp
 804e965:	50                   	push   %eax
 804e966:	68 89 50 05 08       	push   $0x8055089
 804e96b:	e8 98 a1 ff ff       	call   8048b08 <createNode>
 804e970:	83 c4 10             	add    $0x10,%esp
 804e973:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804e979:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e97f:	83 e8 10             	sub    $0x10,%eax
 804e982:	8b 10                	mov    (%eax),%edx
 804e984:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e98a:	83 ec 08             	sub    $0x8,%esp
 804e98d:	52                   	push   %edx
 804e98e:	50                   	push   %eax
 804e98f:	e8 f7 a1 ff ff       	call   8048b8b <addChild>
 804e994:	83 c4 10             	add    $0x10,%esp
 804e997:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e99d:	83 e8 0c             	sub    $0xc,%eax
 804e9a0:	8b 10                	mov    (%eax),%edx
 804e9a2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e9a8:	83 ec 08             	sub    $0x8,%esp
 804e9ab:	52                   	push   %edx
 804e9ac:	50                   	push   %eax
 804e9ad:	e8 d9 a1 ff ff       	call   8048b8b <addChild>
 804e9b2:	83 c4 10             	add    $0x10,%esp
 804e9b5:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e9bb:	83 e8 08             	sub    $0x8,%eax
 804e9be:	8b 10                	mov    (%eax),%edx
 804e9c0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e9c6:	83 ec 08             	sub    $0x8,%esp
 804e9c9:	52                   	push   %edx
 804e9ca:	50                   	push   %eax
 804e9cb:	e8 bb a1 ff ff       	call   8048b8b <addChild>
 804e9d0:	83 c4 10             	add    $0x10,%esp
 804e9d3:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e9d9:	83 e8 04             	sub    $0x4,%eax
 804e9dc:	8b 10                	mov    (%eax),%edx
 804e9de:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e9e4:	83 ec 08             	sub    $0x8,%esp
 804e9e7:	52                   	push   %edx
 804e9e8:	50                   	push   %eax
 804e9e9:	e8 9d a1 ff ff       	call   8048b8b <addChild>
 804e9ee:	83 c4 10             	add    $0x10,%esp
 804e9f1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804e9f7:	8b 10                	mov    (%eax),%edx
 804e9f9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804e9ff:	83 ec 08             	sub    $0x8,%esp
 804ea02:	52                   	push   %edx
 804ea03:	50                   	push   %eax
 804ea04:	e8 82 a1 ff ff       	call   8048b8b <addChild>
 804ea09:	83 c4 10             	add    $0x10,%esp
 804ea0c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ea12:	c7 40 04 24 00 00 00 	movl   $0x24,0x4(%eax)
 804ea19:	e9 3c 17 00 00       	jmp    805015a <yyparse+0x227f>
 804ea1e:	83 ec 0c             	sub    $0xc,%esp
 804ea21:	68 99 50 05 08       	push   $0x8055099
 804ea26:	e8 c2 48 00 00       	call   80532ed <yyerror>
 804ea2b:	83 c4 10             	add    $0x10,%esp
 804ea2e:	a1 24 91 05 08       	mov    0x8059124,%eax
 804ea33:	83 c0 01             	add    $0x1,%eax
 804ea36:	a3 24 91 05 08       	mov    %eax,0x8059124
 804ea3b:	e9 1a 17 00 00       	jmp    805015a <yyparse+0x227f>
 804ea40:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ea46:	83 ec 08             	sub    $0x8,%esp
 804ea49:	50                   	push   %eax
 804ea4a:	68 a5 50 05 08       	push   $0x80550a5
 804ea4f:	e8 b4 a0 ff ff       	call   8048b08 <createNode>
 804ea54:	83 c4 10             	add    $0x10,%esp
 804ea57:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ea5d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ea63:	8b 10                	mov    (%eax),%edx
 804ea65:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ea6b:	83 ec 08             	sub    $0x8,%esp
 804ea6e:	52                   	push   %edx
 804ea6f:	50                   	push   %eax
 804ea70:	e8 16 a1 ff ff       	call   8048b8b <addChild>
 804ea75:	83 c4 10             	add    $0x10,%esp
 804ea78:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ea7e:	c7 40 04 25 00 00 00 	movl   $0x25,0x4(%eax)
 804ea85:	e9 d0 16 00 00       	jmp    805015a <yyparse+0x227f>
 804ea8a:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 804ea91:	00 00 00 
 804ea94:	e9 c1 16 00 00       	jmp    805015a <yyparse+0x227f>
 804ea99:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ea9f:	83 ec 08             	sub    $0x8,%esp
 804eaa2:	50                   	push   %eax
 804eaa3:	68 ac 50 05 08       	push   $0x80550ac
 804eaa8:	e8 5b a0 ff ff       	call   8048b08 <createNode>
 804eaad:	83 c4 10             	add    $0x10,%esp
 804eab0:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804eab6:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eabc:	8b 10                	mov    (%eax),%edx
 804eabe:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eac4:	83 ec 08             	sub    $0x8,%esp
 804eac7:	52                   	push   %edx
 804eac8:	50                   	push   %eax
 804eac9:	e8 bd a0 ff ff       	call   8048b8b <addChild>
 804eace:	83 c4 10             	add    $0x10,%esp
 804ead1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ead7:	c7 40 04 26 00 00 00 	movl   $0x26,0x4(%eax)
 804eade:	e9 77 16 00 00       	jmp    805015a <yyparse+0x227f>
 804eae3:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804eae9:	83 ec 08             	sub    $0x8,%esp
 804eaec:	50                   	push   %eax
 804eaed:	68 b0 50 05 08       	push   $0x80550b0
 804eaf2:	e8 11 a0 ff ff       	call   8048b08 <createNode>
 804eaf7:	83 c4 10             	add    $0x10,%esp
 804eafa:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804eb00:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eb06:	8b 10                	mov    (%eax),%edx
 804eb08:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb0e:	83 ec 08             	sub    $0x8,%esp
 804eb11:	52                   	push   %edx
 804eb12:	50                   	push   %eax
 804eb13:	e8 73 a0 ff ff       	call   8048b8b <addChild>
 804eb18:	83 c4 10             	add    $0x10,%esp
 804eb1b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb21:	c7 40 04 27 00 00 00 	movl   $0x27,0x4(%eax)
 804eb28:	e9 2d 16 00 00       	jmp    805015a <yyparse+0x227f>
 804eb2d:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804eb33:	83 ec 08             	sub    $0x8,%esp
 804eb36:	50                   	push   %eax
 804eb37:	68 b0 50 05 08       	push   $0x80550b0
 804eb3c:	e8 c7 9f ff ff       	call   8048b08 <createNode>
 804eb41:	83 c4 10             	add    $0x10,%esp
 804eb44:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804eb4a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eb50:	83 e8 0c             	sub    $0xc,%eax
 804eb53:	8b 10                	mov    (%eax),%edx
 804eb55:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb5b:	83 ec 08             	sub    $0x8,%esp
 804eb5e:	52                   	push   %edx
 804eb5f:	50                   	push   %eax
 804eb60:	e8 26 a0 ff ff       	call   8048b8b <addChild>
 804eb65:	83 c4 10             	add    $0x10,%esp
 804eb68:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eb6e:	83 e8 08             	sub    $0x8,%eax
 804eb71:	8b 10                	mov    (%eax),%edx
 804eb73:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb79:	83 ec 08             	sub    $0x8,%esp
 804eb7c:	52                   	push   %edx
 804eb7d:	50                   	push   %eax
 804eb7e:	e8 08 a0 ff ff       	call   8048b8b <addChild>
 804eb83:	83 c4 10             	add    $0x10,%esp
 804eb86:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eb8c:	83 e8 04             	sub    $0x4,%eax
 804eb8f:	8b 10                	mov    (%eax),%edx
 804eb91:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eb97:	83 ec 08             	sub    $0x8,%esp
 804eb9a:	52                   	push   %edx
 804eb9b:	50                   	push   %eax
 804eb9c:	e8 ea 9f ff ff       	call   8048b8b <addChild>
 804eba1:	83 c4 10             	add    $0x10,%esp
 804eba4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ebaa:	8b 10                	mov    (%eax),%edx
 804ebac:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ebb2:	83 ec 08             	sub    $0x8,%esp
 804ebb5:	52                   	push   %edx
 804ebb6:	50                   	push   %eax
 804ebb7:	e8 cf 9f ff ff       	call   8048b8b <addChild>
 804ebbc:	83 c4 10             	add    $0x10,%esp
 804ebbf:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ebc5:	c7 40 04 27 00 00 00 	movl   $0x27,0x4(%eax)
 804ebcc:	e9 89 15 00 00       	jmp    805015a <yyparse+0x227f>
 804ebd1:	83 ec 0c             	sub    $0xc,%esp
 804ebd4:	68 b7 50 05 08       	push   $0x80550b7
 804ebd9:	e8 0f 47 00 00       	call   80532ed <yyerror>
 804ebde:	83 c4 10             	add    $0x10,%esp
 804ebe1:	a1 24 91 05 08       	mov    0x8059124,%eax
 804ebe6:	83 c0 01             	add    $0x1,%eax
 804ebe9:	a3 24 91 05 08       	mov    %eax,0x8059124
 804ebee:	e9 67 15 00 00       	jmp    805015a <yyparse+0x227f>
 804ebf3:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ebf9:	83 ec 08             	sub    $0x8,%esp
 804ebfc:	50                   	push   %eax
 804ebfd:	68 c3 50 05 08       	push   $0x80550c3
 804ec02:	e8 01 9f ff ff       	call   8048b08 <createNode>
 804ec07:	83 c4 10             	add    $0x10,%esp
 804ec0a:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ec10:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ec16:	83 e8 0c             	sub    $0xc,%eax
 804ec19:	8b 10                	mov    (%eax),%edx
 804ec1b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec21:	83 ec 08             	sub    $0x8,%esp
 804ec24:	52                   	push   %edx
 804ec25:	50                   	push   %eax
 804ec26:	e8 60 9f ff ff       	call   8048b8b <addChild>
 804ec2b:	83 c4 10             	add    $0x10,%esp
 804ec2e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ec34:	83 e8 08             	sub    $0x8,%eax
 804ec37:	8b 10                	mov    (%eax),%edx
 804ec39:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec3f:	83 ec 08             	sub    $0x8,%esp
 804ec42:	52                   	push   %edx
 804ec43:	50                   	push   %eax
 804ec44:	e8 42 9f ff ff       	call   8048b8b <addChild>
 804ec49:	83 c4 10             	add    $0x10,%esp
 804ec4c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ec52:	83 e8 04             	sub    $0x4,%eax
 804ec55:	8b 10                	mov    (%eax),%edx
 804ec57:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec5d:	83 ec 08             	sub    $0x8,%esp
 804ec60:	52                   	push   %edx
 804ec61:	50                   	push   %eax
 804ec62:	e8 24 9f ff ff       	call   8048b8b <addChild>
 804ec67:	83 c4 10             	add    $0x10,%esp
 804ec6a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ec70:	8b 10                	mov    (%eax),%edx
 804ec72:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec78:	83 ec 08             	sub    $0x8,%esp
 804ec7b:	52                   	push   %edx
 804ec7c:	50                   	push   %eax
 804ec7d:	e8 09 9f ff ff       	call   8048b8b <addChild>
 804ec82:	83 c4 10             	add    $0x10,%esp
 804ec85:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ec8b:	c7 40 04 28 00 00 00 	movl   $0x28,0x4(%eax)
 804ec92:	e9 c3 14 00 00       	jmp    805015a <yyparse+0x227f>
 804ec97:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ec9d:	83 ec 08             	sub    $0x8,%esp
 804eca0:	50                   	push   %eax
 804eca1:	68 c3 50 05 08       	push   $0x80550c3
 804eca6:	e8 5d 9e ff ff       	call   8048b08 <createNode>
 804ecab:	83 c4 10             	add    $0x10,%esp
 804ecae:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ecb4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ecba:	83 e8 08             	sub    $0x8,%eax
 804ecbd:	8b 10                	mov    (%eax),%edx
 804ecbf:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ecc5:	83 ec 08             	sub    $0x8,%esp
 804ecc8:	52                   	push   %edx
 804ecc9:	50                   	push   %eax
 804ecca:	e8 bc 9e ff ff       	call   8048b8b <addChild>
 804eccf:	83 c4 10             	add    $0x10,%esp
 804ecd2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ecd8:	83 e8 04             	sub    $0x4,%eax
 804ecdb:	8b 10                	mov    (%eax),%edx
 804ecdd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ece3:	83 ec 08             	sub    $0x8,%esp
 804ece6:	52                   	push   %edx
 804ece7:	50                   	push   %eax
 804ece8:	e8 9e 9e ff ff       	call   8048b8b <addChild>
 804eced:	83 c4 10             	add    $0x10,%esp
 804ecf0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ecf6:	8b 10                	mov    (%eax),%edx
 804ecf8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ecfe:	83 ec 08             	sub    $0x8,%esp
 804ed01:	52                   	push   %edx
 804ed02:	50                   	push   %eax
 804ed03:	e8 83 9e ff ff       	call   8048b8b <addChild>
 804ed08:	83 c4 10             	add    $0x10,%esp
 804ed0b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ed11:	c7 40 04 28 00 00 00 	movl   $0x28,0x4(%eax)
 804ed18:	e9 3d 14 00 00       	jmp    805015a <yyparse+0x227f>
 804ed1d:	83 ec 0c             	sub    $0xc,%esp
 804ed20:	68 ca 50 05 08       	push   $0x80550ca
 804ed25:	e8 c3 45 00 00       	call   80532ed <yyerror>
 804ed2a:	83 c4 10             	add    $0x10,%esp
 804ed2d:	a1 24 91 05 08       	mov    0x8059124,%eax
 804ed32:	83 c0 01             	add    $0x1,%eax
 804ed35:	a3 24 91 05 08       	mov    %eax,0x8059124
 804ed3a:	e9 1b 14 00 00       	jmp    805015a <yyparse+0x227f>
 804ed3f:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ed45:	83 ec 08             	sub    $0x8,%esp
 804ed48:	50                   	push   %eax
 804ed49:	68 d6 50 05 08       	push   $0x80550d6
 804ed4e:	e8 b5 9d ff ff       	call   8048b08 <createNode>
 804ed53:	83 c4 10             	add    $0x10,%esp
 804ed56:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ed5c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ed62:	83 e8 08             	sub    $0x8,%eax
 804ed65:	8b 10                	mov    (%eax),%edx
 804ed67:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ed6d:	83 ec 08             	sub    $0x8,%esp
 804ed70:	52                   	push   %edx
 804ed71:	50                   	push   %eax
 804ed72:	e8 14 9e ff ff       	call   8048b8b <addChild>
 804ed77:	83 c4 10             	add    $0x10,%esp
 804ed7a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ed80:	83 e8 04             	sub    $0x4,%eax
 804ed83:	8b 10                	mov    (%eax),%edx
 804ed85:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ed8b:	83 ec 08             	sub    $0x8,%esp
 804ed8e:	52                   	push   %edx
 804ed8f:	50                   	push   %eax
 804ed90:	e8 f6 9d ff ff       	call   8048b8b <addChild>
 804ed95:	83 c4 10             	add    $0x10,%esp
 804ed98:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ed9e:	8b 10                	mov    (%eax),%edx
 804eda0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eda6:	83 ec 08             	sub    $0x8,%esp
 804eda9:	52                   	push   %edx
 804edaa:	50                   	push   %eax
 804edab:	e8 db 9d ff ff       	call   8048b8b <addChild>
 804edb0:	83 c4 10             	add    $0x10,%esp
 804edb3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804edb9:	c7 40 04 29 00 00 00 	movl   $0x29,0x4(%eax)
 804edc0:	e9 95 13 00 00       	jmp    805015a <yyparse+0x227f>
 804edc5:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804edcb:	83 ec 08             	sub    $0x8,%esp
 804edce:	50                   	push   %eax
 804edcf:	68 d6 50 05 08       	push   $0x80550d6
 804edd4:	e8 2f 9d ff ff       	call   8048b08 <createNode>
 804edd9:	83 c4 10             	add    $0x10,%esp
 804eddc:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ede2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ede8:	8b 10                	mov    (%eax),%edx
 804edea:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804edf0:	83 ec 08             	sub    $0x8,%esp
 804edf3:	52                   	push   %edx
 804edf4:	50                   	push   %eax
 804edf5:	e8 91 9d ff ff       	call   8048b8b <addChild>
 804edfa:	83 c4 10             	add    $0x10,%esp
 804edfd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ee03:	c7 40 04 29 00 00 00 	movl   $0x29,0x4(%eax)
 804ee0a:	e9 4b 13 00 00       	jmp    805015a <yyparse+0x227f>
 804ee0f:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ee15:	83 ec 08             	sub    $0x8,%esp
 804ee18:	50                   	push   %eax
 804ee19:	68 de 50 05 08       	push   $0x80550de
 804ee1e:	e8 e5 9c ff ff       	call   8048b08 <createNode>
 804ee23:	83 c4 10             	add    $0x10,%esp
 804ee26:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ee2c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ee32:	83 e8 04             	sub    $0x4,%eax
 804ee35:	8b 10                	mov    (%eax),%edx
 804ee37:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ee3d:	83 ec 08             	sub    $0x8,%esp
 804ee40:	52                   	push   %edx
 804ee41:	50                   	push   %eax
 804ee42:	e8 44 9d ff ff       	call   8048b8b <addChild>
 804ee47:	83 c4 10             	add    $0x10,%esp
 804ee4a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ee50:	8b 10                	mov    (%eax),%edx
 804ee52:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ee58:	83 ec 08             	sub    $0x8,%esp
 804ee5b:	52                   	push   %edx
 804ee5c:	50                   	push   %eax
 804ee5d:	e8 29 9d ff ff       	call   8048b8b <addChild>
 804ee62:	83 c4 10             	add    $0x10,%esp
 804ee65:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ee6b:	c7 40 04 2a 00 00 00 	movl   $0x2a,0x4(%eax)
 804ee72:	e9 e3 12 00 00       	jmp    805015a <yyparse+0x227f>
 804ee77:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ee7d:	83 ec 08             	sub    $0x8,%esp
 804ee80:	50                   	push   %eax
 804ee81:	68 e7 50 05 08       	push   $0x80550e7
 804ee86:	e8 7d 9c ff ff       	call   8048b08 <createNode>
 804ee8b:	83 c4 10             	add    $0x10,%esp
 804ee8e:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ee94:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ee9a:	83 e8 0c             	sub    $0xc,%eax
 804ee9d:	8b 10                	mov    (%eax),%edx
 804ee9f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eea5:	83 ec 08             	sub    $0x8,%esp
 804eea8:	52                   	push   %edx
 804eea9:	50                   	push   %eax
 804eeaa:	e8 dc 9c ff ff       	call   8048b8b <addChild>
 804eeaf:	83 c4 10             	add    $0x10,%esp
 804eeb2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eeb8:	83 e8 08             	sub    $0x8,%eax
 804eebb:	8b 10                	mov    (%eax),%edx
 804eebd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eec3:	83 ec 08             	sub    $0x8,%esp
 804eec6:	52                   	push   %edx
 804eec7:	50                   	push   %eax
 804eec8:	e8 be 9c ff ff       	call   8048b8b <addChild>
 804eecd:	83 c4 10             	add    $0x10,%esp
 804eed0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eed6:	83 e8 04             	sub    $0x4,%eax
 804eed9:	8b 10                	mov    (%eax),%edx
 804eedb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eee1:	83 ec 08             	sub    $0x8,%esp
 804eee4:	52                   	push   %edx
 804eee5:	50                   	push   %eax
 804eee6:	e8 a0 9c ff ff       	call   8048b8b <addChild>
 804eeeb:	83 c4 10             	add    $0x10,%esp
 804eeee:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804eef4:	8b 10                	mov    (%eax),%edx
 804eef6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804eefc:	83 ec 08             	sub    $0x8,%esp
 804eeff:	52                   	push   %edx
 804ef00:	50                   	push   %eax
 804ef01:	e8 85 9c ff ff       	call   8048b8b <addChild>
 804ef06:	83 c4 10             	add    $0x10,%esp
 804ef09:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ef0f:	c7 40 04 2b 00 00 00 	movl   $0x2b,0x4(%eax)
 804ef16:	e9 3f 12 00 00       	jmp    805015a <yyparse+0x227f>
 804ef1b:	a1 24 91 05 08       	mov    0x8059124,%eax
 804ef20:	83 c0 01             	add    $0x1,%eax
 804ef23:	a3 24 91 05 08       	mov    %eax,0x8059124
 804ef28:	e9 2d 12 00 00       	jmp    805015a <yyparse+0x227f>
 804ef2d:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ef33:	83 ec 08             	sub    $0x8,%esp
 804ef36:	50                   	push   %eax
 804ef37:	68 ee 50 05 08       	push   $0x80550ee
 804ef3c:	e8 c7 9b ff ff       	call   8048b08 <createNode>
 804ef41:	83 c4 10             	add    $0x10,%esp
 804ef44:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ef4a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ef50:	83 e8 04             	sub    $0x4,%eax
 804ef53:	8b 10                	mov    (%eax),%edx
 804ef55:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ef5b:	83 ec 08             	sub    $0x8,%esp
 804ef5e:	52                   	push   %edx
 804ef5f:	50                   	push   %eax
 804ef60:	e8 26 9c ff ff       	call   8048b8b <addChild>
 804ef65:	83 c4 10             	add    $0x10,%esp
 804ef68:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ef6e:	8b 10                	mov    (%eax),%edx
 804ef70:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ef76:	83 ec 08             	sub    $0x8,%esp
 804ef79:	52                   	push   %edx
 804ef7a:	50                   	push   %eax
 804ef7b:	e8 0b 9c ff ff       	call   8048b8b <addChild>
 804ef80:	83 c4 10             	add    $0x10,%esp
 804ef83:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ef89:	c7 40 04 2c 00 00 00 	movl   $0x2c,0x4(%eax)
 804ef90:	e9 c5 11 00 00       	jmp    805015a <yyparse+0x227f>
 804ef95:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 804ef9c:	00 00 00 
 804ef9f:	e9 b6 11 00 00       	jmp    805015a <yyparse+0x227f>
 804efa4:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804efaa:	83 ec 08             	sub    $0x8,%esp
 804efad:	50                   	push   %eax
 804efae:	68 f7 50 05 08       	push   $0x80550f7
 804efb3:	e8 50 9b ff ff       	call   8048b08 <createNode>
 804efb8:	83 c4 10             	add    $0x10,%esp
 804efbb:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804efc1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804efc7:	83 e8 04             	sub    $0x4,%eax
 804efca:	8b 10                	mov    (%eax),%edx
 804efcc:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804efd2:	83 ec 08             	sub    $0x8,%esp
 804efd5:	52                   	push   %edx
 804efd6:	50                   	push   %eax
 804efd7:	e8 af 9b ff ff       	call   8048b8b <addChild>
 804efdc:	83 c4 10             	add    $0x10,%esp
 804efdf:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804efe5:	8b 10                	mov    (%eax),%edx
 804efe7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804efed:	83 ec 08             	sub    $0x8,%esp
 804eff0:	52                   	push   %edx
 804eff1:	50                   	push   %eax
 804eff2:	e8 94 9b ff ff       	call   8048b8b <addChild>
 804eff7:	83 c4 10             	add    $0x10,%esp
 804effa:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f000:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804f007:	e9 4e 11 00 00       	jmp    805015a <yyparse+0x227f>
 804f00c:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f012:	83 ec 08             	sub    $0x8,%esp
 804f015:	50                   	push   %eax
 804f016:	68 f7 50 05 08       	push   $0x80550f7
 804f01b:	e8 e8 9a ff ff       	call   8048b08 <createNode>
 804f020:	83 c4 10             	add    $0x10,%esp
 804f023:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f029:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f02f:	8b 10                	mov    (%eax),%edx
 804f031:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f037:	83 ec 08             	sub    $0x8,%esp
 804f03a:	52                   	push   %edx
 804f03b:	50                   	push   %eax
 804f03c:	e8 4a 9b ff ff       	call   8048b8b <addChild>
 804f041:	83 c4 10             	add    $0x10,%esp
 804f044:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f04a:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804f051:	e9 04 11 00 00       	jmp    805015a <yyparse+0x227f>
 804f056:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f05c:	83 ec 08             	sub    $0x8,%esp
 804f05f:	50                   	push   %eax
 804f060:	68 f7 50 05 08       	push   $0x80550f7
 804f065:	e8 9e 9a ff ff       	call   8048b08 <createNode>
 804f06a:	83 c4 10             	add    $0x10,%esp
 804f06d:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f073:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f079:	83 e8 08             	sub    $0x8,%eax
 804f07c:	8b 10                	mov    (%eax),%edx
 804f07e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f084:	83 ec 08             	sub    $0x8,%esp
 804f087:	52                   	push   %edx
 804f088:	50                   	push   %eax
 804f089:	e8 fd 9a ff ff       	call   8048b8b <addChild>
 804f08e:	83 c4 10             	add    $0x10,%esp
 804f091:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f097:	83 e8 04             	sub    $0x4,%eax
 804f09a:	8b 10                	mov    (%eax),%edx
 804f09c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f0a2:	83 ec 08             	sub    $0x8,%esp
 804f0a5:	52                   	push   %edx
 804f0a6:	50                   	push   %eax
 804f0a7:	e8 df 9a ff ff       	call   8048b8b <addChild>
 804f0ac:	83 c4 10             	add    $0x10,%esp
 804f0af:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f0b5:	8b 10                	mov    (%eax),%edx
 804f0b7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f0bd:	83 ec 08             	sub    $0x8,%esp
 804f0c0:	52                   	push   %edx
 804f0c1:	50                   	push   %eax
 804f0c2:	e8 c4 9a ff ff       	call   8048b8b <addChild>
 804f0c7:	83 c4 10             	add    $0x10,%esp
 804f0ca:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f0d0:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f0d7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f0dd:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804f0e4:	e9 71 10 00 00       	jmp    805015a <yyparse+0x227f>
 804f0e9:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f0ef:	83 ec 08             	sub    $0x8,%esp
 804f0f2:	50                   	push   %eax
 804f0f3:	68 f7 50 05 08       	push   $0x80550f7
 804f0f8:	e8 0b 9a ff ff       	call   8048b08 <createNode>
 804f0fd:	83 c4 10             	add    $0x10,%esp
 804f100:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f106:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f10c:	83 e8 10             	sub    $0x10,%eax
 804f10f:	8b 10                	mov    (%eax),%edx
 804f111:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f117:	83 ec 08             	sub    $0x8,%esp
 804f11a:	52                   	push   %edx
 804f11b:	50                   	push   %eax
 804f11c:	e8 6a 9a ff ff       	call   8048b8b <addChild>
 804f121:	83 c4 10             	add    $0x10,%esp
 804f124:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f12a:	83 e8 0c             	sub    $0xc,%eax
 804f12d:	8b 10                	mov    (%eax),%edx
 804f12f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f135:	83 ec 08             	sub    $0x8,%esp
 804f138:	52                   	push   %edx
 804f139:	50                   	push   %eax
 804f13a:	e8 4c 9a ff ff       	call   8048b8b <addChild>
 804f13f:	83 c4 10             	add    $0x10,%esp
 804f142:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f148:	83 e8 08             	sub    $0x8,%eax
 804f14b:	8b 10                	mov    (%eax),%edx
 804f14d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f153:	83 ec 08             	sub    $0x8,%esp
 804f156:	52                   	push   %edx
 804f157:	50                   	push   %eax
 804f158:	e8 2e 9a ff ff       	call   8048b8b <addChild>
 804f15d:	83 c4 10             	add    $0x10,%esp
 804f160:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f166:	83 e8 04             	sub    $0x4,%eax
 804f169:	8b 10                	mov    (%eax),%edx
 804f16b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f171:	83 ec 08             	sub    $0x8,%esp
 804f174:	52                   	push   %edx
 804f175:	50                   	push   %eax
 804f176:	e8 10 9a ff ff       	call   8048b8b <addChild>
 804f17b:	83 c4 10             	add    $0x10,%esp
 804f17e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f184:	8b 10                	mov    (%eax),%edx
 804f186:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f18c:	83 ec 08             	sub    $0x8,%esp
 804f18f:	52                   	push   %edx
 804f190:	50                   	push   %eax
 804f191:	e8 f5 99 ff ff       	call   8048b8b <addChild>
 804f196:	83 c4 10             	add    $0x10,%esp
 804f199:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f19f:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f1a6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f1ac:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804f1b3:	e9 a2 0f 00 00       	jmp    805015a <yyparse+0x227f>
 804f1b8:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f1be:	83 ec 08             	sub    $0x8,%esp
 804f1c1:	50                   	push   %eax
 804f1c2:	68 f7 50 05 08       	push   $0x80550f7
 804f1c7:	e8 3c 99 ff ff       	call   8048b08 <createNode>
 804f1cc:	83 c4 10             	add    $0x10,%esp
 804f1cf:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f1d5:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f1db:	83 e8 18             	sub    $0x18,%eax
 804f1de:	8b 10                	mov    (%eax),%edx
 804f1e0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f1e6:	83 ec 08             	sub    $0x8,%esp
 804f1e9:	52                   	push   %edx
 804f1ea:	50                   	push   %eax
 804f1eb:	e8 9b 99 ff ff       	call   8048b8b <addChild>
 804f1f0:	83 c4 10             	add    $0x10,%esp
 804f1f3:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f1f9:	83 e8 14             	sub    $0x14,%eax
 804f1fc:	8b 10                	mov    (%eax),%edx
 804f1fe:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f204:	83 ec 08             	sub    $0x8,%esp
 804f207:	52                   	push   %edx
 804f208:	50                   	push   %eax
 804f209:	e8 7d 99 ff ff       	call   8048b8b <addChild>
 804f20e:	83 c4 10             	add    $0x10,%esp
 804f211:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f217:	83 e8 10             	sub    $0x10,%eax
 804f21a:	8b 10                	mov    (%eax),%edx
 804f21c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f222:	83 ec 08             	sub    $0x8,%esp
 804f225:	52                   	push   %edx
 804f226:	50                   	push   %eax
 804f227:	e8 5f 99 ff ff       	call   8048b8b <addChild>
 804f22c:	83 c4 10             	add    $0x10,%esp
 804f22f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f235:	83 e8 0c             	sub    $0xc,%eax
 804f238:	8b 10                	mov    (%eax),%edx
 804f23a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f240:	83 ec 08             	sub    $0x8,%esp
 804f243:	52                   	push   %edx
 804f244:	50                   	push   %eax
 804f245:	e8 41 99 ff ff       	call   8048b8b <addChild>
 804f24a:	83 c4 10             	add    $0x10,%esp
 804f24d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f253:	83 e8 08             	sub    $0x8,%eax
 804f256:	8b 10                	mov    (%eax),%edx
 804f258:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f25e:	83 ec 08             	sub    $0x8,%esp
 804f261:	52                   	push   %edx
 804f262:	50                   	push   %eax
 804f263:	e8 23 99 ff ff       	call   8048b8b <addChild>
 804f268:	83 c4 10             	add    $0x10,%esp
 804f26b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f271:	83 e8 04             	sub    $0x4,%eax
 804f274:	8b 10                	mov    (%eax),%edx
 804f276:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f27c:	83 ec 08             	sub    $0x8,%esp
 804f27f:	52                   	push   %edx
 804f280:	50                   	push   %eax
 804f281:	e8 05 99 ff ff       	call   8048b8b <addChild>
 804f286:	83 c4 10             	add    $0x10,%esp
 804f289:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f28f:	8b 10                	mov    (%eax),%edx
 804f291:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f297:	83 ec 08             	sub    $0x8,%esp
 804f29a:	52                   	push   %edx
 804f29b:	50                   	push   %eax
 804f29c:	e8 ea 98 ff ff       	call   8048b8b <addChild>
 804f2a1:	83 c4 10             	add    $0x10,%esp
 804f2a4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f2aa:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f2b1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f2b7:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804f2be:	e9 97 0e 00 00       	jmp    805015a <yyparse+0x227f>
 804f2c3:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f2c9:	83 ec 08             	sub    $0x8,%esp
 804f2cc:	50                   	push   %eax
 804f2cd:	68 f7 50 05 08       	push   $0x80550f7
 804f2d2:	e8 31 98 ff ff       	call   8048b08 <createNode>
 804f2d7:	83 c4 10             	add    $0x10,%esp
 804f2da:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f2e0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f2e6:	83 e8 10             	sub    $0x10,%eax
 804f2e9:	8b 10                	mov    (%eax),%edx
 804f2eb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f2f1:	83 ec 08             	sub    $0x8,%esp
 804f2f4:	52                   	push   %edx
 804f2f5:	50                   	push   %eax
 804f2f6:	e8 90 98 ff ff       	call   8048b8b <addChild>
 804f2fb:	83 c4 10             	add    $0x10,%esp
 804f2fe:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f304:	83 e8 0c             	sub    $0xc,%eax
 804f307:	8b 10                	mov    (%eax),%edx
 804f309:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f30f:	83 ec 08             	sub    $0x8,%esp
 804f312:	52                   	push   %edx
 804f313:	50                   	push   %eax
 804f314:	e8 72 98 ff ff       	call   8048b8b <addChild>
 804f319:	83 c4 10             	add    $0x10,%esp
 804f31c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f322:	83 e8 08             	sub    $0x8,%eax
 804f325:	8b 10                	mov    (%eax),%edx
 804f327:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f32d:	83 ec 08             	sub    $0x8,%esp
 804f330:	52                   	push   %edx
 804f331:	50                   	push   %eax
 804f332:	e8 54 98 ff ff       	call   8048b8b <addChild>
 804f337:	83 c4 10             	add    $0x10,%esp
 804f33a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f340:	83 e8 04             	sub    $0x4,%eax
 804f343:	8b 10                	mov    (%eax),%edx
 804f345:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f34b:	83 ec 08             	sub    $0x8,%esp
 804f34e:	52                   	push   %edx
 804f34f:	50                   	push   %eax
 804f350:	e8 36 98 ff ff       	call   8048b8b <addChild>
 804f355:	83 c4 10             	add    $0x10,%esp
 804f358:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f35e:	8b 10                	mov    (%eax),%edx
 804f360:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f366:	83 ec 08             	sub    $0x8,%esp
 804f369:	52                   	push   %edx
 804f36a:	50                   	push   %eax
 804f36b:	e8 1b 98 ff ff       	call   8048b8b <addChild>
 804f370:	83 c4 10             	add    $0x10,%esp
 804f373:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f379:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f380:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f386:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 804f38d:	e9 c8 0d 00 00       	jmp    805015a <yyparse+0x227f>
 804f392:	83 ec 0c             	sub    $0xc,%esp
 804f395:	68 68 50 05 08       	push   $0x8055068
 804f39a:	e8 4e 3f 00 00       	call   80532ed <yyerror>
 804f39f:	83 c4 10             	add    $0x10,%esp
 804f3a2:	a1 24 91 05 08       	mov    0x8059124,%eax
 804f3a7:	83 c0 01             	add    $0x1,%eax
 804f3aa:	a3 24 91 05 08       	mov    %eax,0x8059124
 804f3af:	e9 a6 0d 00 00       	jmp    805015a <yyparse+0x227f>
 804f3b4:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f3ba:	83 ec 08             	sub    $0x8,%esp
 804f3bd:	50                   	push   %eax
 804f3be:	68 fc 50 05 08       	push   $0x80550fc
 804f3c3:	e8 40 97 ff ff       	call   8048b08 <createNode>
 804f3c8:	83 c4 10             	add    $0x10,%esp
 804f3cb:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f3d1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f3d7:	83 e8 04             	sub    $0x4,%eax
 804f3da:	8b 10                	mov    (%eax),%edx
 804f3dc:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f3e2:	83 ec 08             	sub    $0x8,%esp
 804f3e5:	52                   	push   %edx
 804f3e6:	50                   	push   %eax
 804f3e7:	e8 9f 97 ff ff       	call   8048b8b <addChild>
 804f3ec:	83 c4 10             	add    $0x10,%esp
 804f3ef:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f3f5:	8b 10                	mov    (%eax),%edx
 804f3f7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f3fd:	83 ec 08             	sub    $0x8,%esp
 804f400:	52                   	push   %edx
 804f401:	50                   	push   %eax
 804f402:	e8 84 97 ff ff       	call   8048b8b <addChild>
 804f407:	83 c4 10             	add    $0x10,%esp
 804f40a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f410:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f417:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f41d:	c7 40 04 2e 00 00 00 	movl   $0x2e,0x4(%eax)
 804f424:	e9 31 0d 00 00       	jmp    805015a <yyparse+0x227f>
 804f429:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 804f430:	00 00 00 
 804f433:	e9 22 0d 00 00       	jmp    805015a <yyparse+0x227f>
 804f438:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f43e:	83 ec 08             	sub    $0x8,%esp
 804f441:	50                   	push   %eax
 804f442:	68 04 51 05 08       	push   $0x8055104
 804f447:	e8 bc 96 ff ff       	call   8048b08 <createNode>
 804f44c:	83 c4 10             	add    $0x10,%esp
 804f44f:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f455:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f45b:	83 e8 08             	sub    $0x8,%eax
 804f45e:	8b 10                	mov    (%eax),%edx
 804f460:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f466:	83 ec 08             	sub    $0x8,%esp
 804f469:	52                   	push   %edx
 804f46a:	50                   	push   %eax
 804f46b:	e8 1b 97 ff ff       	call   8048b8b <addChild>
 804f470:	83 c4 10             	add    $0x10,%esp
 804f473:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f479:	83 e8 04             	sub    $0x4,%eax
 804f47c:	8b 10                	mov    (%eax),%edx
 804f47e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f484:	83 ec 08             	sub    $0x8,%esp
 804f487:	52                   	push   %edx
 804f488:	50                   	push   %eax
 804f489:	e8 fd 96 ff ff       	call   8048b8b <addChild>
 804f48e:	83 c4 10             	add    $0x10,%esp
 804f491:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f497:	8b 10                	mov    (%eax),%edx
 804f499:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f49f:	83 ec 08             	sub    $0x8,%esp
 804f4a2:	52                   	push   %edx
 804f4a3:	50                   	push   %eax
 804f4a4:	e8 e2 96 ff ff       	call   8048b8b <addChild>
 804f4a9:	83 c4 10             	add    $0x10,%esp
 804f4ac:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f4b2:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f4b9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f4bf:	c7 40 04 2f 00 00 00 	movl   $0x2f,0x4(%eax)
 804f4c6:	e9 8f 0c 00 00       	jmp    805015a <yyparse+0x227f>
 804f4cb:	a1 24 91 05 08       	mov    0x8059124,%eax
 804f4d0:	83 c0 01             	add    $0x1,%eax
 804f4d3:	a3 24 91 05 08       	mov    %eax,0x8059124
 804f4d8:	e9 7d 0c 00 00       	jmp    805015a <yyparse+0x227f>
 804f4dd:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f4e3:	83 ec 08             	sub    $0x8,%esp
 804f4e6:	50                   	push   %eax
 804f4e7:	68 08 51 05 08       	push   $0x8055108
 804f4ec:	e8 17 96 ff ff       	call   8048b08 <createNode>
 804f4f1:	83 c4 10             	add    $0x10,%esp
 804f4f4:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f4fa:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f500:	8b 10                	mov    (%eax),%edx
 804f502:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f508:	83 ec 08             	sub    $0x8,%esp
 804f50b:	52                   	push   %edx
 804f50c:	50                   	push   %eax
 804f50d:	e8 79 96 ff ff       	call   8048b8b <addChild>
 804f512:	83 c4 10             	add    $0x10,%esp
 804f515:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f51b:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f522:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f528:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%eax)
 804f52f:	e9 26 0c 00 00       	jmp    805015a <yyparse+0x227f>
 804f534:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f53a:	83 ec 08             	sub    $0x8,%esp
 804f53d:	50                   	push   %eax
 804f53e:	68 08 51 05 08       	push   $0x8055108
 804f543:	e8 c0 95 ff ff       	call   8048b08 <createNode>
 804f548:	83 c4 10             	add    $0x10,%esp
 804f54b:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f551:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f557:	83 e8 08             	sub    $0x8,%eax
 804f55a:	8b 10                	mov    (%eax),%edx
 804f55c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f562:	83 ec 08             	sub    $0x8,%esp
 804f565:	52                   	push   %edx
 804f566:	50                   	push   %eax
 804f567:	e8 1f 96 ff ff       	call   8048b8b <addChild>
 804f56c:	83 c4 10             	add    $0x10,%esp
 804f56f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f575:	83 e8 04             	sub    $0x4,%eax
 804f578:	8b 10                	mov    (%eax),%edx
 804f57a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f580:	83 ec 08             	sub    $0x8,%esp
 804f583:	52                   	push   %edx
 804f584:	50                   	push   %eax
 804f585:	e8 01 96 ff ff       	call   8048b8b <addChild>
 804f58a:	83 c4 10             	add    $0x10,%esp
 804f58d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f593:	8b 10                	mov    (%eax),%edx
 804f595:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f59b:	83 ec 08             	sub    $0x8,%esp
 804f59e:	52                   	push   %edx
 804f59f:	50                   	push   %eax
 804f5a0:	e8 e6 95 ff ff       	call   8048b8b <addChild>
 804f5a5:	83 c4 10             	add    $0x10,%esp
 804f5a8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f5ae:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f5b5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f5bb:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%eax)
 804f5c2:	e9 93 0b 00 00       	jmp    805015a <yyparse+0x227f>
 804f5c7:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f5cd:	83 ec 08             	sub    $0x8,%esp
 804f5d0:	50                   	push   %eax
 804f5d1:	68 10 51 05 08       	push   $0x8055110
 804f5d6:	e8 2d 95 ff ff       	call   8048b08 <createNode>
 804f5db:	83 c4 10             	add    $0x10,%esp
 804f5de:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f5e4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f5ea:	8b 10                	mov    (%eax),%edx
 804f5ec:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f5f2:	83 ec 08             	sub    $0x8,%esp
 804f5f5:	52                   	push   %edx
 804f5f6:	50                   	push   %eax
 804f5f7:	e8 8f 95 ff ff       	call   8048b8b <addChild>
 804f5fc:	83 c4 10             	add    $0x10,%esp
 804f5ff:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f605:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f60c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f612:	c7 40 04 31 00 00 00 	movl   $0x31,0x4(%eax)
 804f619:	e9 3c 0b 00 00       	jmp    805015a <yyparse+0x227f>
 804f61e:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f624:	83 ec 08             	sub    $0x8,%esp
 804f627:	50                   	push   %eax
 804f628:	68 10 51 05 08       	push   $0x8055110
 804f62d:	e8 d6 94 ff ff       	call   8048b08 <createNode>
 804f632:	83 c4 10             	add    $0x10,%esp
 804f635:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f63b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f641:	83 e8 08             	sub    $0x8,%eax
 804f644:	8b 10                	mov    (%eax),%edx
 804f646:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f64c:	83 ec 08             	sub    $0x8,%esp
 804f64f:	52                   	push   %edx
 804f650:	50                   	push   %eax
 804f651:	e8 35 95 ff ff       	call   8048b8b <addChild>
 804f656:	83 c4 10             	add    $0x10,%esp
 804f659:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f65f:	83 e8 04             	sub    $0x4,%eax
 804f662:	8b 10                	mov    (%eax),%edx
 804f664:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f66a:	83 ec 08             	sub    $0x8,%esp
 804f66d:	52                   	push   %edx
 804f66e:	50                   	push   %eax
 804f66f:	e8 17 95 ff ff       	call   8048b8b <addChild>
 804f674:	83 c4 10             	add    $0x10,%esp
 804f677:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f67d:	8b 10                	mov    (%eax),%edx
 804f67f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f685:	83 ec 08             	sub    $0x8,%esp
 804f688:	52                   	push   %edx
 804f689:	50                   	push   %eax
 804f68a:	e8 fc 94 ff ff       	call   8048b8b <addChild>
 804f68f:	83 c4 10             	add    $0x10,%esp
 804f692:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f698:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f69f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f6a5:	c7 40 04 31 00 00 00 	movl   $0x31,0x4(%eax)
 804f6ac:	e9 a9 0a 00 00       	jmp    805015a <yyparse+0x227f>
 804f6b1:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f6b7:	83 ec 08             	sub    $0x8,%esp
 804f6ba:	50                   	push   %eax
 804f6bb:	68 14 51 05 08       	push   $0x8055114
 804f6c0:	e8 43 94 ff ff       	call   8048b08 <createNode>
 804f6c5:	83 c4 10             	add    $0x10,%esp
 804f6c8:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f6ce:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f6d4:	83 e8 08             	sub    $0x8,%eax
 804f6d7:	8b 10                	mov    (%eax),%edx
 804f6d9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f6df:	83 ec 08             	sub    $0x8,%esp
 804f6e2:	52                   	push   %edx
 804f6e3:	50                   	push   %eax
 804f6e4:	e8 a2 94 ff ff       	call   8048b8b <addChild>
 804f6e9:	83 c4 10             	add    $0x10,%esp
 804f6ec:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f6f2:	83 e8 04             	sub    $0x4,%eax
 804f6f5:	8b 10                	mov    (%eax),%edx
 804f6f7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f6fd:	83 ec 08             	sub    $0x8,%esp
 804f700:	52                   	push   %edx
 804f701:	50                   	push   %eax
 804f702:	e8 84 94 ff ff       	call   8048b8b <addChild>
 804f707:	83 c4 10             	add    $0x10,%esp
 804f70a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f710:	8b 10                	mov    (%eax),%edx
 804f712:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f718:	83 ec 08             	sub    $0x8,%esp
 804f71b:	52                   	push   %edx
 804f71c:	50                   	push   %eax
 804f71d:	e8 69 94 ff ff       	call   8048b8b <addChild>
 804f722:	83 c4 10             	add    $0x10,%esp
 804f725:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f72b:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f732:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f738:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f73f:	e9 16 0a 00 00       	jmp    805015a <yyparse+0x227f>
 804f744:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f74a:	83 ec 08             	sub    $0x8,%esp
 804f74d:	50                   	push   %eax
 804f74e:	68 14 51 05 08       	push   $0x8055114
 804f753:	e8 b0 93 ff ff       	call   8048b08 <createNode>
 804f758:	83 c4 10             	add    $0x10,%esp
 804f75b:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f761:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f767:	83 e8 08             	sub    $0x8,%eax
 804f76a:	8b 10                	mov    (%eax),%edx
 804f76c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f772:	83 ec 08             	sub    $0x8,%esp
 804f775:	52                   	push   %edx
 804f776:	50                   	push   %eax
 804f777:	e8 0f 94 ff ff       	call   8048b8b <addChild>
 804f77c:	83 c4 10             	add    $0x10,%esp
 804f77f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f785:	83 e8 04             	sub    $0x4,%eax
 804f788:	8b 10                	mov    (%eax),%edx
 804f78a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f790:	83 ec 08             	sub    $0x8,%esp
 804f793:	52                   	push   %edx
 804f794:	50                   	push   %eax
 804f795:	e8 f1 93 ff ff       	call   8048b8b <addChild>
 804f79a:	83 c4 10             	add    $0x10,%esp
 804f79d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f7a3:	8b 10                	mov    (%eax),%edx
 804f7a5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f7ab:	83 ec 08             	sub    $0x8,%esp
 804f7ae:	52                   	push   %edx
 804f7af:	50                   	push   %eax
 804f7b0:	e8 d6 93 ff ff       	call   8048b8b <addChild>
 804f7b5:	83 c4 10             	add    $0x10,%esp
 804f7b8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f7be:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f7c5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f7cb:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f7d2:	e9 83 09 00 00       	jmp    805015a <yyparse+0x227f>
 804f7d7:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f7dd:	83 ec 08             	sub    $0x8,%esp
 804f7e0:	50                   	push   %eax
 804f7e1:	68 14 51 05 08       	push   $0x8055114
 804f7e6:	e8 1d 93 ff ff       	call   8048b08 <createNode>
 804f7eb:	83 c4 10             	add    $0x10,%esp
 804f7ee:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f7f4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f7fa:	83 e8 08             	sub    $0x8,%eax
 804f7fd:	8b 10                	mov    (%eax),%edx
 804f7ff:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f805:	83 ec 08             	sub    $0x8,%esp
 804f808:	52                   	push   %edx
 804f809:	50                   	push   %eax
 804f80a:	e8 7c 93 ff ff       	call   8048b8b <addChild>
 804f80f:	83 c4 10             	add    $0x10,%esp
 804f812:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f818:	83 e8 04             	sub    $0x4,%eax
 804f81b:	8b 10                	mov    (%eax),%edx
 804f81d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f823:	83 ec 08             	sub    $0x8,%esp
 804f826:	52                   	push   %edx
 804f827:	50                   	push   %eax
 804f828:	e8 5e 93 ff ff       	call   8048b8b <addChild>
 804f82d:	83 c4 10             	add    $0x10,%esp
 804f830:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f836:	8b 10                	mov    (%eax),%edx
 804f838:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f83e:	83 ec 08             	sub    $0x8,%esp
 804f841:	52                   	push   %edx
 804f842:	50                   	push   %eax
 804f843:	e8 43 93 ff ff       	call   8048b8b <addChild>
 804f848:	83 c4 10             	add    $0x10,%esp
 804f84b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f851:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f858:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f85e:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f865:	e9 f0 08 00 00       	jmp    805015a <yyparse+0x227f>
 804f86a:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f870:	83 ec 08             	sub    $0x8,%esp
 804f873:	50                   	push   %eax
 804f874:	68 14 51 05 08       	push   $0x8055114
 804f879:	e8 8a 92 ff ff       	call   8048b08 <createNode>
 804f87e:	83 c4 10             	add    $0x10,%esp
 804f881:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f887:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f88d:	83 e8 08             	sub    $0x8,%eax
 804f890:	8b 10                	mov    (%eax),%edx
 804f892:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f898:	83 ec 08             	sub    $0x8,%esp
 804f89b:	52                   	push   %edx
 804f89c:	50                   	push   %eax
 804f89d:	e8 e9 92 ff ff       	call   8048b8b <addChild>
 804f8a2:	83 c4 10             	add    $0x10,%esp
 804f8a5:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f8ab:	83 e8 04             	sub    $0x4,%eax
 804f8ae:	8b 10                	mov    (%eax),%edx
 804f8b0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f8b6:	83 ec 08             	sub    $0x8,%esp
 804f8b9:	52                   	push   %edx
 804f8ba:	50                   	push   %eax
 804f8bb:	e8 cb 92 ff ff       	call   8048b8b <addChild>
 804f8c0:	83 c4 10             	add    $0x10,%esp
 804f8c3:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f8c9:	8b 10                	mov    (%eax),%edx
 804f8cb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f8d1:	83 ec 08             	sub    $0x8,%esp
 804f8d4:	52                   	push   %edx
 804f8d5:	50                   	push   %eax
 804f8d6:	e8 b0 92 ff ff       	call   8048b8b <addChild>
 804f8db:	83 c4 10             	add    $0x10,%esp
 804f8de:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f8e4:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f8eb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f8f1:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f8f8:	e9 5d 08 00 00       	jmp    805015a <yyparse+0x227f>
 804f8fd:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f903:	83 ec 08             	sub    $0x8,%esp
 804f906:	50                   	push   %eax
 804f907:	68 14 51 05 08       	push   $0x8055114
 804f90c:	e8 f7 91 ff ff       	call   8048b08 <createNode>
 804f911:	83 c4 10             	add    $0x10,%esp
 804f914:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f91a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f920:	83 e8 08             	sub    $0x8,%eax
 804f923:	8b 10                	mov    (%eax),%edx
 804f925:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f92b:	83 ec 08             	sub    $0x8,%esp
 804f92e:	52                   	push   %edx
 804f92f:	50                   	push   %eax
 804f930:	e8 56 92 ff ff       	call   8048b8b <addChild>
 804f935:	83 c4 10             	add    $0x10,%esp
 804f938:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f93e:	83 e8 04             	sub    $0x4,%eax
 804f941:	8b 10                	mov    (%eax),%edx
 804f943:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f949:	83 ec 08             	sub    $0x8,%esp
 804f94c:	52                   	push   %edx
 804f94d:	50                   	push   %eax
 804f94e:	e8 38 92 ff ff       	call   8048b8b <addChild>
 804f953:	83 c4 10             	add    $0x10,%esp
 804f956:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f95c:	8b 10                	mov    (%eax),%edx
 804f95e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f964:	83 ec 08             	sub    $0x8,%esp
 804f967:	52                   	push   %edx
 804f968:	50                   	push   %eax
 804f969:	e8 1d 92 ff ff       	call   8048b8b <addChild>
 804f96e:	83 c4 10             	add    $0x10,%esp
 804f971:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f977:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804f97e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f984:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804f98b:	e9 ca 07 00 00       	jmp    805015a <yyparse+0x227f>
 804f990:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804f996:	83 ec 08             	sub    $0x8,%esp
 804f999:	50                   	push   %eax
 804f99a:	68 14 51 05 08       	push   $0x8055114
 804f99f:	e8 64 91 ff ff       	call   8048b08 <createNode>
 804f9a4:	83 c4 10             	add    $0x10,%esp
 804f9a7:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804f9ad:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f9b3:	83 e8 08             	sub    $0x8,%eax
 804f9b6:	8b 10                	mov    (%eax),%edx
 804f9b8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f9be:	83 ec 08             	sub    $0x8,%esp
 804f9c1:	52                   	push   %edx
 804f9c2:	50                   	push   %eax
 804f9c3:	e8 c3 91 ff ff       	call   8048b8b <addChild>
 804f9c8:	83 c4 10             	add    $0x10,%esp
 804f9cb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f9d1:	83 e8 04             	sub    $0x4,%eax
 804f9d4:	8b 10                	mov    (%eax),%edx
 804f9d6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f9dc:	83 ec 08             	sub    $0x8,%esp
 804f9df:	52                   	push   %edx
 804f9e0:	50                   	push   %eax
 804f9e1:	e8 a5 91 ff ff       	call   8048b8b <addChild>
 804f9e6:	83 c4 10             	add    $0x10,%esp
 804f9e9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804f9ef:	8b 10                	mov    (%eax),%edx
 804f9f1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804f9f7:	83 ec 08             	sub    $0x8,%esp
 804f9fa:	52                   	push   %edx
 804f9fb:	50                   	push   %eax
 804f9fc:	e8 8a 91 ff ff       	call   8048b8b <addChild>
 804fa01:	83 c4 10             	add    $0x10,%esp
 804fa04:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fa0a:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804fa11:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fa17:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804fa1e:	e9 37 07 00 00       	jmp    805015a <yyparse+0x227f>
 804fa23:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fa29:	83 ec 08             	sub    $0x8,%esp
 804fa2c:	50                   	push   %eax
 804fa2d:	68 14 51 05 08       	push   $0x8055114
 804fa32:	e8 d1 90 ff ff       	call   8048b08 <createNode>
 804fa37:	83 c4 10             	add    $0x10,%esp
 804fa3a:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fa40:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fa46:	83 e8 08             	sub    $0x8,%eax
 804fa49:	8b 10                	mov    (%eax),%edx
 804fa4b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fa51:	83 ec 08             	sub    $0x8,%esp
 804fa54:	52                   	push   %edx
 804fa55:	50                   	push   %eax
 804fa56:	e8 30 91 ff ff       	call   8048b8b <addChild>
 804fa5b:	83 c4 10             	add    $0x10,%esp
 804fa5e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fa64:	83 e8 04             	sub    $0x4,%eax
 804fa67:	8b 10                	mov    (%eax),%edx
 804fa69:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fa6f:	83 ec 08             	sub    $0x8,%esp
 804fa72:	52                   	push   %edx
 804fa73:	50                   	push   %eax
 804fa74:	e8 12 91 ff ff       	call   8048b8b <addChild>
 804fa79:	83 c4 10             	add    $0x10,%esp
 804fa7c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fa82:	8b 10                	mov    (%eax),%edx
 804fa84:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fa8a:	83 ec 08             	sub    $0x8,%esp
 804fa8d:	52                   	push   %edx
 804fa8e:	50                   	push   %eax
 804fa8f:	e8 f7 90 ff ff       	call   8048b8b <addChild>
 804fa94:	83 c4 10             	add    $0x10,%esp
 804fa97:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fa9d:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804faa4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804faaa:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804fab1:	e9 a4 06 00 00       	jmp    805015a <yyparse+0x227f>
 804fab6:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fabc:	83 ec 08             	sub    $0x8,%esp
 804fabf:	50                   	push   %eax
 804fac0:	68 14 51 05 08       	push   $0x8055114
 804fac5:	e8 3e 90 ff ff       	call   8048b08 <createNode>
 804faca:	83 c4 10             	add    $0x10,%esp
 804facd:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fad3:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fad9:	83 e8 08             	sub    $0x8,%eax
 804fadc:	8b 10                	mov    (%eax),%edx
 804fade:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fae4:	83 ec 08             	sub    $0x8,%esp
 804fae7:	52                   	push   %edx
 804fae8:	50                   	push   %eax
 804fae9:	e8 9d 90 ff ff       	call   8048b8b <addChild>
 804faee:	83 c4 10             	add    $0x10,%esp
 804faf1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804faf7:	83 e8 04             	sub    $0x4,%eax
 804fafa:	8b 10                	mov    (%eax),%edx
 804fafc:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fb02:	83 ec 08             	sub    $0x8,%esp
 804fb05:	52                   	push   %edx
 804fb06:	50                   	push   %eax
 804fb07:	e8 7f 90 ff ff       	call   8048b8b <addChild>
 804fb0c:	83 c4 10             	add    $0x10,%esp
 804fb0f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fb15:	8b 10                	mov    (%eax),%edx
 804fb17:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fb1d:	83 ec 08             	sub    $0x8,%esp
 804fb20:	52                   	push   %edx
 804fb21:	50                   	push   %eax
 804fb22:	e8 64 90 ff ff       	call   8048b8b <addChild>
 804fb27:	83 c4 10             	add    $0x10,%esp
 804fb2a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fb30:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804fb37:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fb3d:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804fb44:	e9 11 06 00 00       	jmp    805015a <yyparse+0x227f>
 804fb49:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fb4f:	83 ec 08             	sub    $0x8,%esp
 804fb52:	50                   	push   %eax
 804fb53:	68 14 51 05 08       	push   $0x8055114
 804fb58:	e8 ab 8f ff ff       	call   8048b08 <createNode>
 804fb5d:	83 c4 10             	add    $0x10,%esp
 804fb60:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fb66:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fb6c:	83 e8 08             	sub    $0x8,%eax
 804fb6f:	8b 10                	mov    (%eax),%edx
 804fb71:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fb77:	83 ec 08             	sub    $0x8,%esp
 804fb7a:	52                   	push   %edx
 804fb7b:	50                   	push   %eax
 804fb7c:	e8 0a 90 ff ff       	call   8048b8b <addChild>
 804fb81:	83 c4 10             	add    $0x10,%esp
 804fb84:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fb8a:	83 e8 04             	sub    $0x4,%eax
 804fb8d:	8b 10                	mov    (%eax),%edx
 804fb8f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fb95:	83 ec 08             	sub    $0x8,%esp
 804fb98:	52                   	push   %edx
 804fb99:	50                   	push   %eax
 804fb9a:	e8 ec 8f ff ff       	call   8048b8b <addChild>
 804fb9f:	83 c4 10             	add    $0x10,%esp
 804fba2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fba8:	8b 10                	mov    (%eax),%edx
 804fbaa:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fbb0:	83 ec 08             	sub    $0x8,%esp
 804fbb3:	52                   	push   %edx
 804fbb4:	50                   	push   %eax
 804fbb5:	e8 d1 8f ff ff       	call   8048b8b <addChild>
 804fbba:	83 c4 10             	add    $0x10,%esp
 804fbbd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fbc3:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804fbca:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fbd0:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804fbd7:	e9 7e 05 00 00       	jmp    805015a <yyparse+0x227f>
 804fbdc:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fbe2:	83 ec 08             	sub    $0x8,%esp
 804fbe5:	50                   	push   %eax
 804fbe6:	68 14 51 05 08       	push   $0x8055114
 804fbeb:	e8 18 8f ff ff       	call   8048b08 <createNode>
 804fbf0:	83 c4 10             	add    $0x10,%esp
 804fbf3:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fbf9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fbff:	83 e8 04             	sub    $0x4,%eax
 804fc02:	8b 10                	mov    (%eax),%edx
 804fc04:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fc0a:	83 ec 08             	sub    $0x8,%esp
 804fc0d:	52                   	push   %edx
 804fc0e:	50                   	push   %eax
 804fc0f:	e8 77 8f ff ff       	call   8048b8b <addChild>
 804fc14:	83 c4 10             	add    $0x10,%esp
 804fc17:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fc1d:	8b 10                	mov    (%eax),%edx
 804fc1f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fc25:	83 ec 08             	sub    $0x8,%esp
 804fc28:	52                   	push   %edx
 804fc29:	50                   	push   %eax
 804fc2a:	e8 5c 8f ff ff       	call   8048b8b <addChild>
 804fc2f:	83 c4 10             	add    $0x10,%esp
 804fc32:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fc38:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804fc3f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fc45:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804fc4c:	e9 09 05 00 00       	jmp    805015a <yyparse+0x227f>
 804fc51:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fc57:	83 ec 08             	sub    $0x8,%esp
 804fc5a:	50                   	push   %eax
 804fc5b:	68 14 51 05 08       	push   $0x8055114
 804fc60:	e8 a3 8e ff ff       	call   8048b08 <createNode>
 804fc65:	83 c4 10             	add    $0x10,%esp
 804fc68:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fc6e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fc74:	83 e8 04             	sub    $0x4,%eax
 804fc77:	8b 10                	mov    (%eax),%edx
 804fc79:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fc7f:	83 ec 08             	sub    $0x8,%esp
 804fc82:	52                   	push   %edx
 804fc83:	50                   	push   %eax
 804fc84:	e8 02 8f ff ff       	call   8048b8b <addChild>
 804fc89:	83 c4 10             	add    $0x10,%esp
 804fc8c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fc92:	8b 10                	mov    (%eax),%edx
 804fc94:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fc9a:	83 ec 08             	sub    $0x8,%esp
 804fc9d:	52                   	push   %edx
 804fc9e:	50                   	push   %eax
 804fc9f:	e8 e7 8e ff ff       	call   8048b8b <addChild>
 804fca4:	83 c4 10             	add    $0x10,%esp
 804fca7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fcad:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804fcb4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fcba:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804fcc1:	e9 94 04 00 00       	jmp    805015a <yyparse+0x227f>
 804fcc6:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fccc:	83 ec 08             	sub    $0x8,%esp
 804fccf:	50                   	push   %eax
 804fcd0:	68 14 51 05 08       	push   $0x8055114
 804fcd5:	e8 2e 8e ff ff       	call   8048b08 <createNode>
 804fcda:	83 c4 10             	add    $0x10,%esp
 804fcdd:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fce3:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fce9:	83 e8 0c             	sub    $0xc,%eax
 804fcec:	8b 10                	mov    (%eax),%edx
 804fcee:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fcf4:	83 ec 08             	sub    $0x8,%esp
 804fcf7:	52                   	push   %edx
 804fcf8:	50                   	push   %eax
 804fcf9:	e8 8d 8e ff ff       	call   8048b8b <addChild>
 804fcfe:	83 c4 10             	add    $0x10,%esp
 804fd01:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fd07:	83 e8 08             	sub    $0x8,%eax
 804fd0a:	8b 10                	mov    (%eax),%edx
 804fd0c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fd12:	83 ec 08             	sub    $0x8,%esp
 804fd15:	52                   	push   %edx
 804fd16:	50                   	push   %eax
 804fd17:	e8 6f 8e ff ff       	call   8048b8b <addChild>
 804fd1c:	83 c4 10             	add    $0x10,%esp
 804fd1f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fd25:	83 e8 04             	sub    $0x4,%eax
 804fd28:	8b 10                	mov    (%eax),%edx
 804fd2a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fd30:	83 ec 08             	sub    $0x8,%esp
 804fd33:	52                   	push   %edx
 804fd34:	50                   	push   %eax
 804fd35:	e8 51 8e ff ff       	call   8048b8b <addChild>
 804fd3a:	83 c4 10             	add    $0x10,%esp
 804fd3d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fd43:	8b 10                	mov    (%eax),%edx
 804fd45:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fd4b:	83 ec 08             	sub    $0x8,%esp
 804fd4e:	52                   	push   %edx
 804fd4f:	50                   	push   %eax
 804fd50:	e8 36 8e ff ff       	call   8048b8b <addChild>
 804fd55:	83 c4 10             	add    $0x10,%esp
 804fd58:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fd5e:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804fd65:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fd6b:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804fd72:	e9 e3 03 00 00       	jmp    805015a <yyparse+0x227f>
 804fd77:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fd7d:	83 ec 08             	sub    $0x8,%esp
 804fd80:	50                   	push   %eax
 804fd81:	68 14 51 05 08       	push   $0x8055114
 804fd86:	e8 7d 8d ff ff       	call   8048b08 <createNode>
 804fd8b:	83 c4 10             	add    $0x10,%esp
 804fd8e:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fd94:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fd9a:	83 e8 08             	sub    $0x8,%eax
 804fd9d:	8b 10                	mov    (%eax),%edx
 804fd9f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fda5:	83 ec 08             	sub    $0x8,%esp
 804fda8:	52                   	push   %edx
 804fda9:	50                   	push   %eax
 804fdaa:	e8 dc 8d ff ff       	call   8048b8b <addChild>
 804fdaf:	83 c4 10             	add    $0x10,%esp
 804fdb2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fdb8:	83 e8 04             	sub    $0x4,%eax
 804fdbb:	8b 10                	mov    (%eax),%edx
 804fdbd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fdc3:	83 ec 08             	sub    $0x8,%esp
 804fdc6:	52                   	push   %edx
 804fdc7:	50                   	push   %eax
 804fdc8:	e8 be 8d ff ff       	call   8048b8b <addChild>
 804fdcd:	83 c4 10             	add    $0x10,%esp
 804fdd0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fdd6:	8b 10                	mov    (%eax),%edx
 804fdd8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fdde:	83 ec 08             	sub    $0x8,%esp
 804fde1:	52                   	push   %edx
 804fde2:	50                   	push   %eax
 804fde3:	e8 a3 8d ff ff       	call   8048b8b <addChild>
 804fde8:	83 c4 10             	add    $0x10,%esp
 804fdeb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fdf1:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804fdf8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fdfe:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804fe05:	e9 50 03 00 00       	jmp    805015a <yyparse+0x227f>
 804fe0a:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fe10:	83 ec 08             	sub    $0x8,%esp
 804fe13:	50                   	push   %eax
 804fe14:	68 14 51 05 08       	push   $0x8055114
 804fe19:	e8 ea 8c ff ff       	call   8048b08 <createNode>
 804fe1e:	83 c4 10             	add    $0x10,%esp
 804fe21:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fe27:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fe2d:	83 e8 0c             	sub    $0xc,%eax
 804fe30:	8b 10                	mov    (%eax),%edx
 804fe32:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fe38:	83 ec 08             	sub    $0x8,%esp
 804fe3b:	52                   	push   %edx
 804fe3c:	50                   	push   %eax
 804fe3d:	e8 49 8d ff ff       	call   8048b8b <addChild>
 804fe42:	83 c4 10             	add    $0x10,%esp
 804fe45:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fe4b:	83 e8 08             	sub    $0x8,%eax
 804fe4e:	8b 10                	mov    (%eax),%edx
 804fe50:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fe56:	83 ec 08             	sub    $0x8,%esp
 804fe59:	52                   	push   %edx
 804fe5a:	50                   	push   %eax
 804fe5b:	e8 2b 8d ff ff       	call   8048b8b <addChild>
 804fe60:	83 c4 10             	add    $0x10,%esp
 804fe63:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fe69:	83 e8 04             	sub    $0x4,%eax
 804fe6c:	8b 10                	mov    (%eax),%edx
 804fe6e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fe74:	83 ec 08             	sub    $0x8,%esp
 804fe77:	52                   	push   %edx
 804fe78:	50                   	push   %eax
 804fe79:	e8 0d 8d ff ff       	call   8048b8b <addChild>
 804fe7e:	83 c4 10             	add    $0x10,%esp
 804fe81:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fe87:	8b 10                	mov    (%eax),%edx
 804fe89:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fe8f:	83 ec 08             	sub    $0x8,%esp
 804fe92:	52                   	push   %edx
 804fe93:	50                   	push   %eax
 804fe94:	e8 f2 8c ff ff       	call   8048b8b <addChild>
 804fe99:	83 c4 10             	add    $0x10,%esp
 804fe9c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fea2:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804fea9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804feaf:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804feb6:	e9 9f 02 00 00       	jmp    805015a <yyparse+0x227f>
 804febb:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fec1:	83 ec 08             	sub    $0x8,%esp
 804fec4:	50                   	push   %eax
 804fec5:	68 14 51 05 08       	push   $0x8055114
 804feca:	e8 39 8c ff ff       	call   8048b08 <createNode>
 804fecf:	83 c4 10             	add    $0x10,%esp
 804fed2:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fed8:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fede:	83 e8 08             	sub    $0x8,%eax
 804fee1:	8b 10                	mov    (%eax),%edx
 804fee3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fee9:	83 ec 08             	sub    $0x8,%esp
 804feec:	52                   	push   %edx
 804feed:	50                   	push   %eax
 804feee:	e8 98 8c ff ff       	call   8048b8b <addChild>
 804fef3:	83 c4 10             	add    $0x10,%esp
 804fef6:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fefc:	83 e8 04             	sub    $0x4,%eax
 804feff:	8b 10                	mov    (%eax),%edx
 804ff01:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff07:	83 ec 08             	sub    $0x8,%esp
 804ff0a:	52                   	push   %edx
 804ff0b:	50                   	push   %eax
 804ff0c:	e8 7a 8c ff ff       	call   8048b8b <addChild>
 804ff11:	83 c4 10             	add    $0x10,%esp
 804ff14:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ff1a:	8b 10                	mov    (%eax),%edx
 804ff1c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff22:	83 ec 08             	sub    $0x8,%esp
 804ff25:	52                   	push   %edx
 804ff26:	50                   	push   %eax
 804ff27:	e8 5f 8c ff ff       	call   8048b8b <addChild>
 804ff2c:	83 c4 10             	add    $0x10,%esp
 804ff2f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff35:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ff3c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff42:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804ff49:	e9 0c 02 00 00       	jmp    805015a <yyparse+0x227f>
 804ff4e:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ff54:	83 ec 08             	sub    $0x8,%esp
 804ff57:	50                   	push   %eax
 804ff58:	68 14 51 05 08       	push   $0x8055114
 804ff5d:	e8 a6 8b ff ff       	call   8048b08 <createNode>
 804ff62:	83 c4 10             	add    $0x10,%esp
 804ff65:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ff6b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ff71:	8b 10                	mov    (%eax),%edx
 804ff73:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff79:	83 ec 08             	sub    $0x8,%esp
 804ff7c:	52                   	push   %edx
 804ff7d:	50                   	push   %eax
 804ff7e:	e8 08 8c ff ff       	call   8048b8b <addChild>
 804ff83:	83 c4 10             	add    $0x10,%esp
 804ff86:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff8c:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ff93:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff99:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804ffa0:	e9 b5 01 00 00       	jmp    805015a <yyparse+0x227f>
 804ffa5:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ffab:	83 ec 08             	sub    $0x8,%esp
 804ffae:	50                   	push   %eax
 804ffaf:	68 14 51 05 08       	push   $0x8055114
 804ffb4:	e8 4f 8b ff ff       	call   8048b08 <createNode>
 804ffb9:	83 c4 10             	add    $0x10,%esp
 804ffbc:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ffc2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ffc8:	8b 10                	mov    (%eax),%edx
 804ffca:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ffd0:	83 ec 08             	sub    $0x8,%esp
 804ffd3:	52                   	push   %edx
 804ffd4:	50                   	push   %eax
 804ffd5:	e8 b1 8b ff ff       	call   8048b8b <addChild>
 804ffda:	83 c4 10             	add    $0x10,%esp
 804ffdd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ffe3:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 804ffea:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fff0:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 804fff7:	e9 5e 01 00 00       	jmp    805015a <yyparse+0x227f>
 804fffc:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050002:	83 ec 08             	sub    $0x8,%esp
 8050005:	50                   	push   %eax
 8050006:	68 14 51 05 08       	push   $0x8055114
 805000b:	e8 f8 8a ff ff       	call   8048b08 <createNode>
 8050010:	83 c4 10             	add    $0x10,%esp
 8050013:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050019:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805001f:	8b 10                	mov    (%eax),%edx
 8050021:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050027:	83 ec 08             	sub    $0x8,%esp
 805002a:	52                   	push   %edx
 805002b:	50                   	push   %eax
 805002c:	e8 5a 8b ff ff       	call   8048b8b <addChild>
 8050031:	83 c4 10             	add    $0x10,%esp
 8050034:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805003a:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050041:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050047:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 805004e:	e9 07 01 00 00       	jmp    805015a <yyparse+0x227f>
 8050053:	83 ec 0c             	sub    $0xc,%esp
 8050056:	68 b7 50 05 08       	push   $0x80550b7
 805005b:	e8 8d 32 00 00       	call   80532ed <yyerror>
 8050060:	83 c4 10             	add    $0x10,%esp
 8050063:	a1 24 91 05 08       	mov    0x8059124,%eax
 8050068:	83 c0 01             	add    $0x1,%eax
 805006b:	a3 24 91 05 08       	mov    %eax,0x8059124
 8050070:	e9 e5 00 00 00       	jmp    805015a <yyparse+0x227f>
 8050075:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805007b:	83 ec 08             	sub    $0x8,%esp
 805007e:	50                   	push   %eax
 805007f:	68 18 51 05 08       	push   $0x8055118
 8050084:	e8 7f 8a ff ff       	call   8048b08 <createNode>
 8050089:	83 c4 10             	add    $0x10,%esp
 805008c:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050092:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050098:	83 e8 08             	sub    $0x8,%eax
 805009b:	8b 10                	mov    (%eax),%edx
 805009d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80500a3:	83 ec 08             	sub    $0x8,%esp
 80500a6:	52                   	push   %edx
 80500a7:	50                   	push   %eax
 80500a8:	e8 de 8a ff ff       	call   8048b8b <addChild>
 80500ad:	83 c4 10             	add    $0x10,%esp
 80500b0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80500b6:	83 e8 04             	sub    $0x4,%eax
 80500b9:	8b 10                	mov    (%eax),%edx
 80500bb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80500c1:	83 ec 08             	sub    $0x8,%esp
 80500c4:	52                   	push   %edx
 80500c5:	50                   	push   %eax
 80500c6:	e8 c0 8a ff ff       	call   8048b8b <addChild>
 80500cb:	83 c4 10             	add    $0x10,%esp
 80500ce:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80500d4:	8b 10                	mov    (%eax),%edx
 80500d6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80500dc:	83 ec 08             	sub    $0x8,%esp
 80500df:	52                   	push   %edx
 80500e0:	50                   	push   %eax
 80500e1:	e8 a5 8a ff ff       	call   8048b8b <addChild>
 80500e6:	83 c4 10             	add    $0x10,%esp
 80500e9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80500ef:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 80500f6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80500fc:	c7 40 04 33 00 00 00 	movl   $0x33,0x4(%eax)
 8050103:	eb 55                	jmp    805015a <yyparse+0x227f>
 8050105:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805010b:	83 ec 08             	sub    $0x8,%esp
 805010e:	50                   	push   %eax
 805010f:	68 18 51 05 08       	push   $0x8055118
 8050114:	e8 ef 89 ff ff       	call   8048b08 <createNode>
 8050119:	83 c4 10             	add    $0x10,%esp
 805011c:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050122:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050128:	8b 10                	mov    (%eax),%edx
 805012a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050130:	83 ec 08             	sub    $0x8,%esp
 8050133:	52                   	push   %edx
 8050134:	50                   	push   %eax
 8050135:	e8 51 8a ff ff       	call   8048b8b <addChild>
 805013a:	83 c4 10             	add    $0x10,%esp
 805013d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050143:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 805014a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050150:	c7 40 04 33 00 00 00 	movl   $0x33,0x4(%eax)
 8050157:	eb 01                	jmp    805015a <yyparse+0x227f>
 8050159:	90                   	nop
 805015a:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 8050160:	c1 e0 02             	shl    $0x2,%eax
 8050163:	f7 d8                	neg    %eax
 8050165:	01 85 4c ee ff ff    	add    %eax,-0x11b4(%ebp)
 805016b:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 8050171:	01 c0                	add    %eax,%eax
 8050173:	f7 d8                	neg    %eax
 8050175:	01 85 44 ee ff ff    	add    %eax,-0x11bc(%ebp)
 805017b:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 8050181:	c1 e0 04             	shl    $0x4,%eax
 8050184:	f7 d8                	neg    %eax
 8050186:	01 85 54 ee ff ff    	add    %eax,-0x11ac(%ebp)
 805018c:	c7 85 68 ee ff ff 00 	movl   $0x0,-0x1198(%ebp)
 8050193:	00 00 00 
 8050196:	83 85 4c ee ff ff 04 	addl   $0x4,-0x11b4(%ebp)
 805019d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80501a3:	8b 95 34 ee ff ff    	mov    -0x11cc(%ebp),%edx
 80501a9:	89 10                	mov    %edx,(%eax)
 80501ab:	83 85 54 ee ff ff 10 	addl   $0x10,-0x11ac(%ebp)
 80501b2:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 80501b8:	8b 95 84 ee ff ff    	mov    -0x117c(%ebp),%edx
 80501be:	89 10                	mov    %edx,(%eax)
 80501c0:	8b 95 88 ee ff ff    	mov    -0x1178(%ebp),%edx
 80501c6:	89 50 04             	mov    %edx,0x4(%eax)
 80501c9:	8b 95 8c ee ff ff    	mov    -0x1174(%ebp),%edx
 80501cf:	89 50 08             	mov    %edx,0x8(%eax)
 80501d2:	8b 95 90 ee ff ff    	mov    -0x1170(%ebp),%edx
 80501d8:	89 50 0c             	mov    %edx,0xc(%eax)
 80501db:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 80501e1:	05 a0 4f 05 08       	add    $0x8054fa0,%eax
 80501e6:	0f b6 00             	movzbl (%eax),%eax
 80501e9:	0f b6 c0             	movzbl %al,%eax
 80501ec:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 80501f2:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 80501f8:	83 e8 20             	sub    $0x20,%eax
 80501fb:	0f b7 84 00 80 4c 05 	movzwl 0x8054c80(%eax,%eax,1),%eax
 8050202:	08 
 8050203:	0f bf d0             	movswl %ax,%edx
 8050206:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 805020c:	0f b7 00             	movzwl (%eax),%eax
 805020f:	98                   	cwtl   
 8050210:	01 d0                	add    %edx,%eax
 8050212:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8050218:	83 bd 38 ee ff ff 00 	cmpl   $0x0,-0x11c8(%ebp)
 805021f:	78 48                	js     8050269 <yyparse+0x238e>
 8050221:	81 bd 38 ee ff ff 0a 	cmpl   $0x10a,-0x11c8(%ebp)
 8050228:	01 00 00 
 805022b:	7f 3c                	jg     8050269 <yyparse+0x238e>
 805022d:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 8050233:	05 00 4e 05 08       	add    $0x8054e00,%eax
 8050238:	0f b6 00             	movzbl (%eax),%eax
 805023b:	66 0f be d0          	movsbw %al,%dx
 805023f:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 8050245:	0f b7 00             	movzwl (%eax),%eax
 8050248:	66 39 c2             	cmp    %ax,%dx
 805024b:	75 1c                	jne    8050269 <yyparse+0x238e>
 805024d:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 8050253:	05 e0 4c 05 08       	add    $0x8054ce0,%eax
 8050258:	0f b6 00             	movzbl (%eax),%eax
 805025b:	0f be c0             	movsbl %al,%eax
 805025e:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8050264:	e9 3f dd ff ff       	jmp    804dfa8 <yyparse+0xcd>
 8050269:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 805026f:	83 e8 20             	sub    $0x20,%eax
 8050272:	0f b6 80 ac 4c 05 08 	movzbl 0x8054cac(%eax),%eax
 8050279:	0f be c0             	movsbl %al,%eax
 805027c:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8050282:	e9 21 dd ff ff       	jmp    804dfa8 <yyparse+0xcd>
 8050287:	90                   	nop
 8050288:	a1 68 95 05 08       	mov    0x8059568,%eax
 805028d:	83 f8 fe             	cmp    $0xfffffffe,%eax
 8050290:	74 24                	je     80502b6 <yyparse+0x23db>
 8050292:	a1 68 95 05 08       	mov    0x8059568,%eax
 8050297:	3d 1e 01 00 00       	cmp    $0x11e,%eax
 805029c:	77 11                	ja     80502af <yyparse+0x23d4>
 805029e:	a1 68 95 05 08       	mov    0x8059568,%eax
 80502a3:	0f b6 80 e0 49 05 08 	movzbl 0x80549e0(%eax),%eax
 80502aa:	0f b6 c0             	movzbl %al,%eax
 80502ad:	eb 0c                	jmp    80502bb <yyparse+0x23e0>
 80502af:	b8 02 00 00 00       	mov    $0x2,%eax
 80502b4:	eb 05                	jmp    80502bb <yyparse+0x23e0>
 80502b6:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
 80502bb:	89 85 64 ee ff ff    	mov    %eax,-0x119c(%ebp)
 80502c1:	83 bd 3c ee ff ff 00 	cmpl   $0x0,-0x11c4(%ebp)
 80502c8:	75 1d                	jne    80502e7 <yyparse+0x240c>
 80502ca:	a1 60 95 05 08       	mov    0x8059560,%eax
 80502cf:	83 c0 01             	add    $0x1,%eax
 80502d2:	a3 60 95 05 08       	mov    %eax,0x8059560
 80502d7:	83 ec 0c             	sub    $0xc,%esp
 80502da:	68 1d 51 05 08       	push   $0x805511d
 80502df:	e8 09 30 00 00       	call   80532ed <yyerror>
 80502e4:	83 c4 10             	add    $0x10,%esp
 80502e7:	a1 ac 90 05 08       	mov    0x80590ac,%eax
 80502ec:	89 85 a4 ee ff ff    	mov    %eax,-0x115c(%ebp)
 80502f2:	a1 b0 90 05 08       	mov    0x80590b0,%eax
 80502f7:	89 85 a8 ee ff ff    	mov    %eax,-0x1158(%ebp)
 80502fd:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050302:	89 85 ac ee ff ff    	mov    %eax,-0x1154(%ebp)
 8050308:	a1 b8 90 05 08       	mov    0x80590b8,%eax
 805030d:	89 85 b0 ee ff ff    	mov    %eax,-0x1150(%ebp)
 8050313:	83 bd 3c ee ff ff 03 	cmpl   $0x3,-0x11c4(%ebp)
 805031a:	75 3e                	jne    805035a <yyparse+0x247f>
 805031c:	a1 68 95 05 08       	mov    0x8059568,%eax
 8050321:	85 c0                	test   %eax,%eax
 8050323:	7f 0e                	jg     8050333 <yyparse+0x2458>
 8050325:	a1 68 95 05 08       	mov    0x8059568,%eax
 805032a:	85 c0                	test   %eax,%eax
 805032c:	75 2c                	jne    805035a <yyparse+0x247f>
 805032e:	e9 f6 01 00 00       	jmp    8050529 <yyparse+0x264e>
 8050333:	68 ac 90 05 08       	push   $0x80590ac
 8050338:	68 70 95 05 08       	push   $0x8059570
 805033d:	ff b5 64 ee ff ff    	pushl  -0x119c(%ebp)
 8050343:	68 2a 51 05 08       	push   $0x805512a
 8050348:	e8 7b db ff ff       	call   804dec8 <yydestruct>
 805034d:	83 c4 10             	add    $0x10,%esp
 8050350:	c7 05 68 95 05 08 fe 	movl   $0xfffffffe,0x8059568
 8050357:	ff ff ff 
 805035a:	90                   	nop
 805035b:	c7 85 3c ee ff ff 03 	movl   $0x3,-0x11c4(%ebp)
 8050362:	00 00 00 
 8050365:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 805036b:	0f b7 84 00 00 4b 05 	movzwl 0x8054b00(%eax,%eax,1),%eax
 8050372:	08 
 8050373:	98                   	cwtl   
 8050374:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 805037a:	83 bd 5c ee ff ff c5 	cmpl   $0xffffffc5,-0x11a4(%ebp)
 8050381:	74 52                	je     80503d5 <yyparse+0x24fa>
 8050383:	83 85 5c ee ff ff 01 	addl   $0x1,-0x11a4(%ebp)
 805038a:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 8050391:	78 42                	js     80503d5 <yyparse+0x24fa>
 8050393:	81 bd 5c ee ff ff 0a 	cmpl   $0x10a,-0x11a4(%ebp)
 805039a:	01 00 00 
 805039d:	7f 36                	jg     80503d5 <yyparse+0x24fa>
 805039f:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 80503a5:	05 00 4e 05 08       	add    $0x8054e00,%eax
 80503aa:	0f b6 00             	movzbl (%eax),%eax
 80503ad:	3c 01                	cmp    $0x1,%al
 80503af:	75 24                	jne    80503d5 <yyparse+0x24fa>
 80503b1:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 80503b7:	05 e0 4c 05 08       	add    $0x8054ce0,%eax
 80503bc:	0f b6 00             	movzbl (%eax),%eax
 80503bf:	0f be c0             	movsbl %al,%eax
 80503c2:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 80503c8:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 80503cf:	0f 8f 90 00 00 00    	jg     8050465 <yyparse+0x258a>
 80503d5:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 80503db:	3b 85 40 ee ff ff    	cmp    -0x11c0(%ebp),%eax
 80503e1:	0f 84 41 01 00 00    	je     8050528 <yyparse+0x264d>
 80503e7:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 80503ed:	8b 10                	mov    (%eax),%edx
 80503ef:	89 95 a4 ee ff ff    	mov    %edx,-0x115c(%ebp)
 80503f5:	8b 50 04             	mov    0x4(%eax),%edx
 80503f8:	89 95 a8 ee ff ff    	mov    %edx,-0x1158(%ebp)
 80503fe:	8b 50 08             	mov    0x8(%eax),%edx
 8050401:	89 95 ac ee ff ff    	mov    %edx,-0x1154(%ebp)
 8050407:	8b 40 0c             	mov    0xc(%eax),%eax
 805040a:	89 85 b0 ee ff ff    	mov    %eax,-0x1150(%ebp)
 8050410:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 8050416:	05 20 4f 05 08       	add    $0x8054f20,%eax
 805041b:	0f b6 00             	movzbl (%eax),%eax
 805041e:	0f b6 c0             	movzbl %al,%eax
 8050421:	ff b5 54 ee ff ff    	pushl  -0x11ac(%ebp)
 8050427:	ff b5 4c ee ff ff    	pushl  -0x11b4(%ebp)
 805042d:	50                   	push   %eax
 805042e:	68 3c 51 05 08       	push   $0x805513c
 8050433:	e8 90 da ff ff       	call   804dec8 <yydestruct>
 8050438:	83 c4 10             	add    $0x10,%esp
 805043b:	83 ad 4c ee ff ff 04 	subl   $0x4,-0x11b4(%ebp)
 8050442:	83 ad 44 ee ff ff 02 	subl   $0x2,-0x11bc(%ebp)
 8050449:	83 ad 54 ee ff ff 10 	subl   $0x10,-0x11ac(%ebp)
 8050450:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 8050456:	0f b7 00             	movzwl (%eax),%eax
 8050459:	98                   	cwtl   
 805045a:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8050460:	e9 00 ff ff ff       	jmp    8050365 <yyparse+0x248a>
 8050465:	90                   	nop
 8050466:	83 85 4c ee ff ff 04 	addl   $0x4,-0x11b4(%ebp)
 805046d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050473:	8b 15 70 95 05 08    	mov    0x8059570,%edx
 8050479:	89 10                	mov    %edx,(%eax)
 805047b:	a1 ac 90 05 08       	mov    0x80590ac,%eax
 8050480:	89 85 b4 ee ff ff    	mov    %eax,-0x114c(%ebp)
 8050486:	a1 b0 90 05 08       	mov    0x80590b0,%eax
 805048b:	89 85 b8 ee ff ff    	mov    %eax,-0x1148(%ebp)
 8050491:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050496:	89 85 bc ee ff ff    	mov    %eax,-0x1144(%ebp)
 805049c:	a1 b8 90 05 08       	mov    0x80590b8,%eax
 80504a1:	89 85 c0 ee ff ff    	mov    %eax,-0x1140(%ebp)
 80504a7:	8b 85 a4 ee ff ff    	mov    -0x115c(%ebp),%eax
 80504ad:	89 85 84 ee ff ff    	mov    %eax,-0x117c(%ebp)
 80504b3:	8b 85 a8 ee ff ff    	mov    -0x1158(%ebp),%eax
 80504b9:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%ebp)
 80504bf:	8b 85 bc ee ff ff    	mov    -0x1144(%ebp),%eax
 80504c5:	89 85 8c ee ff ff    	mov    %eax,-0x1174(%ebp)
 80504cb:	8b 85 c0 ee ff ff    	mov    -0x1140(%ebp),%eax
 80504d1:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%ebp)
 80504d7:	83 85 54 ee ff ff 10 	addl   $0x10,-0x11ac(%ebp)
 80504de:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 80504e4:	8b 95 84 ee ff ff    	mov    -0x117c(%ebp),%edx
 80504ea:	89 10                	mov    %edx,(%eax)
 80504ec:	8b 95 88 ee ff ff    	mov    -0x1178(%ebp),%edx
 80504f2:	89 50 04             	mov    %edx,0x4(%eax)
 80504f5:	8b 95 8c ee ff ff    	mov    -0x1174(%ebp),%edx
 80504fb:	89 50 08             	mov    %edx,0x8(%eax)
 80504fe:	8b 95 90 ee ff ff    	mov    -0x1170(%ebp),%edx
 8050504:	89 50 0c             	mov    %edx,0xc(%eax)
 8050507:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 805050d:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8050513:	e9 90 da ff ff       	jmp    804dfa8 <yyparse+0xcd>
 8050518:	90                   	nop
 8050519:	c7 85 60 ee ff ff 00 	movl   $0x0,-0x11a0(%ebp)
 8050520:	00 00 00 
 8050523:	eb 2e                	jmp    8050553 <yyparse+0x2678>
 8050525:	90                   	nop
 8050526:	eb 01                	jmp    8050529 <yyparse+0x264e>
 8050528:	90                   	nop
 8050529:	c7 85 60 ee ff ff 01 	movl   $0x1,-0x11a0(%ebp)
 8050530:	00 00 00 
 8050533:	eb 1e                	jmp    8050553 <yyparse+0x2678>
 8050535:	90                   	nop
 8050536:	eb 01                	jmp    8050539 <yyparse+0x265e>
 8050538:	90                   	nop
 8050539:	83 ec 0c             	sub    $0xc,%esp
 805053c:	68 4b 51 05 08       	push   $0x805514b
 8050541:	e8 a7 2d 00 00       	call   80532ed <yyerror>
 8050546:	83 c4 10             	add    $0x10,%esp
 8050549:	c7 85 60 ee ff ff 02 	movl   $0x2,-0x11a0(%ebp)
 8050550:	00 00 00 
 8050553:	a1 68 95 05 08       	mov    0x8059568,%eax
 8050558:	83 f8 fe             	cmp    $0xfffffffe,%eax
 805055b:	74 45                	je     80505a2 <yyparse+0x26c7>
 805055d:	a1 68 95 05 08       	mov    0x8059568,%eax
 8050562:	3d 1e 01 00 00       	cmp    $0x11e,%eax
 8050567:	77 11                	ja     805057a <yyparse+0x269f>
 8050569:	a1 68 95 05 08       	mov    0x8059568,%eax
 805056e:	0f b6 80 e0 49 05 08 	movzbl 0x80549e0(%eax),%eax
 8050575:	0f b6 c0             	movzbl %al,%eax
 8050578:	eb 05                	jmp    805057f <yyparse+0x26a4>
 805057a:	b8 02 00 00 00       	mov    $0x2,%eax
 805057f:	89 85 64 ee ff ff    	mov    %eax,-0x119c(%ebp)
 8050585:	68 ac 90 05 08       	push   $0x80590ac
 805058a:	68 70 95 05 08       	push   $0x8059570
 805058f:	ff b5 64 ee ff ff    	pushl  -0x119c(%ebp)
 8050595:	68 5c 51 05 08       	push   $0x805515c
 805059a:	e8 29 d9 ff ff       	call   804dec8 <yydestruct>
 805059f:	83 c4 10             	add    $0x10,%esp
 80505a2:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 80505a8:	c1 e0 02             	shl    $0x2,%eax
 80505ab:	f7 d8                	neg    %eax
 80505ad:	01 85 4c ee ff ff    	add    %eax,-0x11b4(%ebp)
 80505b3:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 80505b9:	01 c0                	add    %eax,%eax
 80505bb:	f7 d8                	neg    %eax
 80505bd:	01 85 44 ee ff ff    	add    %eax,-0x11bc(%ebp)
 80505c3:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 80505c9:	c1 e0 04             	shl    $0x4,%eax
 80505cc:	f7 d8                	neg    %eax
 80505ce:	01 85 54 ee ff ff    	add    %eax,-0x11ac(%ebp)
 80505d4:	eb 43                	jmp    8050619 <yyparse+0x273e>
 80505d6:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 80505dc:	0f b7 00             	movzwl (%eax),%eax
 80505df:	98                   	cwtl   
 80505e0:	0f b6 80 20 4f 05 08 	movzbl 0x8054f20(%eax),%eax
 80505e7:	0f b6 c0             	movzbl %al,%eax
 80505ea:	ff b5 54 ee ff ff    	pushl  -0x11ac(%ebp)
 80505f0:	ff b5 4c ee ff ff    	pushl  -0x11b4(%ebp)
 80505f6:	50                   	push   %eax
 80505f7:	68 7a 51 05 08       	push   $0x805517a
 80505fc:	e8 c7 d8 ff ff       	call   804dec8 <yydestruct>
 8050601:	83 c4 10             	add    $0x10,%esp
 8050604:	83 ad 4c ee ff ff 04 	subl   $0x4,-0x11b4(%ebp)
 805060b:	83 ad 44 ee ff ff 02 	subl   $0x2,-0x11bc(%ebp)
 8050612:	83 ad 54 ee ff ff 10 	subl   $0x10,-0x11ac(%ebp)
 8050619:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 805061f:	3b 85 40 ee ff ff    	cmp    -0x11c0(%ebp),%eax
 8050625:	75 af                	jne    80505d6 <yyparse+0x26fb>
 8050627:	8d 85 c4 ee ff ff    	lea    -0x113c(%ebp),%eax
 805062d:	39 85 40 ee ff ff    	cmp    %eax,-0x11c0(%ebp)
 8050633:	74 11                	je     8050646 <yyparse+0x276b>
 8050635:	83 ec 0c             	sub    $0xc,%esp
 8050638:	ff b5 40 ee ff ff    	pushl  -0x11c0(%ebp)
 805063e:	e8 8d 81 ff ff       	call   80487d0 <free@plt>
 8050643:	83 c4 10             	add    $0x10,%esp
 8050646:	8b 85 60 ee ff ff    	mov    -0x11a0(%ebp),%eax
 805064c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 805064f:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 8050656:	74 05                	je     805065d <yyparse+0x2782>
 8050658:	e8 b3 81 ff ff       	call   8048810 <__stack_chk_fail@plt>
 805065d:	c9                   	leave  
 805065e:	c3                   	ret    

0805065f <yylex>:
 805065f:	55                   	push   %ebp
 8050660:	89 e5                	mov    %esp,%ebp
 8050662:	53                   	push   %ebx
 8050663:	83 ec 34             	sub    $0x34,%esp
 8050666:	a1 44 91 05 08       	mov    0x8059144,%eax
 805066b:	85 c0                	test   %eax,%eax
 805066d:	0f 85 95 00 00 00    	jne    8050708 <yylex+0xa9>
 8050673:	c7 05 44 91 05 08 01 	movl   $0x1,0x8059144
 805067a:	00 00 00 
 805067d:	a1 48 91 05 08       	mov    0x8059148,%eax
 8050682:	85 c0                	test   %eax,%eax
 8050684:	75 0a                	jne    8050690 <yylex+0x31>
 8050686:	c7 05 48 91 05 08 01 	movl   $0x1,0x8059148
 805068d:	00 00 00 
 8050690:	a1 18 91 05 08       	mov    0x8059118,%eax
 8050695:	85 c0                	test   %eax,%eax
 8050697:	75 0a                	jne    80506a3 <yylex+0x44>
 8050699:	a1 00 91 05 08       	mov    0x8059100,%eax
 805069e:	a3 18 91 05 08       	mov    %eax,0x8059118
 80506a3:	a1 1c 91 05 08       	mov    0x805911c,%eax
 80506a8:	85 c0                	test   %eax,%eax
 80506aa:	75 0a                	jne    80506b6 <yylex+0x57>
 80506ac:	a1 04 91 05 08       	mov    0x8059104,%eax
 80506b1:	a3 1c 91 05 08       	mov    %eax,0x805911c
 80506b6:	a1 34 91 05 08       	mov    0x8059134,%eax
 80506bb:	85 c0                	test   %eax,%eax
 80506bd:	74 16                	je     80506d5 <yylex+0x76>
 80506bf:	a1 34 91 05 08       	mov    0x8059134,%eax
 80506c4:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80506ca:	c1 e2 02             	shl    $0x2,%edx
 80506cd:	01 d0                	add    %edx,%eax
 80506cf:	8b 00                	mov    (%eax),%eax
 80506d1:	85 c0                	test   %eax,%eax
 80506d3:	75 2e                	jne    8050703 <yylex+0xa4>
 80506d5:	e8 64 27 00 00       	call   8052e3e <yyensure_buffer_stack>
 80506da:	a1 34 91 05 08       	mov    0x8059134,%eax
 80506df:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80506e5:	c1 e2 02             	shl    $0x2,%edx
 80506e8:	8d 1c 10             	lea    (%eax,%edx,1),%ebx
 80506eb:	a1 18 91 05 08       	mov    0x8059118,%eax
 80506f0:	83 ec 08             	sub    $0x8,%esp
 80506f3:	68 00 40 00 00       	push   $0x4000
 80506f8:	50                   	push   %eax
 80506f9:	e8 92 23 00 00       	call   8052a90 <yy_create_buffer>
 80506fe:	83 c4 10             	add    $0x10,%esp
 8050701:	89 03                	mov    %eax,(%ebx)
 8050703:	e8 1e 23 00 00       	call   8052a26 <yy_load_buffer_state>
 8050708:	a1 40 91 05 08       	mov    0x8059140,%eax
 805070d:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050710:	0f b6 15 38 91 05 08 	movzbl 0x8059138,%edx
 8050717:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805071a:	88 10                	mov    %dl,(%eax)
 805071c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805071f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8050722:	a1 48 91 05 08       	mov    0x8059148,%eax
 8050727:	89 45 dc             	mov    %eax,-0x24(%ebp)
 805072a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805072d:	0f b6 00             	movzbl (%eax),%eax
 8050730:	0f b6 c0             	movzbl %al,%eax
 8050733:	0f b6 80 60 53 05 08 	movzbl 0x8055360(%eax),%eax
 805073a:	88 45 d9             	mov    %al,-0x27(%ebp)
 805073d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8050740:	0f b7 84 00 a0 52 05 	movzwl 0x80552a0(%eax,%eax,1),%eax
 8050747:	08 
 8050748:	66 85 c0             	test   %ax,%ax
 805074b:	74 35                	je     8050782 <yylex+0x123>
 805074d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8050750:	a3 50 91 05 08       	mov    %eax,0x8059150
 8050755:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8050758:	a3 54 91 05 08       	mov    %eax,0x8059154
 805075d:	eb 23                	jmp    8050782 <yylex+0x123>
 805075f:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8050762:	0f b7 84 00 60 55 05 	movzwl 0x8055560(%eax,%eax,1),%eax
 8050769:	08 
 805076a:	98                   	cwtl   
 805076b:	89 45 dc             	mov    %eax,-0x24(%ebp)
 805076e:	83 7d dc 51          	cmpl   $0x51,-0x24(%ebp)
 8050772:	7e 0e                	jle    8050782 <yylex+0x123>
 8050774:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
 8050778:	0f b6 80 60 54 05 08 	movzbl 0x8055460(%eax),%eax
 805077f:	88 45 d9             	mov    %al,-0x27(%ebp)
 8050782:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8050785:	0f b7 84 00 a0 54 05 	movzwl 0x80554a0(%eax,%eax,1),%eax
 805078c:	08 
 805078d:	0f b7 d0             	movzwl %ax,%edx
 8050790:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
 8050794:	01 d0                	add    %edx,%eax
 8050796:	0f b7 84 00 e0 57 05 	movzwl 0x80557e0(%eax,%eax,1),%eax
 805079d:	08 
 805079e:	98                   	cwtl   
 805079f:	3b 45 dc             	cmp    -0x24(%ebp),%eax
 80507a2:	75 bb                	jne    805075f <yylex+0x100>
 80507a4:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80507a7:	0f b7 84 00 a0 54 05 	movzwl 0x80554a0(%eax,%eax,1),%eax
 80507ae:	08 
 80507af:	0f b7 d0             	movzwl %ax,%edx
 80507b2:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
 80507b6:	01 d0                	add    %edx,%eax
 80507b8:	0f b7 84 00 20 56 05 	movzwl 0x8055620(%eax,%eax,1),%eax
 80507bf:	08 
 80507c0:	0f b7 c0             	movzwl %ax,%eax
 80507c3:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80507c6:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 80507ca:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80507cd:	0f b7 84 00 a0 54 05 	movzwl 0x80554a0(%eax,%eax,1),%eax
 80507d4:	08 
 80507d5:	66 3d b0 00          	cmp    $0xb0,%ax
 80507d9:	0f 85 4b ff ff ff    	jne    805072a <yylex+0xcb>
 80507df:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80507e2:	0f b7 84 00 a0 52 05 	movzwl 0x80552a0(%eax,%eax,1),%eax
 80507e9:	08 
 80507ea:	98                   	cwtl   
 80507eb:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80507ee:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 80507f2:	75 1f                	jne    8050813 <yylex+0x1b4>
 80507f4:	a1 54 91 05 08       	mov    0x8059154,%eax
 80507f9:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80507fc:	a1 50 91 05 08       	mov    0x8059150,%eax
 8050801:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8050804:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8050807:	0f b7 84 00 a0 52 05 	movzwl 0x80552a0(%eax,%eax,1),%eax
 805080e:	08 
 805080f:	98                   	cwtl   
 8050810:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8050813:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8050816:	a3 64 95 05 08       	mov    %eax,0x8059564
 805081b:	8b 55 e0             	mov    -0x20(%ebp),%edx
 805081e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8050821:	29 c2                	sub    %eax,%edx
 8050823:	89 d0                	mov    %edx,%eax
 8050825:	a3 6c 95 05 08       	mov    %eax,0x805956c
 805082a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805082d:	0f b6 00             	movzbl (%eax),%eax
 8050830:	a2 38 91 05 08       	mov    %al,0x8059138
 8050835:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8050838:	c6 00 00             	movb   $0x0,(%eax)
 805083b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805083e:	a3 40 91 05 08       	mov    %eax,0x8059140
 8050843:	83 7d e8 27          	cmpl   $0x27,-0x18(%ebp)
 8050847:	74 44                	je     805088d <yylex+0x22e>
 8050849:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805084c:	8b 04 85 a0 59 05 08 	mov    0x80559a0(,%eax,4),%eax
 8050853:	85 c0                	test   %eax,%eax
 8050855:	74 36                	je     805088d <yylex+0x22e>
 8050857:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 805085e:	eb 23                	jmp    8050883 <yylex+0x224>
 8050860:	8b 15 64 95 05 08    	mov    0x8059564,%edx
 8050866:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8050869:	01 d0                	add    %edx,%eax
 805086b:	0f b6 00             	movzbl (%eax),%eax
 805086e:	3c 0a                	cmp    $0xa,%al
 8050870:	75 0d                	jne    805087f <yylex+0x220>
 8050872:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050877:	83 c0 01             	add    $0x1,%eax
 805087a:	a3 bc 90 05 08       	mov    %eax,0x80590bc
 805087f:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 8050883:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050888:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 805088b:	72 d3                	jb     8050860 <yylex+0x201>
 805088d:	83 7d e8 28          	cmpl   $0x28,-0x18(%ebp)
 8050891:	0f 87 a9 16 00 00    	ja     8051f40 <yylex+0x18e1>
 8050897:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805089a:	c1 e0 02             	shl    $0x2,%eax
 805089d:	05 a8 5b 05 08       	add    $0x8055ba8,%eax
 80508a2:	8b 00                	mov    (%eax),%eax
 80508a4:	ff e0                	jmp    *%eax
 80508a6:	0f b6 15 38 91 05 08 	movzbl 0x8059138,%edx
 80508ad:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80508b0:	88 10                	mov    %dl,(%eax)
 80508b2:	a1 54 91 05 08       	mov    0x8059154,%eax
 80508b7:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80508ba:	a1 50 91 05 08       	mov    0x8059150,%eax
 80508bf:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80508c2:	e9 18 ff ff ff       	jmp    80507df <yylex+0x180>
 80508c7:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80508cc:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 80508d1:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 80508d6:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 80508db:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80508e0:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 80508e5:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80508ea:	89 c2                	mov    %eax,%edx
 80508ec:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80508f1:	01 d0                	add    %edx,%eax
 80508f3:	83 e8 01             	sub    $0x1,%eax
 80508f6:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80508fb:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050900:	89 c2                	mov    %eax,%edx
 8050902:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050907:	01 d0                	add    %edx,%eax
 8050909:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 805090e:	c7 05 c0 90 05 08 01 	movl   $0x1,0x80590c0
 8050915:	00 00 00 
 8050918:	c7 05 28 91 05 08 01 	movl   $0x1,0x8059128
 805091f:	00 00 00 
 8050922:	e9 27 16 00 00       	jmp    8051f4e <yylex+0x18ef>
 8050927:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 805092c:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050931:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050936:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 805093b:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050940:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050945:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805094a:	89 c2                	mov    %eax,%edx
 805094c:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050951:	01 d0                	add    %edx,%eax
 8050953:	83 e8 01             	sub    $0x1,%eax
 8050956:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 805095b:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050960:	89 c2                	mov    %eax,%edx
 8050962:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050967:	01 d0                	add    %edx,%eax
 8050969:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 805096e:	e9 db 15 00 00       	jmp    8051f4e <yylex+0x18ef>
 8050973:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050978:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 805097d:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050982:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050987:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805098c:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050991:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050996:	89 c2                	mov    %eax,%edx
 8050998:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805099d:	01 d0                	add    %edx,%eax
 805099f:	83 e8 01             	sub    $0x1,%eax
 80509a2:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80509a7:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80509ac:	89 c2                	mov    %eax,%edx
 80509ae:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80509b3:	01 d0                	add    %edx,%eax
 80509b5:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80509ba:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80509bf:	83 ec 08             	sub    $0x8,%esp
 80509c2:	50                   	push   %eax
 80509c3:	68 3c 5a 05 08       	push   $0x8055a3c
 80509c8:	e8 3b 81 ff ff       	call   8048b08 <createNode>
 80509cd:	83 c4 10             	add    $0x10,%esp
 80509d0:	a3 70 95 05 08       	mov    %eax,0x8059570
 80509d5:	a1 70 95 05 08       	mov    0x8059570,%eax
 80509da:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 80509e1:	8b 1d 70 95 05 08    	mov    0x8059570,%ebx
 80509e7:	a1 64 95 05 08       	mov    0x8059564,%eax
 80509ec:	83 ec 0c             	sub    $0xc,%esp
 80509ef:	50                   	push   %eax
 80509f0:	e8 7b 7f ff ff       	call   8048970 <atoi@plt>
 80509f5:	83 c4 10             	add    $0x10,%esp
 80509f8:	89 43 08             	mov    %eax,0x8(%ebx)
 80509fb:	b8 02 01 00 00       	mov    $0x102,%eax
 8050a00:	e9 4e 15 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050a05:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050a0a:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050a0f:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050a14:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050a19:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050a1e:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050a23:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050a28:	89 c2                	mov    %eax,%edx
 8050a2a:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050a2f:	01 d0                	add    %edx,%eax
 8050a31:	83 e8 01             	sub    $0x1,%eax
 8050a34:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050a39:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050a3e:	89 c2                	mov    %eax,%edx
 8050a40:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050a45:	01 d0                	add    %edx,%eax
 8050a47:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050a4c:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050a51:	83 ec 08             	sub    $0x8,%esp
 8050a54:	50                   	push   %eax
 8050a55:	68 3c 5a 05 08       	push   $0x8055a3c
 8050a5a:	e8 a9 80 ff ff       	call   8048b08 <createNode>
 8050a5f:	83 c4 10             	add    $0x10,%esp
 8050a62:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050a67:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050a6c:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 8050a73:	8b 1d 70 95 05 08    	mov    0x8059570,%ebx
 8050a79:	a1 64 95 05 08       	mov    0x8059564,%eax
 8050a7e:	83 ec 04             	sub    $0x4,%esp
 8050a81:	6a 10                	push   $0x10
 8050a83:	6a 00                	push   $0x0
 8050a85:	50                   	push   %eax
 8050a86:	e8 15 7f ff ff       	call   80489a0 <strtol@plt>
 8050a8b:	83 c4 10             	add    $0x10,%esp
 8050a8e:	89 43 08             	mov    %eax,0x8(%ebx)
 8050a91:	b8 02 01 00 00       	mov    $0x102,%eax
 8050a96:	e9 b8 14 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050a9b:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050aa0:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050aa5:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050aaa:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050aaf:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050ab4:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050ab9:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050abe:	89 c2                	mov    %eax,%edx
 8050ac0:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050ac5:	01 d0                	add    %edx,%eax
 8050ac7:	83 e8 01             	sub    $0x1,%eax
 8050aca:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050acf:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050ad4:	89 c2                	mov    %eax,%edx
 8050ad6:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050adb:	01 d0                	add    %edx,%eax
 8050add:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050ae2:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050ae7:	83 ec 08             	sub    $0x8,%esp
 8050aea:	50                   	push   %eax
 8050aeb:	68 3c 5a 05 08       	push   $0x8055a3c
 8050af0:	e8 13 80 ff ff       	call   8048b08 <createNode>
 8050af5:	83 c4 10             	add    $0x10,%esp
 8050af8:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050afd:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050b02:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 8050b09:	8b 1d 70 95 05 08    	mov    0x8059570,%ebx
 8050b0f:	a1 64 95 05 08       	mov    0x8059564,%eax
 8050b14:	83 ec 04             	sub    $0x4,%esp
 8050b17:	6a 08                	push   $0x8
 8050b19:	6a 00                	push   $0x0
 8050b1b:	50                   	push   %eax
 8050b1c:	e8 7f 7e ff ff       	call   80489a0 <strtol@plt>
 8050b21:	83 c4 10             	add    $0x10,%esp
 8050b24:	89 43 08             	mov    %eax,0x8(%ebx)
 8050b27:	b8 02 01 00 00       	mov    $0x102,%eax
 8050b2c:	e9 22 14 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050b31:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050b36:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050b3b:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050b40:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050b45:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050b4a:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050b4f:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050b54:	89 c2                	mov    %eax,%edx
 8050b56:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050b5b:	01 d0                	add    %edx,%eax
 8050b5d:	83 e8 01             	sub    $0x1,%eax
 8050b60:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050b65:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050b6a:	89 c2                	mov    %eax,%edx
 8050b6c:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050b71:	01 d0                	add    %edx,%eax
 8050b73:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050b78:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050b7d:	83 ec 08             	sub    $0x8,%esp
 8050b80:	50                   	push   %eax
 8050b81:	68 40 5a 05 08       	push   $0x8055a40
 8050b86:	e8 7d 7f ff ff       	call   8048b08 <createNode>
 8050b8b:	83 c4 10             	add    $0x10,%esp
 8050b8e:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050b93:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050b98:	c7 40 04 02 00 00 00 	movl   $0x2,0x4(%eax)
 8050b9f:	8b 1d 70 95 05 08    	mov    0x8059570,%ebx
 8050ba5:	a1 64 95 05 08       	mov    0x8059564,%eax
 8050baa:	83 ec 0c             	sub    $0xc,%esp
 8050bad:	50                   	push   %eax
 8050bae:	e8 cd 7d ff ff       	call   8048980 <atof@plt>
 8050bb3:	83 c4 10             	add    $0x10,%esp
 8050bb6:	d9 5d d4             	fstps  -0x2c(%ebp)
 8050bb9:	d9 45 d4             	flds   -0x2c(%ebp)
 8050bbc:	d9 5b 08             	fstps  0x8(%ebx)
 8050bbf:	b8 03 01 00 00       	mov    $0x103,%eax
 8050bc4:	e9 8a 13 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050bc9:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050bce:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050bd3:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050bd8:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050bdd:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050be2:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050be7:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050bec:	89 c2                	mov    %eax,%edx
 8050bee:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050bf3:	01 d0                	add    %edx,%eax
 8050bf5:	83 e8 01             	sub    $0x1,%eax
 8050bf8:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050bfd:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050c02:	89 c2                	mov    %eax,%edx
 8050c04:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050c09:	01 d0                	add    %edx,%eax
 8050c0b:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050c10:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050c15:	83 ec 08             	sub    $0x8,%esp
 8050c18:	50                   	push   %eax
 8050c19:	68 40 5a 05 08       	push   $0x8055a40
 8050c1e:	e8 e5 7e ff ff       	call   8048b08 <createNode>
 8050c23:	83 c4 10             	add    $0x10,%esp
 8050c26:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050c2b:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050c30:	c7 40 04 02 00 00 00 	movl   $0x2,0x4(%eax)
 8050c37:	8b 1d 70 95 05 08    	mov    0x8059570,%ebx
 8050c3d:	a1 64 95 05 08       	mov    0x8059564,%eax
 8050c42:	83 ec 0c             	sub    $0xc,%esp
 8050c45:	50                   	push   %eax
 8050c46:	e8 35 7d ff ff       	call   8048980 <atof@plt>
 8050c4b:	83 c4 10             	add    $0x10,%esp
 8050c4e:	d9 5d d4             	fstps  -0x2c(%ebp)
 8050c51:	d9 45 d4             	flds   -0x2c(%ebp)
 8050c54:	d9 5b 08             	fstps  0x8(%ebx)
 8050c57:	b8 03 01 00 00       	mov    $0x103,%eax
 8050c5c:	e9 f2 12 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050c61:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050c66:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050c6b:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050c70:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050c75:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050c7a:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050c7f:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050c84:	89 c2                	mov    %eax,%edx
 8050c86:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050c8b:	01 d0                	add    %edx,%eax
 8050c8d:	83 e8 01             	sub    $0x1,%eax
 8050c90:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050c95:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050c9a:	89 c2                	mov    %eax,%edx
 8050c9c:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050ca1:	01 d0                	add    %edx,%eax
 8050ca3:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050ca8:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050cad:	83 ec 08             	sub    $0x8,%esp
 8050cb0:	50                   	push   %eax
 8050cb1:	68 46 5a 05 08       	push   $0x8055a46
 8050cb6:	e8 4d 7e ff ff       	call   8048b08 <createNode>
 8050cbb:	83 c4 10             	add    $0x10,%esp
 8050cbe:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050cc3:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050cc8:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050ccf:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050cd4:	c7 40 04 08 00 00 00 	movl   $0x8,0x4(%eax)
 8050cdb:	b8 05 01 00 00       	mov    $0x105,%eax
 8050ce0:	e9 6e 12 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050ce5:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050cea:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050cef:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050cf4:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050cf9:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050cfe:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050d03:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050d08:	89 c2                	mov    %eax,%edx
 8050d0a:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050d0f:	01 d0                	add    %edx,%eax
 8050d11:	83 e8 01             	sub    $0x1,%eax
 8050d14:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050d19:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050d1e:	89 c2                	mov    %eax,%edx
 8050d20:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050d25:	01 d0                	add    %edx,%eax
 8050d27:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050d2c:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050d31:	83 ec 08             	sub    $0x8,%esp
 8050d34:	50                   	push   %eax
 8050d35:	68 4b 5a 05 08       	push   $0x8055a4b
 8050d3a:	e8 c9 7d ff ff       	call   8048b08 <createNode>
 8050d3f:	83 c4 10             	add    $0x10,%esp
 8050d42:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050d47:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050d4c:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050d53:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050d58:	c7 40 04 09 00 00 00 	movl   $0x9,0x4(%eax)
 8050d5f:	b8 06 01 00 00       	mov    $0x106,%eax
 8050d64:	e9 ea 11 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050d69:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050d6e:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050d73:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050d78:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050d7d:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050d82:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050d87:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050d8c:	89 c2                	mov    %eax,%edx
 8050d8e:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050d93:	01 d0                	add    %edx,%eax
 8050d95:	83 e8 01             	sub    $0x1,%eax
 8050d98:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050d9d:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050da2:	89 c2                	mov    %eax,%edx
 8050da4:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050da9:	01 d0                	add    %edx,%eax
 8050dab:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050db0:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050db5:	83 ec 08             	sub    $0x8,%esp
 8050db8:	50                   	push   %eax
 8050db9:	68 51 5a 05 08       	push   $0x8055a51
 8050dbe:	e8 45 7d ff ff       	call   8048b08 <createNode>
 8050dc3:	83 c4 10             	add    $0x10,%esp
 8050dc6:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050dcb:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050dd0:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050dd7:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050ddc:	c7 40 04 0a 00 00 00 	movl   $0xa,0x4(%eax)
 8050de3:	b8 07 01 00 00       	mov    $0x107,%eax
 8050de8:	e9 66 11 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050ded:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050df2:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050df7:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050dfc:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050e01:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050e06:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050e0b:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050e10:	89 c2                	mov    %eax,%edx
 8050e12:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050e17:	01 d0                	add    %edx,%eax
 8050e19:	83 e8 01             	sub    $0x1,%eax
 8050e1c:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050e21:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050e26:	89 c2                	mov    %eax,%edx
 8050e28:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050e2d:	01 d0                	add    %edx,%eax
 8050e2f:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050e34:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050e39:	83 ec 08             	sub    $0x8,%esp
 8050e3c:	50                   	push   %eax
 8050e3d:	68 5a 5a 05 08       	push   $0x8055a5a
 8050e42:	e8 c1 7c ff ff       	call   8048b08 <createNode>
 8050e47:	83 c4 10             	add    $0x10,%esp
 8050e4a:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050e4f:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050e54:	c7 40 04 0b 00 00 00 	movl   $0xb,0x4(%eax)
 8050e5b:	8b 1d 70 95 05 08    	mov    0x8059570,%ebx
 8050e61:	a1 64 95 05 08       	mov    0x8059564,%eax
 8050e66:	83 ec 0c             	sub    $0xc,%esp
 8050e69:	50                   	push   %eax
 8050e6a:	e8 41 7a ff ff       	call   80488b0 <strlen@plt>
 8050e6f:	83 c4 10             	add    $0x10,%esp
 8050e72:	83 ec 0c             	sub    $0xc,%esp
 8050e75:	50                   	push   %eax
 8050e76:	e8 05 7a ff ff       	call   8048880 <malloc@plt>
 8050e7b:	83 c4 10             	add    $0x10,%esp
 8050e7e:	89 43 08             	mov    %eax,0x8(%ebx)
 8050e81:	a1 64 95 05 08       	mov    0x8059564,%eax
 8050e86:	83 ec 0c             	sub    $0xc,%esp
 8050e89:	50                   	push   %eax
 8050e8a:	e8 21 7a ff ff       	call   80488b0 <strlen@plt>
 8050e8f:	83 c4 10             	add    $0x10,%esp
 8050e92:	89 c1                	mov    %eax,%ecx
 8050e94:	8b 15 64 95 05 08    	mov    0x8059564,%edx
 8050e9a:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050e9f:	8b 40 08             	mov    0x8(%eax),%eax
 8050ea2:	83 ec 04             	sub    $0x4,%esp
 8050ea5:	51                   	push   %ecx
 8050ea6:	52                   	push   %edx
 8050ea7:	50                   	push   %eax
 8050ea8:	e8 83 7a ff ff       	call   8048930 <strncpy@plt>
 8050ead:	83 c4 10             	add    $0x10,%esp
 8050eb0:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050eb5:	8b 58 08             	mov    0x8(%eax),%ebx
 8050eb8:	a1 64 95 05 08       	mov    0x8059564,%eax
 8050ebd:	83 ec 0c             	sub    $0xc,%esp
 8050ec0:	50                   	push   %eax
 8050ec1:	e8 ea 79 ff ff       	call   80488b0 <strlen@plt>
 8050ec6:	83 c4 10             	add    $0x10,%esp
 8050ec9:	01 d8                	add    %ebx,%eax
 8050ecb:	c6 00 00             	movb   $0x0,(%eax)
 8050ece:	b8 08 01 00 00       	mov    $0x108,%eax
 8050ed3:	e9 7b 10 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050ed8:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050edd:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050ee2:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050ee7:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050eec:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050ef1:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050ef6:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050efb:	89 c2                	mov    %eax,%edx
 8050efd:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050f02:	01 d0                	add    %edx,%eax
 8050f04:	83 e8 01             	sub    $0x1,%eax
 8050f07:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050f0c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050f11:	89 c2                	mov    %eax,%edx
 8050f13:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050f18:	01 d0                	add    %edx,%eax
 8050f1a:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050f1f:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050f24:	83 ec 08             	sub    $0x8,%esp
 8050f27:	50                   	push   %eax
 8050f28:	68 60 5a 05 08       	push   $0x8055a60
 8050f2d:	e8 d6 7b ff ff       	call   8048b08 <createNode>
 8050f32:	83 c4 10             	add    $0x10,%esp
 8050f35:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050f3a:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050f3f:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050f46:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050f4b:	c7 40 04 0c 00 00 00 	movl   $0xc,0x4(%eax)
 8050f52:	b8 09 01 00 00       	mov    $0x109,%eax
 8050f57:	e9 f7 0f 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050f5c:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050f61:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050f66:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050f6b:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050f70:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050f75:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050f7a:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050f7f:	89 c2                	mov    %eax,%edx
 8050f81:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050f86:	01 d0                	add    %edx,%eax
 8050f88:	83 e8 01             	sub    $0x1,%eax
 8050f8b:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8050f90:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050f95:	89 c2                	mov    %eax,%edx
 8050f97:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8050f9c:	01 d0                	add    %edx,%eax
 8050f9e:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8050fa3:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050fa8:	83 ec 08             	sub    $0x8,%esp
 8050fab:	50                   	push   %eax
 8050fac:	68 65 5a 05 08       	push   $0x8055a65
 8050fb1:	e8 52 7b ff ff       	call   8048b08 <createNode>
 8050fb6:	83 c4 10             	add    $0x10,%esp
 8050fb9:	a3 70 95 05 08       	mov    %eax,0x8059570
 8050fbe:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050fc3:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8050fca:	a1 70 95 05 08       	mov    0x8059570,%eax
 8050fcf:	c7 40 04 0d 00 00 00 	movl   $0xd,0x4(%eax)
 8050fd6:	b8 0a 01 00 00       	mov    $0x10a,%eax
 8050fdb:	e9 73 0f 00 00       	jmp    8051f53 <yylex+0x18f4>
 8050fe0:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8050fe5:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8050fea:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8050fef:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8050ff4:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8050ff9:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8050ffe:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051003:	89 c2                	mov    %eax,%edx
 8051005:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805100a:	01 d0                	add    %edx,%eax
 805100c:	83 e8 01             	sub    $0x1,%eax
 805100f:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051014:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051019:	89 c2                	mov    %eax,%edx
 805101b:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051020:	01 d0                	add    %edx,%eax
 8051022:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051027:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 805102c:	83 ec 08             	sub    $0x8,%esp
 805102f:	50                   	push   %eax
 8051030:	68 6b 5a 05 08       	push   $0x8055a6b
 8051035:	e8 ce 7a ff ff       	call   8048b08 <createNode>
 805103a:	83 c4 10             	add    $0x10,%esp
 805103d:	a3 70 95 05 08       	mov    %eax,0x8059570
 8051042:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051047:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 805104e:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051053:	c7 40 04 0e 00 00 00 	movl   $0xe,0x4(%eax)
 805105a:	b8 0b 01 00 00       	mov    $0x10b,%eax
 805105f:	e9 ef 0e 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051064:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051069:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 805106e:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051073:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051078:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805107d:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051082:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051087:	89 c2                	mov    %eax,%edx
 8051089:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805108e:	01 d0                	add    %edx,%eax
 8051090:	83 e8 01             	sub    $0x1,%eax
 8051093:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051098:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805109d:	89 c2                	mov    %eax,%edx
 805109f:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80510a4:	01 d0                	add    %edx,%eax
 80510a6:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80510ab:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80510b0:	83 ec 08             	sub    $0x8,%esp
 80510b3:	50                   	push   %eax
 80510b4:	68 70 5a 05 08       	push   $0x8055a70
 80510b9:	e8 4a 7a ff ff       	call   8048b08 <createNode>
 80510be:	83 c4 10             	add    $0x10,%esp
 80510c1:	a3 70 95 05 08       	mov    %eax,0x8059570
 80510c6:	a1 70 95 05 08       	mov    0x8059570,%eax
 80510cb:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80510d2:	a1 70 95 05 08       	mov    0x8059570,%eax
 80510d7:	c7 40 04 0f 00 00 00 	movl   $0xf,0x4(%eax)
 80510de:	b8 0c 01 00 00       	mov    $0x10c,%eax
 80510e3:	e9 6b 0e 00 00       	jmp    8051f53 <yylex+0x18f4>
 80510e8:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80510ed:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 80510f2:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 80510f7:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 80510fc:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051101:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051106:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805110b:	89 c2                	mov    %eax,%edx
 805110d:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051112:	01 d0                	add    %edx,%eax
 8051114:	83 e8 01             	sub    $0x1,%eax
 8051117:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 805111c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051121:	89 c2                	mov    %eax,%edx
 8051123:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051128:	01 d0                	add    %edx,%eax
 805112a:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 805112f:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051134:	83 ec 08             	sub    $0x8,%esp
 8051137:	50                   	push   %eax
 8051138:	68 74 5a 05 08       	push   $0x8055a74
 805113d:	e8 c6 79 ff ff       	call   8048b08 <createNode>
 8051142:	83 c4 10             	add    $0x10,%esp
 8051145:	a3 70 95 05 08       	mov    %eax,0x8059570
 805114a:	a1 70 95 05 08       	mov    0x8059570,%eax
 805114f:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8051156:	a1 70 95 05 08       	mov    0x8059570,%eax
 805115b:	c7 40 04 10 00 00 00 	movl   $0x10,0x4(%eax)
 8051162:	b8 0d 01 00 00       	mov    $0x10d,%eax
 8051167:	e9 e7 0d 00 00       	jmp    8051f53 <yylex+0x18f4>
 805116c:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051171:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051176:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 805117b:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051180:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051185:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 805118a:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805118f:	89 c2                	mov    %eax,%edx
 8051191:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051196:	01 d0                	add    %edx,%eax
 8051198:	83 e8 01             	sub    $0x1,%eax
 805119b:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80511a0:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80511a5:	89 c2                	mov    %eax,%edx
 80511a7:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80511ac:	01 d0                	add    %edx,%eax
 80511ae:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80511b3:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80511b8:	83 ec 08             	sub    $0x8,%esp
 80511bb:	50                   	push   %eax
 80511bc:	68 78 5a 05 08       	push   $0x8055a78
 80511c1:	e8 42 79 ff ff       	call   8048b08 <createNode>
 80511c6:	83 c4 10             	add    $0x10,%esp
 80511c9:	a3 70 95 05 08       	mov    %eax,0x8059570
 80511ce:	a1 70 95 05 08       	mov    0x8059570,%eax
 80511d3:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80511da:	a1 70 95 05 08       	mov    0x8059570,%eax
 80511df:	c7 40 04 11 00 00 00 	movl   $0x11,0x4(%eax)
 80511e6:	b8 0e 01 00 00       	mov    $0x10e,%eax
 80511eb:	e9 63 0d 00 00       	jmp    8051f53 <yylex+0x18f4>
 80511f0:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80511f5:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 80511fa:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 80511ff:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051204:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051209:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 805120e:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051213:	89 c2                	mov    %eax,%edx
 8051215:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805121a:	01 d0                	add    %edx,%eax
 805121c:	83 e8 01             	sub    $0x1,%eax
 805121f:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051224:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051229:	89 c2                	mov    %eax,%edx
 805122b:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051230:	01 d0                	add    %edx,%eax
 8051232:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051237:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 805123c:	83 ec 08             	sub    $0x8,%esp
 805123f:	50                   	push   %eax
 8051240:	68 7b 5a 05 08       	push   $0x8055a7b
 8051245:	e8 be 78 ff ff       	call   8048b08 <createNode>
 805124a:	83 c4 10             	add    $0x10,%esp
 805124d:	a3 70 95 05 08       	mov    %eax,0x8059570
 8051252:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051257:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 805125e:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051263:	c7 40 04 12 00 00 00 	movl   $0x12,0x4(%eax)
 805126a:	b8 0f 01 00 00       	mov    $0x10f,%eax
 805126f:	e9 df 0c 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051274:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051279:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 805127e:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051283:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051288:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805128d:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051292:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051297:	89 c2                	mov    %eax,%edx
 8051299:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805129e:	01 d0                	add    %edx,%eax
 80512a0:	83 e8 01             	sub    $0x1,%eax
 80512a3:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80512a8:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80512ad:	89 c2                	mov    %eax,%edx
 80512af:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80512b4:	01 d0                	add    %edx,%eax
 80512b6:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80512bb:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80512c0:	83 ec 08             	sub    $0x8,%esp
 80512c3:	50                   	push   %eax
 80512c4:	68 7f 5a 05 08       	push   $0x8055a7f
 80512c9:	e8 3a 78 ff ff       	call   8048b08 <createNode>
 80512ce:	83 c4 10             	add    $0x10,%esp
 80512d1:	a3 70 95 05 08       	mov    %eax,0x8059570
 80512d6:	a1 70 95 05 08       	mov    0x8059570,%eax
 80512db:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80512e2:	a1 70 95 05 08       	mov    0x8059570,%eax
 80512e7:	c7 40 04 13 00 00 00 	movl   $0x13,0x4(%eax)
 80512ee:	b8 10 01 00 00       	mov    $0x110,%eax
 80512f3:	e9 5b 0c 00 00       	jmp    8051f53 <yylex+0x18f4>
 80512f8:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80512fd:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051302:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051307:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 805130c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051311:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051316:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805131b:	89 c2                	mov    %eax,%edx
 805131d:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051322:	01 d0                	add    %edx,%eax
 8051324:	83 e8 01             	sub    $0x1,%eax
 8051327:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 805132c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051331:	89 c2                	mov    %eax,%edx
 8051333:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051338:	01 d0                	add    %edx,%eax
 805133a:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 805133f:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051344:	83 ec 08             	sub    $0x8,%esp
 8051347:	50                   	push   %eax
 8051348:	68 83 5a 05 08       	push   $0x8055a83
 805134d:	e8 b6 77 ff ff       	call   8048b08 <createNode>
 8051352:	83 c4 10             	add    $0x10,%esp
 8051355:	a3 70 95 05 08       	mov    %eax,0x8059570
 805135a:	a1 70 95 05 08       	mov    0x8059570,%eax
 805135f:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8051366:	a1 70 95 05 08       	mov    0x8059570,%eax
 805136b:	c7 40 04 14 00 00 00 	movl   $0x14,0x4(%eax)
 8051372:	b8 11 01 00 00       	mov    $0x111,%eax
 8051377:	e9 d7 0b 00 00       	jmp    8051f53 <yylex+0x18f4>
 805137c:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051381:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051386:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 805138b:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051390:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051395:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 805139a:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805139f:	89 c2                	mov    %eax,%edx
 80513a1:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80513a6:	01 d0                	add    %edx,%eax
 80513a8:	83 e8 01             	sub    $0x1,%eax
 80513ab:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80513b0:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80513b5:	89 c2                	mov    %eax,%edx
 80513b7:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80513bc:	01 d0                	add    %edx,%eax
 80513be:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80513c3:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80513c8:	83 ec 08             	sub    $0x8,%esp
 80513cb:	50                   	push   %eax
 80513cc:	68 86 5a 05 08       	push   $0x8055a86
 80513d1:	e8 32 77 ff ff       	call   8048b08 <createNode>
 80513d6:	83 c4 10             	add    $0x10,%esp
 80513d9:	a3 70 95 05 08       	mov    %eax,0x8059570
 80513de:	a1 70 95 05 08       	mov    0x8059570,%eax
 80513e3:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80513ea:	a1 70 95 05 08       	mov    0x8059570,%eax
 80513ef:	c7 40 04 15 00 00 00 	movl   $0x15,0x4(%eax)
 80513f6:	b8 12 01 00 00       	mov    $0x112,%eax
 80513fb:	e9 53 0b 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051400:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051405:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 805140a:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 805140f:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051414:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051419:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 805141e:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051423:	89 c2                	mov    %eax,%edx
 8051425:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805142a:	01 d0                	add    %edx,%eax
 805142c:	83 e8 01             	sub    $0x1,%eax
 805142f:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051434:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051439:	89 c2                	mov    %eax,%edx
 805143b:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051440:	01 d0                	add    %edx,%eax
 8051442:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051447:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 805144c:	83 ec 08             	sub    $0x8,%esp
 805144f:	50                   	push   %eax
 8051450:	68 89 5a 05 08       	push   $0x8055a89
 8051455:	e8 ae 76 ff ff       	call   8048b08 <createNode>
 805145a:	83 c4 10             	add    $0x10,%esp
 805145d:	a3 70 95 05 08       	mov    %eax,0x8059570
 8051462:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051467:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 805146e:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051473:	c7 40 04 16 00 00 00 	movl   $0x16,0x4(%eax)
 805147a:	b8 13 01 00 00       	mov    $0x113,%eax
 805147f:	e9 cf 0a 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051484:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051489:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 805148e:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051493:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051498:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805149d:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 80514a2:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80514a7:	89 c2                	mov    %eax,%edx
 80514a9:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80514ae:	01 d0                	add    %edx,%eax
 80514b0:	83 e8 01             	sub    $0x1,%eax
 80514b3:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80514b8:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80514bd:	89 c2                	mov    %eax,%edx
 80514bf:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80514c4:	01 d0                	add    %edx,%eax
 80514c6:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80514cb:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80514d0:	83 ec 08             	sub    $0x8,%esp
 80514d3:	50                   	push   %eax
 80514d4:	68 8c 5a 05 08       	push   $0x8055a8c
 80514d9:	e8 2a 76 ff ff       	call   8048b08 <createNode>
 80514de:	83 c4 10             	add    $0x10,%esp
 80514e1:	a3 70 95 05 08       	mov    %eax,0x8059570
 80514e6:	a1 70 95 05 08       	mov    0x8059570,%eax
 80514eb:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80514f2:	a1 70 95 05 08       	mov    0x8059570,%eax
 80514f7:	c7 40 04 17 00 00 00 	movl   $0x17,0x4(%eax)
 80514fe:	b8 14 01 00 00       	mov    $0x114,%eax
 8051503:	e9 4b 0a 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051508:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 805150d:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051512:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051517:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 805151c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051521:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051526:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805152b:	89 c2                	mov    %eax,%edx
 805152d:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051532:	01 d0                	add    %edx,%eax
 8051534:	83 e8 01             	sub    $0x1,%eax
 8051537:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 805153c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051541:	89 c2                	mov    %eax,%edx
 8051543:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051548:	01 d0                	add    %edx,%eax
 805154a:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 805154f:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051554:	83 ec 08             	sub    $0x8,%esp
 8051557:	50                   	push   %eax
 8051558:	68 8f 5a 05 08       	push   $0x8055a8f
 805155d:	e8 a6 75 ff ff       	call   8048b08 <createNode>
 8051562:	83 c4 10             	add    $0x10,%esp
 8051565:	a3 70 95 05 08       	mov    %eax,0x8059570
 805156a:	a1 70 95 05 08       	mov    0x8059570,%eax
 805156f:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8051576:	a1 70 95 05 08       	mov    0x8059570,%eax
 805157b:	c7 40 04 18 00 00 00 	movl   $0x18,0x4(%eax)
 8051582:	b8 15 01 00 00       	mov    $0x115,%eax
 8051587:	e9 c7 09 00 00       	jmp    8051f53 <yylex+0x18f4>
 805158c:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051591:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051596:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 805159b:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 80515a0:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80515a5:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 80515aa:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80515af:	89 c2                	mov    %eax,%edx
 80515b1:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80515b6:	01 d0                	add    %edx,%eax
 80515b8:	83 e8 01             	sub    $0x1,%eax
 80515bb:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80515c0:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80515c5:	89 c2                	mov    %eax,%edx
 80515c7:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80515cc:	01 d0                	add    %edx,%eax
 80515ce:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80515d3:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80515d8:	83 ec 08             	sub    $0x8,%esp
 80515db:	50                   	push   %eax
 80515dc:	68 92 5a 05 08       	push   $0x8055a92
 80515e1:	e8 22 75 ff ff       	call   8048b08 <createNode>
 80515e6:	83 c4 10             	add    $0x10,%esp
 80515e9:	a3 70 95 05 08       	mov    %eax,0x8059570
 80515ee:	a1 70 95 05 08       	mov    0x8059570,%eax
 80515f3:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80515fa:	a1 70 95 05 08       	mov    0x8059570,%eax
 80515ff:	c7 40 04 19 00 00 00 	movl   $0x19,0x4(%eax)
 8051606:	b8 16 01 00 00       	mov    $0x116,%eax
 805160b:	e9 43 09 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051610:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051615:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 805161a:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 805161f:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051624:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051629:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 805162e:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051633:	89 c2                	mov    %eax,%edx
 8051635:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805163a:	01 d0                	add    %edx,%eax
 805163c:	83 e8 01             	sub    $0x1,%eax
 805163f:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051644:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051649:	89 c2                	mov    %eax,%edx
 805164b:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051650:	01 d0                	add    %edx,%eax
 8051652:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051657:	e8 51 11 00 00       	call   80527ad <input>
 805165c:	88 45 da             	mov    %al,-0x26(%ebp)
 805165f:	eb 08                	jmp    8051669 <yylex+0x100a>
 8051661:	e8 47 11 00 00       	call   80527ad <input>
 8051666:	88 45 da             	mov    %al,-0x26(%ebp)
 8051669:	80 7d da ff          	cmpb   $0xff,-0x26(%ebp)
 805166d:	0f 84 da 08 00 00    	je     8051f4d <yylex+0x18ee>
 8051673:	80 7d da 0a          	cmpb   $0xa,-0x26(%ebp)
 8051677:	75 e8                	jne    8051661 <yylex+0x1002>
 8051679:	e9 cf 08 00 00       	jmp    8051f4d <yylex+0x18ee>
 805167e:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051683:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051688:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 805168d:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051692:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051697:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 805169c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80516a1:	89 c2                	mov    %eax,%edx
 80516a3:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80516a8:	01 d0                	add    %edx,%eax
 80516aa:	83 e8 01             	sub    $0x1,%eax
 80516ad:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80516b2:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80516b7:	89 c2                	mov    %eax,%edx
 80516b9:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80516be:	01 d0                	add    %edx,%eax
 80516c0:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80516c5:	e8 e3 10 00 00       	call   80527ad <input>
 80516ca:	88 45 db             	mov    %al,-0x25(%ebp)
 80516cd:	eb 1e                	jmp    80516ed <yylex+0x108e>
 80516cf:	80 7d db 2a          	cmpb   $0x2a,-0x25(%ebp)
 80516d3:	75 10                	jne    80516e5 <yylex+0x1086>
 80516d5:	e8 d3 10 00 00       	call   80527ad <input>
 80516da:	88 45 db             	mov    %al,-0x25(%ebp)
 80516dd:	80 7d db 2f          	cmpb   $0x2f,-0x25(%ebp)
 80516e1:	75 0a                	jne    80516ed <yylex+0x108e>
 80516e3:	eb 13                	jmp    80516f8 <yylex+0x1099>
 80516e5:	e8 c3 10 00 00       	call   80527ad <input>
 80516ea:	88 45 db             	mov    %al,-0x25(%ebp)
 80516ed:	80 7d db ff          	cmpb   $0xff,-0x25(%ebp)
 80516f1:	75 dc                	jne    80516cf <yylex+0x1070>
 80516f3:	e9 56 08 00 00       	jmp    8051f4e <yylex+0x18ef>
 80516f8:	e9 51 08 00 00       	jmp    8051f4e <yylex+0x18ef>
 80516fd:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051702:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051707:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 805170c:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051711:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051716:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 805171b:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051720:	89 c2                	mov    %eax,%edx
 8051722:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051727:	01 d0                	add    %edx,%eax
 8051729:	83 e8 01             	sub    $0x1,%eax
 805172c:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051731:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051736:	89 c2                	mov    %eax,%edx
 8051738:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805173d:	01 d0                	add    %edx,%eax
 805173f:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051744:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051749:	83 ec 08             	sub    $0x8,%esp
 805174c:	50                   	push   %eax
 805174d:	68 95 5a 05 08       	push   $0x8055a95
 8051752:	e8 b1 73 ff ff       	call   8048b08 <createNode>
 8051757:	83 c4 10             	add    $0x10,%esp
 805175a:	a3 70 95 05 08       	mov    %eax,0x8059570
 805175f:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051764:	c7 40 04 04 00 00 00 	movl   $0x4,0x4(%eax)
 805176b:	8b 1d 70 95 05 08    	mov    0x8059570,%ebx
 8051771:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051776:	83 ec 0c             	sub    $0xc,%esp
 8051779:	50                   	push   %eax
 805177a:	e8 31 71 ff ff       	call   80488b0 <strlen@plt>
 805177f:	83 c4 10             	add    $0x10,%esp
 8051782:	83 ec 0c             	sub    $0xc,%esp
 8051785:	50                   	push   %eax
 8051786:	e8 f5 70 ff ff       	call   8048880 <malloc@plt>
 805178b:	83 c4 10             	add    $0x10,%esp
 805178e:	89 43 08             	mov    %eax,0x8(%ebx)
 8051791:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051796:	83 ec 0c             	sub    $0xc,%esp
 8051799:	50                   	push   %eax
 805179a:	e8 11 71 ff ff       	call   80488b0 <strlen@plt>
 805179f:	83 c4 10             	add    $0x10,%esp
 80517a2:	89 c1                	mov    %eax,%ecx
 80517a4:	8b 15 64 95 05 08    	mov    0x8059564,%edx
 80517aa:	a1 70 95 05 08       	mov    0x8059570,%eax
 80517af:	8b 40 08             	mov    0x8(%eax),%eax
 80517b2:	83 ec 04             	sub    $0x4,%esp
 80517b5:	51                   	push   %ecx
 80517b6:	52                   	push   %edx
 80517b7:	50                   	push   %eax
 80517b8:	e8 73 71 ff ff       	call   8048930 <strncpy@plt>
 80517bd:	83 c4 10             	add    $0x10,%esp
 80517c0:	a1 70 95 05 08       	mov    0x8059570,%eax
 80517c5:	8b 58 08             	mov    0x8(%eax),%ebx
 80517c8:	a1 64 95 05 08       	mov    0x8059564,%eax
 80517cd:	83 ec 0c             	sub    $0xc,%esp
 80517d0:	50                   	push   %eax
 80517d1:	e8 da 70 ff ff       	call   80488b0 <strlen@plt>
 80517d6:	83 c4 10             	add    $0x10,%esp
 80517d9:	01 d8                	add    %ebx,%eax
 80517db:	c6 00 00             	movb   $0x0,(%eax)
 80517de:	b8 1d 01 00 00       	mov    $0x11d,%eax
 80517e3:	e9 6b 07 00 00       	jmp    8051f53 <yylex+0x18f4>
 80517e8:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80517ed:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 80517f2:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 80517f7:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 80517fc:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051801:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051806:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805180b:	89 c2                	mov    %eax,%edx
 805180d:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051812:	01 d0                	add    %edx,%eax
 8051814:	83 e8 01             	sub    $0x1,%eax
 8051817:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 805181c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051821:	89 c2                	mov    %eax,%edx
 8051823:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051828:	01 d0                	add    %edx,%eax
 805182a:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 805182f:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051834:	83 ec 08             	sub    $0x8,%esp
 8051837:	50                   	push   %eax
 8051838:	68 9a 5a 05 08       	push   $0x8055a9a
 805183d:	e8 c6 72 ff ff       	call   8048b08 <createNode>
 8051842:	83 c4 10             	add    $0x10,%esp
 8051845:	a3 70 95 05 08       	mov    %eax,0x8059570
 805184a:	a1 70 95 05 08       	mov    0x8059570,%eax
 805184f:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8051856:	a1 70 95 05 08       	mov    0x8059570,%eax
 805185b:	c7 40 04 1a 00 00 00 	movl   $0x1a,0x4(%eax)
 8051862:	b8 17 01 00 00       	mov    $0x117,%eax
 8051867:	e9 e7 06 00 00       	jmp    8051f53 <yylex+0x18f4>
 805186c:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051871:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051876:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 805187b:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051880:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051885:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 805188a:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805188f:	89 c2                	mov    %eax,%edx
 8051891:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051896:	01 d0                	add    %edx,%eax
 8051898:	83 e8 01             	sub    $0x1,%eax
 805189b:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80518a0:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80518a5:	89 c2                	mov    %eax,%edx
 80518a7:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80518ac:	01 d0                	add    %edx,%eax
 80518ae:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80518b3:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80518b8:	83 ec 08             	sub    $0x8,%esp
 80518bb:	50                   	push   %eax
 80518bc:	68 a1 5a 05 08       	push   $0x8055aa1
 80518c1:	e8 42 72 ff ff       	call   8048b08 <createNode>
 80518c6:	83 c4 10             	add    $0x10,%esp
 80518c9:	a3 70 95 05 08       	mov    %eax,0x8059570
 80518ce:	a1 70 95 05 08       	mov    0x8059570,%eax
 80518d3:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80518da:	a1 70 95 05 08       	mov    0x8059570,%eax
 80518df:	c7 40 04 1b 00 00 00 	movl   $0x1b,0x4(%eax)
 80518e6:	b8 18 01 00 00       	mov    $0x118,%eax
 80518eb:	e9 63 06 00 00       	jmp    8051f53 <yylex+0x18f4>
 80518f0:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80518f5:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 80518fa:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 80518ff:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051904:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051909:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 805190e:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051913:	89 c2                	mov    %eax,%edx
 8051915:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805191a:	01 d0                	add    %edx,%eax
 805191c:	83 e8 01             	sub    $0x1,%eax
 805191f:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051924:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051929:	89 c2                	mov    %eax,%edx
 805192b:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051930:	01 d0                	add    %edx,%eax
 8051932:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051937:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 805193c:	83 ec 08             	sub    $0x8,%esp
 805193f:	50                   	push   %eax
 8051940:	68 a8 5a 05 08       	push   $0x8055aa8
 8051945:	e8 be 71 ff ff       	call   8048b08 <createNode>
 805194a:	83 c4 10             	add    $0x10,%esp
 805194d:	a3 70 95 05 08       	mov    %eax,0x8059570
 8051952:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051957:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 805195e:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051963:	c7 40 04 1c 00 00 00 	movl   $0x1c,0x4(%eax)
 805196a:	b8 19 01 00 00       	mov    $0x119,%eax
 805196f:	e9 df 05 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051974:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051979:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 805197e:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051983:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051988:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 805198d:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051992:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051997:	89 c2                	mov    %eax,%edx
 8051999:	a1 6c 95 05 08       	mov    0x805956c,%eax
 805199e:	01 d0                	add    %edx,%eax
 80519a0:	83 e8 01             	sub    $0x1,%eax
 80519a3:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 80519a8:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 80519ad:	89 c2                	mov    %eax,%edx
 80519af:	a1 6c 95 05 08       	mov    0x805956c,%eax
 80519b4:	01 d0                	add    %edx,%eax
 80519b6:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 80519bb:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80519c0:	83 ec 08             	sub    $0x8,%esp
 80519c3:	50                   	push   %eax
 80519c4:	68 ab 5a 05 08       	push   $0x8055aab
 80519c9:	e8 3a 71 ff ff       	call   8048b08 <createNode>
 80519ce:	83 c4 10             	add    $0x10,%esp
 80519d1:	a3 70 95 05 08       	mov    %eax,0x8059570
 80519d6:	a1 70 95 05 08       	mov    0x8059570,%eax
 80519db:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80519e2:	a1 70 95 05 08       	mov    0x8059570,%eax
 80519e7:	c7 40 04 1d 00 00 00 	movl   $0x1d,0x4(%eax)
 80519ee:	b8 1a 01 00 00       	mov    $0x11a,%eax
 80519f3:	e9 5b 05 00 00       	jmp    8051f53 <yylex+0x18f4>
 80519f8:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80519fd:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051a02:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051a07:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051a0c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051a11:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051a16:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051a1b:	89 c2                	mov    %eax,%edx
 8051a1d:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051a22:	01 d0                	add    %edx,%eax
 8051a24:	83 e8 01             	sub    $0x1,%eax
 8051a27:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051a2c:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051a31:	89 c2                	mov    %eax,%edx
 8051a33:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051a38:	01 d0                	add    %edx,%eax
 8051a3a:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051a3f:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051a44:	83 ec 08             	sub    $0x8,%esp
 8051a47:	50                   	push   %eax
 8051a48:	68 b0 5a 05 08       	push   $0x8055ab0
 8051a4d:	e8 b6 70 ff ff       	call   8048b08 <createNode>
 8051a52:	83 c4 10             	add    $0x10,%esp
 8051a55:	a3 70 95 05 08       	mov    %eax,0x8059570
 8051a5a:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051a5f:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8051a66:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051a6b:	c7 40 04 1e 00 00 00 	movl   $0x1e,0x4(%eax)
 8051a72:	b8 1b 01 00 00       	mov    $0x11b,%eax
 8051a77:	e9 d7 04 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051a7c:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051a81:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051a86:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051a8b:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051a90:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051a95:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051a9a:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051a9f:	89 c2                	mov    %eax,%edx
 8051aa1:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051aa6:	01 d0                	add    %edx,%eax
 8051aa8:	83 e8 01             	sub    $0x1,%eax
 8051aab:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051ab0:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051ab5:	89 c2                	mov    %eax,%edx
 8051ab7:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051abc:	01 d0                	add    %edx,%eax
 8051abe:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051ac3:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051ac8:	83 ec 08             	sub    $0x8,%esp
 8051acb:	50                   	push   %eax
 8051acc:	68 b6 5a 05 08       	push   $0x8055ab6
 8051ad1:	e8 32 70 ff ff       	call   8048b08 <createNode>
 8051ad6:	83 c4 10             	add    $0x10,%esp
 8051ad9:	a3 70 95 05 08       	mov    %eax,0x8059570
 8051ade:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051ae3:	c7 40 04 03 00 00 00 	movl   $0x3,0x4(%eax)
 8051aea:	8b 1d 70 95 05 08    	mov    0x8059570,%ebx
 8051af0:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051af5:	83 ec 0c             	sub    $0xc,%esp
 8051af8:	50                   	push   %eax
 8051af9:	e8 b2 6d ff ff       	call   80488b0 <strlen@plt>
 8051afe:	83 c4 10             	add    $0x10,%esp
 8051b01:	83 ec 0c             	sub    $0xc,%esp
 8051b04:	50                   	push   %eax
 8051b05:	e8 76 6d ff ff       	call   8048880 <malloc@plt>
 8051b0a:	83 c4 10             	add    $0x10,%esp
 8051b0d:	89 43 08             	mov    %eax,0x8(%ebx)
 8051b10:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051b15:	83 ec 0c             	sub    $0xc,%esp
 8051b18:	50                   	push   %eax
 8051b19:	e8 92 6d ff ff       	call   80488b0 <strlen@plt>
 8051b1e:	83 c4 10             	add    $0x10,%esp
 8051b21:	89 c1                	mov    %eax,%ecx
 8051b23:	8b 15 64 95 05 08    	mov    0x8059564,%edx
 8051b29:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051b2e:	8b 40 08             	mov    0x8(%eax),%eax
 8051b31:	83 ec 04             	sub    $0x4,%esp
 8051b34:	51                   	push   %ecx
 8051b35:	52                   	push   %edx
 8051b36:	50                   	push   %eax
 8051b37:	e8 f4 6d ff ff       	call   8048930 <strncpy@plt>
 8051b3c:	83 c4 10             	add    $0x10,%esp
 8051b3f:	a1 70 95 05 08       	mov    0x8059570,%eax
 8051b44:	8b 58 08             	mov    0x8(%eax),%ebx
 8051b47:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051b4c:	83 ec 0c             	sub    $0xc,%esp
 8051b4f:	50                   	push   %eax
 8051b50:	e8 5b 6d ff ff       	call   80488b0 <strlen@plt>
 8051b55:	83 c4 10             	add    $0x10,%esp
 8051b58:	01 d8                	add    %ebx,%eax
 8051b5a:	c6 00 00             	movb   $0x0,(%eax)
 8051b5d:	b8 04 01 00 00       	mov    $0x104,%eax
 8051b62:	e9 ec 03 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051b67:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051b6c:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051b71:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051b76:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051b7b:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051b80:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051b85:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051b8a:	89 c2                	mov    %eax,%edx
 8051b8c:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051b91:	01 d0                	add    %edx,%eax
 8051b93:	83 e8 01             	sub    $0x1,%eax
 8051b96:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051b9b:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051ba0:	89 c2                	mov    %eax,%edx
 8051ba2:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051ba7:	01 d0                	add    %edx,%eax
 8051ba9:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051bae:	8b 0d 64 95 05 08    	mov    0x8059564,%ecx
 8051bb4:	8b 15 bc 90 05 08    	mov    0x80590bc,%edx
 8051bba:	a1 24 91 05 08       	mov    0x8059124,%eax
 8051bbf:	51                   	push   %ecx
 8051bc0:	52                   	push   %edx
 8051bc1:	50                   	push   %eax
 8051bc2:	68 bc 5a 05 08       	push   $0x8055abc
 8051bc7:	e8 f4 6b ff ff       	call   80487c0 <printf@plt>
 8051bcc:	83 c4 10             	add    $0x10,%esp
 8051bcf:	a1 24 91 05 08       	mov    0x8059124,%eax
 8051bd4:	83 c0 01             	add    $0x1,%eax
 8051bd7:	a3 24 91 05 08       	mov    %eax,0x8059124
 8051bdc:	b8 02 01 00 00       	mov    $0x102,%eax
 8051be1:	e9 6d 03 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051be6:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051beb:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051bf0:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051bf5:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051bfa:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051bff:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051c04:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051c09:	89 c2                	mov    %eax,%edx
 8051c0b:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051c10:	01 d0                	add    %edx,%eax
 8051c12:	83 e8 01             	sub    $0x1,%eax
 8051c15:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051c1a:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051c1f:	89 c2                	mov    %eax,%edx
 8051c21:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051c26:	01 d0                	add    %edx,%eax
 8051c28:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051c2d:	8b 0d 64 95 05 08    	mov    0x8059564,%ecx
 8051c33:	8b 15 bc 90 05 08    	mov    0x80590bc,%edx
 8051c39:	a1 24 91 05 08       	mov    0x8059124,%eax
 8051c3e:	51                   	push   %ecx
 8051c3f:	52                   	push   %edx
 8051c40:	50                   	push   %eax
 8051c41:	68 fc 5a 05 08       	push   $0x8055afc
 8051c46:	e8 75 6b ff ff       	call   80487c0 <printf@plt>
 8051c4b:	83 c4 10             	add    $0x10,%esp
 8051c4e:	a1 24 91 05 08       	mov    0x8059124,%eax
 8051c53:	83 c0 01             	add    $0x1,%eax
 8051c56:	a3 24 91 05 08       	mov    %eax,0x8059124
 8051c5b:	b8 02 01 00 00       	mov    $0x102,%eax
 8051c60:	e9 ee 02 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051c65:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051c6a:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051c6f:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051c74:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051c79:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051c7e:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051c83:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051c88:	89 c2                	mov    %eax,%edx
 8051c8a:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051c8f:	01 d0                	add    %edx,%eax
 8051c91:	83 e8 01             	sub    $0x1,%eax
 8051c94:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051c99:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051c9e:	89 c2                	mov    %eax,%edx
 8051ca0:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051ca5:	01 d0                	add    %edx,%eax
 8051ca7:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051cac:	8b 0d 64 95 05 08    	mov    0x8059564,%ecx
 8051cb2:	8b 15 bc 90 05 08    	mov    0x80590bc,%edx
 8051cb8:	a1 24 91 05 08       	mov    0x8059124,%eax
 8051cbd:	51                   	push   %ecx
 8051cbe:	52                   	push   %edx
 8051cbf:	50                   	push   %eax
 8051cc0:	68 38 5b 05 08       	push   $0x8055b38
 8051cc5:	e8 f6 6a ff ff       	call   80487c0 <printf@plt>
 8051cca:	83 c4 10             	add    $0x10,%esp
 8051ccd:	a1 24 91 05 08       	mov    0x8059124,%eax
 8051cd2:	83 c0 01             	add    $0x1,%eax
 8051cd5:	a3 24 91 05 08       	mov    %eax,0x8059124
 8051cda:	e9 6f 02 00 00       	jmp    8051f4e <yylex+0x18ef>
 8051cdf:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8051ce4:	a3 b4 90 05 08       	mov    %eax,0x80590b4
 8051ce9:	a1 b4 90 05 08       	mov    0x80590b4,%eax
 8051cee:	a3 ac 90 05 08       	mov    %eax,0x80590ac
 8051cf3:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051cf8:	a3 b0 90 05 08       	mov    %eax,0x80590b0
 8051cfd:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051d02:	89 c2                	mov    %eax,%edx
 8051d04:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051d09:	01 d0                	add    %edx,%eax
 8051d0b:	83 e8 01             	sub    $0x1,%eax
 8051d0e:	a3 b8 90 05 08       	mov    %eax,0x80590b8
 8051d13:	a1 c0 90 05 08       	mov    0x80590c0,%eax
 8051d18:	89 c2                	mov    %eax,%edx
 8051d1a:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8051d1f:	01 d0                	add    %edx,%eax
 8051d21:	a3 c0 90 05 08       	mov    %eax,0x80590c0
 8051d26:	8b 0d 1c 91 05 08    	mov    0x805911c,%ecx
 8051d2c:	8b 15 6c 95 05 08    	mov    0x805956c,%edx
 8051d32:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051d37:	51                   	push   %ecx
 8051d38:	6a 01                	push   $0x1
 8051d3a:	52                   	push   %edx
 8051d3b:	50                   	push   %eax
 8051d3c:	e8 ff 6a ff ff       	call   8048840 <fwrite@plt>
 8051d41:	83 c4 10             	add    $0x10,%esp
 8051d44:	e9 05 02 00 00       	jmp    8051f4e <yylex+0x18ef>
 8051d49:	b8 00 00 00 00       	mov    $0x0,%eax
 8051d4e:	e9 00 02 00 00       	jmp    8051f53 <yylex+0x18f4>
 8051d53:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8051d56:	8b 15 64 95 05 08    	mov    0x8059564,%edx
 8051d5c:	29 d0                	sub    %edx,%eax
 8051d5e:	83 e8 01             	sub    $0x1,%eax
 8051d61:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8051d64:	0f b6 15 38 91 05 08 	movzbl 0x8059138,%edx
 8051d6b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8051d6e:	88 10                	mov    %dl,(%eax)
 8051d70:	a1 34 91 05 08       	mov    0x8059134,%eax
 8051d75:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8051d7b:	c1 e2 02             	shl    $0x2,%edx
 8051d7e:	01 d0                	add    %edx,%eax
 8051d80:	8b 00                	mov    (%eax),%eax
 8051d82:	8b 40 2c             	mov    0x2c(%eax),%eax
 8051d85:	85 c0                	test   %eax,%eax
 8051d87:	75 4d                	jne    8051dd6 <yylex+0x1777>
 8051d89:	a1 34 91 05 08       	mov    0x8059134,%eax
 8051d8e:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8051d94:	c1 e2 02             	shl    $0x2,%edx
 8051d97:	01 d0                	add    %edx,%eax
 8051d99:	8b 00                	mov    (%eax),%eax
 8051d9b:	8b 40 10             	mov    0x10(%eax),%eax
 8051d9e:	a3 3c 91 05 08       	mov    %eax,0x805913c
 8051da3:	a1 34 91 05 08       	mov    0x8059134,%eax
 8051da8:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8051dae:	c1 e2 02             	shl    $0x2,%edx
 8051db1:	01 d0                	add    %edx,%eax
 8051db3:	8b 00                	mov    (%eax),%eax
 8051db5:	8b 15 18 91 05 08    	mov    0x8059118,%edx
 8051dbb:	89 10                	mov    %edx,(%eax)
 8051dbd:	a1 34 91 05 08       	mov    0x8059134,%eax
 8051dc2:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8051dc8:	c1 e2 02             	shl    $0x2,%edx
 8051dcb:	01 d0                	add    %edx,%eax
 8051dcd:	8b 00                	mov    (%eax),%eax
 8051dcf:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
 8051dd6:	a1 34 91 05 08       	mov    0x8059134,%eax
 8051ddb:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8051de1:	c1 e2 02             	shl    $0x2,%edx
 8051de4:	01 d0                	add    %edx,%eax
 8051de6:	8b 00                	mov    (%eax),%eax
 8051de8:	8b 40 04             	mov    0x4(%eax),%eax
 8051deb:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 8051df1:	01 c2                	add    %eax,%edx
 8051df3:	a1 40 91 05 08       	mov    0x8059140,%eax
 8051df8:	39 c2                	cmp    %eax,%edx
 8051dfa:	72 64                	jb     8051e60 <yylex+0x1801>
 8051dfc:	8b 15 64 95 05 08    	mov    0x8059564,%edx
 8051e02:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8051e05:	01 d0                	add    %edx,%eax
 8051e07:	a3 40 91 05 08       	mov    %eax,0x8059140
 8051e0c:	e8 85 06 00 00       	call   8052496 <yy_get_previous_state>
 8051e11:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8051e14:	83 ec 0c             	sub    $0xc,%esp
 8051e17:	ff 75 dc             	pushl  -0x24(%ebp)
 8051e1a:	e8 56 07 00 00       	call   8052575 <yy_try_NUL_trans>
 8051e1f:	83 c4 10             	add    $0x10,%esp
 8051e22:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8051e25:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051e2a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8051e2d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8051e31:	74 20                	je     8051e53 <yylex+0x17f4>
 8051e33:	a1 40 91 05 08       	mov    0x8059140,%eax
 8051e38:	83 c0 01             	add    $0x1,%eax
 8051e3b:	a3 40 91 05 08       	mov    %eax,0x8059140
 8051e40:	a1 40 91 05 08       	mov    0x8059140,%eax
 8051e45:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8051e48:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8051e4b:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8051e4e:	e9 d7 e8 ff ff       	jmp    805072a <yylex+0xcb>
 8051e53:	a1 40 91 05 08       	mov    0x8059140,%eax
 8051e58:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8051e5b:	e9 7f e9 ff ff       	jmp    80507df <yylex+0x180>
 8051e60:	e8 f3 00 00 00       	call   8051f58 <yy_get_next_buffer>
 8051e65:	83 f8 01             	cmp    $0x1,%eax
 8051e68:	74 12                	je     8051e7c <yylex+0x181d>
 8051e6a:	83 f8 02             	cmp    $0x2,%eax
 8051e6d:	0f 84 8b 00 00 00    	je     8051efe <yylex+0x189f>
 8051e73:	85 c0                	test   %eax,%eax
 8051e75:	74 5a                	je     8051ed1 <yylex+0x1872>
 8051e77:	e9 d2 00 00 00       	jmp    8051f4e <yylex+0x18ef>
 8051e7c:	c7 05 4c 91 05 08 00 	movl   $0x0,0x805914c
 8051e83:	00 00 00 
 8051e86:	e8 c5 1f 00 00       	call   8053e50 <yywrap>
 8051e8b:	85 c0                	test   %eax,%eax
 8051e8d:	74 26                	je     8051eb5 <yylex+0x1856>
 8051e8f:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051e94:	a3 40 91 05 08       	mov    %eax,0x8059140
 8051e99:	a1 48 91 05 08       	mov    0x8059148,%eax
 8051e9e:	83 e8 01             	sub    $0x1,%eax
 8051ea1:	89 c2                	mov    %eax,%edx
 8051ea3:	c1 ea 1f             	shr    $0x1f,%edx
 8051ea6:	01 d0                	add    %edx,%eax
 8051ea8:	d1 f8                	sar    %eax
 8051eaa:	83 c0 28             	add    $0x28,%eax
 8051ead:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8051eb0:	e9 d8 e9 ff ff       	jmp    805088d <yylex+0x22e>
 8051eb5:	a1 4c 91 05 08       	mov    0x805914c,%eax
 8051eba:	85 c0                	test   %eax,%eax
 8051ebc:	75 7f                	jne    8051f3d <yylex+0x18de>
 8051ebe:	a1 18 91 05 08       	mov    0x8059118,%eax
 8051ec3:	83 ec 0c             	sub    $0xc,%esp
 8051ec6:	50                   	push   %eax
 8051ec7:	e8 08 0a 00 00       	call   80528d4 <yyrestart>
 8051ecc:	83 c4 10             	add    $0x10,%esp
 8051ecf:	eb 6c                	jmp    8051f3d <yylex+0x18de>
 8051ed1:	8b 15 64 95 05 08    	mov    0x8059564,%edx
 8051ed7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8051eda:	01 d0                	add    %edx,%eax
 8051edc:	a3 40 91 05 08       	mov    %eax,0x8059140
 8051ee1:	e8 b0 05 00 00       	call   8052496 <yy_get_previous_state>
 8051ee6:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8051ee9:	a1 40 91 05 08       	mov    0x8059140,%eax
 8051eee:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8051ef1:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051ef6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8051ef9:	e9 2c e8 ff ff       	jmp    805072a <yylex+0xcb>
 8051efe:	a1 34 91 05 08       	mov    0x8059134,%eax
 8051f03:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8051f09:	c1 e2 02             	shl    $0x2,%edx
 8051f0c:	01 d0                	add    %edx,%eax
 8051f0e:	8b 00                	mov    (%eax),%eax
 8051f10:	8b 40 04             	mov    0x4(%eax),%eax
 8051f13:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 8051f19:	01 d0                	add    %edx,%eax
 8051f1b:	a3 40 91 05 08       	mov    %eax,0x8059140
 8051f20:	e8 71 05 00 00       	call   8052496 <yy_get_previous_state>
 8051f25:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8051f28:	a1 40 91 05 08       	mov    0x8059140,%eax
 8051f2d:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8051f30:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051f35:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8051f38:	e9 a2 e8 ff ff       	jmp    80507df <yylex+0x180>
 8051f3d:	90                   	nop
 8051f3e:	eb 0e                	jmp    8051f4e <yylex+0x18ef>
 8051f40:	83 ec 0c             	sub    $0xc,%esp
 8051f43:	68 74 5b 05 08       	push   $0x8055b74
 8051f48:	e8 a6 11 00 00       	call   80530f3 <yy_fatal_error>
 8051f4d:	90                   	nop
 8051f4e:	e9 b5 e7 ff ff       	jmp    8050708 <yylex+0xa9>
 8051f53:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8051f56:	c9                   	leave  
 8051f57:	c3                   	ret    

08051f58 <yy_get_next_buffer>:
 8051f58:	55                   	push   %ebp
 8051f59:	89 e5                	mov    %esp,%ebp
 8051f5b:	53                   	push   %ebx
 8051f5c:	83 ec 34             	sub    $0x34,%esp
 8051f5f:	a1 34 91 05 08       	mov    0x8059134,%eax
 8051f64:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8051f6a:	c1 e2 02             	shl    $0x2,%edx
 8051f6d:	01 d0                	add    %edx,%eax
 8051f6f:	8b 00                	mov    (%eax),%eax
 8051f71:	8b 40 04             	mov    0x4(%eax),%eax
 8051f74:	89 45 c8             	mov    %eax,-0x38(%ebp)
 8051f77:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051f7c:	89 45 cc             	mov    %eax,-0x34(%ebp)
 8051f7f:	a1 34 91 05 08       	mov    0x8059134,%eax
 8051f84:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8051f8a:	c1 e2 02             	shl    $0x2,%edx
 8051f8d:	01 d0                	add    %edx,%eax
 8051f8f:	8b 00                	mov    (%eax),%eax
 8051f91:	8b 40 04             	mov    0x4(%eax),%eax
 8051f94:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 8051f9a:	83 c2 01             	add    $0x1,%edx
 8051f9d:	01 c2                	add    %eax,%edx
 8051f9f:	a1 40 91 05 08       	mov    0x8059140,%eax
 8051fa4:	39 c2                	cmp    %eax,%edx
 8051fa6:	73 0d                	jae    8051fb5 <yy_get_next_buffer+0x5d>
 8051fa8:	83 ec 0c             	sub    $0xc,%esp
 8051fab:	68 4c 5c 05 08       	push   $0x8055c4c
 8051fb0:	e8 3e 11 00 00       	call   80530f3 <yy_fatal_error>
 8051fb5:	a1 34 91 05 08       	mov    0x8059134,%eax
 8051fba:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8051fc0:	c1 e2 02             	shl    $0x2,%edx
 8051fc3:	01 d0                	add    %edx,%eax
 8051fc5:	8b 00                	mov    (%eax),%eax
 8051fc7:	8b 40 28             	mov    0x28(%eax),%eax
 8051fca:	85 c0                	test   %eax,%eax
 8051fcc:	75 29                	jne    8051ff7 <yy_get_next_buffer+0x9f>
 8051fce:	a1 40 91 05 08       	mov    0x8059140,%eax
 8051fd3:	89 c2                	mov    %eax,%edx
 8051fd5:	a1 64 95 05 08       	mov    0x8059564,%eax
 8051fda:	29 c2                	sub    %eax,%edx
 8051fdc:	89 d0                	mov    %edx,%eax
 8051fde:	83 f8 01             	cmp    $0x1,%eax
 8051fe1:	75 0a                	jne    8051fed <yy_get_next_buffer+0x95>
 8051fe3:	b8 01 00 00 00       	mov    $0x1,%eax
 8051fe8:	e9 a4 04 00 00       	jmp    8052491 <yy_get_next_buffer+0x539>
 8051fed:	b8 02 00 00 00       	mov    $0x2,%eax
 8051ff2:	e9 9a 04 00 00       	jmp    8052491 <yy_get_next_buffer+0x539>
 8051ff7:	a1 40 91 05 08       	mov    0x8059140,%eax
 8051ffc:	89 c2                	mov    %eax,%edx
 8051ffe:	a1 64 95 05 08       	mov    0x8059564,%eax
 8052003:	29 c2                	sub    %eax,%edx
 8052005:	89 d0                	mov    %edx,%eax
 8052007:	83 e8 01             	sub    $0x1,%eax
 805200a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 805200d:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 8052014:	eb 1b                	jmp    8052031 <yy_get_next_buffer+0xd9>
 8052016:	8b 45 c8             	mov    -0x38(%ebp),%eax
 8052019:	8d 50 01             	lea    0x1(%eax),%edx
 805201c:	89 55 c8             	mov    %edx,-0x38(%ebp)
 805201f:	8b 55 cc             	mov    -0x34(%ebp),%edx
 8052022:	8d 4a 01             	lea    0x1(%edx),%ecx
 8052025:	89 4d cc             	mov    %ecx,-0x34(%ebp)
 8052028:	0f b6 12             	movzbl (%edx),%edx
 805202b:	88 10                	mov    %dl,(%eax)
 805202d:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
 8052031:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8052034:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
 8052037:	72 dd                	jb     8052016 <yy_get_next_buffer+0xbe>
 8052039:	a1 34 91 05 08       	mov    0x8059134,%eax
 805203e:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052044:	c1 e2 02             	shl    $0x2,%edx
 8052047:	01 d0                	add    %edx,%eax
 8052049:	8b 00                	mov    (%eax),%eax
 805204b:	8b 40 2c             	mov    0x2c(%eax),%eax
 805204e:	83 f8 02             	cmp    $0x2,%eax
 8052051:	75 2a                	jne    805207d <yy_get_next_buffer+0x125>
 8052053:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052058:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805205e:	c1 e2 02             	shl    $0x2,%edx
 8052061:	01 d0                	add    %edx,%eax
 8052063:	8b 00                	mov    (%eax),%eax
 8052065:	c7 05 3c 91 05 08 00 	movl   $0x0,0x805913c
 805206c:	00 00 00 
 805206f:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 8052075:	89 50 10             	mov    %edx,0x10(%eax)
 8052078:	e9 b3 02 00 00       	jmp    8052330 <yy_get_next_buffer+0x3d8>
 805207d:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052082:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052088:	c1 e2 02             	shl    $0x2,%edx
 805208b:	01 d0                	add    %edx,%eax
 805208d:	8b 00                	mov    (%eax),%eax
 805208f:	8b 40 0c             	mov    0xc(%eax),%eax
 8052092:	2b 45 e4             	sub    -0x1c(%ebp),%eax
 8052095:	83 e8 01             	sub    $0x1,%eax
 8052098:	89 45 d8             	mov    %eax,-0x28(%ebp)
 805209b:	e9 e1 00 00 00       	jmp    8052181 <yy_get_next_buffer+0x229>
 80520a0:	a1 34 91 05 08       	mov    0x8059134,%eax
 80520a5:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80520ab:	c1 e2 02             	shl    $0x2,%edx
 80520ae:	01 d0                	add    %edx,%eax
 80520b0:	8b 00                	mov    (%eax),%eax
 80520b2:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80520b5:	a1 40 91 05 08       	mov    0x8059140,%eax
 80520ba:	89 c2                	mov    %eax,%edx
 80520bc:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80520bf:	8b 40 04             	mov    0x4(%eax),%eax
 80520c2:	29 c2                	sub    %eax,%edx
 80520c4:	89 d0                	mov    %edx,%eax
 80520c6:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80520c9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80520cc:	8b 40 14             	mov    0x14(%eax),%eax
 80520cf:	85 c0                	test   %eax,%eax
 80520d1:	74 5f                	je     8052132 <yy_get_next_buffer+0x1da>
 80520d3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80520d6:	8b 40 0c             	mov    0xc(%eax),%eax
 80520d9:	01 c0                	add    %eax,%eax
 80520db:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80520de:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80520e2:	75 19                	jne    80520fd <yy_get_next_buffer+0x1a5>
 80520e4:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80520e7:	8b 50 0c             	mov    0xc(%eax),%edx
 80520ea:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80520ed:	8b 40 0c             	mov    0xc(%eax),%eax
 80520f0:	c1 e8 03             	shr    $0x3,%eax
 80520f3:	01 c2                	add    %eax,%edx
 80520f5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80520f8:	89 50 0c             	mov    %edx,0xc(%eax)
 80520fb:	eb 0f                	jmp    805210c <yy_get_next_buffer+0x1b4>
 80520fd:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052100:	8b 40 0c             	mov    0xc(%eax),%eax
 8052103:	8d 14 00             	lea    (%eax,%eax,1),%edx
 8052106:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052109:	89 50 0c             	mov    %edx,0xc(%eax)
 805210c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805210f:	8b 40 0c             	mov    0xc(%eax),%eax
 8052112:	8d 50 02             	lea    0x2(%eax),%edx
 8052115:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052118:	8b 40 04             	mov    0x4(%eax),%eax
 805211b:	83 ec 08             	sub    $0x8,%esp
 805211e:	52                   	push   %edx
 805211f:	50                   	push   %eax
 8052120:	e8 7c 11 00 00       	call   80532a1 <yyrealloc>
 8052125:	83 c4 10             	add    $0x10,%esp
 8052128:	89 c2                	mov    %eax,%edx
 805212a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805212d:	89 50 04             	mov    %edx,0x4(%eax)
 8052130:	eb 0a                	jmp    805213c <yy_get_next_buffer+0x1e4>
 8052132:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052135:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 805213c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805213f:	8b 40 04             	mov    0x4(%eax),%eax
 8052142:	85 c0                	test   %eax,%eax
 8052144:	75 0d                	jne    8052153 <yy_get_next_buffer+0x1fb>
 8052146:	83 ec 0c             	sub    $0xc,%esp
 8052149:	68 84 5c 05 08       	push   $0x8055c84
 805214e:	e8 a0 0f 00 00       	call   80530f3 <yy_fatal_error>
 8052153:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052156:	8b 50 04             	mov    0x4(%eax),%edx
 8052159:	8b 45 ec             	mov    -0x14(%ebp),%eax
 805215c:	01 d0                	add    %edx,%eax
 805215e:	a3 40 91 05 08       	mov    %eax,0x8059140
 8052163:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052168:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805216e:	c1 e2 02             	shl    $0x2,%edx
 8052171:	01 d0                	add    %edx,%eax
 8052173:	8b 00                	mov    (%eax),%eax
 8052175:	8b 40 0c             	mov    0xc(%eax),%eax
 8052178:	2b 45 e4             	sub    -0x1c(%ebp),%eax
 805217b:	83 e8 01             	sub    $0x1,%eax
 805217e:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8052181:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 8052185:	0f 84 15 ff ff ff    	je     80520a0 <yy_get_next_buffer+0x148>
 805218b:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
 8052192:	76 07                	jbe    805219b <yy_get_next_buffer+0x243>
 8052194:	c7 45 d8 00 20 00 00 	movl   $0x2000,-0x28(%ebp)
 805219b:	a1 34 91 05 08       	mov    0x8059134,%eax
 80521a0:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80521a6:	c1 e2 02             	shl    $0x2,%edx
 80521a9:	01 d0                	add    %edx,%eax
 80521ab:	8b 00                	mov    (%eax),%eax
 80521ad:	8b 40 18             	mov    0x18(%eax),%eax
 80521b0:	85 c0                	test   %eax,%eax
 80521b2:	0f 84 c5 00 00 00    	je     805227d <yy_get_next_buffer+0x325>
 80521b8:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
 80521bf:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 80521c6:	eb 28                	jmp    80521f0 <yy_get_next_buffer+0x298>
 80521c8:	a1 34 91 05 08       	mov    0x8059134,%eax
 80521cd:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80521d3:	c1 e2 02             	shl    $0x2,%edx
 80521d6:	01 d0                	add    %edx,%eax
 80521d8:	8b 00                	mov    (%eax),%eax
 80521da:	8b 40 04             	mov    0x4(%eax),%eax
 80521dd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 80521e0:	8b 55 e0             	mov    -0x20(%ebp),%edx
 80521e3:	01 ca                	add    %ecx,%edx
 80521e5:	01 d0                	add    %edx,%eax
 80521e7:	8b 55 dc             	mov    -0x24(%ebp),%edx
 80521ea:	88 10                	mov    %dl,(%eax)
 80521ec:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 80521f0:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80521f3:	3b 45 d8             	cmp    -0x28(%ebp),%eax
 80521f6:	73 20                	jae    8052218 <yy_get_next_buffer+0x2c0>
 80521f8:	a1 18 91 05 08       	mov    0x8059118,%eax
 80521fd:	83 ec 0c             	sub    $0xc,%esp
 8052200:	50                   	push   %eax
 8052201:	e8 1a 66 ff ff       	call   8048820 <_IO_getc@plt>
 8052206:	83 c4 10             	add    $0x10,%esp
 8052209:	89 45 dc             	mov    %eax,-0x24(%ebp)
 805220c:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
 8052210:	74 06                	je     8052218 <yy_get_next_buffer+0x2c0>
 8052212:	83 7d dc 0a          	cmpl   $0xa,-0x24(%ebp)
 8052216:	75 b0                	jne    80521c8 <yy_get_next_buffer+0x270>
 8052218:	83 7d dc 0a          	cmpl   $0xa,-0x24(%ebp)
 805221c:	75 2a                	jne    8052248 <yy_get_next_buffer+0x2f0>
 805221e:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052223:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052229:	c1 e2 02             	shl    $0x2,%edx
 805222c:	01 d0                	add    %edx,%eax
 805222e:	8b 00                	mov    (%eax),%eax
 8052230:	8b 48 04             	mov    0x4(%eax),%ecx
 8052233:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8052236:	8d 50 01             	lea    0x1(%eax),%edx
 8052239:	89 55 e0             	mov    %edx,-0x20(%ebp)
 805223c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 805223f:	01 d0                	add    %edx,%eax
 8052241:	01 c8                	add    %ecx,%eax
 8052243:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8052246:	88 10                	mov    %dl,(%eax)
 8052248:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
 805224c:	75 22                	jne    8052270 <yy_get_next_buffer+0x318>
 805224e:	a1 18 91 05 08       	mov    0x8059118,%eax
 8052253:	83 ec 0c             	sub    $0xc,%esp
 8052256:	50                   	push   %eax
 8052257:	e8 94 65 ff ff       	call   80487f0 <ferror@plt>
 805225c:	83 c4 10             	add    $0x10,%esp
 805225f:	85 c0                	test   %eax,%eax
 8052261:	74 0d                	je     8052270 <yy_get_next_buffer+0x318>
 8052263:	83 ec 0c             	sub    $0xc,%esp
 8052266:	68 b0 5c 05 08       	push   $0x8055cb0
 805226b:	e8 83 0e 00 00       	call   80530f3 <yy_fatal_error>
 8052270:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8052273:	a3 3c 91 05 08       	mov    %eax,0x805913c
 8052278:	e9 98 00 00 00       	jmp    8052315 <yy_get_next_buffer+0x3bd>
 805227d:	e8 9e 66 ff ff       	call   8048920 <__errno_location@plt>
 8052282:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052288:	eb 35                	jmp    80522bf <yy_get_next_buffer+0x367>
 805228a:	e8 91 66 ff ff       	call   8048920 <__errno_location@plt>
 805228f:	8b 00                	mov    (%eax),%eax
 8052291:	83 f8 04             	cmp    $0x4,%eax
 8052294:	74 0d                	je     80522a3 <yy_get_next_buffer+0x34b>
 8052296:	83 ec 0c             	sub    $0xc,%esp
 8052299:	68 b0 5c 05 08       	push   $0x8055cb0
 805229e:	e8 50 0e 00 00       	call   80530f3 <yy_fatal_error>
 80522a3:	e8 78 66 ff ff       	call   8048920 <__errno_location@plt>
 80522a8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80522ae:	a1 18 91 05 08       	mov    0x8059118,%eax
 80522b3:	83 ec 0c             	sub    $0xc,%esp
 80522b6:	50                   	push   %eax
 80522b7:	e8 a4 66 ff ff       	call   8048960 <clearerr@plt>
 80522bc:	83 c4 10             	add    $0x10,%esp
 80522bf:	a1 18 91 05 08       	mov    0x8059118,%eax
 80522c4:	8b 15 34 91 05 08    	mov    0x8059134,%edx
 80522ca:	8b 0d 2c 91 05 08    	mov    0x805912c,%ecx
 80522d0:	c1 e1 02             	shl    $0x2,%ecx
 80522d3:	01 ca                	add    %ecx,%edx
 80522d5:	8b 12                	mov    (%edx),%edx
 80522d7:	8b 4a 04             	mov    0x4(%edx),%ecx
 80522da:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 80522dd:	01 ca                	add    %ecx,%edx
 80522df:	50                   	push   %eax
 80522e0:	ff 75 d8             	pushl  -0x28(%ebp)
 80522e3:	6a 01                	push   $0x1
 80522e5:	52                   	push   %edx
 80522e6:	e8 65 65 ff ff       	call   8048850 <fread@plt>
 80522eb:	83 c4 10             	add    $0x10,%esp
 80522ee:	a3 3c 91 05 08       	mov    %eax,0x805913c
 80522f3:	a1 3c 91 05 08       	mov    0x805913c,%eax
 80522f8:	85 c0                	test   %eax,%eax
 80522fa:	75 19                	jne    8052315 <yy_get_next_buffer+0x3bd>
 80522fc:	a1 18 91 05 08       	mov    0x8059118,%eax
 8052301:	83 ec 0c             	sub    $0xc,%esp
 8052304:	50                   	push   %eax
 8052305:	e8 e6 64 ff ff       	call   80487f0 <ferror@plt>
 805230a:	83 c4 10             	add    $0x10,%esp
 805230d:	85 c0                	test   %eax,%eax
 805230f:	0f 85 75 ff ff ff    	jne    805228a <yy_get_next_buffer+0x332>
 8052315:	a1 34 91 05 08       	mov    0x8059134,%eax
 805231a:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052320:	c1 e2 02             	shl    $0x2,%edx
 8052323:	01 d0                	add    %edx,%eax
 8052325:	8b 00                	mov    (%eax),%eax
 8052327:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 805232d:	89 50 10             	mov    %edx,0x10(%eax)
 8052330:	a1 3c 91 05 08       	mov    0x805913c,%eax
 8052335:	85 c0                	test   %eax,%eax
 8052337:	75 42                	jne    805237b <yy_get_next_buffer+0x423>
 8052339:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 805233d:	75 1a                	jne    8052359 <yy_get_next_buffer+0x401>
 805233f:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 8052346:	a1 18 91 05 08       	mov    0x8059118,%eax
 805234b:	83 ec 0c             	sub    $0xc,%esp
 805234e:	50                   	push   %eax
 805234f:	e8 80 05 00 00       	call   80528d4 <yyrestart>
 8052354:	83 c4 10             	add    $0x10,%esp
 8052357:	eb 29                	jmp    8052382 <yy_get_next_buffer+0x42a>
 8052359:	c7 45 d4 02 00 00 00 	movl   $0x2,-0x2c(%ebp)
 8052360:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052365:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805236b:	c1 e2 02             	shl    $0x2,%edx
 805236e:	01 d0                	add    %edx,%eax
 8052370:	8b 00                	mov    (%eax),%eax
 8052372:	c7 40 2c 02 00 00 00 	movl   $0x2,0x2c(%eax)
 8052379:	eb 07                	jmp    8052382 <yy_get_next_buffer+0x42a>
 805237b:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8052382:	a1 3c 91 05 08       	mov    0x805913c,%eax
 8052387:	89 c2                	mov    %eax,%edx
 8052389:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 805238c:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 805238f:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052394:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805239a:	c1 e2 02             	shl    $0x2,%edx
 805239d:	01 d0                	add    %edx,%eax
 805239f:	8b 00                	mov    (%eax),%eax
 80523a1:	8b 40 0c             	mov    0xc(%eax),%eax
 80523a4:	39 c1                	cmp    %eax,%ecx
 80523a6:	76 78                	jbe    8052420 <yy_get_next_buffer+0x4c8>
 80523a8:	a1 3c 91 05 08       	mov    0x805913c,%eax
 80523ad:	89 c2                	mov    %eax,%edx
 80523af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80523b2:	01 c2                	add    %eax,%edx
 80523b4:	a1 3c 91 05 08       	mov    0x805913c,%eax
 80523b9:	d1 f8                	sar    %eax
 80523bb:	01 d0                	add    %edx,%eax
 80523bd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80523c0:	a1 34 91 05 08       	mov    0x8059134,%eax
 80523c5:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80523cb:	c1 e2 02             	shl    $0x2,%edx
 80523ce:	01 d0                	add    %edx,%eax
 80523d0:	8b 18                	mov    (%eax),%ebx
 80523d2:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80523d5:	a1 34 91 05 08       	mov    0x8059134,%eax
 80523da:	8b 0d 2c 91 05 08    	mov    0x805912c,%ecx
 80523e0:	c1 e1 02             	shl    $0x2,%ecx
 80523e3:	01 c8                	add    %ecx,%eax
 80523e5:	8b 00                	mov    (%eax),%eax
 80523e7:	8b 40 04             	mov    0x4(%eax),%eax
 80523ea:	83 ec 08             	sub    $0x8,%esp
 80523ed:	52                   	push   %edx
 80523ee:	50                   	push   %eax
 80523ef:	e8 ad 0e 00 00       	call   80532a1 <yyrealloc>
 80523f4:	83 c4 10             	add    $0x10,%esp
 80523f7:	89 43 04             	mov    %eax,0x4(%ebx)
 80523fa:	a1 34 91 05 08       	mov    0x8059134,%eax
 80523ff:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052405:	c1 e2 02             	shl    $0x2,%edx
 8052408:	01 d0                	add    %edx,%eax
 805240a:	8b 00                	mov    (%eax),%eax
 805240c:	8b 40 04             	mov    0x4(%eax),%eax
 805240f:	85 c0                	test   %eax,%eax
 8052411:	75 0d                	jne    8052420 <yy_get_next_buffer+0x4c8>
 8052413:	83 ec 0c             	sub    $0xc,%esp
 8052416:	68 d0 5c 05 08       	push   $0x8055cd0
 805241b:	e8 d3 0c 00 00       	call   80530f3 <yy_fatal_error>
 8052420:	a1 3c 91 05 08       	mov    0x805913c,%eax
 8052425:	89 c2                	mov    %eax,%edx
 8052427:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 805242a:	01 d0                	add    %edx,%eax
 805242c:	a3 3c 91 05 08       	mov    %eax,0x805913c
 8052431:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052436:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805243c:	c1 e2 02             	shl    $0x2,%edx
 805243f:	01 d0                	add    %edx,%eax
 8052441:	8b 00                	mov    (%eax),%eax
 8052443:	8b 40 04             	mov    0x4(%eax),%eax
 8052446:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 805244c:	01 d0                	add    %edx,%eax
 805244e:	c6 00 00             	movb   $0x0,(%eax)
 8052451:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052456:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805245c:	c1 e2 02             	shl    $0x2,%edx
 805245f:	01 d0                	add    %edx,%eax
 8052461:	8b 00                	mov    (%eax),%eax
 8052463:	8b 40 04             	mov    0x4(%eax),%eax
 8052466:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 805246c:	83 c2 01             	add    $0x1,%edx
 805246f:	01 d0                	add    %edx,%eax
 8052471:	c6 00 00             	movb   $0x0,(%eax)
 8052474:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052479:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805247f:	c1 e2 02             	shl    $0x2,%edx
 8052482:	01 d0                	add    %edx,%eax
 8052484:	8b 00                	mov    (%eax),%eax
 8052486:	8b 40 04             	mov    0x4(%eax),%eax
 8052489:	a3 64 95 05 08       	mov    %eax,0x8059564
 805248e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8052491:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8052494:	c9                   	leave  
 8052495:	c3                   	ret    

08052496 <yy_get_previous_state>:
 8052496:	55                   	push   %ebp
 8052497:	89 e5                	mov    %esp,%ebp
 8052499:	83 ec 10             	sub    $0x10,%esp
 805249c:	a1 48 91 05 08       	mov    0x8059148,%eax
 80524a1:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80524a4:	a1 64 95 05 08       	mov    0x8059564,%eax
 80524a9:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80524ac:	e9 b1 00 00 00       	jmp    8052562 <yy_get_previous_state+0xcc>
 80524b1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80524b4:	0f b6 00             	movzbl (%eax),%eax
 80524b7:	84 c0                	test   %al,%al
 80524b9:	74 12                	je     80524cd <yy_get_previous_state+0x37>
 80524bb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80524be:	0f b6 00             	movzbl (%eax),%eax
 80524c1:	0f b6 c0             	movzbl %al,%eax
 80524c4:	0f b6 80 60 53 05 08 	movzbl 0x8055360(%eax),%eax
 80524cb:	eb 05                	jmp    80524d2 <yy_get_previous_state+0x3c>
 80524cd:	b8 01 00 00 00       	mov    $0x1,%eax
 80524d2:	88 45 f7             	mov    %al,-0x9(%ebp)
 80524d5:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80524d8:	0f b7 84 00 a0 52 05 	movzwl 0x80552a0(%eax,%eax,1),%eax
 80524df:	08 
 80524e0:	66 85 c0             	test   %ax,%ax
 80524e3:	74 35                	je     805251a <yy_get_previous_state+0x84>
 80524e5:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80524e8:	a3 50 91 05 08       	mov    %eax,0x8059150
 80524ed:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80524f0:	a3 54 91 05 08       	mov    %eax,0x8059154
 80524f5:	eb 23                	jmp    805251a <yy_get_previous_state+0x84>
 80524f7:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80524fa:	0f b7 84 00 60 55 05 	movzwl 0x8055560(%eax,%eax,1),%eax
 8052501:	08 
 8052502:	98                   	cwtl   
 8052503:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8052506:	83 7d f8 51          	cmpl   $0x51,-0x8(%ebp)
 805250a:	7e 0e                	jle    805251a <yy_get_previous_state+0x84>
 805250c:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8052510:	0f b6 80 60 54 05 08 	movzbl 0x8055460(%eax),%eax
 8052517:	88 45 f7             	mov    %al,-0x9(%ebp)
 805251a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 805251d:	0f b7 84 00 a0 54 05 	movzwl 0x80554a0(%eax,%eax,1),%eax
 8052524:	08 
 8052525:	0f b7 d0             	movzwl %ax,%edx
 8052528:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 805252c:	01 d0                	add    %edx,%eax
 805252e:	0f b7 84 00 e0 57 05 	movzwl 0x80557e0(%eax,%eax,1),%eax
 8052535:	08 
 8052536:	98                   	cwtl   
 8052537:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 805253a:	75 bb                	jne    80524f7 <yy_get_previous_state+0x61>
 805253c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 805253f:	0f b7 84 00 a0 54 05 	movzwl 0x80554a0(%eax,%eax,1),%eax
 8052546:	08 
 8052547:	0f b7 d0             	movzwl %ax,%edx
 805254a:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 805254e:	01 d0                	add    %edx,%eax
 8052550:	0f b7 84 00 20 56 05 	movzwl 0x8055620(%eax,%eax,1),%eax
 8052557:	08 
 8052558:	0f b7 c0             	movzwl %ax,%eax
 805255b:	89 45 f8             	mov    %eax,-0x8(%ebp)
 805255e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8052562:	a1 40 91 05 08       	mov    0x8059140,%eax
 8052567:	39 45 fc             	cmp    %eax,-0x4(%ebp)
 805256a:	0f 82 41 ff ff ff    	jb     80524b1 <yy_get_previous_state+0x1b>
 8052570:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8052573:	c9                   	leave  
 8052574:	c3                   	ret    

08052575 <yy_try_NUL_trans>:
 8052575:	55                   	push   %ebp
 8052576:	89 e5                	mov    %esp,%ebp
 8052578:	83 ec 10             	sub    $0x10,%esp
 805257b:	a1 40 91 05 08       	mov    0x8059140,%eax
 8052580:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8052583:	c6 45 f7 01          	movb   $0x1,-0x9(%ebp)
 8052587:	8b 45 08             	mov    0x8(%ebp),%eax
 805258a:	0f b7 84 00 a0 52 05 	movzwl 0x80552a0(%eax,%eax,1),%eax
 8052591:	08 
 8052592:	66 85 c0             	test   %ax,%ax
 8052595:	74 35                	je     80525cc <yy_try_NUL_trans+0x57>
 8052597:	8b 45 08             	mov    0x8(%ebp),%eax
 805259a:	a3 50 91 05 08       	mov    %eax,0x8059150
 805259f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80525a2:	a3 54 91 05 08       	mov    %eax,0x8059154
 80525a7:	eb 23                	jmp    80525cc <yy_try_NUL_trans+0x57>
 80525a9:	8b 45 08             	mov    0x8(%ebp),%eax
 80525ac:	0f b7 84 00 60 55 05 	movzwl 0x8055560(%eax,%eax,1),%eax
 80525b3:	08 
 80525b4:	98                   	cwtl   
 80525b5:	89 45 08             	mov    %eax,0x8(%ebp)
 80525b8:	83 7d 08 51          	cmpl   $0x51,0x8(%ebp)
 80525bc:	7e 0e                	jle    80525cc <yy_try_NUL_trans+0x57>
 80525be:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 80525c2:	0f b6 80 60 54 05 08 	movzbl 0x8055460(%eax),%eax
 80525c9:	88 45 f7             	mov    %al,-0x9(%ebp)
 80525cc:	8b 45 08             	mov    0x8(%ebp),%eax
 80525cf:	0f b7 84 00 a0 54 05 	movzwl 0x80554a0(%eax,%eax,1),%eax
 80525d6:	08 
 80525d7:	0f b7 d0             	movzwl %ax,%edx
 80525da:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 80525de:	01 d0                	add    %edx,%eax
 80525e0:	0f b7 84 00 e0 57 05 	movzwl 0x80557e0(%eax,%eax,1),%eax
 80525e7:	08 
 80525e8:	98                   	cwtl   
 80525e9:	3b 45 08             	cmp    0x8(%ebp),%eax
 80525ec:	75 bb                	jne    80525a9 <yy_try_NUL_trans+0x34>
 80525ee:	8b 45 08             	mov    0x8(%ebp),%eax
 80525f1:	0f b7 84 00 a0 54 05 	movzwl 0x80554a0(%eax,%eax,1),%eax
 80525f8:	08 
 80525f9:	0f b7 d0             	movzwl %ax,%edx
 80525fc:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8052600:	01 d0                	add    %edx,%eax
 8052602:	0f b7 84 00 20 56 05 	movzwl 0x8055620(%eax,%eax,1),%eax
 8052609:	08 
 805260a:	0f b7 c0             	movzwl %ax,%eax
 805260d:	89 45 08             	mov    %eax,0x8(%ebp)
 8052610:	83 7d 08 51          	cmpl   $0x51,0x8(%ebp)
 8052614:	0f 94 c0             	sete   %al
 8052617:	0f b6 c0             	movzbl %al,%eax
 805261a:	89 45 fc             	mov    %eax,-0x4(%ebp)
 805261d:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8052621:	75 05                	jne    8052628 <yy_try_NUL_trans+0xb3>
 8052623:	8b 45 08             	mov    0x8(%ebp),%eax
 8052626:	eb 05                	jmp    805262d <yy_try_NUL_trans+0xb8>
 8052628:	b8 00 00 00 00       	mov    $0x0,%eax
 805262d:	c9                   	leave  
 805262e:	c3                   	ret    

0805262f <yyunput>:
 805262f:	55                   	push   %ebp
 8052630:	89 e5                	mov    %esp,%ebp
 8052632:	83 ec 18             	sub    $0x18,%esp
 8052635:	a1 40 91 05 08       	mov    0x8059140,%eax
 805263a:	89 45 e8             	mov    %eax,-0x18(%ebp)
 805263d:	0f b6 15 38 91 05 08 	movzbl 0x8059138,%edx
 8052644:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052647:	88 10                	mov    %dl,(%eax)
 8052649:	a1 34 91 05 08       	mov    0x8059134,%eax
 805264e:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052654:	c1 e2 02             	shl    $0x2,%edx
 8052657:	01 d0                	add    %edx,%eax
 8052659:	8b 00                	mov    (%eax),%eax
 805265b:	8b 40 04             	mov    0x4(%eax),%eax
 805265e:	83 c0 02             	add    $0x2,%eax
 8052661:	3b 45 e8             	cmp    -0x18(%ebp),%eax
 8052664:	0f 86 04 01 00 00    	jbe    805276e <yyunput+0x13f>
 805266a:	a1 3c 91 05 08       	mov    0x805913c,%eax
 805266f:	83 c0 02             	add    $0x2,%eax
 8052672:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052675:	a1 34 91 05 08       	mov    0x8059134,%eax
 805267a:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052680:	c1 e2 02             	shl    $0x2,%edx
 8052683:	01 d0                	add    %edx,%eax
 8052685:	8b 00                	mov    (%eax),%eax
 8052687:	8b 50 04             	mov    0x4(%eax),%edx
 805268a:	a1 34 91 05 08       	mov    0x8059134,%eax
 805268f:	8b 0d 2c 91 05 08    	mov    0x805912c,%ecx
 8052695:	c1 e1 02             	shl    $0x2,%ecx
 8052698:	01 c8                	add    %ecx,%eax
 805269a:	8b 00                	mov    (%eax),%eax
 805269c:	8b 40 0c             	mov    0xc(%eax),%eax
 805269f:	83 c0 02             	add    $0x2,%eax
 80526a2:	01 d0                	add    %edx,%eax
 80526a4:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80526a7:	a1 34 91 05 08       	mov    0x8059134,%eax
 80526ac:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80526b2:	c1 e2 02             	shl    $0x2,%edx
 80526b5:	01 d0                	add    %edx,%eax
 80526b7:	8b 00                	mov    (%eax),%eax
 80526b9:	8b 50 04             	mov    0x4(%eax),%edx
 80526bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80526bf:	01 d0                	add    %edx,%eax
 80526c1:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80526c4:	eb 13                	jmp    80526d9 <yyunput+0xaa>
 80526c6:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 80526ca:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
 80526ce:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80526d1:	0f b6 10             	movzbl (%eax),%edx
 80526d4:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80526d7:	88 10                	mov    %dl,(%eax)
 80526d9:	a1 34 91 05 08       	mov    0x8059134,%eax
 80526de:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80526e4:	c1 e2 02             	shl    $0x2,%edx
 80526e7:	01 d0                	add    %edx,%eax
 80526e9:	8b 00                	mov    (%eax),%eax
 80526eb:	8b 40 04             	mov    0x4(%eax),%eax
 80526ee:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 80526f1:	72 d3                	jb     80526c6 <yyunput+0x97>
 80526f3:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80526f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80526f9:	29 c2                	sub    %eax,%edx
 80526fb:	89 d0                	mov    %edx,%eax
 80526fd:	01 45 e8             	add    %eax,-0x18(%ebp)
 8052700:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8052703:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052706:	29 c2                	sub    %eax,%edx
 8052708:	89 d0                	mov    %edx,%eax
 805270a:	01 45 0c             	add    %eax,0xc(%ebp)
 805270d:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052712:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052718:	c1 e2 02             	shl    $0x2,%edx
 805271b:	01 d0                	add    %edx,%eax
 805271d:	8b 00                	mov    (%eax),%eax
 805271f:	8b 15 34 91 05 08    	mov    0x8059134,%edx
 8052725:	8b 0d 2c 91 05 08    	mov    0x805912c,%ecx
 805272b:	c1 e1 02             	shl    $0x2,%ecx
 805272e:	01 ca                	add    %ecx,%edx
 8052730:	8b 12                	mov    (%edx),%edx
 8052732:	8b 52 0c             	mov    0xc(%edx),%edx
 8052735:	89 15 3c 91 05 08    	mov    %edx,0x805913c
 805273b:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 8052741:	89 50 10             	mov    %edx,0x10(%eax)
 8052744:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052749:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805274f:	c1 e2 02             	shl    $0x2,%edx
 8052752:	01 d0                	add    %edx,%eax
 8052754:	8b 00                	mov    (%eax),%eax
 8052756:	8b 40 04             	mov    0x4(%eax),%eax
 8052759:	83 c0 02             	add    $0x2,%eax
 805275c:	3b 45 e8             	cmp    -0x18(%ebp),%eax
 805275f:	76 0d                	jbe    805276e <yyunput+0x13f>
 8052761:	83 ec 0c             	sub    $0xc,%esp
 8052764:	68 00 5d 05 08       	push   $0x8055d00
 8052769:	e8 85 09 00 00       	call   80530f3 <yy_fatal_error>
 805276e:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
 8052772:	8b 45 08             	mov    0x8(%ebp),%eax
 8052775:	89 c2                	mov    %eax,%edx
 8052777:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805277a:	88 10                	mov    %dl,(%eax)
 805277c:	83 7d 08 0a          	cmpl   $0xa,0x8(%ebp)
 8052780:	75 0d                	jne    805278f <yyunput+0x160>
 8052782:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8052787:	83 e8 01             	sub    $0x1,%eax
 805278a:	a3 bc 90 05 08       	mov    %eax,0x80590bc
 805278f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052792:	a3 64 95 05 08       	mov    %eax,0x8059564
 8052797:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805279a:	0f b6 00             	movzbl (%eax),%eax
 805279d:	a2 38 91 05 08       	mov    %al,0x8059138
 80527a2:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80527a5:	a3 40 91 05 08       	mov    %eax,0x8059140
 80527aa:	90                   	nop
 80527ab:	c9                   	leave  
 80527ac:	c3                   	ret    

080527ad <input>:
 80527ad:	55                   	push   %ebp
 80527ae:	89 e5                	mov    %esp,%ebp
 80527b0:	83 ec 18             	sub    $0x18,%esp
 80527b3:	a1 40 91 05 08       	mov    0x8059140,%eax
 80527b8:	0f b6 15 38 91 05 08 	movzbl 0x8059138,%edx
 80527bf:	88 10                	mov    %dl,(%eax)
 80527c1:	a1 40 91 05 08       	mov    0x8059140,%eax
 80527c6:	0f b6 00             	movzbl (%eax),%eax
 80527c9:	84 c0                	test   %al,%al
 80527cb:	0f 85 bb 00 00 00    	jne    805288c <input+0xdf>
 80527d1:	a1 34 91 05 08       	mov    0x8059134,%eax
 80527d6:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80527dc:	c1 e2 02             	shl    $0x2,%edx
 80527df:	01 d0                	add    %edx,%eax
 80527e1:	8b 00                	mov    (%eax),%eax
 80527e3:	8b 40 04             	mov    0x4(%eax),%eax
 80527e6:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 80527ec:	01 c2                	add    %eax,%edx
 80527ee:	a1 40 91 05 08       	mov    0x8059140,%eax
 80527f3:	39 c2                	cmp    %eax,%edx
 80527f5:	76 0d                	jbe    8052804 <input+0x57>
 80527f7:	a1 40 91 05 08       	mov    0x8059140,%eax
 80527fc:	c6 00 00             	movb   $0x0,(%eax)
 80527ff:	e9 88 00 00 00       	jmp    805288c <input+0xdf>
 8052804:	a1 40 91 05 08       	mov    0x8059140,%eax
 8052809:	89 c2                	mov    %eax,%edx
 805280b:	a1 64 95 05 08       	mov    0x8059564,%eax
 8052810:	29 c2                	sub    %eax,%edx
 8052812:	89 d0                	mov    %edx,%eax
 8052814:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052817:	a1 40 91 05 08       	mov    0x8059140,%eax
 805281c:	83 c0 01             	add    $0x1,%eax
 805281f:	a3 40 91 05 08       	mov    %eax,0x8059140
 8052824:	e8 2f f7 ff ff       	call   8051f58 <yy_get_next_buffer>
 8052829:	83 f8 01             	cmp    $0x1,%eax
 805282c:	74 1c                	je     805284a <input+0x9d>
 805282e:	83 f8 02             	cmp    $0x2,%eax
 8052831:	74 06                	je     8052839 <input+0x8c>
 8052833:	85 c0                	test   %eax,%eax
 8052835:	74 44                	je     805287b <input+0xce>
 8052837:	eb 53                	jmp    805288c <input+0xdf>
 8052839:	a1 18 91 05 08       	mov    0x8059118,%eax
 805283e:	83 ec 0c             	sub    $0xc,%esp
 8052841:	50                   	push   %eax
 8052842:	e8 8d 00 00 00       	call   80528d4 <yyrestart>
 8052847:	83 c4 10             	add    $0x10,%esp
 805284a:	e8 01 16 00 00       	call   8053e50 <yywrap>
 805284f:	85 c0                	test   %eax,%eax
 8052851:	74 07                	je     805285a <input+0xad>
 8052853:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8052858:	eb 78                	jmp    80528d2 <input+0x125>
 805285a:	a1 4c 91 05 08       	mov    0x805914c,%eax
 805285f:	85 c0                	test   %eax,%eax
 8052861:	75 11                	jne    8052874 <input+0xc7>
 8052863:	a1 18 91 05 08       	mov    0x8059118,%eax
 8052868:	83 ec 0c             	sub    $0xc,%esp
 805286b:	50                   	push   %eax
 805286c:	e8 63 00 00 00       	call   80528d4 <yyrestart>
 8052871:	83 c4 10             	add    $0x10,%esp
 8052874:	e8 34 ff ff ff       	call   80527ad <input>
 8052879:	eb 57                	jmp    80528d2 <input+0x125>
 805287b:	8b 15 64 95 05 08    	mov    0x8059564,%edx
 8052881:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052884:	01 d0                	add    %edx,%eax
 8052886:	a3 40 91 05 08       	mov    %eax,0x8059140
 805288b:	90                   	nop
 805288c:	a1 40 91 05 08       	mov    0x8059140,%eax
 8052891:	0f b6 00             	movzbl (%eax),%eax
 8052894:	0f b6 c0             	movzbl %al,%eax
 8052897:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805289a:	a1 40 91 05 08       	mov    0x8059140,%eax
 805289f:	c6 00 00             	movb   $0x0,(%eax)
 80528a2:	a1 40 91 05 08       	mov    0x8059140,%eax
 80528a7:	83 c0 01             	add    $0x1,%eax
 80528aa:	a3 40 91 05 08       	mov    %eax,0x8059140
 80528af:	a1 40 91 05 08       	mov    0x8059140,%eax
 80528b4:	0f b6 00             	movzbl (%eax),%eax
 80528b7:	a2 38 91 05 08       	mov    %al,0x8059138
 80528bc:	83 7d f4 0a          	cmpl   $0xa,-0xc(%ebp)
 80528c0:	75 0d                	jne    80528cf <input+0x122>
 80528c2:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 80528c7:	83 c0 01             	add    $0x1,%eax
 80528ca:	a3 bc 90 05 08       	mov    %eax,0x80590bc
 80528cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80528d2:	c9                   	leave  
 80528d3:	c3                   	ret    

080528d4 <yyrestart>:
 80528d4:	55                   	push   %ebp
 80528d5:	89 e5                	mov    %esp,%ebp
 80528d7:	53                   	push   %ebx
 80528d8:	83 ec 04             	sub    $0x4,%esp
 80528db:	a1 34 91 05 08       	mov    0x8059134,%eax
 80528e0:	85 c0                	test   %eax,%eax
 80528e2:	74 16                	je     80528fa <yyrestart+0x26>
 80528e4:	a1 34 91 05 08       	mov    0x8059134,%eax
 80528e9:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80528ef:	c1 e2 02             	shl    $0x2,%edx
 80528f2:	01 d0                	add    %edx,%eax
 80528f4:	8b 00                	mov    (%eax),%eax
 80528f6:	85 c0                	test   %eax,%eax
 80528f8:	75 2e                	jne    8052928 <yyrestart+0x54>
 80528fa:	e8 3f 05 00 00       	call   8052e3e <yyensure_buffer_stack>
 80528ff:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052904:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805290a:	c1 e2 02             	shl    $0x2,%edx
 805290d:	8d 1c 10             	lea    (%eax,%edx,1),%ebx
 8052910:	a1 18 91 05 08       	mov    0x8059118,%eax
 8052915:	83 ec 08             	sub    $0x8,%esp
 8052918:	68 00 40 00 00       	push   $0x4000
 805291d:	50                   	push   %eax
 805291e:	e8 6d 01 00 00       	call   8052a90 <yy_create_buffer>
 8052923:	83 c4 10             	add    $0x10,%esp
 8052926:	89 03                	mov    %eax,(%ebx)
 8052928:	a1 34 91 05 08       	mov    0x8059134,%eax
 805292d:	85 c0                	test   %eax,%eax
 805292f:	74 14                	je     8052945 <yyrestart+0x71>
 8052931:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052936:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 805293c:	c1 e2 02             	shl    $0x2,%edx
 805293f:	01 d0                	add    %edx,%eax
 8052941:	8b 00                	mov    (%eax),%eax
 8052943:	eb 05                	jmp    805294a <yyrestart+0x76>
 8052945:	b8 00 00 00 00       	mov    $0x0,%eax
 805294a:	83 ec 08             	sub    $0x8,%esp
 805294d:	ff 75 08             	pushl  0x8(%ebp)
 8052950:	50                   	push   %eax
 8052951:	e8 38 02 00 00       	call   8052b8e <yy_init_buffer>
 8052956:	83 c4 10             	add    $0x10,%esp
 8052959:	e8 c8 00 00 00       	call   8052a26 <yy_load_buffer_state>
 805295e:	90                   	nop
 805295f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8052962:	c9                   	leave  
 8052963:	c3                   	ret    

08052964 <yy_switch_to_buffer>:
 8052964:	55                   	push   %ebp
 8052965:	89 e5                	mov    %esp,%ebp
 8052967:	83 ec 08             	sub    $0x8,%esp
 805296a:	e8 cf 04 00 00       	call   8052e3e <yyensure_buffer_stack>
 805296f:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052974:	85 c0                	test   %eax,%eax
 8052976:	74 14                	je     805298c <yy_switch_to_buffer+0x28>
 8052978:	a1 34 91 05 08       	mov    0x8059134,%eax
 805297d:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052983:	c1 e2 02             	shl    $0x2,%edx
 8052986:	01 d0                	add    %edx,%eax
 8052988:	8b 00                	mov    (%eax),%eax
 805298a:	eb 05                	jmp    8052991 <yy_switch_to_buffer+0x2d>
 805298c:	b8 00 00 00 00       	mov    $0x0,%eax
 8052991:	3b 45 08             	cmp    0x8(%ebp),%eax
 8052994:	0f 84 89 00 00 00    	je     8052a23 <yy_switch_to_buffer+0xbf>
 805299a:	a1 34 91 05 08       	mov    0x8059134,%eax
 805299f:	85 c0                	test   %eax,%eax
 80529a1:	74 5a                	je     80529fd <yy_switch_to_buffer+0x99>
 80529a3:	a1 34 91 05 08       	mov    0x8059134,%eax
 80529a8:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80529ae:	c1 e2 02             	shl    $0x2,%edx
 80529b1:	01 d0                	add    %edx,%eax
 80529b3:	8b 00                	mov    (%eax),%eax
 80529b5:	85 c0                	test   %eax,%eax
 80529b7:	74 44                	je     80529fd <yy_switch_to_buffer+0x99>
 80529b9:	a1 40 91 05 08       	mov    0x8059140,%eax
 80529be:	0f b6 15 38 91 05 08 	movzbl 0x8059138,%edx
 80529c5:	88 10                	mov    %dl,(%eax)
 80529c7:	a1 34 91 05 08       	mov    0x8059134,%eax
 80529cc:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80529d2:	c1 e2 02             	shl    $0x2,%edx
 80529d5:	01 d0                	add    %edx,%eax
 80529d7:	8b 00                	mov    (%eax),%eax
 80529d9:	8b 15 40 91 05 08    	mov    0x8059140,%edx
 80529df:	89 50 08             	mov    %edx,0x8(%eax)
 80529e2:	a1 34 91 05 08       	mov    0x8059134,%eax
 80529e7:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 80529ed:	c1 e2 02             	shl    $0x2,%edx
 80529f0:	01 d0                	add    %edx,%eax
 80529f2:	8b 00                	mov    (%eax),%eax
 80529f4:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 80529fa:	89 50 10             	mov    %edx,0x10(%eax)
 80529fd:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052a02:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052a08:	c1 e2 02             	shl    $0x2,%edx
 8052a0b:	01 c2                	add    %eax,%edx
 8052a0d:	8b 45 08             	mov    0x8(%ebp),%eax
 8052a10:	89 02                	mov    %eax,(%edx)
 8052a12:	e8 0f 00 00 00       	call   8052a26 <yy_load_buffer_state>
 8052a17:	c7 05 4c 91 05 08 01 	movl   $0x1,0x805914c
 8052a1e:	00 00 00 
 8052a21:	eb 01                	jmp    8052a24 <yy_switch_to_buffer+0xc0>
 8052a23:	90                   	nop
 8052a24:	c9                   	leave  
 8052a25:	c3                   	ret    

08052a26 <yy_load_buffer_state>:
 8052a26:	55                   	push   %ebp
 8052a27:	89 e5                	mov    %esp,%ebp
 8052a29:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052a2e:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052a34:	c1 e2 02             	shl    $0x2,%edx
 8052a37:	01 d0                	add    %edx,%eax
 8052a39:	8b 00                	mov    (%eax),%eax
 8052a3b:	8b 40 10             	mov    0x10(%eax),%eax
 8052a3e:	a3 3c 91 05 08       	mov    %eax,0x805913c
 8052a43:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052a48:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052a4e:	c1 e2 02             	shl    $0x2,%edx
 8052a51:	01 d0                	add    %edx,%eax
 8052a53:	8b 00                	mov    (%eax),%eax
 8052a55:	8b 40 08             	mov    0x8(%eax),%eax
 8052a58:	a3 40 91 05 08       	mov    %eax,0x8059140
 8052a5d:	a1 40 91 05 08       	mov    0x8059140,%eax
 8052a62:	a3 64 95 05 08       	mov    %eax,0x8059564
 8052a67:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052a6c:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052a72:	c1 e2 02             	shl    $0x2,%edx
 8052a75:	01 d0                	add    %edx,%eax
 8052a77:	8b 00                	mov    (%eax),%eax
 8052a79:	8b 00                	mov    (%eax),%eax
 8052a7b:	a3 18 91 05 08       	mov    %eax,0x8059118
 8052a80:	a1 40 91 05 08       	mov    0x8059140,%eax
 8052a85:	0f b6 00             	movzbl (%eax),%eax
 8052a88:	a2 38 91 05 08       	mov    %al,0x8059138
 8052a8d:	90                   	nop
 8052a8e:	5d                   	pop    %ebp
 8052a8f:	c3                   	ret    

08052a90 <yy_create_buffer>:
 8052a90:	55                   	push   %ebp
 8052a91:	89 e5                	mov    %esp,%ebp
 8052a93:	83 ec 18             	sub    $0x18,%esp
 8052a96:	83 ec 0c             	sub    $0xc,%esp
 8052a99:	6a 30                	push   $0x30
 8052a9b:	e8 eb 07 00 00       	call   805328b <yyalloc>
 8052aa0:	83 c4 10             	add    $0x10,%esp
 8052aa3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052aa6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8052aaa:	75 0d                	jne    8052ab9 <yy_create_buffer+0x29>
 8052aac:	83 ec 0c             	sub    $0xc,%esp
 8052aaf:	68 20 5d 05 08       	push   $0x8055d20
 8052ab4:	e8 3a 06 00 00       	call   80530f3 <yy_fatal_error>
 8052ab9:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052abc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052abf:	89 50 0c             	mov    %edx,0xc(%eax)
 8052ac2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052ac5:	8b 40 0c             	mov    0xc(%eax),%eax
 8052ac8:	83 c0 02             	add    $0x2,%eax
 8052acb:	83 ec 0c             	sub    $0xc,%esp
 8052ace:	50                   	push   %eax
 8052acf:	e8 b7 07 00 00       	call   805328b <yyalloc>
 8052ad4:	83 c4 10             	add    $0x10,%esp
 8052ad7:	89 c2                	mov    %eax,%edx
 8052ad9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052adc:	89 50 04             	mov    %edx,0x4(%eax)
 8052adf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052ae2:	8b 40 04             	mov    0x4(%eax),%eax
 8052ae5:	85 c0                	test   %eax,%eax
 8052ae7:	75 0d                	jne    8052af6 <yy_create_buffer+0x66>
 8052ae9:	83 ec 0c             	sub    $0xc,%esp
 8052aec:	68 20 5d 05 08       	push   $0x8055d20
 8052af1:	e8 fd 05 00 00       	call   80530f3 <yy_fatal_error>
 8052af6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052af9:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
 8052b00:	83 ec 08             	sub    $0x8,%esp
 8052b03:	ff 75 08             	pushl  0x8(%ebp)
 8052b06:	ff 75 f4             	pushl  -0xc(%ebp)
 8052b09:	e8 80 00 00 00       	call   8052b8e <yy_init_buffer>
 8052b0e:	83 c4 10             	add    $0x10,%esp
 8052b11:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052b14:	c9                   	leave  
 8052b15:	c3                   	ret    

08052b16 <yy_delete_buffer>:
 8052b16:	55                   	push   %ebp
 8052b17:	89 e5                	mov    %esp,%ebp
 8052b19:	83 ec 08             	sub    $0x8,%esp
 8052b1c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8052b20:	74 69                	je     8052b8b <yy_delete_buffer+0x75>
 8052b22:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052b27:	85 c0                	test   %eax,%eax
 8052b29:	74 14                	je     8052b3f <yy_delete_buffer+0x29>
 8052b2b:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052b30:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052b36:	c1 e2 02             	shl    $0x2,%edx
 8052b39:	01 d0                	add    %edx,%eax
 8052b3b:	8b 00                	mov    (%eax),%eax
 8052b3d:	eb 05                	jmp    8052b44 <yy_delete_buffer+0x2e>
 8052b3f:	b8 00 00 00 00       	mov    $0x0,%eax
 8052b44:	3b 45 08             	cmp    0x8(%ebp),%eax
 8052b47:	75 16                	jne    8052b5f <yy_delete_buffer+0x49>
 8052b49:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052b4e:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052b54:	c1 e2 02             	shl    $0x2,%edx
 8052b57:	01 d0                	add    %edx,%eax
 8052b59:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052b5f:	8b 45 08             	mov    0x8(%ebp),%eax
 8052b62:	8b 40 14             	mov    0x14(%eax),%eax
 8052b65:	85 c0                	test   %eax,%eax
 8052b67:	74 12                	je     8052b7b <yy_delete_buffer+0x65>
 8052b69:	8b 45 08             	mov    0x8(%ebp),%eax
 8052b6c:	8b 40 04             	mov    0x4(%eax),%eax
 8052b6f:	83 ec 0c             	sub    $0xc,%esp
 8052b72:	50                   	push   %eax
 8052b73:	e8 42 07 00 00       	call   80532ba <yyfree>
 8052b78:	83 c4 10             	add    $0x10,%esp
 8052b7b:	83 ec 0c             	sub    $0xc,%esp
 8052b7e:	ff 75 08             	pushl  0x8(%ebp)
 8052b81:	e8 34 07 00 00       	call   80532ba <yyfree>
 8052b86:	83 c4 10             	add    $0x10,%esp
 8052b89:	eb 01                	jmp    8052b8c <yy_delete_buffer+0x76>
 8052b8b:	90                   	nop
 8052b8c:	c9                   	leave  
 8052b8d:	c3                   	ret    

08052b8e <yy_init_buffer>:
 8052b8e:	55                   	push   %ebp
 8052b8f:	89 e5                	mov    %esp,%ebp
 8052b91:	83 ec 18             	sub    $0x18,%esp
 8052b94:	e8 87 5d ff ff       	call   8048920 <__errno_location@plt>
 8052b99:	8b 00                	mov    (%eax),%eax
 8052b9b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052b9e:	83 ec 0c             	sub    $0xc,%esp
 8052ba1:	ff 75 08             	pushl  0x8(%ebp)
 8052ba4:	e8 95 00 00 00       	call   8052c3e <yy_flush_buffer>
 8052ba9:	83 c4 10             	add    $0x10,%esp
 8052bac:	8b 45 08             	mov    0x8(%ebp),%eax
 8052baf:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052bb2:	89 10                	mov    %edx,(%eax)
 8052bb4:	8b 45 08             	mov    0x8(%ebp),%eax
 8052bb7:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
 8052bbe:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052bc3:	85 c0                	test   %eax,%eax
 8052bc5:	74 14                	je     8052bdb <yy_init_buffer+0x4d>
 8052bc7:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052bcc:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052bd2:	c1 e2 02             	shl    $0x2,%edx
 8052bd5:	01 d0                	add    %edx,%eax
 8052bd7:	8b 00                	mov    (%eax),%eax
 8052bd9:	eb 05                	jmp    8052be0 <yy_init_buffer+0x52>
 8052bdb:	b8 00 00 00 00       	mov    $0x0,%eax
 8052be0:	3b 45 08             	cmp    0x8(%ebp),%eax
 8052be3:	74 14                	je     8052bf9 <yy_init_buffer+0x6b>
 8052be5:	8b 45 08             	mov    0x8(%ebp),%eax
 8052be8:	c7 40 20 01 00 00 00 	movl   $0x1,0x20(%eax)
 8052bef:	8b 45 08             	mov    0x8(%ebp),%eax
 8052bf2:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
 8052bf9:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8052bfd:	74 25                	je     8052c24 <yy_init_buffer+0x96>
 8052bff:	83 ec 0c             	sub    $0xc,%esp
 8052c02:	ff 75 0c             	pushl  0xc(%ebp)
 8052c05:	e8 36 5d ff ff       	call   8048940 <fileno@plt>
 8052c0a:	83 c4 10             	add    $0x10,%esp
 8052c0d:	83 ec 0c             	sub    $0xc,%esp
 8052c10:	50                   	push   %eax
 8052c11:	e8 7a 5d ff ff       	call   8048990 <isatty@plt>
 8052c16:	83 c4 10             	add    $0x10,%esp
 8052c19:	85 c0                	test   %eax,%eax
 8052c1b:	7e 07                	jle    8052c24 <yy_init_buffer+0x96>
 8052c1d:	ba 01 00 00 00       	mov    $0x1,%edx
 8052c22:	eb 05                	jmp    8052c29 <yy_init_buffer+0x9b>
 8052c24:	ba 00 00 00 00       	mov    $0x0,%edx
 8052c29:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c2c:	89 50 18             	mov    %edx,0x18(%eax)
 8052c2f:	e8 ec 5c ff ff       	call   8048920 <__errno_location@plt>
 8052c34:	89 c2                	mov    %eax,%edx
 8052c36:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052c39:	89 02                	mov    %eax,(%edx)
 8052c3b:	90                   	nop
 8052c3c:	c9                   	leave  
 8052c3d:	c3                   	ret    

08052c3e <yy_flush_buffer>:
 8052c3e:	55                   	push   %ebp
 8052c3f:	89 e5                	mov    %esp,%ebp
 8052c41:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8052c45:	74 6d                	je     8052cb4 <yy_flush_buffer+0x76>
 8052c47:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c4a:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 8052c51:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c54:	8b 40 04             	mov    0x4(%eax),%eax
 8052c57:	c6 00 00             	movb   $0x0,(%eax)
 8052c5a:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c5d:	8b 40 04             	mov    0x4(%eax),%eax
 8052c60:	83 c0 01             	add    $0x1,%eax
 8052c63:	c6 00 00             	movb   $0x0,(%eax)
 8052c66:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c69:	8b 50 04             	mov    0x4(%eax),%edx
 8052c6c:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c6f:	89 50 08             	mov    %edx,0x8(%eax)
 8052c72:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c75:	c7 40 1c 01 00 00 00 	movl   $0x1,0x1c(%eax)
 8052c7c:	8b 45 08             	mov    0x8(%ebp),%eax
 8052c7f:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
 8052c86:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052c8b:	85 c0                	test   %eax,%eax
 8052c8d:	74 14                	je     8052ca3 <yy_flush_buffer+0x65>
 8052c8f:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052c94:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052c9a:	c1 e2 02             	shl    $0x2,%edx
 8052c9d:	01 d0                	add    %edx,%eax
 8052c9f:	8b 00                	mov    (%eax),%eax
 8052ca1:	eb 05                	jmp    8052ca8 <yy_flush_buffer+0x6a>
 8052ca3:	b8 00 00 00 00       	mov    $0x0,%eax
 8052ca8:	3b 45 08             	cmp    0x8(%ebp),%eax
 8052cab:	75 08                	jne    8052cb5 <yy_flush_buffer+0x77>
 8052cad:	e8 74 fd ff ff       	call   8052a26 <yy_load_buffer_state>
 8052cb2:	eb 01                	jmp    8052cb5 <yy_flush_buffer+0x77>
 8052cb4:	90                   	nop
 8052cb5:	5d                   	pop    %ebp
 8052cb6:	c3                   	ret    

08052cb7 <yypush_buffer_state>:
 8052cb7:	55                   	push   %ebp
 8052cb8:	89 e5                	mov    %esp,%ebp
 8052cba:	83 ec 08             	sub    $0x8,%esp
 8052cbd:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8052cc1:	0f 84 ba 00 00 00    	je     8052d81 <yypush_buffer_state+0xca>
 8052cc7:	e8 72 01 00 00       	call   8052e3e <yyensure_buffer_stack>
 8052ccc:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052cd1:	85 c0                	test   %eax,%eax
 8052cd3:	74 5a                	je     8052d2f <yypush_buffer_state+0x78>
 8052cd5:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052cda:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052ce0:	c1 e2 02             	shl    $0x2,%edx
 8052ce3:	01 d0                	add    %edx,%eax
 8052ce5:	8b 00                	mov    (%eax),%eax
 8052ce7:	85 c0                	test   %eax,%eax
 8052ce9:	74 44                	je     8052d2f <yypush_buffer_state+0x78>
 8052ceb:	a1 40 91 05 08       	mov    0x8059140,%eax
 8052cf0:	0f b6 15 38 91 05 08 	movzbl 0x8059138,%edx
 8052cf7:	88 10                	mov    %dl,(%eax)
 8052cf9:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052cfe:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052d04:	c1 e2 02             	shl    $0x2,%edx
 8052d07:	01 d0                	add    %edx,%eax
 8052d09:	8b 00                	mov    (%eax),%eax
 8052d0b:	8b 15 40 91 05 08    	mov    0x8059140,%edx
 8052d11:	89 50 08             	mov    %edx,0x8(%eax)
 8052d14:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052d19:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052d1f:	c1 e2 02             	shl    $0x2,%edx
 8052d22:	01 d0                	add    %edx,%eax
 8052d24:	8b 00                	mov    (%eax),%eax
 8052d26:	8b 15 3c 91 05 08    	mov    0x805913c,%edx
 8052d2c:	89 50 10             	mov    %edx,0x10(%eax)
 8052d2f:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052d34:	85 c0                	test   %eax,%eax
 8052d36:	74 23                	je     8052d5b <yypush_buffer_state+0xa4>
 8052d38:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052d3d:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052d43:	c1 e2 02             	shl    $0x2,%edx
 8052d46:	01 d0                	add    %edx,%eax
 8052d48:	8b 00                	mov    (%eax),%eax
 8052d4a:	85 c0                	test   %eax,%eax
 8052d4c:	74 0d                	je     8052d5b <yypush_buffer_state+0xa4>
 8052d4e:	a1 2c 91 05 08       	mov    0x805912c,%eax
 8052d53:	83 c0 01             	add    $0x1,%eax
 8052d56:	a3 2c 91 05 08       	mov    %eax,0x805912c
 8052d5b:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052d60:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052d66:	c1 e2 02             	shl    $0x2,%edx
 8052d69:	01 c2                	add    %eax,%edx
 8052d6b:	8b 45 08             	mov    0x8(%ebp),%eax
 8052d6e:	89 02                	mov    %eax,(%edx)
 8052d70:	e8 b1 fc ff ff       	call   8052a26 <yy_load_buffer_state>
 8052d75:	c7 05 4c 91 05 08 01 	movl   $0x1,0x805914c
 8052d7c:	00 00 00 
 8052d7f:	eb 01                	jmp    8052d82 <yypush_buffer_state+0xcb>
 8052d81:	90                   	nop
 8052d82:	c9                   	leave  
 8052d83:	c3                   	ret    

08052d84 <yypop_buffer_state>:
 8052d84:	55                   	push   %ebp
 8052d85:	89 e5                	mov    %esp,%ebp
 8052d87:	83 ec 08             	sub    $0x8,%esp
 8052d8a:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052d8f:	85 c0                	test   %eax,%eax
 8052d91:	0f 84 a4 00 00 00    	je     8052e3b <yypop_buffer_state+0xb7>
 8052d97:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052d9c:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052da2:	c1 e2 02             	shl    $0x2,%edx
 8052da5:	01 d0                	add    %edx,%eax
 8052da7:	8b 00                	mov    (%eax),%eax
 8052da9:	85 c0                	test   %eax,%eax
 8052dab:	0f 84 8a 00 00 00    	je     8052e3b <yypop_buffer_state+0xb7>
 8052db1:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052db6:	85 c0                	test   %eax,%eax
 8052db8:	74 14                	je     8052dce <yypop_buffer_state+0x4a>
 8052dba:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052dbf:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052dc5:	c1 e2 02             	shl    $0x2,%edx
 8052dc8:	01 d0                	add    %edx,%eax
 8052dca:	8b 00                	mov    (%eax),%eax
 8052dcc:	eb 05                	jmp    8052dd3 <yypop_buffer_state+0x4f>
 8052dce:	b8 00 00 00 00       	mov    $0x0,%eax
 8052dd3:	83 ec 0c             	sub    $0xc,%esp
 8052dd6:	50                   	push   %eax
 8052dd7:	e8 3a fd ff ff       	call   8052b16 <yy_delete_buffer>
 8052ddc:	83 c4 10             	add    $0x10,%esp
 8052ddf:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052de4:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052dea:	c1 e2 02             	shl    $0x2,%edx
 8052ded:	01 d0                	add    %edx,%eax
 8052def:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052df5:	a1 2c 91 05 08       	mov    0x805912c,%eax
 8052dfa:	85 c0                	test   %eax,%eax
 8052dfc:	74 0d                	je     8052e0b <yypop_buffer_state+0x87>
 8052dfe:	a1 2c 91 05 08       	mov    0x805912c,%eax
 8052e03:	83 e8 01             	sub    $0x1,%eax
 8052e06:	a3 2c 91 05 08       	mov    %eax,0x805912c
 8052e0b:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052e10:	85 c0                	test   %eax,%eax
 8052e12:	74 28                	je     8052e3c <yypop_buffer_state+0xb8>
 8052e14:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052e19:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8052e1f:	c1 e2 02             	shl    $0x2,%edx
 8052e22:	01 d0                	add    %edx,%eax
 8052e24:	8b 00                	mov    (%eax),%eax
 8052e26:	85 c0                	test   %eax,%eax
 8052e28:	74 12                	je     8052e3c <yypop_buffer_state+0xb8>
 8052e2a:	e8 f7 fb ff ff       	call   8052a26 <yy_load_buffer_state>
 8052e2f:	c7 05 4c 91 05 08 01 	movl   $0x1,0x805914c
 8052e36:	00 00 00 
 8052e39:	eb 01                	jmp    8052e3c <yypop_buffer_state+0xb8>
 8052e3b:	90                   	nop
 8052e3c:	c9                   	leave  
 8052e3d:	c3                   	ret    

08052e3e <yyensure_buffer_stack>:
 8052e3e:	55                   	push   %ebp
 8052e3f:	89 e5                	mov    %esp,%ebp
 8052e41:	83 ec 18             	sub    $0x18,%esp
 8052e44:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052e49:	85 c0                	test   %eax,%eax
 8052e4b:	75 69                	jne    8052eb6 <yyensure_buffer_stack+0x78>
 8052e4d:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8052e54:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052e57:	c1 e0 02             	shl    $0x2,%eax
 8052e5a:	83 ec 0c             	sub    $0xc,%esp
 8052e5d:	50                   	push   %eax
 8052e5e:	e8 28 04 00 00       	call   805328b <yyalloc>
 8052e63:	83 c4 10             	add    $0x10,%esp
 8052e66:	a3 34 91 05 08       	mov    %eax,0x8059134
 8052e6b:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052e70:	85 c0                	test   %eax,%eax
 8052e72:	75 0d                	jne    8052e81 <yyensure_buffer_stack+0x43>
 8052e74:	83 ec 0c             	sub    $0xc,%esp
 8052e77:	68 4c 5d 05 08       	push   $0x8055d4c
 8052e7c:	e8 72 02 00 00       	call   80530f3 <yy_fatal_error>
 8052e81:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052e84:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8052e8b:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052e90:	83 ec 04             	sub    $0x4,%esp
 8052e93:	52                   	push   %edx
 8052e94:	6a 00                	push   $0x0
 8052e96:	50                   	push   %eax
 8052e97:	e8 64 5a ff ff       	call   8048900 <memset@plt>
 8052e9c:	83 c4 10             	add    $0x10,%esp
 8052e9f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052ea2:	a3 30 91 05 08       	mov    %eax,0x8059130
 8052ea7:	c7 05 2c 91 05 08 00 	movl   $0x0,0x805912c
 8052eae:	00 00 00 
 8052eb1:	e9 8e 00 00 00       	jmp    8052f44 <yyensure_buffer_stack+0x106>
 8052eb6:	a1 30 91 05 08       	mov    0x8059130,%eax
 8052ebb:	8d 50 ff             	lea    -0x1(%eax),%edx
 8052ebe:	a1 2c 91 05 08       	mov    0x805912c,%eax
 8052ec3:	39 c2                	cmp    %eax,%edx
 8052ec5:	77 7d                	ja     8052f44 <yyensure_buffer_stack+0x106>
 8052ec7:	c7 45 f4 08 00 00 00 	movl   $0x8,-0xc(%ebp)
 8052ece:	8b 15 30 91 05 08    	mov    0x8059130,%edx
 8052ed4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052ed7:	01 d0                	add    %edx,%eax
 8052ed9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8052edc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052edf:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8052ee6:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052eeb:	83 ec 08             	sub    $0x8,%esp
 8052eee:	52                   	push   %edx
 8052eef:	50                   	push   %eax
 8052ef0:	e8 ac 03 00 00       	call   80532a1 <yyrealloc>
 8052ef5:	83 c4 10             	add    $0x10,%esp
 8052ef8:	a3 34 91 05 08       	mov    %eax,0x8059134
 8052efd:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052f02:	85 c0                	test   %eax,%eax
 8052f04:	75 0d                	jne    8052f13 <yyensure_buffer_stack+0xd5>
 8052f06:	83 ec 0c             	sub    $0xc,%esp
 8052f09:	68 4c 5d 05 08       	push   $0x8055d4c
 8052f0e:	e8 e0 01 00 00       	call   80530f3 <yy_fatal_error>
 8052f13:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052f16:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8052f1d:	a1 34 91 05 08       	mov    0x8059134,%eax
 8052f22:	8b 0d 30 91 05 08    	mov    0x8059130,%ecx
 8052f28:	c1 e1 02             	shl    $0x2,%ecx
 8052f2b:	01 c8                	add    %ecx,%eax
 8052f2d:	83 ec 04             	sub    $0x4,%esp
 8052f30:	52                   	push   %edx
 8052f31:	6a 00                	push   $0x0
 8052f33:	50                   	push   %eax
 8052f34:	e8 c7 59 ff ff       	call   8048900 <memset@plt>
 8052f39:	83 c4 10             	add    $0x10,%esp
 8052f3c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8052f3f:	a3 30 91 05 08       	mov    %eax,0x8059130
 8052f44:	c9                   	leave  
 8052f45:	c3                   	ret    

08052f46 <yy_scan_buffer>:
 8052f46:	55                   	push   %ebp
 8052f47:	89 e5                	mov    %esp,%ebp
 8052f49:	83 ec 18             	sub    $0x18,%esp
 8052f4c:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
 8052f50:	76 24                	jbe    8052f76 <yy_scan_buffer+0x30>
 8052f52:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052f55:	8d 50 fe             	lea    -0x2(%eax),%edx
 8052f58:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f5b:	01 d0                	add    %edx,%eax
 8052f5d:	0f b6 00             	movzbl (%eax),%eax
 8052f60:	84 c0                	test   %al,%al
 8052f62:	75 12                	jne    8052f76 <yy_scan_buffer+0x30>
 8052f64:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052f67:	8d 50 ff             	lea    -0x1(%eax),%edx
 8052f6a:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f6d:	01 d0                	add    %edx,%eax
 8052f6f:	0f b6 00             	movzbl (%eax),%eax
 8052f72:	84 c0                	test   %al,%al
 8052f74:	74 0a                	je     8052f80 <yy_scan_buffer+0x3a>
 8052f76:	b8 00 00 00 00       	mov    $0x0,%eax
 8052f7b:	e9 9e 00 00 00       	jmp    805301e <yy_scan_buffer+0xd8>
 8052f80:	83 ec 0c             	sub    $0xc,%esp
 8052f83:	6a 30                	push   $0x30
 8052f85:	e8 01 03 00 00       	call   805328b <yyalloc>
 8052f8a:	83 c4 10             	add    $0x10,%esp
 8052f8d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8052f90:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8052f94:	75 0d                	jne    8052fa3 <yy_scan_buffer+0x5d>
 8052f96:	83 ec 0c             	sub    $0xc,%esp
 8052f99:	68 80 5d 05 08       	push   $0x8055d80
 8052f9e:	e8 50 01 00 00       	call   80530f3 <yy_fatal_error>
 8052fa3:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052fa6:	8d 50 fe             	lea    -0x2(%eax),%edx
 8052fa9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052fac:	89 50 0c             	mov    %edx,0xc(%eax)
 8052faf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052fb2:	8b 55 08             	mov    0x8(%ebp),%edx
 8052fb5:	89 50 04             	mov    %edx,0x4(%eax)
 8052fb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052fbb:	8b 50 04             	mov    0x4(%eax),%edx
 8052fbe:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052fc1:	89 50 08             	mov    %edx,0x8(%eax)
 8052fc4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052fc7:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 8052fce:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052fd1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8052fd7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052fda:	8b 40 0c             	mov    0xc(%eax),%eax
 8052fdd:	89 c2                	mov    %eax,%edx
 8052fdf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052fe2:	89 50 10             	mov    %edx,0x10(%eax)
 8052fe5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052fe8:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
 8052fef:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052ff2:	c7 40 1c 01 00 00 00 	movl   $0x1,0x1c(%eax)
 8052ff9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8052ffc:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
 8053003:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053006:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
 805300d:	83 ec 0c             	sub    $0xc,%esp
 8053010:	ff 75 f4             	pushl  -0xc(%ebp)
 8053013:	e8 4c f9 ff ff       	call   8052964 <yy_switch_to_buffer>
 8053018:	83 c4 10             	add    $0x10,%esp
 805301b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805301e:	c9                   	leave  
 805301f:	c3                   	ret    

08053020 <yy_scan_string>:
 8053020:	55                   	push   %ebp
 8053021:	89 e5                	mov    %esp,%ebp
 8053023:	83 ec 08             	sub    $0x8,%esp
 8053026:	83 ec 0c             	sub    $0xc,%esp
 8053029:	ff 75 08             	pushl  0x8(%ebp)
 805302c:	e8 7f 58 ff ff       	call   80488b0 <strlen@plt>
 8053031:	83 c4 10             	add    $0x10,%esp
 8053034:	83 ec 08             	sub    $0x8,%esp
 8053037:	50                   	push   %eax
 8053038:	ff 75 08             	pushl  0x8(%ebp)
 805303b:	e8 05 00 00 00       	call   8053045 <yy_scan_bytes>
 8053040:	83 c4 10             	add    $0x10,%esp
 8053043:	c9                   	leave  
 8053044:	c3                   	ret    

08053045 <yy_scan_bytes>:
 8053045:	55                   	push   %ebp
 8053046:	89 e5                	mov    %esp,%ebp
 8053048:	83 ec 18             	sub    $0x18,%esp
 805304b:	8b 45 0c             	mov    0xc(%ebp),%eax
 805304e:	83 c0 02             	add    $0x2,%eax
 8053051:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8053054:	83 ec 0c             	sub    $0xc,%esp
 8053057:	ff 75 ec             	pushl  -0x14(%ebp)
 805305a:	e8 2c 02 00 00       	call   805328b <yyalloc>
 805305f:	83 c4 10             	add    $0x10,%esp
 8053062:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8053065:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8053069:	75 0d                	jne    8053078 <yy_scan_bytes+0x33>
 805306b:	83 ec 0c             	sub    $0xc,%esp
 805306e:	68 ac 5d 05 08       	push   $0x8055dac
 8053073:	e8 7b 00 00 00       	call   80530f3 <yy_fatal_error>
 8053078:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 805307f:	eb 19                	jmp    805309a <yy_scan_bytes+0x55>
 8053081:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8053084:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053087:	01 c2                	add    %eax,%edx
 8053089:	8b 4d 08             	mov    0x8(%ebp),%ecx
 805308c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805308f:	01 c8                	add    %ecx,%eax
 8053091:	0f b6 00             	movzbl (%eax),%eax
 8053094:	88 02                	mov    %al,(%edx)
 8053096:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 805309a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805309d:	3b 45 0c             	cmp    0xc(%ebp),%eax
 80530a0:	72 df                	jb     8053081 <yy_scan_bytes+0x3c>
 80530a2:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80530a5:	8b 45 0c             	mov    0xc(%ebp),%eax
 80530a8:	01 c2                	add    %eax,%edx
 80530aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 80530ad:	8d 48 01             	lea    0x1(%eax),%ecx
 80530b0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80530b3:	01 c8                	add    %ecx,%eax
 80530b5:	c6 00 00             	movb   $0x0,(%eax)
 80530b8:	0f b6 00             	movzbl (%eax),%eax
 80530bb:	88 02                	mov    %al,(%edx)
 80530bd:	83 ec 08             	sub    $0x8,%esp
 80530c0:	ff 75 ec             	pushl  -0x14(%ebp)
 80530c3:	ff 75 f0             	pushl  -0x10(%ebp)
 80530c6:	e8 7b fe ff ff       	call   8052f46 <yy_scan_buffer>
 80530cb:	83 c4 10             	add    $0x10,%esp
 80530ce:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80530d1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80530d5:	75 0d                	jne    80530e4 <yy_scan_bytes+0x9f>
 80530d7:	83 ec 0c             	sub    $0xc,%esp
 80530da:	68 d5 5d 05 08       	push   $0x8055dd5
 80530df:	e8 0f 00 00 00       	call   80530f3 <yy_fatal_error>
 80530e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80530e7:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
 80530ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80530f1:	c9                   	leave  
 80530f2:	c3                   	ret    

080530f3 <yy_fatal_error>:
 80530f3:	55                   	push   %ebp
 80530f4:	89 e5                	mov    %esp,%ebp
 80530f6:	83 ec 08             	sub    $0x8,%esp
 80530f9:	a1 e0 90 05 08       	mov    0x80590e0,%eax
 80530fe:	83 ec 04             	sub    $0x4,%esp
 8053101:	ff 75 08             	pushl  0x8(%ebp)
 8053104:	68 f3 5d 05 08       	push   $0x8055df3
 8053109:	50                   	push   %eax
 805310a:	e8 d1 57 ff ff       	call   80488e0 <fprintf@plt>
 805310f:	83 c4 10             	add    $0x10,%esp
 8053112:	83 ec 0c             	sub    $0xc,%esp
 8053115:	6a 02                	push   $0x2
 8053117:	e8 84 57 ff ff       	call   80488a0 <exit@plt>

0805311c <yyget_lineno>:
 805311c:	55                   	push   %ebp
 805311d:	89 e5                	mov    %esp,%ebp
 805311f:	a1 bc 90 05 08       	mov    0x80590bc,%eax
 8053124:	5d                   	pop    %ebp
 8053125:	c3                   	ret    

08053126 <yyget_in>:
 8053126:	55                   	push   %ebp
 8053127:	89 e5                	mov    %esp,%ebp
 8053129:	a1 18 91 05 08       	mov    0x8059118,%eax
 805312e:	5d                   	pop    %ebp
 805312f:	c3                   	ret    

08053130 <yyget_out>:
 8053130:	55                   	push   %ebp
 8053131:	89 e5                	mov    %esp,%ebp
 8053133:	a1 1c 91 05 08       	mov    0x805911c,%eax
 8053138:	5d                   	pop    %ebp
 8053139:	c3                   	ret    

0805313a <yyget_leng>:
 805313a:	55                   	push   %ebp
 805313b:	89 e5                	mov    %esp,%ebp
 805313d:	a1 6c 95 05 08       	mov    0x805956c,%eax
 8053142:	5d                   	pop    %ebp
 8053143:	c3                   	ret    

08053144 <yyget_text>:
 8053144:	55                   	push   %ebp
 8053145:	89 e5                	mov    %esp,%ebp
 8053147:	a1 64 95 05 08       	mov    0x8059564,%eax
 805314c:	5d                   	pop    %ebp
 805314d:	c3                   	ret    

0805314e <yyset_lineno>:
 805314e:	55                   	push   %ebp
 805314f:	89 e5                	mov    %esp,%ebp
 8053151:	8b 45 08             	mov    0x8(%ebp),%eax
 8053154:	a3 bc 90 05 08       	mov    %eax,0x80590bc
 8053159:	90                   	nop
 805315a:	5d                   	pop    %ebp
 805315b:	c3                   	ret    

0805315c <yyset_in>:
 805315c:	55                   	push   %ebp
 805315d:	89 e5                	mov    %esp,%ebp
 805315f:	8b 45 08             	mov    0x8(%ebp),%eax
 8053162:	a3 18 91 05 08       	mov    %eax,0x8059118
 8053167:	90                   	nop
 8053168:	5d                   	pop    %ebp
 8053169:	c3                   	ret    

0805316a <yyset_out>:
 805316a:	55                   	push   %ebp
 805316b:	89 e5                	mov    %esp,%ebp
 805316d:	8b 45 08             	mov    0x8(%ebp),%eax
 8053170:	a3 1c 91 05 08       	mov    %eax,0x805911c
 8053175:	90                   	nop
 8053176:	5d                   	pop    %ebp
 8053177:	c3                   	ret    

08053178 <yyget_debug>:
 8053178:	55                   	push   %ebp
 8053179:	89 e5                	mov    %esp,%ebp
 805317b:	a1 20 91 05 08       	mov    0x8059120,%eax
 8053180:	5d                   	pop    %ebp
 8053181:	c3                   	ret    

08053182 <yyset_debug>:
 8053182:	55                   	push   %ebp
 8053183:	89 e5                	mov    %esp,%ebp
 8053185:	8b 45 08             	mov    0x8(%ebp),%eax
 8053188:	a3 20 91 05 08       	mov    %eax,0x8059120
 805318d:	90                   	nop
 805318e:	5d                   	pop    %ebp
 805318f:	c3                   	ret    

08053190 <yy_init_globals>:
 8053190:	55                   	push   %ebp
 8053191:	89 e5                	mov    %esp,%ebp
 8053193:	c7 05 bc 90 05 08 01 	movl   $0x1,0x80590bc
 805319a:	00 00 00 
 805319d:	c7 05 34 91 05 08 00 	movl   $0x0,0x8059134
 80531a4:	00 00 00 
 80531a7:	c7 05 2c 91 05 08 00 	movl   $0x0,0x805912c
 80531ae:	00 00 00 
 80531b1:	c7 05 30 91 05 08 00 	movl   $0x0,0x8059130
 80531b8:	00 00 00 
 80531bb:	c7 05 40 91 05 08 00 	movl   $0x0,0x8059140
 80531c2:	00 00 00 
 80531c5:	c7 05 44 91 05 08 00 	movl   $0x0,0x8059144
 80531cc:	00 00 00 
 80531cf:	c7 05 48 91 05 08 00 	movl   $0x0,0x8059148
 80531d6:	00 00 00 
 80531d9:	c7 05 18 91 05 08 00 	movl   $0x0,0x8059118
 80531e0:	00 00 00 
 80531e3:	c7 05 1c 91 05 08 00 	movl   $0x0,0x805911c
 80531ea:	00 00 00 
 80531ed:	b8 00 00 00 00       	mov    $0x0,%eax
 80531f2:	5d                   	pop    %ebp
 80531f3:	c3                   	ret    

080531f4 <yylex_destroy>:
 80531f4:	55                   	push   %ebp
 80531f5:	89 e5                	mov    %esp,%ebp
 80531f7:	83 ec 08             	sub    $0x8,%esp
 80531fa:	eb 49                	jmp    8053245 <yylex_destroy+0x51>
 80531fc:	a1 34 91 05 08       	mov    0x8059134,%eax
 8053201:	85 c0                	test   %eax,%eax
 8053203:	74 14                	je     8053219 <yylex_destroy+0x25>
 8053205:	a1 34 91 05 08       	mov    0x8059134,%eax
 805320a:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8053210:	c1 e2 02             	shl    $0x2,%edx
 8053213:	01 d0                	add    %edx,%eax
 8053215:	8b 00                	mov    (%eax),%eax
 8053217:	eb 05                	jmp    805321e <yylex_destroy+0x2a>
 8053219:	b8 00 00 00 00       	mov    $0x0,%eax
 805321e:	83 ec 0c             	sub    $0xc,%esp
 8053221:	50                   	push   %eax
 8053222:	e8 ef f8 ff ff       	call   8052b16 <yy_delete_buffer>
 8053227:	83 c4 10             	add    $0x10,%esp
 805322a:	a1 34 91 05 08       	mov    0x8059134,%eax
 805322f:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8053235:	c1 e2 02             	shl    $0x2,%edx
 8053238:	01 d0                	add    %edx,%eax
 805323a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8053240:	e8 3f fb ff ff       	call   8052d84 <yypop_buffer_state>
 8053245:	a1 34 91 05 08       	mov    0x8059134,%eax
 805324a:	85 c0                	test   %eax,%eax
 805324c:	74 16                	je     8053264 <yylex_destroy+0x70>
 805324e:	a1 34 91 05 08       	mov    0x8059134,%eax
 8053253:	8b 15 2c 91 05 08    	mov    0x805912c,%edx
 8053259:	c1 e2 02             	shl    $0x2,%edx
 805325c:	01 d0                	add    %edx,%eax
 805325e:	8b 00                	mov    (%eax),%eax
 8053260:	85 c0                	test   %eax,%eax
 8053262:	75 98                	jne    80531fc <yylex_destroy+0x8>
 8053264:	a1 34 91 05 08       	mov    0x8059134,%eax
 8053269:	83 ec 0c             	sub    $0xc,%esp
 805326c:	50                   	push   %eax
 805326d:	e8 48 00 00 00       	call   80532ba <yyfree>
 8053272:	83 c4 10             	add    $0x10,%esp
 8053275:	c7 05 34 91 05 08 00 	movl   $0x0,0x8059134
 805327c:	00 00 00 
 805327f:	e8 0c ff ff ff       	call   8053190 <yy_init_globals>
 8053284:	b8 00 00 00 00       	mov    $0x0,%eax
 8053289:	c9                   	leave  
 805328a:	c3                   	ret    

0805328b <yyalloc>:
 805328b:	55                   	push   %ebp
 805328c:	89 e5                	mov    %esp,%ebp
 805328e:	83 ec 08             	sub    $0x8,%esp
 8053291:	83 ec 0c             	sub    $0xc,%esp
 8053294:	ff 75 08             	pushl  0x8(%ebp)
 8053297:	e8 e4 55 ff ff       	call   8048880 <malloc@plt>
 805329c:	83 c4 10             	add    $0x10,%esp
 805329f:	c9                   	leave  
 80532a0:	c3                   	ret    

080532a1 <yyrealloc>:
 80532a1:	55                   	push   %ebp
 80532a2:	89 e5                	mov    %esp,%ebp
 80532a4:	83 ec 08             	sub    $0x8,%esp
 80532a7:	83 ec 08             	sub    $0x8,%esp
 80532aa:	ff 75 0c             	pushl  0xc(%ebp)
 80532ad:	ff 75 08             	pushl  0x8(%ebp)
 80532b0:	e8 bb 55 ff ff       	call   8048870 <realloc@plt>
 80532b5:	83 c4 10             	add    $0x10,%esp
 80532b8:	c9                   	leave  
 80532b9:	c3                   	ret    

080532ba <yyfree>:
 80532ba:	55                   	push   %ebp
 80532bb:	89 e5                	mov    %esp,%ebp
 80532bd:	83 ec 08             	sub    $0x8,%esp
 80532c0:	83 ec 0c             	sub    $0xc,%esp
 80532c3:	ff 75 08             	pushl  0x8(%ebp)
 80532c6:	e8 05 55 ff ff       	call   80487d0 <free@plt>
 80532cb:	83 c4 10             	add    $0x10,%esp
 80532ce:	90                   	nop
 80532cf:	c9                   	leave  
 80532d0:	c3                   	ret    

080532d1 <detailedMessage>:
 80532d1:	55                   	push   %ebp
 80532d2:	89 e5                	mov    %esp,%ebp
 80532d4:	83 ec 08             	sub    $0x8,%esp
 80532d7:	83 ec 08             	sub    $0x8,%esp
 80532da:	ff 75 08             	pushl  0x8(%ebp)
 80532dd:	68 f7 5d 05 08       	push   $0x8055df7
 80532e2:	e8 d9 54 ff ff       	call   80487c0 <printf@plt>
 80532e7:	83 c4 10             	add    $0x10,%esp
 80532ea:	90                   	nop
 80532eb:	c9                   	leave  
 80532ec:	c3                   	ret    

080532ed <yyerror>:
 80532ed:	55                   	push   %ebp
 80532ee:	89 e5                	mov    %esp,%ebp
 80532f0:	83 ec 28             	sub    $0x28,%esp
 80532f3:	8b 45 08             	mov    0x8(%ebp),%eax
 80532f6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80532f9:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80532ff:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8053302:	31 c0                	xor    %eax,%eax
 8053304:	8b 0d bc 90 05 08    	mov    0x80590bc,%ecx
 805330a:	8b 15 24 91 05 08    	mov    0x8059124,%edx
 8053310:	a1 e0 90 05 08       	mov    0x80590e0,%eax
 8053315:	51                   	push   %ecx
 8053316:	52                   	push   %edx
 8053317:	68 fe 5d 05 08       	push   $0x8055dfe
 805331c:	50                   	push   %eax
 805331d:	e8 be 55 ff ff       	call   80488e0 <fprintf@plt>
 8053322:	83 c4 10             	add    $0x10,%esp
 8053325:	8d 45 0c             	lea    0xc(%ebp),%eax
 8053328:	89 45 f0             	mov    %eax,-0x10(%ebp)
 805332b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805332e:	83 ec 08             	sub    $0x8,%esp
 8053331:	50                   	push   %eax
 8053332:	ff 75 e4             	pushl  -0x1c(%ebp)
 8053335:	e8 86 55 ff ff       	call   80488c0 <vprintf@plt>
 805333a:	83 c4 10             	add    $0x10,%esp
 805333d:	83 ec 0c             	sub    $0xc,%esp
 8053340:	68 1c 5e 05 08       	push   $0x8055e1c
 8053345:	e8 46 55 ff ff       	call   8048890 <puts@plt>
 805334a:	83 c4 10             	add    $0x10,%esp
 805334d:	c7 05 28 91 05 08 00 	movl   $0x0,0x8059128
 8053354:	00 00 00 
 8053357:	90                   	nop
 8053358:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805335b:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8053362:	74 05                	je     8053369 <yyerror+0x7c>
 8053364:	e8 a7 54 ff ff       	call   8048810 <__stack_chk_fail@plt>
 8053369:	c9                   	leave  
 805336a:	c3                   	ret    

0805336b <newTypeSymbol>:
 805336b:	55                   	push   %ebp
 805336c:	89 e5                	mov    %esp,%ebp
 805336e:	83 ec 18             	sub    $0x18,%esp
 8053371:	83 ec 0c             	sub    $0xc,%esp
 8053374:	ff 75 0c             	pushl  0xc(%ebp)
 8053377:	e8 34 55 ff ff       	call   80488b0 <strlen@plt>
 805337c:	83 c4 10             	add    $0x10,%esp
 805337f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8053382:	83 ec 0c             	sub    $0xc,%esp
 8053385:	6a 14                	push   $0x14
 8053387:	e8 f4 54 ff ff       	call   8048880 <malloc@plt>
 805338c:	83 c4 10             	add    $0x10,%esp
 805338f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8053392:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053395:	8b 55 08             	mov    0x8(%ebp),%edx
 8053398:	89 10                	mov    %edx,(%eax)
 805339a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805339d:	8b 55 10             	mov    0x10(%ebp),%edx
 80533a0:	89 50 0c             	mov    %edx,0xc(%eax)
 80533a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80533a6:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 80533ad:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80533b0:	83 c0 01             	add    $0x1,%eax
 80533b3:	83 ec 0c             	sub    $0xc,%esp
 80533b6:	50                   	push   %eax
 80533b7:	e8 c4 54 ff ff       	call   8048880 <malloc@plt>
 80533bc:	83 c4 10             	add    $0x10,%esp
 80533bf:	89 c2                	mov    %eax,%edx
 80533c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80533c4:	89 50 04             	mov    %edx,0x4(%eax)
 80533c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80533ca:	8b 40 04             	mov    0x4(%eax),%eax
 80533cd:	83 ec 08             	sub    $0x8,%esp
 80533d0:	ff 75 0c             	pushl  0xc(%ebp)
 80533d3:	50                   	push   %eax
 80533d4:	e8 87 54 ff ff       	call   8048860 <strcpy@plt>
 80533d9:	83 c4 10             	add    $0x10,%esp
 80533dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80533df:	8b 50 04             	mov    0x4(%eax),%edx
 80533e2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80533e5:	01 d0                	add    %edx,%eax
 80533e7:	c6 00 00             	movb   $0x0,(%eax)
 80533ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80533ed:	c9                   	leave  
 80533ee:	c3                   	ret    

080533ef <newFuncSymbol>:
 80533ef:	55                   	push   %ebp
 80533f0:	89 e5                	mov    %esp,%ebp
 80533f2:	83 ec 18             	sub    $0x18,%esp
 80533f5:	83 ec 0c             	sub    $0xc,%esp
 80533f8:	ff 75 0c             	pushl  0xc(%ebp)
 80533fb:	e8 b0 54 ff ff       	call   80488b0 <strlen@plt>
 8053400:	83 c4 10             	add    $0x10,%esp
 8053403:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8053406:	83 ec 0c             	sub    $0xc,%esp
 8053409:	6a 14                	push   $0x14
 805340b:	e8 70 54 ff ff       	call   8048880 <malloc@plt>
 8053410:	83 c4 10             	add    $0x10,%esp
 8053413:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8053416:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053419:	8b 55 08             	mov    0x8(%ebp),%edx
 805341c:	89 10                	mov    %edx,(%eax)
 805341e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053421:	8b 55 10             	mov    0x10(%ebp),%edx
 8053424:	89 50 0c             	mov    %edx,0xc(%eax)
 8053427:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805342a:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 8053431:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053434:	83 c0 01             	add    $0x1,%eax
 8053437:	83 ec 0c             	sub    $0xc,%esp
 805343a:	50                   	push   %eax
 805343b:	e8 40 54 ff ff       	call   8048880 <malloc@plt>
 8053440:	83 c4 10             	add    $0x10,%esp
 8053443:	89 c2                	mov    %eax,%edx
 8053445:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053448:	89 50 04             	mov    %edx,0x4(%eax)
 805344b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805344e:	8b 40 04             	mov    0x4(%eax),%eax
 8053451:	83 ec 08             	sub    $0x8,%esp
 8053454:	ff 75 0c             	pushl  0xc(%ebp)
 8053457:	50                   	push   %eax
 8053458:	e8 03 54 ff ff       	call   8048860 <strcpy@plt>
 805345d:	83 c4 10             	add    $0x10,%esp
 8053460:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053463:	c9                   	leave  
 8053464:	c3                   	ret    

08053465 <hash_pjw>:
 8053465:	55                   	push   %ebp
 8053466:	89 e5                	mov    %esp,%ebp
 8053468:	83 ec 10             	sub    $0x10,%esp
 805346b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8053472:	eb 3e                	jmp    80534b2 <hash_pjw+0x4d>
 8053474:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8053477:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 805347e:	8b 45 08             	mov    0x8(%ebp),%eax
 8053481:	0f b6 00             	movzbl (%eax),%eax
 8053484:	0f be c0             	movsbl %al,%eax
 8053487:	01 d0                	add    %edx,%eax
 8053489:	89 45 f8             	mov    %eax,-0x8(%ebp)
 805348c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 805348f:	25 00 c0 ff ff       	and    $0xffffc000,%eax
 8053494:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8053497:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 805349b:	74 11                	je     80534ae <hash_pjw+0x49>
 805349d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80534a0:	c1 e8 0c             	shr    $0xc,%eax
 80534a3:	33 45 f8             	xor    -0x8(%ebp),%eax
 80534a6:	25 ff 3f 00 00       	and    $0x3fff,%eax
 80534ab:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80534ae:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 80534b2:	8b 45 08             	mov    0x8(%ebp),%eax
 80534b5:	0f b6 00             	movzbl (%eax),%eax
 80534b8:	84 c0                	test   %al,%al
 80534ba:	75 b8                	jne    8053474 <hash_pjw+0xf>
 80534bc:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80534bf:	c9                   	leave  
 80534c0:	c3                   	ret    

080534c1 <initTable>:
 80534c1:	55                   	push   %ebp
 80534c2:	89 e5                	mov    %esp,%ebp
 80534c4:	83 ec 10             	sub    $0x10,%esp
 80534c7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80534ce:	eb 12                	jmp    80534e2 <initTable+0x21>
 80534d0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80534d3:	c7 04 85 80 95 05 08 	movl   $0x0,0x8059580(,%eax,4)
 80534da:	00 00 00 00 
 80534de:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 80534e2:	81 7d fc fe 3f 00 00 	cmpl   $0x3ffe,-0x4(%ebp)
 80534e9:	7e e5                	jle    80534d0 <initTable+0xf>
 80534eb:	c7 05 58 91 05 08 00 	movl   $0x0,0x8059158
 80534f2:	00 00 00 
 80534f5:	90                   	nop
 80534f6:	c9                   	leave  
 80534f7:	c3                   	ret    

080534f8 <clearTable>:
 80534f8:	55                   	push   %ebp
 80534f9:	89 e5                	mov    %esp,%ebp
 80534fb:	83 ec 18             	sub    $0x18,%esp
 80534fe:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8053505:	eb 28                	jmp    805352f <clearTable+0x37>
 8053507:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805350a:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 8053511:	85 c0                	test   %eax,%eax
 8053513:	74 16                	je     805352b <clearTable+0x33>
 8053515:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053518:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 805351f:	83 ec 0c             	sub    $0xc,%esp
 8053522:	50                   	push   %eax
 8053523:	e8 a8 52 ff ff       	call   80487d0 <free@plt>
 8053528:	83 c4 10             	add    $0x10,%esp
 805352b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 805352f:	81 7d f4 fe 3f 00 00 	cmpl   $0x3ffe,-0xc(%ebp)
 8053536:	7e cf                	jle    8053507 <clearTable+0xf>
 8053538:	c7 05 58 91 05 08 00 	movl   $0x0,0x8059158
 805353f:	00 00 00 
 8053542:	90                   	nop
 8053543:	c9                   	leave  
 8053544:	c3                   	ret    

08053545 <searchTable>:
 8053545:	55                   	push   %ebp
 8053546:	89 e5                	mov    %esp,%ebp
 8053548:	83 ec 18             	sub    $0x18,%esp
 805354b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 805354f:	75 07                	jne    8053558 <searchTable+0x13>
 8053551:	b8 00 00 00 00       	mov    $0x0,%eax
 8053556:	eb 63                	jmp    80535bb <searchTable+0x76>
 8053558:	ff 75 08             	pushl  0x8(%ebp)
 805355b:	e8 05 ff ff ff       	call   8053465 <hash_pjw>
 8053560:	83 c4 04             	add    $0x4,%esp
 8053563:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8053566:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053569:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 8053570:	85 c0                	test   %eax,%eax
 8053572:	74 42                	je     80535b6 <searchTable+0x71>
 8053574:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053577:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 805357e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8053581:	eb 09                	jmp    805358c <searchTable+0x47>
 8053583:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053586:	8b 40 10             	mov    0x10(%eax),%eax
 8053589:	89 45 f0             	mov    %eax,-0x10(%ebp)
 805358c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8053590:	74 19                	je     80535ab <searchTable+0x66>
 8053592:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053595:	8b 40 04             	mov    0x4(%eax),%eax
 8053598:	83 ec 08             	sub    $0x8,%esp
 805359b:	50                   	push   %eax
 805359c:	ff 75 08             	pushl  0x8(%ebp)
 805359f:	e8 0c 52 ff ff       	call   80487b0 <strcmp@plt>
 80535a4:	83 c4 10             	add    $0x10,%esp
 80535a7:	85 c0                	test   %eax,%eax
 80535a9:	75 d8                	jne    8053583 <searchTable+0x3e>
 80535ab:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80535af:	74 05                	je     80535b6 <searchTable+0x71>
 80535b1:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80535b4:	eb 05                	jmp    80535bb <searchTable+0x76>
 80535b6:	b8 00 00 00 00       	mov    $0x0,%eax
 80535bb:	c9                   	leave  
 80535bc:	c3                   	ret    

080535bd <insertTable>:
 80535bd:	55                   	push   %ebp
 80535be:	89 e5                	mov    %esp,%ebp
 80535c0:	83 ec 18             	sub    $0x18,%esp
 80535c3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80535c7:	74 0a                	je     80535d3 <insertTable+0x16>
 80535c9:	8b 45 08             	mov    0x8(%ebp),%eax
 80535cc:	8b 40 04             	mov    0x4(%eax),%eax
 80535cf:	85 c0                	test   %eax,%eax
 80535d1:	75 0a                	jne    80535dd <insertTable+0x20>
 80535d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80535d8:	e9 86 00 00 00       	jmp    8053663 <insertTable+0xa6>
 80535dd:	8b 45 08             	mov    0x8(%ebp),%eax
 80535e0:	8b 40 04             	mov    0x4(%eax),%eax
 80535e3:	50                   	push   %eax
 80535e4:	e8 7c fe ff ff       	call   8053465 <hash_pjw>
 80535e9:	83 c4 04             	add    $0x4,%esp
 80535ec:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80535ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80535f2:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 80535f9:	85 c0                	test   %eax,%eax
 80535fb:	75 0f                	jne    805360c <insertTable+0x4f>
 80535fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053600:	8b 55 08             	mov    0x8(%ebp),%edx
 8053603:	89 14 85 80 95 05 08 	mov    %edx,0x8059580(,%eax,4)
 805360a:	eb 52                	jmp    805365e <insertTable+0xa1>
 805360c:	8b 45 08             	mov    0x8(%ebp),%eax
 805360f:	8b 40 04             	mov    0x4(%eax),%eax
 8053612:	83 ec 0c             	sub    $0xc,%esp
 8053615:	50                   	push   %eax
 8053616:	e8 2a ff ff ff       	call   8053545 <searchTable>
 805361b:	83 c4 10             	add    $0x10,%esp
 805361e:	85 c0                	test   %eax,%eax
 8053620:	74 07                	je     8053629 <insertTable+0x6c>
 8053622:	b8 01 00 00 00       	mov    $0x1,%eax
 8053627:	eb 3a                	jmp    8053663 <insertTable+0xa6>
 8053629:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805362c:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 8053633:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8053636:	eb 09                	jmp    8053641 <insertTable+0x84>
 8053638:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805363b:	8b 40 10             	mov    0x10(%eax),%eax
 805363e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8053641:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053644:	8b 40 10             	mov    0x10(%eax),%eax
 8053647:	85 c0                	test   %eax,%eax
 8053649:	75 ed                	jne    8053638 <insertTable+0x7b>
 805364b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805364e:	8b 55 08             	mov    0x8(%ebp),%edx
 8053651:	89 50 10             	mov    %edx,0x10(%eax)
 8053654:	8b 45 08             	mov    0x8(%ebp),%eax
 8053657:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 805365e:	b8 00 00 00 00       	mov    $0x0,%eax
 8053663:	c9                   	leave  
 8053664:	c3                   	ret    

08053665 <preprocessTable>:
 8053665:	55                   	push   %ebp
 8053666:	89 e5                	mov    %esp,%ebp
 8053668:	53                   	push   %ebx
 8053669:	83 ec 14             	sub    $0x14,%esp
 805366c:	83 ec 0c             	sub    $0xc,%esp
 805366f:	6a 0c                	push   $0xc
 8053671:	e8 0a 52 ff ff       	call   8048880 <malloc@plt>
 8053676:	83 c4 10             	add    $0x10,%esp
 8053679:	89 45 e8             	mov    %eax,-0x18(%ebp)
 805367c:	83 ec 0c             	sub    $0xc,%esp
 805367f:	6a 0c                	push   $0xc
 8053681:	e8 fa 51 ff ff       	call   8048880 <malloc@plt>
 8053686:	83 c4 10             	add    $0x10,%esp
 8053689:	89 c2                	mov    %eax,%edx
 805368b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805368e:	89 10                	mov    %edx,(%eax)
 8053690:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053693:	8b 00                	mov    (%eax),%eax
 8053695:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 805369b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805369e:	8b 00                	mov    (%eax),%eax
 80536a0:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 80536a7:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80536aa:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 80536b1:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80536b4:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 80536bb:	83 ec 04             	sub    $0x4,%esp
 80536be:	ff 75 e8             	pushl  -0x18(%ebp)
 80536c1:	68 20 5e 05 08       	push   $0x8055e20
 80536c6:	6a 01                	push   $0x1
 80536c8:	e8 22 fd ff ff       	call   80533ef <newFuncSymbol>
 80536cd:	83 c4 10             	add    $0x10,%esp
 80536d0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80536d3:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80536d6:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 80536dd:	83 ec 0c             	sub    $0xc,%esp
 80536e0:	ff 75 ec             	pushl  -0x14(%ebp)
 80536e3:	e8 d5 fe ff ff       	call   80535bd <insertTable>
 80536e8:	83 c4 10             	add    $0x10,%esp
 80536eb:	83 ec 0c             	sub    $0xc,%esp
 80536ee:	6a 0c                	push   $0xc
 80536f0:	e8 8b 51 ff ff       	call   8048880 <malloc@plt>
 80536f5:	83 c4 10             	add    $0x10,%esp
 80536f8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80536fb:	83 ec 0c             	sub    $0xc,%esp
 80536fe:	6a 0c                	push   $0xc
 8053700:	e8 7b 51 ff ff       	call   8048880 <malloc@plt>
 8053705:	83 c4 10             	add    $0x10,%esp
 8053708:	89 c2                	mov    %eax,%edx
 805370a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805370d:	89 10                	mov    %edx,(%eax)
 805370f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053712:	8b 00                	mov    (%eax),%eax
 8053714:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 805371a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805371d:	8b 00                	mov    (%eax),%eax
 805371f:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8053726:	83 ec 0c             	sub    $0xc,%esp
 8053729:	6a 0c                	push   $0xc
 805372b:	e8 50 51 ff ff       	call   8048880 <malloc@plt>
 8053730:	83 c4 10             	add    $0x10,%esp
 8053733:	89 c2                	mov    %eax,%edx
 8053735:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053738:	89 50 04             	mov    %edx,0x4(%eax)
 805373b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805373e:	8b 40 04             	mov    0x4(%eax),%eax
 8053741:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8053747:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805374a:	8b 40 04             	mov    0x4(%eax),%eax
 805374d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8053754:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053757:	8b 58 04             	mov    0x4(%eax),%ebx
 805375a:	83 ec 0c             	sub    $0xc,%esp
 805375d:	6a 0c                	push   $0xc
 805375f:	e8 1c 51 ff ff       	call   8048880 <malloc@plt>
 8053764:	83 c4 10             	add    $0x10,%esp
 8053767:	89 43 04             	mov    %eax,0x4(%ebx)
 805376a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805376d:	8b 40 04             	mov    0x4(%eax),%eax
 8053770:	8b 40 04             	mov    0x4(%eax),%eax
 8053773:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8053779:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805377c:	8b 40 04             	mov    0x4(%eax),%eax
 805377f:	8b 40 04             	mov    0x4(%eax),%eax
 8053782:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8053789:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805378c:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 8053793:	83 ec 04             	sub    $0x4,%esp
 8053796:	ff 75 f0             	pushl  -0x10(%ebp)
 8053799:	68 25 5e 05 08       	push   $0x8055e25
 805379e:	6a 01                	push   $0x1
 80537a0:	e8 4a fc ff ff       	call   80533ef <newFuncSymbol>
 80537a5:	83 c4 10             	add    $0x10,%esp
 80537a8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80537ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80537ae:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 80537b5:	83 ec 0c             	sub    $0xc,%esp
 80537b8:	ff 75 f4             	pushl  -0xc(%ebp)
 80537bb:	e8 fd fd ff ff       	call   80535bd <insertTable>
 80537c0:	83 c4 10             	add    $0x10,%esp
 80537c3:	90                   	nop
 80537c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80537c7:	c9                   	leave  
 80537c8:	c3                   	ret    

080537c9 <typeSize>:
 80537c9:	55                   	push   %ebp
 80537ca:	89 e5                	mov    %esp,%ebp
 80537cc:	83 ec 18             	sub    $0x18,%esp
 80537cf:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80537d6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80537da:	75 08                	jne    80537e4 <typeSize+0x1b>
 80537dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80537df:	e9 8e 00 00 00       	jmp    8053872 <typeSize+0xa9>
 80537e4:	8b 45 08             	mov    0x8(%ebp),%eax
 80537e7:	8b 00                	mov    (%eax),%eax
 80537e9:	83 f8 01             	cmp    $0x1,%eax
 80537ec:	74 15                	je     8053803 <typeSize+0x3a>
 80537ee:	83 f8 01             	cmp    $0x1,%eax
 80537f1:	72 07                	jb     80537fa <typeSize+0x31>
 80537f3:	83 f8 02             	cmp    $0x2,%eax
 80537f6:	74 2d                	je     8053825 <typeSize+0x5c>
 80537f8:	eb 5c                	jmp    8053856 <typeSize+0x8d>
 80537fa:	c7 45 f0 04 00 00 00 	movl   $0x4,-0x10(%ebp)
 8053801:	eb 6c                	jmp    805386f <typeSize+0xa6>
 8053803:	8b 45 08             	mov    0x8(%ebp),%eax
 8053806:	8b 40 04             	mov    0x4(%eax),%eax
 8053809:	83 ec 0c             	sub    $0xc,%esp
 805380c:	50                   	push   %eax
 805380d:	e8 b7 ff ff ff       	call   80537c9 <typeSize>
 8053812:	83 c4 10             	add    $0x10,%esp
 8053815:	89 c2                	mov    %eax,%edx
 8053817:	8b 45 08             	mov    0x8(%ebp),%eax
 805381a:	8b 40 08             	mov    0x8(%eax),%eax
 805381d:	0f af c2             	imul   %edx,%eax
 8053820:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8053823:	eb 4a                	jmp    805386f <typeSize+0xa6>
 8053825:	8b 45 08             	mov    0x8(%ebp),%eax
 8053828:	8b 40 04             	mov    0x4(%eax),%eax
 805382b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805382e:	eb 1e                	jmp    805384e <typeSize+0x85>
 8053830:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053833:	8b 40 04             	mov    0x4(%eax),%eax
 8053836:	83 ec 0c             	sub    $0xc,%esp
 8053839:	50                   	push   %eax
 805383a:	e8 8a ff ff ff       	call   80537c9 <typeSize>
 805383f:	83 c4 10             	add    $0x10,%esp
 8053842:	01 45 f0             	add    %eax,-0x10(%ebp)
 8053845:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053848:	8b 40 08             	mov    0x8(%eax),%eax
 805384b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805384e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8053852:	75 dc                	jne    8053830 <typeSize+0x67>
 8053854:	eb 19                	jmp    805386f <typeSize+0xa6>
 8053856:	68 94 5e 05 08       	push   $0x8055e94
 805385b:	68 9d 00 00 00       	push   $0x9d
 8053860:	68 2b 5e 05 08       	push   $0x8055e2b
 8053865:	68 37 5e 05 08       	push   $0x8055e37
 805386a:	e8 51 51 ff ff       	call   80489c0 <__assert_fail@plt>
 805386f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053872:	c9                   	leave  
 8053873:	c3                   	ret    

08053874 <structureField>:
 8053874:	55                   	push   %ebp
 8053875:	89 e5                	mov    %esp,%ebp
 8053877:	83 ec 08             	sub    $0x8,%esp
 805387a:	eb 29                	jmp    80538a5 <structureField+0x31>
 805387c:	8b 45 08             	mov    0x8(%ebp),%eax
 805387f:	8b 00                	mov    (%eax),%eax
 8053881:	83 ec 08             	sub    $0x8,%esp
 8053884:	ff 75 0c             	pushl  0xc(%ebp)
 8053887:	50                   	push   %eax
 8053888:	e8 79 05 00 00       	call   8053e06 <safe_strcmp>
 805388d:	83 c4 10             	add    $0x10,%esp
 8053890:	85 c0                	test   %eax,%eax
 8053892:	75 08                	jne    805389c <structureField+0x28>
 8053894:	8b 45 08             	mov    0x8(%ebp),%eax
 8053897:	8b 40 04             	mov    0x4(%eax),%eax
 805389a:	eb 14                	jmp    80538b0 <structureField+0x3c>
 805389c:	8b 45 08             	mov    0x8(%ebp),%eax
 805389f:	8b 40 08             	mov    0x8(%eax),%eax
 80538a2:	89 45 08             	mov    %eax,0x8(%ebp)
 80538a5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80538a9:	75 d1                	jne    805387c <structureField+0x8>
 80538ab:	b8 00 00 00 00       	mov    $0x0,%eax
 80538b0:	c9                   	leave  
 80538b1:	c3                   	ret    

080538b2 <compareType>:
 80538b2:	55                   	push   %ebp
 80538b3:	89 e5                	mov    %esp,%ebp
 80538b5:	83 ec 08             	sub    $0x8,%esp
 80538b8:	8b 45 08             	mov    0x8(%ebp),%eax
 80538bb:	3b 45 0c             	cmp    0xc(%ebp),%eax
 80538be:	75 0a                	jne    80538ca <compareType+0x18>
 80538c0:	b8 01 00 00 00       	mov    $0x1,%eax
 80538c5:	e9 a1 00 00 00       	jmp    805396b <compareType+0xb9>
 80538ca:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80538ce:	74 06                	je     80538d6 <compareType+0x24>
 80538d0:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 80538d4:	75 0a                	jne    80538e0 <compareType+0x2e>
 80538d6:	b8 00 00 00 00       	mov    $0x0,%eax
 80538db:	e9 8b 00 00 00       	jmp    805396b <compareType+0xb9>
 80538e0:	8b 45 08             	mov    0x8(%ebp),%eax
 80538e3:	8b 10                	mov    (%eax),%edx
 80538e5:	8b 45 0c             	mov    0xc(%ebp),%eax
 80538e8:	8b 00                	mov    (%eax),%eax
 80538ea:	39 c2                	cmp    %eax,%edx
 80538ec:	74 07                	je     80538f5 <compareType+0x43>
 80538ee:	b8 00 00 00 00       	mov    $0x0,%eax
 80538f3:	eb 76                	jmp    805396b <compareType+0xb9>
 80538f5:	8b 45 08             	mov    0x8(%ebp),%eax
 80538f8:	8b 00                	mov    (%eax),%eax
 80538fa:	85 c0                	test   %eax,%eax
 80538fc:	75 1e                	jne    805391c <compareType+0x6a>
 80538fe:	8b 45 08             	mov    0x8(%ebp),%eax
 8053901:	8b 50 04             	mov    0x4(%eax),%edx
 8053904:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053907:	8b 40 04             	mov    0x4(%eax),%eax
 805390a:	39 c2                	cmp    %eax,%edx
 805390c:	75 07                	jne    8053915 <compareType+0x63>
 805390e:	b8 01 00 00 00       	mov    $0x1,%eax
 8053913:	eb 56                	jmp    805396b <compareType+0xb9>
 8053915:	b8 00 00 00 00       	mov    $0x0,%eax
 805391a:	eb 4f                	jmp    805396b <compareType+0xb9>
 805391c:	8b 45 08             	mov    0x8(%ebp),%eax
 805391f:	8b 00                	mov    (%eax),%eax
 8053921:	83 f8 01             	cmp    $0x1,%eax
 8053924:	75 1b                	jne    8053941 <compareType+0x8f>
 8053926:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053929:	8b 50 04             	mov    0x4(%eax),%edx
 805392c:	8b 45 08             	mov    0x8(%ebp),%eax
 805392f:	8b 40 04             	mov    0x4(%eax),%eax
 8053932:	83 ec 08             	sub    $0x8,%esp
 8053935:	52                   	push   %edx
 8053936:	50                   	push   %eax
 8053937:	e8 76 ff ff ff       	call   80538b2 <compareType>
 805393c:	83 c4 10             	add    $0x10,%esp
 805393f:	eb 2a                	jmp    805396b <compareType+0xb9>
 8053941:	8b 45 08             	mov    0x8(%ebp),%eax
 8053944:	8b 00                	mov    (%eax),%eax
 8053946:	83 f8 02             	cmp    $0x2,%eax
 8053949:	75 1b                	jne    8053966 <compareType+0xb4>
 805394b:	8b 45 0c             	mov    0xc(%ebp),%eax
 805394e:	8b 50 04             	mov    0x4(%eax),%edx
 8053951:	8b 45 08             	mov    0x8(%ebp),%eax
 8053954:	8b 40 04             	mov    0x4(%eax),%eax
 8053957:	83 ec 08             	sub    $0x8,%esp
 805395a:	52                   	push   %edx
 805395b:	50                   	push   %eax
 805395c:	e8 0c 00 00 00       	call   805396d <compareStructure>
 8053961:	83 c4 10             	add    $0x10,%esp
 8053964:	eb 05                	jmp    805396b <compareType+0xb9>
 8053966:	b8 00 00 00 00       	mov    $0x0,%eax
 805396b:	c9                   	leave  
 805396c:	c3                   	ret    

0805396d <compareStructure>:
 805396d:	55                   	push   %ebp
 805396e:	89 e5                	mov    %esp,%ebp
 8053970:	83 ec 08             	sub    $0x8,%esp
 8053973:	8b 45 08             	mov    0x8(%ebp),%eax
 8053976:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8053979:	75 07                	jne    8053982 <compareStructure+0x15>
 805397b:	b8 01 00 00 00       	mov    $0x1,%eax
 8053980:	eb 3a                	jmp    80539bc <compareStructure+0x4f>
 8053982:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8053986:	74 06                	je     805398e <compareStructure+0x21>
 8053988:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 805398c:	75 07                	jne    8053995 <compareStructure+0x28>
 805398e:	b8 00 00 00 00       	mov    $0x0,%eax
 8053993:	eb 27                	jmp    80539bc <compareStructure+0x4f>
 8053995:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053998:	8b 10                	mov    (%eax),%edx
 805399a:	8b 45 08             	mov    0x8(%ebp),%eax
 805399d:	8b 00                	mov    (%eax),%eax
 805399f:	83 ec 08             	sub    $0x8,%esp
 80539a2:	52                   	push   %edx
 80539a3:	50                   	push   %eax
 80539a4:	e8 07 4e ff ff       	call   80487b0 <strcmp@plt>
 80539a9:	83 c4 10             	add    $0x10,%esp
 80539ac:	85 c0                	test   %eax,%eax
 80539ae:	75 07                	jne    80539b7 <compareStructure+0x4a>
 80539b0:	b8 01 00 00 00       	mov    $0x1,%eax
 80539b5:	eb 05                	jmp    80539bc <compareStructure+0x4f>
 80539b7:	b8 00 00 00 00       	mov    $0x0,%eax
 80539bc:	c9                   	leave  
 80539bd:	c3                   	ret    

080539be <compareArgs>:
 80539be:	55                   	push   %ebp
 80539bf:	89 e5                	mov    %esp,%ebp
 80539c1:	83 ec 08             	sub    $0x8,%esp
 80539c4:	8b 45 08             	mov    0x8(%ebp),%eax
 80539c7:	3b 45 0c             	cmp    0xc(%ebp),%eax
 80539ca:	75 07                	jne    80539d3 <compareArgs+0x15>
 80539cc:	b8 01 00 00 00       	mov    $0x1,%eax
 80539d1:	eb 50                	jmp    8053a23 <compareArgs+0x65>
 80539d3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80539d7:	74 06                	je     80539df <compareArgs+0x21>
 80539d9:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 80539dd:	75 07                	jne    80539e6 <compareArgs+0x28>
 80539df:	b8 00 00 00 00       	mov    $0x0,%eax
 80539e4:	eb 3d                	jmp    8053a23 <compareArgs+0x65>
 80539e6:	8b 45 0c             	mov    0xc(%ebp),%eax
 80539e9:	8b 50 04             	mov    0x4(%eax),%edx
 80539ec:	8b 45 08             	mov    0x8(%ebp),%eax
 80539ef:	8b 40 04             	mov    0x4(%eax),%eax
 80539f2:	83 ec 08             	sub    $0x8,%esp
 80539f5:	52                   	push   %edx
 80539f6:	50                   	push   %eax
 80539f7:	e8 b6 fe ff ff       	call   80538b2 <compareType>
 80539fc:	83 c4 10             	add    $0x10,%esp
 80539ff:	85 c0                	test   %eax,%eax
 8053a01:	75 07                	jne    8053a0a <compareArgs+0x4c>
 8053a03:	b8 00 00 00 00       	mov    $0x0,%eax
 8053a08:	eb 19                	jmp    8053a23 <compareArgs+0x65>
 8053a0a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053a0d:	8b 50 08             	mov    0x8(%eax),%edx
 8053a10:	8b 45 08             	mov    0x8(%ebp),%eax
 8053a13:	8b 40 08             	mov    0x8(%eax),%eax
 8053a16:	83 ec 08             	sub    $0x8,%esp
 8053a19:	52                   	push   %edx
 8053a1a:	50                   	push   %eax
 8053a1b:	e8 9e ff ff ff       	call   80539be <compareArgs>
 8053a20:	83 c4 10             	add    $0x10,%esp
 8053a23:	c9                   	leave  
 8053a24:	c3                   	ret    

08053a25 <compareFunction>:
 8053a25:	55                   	push   %ebp
 8053a26:	89 e5                	mov    %esp,%ebp
 8053a28:	83 ec 08             	sub    $0x8,%esp
 8053a2b:	8b 45 08             	mov    0x8(%ebp),%eax
 8053a2e:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8053a31:	75 07                	jne    8053a3a <compareFunction+0x15>
 8053a33:	b8 01 00 00 00       	mov    $0x1,%eax
 8053a38:	eb 75                	jmp    8053aaf <compareFunction+0x8a>
 8053a3a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8053a3e:	74 06                	je     8053a46 <compareFunction+0x21>
 8053a40:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8053a44:	75 07                	jne    8053a4d <compareFunction+0x28>
 8053a46:	b8 00 00 00 00       	mov    $0x0,%eax
 8053a4b:	eb 62                	jmp    8053aaf <compareFunction+0x8a>
 8053a4d:	8b 45 08             	mov    0x8(%ebp),%eax
 8053a50:	8b 00                	mov    (%eax),%eax
 8053a52:	83 f8 01             	cmp    $0x1,%eax
 8053a55:	75 0a                	jne    8053a61 <compareFunction+0x3c>
 8053a57:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053a5a:	8b 00                	mov    (%eax),%eax
 8053a5c:	83 f8 01             	cmp    $0x1,%eax
 8053a5f:	74 07                	je     8053a68 <compareFunction+0x43>
 8053a61:	b8 00 00 00 00       	mov    $0x0,%eax
 8053a66:	eb 47                	jmp    8053aaf <compareFunction+0x8a>
 8053a68:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053a6b:	8b 40 0c             	mov    0xc(%eax),%eax
 8053a6e:	8b 10                	mov    (%eax),%edx
 8053a70:	8b 45 08             	mov    0x8(%ebp),%eax
 8053a73:	8b 40 0c             	mov    0xc(%eax),%eax
 8053a76:	8b 00                	mov    (%eax),%eax
 8053a78:	83 ec 08             	sub    $0x8,%esp
 8053a7b:	52                   	push   %edx
 8053a7c:	50                   	push   %eax
 8053a7d:	e8 30 fe ff ff       	call   80538b2 <compareType>
 8053a82:	83 c4 10             	add    $0x10,%esp
 8053a85:	85 c0                	test   %eax,%eax
 8053a87:	75 07                	jne    8053a90 <compareFunction+0x6b>
 8053a89:	b8 00 00 00 00       	mov    $0x0,%eax
 8053a8e:	eb 1f                	jmp    8053aaf <compareFunction+0x8a>
 8053a90:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053a93:	8b 40 0c             	mov    0xc(%eax),%eax
 8053a96:	8b 50 04             	mov    0x4(%eax),%edx
 8053a99:	8b 45 08             	mov    0x8(%ebp),%eax
 8053a9c:	8b 40 0c             	mov    0xc(%eax),%eax
 8053a9f:	8b 40 04             	mov    0x4(%eax),%eax
 8053aa2:	83 ec 08             	sub    $0x8,%esp
 8053aa5:	52                   	push   %edx
 8053aa6:	50                   	push   %eax
 8053aa7:	e8 12 ff ff ff       	call   80539be <compareArgs>
 8053aac:	83 c4 10             	add    $0x10,%esp
 8053aaf:	c9                   	leave  
 8053ab0:	c3                   	ret    

08053ab1 <printFieldList>:
 8053ab1:	55                   	push   %ebp
 8053ab2:	89 e5                	mov    %esp,%ebp
 8053ab4:	83 ec 08             	sub    $0x8,%esp
 8053ab7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8053abb:	0f 84 89 00 00 00    	je     8053b4a <printFieldList+0x99>
 8053ac1:	eb 4a                	jmp    8053b0d <printFieldList+0x5c>
 8053ac3:	8b 45 08             	mov    0x8(%ebp),%eax
 8053ac6:	8b 40 04             	mov    0x4(%eax),%eax
 8053ac9:	83 ec 0c             	sub    $0xc,%esp
 8053acc:	50                   	push   %eax
 8053acd:	e8 7b 00 00 00       	call   8053b4d <printType>
 8053ad2:	83 c4 10             	add    $0x10,%esp
 8053ad5:	8b 45 08             	mov    0x8(%ebp),%eax
 8053ad8:	8b 00                	mov    (%eax),%eax
 8053ada:	85 c0                	test   %eax,%eax
 8053adc:	74 16                	je     8053af4 <printFieldList+0x43>
 8053ade:	8b 45 08             	mov    0x8(%ebp),%eax
 8053ae1:	8b 00                	mov    (%eax),%eax
 8053ae3:	83 ec 08             	sub    $0x8,%esp
 8053ae6:	50                   	push   %eax
 8053ae7:	68 39 5e 05 08       	push   $0x8055e39
 8053aec:	e8 cf 4c ff ff       	call   80487c0 <printf@plt>
 8053af1:	83 c4 10             	add    $0x10,%esp
 8053af4:	83 ec 0c             	sub    $0xc,%esp
 8053af7:	68 3d 5e 05 08       	push   $0x8055e3d
 8053afc:	e8 bf 4c ff ff       	call   80487c0 <printf@plt>
 8053b01:	83 c4 10             	add    $0x10,%esp
 8053b04:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b07:	8b 40 08             	mov    0x8(%eax),%eax
 8053b0a:	89 45 08             	mov    %eax,0x8(%ebp)
 8053b0d:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b10:	8b 40 08             	mov    0x8(%eax),%eax
 8053b13:	85 c0                	test   %eax,%eax
 8053b15:	75 ac                	jne    8053ac3 <printFieldList+0x12>
 8053b17:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b1a:	8b 40 04             	mov    0x4(%eax),%eax
 8053b1d:	83 ec 0c             	sub    $0xc,%esp
 8053b20:	50                   	push   %eax
 8053b21:	e8 27 00 00 00       	call   8053b4d <printType>
 8053b26:	83 c4 10             	add    $0x10,%esp
 8053b29:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b2c:	8b 00                	mov    (%eax),%eax
 8053b2e:	85 c0                	test   %eax,%eax
 8053b30:	74 19                	je     8053b4b <printFieldList+0x9a>
 8053b32:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b35:	8b 00                	mov    (%eax),%eax
 8053b37:	83 ec 08             	sub    $0x8,%esp
 8053b3a:	50                   	push   %eax
 8053b3b:	68 39 5e 05 08       	push   $0x8055e39
 8053b40:	e8 7b 4c ff ff       	call   80487c0 <printf@plt>
 8053b45:	83 c4 10             	add    $0x10,%esp
 8053b48:	eb 01                	jmp    8053b4b <printFieldList+0x9a>
 8053b4a:	90                   	nop
 8053b4b:	c9                   	leave  
 8053b4c:	c3                   	ret    

08053b4d <printType>:
 8053b4d:	55                   	push   %ebp
 8053b4e:	89 e5                	mov    %esp,%ebp
 8053b50:	83 ec 08             	sub    $0x8,%esp
 8053b53:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8053b57:	0f 84 84 00 00 00    	je     8053be1 <printType+0x94>
 8053b5d:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b60:	8b 00                	mov    (%eax),%eax
 8053b62:	83 f8 01             	cmp    $0x1,%eax
 8053b65:	74 3a                	je     8053ba1 <printType+0x54>
 8053b67:	83 f8 01             	cmp    $0x1,%eax
 8053b6a:	72 07                	jb     8053b73 <printType+0x26>
 8053b6c:	83 f8 02             	cmp    $0x2,%eax
 8053b6f:	74 5b                	je     8053bcc <printType+0x7f>
 8053b71:	eb 6f                	jmp    8053be2 <printType+0x95>
 8053b73:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b76:	8b 40 04             	mov    0x4(%eax),%eax
 8053b79:	85 c0                	test   %eax,%eax
 8053b7b:	75 12                	jne    8053b8f <printType+0x42>
 8053b7d:	83 ec 0c             	sub    $0xc,%esp
 8053b80:	68 40 5e 05 08       	push   $0x8055e40
 8053b85:	e8 36 4c ff ff       	call   80487c0 <printf@plt>
 8053b8a:	83 c4 10             	add    $0x10,%esp
 8053b8d:	eb 53                	jmp    8053be2 <printType+0x95>
 8053b8f:	83 ec 0c             	sub    $0xc,%esp
 8053b92:	68 44 5e 05 08       	push   $0x8055e44
 8053b97:	e8 24 4c ff ff       	call   80487c0 <printf@plt>
 8053b9c:	83 c4 10             	add    $0x10,%esp
 8053b9f:	eb 41                	jmp    8053be2 <printType+0x95>
 8053ba1:	8b 45 08             	mov    0x8(%ebp),%eax
 8053ba4:	8b 40 08             	mov    0x8(%eax),%eax
 8053ba7:	83 ec 08             	sub    $0x8,%esp
 8053baa:	50                   	push   %eax
 8053bab:	68 4a 5e 05 08       	push   $0x8055e4a
 8053bb0:	e8 0b 4c ff ff       	call   80487c0 <printf@plt>
 8053bb5:	83 c4 10             	add    $0x10,%esp
 8053bb8:	8b 45 08             	mov    0x8(%ebp),%eax
 8053bbb:	8b 40 04             	mov    0x4(%eax),%eax
 8053bbe:	83 ec 0c             	sub    $0xc,%esp
 8053bc1:	50                   	push   %eax
 8053bc2:	e8 86 ff ff ff       	call   8053b4d <printType>
 8053bc7:	83 c4 10             	add    $0x10,%esp
 8053bca:	eb 16                	jmp    8053be2 <printType+0x95>
 8053bcc:	8b 45 08             	mov    0x8(%ebp),%eax
 8053bcf:	8b 40 04             	mov    0x4(%eax),%eax
 8053bd2:	83 ec 0c             	sub    $0xc,%esp
 8053bd5:	50                   	push   %eax
 8053bd6:	e8 d6 fe ff ff       	call   8053ab1 <printFieldList>
 8053bdb:	83 c4 10             	add    $0x10,%esp
 8053bde:	90                   	nop
 8053bdf:	eb 01                	jmp    8053be2 <printType+0x95>
 8053be1:	90                   	nop
 8053be2:	c9                   	leave  
 8053be3:	c3                   	ret    

08053be4 <printFunc>:
 8053be4:	55                   	push   %ebp
 8053be5:	89 e5                	mov    %esp,%ebp
 8053be7:	83 ec 08             	sub    $0x8,%esp
 8053bea:	8b 45 08             	mov    0x8(%ebp),%eax
 8053bed:	8b 00                	mov    (%eax),%eax
 8053bef:	83 ec 0c             	sub    $0xc,%esp
 8053bf2:	50                   	push   %eax
 8053bf3:	e8 55 ff ff ff       	call   8053b4d <printType>
 8053bf8:	83 c4 10             	add    $0x10,%esp
 8053bfb:	83 ec 0c             	sub    $0xc,%esp
 8053bfe:	68 4f 5e 05 08       	push   $0x8055e4f
 8053c03:	e8 b8 4b ff ff       	call   80487c0 <printf@plt>
 8053c08:	83 c4 10             	add    $0x10,%esp
 8053c0b:	8b 45 08             	mov    0x8(%ebp),%eax
 8053c0e:	8b 40 04             	mov    0x4(%eax),%eax
 8053c11:	83 ec 0c             	sub    $0xc,%esp
 8053c14:	50                   	push   %eax
 8053c15:	e8 97 fe ff ff       	call   8053ab1 <printFieldList>
 8053c1a:	83 c4 10             	add    $0x10,%esp
 8053c1d:	83 ec 0c             	sub    $0xc,%esp
 8053c20:	6a 29                	push   $0x29
 8053c22:	e8 e9 4c ff ff       	call   8048910 <putchar@plt>
 8053c27:	83 c4 10             	add    $0x10,%esp
 8053c2a:	90                   	nop
 8053c2b:	c9                   	leave  
 8053c2c:	c3                   	ret    

08053c2d <printFuncType>:
 8053c2d:	55                   	push   %ebp
 8053c2e:	89 e5                	mov    %esp,%ebp
 8053c30:	83 ec 18             	sub    $0x18,%esp
 8053c33:	8b 45 08             	mov    0x8(%ebp),%eax
 8053c36:	8b 40 04             	mov    0x4(%eax),%eax
 8053c39:	83 ec 08             	sub    $0x8,%esp
 8053c3c:	50                   	push   %eax
 8053c3d:	68 52 5e 05 08       	push   $0x8055e52
 8053c42:	e8 79 4b ff ff       	call   80487c0 <printf@plt>
 8053c47:	83 c4 10             	add    $0x10,%esp
 8053c4a:	83 ec 0c             	sub    $0xc,%esp
 8053c4d:	6a 28                	push   $0x28
 8053c4f:	e8 bc 4c ff ff       	call   8048910 <putchar@plt>
 8053c54:	83 c4 10             	add    $0x10,%esp
 8053c57:	8b 45 08             	mov    0x8(%ebp),%eax
 8053c5a:	8b 40 0c             	mov    0xc(%eax),%eax
 8053c5d:	8b 40 04             	mov    0x4(%eax),%eax
 8053c60:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8053c63:	eb 28                	jmp    8053c8d <printFuncType+0x60>
 8053c65:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053c68:	8b 40 04             	mov    0x4(%eax),%eax
 8053c6b:	83 ec 0c             	sub    $0xc,%esp
 8053c6e:	50                   	push   %eax
 8053c6f:	e8 d9 fe ff ff       	call   8053b4d <printType>
 8053c74:	83 c4 10             	add    $0x10,%esp
 8053c77:	83 ec 0c             	sub    $0xc,%esp
 8053c7a:	6a 2c                	push   $0x2c
 8053c7c:	e8 8f 4c ff ff       	call   8048910 <putchar@plt>
 8053c81:	83 c4 10             	add    $0x10,%esp
 8053c84:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053c87:	8b 40 08             	mov    0x8(%eax),%eax
 8053c8a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8053c8d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8053c91:	74 0a                	je     8053c9d <printFuncType+0x70>
 8053c93:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053c96:	8b 40 08             	mov    0x8(%eax),%eax
 8053c99:	85 c0                	test   %eax,%eax
 8053c9b:	75 c8                	jne    8053c65 <printFuncType+0x38>
 8053c9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053ca0:	8b 40 04             	mov    0x4(%eax),%eax
 8053ca3:	83 ec 0c             	sub    $0xc,%esp
 8053ca6:	50                   	push   %eax
 8053ca7:	e8 a1 fe ff ff       	call   8053b4d <printType>
 8053cac:	83 c4 10             	add    $0x10,%esp
 8053caf:	83 ec 0c             	sub    $0xc,%esp
 8053cb2:	6a 29                	push   $0x29
 8053cb4:	e8 57 4c ff ff       	call   8048910 <putchar@plt>
 8053cb9:	83 c4 10             	add    $0x10,%esp
 8053cbc:	90                   	nop
 8053cbd:	c9                   	leave  
 8053cbe:	c3                   	ret    

08053cbf <printSymbol>:
 8053cbf:	55                   	push   %ebp
 8053cc0:	89 e5                	mov    %esp,%ebp
 8053cc2:	83 ec 08             	sub    $0x8,%esp
 8053cc5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8053cc9:	0f 84 d1 00 00 00    	je     8053da0 <printSymbol+0xe1>
 8053ccf:	8b 45 08             	mov    0x8(%ebp),%eax
 8053cd2:	8b 00                	mov    (%eax),%eax
 8053cd4:	85 c0                	test   %eax,%eax
 8053cd6:	75 3e                	jne    8053d16 <printSymbol+0x57>
 8053cd8:	83 ec 0c             	sub    $0xc,%esp
 8053cdb:	68 55 5e 05 08       	push   $0x8055e55
 8053ce0:	e8 db 4a ff ff       	call   80487c0 <printf@plt>
 8053ce5:	83 c4 10             	add    $0x10,%esp
 8053ce8:	8b 45 08             	mov    0x8(%ebp),%eax
 8053ceb:	8b 40 04             	mov    0x4(%eax),%eax
 8053cee:	83 ec 08             	sub    $0x8,%esp
 8053cf1:	50                   	push   %eax
 8053cf2:	68 5a 5e 05 08       	push   $0x8055e5a
 8053cf7:	e8 c4 4a ff ff       	call   80487c0 <printf@plt>
 8053cfc:	83 c4 10             	add    $0x10,%esp
 8053cff:	8b 45 08             	mov    0x8(%ebp),%eax
 8053d02:	8b 40 0c             	mov    0xc(%eax),%eax
 8053d05:	83 ec 0c             	sub    $0xc,%esp
 8053d08:	50                   	push   %eax
 8053d09:	e8 3f fe ff ff       	call   8053b4d <printType>
 8053d0e:	83 c4 10             	add    $0x10,%esp
 8053d11:	e9 8b 00 00 00       	jmp    8053da1 <printSymbol+0xe2>
 8053d16:	8b 45 08             	mov    0x8(%ebp),%eax
 8053d19:	8b 00                	mov    (%eax),%eax
 8053d1b:	83 f8 01             	cmp    $0x1,%eax
 8053d1e:	75 3b                	jne    8053d5b <printSymbol+0x9c>
 8053d20:	83 ec 0c             	sub    $0xc,%esp
 8053d23:	68 5f 5e 05 08       	push   $0x8055e5f
 8053d28:	e8 93 4a ff ff       	call   80487c0 <printf@plt>
 8053d2d:	83 c4 10             	add    $0x10,%esp
 8053d30:	8b 45 08             	mov    0x8(%ebp),%eax
 8053d33:	8b 40 04             	mov    0x4(%eax),%eax
 8053d36:	83 ec 08             	sub    $0x8,%esp
 8053d39:	50                   	push   %eax
 8053d3a:	68 5a 5e 05 08       	push   $0x8055e5a
 8053d3f:	e8 7c 4a ff ff       	call   80487c0 <printf@plt>
 8053d44:	83 c4 10             	add    $0x10,%esp
 8053d47:	8b 45 08             	mov    0x8(%ebp),%eax
 8053d4a:	8b 40 0c             	mov    0xc(%eax),%eax
 8053d4d:	83 ec 0c             	sub    $0xc,%esp
 8053d50:	50                   	push   %eax
 8053d51:	e8 8e fe ff ff       	call   8053be4 <printFunc>
 8053d56:	83 c4 10             	add    $0x10,%esp
 8053d59:	eb 46                	jmp    8053da1 <printSymbol+0xe2>
 8053d5b:	8b 45 08             	mov    0x8(%ebp),%eax
 8053d5e:	8b 00                	mov    (%eax),%eax
 8053d60:	83 f8 02             	cmp    $0x2,%eax
 8053d63:	75 3c                	jne    8053da1 <printSymbol+0xe2>
 8053d65:	83 ec 0c             	sub    $0xc,%esp
 8053d68:	68 65 5e 05 08       	push   $0x8055e65
 8053d6d:	e8 4e 4a ff ff       	call   80487c0 <printf@plt>
 8053d72:	83 c4 10             	add    $0x10,%esp
 8053d75:	8b 45 08             	mov    0x8(%ebp),%eax
 8053d78:	8b 40 04             	mov    0x4(%eax),%eax
 8053d7b:	83 ec 08             	sub    $0x8,%esp
 8053d7e:	50                   	push   %eax
 8053d7f:	68 5a 5e 05 08       	push   $0x8055e5a
 8053d84:	e8 37 4a ff ff       	call   80487c0 <printf@plt>
 8053d89:	83 c4 10             	add    $0x10,%esp
 8053d8c:	8b 45 08             	mov    0x8(%ebp),%eax
 8053d8f:	8b 40 0c             	mov    0xc(%eax),%eax
 8053d92:	83 ec 0c             	sub    $0xc,%esp
 8053d95:	50                   	push   %eax
 8053d96:	e8 b2 fd ff ff       	call   8053b4d <printType>
 8053d9b:	83 c4 10             	add    $0x10,%esp
 8053d9e:	eb 01                	jmp    8053da1 <printSymbol+0xe2>
 8053da0:	90                   	nop
 8053da1:	c9                   	leave  
 8053da2:	c3                   	ret    

08053da3 <printTable>:
 8053da3:	55                   	push   %ebp
 8053da4:	89 e5                	mov    %esp,%ebp
 8053da6:	83 ec 18             	sub    $0x18,%esp
 8053da9:	83 ec 0c             	sub    $0xc,%esp
 8053dac:	68 70 5e 05 08       	push   $0x8055e70
 8053db1:	e8 da 4a ff ff       	call   8048890 <puts@plt>
 8053db6:	83 c4 10             	add    $0x10,%esp
 8053db9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8053dc0:	eb 38                	jmp    8053dfa <printTable+0x57>
 8053dc2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053dc5:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 8053dcc:	85 c0                	test   %eax,%eax
 8053dce:	74 26                	je     8053df6 <printTable+0x53>
 8053dd0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053dd3:	8b 04 85 80 95 05 08 	mov    0x8059580(,%eax,4),%eax
 8053dda:	83 ec 0c             	sub    $0xc,%esp
 8053ddd:	50                   	push   %eax
 8053dde:	e8 dc fe ff ff       	call   8053cbf <printSymbol>
 8053de3:	83 c4 10             	add    $0x10,%esp
 8053de6:	83 ec 0c             	sub    $0xc,%esp
 8053de9:	68 70 5e 05 08       	push   $0x8055e70
 8053dee:	e8 9d 4a ff ff       	call   8048890 <puts@plt>
 8053df3:	83 c4 10             	add    $0x10,%esp
 8053df6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8053dfa:	81 7d f4 fe 3f 00 00 	cmpl   $0x3ffe,-0xc(%ebp)
 8053e01:	7e bf                	jle    8053dc2 <printTable+0x1f>
 8053e03:	90                   	nop
 8053e04:	c9                   	leave  
 8053e05:	c3                   	ret    

08053e06 <safe_strcmp>:
 8053e06:	55                   	push   %ebp
 8053e07:	89 e5                	mov    %esp,%ebp
 8053e09:	83 ec 08             	sub    $0x8,%esp
 8053e0c:	8b 45 08             	mov    0x8(%ebp),%eax
 8053e0f:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8053e12:	75 07                	jne    8053e1b <safe_strcmp+0x15>
 8053e14:	b8 00 00 00 00       	mov    $0x0,%eax
 8053e19:	eb 24                	jmp    8053e3f <safe_strcmp+0x39>
 8053e1b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8053e1f:	74 06                	je     8053e27 <safe_strcmp+0x21>
 8053e21:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8053e25:	75 07                	jne    8053e2e <safe_strcmp+0x28>
 8053e27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8053e2c:	eb 11                	jmp    8053e3f <safe_strcmp+0x39>
 8053e2e:	83 ec 08             	sub    $0x8,%esp
 8053e31:	ff 75 0c             	pushl  0xc(%ebp)
 8053e34:	ff 75 08             	pushl  0x8(%ebp)
 8053e37:	e8 74 49 ff ff       	call   80487b0 <strcmp@plt>
 8053e3c:	83 c4 10             	add    $0x10,%esp
 8053e3f:	c9                   	leave  
 8053e40:	c3                   	ret    
 8053e41:	66 90                	xchg   %ax,%ax
 8053e43:	66 90                	xchg   %ax,%ax
 8053e45:	66 90                	xchg   %ax,%ax
 8053e47:	66 90                	xchg   %ax,%ax
 8053e49:	66 90                	xchg   %ax,%ax
 8053e4b:	66 90                	xchg   %ax,%ax
 8053e4d:	66 90                	xchg   %ax,%ax
 8053e4f:	90                   	nop

08053e50 <yywrap>:
 8053e50:	b8 01 00 00 00       	mov    $0x1,%eax
 8053e55:	c3                   	ret    
 8053e56:	66 90                	xchg   %ax,%ax
 8053e58:	66 90                	xchg   %ax,%ax
 8053e5a:	66 90                	xchg   %ax,%ax
 8053e5c:	66 90                	xchg   %ax,%ax
 8053e5e:	66 90                	xchg   %ax,%ax

08053e60 <__libc_csu_init>:
 8053e60:	55                   	push   %ebp
 8053e61:	57                   	push   %edi
 8053e62:	56                   	push   %esi
 8053e63:	53                   	push   %ebx
 8053e64:	e8 a7 4b ff ff       	call   8048a10 <__x86.get_pc_thunk.bx>
 8053e69:	81 c3 97 51 00 00    	add    $0x5197,%ebx
 8053e6f:	83 ec 0c             	sub    $0xc,%esp
 8053e72:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8053e76:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 8053e7c:	e8 fb 48 ff ff       	call   804877c <_init>
 8053e81:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8053e87:	29 c6                	sub    %eax,%esi
 8053e89:	c1 fe 02             	sar    $0x2,%esi
 8053e8c:	85 f6                	test   %esi,%esi
 8053e8e:	74 25                	je     8053eb5 <__libc_csu_init+0x55>
 8053e90:	31 ff                	xor    %edi,%edi
 8053e92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053e98:	83 ec 04             	sub    $0x4,%esp
 8053e9b:	ff 74 24 2c          	pushl  0x2c(%esp)
 8053e9f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8053ea3:	55                   	push   %ebp
 8053ea4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8053eab:	83 c7 01             	add    $0x1,%edi
 8053eae:	83 c4 10             	add    $0x10,%esp
 8053eb1:	39 f7                	cmp    %esi,%edi
 8053eb3:	75 e3                	jne    8053e98 <__libc_csu_init+0x38>
 8053eb5:	83 c4 0c             	add    $0xc,%esp
 8053eb8:	5b                   	pop    %ebx
 8053eb9:	5e                   	pop    %esi
 8053eba:	5f                   	pop    %edi
 8053ebb:	5d                   	pop    %ebp
 8053ebc:	c3                   	ret    
 8053ebd:	8d 76 00             	lea    0x0(%esi),%esi

08053ec0 <__libc_csu_fini>:
 8053ec0:	f3 c3                	repz ret 

Disassembly of section .fini:

08053ec4 <_fini>:
 8053ec4:	53                   	push   %ebx
 8053ec5:	83 ec 08             	sub    $0x8,%esp
 8053ec8:	e8 43 4b ff ff       	call   8048a10 <__x86.get_pc_thunk.bx>
 8053ecd:	81 c3 33 51 00 00    	add    $0x5133,%ebx
 8053ed3:	83 c4 08             	add    $0x8,%esp
 8053ed6:	5b                   	pop    %ebx
 8053ed7:	c3                   	ret    
