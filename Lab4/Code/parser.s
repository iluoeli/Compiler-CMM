
parser：     文件格式 elf32-i386


Disassembly of section .init:

08048798 <_init>:
 8048798:	53                   	push   %ebx
 8048799:	83 ec 08             	sub    $0x8,%esp
 804879c:	e8 9f 02 00 00       	call   8048a40 <__x86.get_pc_thunk.bx>
 80487a1:	81 c3 5f 28 01 00    	add    $0x1285f,%ebx
 80487a7:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80487ad:	85 c0                	test   %eax,%eax
 80487af:	74 05                	je     80487b6 <_init+0x1e>
 80487b1:	e8 4a 02 00 00       	call   8048a00 <__assert_fail@plt+0x10>
 80487b6:	83 c4 08             	add    $0x8,%esp
 80487b9:	5b                   	pop    %ebx
 80487ba:	c3                   	ret    

Disassembly of section .plt:

080487c0 <strcmp@plt-0x10>:
 80487c0:	ff 35 04 b0 05 08    	pushl  0x805b004
 80487c6:	ff 25 08 b0 05 08    	jmp    *0x805b008
 80487cc:	00 00                	add    %al,(%eax)
	...

080487d0 <strcmp@plt>:
 80487d0:	ff 25 0c b0 05 08    	jmp    *0x805b00c
 80487d6:	68 00 00 00 00       	push   $0x0
 80487db:	e9 e0 ff ff ff       	jmp    80487c0 <_init+0x28>

080487e0 <printf@plt>:
 80487e0:	ff 25 10 b0 05 08    	jmp    *0x805b010
 80487e6:	68 08 00 00 00       	push   $0x8
 80487eb:	e9 d0 ff ff ff       	jmp    80487c0 <_init+0x28>

080487f0 <free@plt>:
 80487f0:	ff 25 14 b0 05 08    	jmp    *0x805b014
 80487f6:	68 10 00 00 00       	push   $0x10
 80487fb:	e9 c0 ff ff ff       	jmp    80487c0 <_init+0x28>

08048800 <memcpy@plt>:
 8048800:	ff 25 18 b0 05 08    	jmp    *0x805b018
 8048806:	68 18 00 00 00       	push   $0x18
 804880b:	e9 b0 ff ff ff       	jmp    80487c0 <_init+0x28>

08048810 <ferror@plt>:
 8048810:	ff 25 1c b0 05 08    	jmp    *0x805b01c
 8048816:	68 20 00 00 00       	push   $0x20
 804881b:	e9 a0 ff ff ff       	jmp    80487c0 <_init+0x28>

08048820 <fclose@plt>:
 8048820:	ff 25 20 b0 05 08    	jmp    *0x805b020
 8048826:	68 28 00 00 00       	push   $0x28
 804882b:	e9 90 ff ff ff       	jmp    80487c0 <_init+0x28>

08048830 <__stack_chk_fail@plt>:
 8048830:	ff 25 24 b0 05 08    	jmp    *0x805b024
 8048836:	68 30 00 00 00       	push   $0x30
 804883b:	e9 80 ff ff ff       	jmp    80487c0 <_init+0x28>

08048840 <_IO_getc@plt>:
 8048840:	ff 25 28 b0 05 08    	jmp    *0x805b028
 8048846:	68 38 00 00 00       	push   $0x38
 804884b:	e9 70 ff ff ff       	jmp    80487c0 <_init+0x28>

08048850 <perror@plt>:
 8048850:	ff 25 2c b0 05 08    	jmp    *0x805b02c
 8048856:	68 40 00 00 00       	push   $0x40
 804885b:	e9 60 ff ff ff       	jmp    80487c0 <_init+0x28>

08048860 <fwrite@plt>:
 8048860:	ff 25 30 b0 05 08    	jmp    *0x805b030
 8048866:	68 48 00 00 00       	push   $0x48
 804886b:	e9 50 ff ff ff       	jmp    80487c0 <_init+0x28>

08048870 <fread@plt>:
 8048870:	ff 25 34 b0 05 08    	jmp    *0x805b034
 8048876:	68 50 00 00 00       	push   $0x50
 804887b:	e9 40 ff ff ff       	jmp    80487c0 <_init+0x28>

08048880 <strcpy@plt>:
 8048880:	ff 25 38 b0 05 08    	jmp    *0x805b038
 8048886:	68 58 00 00 00       	push   $0x58
 804888b:	e9 30 ff ff ff       	jmp    80487c0 <_init+0x28>

08048890 <realloc@plt>:
 8048890:	ff 25 3c b0 05 08    	jmp    *0x805b03c
 8048896:	68 60 00 00 00       	push   $0x60
 804889b:	e9 20 ff ff ff       	jmp    80487c0 <_init+0x28>

080488a0 <malloc@plt>:
 80488a0:	ff 25 40 b0 05 08    	jmp    *0x805b040
 80488a6:	68 68 00 00 00       	push   $0x68
 80488ab:	e9 10 ff ff ff       	jmp    80487c0 <_init+0x28>

080488b0 <puts@plt>:
 80488b0:	ff 25 44 b0 05 08    	jmp    *0x805b044
 80488b6:	68 70 00 00 00       	push   $0x70
 80488bb:	e9 00 ff ff ff       	jmp    80487c0 <_init+0x28>

080488c0 <exit@plt>:
 80488c0:	ff 25 48 b0 05 08    	jmp    *0x805b048
 80488c6:	68 78 00 00 00       	push   $0x78
 80488cb:	e9 f0 fe ff ff       	jmp    80487c0 <_init+0x28>

080488d0 <strlen@plt>:
 80488d0:	ff 25 4c b0 05 08    	jmp    *0x805b04c
 80488d6:	68 80 00 00 00       	push   $0x80
 80488db:	e9 e0 fe ff ff       	jmp    80487c0 <_init+0x28>

080488e0 <vprintf@plt>:
 80488e0:	ff 25 50 b0 05 08    	jmp    *0x805b050
 80488e6:	68 88 00 00 00       	push   $0x88
 80488eb:	e9 d0 fe ff ff       	jmp    80487c0 <_init+0x28>

080488f0 <__libc_start_main@plt>:
 80488f0:	ff 25 54 b0 05 08    	jmp    *0x805b054
 80488f6:	68 90 00 00 00       	push   $0x90
 80488fb:	e9 c0 fe ff ff       	jmp    80487c0 <_init+0x28>

08048900 <fprintf@plt>:
 8048900:	ff 25 58 b0 05 08    	jmp    *0x805b058
 8048906:	68 98 00 00 00       	push   $0x98
 804890b:	e9 b0 fe ff ff       	jmp    80487c0 <_init+0x28>

08048910 <fopen@plt>:
 8048910:	ff 25 5c b0 05 08    	jmp    *0x805b05c
 8048916:	68 a0 00 00 00       	push   $0xa0
 804891b:	e9 a0 fe ff ff       	jmp    80487c0 <_init+0x28>

08048920 <memset@plt>:
 8048920:	ff 25 60 b0 05 08    	jmp    *0x805b060
 8048926:	68 a8 00 00 00       	push   $0xa8
 804892b:	e9 90 fe ff ff       	jmp    80487c0 <_init+0x28>

08048930 <putchar@plt>:
 8048930:	ff 25 64 b0 05 08    	jmp    *0x805b064
 8048936:	68 b0 00 00 00       	push   $0xb0
 804893b:	e9 80 fe ff ff       	jmp    80487c0 <_init+0x28>

08048940 <__errno_location@plt>:
 8048940:	ff 25 68 b0 05 08    	jmp    *0x805b068
 8048946:	68 b8 00 00 00       	push   $0xb8
 804894b:	e9 70 fe ff ff       	jmp    80487c0 <_init+0x28>

08048950 <strncpy@plt>:
 8048950:	ff 25 6c b0 05 08    	jmp    *0x805b06c
 8048956:	68 c0 00 00 00       	push   $0xc0
 804895b:	e9 60 fe ff ff       	jmp    80487c0 <_init+0x28>

08048960 <fileno@plt>:
 8048960:	ff 25 70 b0 05 08    	jmp    *0x805b070
 8048966:	68 c8 00 00 00       	push   $0xc8
 804896b:	e9 50 fe ff ff       	jmp    80487c0 <_init+0x28>

08048970 <vfprintf@plt>:
 8048970:	ff 25 74 b0 05 08    	jmp    *0x805b074
 8048976:	68 d0 00 00 00       	push   $0xd0
 804897b:	e9 40 fe ff ff       	jmp    80487c0 <_init+0x28>

08048980 <fputc@plt>:
 8048980:	ff 25 78 b0 05 08    	jmp    *0x805b078
 8048986:	68 d8 00 00 00       	push   $0xd8
 804898b:	e9 30 fe ff ff       	jmp    80487c0 <_init+0x28>

08048990 <clearerr@plt>:
 8048990:	ff 25 7c b0 05 08    	jmp    *0x805b07c
 8048996:	68 e0 00 00 00       	push   $0xe0
 804899b:	e9 20 fe ff ff       	jmp    80487c0 <_init+0x28>

080489a0 <atoi@plt>:
 80489a0:	ff 25 80 b0 05 08    	jmp    *0x805b080
 80489a6:	68 e8 00 00 00       	push   $0xe8
 80489ab:	e9 10 fe ff ff       	jmp    80487c0 <_init+0x28>

080489b0 <atof@plt>:
 80489b0:	ff 25 84 b0 05 08    	jmp    *0x805b084
 80489b6:	68 f0 00 00 00       	push   $0xf0
 80489bb:	e9 00 fe ff ff       	jmp    80487c0 <_init+0x28>

080489c0 <isatty@plt>:
 80489c0:	ff 25 88 b0 05 08    	jmp    *0x805b088
 80489c6:	68 f8 00 00 00       	push   $0xf8
 80489cb:	e9 f0 fd ff ff       	jmp    80487c0 <_init+0x28>

080489d0 <strtol@plt>:
 80489d0:	ff 25 8c b0 05 08    	jmp    *0x805b08c
 80489d6:	68 00 01 00 00       	push   $0x100
 80489db:	e9 e0 fd ff ff       	jmp    80487c0 <_init+0x28>

080489e0 <fputs@plt>:
 80489e0:	ff 25 90 b0 05 08    	jmp    *0x805b090
 80489e6:	68 08 01 00 00       	push   $0x108
 80489eb:	e9 d0 fd ff ff       	jmp    80487c0 <_init+0x28>

080489f0 <__assert_fail@plt>:
 80489f0:	ff 25 94 b0 05 08    	jmp    *0x805b094
 80489f6:	68 10 01 00 00       	push   $0x110
 80489fb:	e9 c0 fd ff ff       	jmp    80487c0 <_init+0x28>

Disassembly of section .plt.got:

08048a00 <.plt.got>:
 8048a00:	ff 25 fc af 05 08    	jmp    *0x805affc
 8048a06:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048a10 <_start>:
 8048a10:	31 ed                	xor    %ebp,%ebp
 8048a12:	5e                   	pop    %esi
 8048a13:	89 e1                	mov    %esp,%ecx
 8048a15:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a18:	50                   	push   %eax
 8048a19:	54                   	push   %esp
 8048a1a:	52                   	push   %edx
 8048a1b:	68 c0 57 05 08       	push   $0x80557c0
 8048a20:	68 60 57 05 08       	push   $0x8055760
 8048a25:	51                   	push   %ecx
 8048a26:	56                   	push   %esi
 8048a27:	68 38 c6 04 08       	push   $0x804c638
 8048a2c:	e8 bf fe ff ff       	call   80488f0 <__libc_start_main@plt>
 8048a31:	f4                   	hlt    
 8048a32:	66 90                	xchg   %ax,%ax
 8048a34:	66 90                	xchg   %ax,%ax
 8048a36:	66 90                	xchg   %ax,%ax
 8048a38:	66 90                	xchg   %ax,%ax
 8048a3a:	66 90                	xchg   %ax,%ax
 8048a3c:	66 90                	xchg   %ax,%ax
 8048a3e:	66 90                	xchg   %ax,%ax

08048a40 <__x86.get_pc_thunk.bx>:
 8048a40:	8b 1c 24             	mov    (%esp),%ebx
 8048a43:	c3                   	ret    
 8048a44:	66 90                	xchg   %ax,%ax
 8048a46:	66 90                	xchg   %ax,%ax
 8048a48:	66 90                	xchg   %ax,%ax
 8048a4a:	66 90                	xchg   %ax,%ax
 8048a4c:	66 90                	xchg   %ax,%ax
 8048a4e:	66 90                	xchg   %ax,%ax

08048a50 <deregister_tm_clones>:
 8048a50:	b8 cb b0 05 08       	mov    $0x805b0cb,%eax
 8048a55:	2d c8 b0 05 08       	sub    $0x805b0c8,%eax
 8048a5a:	83 f8 06             	cmp    $0x6,%eax
 8048a5d:	76 1a                	jbe    8048a79 <deregister_tm_clones+0x29>
 8048a5f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048a64:	85 c0                	test   %eax,%eax
 8048a66:	74 11                	je     8048a79 <deregister_tm_clones+0x29>
 8048a68:	55                   	push   %ebp
 8048a69:	89 e5                	mov    %esp,%ebp
 8048a6b:	83 ec 14             	sub    $0x14,%esp
 8048a6e:	68 c8 b0 05 08       	push   $0x805b0c8
 8048a73:	ff d0                	call   *%eax
 8048a75:	83 c4 10             	add    $0x10,%esp
 8048a78:	c9                   	leave  
 8048a79:	f3 c3                	repz ret 
 8048a7b:	90                   	nop
 8048a7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048a80 <register_tm_clones>:
 8048a80:	b8 c8 b0 05 08       	mov    $0x805b0c8,%eax
 8048a85:	2d c8 b0 05 08       	sub    $0x805b0c8,%eax
 8048a8a:	c1 f8 02             	sar    $0x2,%eax
 8048a8d:	89 c2                	mov    %eax,%edx
 8048a8f:	c1 ea 1f             	shr    $0x1f,%edx
 8048a92:	01 d0                	add    %edx,%eax
 8048a94:	d1 f8                	sar    %eax
 8048a96:	74 1b                	je     8048ab3 <register_tm_clones+0x33>
 8048a98:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a9d:	85 d2                	test   %edx,%edx
 8048a9f:	74 12                	je     8048ab3 <register_tm_clones+0x33>
 8048aa1:	55                   	push   %ebp
 8048aa2:	89 e5                	mov    %esp,%ebp
 8048aa4:	83 ec 10             	sub    $0x10,%esp
 8048aa7:	50                   	push   %eax
 8048aa8:	68 c8 b0 05 08       	push   $0x805b0c8
 8048aad:	ff d2                	call   *%edx
 8048aaf:	83 c4 10             	add    $0x10,%esp
 8048ab2:	c9                   	leave  
 8048ab3:	f3 c3                	repz ret 
 8048ab5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048ab9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048ac0 <__do_global_dtors_aux>:
 8048ac0:	80 3d 08 b1 05 08 00 	cmpb   $0x0,0x805b108
 8048ac7:	75 13                	jne    8048adc <__do_global_dtors_aux+0x1c>
 8048ac9:	55                   	push   %ebp
 8048aca:	89 e5                	mov    %esp,%ebp
 8048acc:	83 ec 08             	sub    $0x8,%esp
 8048acf:	e8 7c ff ff ff       	call   8048a50 <deregister_tm_clones>
 8048ad4:	c6 05 08 b1 05 08 01 	movb   $0x1,0x805b108
 8048adb:	c9                   	leave  
 8048adc:	f3 c3                	repz ret 
 8048ade:	66 90                	xchg   %ax,%ax

08048ae0 <frame_dummy>:
 8048ae0:	b8 10 af 05 08       	mov    $0x805af10,%eax
 8048ae5:	8b 10                	mov    (%eax),%edx
 8048ae7:	85 d2                	test   %edx,%edx
 8048ae9:	75 05                	jne    8048af0 <frame_dummy+0x10>
 8048aeb:	eb 93                	jmp    8048a80 <register_tm_clones>
 8048aed:	8d 76 00             	lea    0x0(%esi),%esi
 8048af0:	ba 00 00 00 00       	mov    $0x0,%edx
 8048af5:	85 d2                	test   %edx,%edx
 8048af7:	74 f2                	je     8048aeb <frame_dummy+0xb>
 8048af9:	55                   	push   %ebp
 8048afa:	89 e5                	mov    %esp,%ebp
 8048afc:	83 ec 14             	sub    $0x14,%esp
 8048aff:	50                   	push   %eax
 8048b00:	ff d2                	call   *%edx
 8048b02:	83 c4 10             	add    $0x10,%esp
 8048b05:	c9                   	leave  
 8048b06:	e9 75 ff ff ff       	jmp    8048a80 <register_tm_clones>

08048b0b <newNode>:
 8048b0b:	55                   	push   %ebp
 8048b0c:	89 e5                	mov    %esp,%ebp
 8048b0e:	83 ec 18             	sub    $0x18,%esp
 8048b11:	83 ec 0c             	sub    $0xc,%esp
 8048b14:	6a 34                	push   $0x34
 8048b16:	e8 85 fd ff ff       	call   80488a0 <malloc@plt>
 8048b1b:	83 c4 10             	add    $0x10,%esp
 8048b1e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048b21:	83 ec 04             	sub    $0x4,%esp
 8048b24:	6a 34                	push   $0x34
 8048b26:	6a 00                	push   $0x0
 8048b28:	ff 75 f4             	pushl  -0xc(%ebp)
 8048b2b:	e8 f0 fd ff ff       	call   8048920 <memset@plt>
 8048b30:	83 c4 10             	add    $0x10,%esp
 8048b33:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b36:	c9                   	leave  
 8048b37:	c3                   	ret    

08048b38 <createNode>:
 8048b38:	55                   	push   %ebp
 8048b39:	89 e5                	mov    %esp,%ebp
 8048b3b:	53                   	push   %ebx
 8048b3c:	83 ec 14             	sub    $0x14,%esp
 8048b3f:	e8 c7 ff ff ff       	call   8048b0b <newNode>
 8048b44:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048b47:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b4a:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048b4d:	89 10                	mov    %edx,(%eax)
 8048b4f:	83 ec 0c             	sub    $0xc,%esp
 8048b52:	ff 75 08             	pushl  0x8(%ebp)
 8048b55:	e8 76 fd ff ff       	call   80488d0 <strlen@plt>
 8048b5a:	83 c4 10             	add    $0x10,%esp
 8048b5d:	83 c0 01             	add    $0x1,%eax
 8048b60:	83 ec 0c             	sub    $0xc,%esp
 8048b63:	50                   	push   %eax
 8048b64:	e8 37 fd ff ff       	call   80488a0 <malloc@plt>
 8048b69:	83 c4 10             	add    $0x10,%esp
 8048b6c:	89 c2                	mov    %eax,%edx
 8048b6e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b71:	89 50 0c             	mov    %edx,0xc(%eax)
 8048b74:	83 ec 0c             	sub    $0xc,%esp
 8048b77:	ff 75 08             	pushl  0x8(%ebp)
 8048b7a:	e8 51 fd ff ff       	call   80488d0 <strlen@plt>
 8048b7f:	83 c4 10             	add    $0x10,%esp
 8048b82:	89 c2                	mov    %eax,%edx
 8048b84:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b87:	8b 40 0c             	mov    0xc(%eax),%eax
 8048b8a:	83 ec 04             	sub    $0x4,%esp
 8048b8d:	52                   	push   %edx
 8048b8e:	ff 75 08             	pushl  0x8(%ebp)
 8048b91:	50                   	push   %eax
 8048b92:	e8 b9 fd ff ff       	call   8048950 <strncpy@plt>
 8048b97:	83 c4 10             	add    $0x10,%esp
 8048b9a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b9d:	8b 58 0c             	mov    0xc(%eax),%ebx
 8048ba0:	83 ec 0c             	sub    $0xc,%esp
 8048ba3:	ff 75 08             	pushl  0x8(%ebp)
 8048ba6:	e8 25 fd ff ff       	call   80488d0 <strlen@plt>
 8048bab:	83 c4 10             	add    $0x10,%esp
 8048bae:	01 d8                	add    %ebx,%eax
 8048bb0:	c6 00 00             	movb   $0x0,(%eax)
 8048bb3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048bb6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048bb9:	c9                   	leave  
 8048bba:	c3                   	ret    

08048bbb <addChild>:
 8048bbb:	55                   	push   %ebp
 8048bbc:	89 e5                	mov    %esp,%ebp
 8048bbe:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048bc2:	74 1e                	je     8048be2 <addChild+0x27>
 8048bc4:	8b 45 08             	mov    0x8(%ebp),%eax
 8048bc7:	8b 40 10             	mov    0x10(%eax),%eax
 8048bca:	8d 48 01             	lea    0x1(%eax),%ecx
 8048bcd:	8b 55 08             	mov    0x8(%ebp),%edx
 8048bd0:	89 4a 10             	mov    %ecx,0x10(%edx)
 8048bd3:	8b 55 08             	mov    0x8(%ebp),%edx
 8048bd6:	8d 48 04             	lea    0x4(%eax),%ecx
 8048bd9:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048bdc:	89 44 8a 04          	mov    %eax,0x4(%edx,%ecx,4)
 8048be0:	eb 01                	jmp    8048be3 <addChild+0x28>
 8048be2:	90                   	nop
 8048be3:	5d                   	pop    %ebp
 8048be4:	c3                   	ret    

08048be5 <printNode>:
 8048be5:	55                   	push   %ebp
 8048be6:	89 e5                	mov    %esp,%ebp
 8048be8:	83 ec 18             	sub    $0x18,%esp
 8048beb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048bf2:	eb 14                	jmp    8048c08 <printNode+0x23>
 8048bf4:	83 ec 0c             	sub    $0xc,%esp
 8048bf7:	68 e8 57 05 08       	push   $0x80557e8
 8048bfc:	e8 df fb ff ff       	call   80487e0 <printf@plt>
 8048c01:	83 c4 10             	add    $0x10,%esp
 8048c04:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048c08:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c0b:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8048c0e:	7c e4                	jl     8048bf4 <printNode+0xf>
 8048c10:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c13:	8b 40 04             	mov    0x4(%eax),%eax
 8048c16:	83 f8 1e             	cmp    $0x1e,%eax
 8048c19:	76 22                	jbe    8048c3d <printNode+0x58>
 8048c1b:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c1e:	8b 10                	mov    (%eax),%edx
 8048c20:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c23:	8b 40 0c             	mov    0xc(%eax),%eax
 8048c26:	83 ec 04             	sub    $0x4,%esp
 8048c29:	52                   	push   %edx
 8048c2a:	50                   	push   %eax
 8048c2b:	68 eb 57 05 08       	push   $0x80557eb
 8048c30:	e8 ab fb ff ff       	call   80487e0 <printf@plt>
 8048c35:	83 c4 10             	add    $0x10,%esp
 8048c38:	e9 cd 00 00 00       	jmp    8048d0a <printNode+0x125>
 8048c3d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c40:	8b 40 04             	mov    0x4(%eax),%eax
 8048c43:	83 f8 04             	cmp    $0x4,%eax
 8048c46:	76 17                	jbe    8048c5f <printNode+0x7a>
 8048c48:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c4b:	8b 40 0c             	mov    0xc(%eax),%eax
 8048c4e:	83 ec 0c             	sub    $0xc,%esp
 8048c51:	50                   	push   %eax
 8048c52:	e8 59 fc ff ff       	call   80488b0 <puts@plt>
 8048c57:	83 c4 10             	add    $0x10,%esp
 8048c5a:	e9 ab 00 00 00       	jmp    8048d0a <printNode+0x125>
 8048c5f:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c62:	8b 40 04             	mov    0x4(%eax),%eax
 8048c65:	83 f8 02             	cmp    $0x2,%eax
 8048c68:	74 3e                	je     8048ca8 <printNode+0xc3>
 8048c6a:	83 f8 02             	cmp    $0x2,%eax
 8048c6d:	77 0a                	ja     8048c79 <printNode+0x94>
 8048c6f:	83 f8 01             	cmp    $0x1,%eax
 8048c72:	74 14                	je     8048c88 <printNode+0xa3>
 8048c74:	e9 91 00 00 00       	jmp    8048d0a <printNode+0x125>
 8048c79:	83 f8 03             	cmp    $0x3,%eax
 8048c7c:	74 4d                	je     8048ccb <printNode+0xe6>
 8048c7e:	83 f8 04             	cmp    $0x4,%eax
 8048c81:	74 68                	je     8048ceb <printNode+0x106>
 8048c83:	e9 82 00 00 00       	jmp    8048d0a <printNode+0x125>
 8048c88:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c8b:	8b 50 08             	mov    0x8(%eax),%edx
 8048c8e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c91:	8b 40 0c             	mov    0xc(%eax),%eax
 8048c94:	83 ec 04             	sub    $0x4,%esp
 8048c97:	52                   	push   %edx
 8048c98:	50                   	push   %eax
 8048c99:	68 f4 57 05 08       	push   $0x80557f4
 8048c9e:	e8 3d fb ff ff       	call   80487e0 <printf@plt>
 8048ca3:	83 c4 10             	add    $0x10,%esp
 8048ca6:	eb 62                	jmp    8048d0a <printNode+0x125>
 8048ca8:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cab:	d9 40 08             	flds   0x8(%eax)
 8048cae:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cb1:	8b 40 0c             	mov    0xc(%eax),%eax
 8048cb4:	8d 64 24 f8          	lea    -0x8(%esp),%esp
 8048cb8:	dd 1c 24             	fstpl  (%esp)
 8048cbb:	50                   	push   %eax
 8048cbc:	68 fc 57 05 08       	push   $0x80557fc
 8048cc1:	e8 1a fb ff ff       	call   80487e0 <printf@plt>
 8048cc6:	83 c4 10             	add    $0x10,%esp
 8048cc9:	eb 3f                	jmp    8048d0a <printNode+0x125>
 8048ccb:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cce:	8b 50 08             	mov    0x8(%eax),%edx
 8048cd1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cd4:	8b 40 0c             	mov    0xc(%eax),%eax
 8048cd7:	83 ec 04             	sub    $0x4,%esp
 8048cda:	52                   	push   %edx
 8048cdb:	50                   	push   %eax
 8048cdc:	68 04 58 05 08       	push   $0x8055804
 8048ce1:	e8 fa fa ff ff       	call   80487e0 <printf@plt>
 8048ce6:	83 c4 10             	add    $0x10,%esp
 8048ce9:	eb 1f                	jmp    8048d0a <printNode+0x125>
 8048ceb:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cee:	8b 50 08             	mov    0x8(%eax),%edx
 8048cf1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cf4:	8b 40 0c             	mov    0xc(%eax),%eax
 8048cf7:	83 ec 04             	sub    $0x4,%esp
 8048cfa:	52                   	push   %edx
 8048cfb:	50                   	push   %eax
 8048cfc:	68 04 58 05 08       	push   $0x8055804
 8048d01:	e8 da fa ff ff       	call   80487e0 <printf@plt>
 8048d06:	83 c4 10             	add    $0x10,%esp
 8048d09:	90                   	nop
 8048d0a:	90                   	nop
 8048d0b:	c9                   	leave  
 8048d0c:	c3                   	ret    

08048d0d <preOrder>:
 8048d0d:	55                   	push   %ebp
 8048d0e:	89 e5                	mov    %esp,%ebp
 8048d10:	83 ec 18             	sub    $0x18,%esp
 8048d13:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048d17:	74 49                	je     8048d62 <preOrder+0x55>
 8048d19:	83 ec 08             	sub    $0x8,%esp
 8048d1c:	ff 75 0c             	pushl  0xc(%ebp)
 8048d1f:	ff 75 08             	pushl  0x8(%ebp)
 8048d22:	e8 be fe ff ff       	call   8048be5 <printNode>
 8048d27:	83 c4 10             	add    $0x10,%esp
 8048d2a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048d31:	eb 24                	jmp    8048d57 <preOrder+0x4a>
 8048d33:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d36:	8d 50 01             	lea    0x1(%eax),%edx
 8048d39:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d3c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8048d3f:	83 c1 04             	add    $0x4,%ecx
 8048d42:	8b 44 88 04          	mov    0x4(%eax,%ecx,4),%eax
 8048d46:	83 ec 08             	sub    $0x8,%esp
 8048d49:	52                   	push   %edx
 8048d4a:	50                   	push   %eax
 8048d4b:	e8 bd ff ff ff       	call   8048d0d <preOrder>
 8048d50:	83 c4 10             	add    $0x10,%esp
 8048d53:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048d57:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d5a:	8b 40 10             	mov    0x10(%eax),%eax
 8048d5d:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8048d60:	7f d1                	jg     8048d33 <preOrder+0x26>
 8048d62:	90                   	nop
 8048d63:	c9                   	leave  
 8048d64:	c3                   	ret    

08048d65 <printTree>:
 8048d65:	55                   	push   %ebp
 8048d66:	89 e5                	mov    %esp,%ebp
 8048d68:	83 ec 08             	sub    $0x8,%esp
 8048d6b:	83 ec 08             	sub    $0x8,%esp
 8048d6e:	6a 00                	push   $0x0
 8048d70:	ff 75 08             	pushl  0x8(%ebp)
 8048d73:	e8 95 ff ff ff       	call   8048d0d <preOrder>
 8048d78:	83 c4 10             	add    $0x10,%esp
 8048d7b:	90                   	nop
 8048d7c:	c9                   	leave  
 8048d7d:	c3                   	ret    

08048d7e <deleteTree>:
 8048d7e:	55                   	push   %ebp
 8048d7f:	89 e5                	mov    %esp,%ebp
 8048d81:	83 ec 18             	sub    $0x18,%esp
 8048d84:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048d88:	74 3f                	je     8048dc9 <deleteTree+0x4b>
 8048d8a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048d91:	eb 1d                	jmp    8048db0 <deleteTree+0x32>
 8048d93:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d96:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d99:	83 c2 04             	add    $0x4,%edx
 8048d9c:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
 8048da0:	83 ec 0c             	sub    $0xc,%esp
 8048da3:	50                   	push   %eax
 8048da4:	e8 d5 ff ff ff       	call   8048d7e <deleteTree>
 8048da9:	83 c4 10             	add    $0x10,%esp
 8048dac:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048db0:	8b 45 08             	mov    0x8(%ebp),%eax
 8048db3:	8b 40 10             	mov    0x10(%eax),%eax
 8048db6:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8048db9:	7f d8                	jg     8048d93 <deleteTree+0x15>
 8048dbb:	83 ec 0c             	sub    $0xc,%esp
 8048dbe:	ff 75 08             	pushl  0x8(%ebp)
 8048dc1:	e8 2a fa ff ff       	call   80487f0 <free@plt>
 8048dc6:	83 c4 10             	add    $0x10,%esp
 8048dc9:	90                   	nop
 8048dca:	c9                   	leave  
 8048dcb:	c3                   	ret    

08048dcc <printMips>:
 8048dcc:	55                   	push   %ebp
 8048dcd:	89 e5                	mov    %esp,%ebp
 8048dcf:	83 ec 28             	sub    $0x28,%esp
 8048dd2:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dd5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048dd8:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048dde:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048de1:	31 c0                	xor    %eax,%eax
 8048de3:	8d 45 0c             	lea    0xc(%ebp),%eax
 8048de6:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048de9:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048dec:	a1 24 b1 05 08       	mov    0x805b124,%eax
 8048df1:	83 ec 04             	sub    $0x4,%esp
 8048df4:	52                   	push   %edx
 8048df5:	ff 75 e4             	pushl  -0x1c(%ebp)
 8048df8:	50                   	push   %eax
 8048df9:	e8 72 fb ff ff       	call   8048970 <vfprintf@plt>
 8048dfe:	83 c4 10             	add    $0x10,%esp
 8048e01:	a1 24 b1 05 08       	mov    0x805b124,%eax
 8048e06:	83 ec 08             	sub    $0x8,%esp
 8048e09:	50                   	push   %eax
 8048e0a:	6a 0a                	push   $0xa
 8048e0c:	e8 6f fb ff ff       	call   8048980 <fputc@plt>
 8048e11:	83 c4 10             	add    $0x10,%esp
 8048e14:	a1 14 b1 05 08       	mov    0x805b114,%eax
 8048e19:	83 c0 01             	add    $0x1,%eax
 8048e1c:	a3 14 b1 05 08       	mov    %eax,0x805b114
 8048e21:	90                   	nop
 8048e22:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e25:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048e2c:	74 05                	je     8048e33 <printMips+0x67>
 8048e2e:	e8 fd f9 ff ff       	call   8048830 <__stack_chk_fail@plt>
 8048e33:	c9                   	leave  
 8048e34:	c3                   	ret    

08048e35 <initRegs>:
 8048e35:	55                   	push   %ebp
 8048e36:	89 e5                	mov    %esp,%ebp
 8048e38:	83 ec 18             	sub    $0x18,%esp
 8048e3b:	83 ec 04             	sub    $0x4,%esp
 8048e3e:	68 00 02 00 00       	push   $0x200
 8048e43:	6a 00                	push   $0x0
 8048e45:	68 80 b1 05 08       	push   $0x805b180
 8048e4a:	e8 d1 fa ff ff       	call   8048920 <memset@plt>
 8048e4f:	83 c4 10             	add    $0x10,%esp
 8048e52:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048e59:	eb 4c                	jmp    8048ea7 <initRegs+0x72>
 8048e5b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e5e:	83 c0 08             	add    $0x8,%eax
 8048e61:	c1 e0 04             	shl    $0x4,%eax
 8048e64:	05 80 b1 05 08       	add    $0x805b180,%eax
 8048e69:	c6 00 24             	movb   $0x24,(%eax)
 8048e6c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e6f:	c1 e0 04             	shl    $0x4,%eax
 8048e72:	05 01 b2 05 08       	add    $0x805b201,%eax
 8048e77:	c6 00 74             	movb   $0x74,(%eax)
 8048e7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e7d:	83 c0 30             	add    $0x30,%eax
 8048e80:	89 c2                	mov    %eax,%edx
 8048e82:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e85:	c1 e0 04             	shl    $0x4,%eax
 8048e88:	05 02 b2 05 08       	add    $0x805b202,%eax
 8048e8d:	88 10                	mov    %dl,(%eax)
 8048e8f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e92:	83 c0 08             	add    $0x8,%eax
 8048e95:	c1 e0 04             	shl    $0x4,%eax
 8048e98:	05 8c b1 05 08       	add    $0x805b18c,%eax
 8048e9d:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 8048ea3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048ea7:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
 8048eab:	7e ae                	jle    8048e5b <initRegs+0x26>
 8048ead:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048eb4:	eb 4c                	jmp    8048f02 <initRegs+0xcd>
 8048eb6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048eb9:	83 c0 12             	add    $0x12,%eax
 8048ebc:	c1 e0 04             	shl    $0x4,%eax
 8048ebf:	05 80 b1 05 08       	add    $0x805b180,%eax
 8048ec4:	c6 00 24             	movb   $0x24,(%eax)
 8048ec7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048eca:	c1 e0 04             	shl    $0x4,%eax
 8048ecd:	05 a1 b2 05 08       	add    $0x805b2a1,%eax
 8048ed2:	c6 00 73             	movb   $0x73,(%eax)
 8048ed5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ed8:	83 c0 30             	add    $0x30,%eax
 8048edb:	89 c2                	mov    %eax,%edx
 8048edd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ee0:	c1 e0 04             	shl    $0x4,%eax
 8048ee3:	05 a2 b2 05 08       	add    $0x805b2a2,%eax
 8048ee8:	88 10                	mov    %dl,(%eax)
 8048eea:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048eed:	83 c0 12             	add    $0x12,%eax
 8048ef0:	c1 e0 04             	shl    $0x4,%eax
 8048ef3:	05 8c b1 05 08       	add    $0x805b18c,%eax
 8048ef8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 8048efe:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048f02:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
 8048f06:	7e ae                	jle    8048eb6 <initRegs+0x81>
 8048f08:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048f0f:	eb 4c                	jmp    8048f5d <initRegs+0x128>
 8048f11:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f14:	83 c0 04             	add    $0x4,%eax
 8048f17:	c1 e0 04             	shl    $0x4,%eax
 8048f1a:	05 80 b1 05 08       	add    $0x805b180,%eax
 8048f1f:	c6 00 24             	movb   $0x24,(%eax)
 8048f22:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f25:	c1 e0 04             	shl    $0x4,%eax
 8048f28:	05 c1 b1 05 08       	add    $0x805b1c1,%eax
 8048f2d:	c6 00 61             	movb   $0x61,(%eax)
 8048f30:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f33:	83 c0 30             	add    $0x30,%eax
 8048f36:	89 c2                	mov    %eax,%edx
 8048f38:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f3b:	c1 e0 04             	shl    $0x4,%eax
 8048f3e:	05 c2 b1 05 08       	add    $0x805b1c2,%eax
 8048f43:	88 10                	mov    %dl,(%eax)
 8048f45:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f48:	83 c0 08             	add    $0x8,%eax
 8048f4b:	c1 e0 04             	shl    $0x4,%eax
 8048f4e:	05 8c b1 05 08       	add    $0x805b18c,%eax
 8048f53:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 8048f59:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048f5d:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
 8048f61:	7e ae                	jle    8048f11 <initRegs+0xdc>
 8048f63:	66 c7 05 80 b1 05 08 	movw   $0x3024,0x805b180
 8048f6a:	24 30 
 8048f6c:	c6 05 82 b1 05 08 00 	movb   $0x0,0x805b182
 8048f73:	c7 05 70 b3 05 08 24 	movl   $0x617224,0x805b370
 8048f7a:	72 61 00 
 8048f7d:	c7 05 40 b3 05 08 24 	movl   $0x616724,0x805b340
 8048f84:	67 61 00 
 8048f87:	c7 05 50 b3 05 08 24 	movl   $0x707324,0x805b350
 8048f8e:	73 70 00 
 8048f91:	c7 05 60 b3 05 08 24 	movl   $0x706624,0x805b360
 8048f98:	66 70 00 
 8048f9b:	90                   	nop
 8048f9c:	c9                   	leave  
 8048f9d:	c3                   	ret    

08048f9e <add_var>:
 8048f9e:	55                   	push   %ebp
 8048f9f:	89 e5                	mov    %esp,%ebp
 8048fa1:	a1 0c b1 05 08       	mov    0x805b10c,%eax
 8048fa6:	85 c0                	test   %eax,%eax
 8048fa8:	75 14                	jne    8048fbe <add_var+0x20>
 8048faa:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fad:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 8048fb4:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fb7:	a3 0c b1 05 08       	mov    %eax,0x805b10c
 8048fbc:	eb 14                	jmp    8048fd2 <add_var+0x34>
 8048fbe:	8b 15 0c b1 05 08    	mov    0x805b10c,%edx
 8048fc4:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fc7:	89 50 0c             	mov    %edx,0xc(%eax)
 8048fca:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fcd:	a3 0c b1 05 08       	mov    %eax,0x805b10c
 8048fd2:	90                   	nop
 8048fd3:	5d                   	pop    %ebp
 8048fd4:	c3                   	ret    

08048fd5 <get_var>:
 8048fd5:	55                   	push   %ebp
 8048fd6:	89 e5                	mov    %esp,%ebp
 8048fd8:	83 ec 18             	sub    $0x18,%esp
 8048fdb:	a1 0c b1 05 08       	mov    0x805b10c,%eax
 8048fe0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048fe3:	eb 22                	jmp    8049007 <get_var+0x32>
 8048fe5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048fe8:	8b 00                	mov    (%eax),%eax
 8048fea:	83 ec 08             	sub    $0x8,%esp
 8048fed:	50                   	push   %eax
 8048fee:	ff 75 08             	pushl  0x8(%ebp)
 8048ff1:	e8 8f 45 00 00       	call   804d585 <compareOperand>
 8048ff6:	83 c4 10             	add    $0x10,%esp
 8048ff9:	83 f8 01             	cmp    $0x1,%eax
 8048ffc:	74 11                	je     804900f <get_var+0x3a>
 8048ffe:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049001:	8b 40 0c             	mov    0xc(%eax),%eax
 8049004:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049007:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804900b:	75 d8                	jne    8048fe5 <get_var+0x10>
 804900d:	eb 01                	jmp    8049010 <get_var+0x3b>
 804900f:	90                   	nop
 8049010:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049013:	c9                   	leave  
 8049014:	c3                   	ret    

08049015 <alloc_var>:
 8049015:	55                   	push   %ebp
 8049016:	89 e5                	mov    %esp,%ebp
 8049018:	83 ec 18             	sub    $0x18,%esp
 804901b:	83 ec 0c             	sub    $0xc,%esp
 804901e:	6a 10                	push   $0x10
 8049020:	e8 7b f8 ff ff       	call   80488a0 <malloc@plt>
 8049025:	83 c4 10             	add    $0x10,%esp
 8049028:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804902b:	83 ec 04             	sub    $0x4,%esp
 804902e:	6a 10                	push   $0x10
 8049030:	6a 00                	push   $0x0
 8049032:	ff 75 f4             	pushl  -0xc(%ebp)
 8049035:	e8 e6 f8 ff ff       	call   8048920 <memset@plt>
 804903a:	83 c4 10             	add    $0x10,%esp
 804903d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049040:	8b 55 08             	mov    0x8(%ebp),%edx
 8049043:	89 10                	mov    %edx,(%eax)
 8049045:	a1 10 b1 05 08       	mov    0x805b110,%eax
 804904a:	83 e8 04             	sub    $0x4,%eax
 804904d:	a3 10 b1 05 08       	mov    %eax,0x805b110
 8049052:	8b 15 10 b1 05 08    	mov    0x805b110,%edx
 8049058:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804905b:	89 50 08             	mov    %edx,0x8(%eax)
 804905e:	83 ec 0c             	sub    $0xc,%esp
 8049061:	ff 75 f4             	pushl  -0xc(%ebp)
 8049064:	e8 35 ff ff ff       	call   8048f9e <add_var>
 8049069:	83 c4 10             	add    $0x10,%esp
 804906c:	8b 45 08             	mov    0x8(%ebp),%eax
 804906f:	8b 00                	mov    (%eax),%eax
 8049071:	85 c0                	test   %eax,%eax
 8049073:	75 20                	jne    8049095 <alloc_var+0x80>
 8049075:	8b 45 08             	mov    0x8(%ebp),%eax
 8049078:	8b 50 04             	mov    0x4(%eax),%edx
 804907b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804907e:	8b 40 08             	mov    0x8(%eax),%eax
 8049081:	83 ec 04             	sub    $0x4,%esp
 8049084:	52                   	push   %edx
 8049085:	50                   	push   %eax
 8049086:	68 0c 58 05 08       	push   $0x805580c
 804908b:	e8 3c fd ff ff       	call   8048dcc <printMips>
 8049090:	83 c4 10             	add    $0x10,%esp
 8049093:	eb 41                	jmp    80490d6 <alloc_var+0xc1>
 8049095:	8b 45 08             	mov    0x8(%ebp),%eax
 8049098:	8b 00                	mov    (%eax),%eax
 804909a:	83 f8 03             	cmp    $0x3,%eax
 804909d:	75 20                	jne    80490bf <alloc_var+0xaa>
 804909f:	8b 45 08             	mov    0x8(%ebp),%eax
 80490a2:	8b 50 04             	mov    0x4(%eax),%edx
 80490a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490a8:	8b 40 08             	mov    0x8(%eax),%eax
 80490ab:	83 ec 04             	sub    $0x4,%esp
 80490ae:	52                   	push   %edx
 80490af:	50                   	push   %eax
 80490b0:	68 38 58 05 08       	push   $0x8055838
 80490b5:	e8 12 fd ff ff       	call   8048dcc <printMips>
 80490ba:	83 c4 10             	add    $0x10,%esp
 80490bd:	eb 17                	jmp    80490d6 <alloc_var+0xc1>
 80490bf:	8b 45 08             	mov    0x8(%ebp),%eax
 80490c2:	8b 40 04             	mov    0x4(%eax),%eax
 80490c5:	83 ec 08             	sub    $0x8,%esp
 80490c8:	50                   	push   %eax
 80490c9:	68 68 58 05 08       	push   $0x8055868
 80490ce:	e8 f9 fc ff ff       	call   8048dcc <printMips>
 80490d3:	83 c4 10             	add    $0x10,%esp
 80490d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490d9:	c9                   	leave  
 80490da:	c3                   	ret    

080490db <alloc_array>:
 80490db:	55                   	push   %ebp
 80490dc:	89 e5                	mov    %esp,%ebp
 80490de:	83 ec 18             	sub    $0x18,%esp
 80490e1:	83 ec 0c             	sub    $0xc,%esp
 80490e4:	6a 10                	push   $0x10
 80490e6:	e8 b5 f7 ff ff       	call   80488a0 <malloc@plt>
 80490eb:	83 c4 10             	add    $0x10,%esp
 80490ee:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490f1:	83 ec 04             	sub    $0x4,%esp
 80490f4:	6a 10                	push   $0x10
 80490f6:	6a 00                	push   $0x0
 80490f8:	ff 75 f4             	pushl  -0xc(%ebp)
 80490fb:	e8 20 f8 ff ff       	call   8048920 <memset@plt>
 8049100:	83 c4 10             	add    $0x10,%esp
 8049103:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049106:	8b 55 08             	mov    0x8(%ebp),%edx
 8049109:	89 10                	mov    %edx,(%eax)
 804910b:	a1 10 b1 05 08       	mov    0x805b110,%eax
 8049110:	2b 45 0c             	sub    0xc(%ebp),%eax
 8049113:	a3 10 b1 05 08       	mov    %eax,0x805b110
 8049118:	8b 15 10 b1 05 08    	mov    0x805b110,%edx
 804911e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049121:	89 50 08             	mov    %edx,0x8(%eax)
 8049124:	83 ec 0c             	sub    $0xc,%esp
 8049127:	ff 75 f4             	pushl  -0xc(%ebp)
 804912a:	e8 6f fe ff ff       	call   8048f9e <add_var>
 804912f:	83 c4 10             	add    $0x10,%esp
 8049132:	8b 45 08             	mov    0x8(%ebp),%eax
 8049135:	8b 40 04             	mov    0x4(%eax),%eax
 8049138:	83 ec 04             	sub    $0x4,%esp
 804913b:	50                   	push   %eax
 804913c:	ff 75 0c             	pushl  0xc(%ebp)
 804913f:	68 8c 58 05 08       	push   $0x805588c
 8049144:	e8 83 fc ff ff       	call   8048dcc <printMips>
 8049149:	83 c4 10             	add    $0x10,%esp
 804914c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804914f:	c9                   	leave  
 8049150:	c3                   	ret    

08049151 <clear_reg>:
 8049151:	55                   	push   %ebp
 8049152:	89 e5                	mov    %esp,%ebp
 8049154:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049158:	74 2d                	je     8049187 <clear_reg+0x36>
 804915a:	8b 45 08             	mov    0x8(%ebp),%eax
 804915d:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
 8049164:	8b 45 08             	mov    0x8(%ebp),%eax
 8049167:	8b 40 04             	mov    0x4(%eax),%eax
 804916a:	85 c0                	test   %eax,%eax
 804916c:	74 0d                	je     804917b <clear_reg+0x2a>
 804916e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049171:	8b 40 04             	mov    0x4(%eax),%eax
 8049174:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804917b:	8b 45 08             	mov    0x8(%ebp),%eax
 804917e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049185:	eb 01                	jmp    8049188 <clear_reg+0x37>
 8049187:	90                   	nop
 8049188:	5d                   	pop    %ebp
 8049189:	c3                   	ret    

0804918a <spill_reg>:
 804918a:	55                   	push   %ebp
 804918b:	89 e5                	mov    %esp,%ebp
 804918d:	83 ec 18             	sub    $0x18,%esp
 8049190:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049194:	74 6b                	je     8049201 <spill_reg+0x77>
 8049196:	8b 45 08             	mov    0x8(%ebp),%eax
 8049199:	8b 40 04             	mov    0x4(%eax),%eax
 804919c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804919f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80491a3:	74 4c                	je     80491f1 <spill_reg+0x67>
 80491a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80491a8:	8b 00                	mov    (%eax),%eax
 80491aa:	8b 00                	mov    (%eax),%eax
 80491ac:	85 c0                	test   %eax,%eax
 80491ae:	74 0c                	je     80491bc <spill_reg+0x32>
 80491b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80491b3:	8b 00                	mov    (%eax),%eax
 80491b5:	8b 00                	mov    (%eax),%eax
 80491b7:	83 f8 03             	cmp    $0x3,%eax
 80491ba:	75 1d                	jne    80491d9 <spill_reg+0x4f>
 80491bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80491bf:	8b 50 08             	mov    0x8(%eax),%edx
 80491c2:	8b 45 08             	mov    0x8(%ebp),%eax
 80491c5:	83 ec 04             	sub    $0x4,%esp
 80491c8:	52                   	push   %edx
 80491c9:	50                   	push   %eax
 80491ca:	68 b3 58 05 08       	push   $0x80558b3
 80491cf:	e8 f8 fb ff ff       	call   8048dcc <printMips>
 80491d4:	83 c4 10             	add    $0x10,%esp
 80491d7:	eb 18                	jmp    80491f1 <spill_reg+0x67>
 80491d9:	8b 15 04 b1 05 08    	mov    0x805b104,%edx
 80491df:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80491e2:	8b 00                	mov    (%eax),%eax
 80491e4:	83 ec 08             	sub    $0x8,%esp
 80491e7:	52                   	push   %edx
 80491e8:	50                   	push   %eax
 80491e9:	e8 36 38 00 00       	call   804ca24 <printOperand>
 80491ee:	83 c4 10             	add    $0x10,%esp
 80491f1:	83 ec 0c             	sub    $0xc,%esp
 80491f4:	ff 75 08             	pushl  0x8(%ebp)
 80491f7:	e8 55 ff ff ff       	call   8049151 <clear_reg>
 80491fc:	83 c4 10             	add    $0x10,%esp
 80491ff:	eb 01                	jmp    8049202 <spill_reg+0x78>
 8049201:	90                   	nop
 8049202:	c9                   	leave  
 8049203:	c3                   	ret    

08049204 <spill_allReg>:
 8049204:	55                   	push   %ebp
 8049205:	89 e5                	mov    %esp,%ebp
 8049207:	83 ec 18             	sub    $0x18,%esp
 804920a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049211:	eb 1e                	jmp    8049231 <spill_allReg+0x2d>
 8049213:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049216:	83 c0 08             	add    $0x8,%eax
 8049219:	c1 e0 04             	shl    $0x4,%eax
 804921c:	05 80 b1 05 08       	add    $0x805b180,%eax
 8049221:	83 ec 0c             	sub    $0xc,%esp
 8049224:	50                   	push   %eax
 8049225:	e8 60 ff ff ff       	call   804918a <spill_reg>
 804922a:	83 c4 10             	add    $0x10,%esp
 804922d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049231:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
 8049235:	7e dc                	jle    8049213 <spill_allReg+0xf>
 8049237:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804923e:	eb 1e                	jmp    804925e <spill_allReg+0x5a>
 8049240:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049243:	83 c0 12             	add    $0x12,%eax
 8049246:	c1 e0 04             	shl    $0x4,%eax
 8049249:	05 80 b1 05 08       	add    $0x805b180,%eax
 804924e:	83 ec 0c             	sub    $0xc,%esp
 8049251:	50                   	push   %eax
 8049252:	e8 33 ff ff ff       	call   804918a <spill_reg>
 8049257:	83 c4 10             	add    $0x10,%esp
 804925a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804925e:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
 8049262:	7e dc                	jle    8049240 <spill_allReg+0x3c>
 8049264:	90                   	nop
 8049265:	c9                   	leave  
 8049266:	c3                   	ret    

08049267 <free_cReg>:
 8049267:	55                   	push   %ebp
 8049268:	89 e5                	mov    %esp,%ebp
 804926a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804926e:	74 2e                	je     804929e <free_cReg+0x37>
 8049270:	8b 45 08             	mov    0x8(%ebp),%eax
 8049273:	8b 40 04             	mov    0x4(%eax),%eax
 8049276:	85 c0                	test   %eax,%eax
 8049278:	74 19                	je     8049293 <free_cReg+0x2c>
 804927a:	8b 45 08             	mov    0x8(%ebp),%eax
 804927d:	8b 40 04             	mov    0x4(%eax),%eax
 8049280:	85 c0                	test   %eax,%eax
 8049282:	74 1a                	je     804929e <free_cReg+0x37>
 8049284:	8b 45 08             	mov    0x8(%ebp),%eax
 8049287:	8b 40 04             	mov    0x4(%eax),%eax
 804928a:	8b 00                	mov    (%eax),%eax
 804928c:	8b 00                	mov    (%eax),%eax
 804928e:	83 f8 01             	cmp    $0x1,%eax
 8049291:	75 0b                	jne    804929e <free_cReg+0x37>
 8049293:	ff 75 08             	pushl  0x8(%ebp)
 8049296:	e8 b6 fe ff ff       	call   8049151 <clear_reg>
 804929b:	83 c4 04             	add    $0x4,%esp
 804929e:	90                   	nop
 804929f:	c9                   	leave  
 80492a0:	c3                   	ret    

080492a1 <resetRegs>:
 80492a1:	55                   	push   %ebp
 80492a2:	89 e5                	mov    %esp,%ebp
 80492a4:	83 ec 10             	sub    $0x10,%esp
 80492a7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80492ae:	eb 2c                	jmp    80492dc <resetRegs+0x3b>
 80492b0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80492b3:	83 c0 08             	add    $0x8,%eax
 80492b6:	c1 e0 04             	shl    $0x4,%eax
 80492b9:	05 84 b1 05 08       	add    $0x805b184,%eax
 80492be:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80492c4:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80492c7:	83 c0 08             	add    $0x8,%eax
 80492ca:	c1 e0 04             	shl    $0x4,%eax
 80492cd:	05 8c b1 05 08       	add    $0x805b18c,%eax
 80492d2:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 80492d8:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 80492dc:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
 80492e0:	7e ce                	jle    80492b0 <resetRegs+0xf>
 80492e2:	90                   	nop
 80492e3:	c9                   	leave  
 80492e4:	c3                   	ret    

080492e5 <clearVarList>:
 80492e5:	55                   	push   %ebp
 80492e6:	89 e5                	mov    %esp,%ebp
 80492e8:	83 ec 18             	sub    $0x18,%esp
 80492eb:	eb 23                	jmp    8049310 <clearVarList+0x2b>
 80492ed:	a1 0c b1 05 08       	mov    0x805b10c,%eax
 80492f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80492f5:	a1 0c b1 05 08       	mov    0x805b10c,%eax
 80492fa:	8b 40 0c             	mov    0xc(%eax),%eax
 80492fd:	a3 0c b1 05 08       	mov    %eax,0x805b10c
 8049302:	83 ec 0c             	sub    $0xc,%esp
 8049305:	ff 75 f4             	pushl  -0xc(%ebp)
 8049308:	e8 e3 f4 ff ff       	call   80487f0 <free@plt>
 804930d:	83 c4 10             	add    $0x10,%esp
 8049310:	a1 0c b1 05 08       	mov    0x805b10c,%eax
 8049315:	85 c0                	test   %eax,%eax
 8049317:	75 d4                	jne    80492ed <clearVarList+0x8>
 8049319:	90                   	nop
 804931a:	c9                   	leave  
 804931b:	c3                   	ret    

0804931c <alloc_reg>:
 804931c:	55                   	push   %ebp
 804931d:	89 e5                	mov    %esp,%ebp
 804931f:	83 ec 18             	sub    $0x18,%esp
 8049322:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8049329:	eb 57                	jmp    8049382 <alloc_reg+0x66>
 804932b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804932e:	83 c0 08             	add    $0x8,%eax
 8049331:	c1 e0 04             	shl    $0x4,%eax
 8049334:	05 8c b1 05 08       	add    $0x805b18c,%eax
 8049339:	8b 00                	mov    (%eax),%eax
 804933b:	85 c0                	test   %eax,%eax
 804933d:	75 06                	jne    8049345 <alloc_reg+0x29>
 804933f:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 8049343:	eb 3d                	jmp    8049382 <alloc_reg+0x66>
 8049345:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049348:	83 c0 08             	add    $0x8,%eax
 804934b:	c1 e0 04             	shl    $0x4,%eax
 804934e:	05 8c b1 05 08       	add    $0x805b18c,%eax
 8049353:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049359:	a1 14 b1 05 08       	mov    0x805b114,%eax
 804935e:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8049361:	83 c2 08             	add    $0x8,%edx
 8049364:	c1 e2 04             	shl    $0x4,%edx
 8049367:	81 c2 88 b1 05 08    	add    $0x805b188,%edx
 804936d:	89 02                	mov    %eax,(%edx)
 804936f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049372:	83 c0 08             	add    $0x8,%eax
 8049375:	c1 e0 04             	shl    $0x4,%eax
 8049378:	05 80 b1 05 08       	add    $0x805b180,%eax
 804937d:	e9 20 01 00 00       	jmp    80494a2 <alloc_reg+0x186>
 8049382:	83 7d ec 09          	cmpl   $0x9,-0x14(%ebp)
 8049386:	7e a3                	jle    804932b <alloc_reg+0xf>
 8049388:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804938f:	eb 57                	jmp    80493e8 <alloc_reg+0xcc>
 8049391:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049394:	83 c0 12             	add    $0x12,%eax
 8049397:	c1 e0 04             	shl    $0x4,%eax
 804939a:	05 8c b1 05 08       	add    $0x805b18c,%eax
 804939f:	8b 00                	mov    (%eax),%eax
 80493a1:	85 c0                	test   %eax,%eax
 80493a3:	75 06                	jne    80493ab <alloc_reg+0x8f>
 80493a5:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 80493a9:	eb 3d                	jmp    80493e8 <alloc_reg+0xcc>
 80493ab:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80493ae:	83 c0 12             	add    $0x12,%eax
 80493b1:	c1 e0 04             	shl    $0x4,%eax
 80493b4:	05 8c b1 05 08       	add    $0x805b18c,%eax
 80493b9:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80493bf:	a1 14 b1 05 08       	mov    0x805b114,%eax
 80493c4:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80493c7:	83 c2 12             	add    $0x12,%edx
 80493ca:	c1 e2 04             	shl    $0x4,%edx
 80493cd:	81 c2 88 b1 05 08    	add    $0x805b188,%edx
 80493d3:	89 02                	mov    %eax,(%edx)
 80493d5:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80493d8:	83 c0 12             	add    $0x12,%eax
 80493db:	c1 e0 04             	shl    $0x4,%eax
 80493de:	05 80 b1 05 08       	add    $0x805b180,%eax
 80493e3:	e9 ba 00 00 00       	jmp    80494a2 <alloc_reg+0x186>
 80493e8:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
 80493ec:	7e a3                	jle    8049391 <alloc_reg+0x75>
 80493ee:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80493f5:	c7 45 f4 ff ff ff 7f 	movl   $0x7fffffff,-0xc(%ebp)
 80493fc:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8049403:	eb 32                	jmp    8049437 <alloc_reg+0x11b>
 8049405:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049408:	83 c0 08             	add    $0x8,%eax
 804940b:	c1 e0 04             	shl    $0x4,%eax
 804940e:	05 88 b1 05 08       	add    $0x805b188,%eax
 8049413:	8b 00                	mov    (%eax),%eax
 8049415:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8049418:	7d 19                	jge    8049433 <alloc_reg+0x117>
 804941a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804941d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049420:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049423:	83 c0 08             	add    $0x8,%eax
 8049426:	c1 e0 04             	shl    $0x4,%eax
 8049429:	05 88 b1 05 08       	add    $0x805b188,%eax
 804942e:	8b 00                	mov    (%eax),%eax
 8049430:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049433:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 8049437:	83 7d ec 09          	cmpl   $0x9,-0x14(%ebp)
 804943b:	7e c8                	jle    8049405 <alloc_reg+0xe9>
 804943d:	83 ec 08             	sub    $0x8,%esp
 8049440:	ff 75 f0             	pushl  -0x10(%ebp)
 8049443:	68 cc 58 05 08       	push   $0x80558cc
 8049448:	e8 7f f9 ff ff       	call   8048dcc <printMips>
 804944d:	83 c4 10             	add    $0x10,%esp
 8049450:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049453:	83 c0 08             	add    $0x8,%eax
 8049456:	c1 e0 04             	shl    $0x4,%eax
 8049459:	05 80 b1 05 08       	add    $0x805b180,%eax
 804945e:	83 ec 0c             	sub    $0xc,%esp
 8049461:	50                   	push   %eax
 8049462:	e8 23 fd ff ff       	call   804918a <spill_reg>
 8049467:	83 c4 10             	add    $0x10,%esp
 804946a:	a1 14 b1 05 08       	mov    0x805b114,%eax
 804946f:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049472:	83 c2 08             	add    $0x8,%edx
 8049475:	c1 e2 04             	shl    $0x4,%edx
 8049478:	81 c2 88 b1 05 08    	add    $0x805b188,%edx
 804947e:	89 02                	mov    %eax,(%edx)
 8049480:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049483:	83 c0 08             	add    $0x8,%eax
 8049486:	c1 e0 04             	shl    $0x4,%eax
 8049489:	05 8c b1 05 08       	add    $0x805b18c,%eax
 804948e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049494:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049497:	83 c0 08             	add    $0x8,%eax
 804949a:	c1 e0 04             	shl    $0x4,%eax
 804949d:	05 80 b1 05 08       	add    $0x805b180,%eax
 80494a2:	c9                   	leave  
 80494a3:	c3                   	ret    

080494a4 <ensure>:
 80494a4:	55                   	push   %ebp
 80494a5:	89 e5                	mov    %esp,%ebp
 80494a7:	83 ec 18             	sub    $0x18,%esp
 80494aa:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80494b1:	8b 45 08             	mov    0x8(%ebp),%eax
 80494b4:	8b 00                	mov    (%eax),%eax
 80494b6:	83 f8 01             	cmp    $0x1,%eax
 80494b9:	75 47                	jne    8049502 <ensure+0x5e>
 80494bb:	8b 45 08             	mov    0x8(%ebp),%eax
 80494be:	8b 40 04             	mov    0x4(%eax),%eax
 80494c1:	85 c0                	test   %eax,%eax
 80494c3:	75 0c                	jne    80494d1 <ensure+0x2d>
 80494c5:	c7 45 f0 80 b1 05 08 	movl   $0x805b180,-0x10(%ebp)
 80494cc:	e9 5c 01 00 00       	jmp    804962d <ensure+0x189>
 80494d1:	83 ec 0c             	sub    $0xc,%esp
 80494d4:	ff 75 08             	pushl  0x8(%ebp)
 80494d7:	e8 40 fe ff ff       	call   804931c <alloc_reg>
 80494dc:	83 c4 10             	add    $0x10,%esp
 80494df:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80494e2:	8b 45 08             	mov    0x8(%ebp),%eax
 80494e5:	8b 50 04             	mov    0x4(%eax),%edx
 80494e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80494eb:	83 ec 04             	sub    $0x4,%esp
 80494ee:	52                   	push   %edx
 80494ef:	50                   	push   %eax
 80494f0:	68 d8 58 05 08       	push   $0x80558d8
 80494f5:	e8 d2 f8 ff ff       	call   8048dcc <printMips>
 80494fa:	83 c4 10             	add    $0x10,%esp
 80494fd:	e9 2b 01 00 00       	jmp    804962d <ensure+0x189>
 8049502:	8b 45 08             	mov    0x8(%ebp),%eax
 8049505:	8b 00                	mov    (%eax),%eax
 8049507:	85 c0                	test   %eax,%eax
 8049509:	74 0e                	je     8049519 <ensure+0x75>
 804950b:	8b 45 08             	mov    0x8(%ebp),%eax
 804950e:	8b 00                	mov    (%eax),%eax
 8049510:	83 f8 03             	cmp    $0x3,%eax
 8049513:	0f 85 a5 00 00 00    	jne    80495be <ensure+0x11a>
 8049519:	83 ec 0c             	sub    $0xc,%esp
 804951c:	ff 75 08             	pushl  0x8(%ebp)
 804951f:	e8 b1 fa ff ff       	call   8048fd5 <get_var>
 8049524:	83 c4 10             	add    $0x10,%esp
 8049527:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804952a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804952e:	75 39                	jne    8049569 <ensure+0xc5>
 8049530:	83 ec 0c             	sub    $0xc,%esp
 8049533:	ff 75 08             	pushl  0x8(%ebp)
 8049536:	e8 da fa ff ff       	call   8049015 <alloc_var>
 804953b:	83 c4 10             	add    $0x10,%esp
 804953e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049541:	83 ec 0c             	sub    $0xc,%esp
 8049544:	ff 75 08             	pushl  0x8(%ebp)
 8049547:	e8 d0 fd ff ff       	call   804931c <alloc_reg>
 804954c:	83 c4 10             	add    $0x10,%esp
 804954f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049552:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049555:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049558:	89 50 04             	mov    %edx,0x4(%eax)
 804955b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804955e:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049561:	89 50 04             	mov    %edx,0x4(%eax)
 8049564:	e9 c4 00 00 00       	jmp    804962d <ensure+0x189>
 8049569:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804956c:	8b 40 04             	mov    0x4(%eax),%eax
 804956f:	85 c0                	test   %eax,%eax
 8049571:	75 40                	jne    80495b3 <ensure+0x10f>
 8049573:	83 ec 0c             	sub    $0xc,%esp
 8049576:	ff 75 08             	pushl  0x8(%ebp)
 8049579:	e8 9e fd ff ff       	call   804931c <alloc_reg>
 804957e:	83 c4 10             	add    $0x10,%esp
 8049581:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049584:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049587:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804958a:	89 50 04             	mov    %edx,0x4(%eax)
 804958d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049590:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049593:	89 50 04             	mov    %edx,0x4(%eax)
 8049596:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049599:	8b 50 08             	mov    0x8(%eax),%edx
 804959c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804959f:	83 ec 04             	sub    $0x4,%esp
 80495a2:	52                   	push   %edx
 80495a3:	50                   	push   %eax
 80495a4:	68 e4 58 05 08       	push   $0x80558e4
 80495a9:	e8 1e f8 ff ff       	call   8048dcc <printMips>
 80495ae:	83 c4 10             	add    $0x10,%esp
 80495b1:	eb 7a                	jmp    804962d <ensure+0x189>
 80495b3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80495b6:	8b 40 04             	mov    0x4(%eax),%eax
 80495b9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80495bc:	eb 6f                	jmp    804962d <ensure+0x189>
 80495be:	8b 45 08             	mov    0x8(%ebp),%eax
 80495c1:	8b 00                	mov    (%eax),%eax
 80495c3:	83 f8 05             	cmp    $0x5,%eax
 80495c6:	75 17                	jne    80495df <ensure+0x13b>
 80495c8:	8b 45 08             	mov    0x8(%ebp),%eax
 80495cb:	8b 40 04             	mov    0x4(%eax),%eax
 80495ce:	83 ec 0c             	sub    $0xc,%esp
 80495d1:	50                   	push   %eax
 80495d2:	e8 5b 00 00 00       	call   8049632 <ensure_ref>
 80495d7:	83 c4 10             	add    $0x10,%esp
 80495da:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80495dd:	eb 4e                	jmp    804962d <ensure+0x189>
 80495df:	8b 45 08             	mov    0x8(%ebp),%eax
 80495e2:	8b 00                	mov    (%eax),%eax
 80495e4:	83 f8 06             	cmp    $0x6,%eax
 80495e7:	75 17                	jne    8049600 <ensure+0x15c>
 80495e9:	8b 45 08             	mov    0x8(%ebp),%eax
 80495ec:	8b 40 04             	mov    0x4(%eax),%eax
 80495ef:	83 ec 0c             	sub    $0xc,%esp
 80495f2:	50                   	push   %eax
 80495f3:	e8 a0 00 00 00       	call   8049698 <ensure_rDeref>
 80495f8:	83 c4 10             	add    $0x10,%esp
 80495fb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80495fe:	eb 2d                	jmp    804962d <ensure+0x189>
 8049600:	a1 04 b1 05 08       	mov    0x805b104,%eax
 8049605:	83 ec 08             	sub    $0x8,%esp
 8049608:	50                   	push   %eax
 8049609:	ff 75 08             	pushl  0x8(%ebp)
 804960c:	e8 13 34 00 00       	call   804ca24 <printOperand>
 8049611:	83 c4 10             	add    $0x10,%esp
 8049614:	68 d0 5c 05 08       	push   $0x8055cd0
 8049619:	68 03 01 00 00       	push   $0x103
 804961e:	68 f5 58 05 08       	push   $0x80558f5
 8049623:	68 fc 58 05 08       	push   $0x80558fc
 8049628:	e8 c3 f3 ff ff       	call   80489f0 <__assert_fail@plt>
 804962d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049630:	c9                   	leave  
 8049631:	c3                   	ret    

08049632 <ensure_ref>:
 8049632:	55                   	push   %ebp
 8049633:	89 e5                	mov    %esp,%ebp
 8049635:	83 ec 18             	sub    $0x18,%esp
 8049638:	83 ec 0c             	sub    $0xc,%esp
 804963b:	6a 00                	push   $0x0
 804963d:	e8 da fc ff ff       	call   804931c <alloc_reg>
 8049642:	83 c4 10             	add    $0x10,%esp
 8049645:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049648:	83 ec 0c             	sub    $0xc,%esp
 804964b:	ff 75 08             	pushl  0x8(%ebp)
 804964e:	e8 82 f9 ff ff       	call   8048fd5 <get_var>
 8049653:	83 c4 10             	add    $0x10,%esp
 8049656:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049659:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804965d:	75 19                	jne    8049678 <ensure_ref+0x46>
 804965f:	68 d8 5c 05 08       	push   $0x8055cd8
 8049664:	68 0e 01 00 00       	push   $0x10e
 8049669:	68 f5 58 05 08       	push   $0x80558f5
 804966e:	68 fe 58 05 08       	push   $0x80558fe
 8049673:	e8 78 f3 ff ff       	call   80489f0 <__assert_fail@plt>
 8049678:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804967b:	8b 50 08             	mov    0x8(%eax),%edx
 804967e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049681:	83 ec 04             	sub    $0x4,%esp
 8049684:	52                   	push   %edx
 8049685:	50                   	push   %eax
 8049686:	68 02 59 05 08       	push   $0x8055902
 804968b:	e8 3c f7 ff ff       	call   8048dcc <printMips>
 8049690:	83 c4 10             	add    $0x10,%esp
 8049693:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049696:	c9                   	leave  
 8049697:	c3                   	ret    

08049698 <ensure_rDeref>:
 8049698:	55                   	push   %ebp
 8049699:	89 e5                	mov    %esp,%ebp
 804969b:	83 ec 18             	sub    $0x18,%esp
 804969e:	83 ec 0c             	sub    $0xc,%esp
 80496a1:	6a 00                	push   $0x0
 80496a3:	e8 74 fc ff ff       	call   804931c <alloc_reg>
 80496a8:	83 c4 10             	add    $0x10,%esp
 80496ab:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80496ae:	83 ec 0c             	sub    $0xc,%esp
 80496b1:	ff 75 08             	pushl  0x8(%ebp)
 80496b4:	e8 eb fd ff ff       	call   80494a4 <ensure>
 80496b9:	83 c4 10             	add    $0x10,%esp
 80496bc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80496bf:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80496c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80496c5:	83 ec 04             	sub    $0x4,%esp
 80496c8:	52                   	push   %edx
 80496c9:	50                   	push   %eax
 80496ca:	68 13 59 05 08       	push   $0x8055913
 80496cf:	e8 f8 f6 ff ff       	call   8048dcc <printMips>
 80496d4:	83 c4 10             	add    $0x10,%esp
 80496d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80496da:	c9                   	leave  
 80496db:	c3                   	ret    

080496dc <ensure_lDeref>:
 80496dc:	55                   	push   %ebp
 80496dd:	89 e5                	mov    %esp,%ebp
 80496df:	83 ec 08             	sub    $0x8,%esp
 80496e2:	8b 55 08             	mov    0x8(%ebp),%edx
 80496e5:	8b 45 0c             	mov    0xc(%ebp),%eax
 80496e8:	83 ec 04             	sub    $0x4,%esp
 80496eb:	52                   	push   %edx
 80496ec:	50                   	push   %eax
 80496ed:	68 22 59 05 08       	push   $0x8055922
 80496f2:	e8 d5 f6 ff ff       	call   8048dcc <printMips>
 80496f7:	83 c4 10             	add    $0x10,%esp
 80496fa:	8b 45 08             	mov    0x8(%ebp),%eax
 80496fd:	c9                   	leave  
 80496fe:	c3                   	ret    

080496ff <gen_read_write>:
 80496ff:	55                   	push   %ebp
 8049700:	89 e5                	mov    %esp,%ebp
 8049702:	83 ec 08             	sub    $0x8,%esp
 8049705:	83 ec 0c             	sub    $0xc,%esp
 8049708:	68 31 59 05 08       	push   $0x8055931
 804970d:	e8 ba f6 ff ff       	call   8048dcc <printMips>
 8049712:	83 c4 10             	add    $0x10,%esp
 8049715:	83 ec 0c             	sub    $0xc,%esp
 8049718:	68 38 59 05 08       	push   $0x8055938
 804971d:	e8 aa f6 ff ff       	call   8048dcc <printMips>
 8049722:	83 c4 10             	add    $0x10,%esp
 8049725:	83 ec 0c             	sub    $0xc,%esp
 8049728:	68 5d 59 05 08       	push   $0x805595d
 804972d:	e8 9a f6 ff ff       	call   8048dcc <printMips>
 8049732:	83 c4 10             	add    $0x10,%esp
 8049735:	83 ec 0c             	sub    $0xc,%esp
 8049738:	68 70 59 05 08       	push   $0x8055970
 804973d:	e8 8a f6 ff ff       	call   8048dcc <printMips>
 8049742:	83 c4 10             	add    $0x10,%esp
 8049745:	83 ec 0c             	sub    $0xc,%esp
 8049748:	68 7c 59 05 08       	push   $0x805597c
 804974d:	e8 7a f6 ff ff       	call   8048dcc <printMips>
 8049752:	83 c4 10             	add    $0x10,%esp
 8049755:	83 ec 0c             	sub    $0xc,%esp
 8049758:	68 82 59 05 08       	push   $0x8055982
 804975d:	e8 6a f6 ff ff       	call   8048dcc <printMips>
 8049762:	83 c4 10             	add    $0x10,%esp
 8049765:	83 ec 0c             	sub    $0xc,%esp
 8049768:	68 88 59 05 08       	push   $0x8055988
 804976d:	e8 5a f6 ff ff       	call   8048dcc <printMips>
 8049772:	83 c4 10             	add    $0x10,%esp
 8049775:	83 ec 0c             	sub    $0xc,%esp
 8049778:	68 94 59 05 08       	push   $0x8055994
 804977d:	e8 4a f6 ff ff       	call   8048dcc <printMips>
 8049782:	83 c4 10             	add    $0x10,%esp
 8049785:	83 ec 0c             	sub    $0xc,%esp
 8049788:	68 a6 59 05 08       	push   $0x80559a6
 804978d:	e8 3a f6 ff ff       	call   8048dcc <printMips>
 8049792:	83 c4 10             	add    $0x10,%esp
 8049795:	83 ec 0c             	sub    $0xc,%esp
 8049798:	68 b0 59 05 08       	push   $0x80559b0
 804979d:	e8 2a f6 ff ff       	call   8048dcc <printMips>
 80497a2:	83 c4 10             	add    $0x10,%esp
 80497a5:	83 ec 0c             	sub    $0xc,%esp
 80497a8:	68 a6 59 05 08       	push   $0x80559a6
 80497ad:	e8 1a f6 ff ff       	call   8048dcc <printMips>
 80497b2:	83 c4 10             	add    $0x10,%esp
 80497b5:	83 ec 0c             	sub    $0xc,%esp
 80497b8:	68 bc 59 05 08       	push   $0x80559bc
 80497bd:	e8 0a f6 ff ff       	call   8048dcc <printMips>
 80497c2:	83 c4 10             	add    $0x10,%esp
 80497c5:	83 ec 0c             	sub    $0xc,%esp
 80497c8:	68 c5 59 05 08       	push   $0x80559c5
 80497cd:	e8 fa f5 ff ff       	call   8048dcc <printMips>
 80497d2:	83 c4 10             	add    $0x10,%esp
 80497d5:	83 ec 0c             	sub    $0xc,%esp
 80497d8:	68 cf 59 05 08       	push   $0x80559cf
 80497dd:	e8 ea f5 ff ff       	call   8048dcc <printMips>
 80497e2:	83 c4 10             	add    $0x10,%esp
 80497e5:	83 ec 0c             	sub    $0xc,%esp
 80497e8:	68 a6 59 05 08       	push   $0x80559a6
 80497ed:	e8 da f5 ff ff       	call   8048dcc <printMips>
 80497f2:	83 c4 10             	add    $0x10,%esp
 80497f5:	83 ec 0c             	sub    $0xc,%esp
 80497f8:	68 88 59 05 08       	push   $0x8055988
 80497fd:	e8 ca f5 ff ff       	call   8048dcc <printMips>
 8049802:	83 c4 10             	add    $0x10,%esp
 8049805:	83 ec 0c             	sub    $0xc,%esp
 8049808:	68 db 59 05 08       	push   $0x80559db
 804980d:	e8 ba f5 ff ff       	call   8048dcc <printMips>
 8049812:	83 c4 10             	add    $0x10,%esp
 8049815:	83 ec 0c             	sub    $0xc,%esp
 8049818:	68 a6 59 05 08       	push   $0x80559a6
 804981d:	e8 aa f5 ff ff       	call   8048dcc <printMips>
 8049822:	83 c4 10             	add    $0x10,%esp
 8049825:	83 ec 0c             	sub    $0xc,%esp
 8049828:	68 ea 59 05 08       	push   $0x80559ea
 804982d:	e8 9a f5 ff ff       	call   8048dcc <printMips>
 8049832:	83 c4 10             	add    $0x10,%esp
 8049835:	83 ec 0c             	sub    $0xc,%esp
 8049838:	68 bc 59 05 08       	push   $0x80559bc
 804983d:	e8 8a f5 ff ff       	call   8048dcc <printMips>
 8049842:	83 c4 10             	add    $0x10,%esp
 8049845:	90                   	nop
 8049846:	c9                   	leave  
 8049847:	c3                   	ret    

08049848 <prologue>:
 8049848:	55                   	push   %ebp
 8049849:	89 e5                	mov    %esp,%ebp
 804984b:	83 ec 08             	sub    $0x8,%esp
 804984e:	83 ec 0c             	sub    $0xc,%esp
 8049851:	68 f9 59 05 08       	push   $0x80559f9
 8049856:	e8 71 f5 ff ff       	call   8048dcc <printMips>
 804985b:	83 c4 10             	add    $0x10,%esp
 804985e:	83 ec 0c             	sub    $0xc,%esp
 8049861:	68 0c 5a 05 08       	push   $0x8055a0c
 8049866:	e8 61 f5 ff ff       	call   8048dcc <printMips>
 804986b:	83 c4 10             	add    $0x10,%esp
 804986e:	83 ec 0c             	sub    $0xc,%esp
 8049871:	68 1d 5a 05 08       	push   $0x8055a1d
 8049876:	e8 51 f5 ff ff       	call   8048dcc <printMips>
 804987b:	83 c4 10             	add    $0x10,%esp
 804987e:	83 ec 0c             	sub    $0xc,%esp
 8049881:	68 2e 5a 05 08       	push   $0x8055a2e
 8049886:	e8 41 f5 ff ff       	call   8048dcc <printMips>
 804988b:	83 c4 10             	add    $0x10,%esp
 804988e:	c7 05 10 b1 05 08 00 	movl   $0x0,0x805b110
 8049895:	00 00 00 
 8049898:	90                   	nop
 8049899:	c9                   	leave  
 804989a:	c3                   	ret    

0804989b <epilogue>:
 804989b:	55                   	push   %ebp
 804989c:	89 e5                	mov    %esp,%ebp
 804989e:	83 ec 08             	sub    $0x8,%esp
 80498a1:	83 ec 0c             	sub    $0xc,%esp
 80498a4:	68 42 5a 05 08       	push   $0x8055a42
 80498a9:	e8 1e f5 ff ff       	call   8048dcc <printMips>
 80498ae:	83 c4 10             	add    $0x10,%esp
 80498b1:	83 ec 0c             	sub    $0xc,%esp
 80498b4:	68 56 5a 05 08       	push   $0x8055a56
 80498b9:	e8 0e f5 ff ff       	call   8048dcc <printMips>
 80498be:	83 c4 10             	add    $0x10,%esp
 80498c1:	83 ec 0c             	sub    $0xc,%esp
 80498c4:	68 67 5a 05 08       	push   $0x8055a67
 80498c9:	e8 fe f4 ff ff       	call   8048dcc <printMips>
 80498ce:	83 c4 10             	add    $0x10,%esp
 80498d1:	83 ec 0c             	sub    $0xc,%esp
 80498d4:	68 78 5a 05 08       	push   $0x8055a78
 80498d9:	e8 ee f4 ff ff       	call   8048dcc <printMips>
 80498de:	83 c4 10             	add    $0x10,%esp
 80498e1:	83 ec 0c             	sub    $0xc,%esp
 80498e4:	68 bc 59 05 08       	push   $0x80559bc
 80498e9:	e8 de f4 ff ff       	call   8048dcc <printMips>
 80498ee:	83 c4 10             	add    $0x10,%esp
 80498f1:	90                   	nop
 80498f2:	c9                   	leave  
 80498f3:	c3                   	ret    

080498f4 <generate_mips>:
 80498f4:	55                   	push   %ebp
 80498f5:	89 e5                	mov    %esp,%ebp
 80498f7:	83 ec 58             	sub    $0x58,%esp
 80498fa:	e8 36 f5 ff ff       	call   8048e35 <initRegs>
 80498ff:	a1 04 b1 05 08       	mov    0x805b104,%eax
 8049904:	89 45 cc             	mov    %eax,-0x34(%ebp)
 8049907:	83 ec 0c             	sub    $0xc,%esp
 804990a:	ff 75 cc             	pushl  -0x34(%ebp)
 804990d:	e8 ed fd ff ff       	call   80496ff <gen_read_write>
 8049912:	83 c4 10             	add    $0x10,%esp
 8049915:	8b 45 08             	mov    0x8(%ebp),%eax
 8049918:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804991b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 8049922:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 8049929:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 8049930:	e9 d3 09 00 00       	jmp    804a308 <generate_mips+0xa14>
 8049935:	8b 45 bc             	mov    -0x44(%ebp),%eax
 8049938:	8b 40 04             	mov    0x4(%eax),%eax
 804993b:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804993e:	8b 45 bc             	mov    -0x44(%ebp),%eax
 8049941:	8b 40 08             	mov    0x8(%eax),%eax
 8049944:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049947:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804994a:	8b 40 0c             	mov    0xc(%eax),%eax
 804994d:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8049950:	8b 45 bc             	mov    -0x44(%ebp),%eax
 8049953:	8b 00                	mov    (%eax),%eax
 8049955:	83 f8 17             	cmp    $0x17,%eax
 8049958:	0f 87 84 09 00 00    	ja     804a2e2 <generate_mips+0x9ee>
 804995e:	8b 04 85 70 5c 05 08 	mov    0x8055c70(,%eax,4),%eax
 8049965:	ff e0                	jmp    *%eax
 8049967:	e8 35 f9 ff ff       	call   80492a1 <resetRegs>
 804996c:	e8 74 f9 ff ff       	call   80492e5 <clearVarList>
 8049971:	8b 45 bc             	mov    -0x44(%ebp),%eax
 8049974:	8b 40 08             	mov    0x8(%eax),%eax
 8049977:	8b 40 04             	mov    0x4(%eax),%eax
 804997a:	83 ec 08             	sub    $0x8,%esp
 804997d:	50                   	push   %eax
 804997e:	68 8b 5a 05 08       	push   $0x8055a8b
 8049983:	e8 44 f4 ff ff       	call   8048dcc <printMips>
 8049988:	83 c4 10             	add    $0x10,%esp
 804998b:	e8 b8 fe ff ff       	call   8049848 <prologue>
 8049990:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 8049997:	e9 8d 00 00 00       	jmp    8049a29 <generate_mips+0x135>
 804999c:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804999f:	8b 40 14             	mov    0x14(%eax),%eax
 80499a2:	89 45 bc             	mov    %eax,-0x44(%ebp)
 80499a5:	83 7d c4 03          	cmpl   $0x3,-0x3c(%ebp)
 80499a9:	7f 2c                	jg     80499d7 <generate_mips+0xe3>
 80499ab:	8b 45 bc             	mov    -0x44(%ebp),%eax
 80499ae:	8b 40 08             	mov    0x8(%eax),%eax
 80499b1:	83 ec 0c             	sub    $0xc,%esp
 80499b4:	50                   	push   %eax
 80499b5:	e8 5b f6 ff ff       	call   8049015 <alloc_var>
 80499ba:	83 c4 10             	add    $0x10,%esp
 80499bd:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80499c0:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 80499c3:	83 c0 04             	add    $0x4,%eax
 80499c6:	c1 e0 04             	shl    $0x4,%eax
 80499c9:	8d 90 80 b1 05 08    	lea    0x805b180(%eax),%edx
 80499cf:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80499d2:	89 50 04             	mov    %edx,0x4(%eax)
 80499d5:	eb 4e                	jmp    8049a25 <generate_mips+0x131>
 80499d7:	83 ec 0c             	sub    $0xc,%esp
 80499da:	6a 10                	push   $0x10
 80499dc:	e8 bf ee ff ff       	call   80488a0 <malloc@plt>
 80499e1:	83 c4 10             	add    $0x10,%esp
 80499e4:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80499e7:	83 ec 04             	sub    $0x4,%esp
 80499ea:	6a 10                	push   $0x10
 80499ec:	6a 00                	push   $0x0
 80499ee:	ff 75 e0             	pushl  -0x20(%ebp)
 80499f1:	e8 2a ef ff ff       	call   8048920 <memset@plt>
 80499f6:	83 c4 10             	add    $0x10,%esp
 80499f9:	8b 45 bc             	mov    -0x44(%ebp),%eax
 80499fc:	8b 50 08             	mov    0x8(%eax),%edx
 80499ff:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049a02:	89 10                	mov    %edx,(%eax)
 8049a04:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 8049a07:	83 e8 01             	sub    $0x1,%eax
 8049a0a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049a11:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049a14:	89 50 08             	mov    %edx,0x8(%eax)
 8049a17:	83 ec 0c             	sub    $0xc,%esp
 8049a1a:	ff 75 e0             	pushl  -0x20(%ebp)
 8049a1d:	e8 7c f5 ff ff       	call   8048f9e <add_var>
 8049a22:	83 c4 10             	add    $0x10,%esp
 8049a25:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
 8049a29:	8b 45 bc             	mov    -0x44(%ebp),%eax
 8049a2c:	8b 40 14             	mov    0x14(%eax),%eax
 8049a2f:	85 c0                	test   %eax,%eax
 8049a31:	0f 84 c7 08 00 00    	je     804a2fe <generate_mips+0xa0a>
 8049a37:	8b 45 bc             	mov    -0x44(%ebp),%eax
 8049a3a:	8b 40 14             	mov    0x14(%eax),%eax
 8049a3d:	8b 00                	mov    (%eax),%eax
 8049a3f:	83 f8 08             	cmp    $0x8,%eax
 8049a42:	0f 84 54 ff ff ff    	je     804999c <generate_mips+0xa8>
 8049a48:	e9 b1 08 00 00       	jmp    804a2fe <generate_mips+0xa0a>
 8049a4d:	8b 45 bc             	mov    -0x44(%ebp),%eax
 8049a50:	8b 40 08             	mov    0x8(%eax),%eax
 8049a53:	83 ec 0c             	sub    $0xc,%esp
 8049a56:	50                   	push   %eax
 8049a57:	e8 48 fa ff ff       	call   80494a4 <ensure>
 8049a5c:	83 c4 10             	add    $0x10,%esp
 8049a5f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049a62:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049a65:	83 ec 08             	sub    $0x8,%esp
 8049a68:	50                   	push   %eax
 8049a69:	68 90 5a 05 08       	push   $0x8055a90
 8049a6e:	e8 59 f3 ff ff       	call   8048dcc <printMips>
 8049a73:	83 c4 10             	add    $0x10,%esp
 8049a76:	83 ec 0c             	sub    $0xc,%esp
 8049a79:	68 9f 5a 05 08       	push   $0x8055a9f
 8049a7e:	e8 49 f3 ff ff       	call   8048dcc <printMips>
 8049a83:	83 c4 10             	add    $0x10,%esp
 8049a86:	83 ec 0c             	sub    $0xc,%esp
 8049a89:	68 b3 5a 05 08       	push   $0x8055ab3
 8049a8e:	e8 39 f3 ff ff       	call   8048dcc <printMips>
 8049a93:	83 c4 10             	add    $0x10,%esp
 8049a96:	83 ec 0c             	sub    $0xc,%esp
 8049a99:	68 c4 5a 05 08       	push   $0x8055ac4
 8049a9e:	e8 29 f3 ff ff       	call   8048dcc <printMips>
 8049aa3:	83 c4 10             	add    $0x10,%esp
 8049aa6:	83 ec 0c             	sub    $0xc,%esp
 8049aa9:	68 d0 5a 05 08       	push   $0x8055ad0
 8049aae:	e8 19 f3 ff ff       	call   8048dcc <printMips>
 8049ab3:	83 c4 10             	add    $0x10,%esp
 8049ab6:	83 ec 0c             	sub    $0xc,%esp
 8049ab9:	68 e1 5a 05 08       	push   $0x8055ae1
 8049abe:	e8 09 f3 ff ff       	call   8048dcc <printMips>
 8049ac3:	83 c4 10             	add    $0x10,%esp
 8049ac6:	e9 34 08 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049acb:	83 ec 0c             	sub    $0xc,%esp
 8049ace:	ff 75 d0             	pushl  -0x30(%ebp)
 8049ad1:	e8 ce f9 ff ff       	call   80494a4 <ensure>
 8049ad6:	83 c4 10             	add    $0x10,%esp
 8049ad9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049adc:	83 ec 0c             	sub    $0xc,%esp
 8049adf:	68 9f 5a 05 08       	push   $0x8055a9f
 8049ae4:	e8 e3 f2 ff ff       	call   8048dcc <printMips>
 8049ae9:	83 c4 10             	add    $0x10,%esp
 8049aec:	83 ec 0c             	sub    $0xc,%esp
 8049aef:	68 b3 5a 05 08       	push   $0x8055ab3
 8049af4:	e8 d3 f2 ff ff       	call   8048dcc <printMips>
 8049af9:	83 c4 10             	add    $0x10,%esp
 8049afc:	83 ec 0c             	sub    $0xc,%esp
 8049aff:	68 f4 5a 05 08       	push   $0x8055af4
 8049b04:	e8 c3 f2 ff ff       	call   8048dcc <printMips>
 8049b09:	83 c4 10             	add    $0x10,%esp
 8049b0c:	83 ec 0c             	sub    $0xc,%esp
 8049b0f:	68 d0 5a 05 08       	push   $0x8055ad0
 8049b14:	e8 b3 f2 ff ff       	call   8048dcc <printMips>
 8049b19:	83 c4 10             	add    $0x10,%esp
 8049b1c:	83 ec 0c             	sub    $0xc,%esp
 8049b1f:	68 e1 5a 05 08       	push   $0x8055ae1
 8049b24:	e8 a3 f2 ff ff       	call   8048dcc <printMips>
 8049b29:	83 c4 10             	add    $0x10,%esp
 8049b2c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049b2f:	83 ec 08             	sub    $0x8,%esp
 8049b32:	50                   	push   %eax
 8049b33:	68 ff 5a 05 08       	push   $0x8055aff
 8049b38:	e8 8f f2 ff ff       	call   8048dcc <printMips>
 8049b3d:	83 c4 10             	add    $0x10,%esp
 8049b40:	e9 ba 07 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049b45:	8b 45 bc             	mov    -0x44(%ebp),%eax
 8049b48:	8b 40 08             	mov    0x8(%eax),%eax
 8049b4b:	83 ec 0c             	sub    $0xc,%esp
 8049b4e:	50                   	push   %eax
 8049b4f:	e8 50 f9 ff ff       	call   80494a4 <ensure>
 8049b54:	83 c4 10             	add    $0x10,%esp
 8049b57:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049b5a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049b5d:	83 ec 08             	sub    $0x8,%esp
 8049b60:	50                   	push   %eax
 8049b61:	68 0e 5b 05 08       	push   $0x8055b0e
 8049b66:	e8 61 f2 ff ff       	call   8048dcc <printMips>
 8049b6b:	83 c4 10             	add    $0x10,%esp
 8049b6e:	e8 28 fd ff ff       	call   804989b <epilogue>
 8049b73:	e9 87 07 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049b78:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049b7b:	8b 00                	mov    (%eax),%eax
 8049b7d:	83 f8 06             	cmp    $0x6,%eax
 8049b80:	75 3c                	jne    8049bbe <generate_mips+0x2ca>
 8049b82:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049b85:	8b 40 04             	mov    0x4(%eax),%eax
 8049b88:	83 ec 0c             	sub    $0xc,%esp
 8049b8b:	50                   	push   %eax
 8049b8c:	e8 13 f9 ff ff       	call   80494a4 <ensure>
 8049b91:	83 c4 10             	add    $0x10,%esp
 8049b94:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049b97:	83 ec 0c             	sub    $0xc,%esp
 8049b9a:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049b9d:	e8 02 f9 ff ff       	call   80494a4 <ensure>
 8049ba2:	83 c4 10             	add    $0x10,%esp
 8049ba5:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049ba8:	83 ec 08             	sub    $0x8,%esp
 8049bab:	ff 75 b4             	pushl  -0x4c(%ebp)
 8049bae:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049bb1:	e8 26 fb ff ff       	call   80496dc <ensure_lDeref>
 8049bb6:	83 c4 10             	add    $0x10,%esp
 8049bb9:	e9 41 07 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049bbe:	83 ec 0c             	sub    $0xc,%esp
 8049bc1:	ff 75 d0             	pushl  -0x30(%ebp)
 8049bc4:	e8 db f8 ff ff       	call   80494a4 <ensure>
 8049bc9:	83 c4 10             	add    $0x10,%esp
 8049bcc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049bcf:	83 ec 0c             	sub    $0xc,%esp
 8049bd2:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049bd5:	e8 ca f8 ff ff       	call   80494a4 <ensure>
 8049bda:	83 c4 10             	add    $0x10,%esp
 8049bdd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049be0:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 8049be3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049be6:	83 ec 04             	sub    $0x4,%esp
 8049be9:	52                   	push   %edx
 8049bea:	50                   	push   %eax
 8049beb:	68 1d 5b 05 08       	push   $0x8055b1d
 8049bf0:	e8 d7 f1 ff ff       	call   8048dcc <printMips>
 8049bf5:	83 c4 10             	add    $0x10,%esp
 8049bf8:	83 ec 0c             	sub    $0xc,%esp
 8049bfb:	ff 75 b4             	pushl  -0x4c(%ebp)
 8049bfe:	e8 64 f6 ff ff       	call   8049267 <free_cReg>
 8049c03:	83 c4 10             	add    $0x10,%esp
 8049c06:	e9 f4 06 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049c0b:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049c0e:	8b 00                	mov    (%eax),%eax
 8049c10:	83 f8 06             	cmp    $0x6,%eax
 8049c13:	0f 85 81 00 00 00    	jne    8049c9a <generate_mips+0x3a6>
 8049c19:	83 ec 0c             	sub    $0xc,%esp
 8049c1c:	6a 00                	push   $0x0
 8049c1e:	e8 f9 f6 ff ff       	call   804931c <alloc_reg>
 8049c23:	83 c4 10             	add    $0x10,%esp
 8049c26:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049c29:	83 ec 0c             	sub    $0xc,%esp
 8049c2c:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049c2f:	e8 70 f8 ff ff       	call   80494a4 <ensure>
 8049c34:	83 c4 10             	add    $0x10,%esp
 8049c37:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049c3a:	83 ec 0c             	sub    $0xc,%esp
 8049c3d:	ff 75 d8             	pushl  -0x28(%ebp)
 8049c40:	e8 5f f8 ff ff       	call   80494a4 <ensure>
 8049c45:	83 c4 10             	add    $0x10,%esp
 8049c48:	89 45 b8             	mov    %eax,-0x48(%ebp)
 8049c4b:	8b 4d b8             	mov    -0x48(%ebp),%ecx
 8049c4e:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 8049c51:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049c54:	51                   	push   %ecx
 8049c55:	52                   	push   %edx
 8049c56:	50                   	push   %eax
 8049c57:	68 2b 5b 05 08       	push   $0x8055b2b
 8049c5c:	e8 6b f1 ff ff       	call   8048dcc <printMips>
 8049c61:	83 c4 10             	add    $0x10,%esp
 8049c64:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049c67:	8b 40 04             	mov    0x4(%eax),%eax
 8049c6a:	83 ec 0c             	sub    $0xc,%esp
 8049c6d:	50                   	push   %eax
 8049c6e:	e8 31 f8 ff ff       	call   80494a4 <ensure>
 8049c73:	83 c4 10             	add    $0x10,%esp
 8049c76:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049c79:	83 ec 08             	sub    $0x8,%esp
 8049c7c:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049c7f:	ff 75 e8             	pushl  -0x18(%ebp)
 8049c82:	e8 55 fa ff ff       	call   80496dc <ensure_lDeref>
 8049c87:	83 c4 10             	add    $0x10,%esp
 8049c8a:	83 ec 0c             	sub    $0xc,%esp
 8049c8d:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049c90:	e8 d2 f5 ff ff       	call   8049267 <free_cReg>
 8049c95:	83 c4 10             	add    $0x10,%esp
 8049c98:	eb 4c                	jmp    8049ce6 <generate_mips+0x3f2>
 8049c9a:	83 ec 0c             	sub    $0xc,%esp
 8049c9d:	ff 75 d0             	pushl  -0x30(%ebp)
 8049ca0:	e8 ff f7 ff ff       	call   80494a4 <ensure>
 8049ca5:	83 c4 10             	add    $0x10,%esp
 8049ca8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049cab:	83 ec 0c             	sub    $0xc,%esp
 8049cae:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049cb1:	e8 ee f7 ff ff       	call   80494a4 <ensure>
 8049cb6:	83 c4 10             	add    $0x10,%esp
 8049cb9:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049cbc:	83 ec 0c             	sub    $0xc,%esp
 8049cbf:	ff 75 d8             	pushl  -0x28(%ebp)
 8049cc2:	e8 dd f7 ff ff       	call   80494a4 <ensure>
 8049cc7:	83 c4 10             	add    $0x10,%esp
 8049cca:	89 45 b8             	mov    %eax,-0x48(%ebp)
 8049ccd:	8b 4d b8             	mov    -0x48(%ebp),%ecx
 8049cd0:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 8049cd3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049cd6:	51                   	push   %ecx
 8049cd7:	52                   	push   %edx
 8049cd8:	50                   	push   %eax
 8049cd9:	68 2b 5b 05 08       	push   $0x8055b2b
 8049cde:	e8 e9 f0 ff ff       	call   8048dcc <printMips>
 8049ce3:	83 c4 10             	add    $0x10,%esp
 8049ce6:	83 ec 0c             	sub    $0xc,%esp
 8049ce9:	ff 75 b4             	pushl  -0x4c(%ebp)
 8049cec:	e8 76 f5 ff ff       	call   8049267 <free_cReg>
 8049cf1:	83 c4 10             	add    $0x10,%esp
 8049cf4:	83 ec 0c             	sub    $0xc,%esp
 8049cf7:	ff 75 b8             	pushl  -0x48(%ebp)
 8049cfa:	e8 68 f5 ff ff       	call   8049267 <free_cReg>
 8049cff:	83 c4 10             	add    $0x10,%esp
 8049d02:	e9 f8 05 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049d07:	83 ec 0c             	sub    $0xc,%esp
 8049d0a:	ff 75 d0             	pushl  -0x30(%ebp)
 8049d0d:	e8 92 f7 ff ff       	call   80494a4 <ensure>
 8049d12:	83 c4 10             	add    $0x10,%esp
 8049d15:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049d18:	83 ec 0c             	sub    $0xc,%esp
 8049d1b:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049d1e:	e8 81 f7 ff ff       	call   80494a4 <ensure>
 8049d23:	83 c4 10             	add    $0x10,%esp
 8049d26:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049d29:	83 ec 0c             	sub    $0xc,%esp
 8049d2c:	ff 75 d8             	pushl  -0x28(%ebp)
 8049d2f:	e8 70 f7 ff ff       	call   80494a4 <ensure>
 8049d34:	83 c4 10             	add    $0x10,%esp
 8049d37:	89 45 b8             	mov    %eax,-0x48(%ebp)
 8049d3a:	8b 4d b8             	mov    -0x48(%ebp),%ecx
 8049d3d:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 8049d40:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049d43:	51                   	push   %ecx
 8049d44:	52                   	push   %edx
 8049d45:	50                   	push   %eax
 8049d46:	68 3c 5b 05 08       	push   $0x8055b3c
 8049d4b:	e8 7c f0 ff ff       	call   8048dcc <printMips>
 8049d50:	83 c4 10             	add    $0x10,%esp
 8049d53:	83 ec 0c             	sub    $0xc,%esp
 8049d56:	ff 75 b4             	pushl  -0x4c(%ebp)
 8049d59:	e8 09 f5 ff ff       	call   8049267 <free_cReg>
 8049d5e:	83 c4 10             	add    $0x10,%esp
 8049d61:	83 ec 0c             	sub    $0xc,%esp
 8049d64:	ff 75 b8             	pushl  -0x48(%ebp)
 8049d67:	e8 fb f4 ff ff       	call   8049267 <free_cReg>
 8049d6c:	83 c4 10             	add    $0x10,%esp
 8049d6f:	e9 8b 05 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049d74:	83 ec 0c             	sub    $0xc,%esp
 8049d77:	ff 75 d0             	pushl  -0x30(%ebp)
 8049d7a:	e8 25 f7 ff ff       	call   80494a4 <ensure>
 8049d7f:	83 c4 10             	add    $0x10,%esp
 8049d82:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049d85:	83 ec 0c             	sub    $0xc,%esp
 8049d88:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049d8b:	e8 14 f7 ff ff       	call   80494a4 <ensure>
 8049d90:	83 c4 10             	add    $0x10,%esp
 8049d93:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049d96:	83 ec 0c             	sub    $0xc,%esp
 8049d99:	ff 75 d8             	pushl  -0x28(%ebp)
 8049d9c:	e8 03 f7 ff ff       	call   80494a4 <ensure>
 8049da1:	83 c4 10             	add    $0x10,%esp
 8049da4:	89 45 b8             	mov    %eax,-0x48(%ebp)
 8049da7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
 8049daa:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 8049dad:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049db0:	51                   	push   %ecx
 8049db1:	52                   	push   %edx
 8049db2:	50                   	push   %eax
 8049db3:	68 4d 5b 05 08       	push   $0x8055b4d
 8049db8:	e8 0f f0 ff ff       	call   8048dcc <printMips>
 8049dbd:	83 c4 10             	add    $0x10,%esp
 8049dc0:	83 ec 0c             	sub    $0xc,%esp
 8049dc3:	ff 75 b4             	pushl  -0x4c(%ebp)
 8049dc6:	e8 9c f4 ff ff       	call   8049267 <free_cReg>
 8049dcb:	83 c4 10             	add    $0x10,%esp
 8049dce:	83 ec 0c             	sub    $0xc,%esp
 8049dd1:	ff 75 b8             	pushl  -0x48(%ebp)
 8049dd4:	e8 8e f4 ff ff       	call   8049267 <free_cReg>
 8049dd9:	83 c4 10             	add    $0x10,%esp
 8049ddc:	e9 1e 05 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049de1:	83 ec 0c             	sub    $0xc,%esp
 8049de4:	ff 75 d0             	pushl  -0x30(%ebp)
 8049de7:	e8 b8 f6 ff ff       	call   80494a4 <ensure>
 8049dec:	83 c4 10             	add    $0x10,%esp
 8049def:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049df2:	83 ec 0c             	sub    $0xc,%esp
 8049df5:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049df8:	e8 a7 f6 ff ff       	call   80494a4 <ensure>
 8049dfd:	83 c4 10             	add    $0x10,%esp
 8049e00:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049e03:	83 ec 0c             	sub    $0xc,%esp
 8049e06:	ff 75 d8             	pushl  -0x28(%ebp)
 8049e09:	e8 96 f6 ff ff       	call   80494a4 <ensure>
 8049e0e:	83 c4 10             	add    $0x10,%esp
 8049e11:	89 45 b8             	mov    %eax,-0x48(%ebp)
 8049e14:	8b 55 b8             	mov    -0x48(%ebp),%edx
 8049e17:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 8049e1a:	83 ec 04             	sub    $0x4,%esp
 8049e1d:	52                   	push   %edx
 8049e1e:	50                   	push   %eax
 8049e1f:	68 5e 5b 05 08       	push   $0x8055b5e
 8049e24:	e8 a3 ef ff ff       	call   8048dcc <printMips>
 8049e29:	83 c4 10             	add    $0x10,%esp
 8049e2c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049e2f:	83 ec 08             	sub    $0x8,%esp
 8049e32:	50                   	push   %eax
 8049e33:	68 6b 5b 05 08       	push   $0x8055b6b
 8049e38:	e8 8f ef ff ff       	call   8048dcc <printMips>
 8049e3d:	83 c4 10             	add    $0x10,%esp
 8049e40:	83 ec 0c             	sub    $0xc,%esp
 8049e43:	ff 75 b4             	pushl  -0x4c(%ebp)
 8049e46:	e8 1c f4 ff ff       	call   8049267 <free_cReg>
 8049e4b:	83 c4 10             	add    $0x10,%esp
 8049e4e:	83 ec 0c             	sub    $0xc,%esp
 8049e51:	ff 75 b8             	pushl  -0x48(%ebp)
 8049e54:	e8 0e f4 ff ff       	call   8049267 <free_cReg>
 8049e59:	83 c4 10             	add    $0x10,%esp
 8049e5c:	e9 9e 04 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049e61:	e8 9e f3 ff ff       	call   8049204 <spill_allReg>
 8049e66:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049e69:	8b 40 04             	mov    0x4(%eax),%eax
 8049e6c:	83 ec 08             	sub    $0x8,%esp
 8049e6f:	50                   	push   %eax
 8049e70:	68 75 5b 05 08       	push   $0x8055b75
 8049e75:	e8 52 ef ff ff       	call   8048dcc <printMips>
 8049e7a:	83 c4 10             	add    $0x10,%esp
 8049e7d:	e9 7d 04 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049e82:	e8 7d f3 ff ff       	call   8049204 <spill_allReg>
 8049e87:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049e8a:	8b 40 04             	mov    0x4(%eax),%eax
 8049e8d:	83 ec 08             	sub    $0x8,%esp
 8049e90:	50                   	push   %eax
 8049e91:	68 7e 5b 05 08       	push   $0x8055b7e
 8049e96:	e8 31 ef ff ff       	call   8048dcc <printMips>
 8049e9b:	83 c4 10             	add    $0x10,%esp
 8049e9e:	e9 5c 04 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049ea3:	e8 5c f3 ff ff       	call   8049204 <spill_allReg>
 8049ea8:	83 ec 0c             	sub    $0xc,%esp
 8049eab:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049eae:	e8 f1 f5 ff ff       	call   80494a4 <ensure>
 8049eb3:	83 c4 10             	add    $0x10,%esp
 8049eb6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049eb9:	83 ec 0c             	sub    $0xc,%esp
 8049ebc:	ff 75 d8             	pushl  -0x28(%ebp)
 8049ebf:	e8 e0 f5 ff ff       	call   80494a4 <ensure>
 8049ec4:	83 c4 10             	add    $0x10,%esp
 8049ec7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049eca:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049ecd:	8b 48 04             	mov    0x4(%eax),%ecx
 8049ed0:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 8049ed3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049ed6:	51                   	push   %ecx
 8049ed7:	52                   	push   %edx
 8049ed8:	50                   	push   %eax
 8049ed9:	68 8a 5b 05 08       	push   $0x8055b8a
 8049ede:	e8 e9 ee ff ff       	call   8048dcc <printMips>
 8049ee3:	83 c4 10             	add    $0x10,%esp
 8049ee6:	e9 14 04 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049eeb:	e8 14 f3 ff ff       	call   8049204 <spill_allReg>
 8049ef0:	83 ec 0c             	sub    $0xc,%esp
 8049ef3:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049ef6:	e8 a9 f5 ff ff       	call   80494a4 <ensure>
 8049efb:	83 c4 10             	add    $0x10,%esp
 8049efe:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049f01:	83 ec 0c             	sub    $0xc,%esp
 8049f04:	ff 75 d8             	pushl  -0x28(%ebp)
 8049f07:	e8 98 f5 ff ff       	call   80494a4 <ensure>
 8049f0c:	83 c4 10             	add    $0x10,%esp
 8049f0f:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049f12:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049f15:	8b 48 04             	mov    0x4(%eax),%ecx
 8049f18:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 8049f1b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049f1e:	51                   	push   %ecx
 8049f1f:	52                   	push   %edx
 8049f20:	50                   	push   %eax
 8049f21:	68 a0 5b 05 08       	push   $0x8055ba0
 8049f26:	e8 a1 ee ff ff       	call   8048dcc <printMips>
 8049f2b:	83 c4 10             	add    $0x10,%esp
 8049f2e:	83 ec 0c             	sub    $0xc,%esp
 8049f31:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049f34:	e8 2e f3 ff ff       	call   8049267 <free_cReg>
 8049f39:	83 c4 10             	add    $0x10,%esp
 8049f3c:	83 ec 0c             	sub    $0xc,%esp
 8049f3f:	ff 75 b4             	pushl  -0x4c(%ebp)
 8049f42:	e8 20 f3 ff ff       	call   8049267 <free_cReg>
 8049f47:	83 c4 10             	add    $0x10,%esp
 8049f4a:	e9 b0 03 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049f4f:	e8 b0 f2 ff ff       	call   8049204 <spill_allReg>
 8049f54:	83 ec 0c             	sub    $0xc,%esp
 8049f57:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049f5a:	e8 45 f5 ff ff       	call   80494a4 <ensure>
 8049f5f:	83 c4 10             	add    $0x10,%esp
 8049f62:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049f65:	83 ec 0c             	sub    $0xc,%esp
 8049f68:	ff 75 d8             	pushl  -0x28(%ebp)
 8049f6b:	e8 34 f5 ff ff       	call   80494a4 <ensure>
 8049f70:	83 c4 10             	add    $0x10,%esp
 8049f73:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049f76:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049f79:	8b 48 04             	mov    0x4(%eax),%ecx
 8049f7c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 8049f7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049f82:	51                   	push   %ecx
 8049f83:	52                   	push   %edx
 8049f84:	50                   	push   %eax
 8049f85:	68 b6 5b 05 08       	push   $0x8055bb6
 8049f8a:	e8 3d ee ff ff       	call   8048dcc <printMips>
 8049f8f:	83 c4 10             	add    $0x10,%esp
 8049f92:	83 ec 0c             	sub    $0xc,%esp
 8049f95:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049f98:	e8 ca f2 ff ff       	call   8049267 <free_cReg>
 8049f9d:	83 c4 10             	add    $0x10,%esp
 8049fa0:	83 ec 0c             	sub    $0xc,%esp
 8049fa3:	ff 75 b4             	pushl  -0x4c(%ebp)
 8049fa6:	e8 bc f2 ff ff       	call   8049267 <free_cReg>
 8049fab:	83 c4 10             	add    $0x10,%esp
 8049fae:	e9 4c 03 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 8049fb3:	e8 4c f2 ff ff       	call   8049204 <spill_allReg>
 8049fb8:	83 ec 0c             	sub    $0xc,%esp
 8049fbb:	ff 75 d4             	pushl  -0x2c(%ebp)
 8049fbe:	e8 e1 f4 ff ff       	call   80494a4 <ensure>
 8049fc3:	83 c4 10             	add    $0x10,%esp
 8049fc6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049fc9:	83 ec 0c             	sub    $0xc,%esp
 8049fcc:	ff 75 d8             	pushl  -0x28(%ebp)
 8049fcf:	e8 d0 f4 ff ff       	call   80494a4 <ensure>
 8049fd4:	83 c4 10             	add    $0x10,%esp
 8049fd7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 8049fda:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049fdd:	8b 48 04             	mov    0x4(%eax),%ecx
 8049fe0:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 8049fe3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049fe6:	51                   	push   %ecx
 8049fe7:	52                   	push   %edx
 8049fe8:	50                   	push   %eax
 8049fe9:	68 cc 5b 05 08       	push   $0x8055bcc
 8049fee:	e8 d9 ed ff ff       	call   8048dcc <printMips>
 8049ff3:	83 c4 10             	add    $0x10,%esp
 8049ff6:	83 ec 0c             	sub    $0xc,%esp
 8049ff9:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049ffc:	e8 66 f2 ff ff       	call   8049267 <free_cReg>
 804a001:	83 c4 10             	add    $0x10,%esp
 804a004:	83 ec 0c             	sub    $0xc,%esp
 804a007:	ff 75 b4             	pushl  -0x4c(%ebp)
 804a00a:	e8 58 f2 ff ff       	call   8049267 <free_cReg>
 804a00f:	83 c4 10             	add    $0x10,%esp
 804a012:	e9 e8 02 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 804a017:	e8 e8 f1 ff ff       	call   8049204 <spill_allReg>
 804a01c:	83 ec 0c             	sub    $0xc,%esp
 804a01f:	ff 75 d4             	pushl  -0x2c(%ebp)
 804a022:	e8 7d f4 ff ff       	call   80494a4 <ensure>
 804a027:	83 c4 10             	add    $0x10,%esp
 804a02a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a02d:	83 ec 0c             	sub    $0xc,%esp
 804a030:	ff 75 d8             	pushl  -0x28(%ebp)
 804a033:	e8 6c f4 ff ff       	call   80494a4 <ensure>
 804a038:	83 c4 10             	add    $0x10,%esp
 804a03b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804a03e:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804a041:	8b 48 04             	mov    0x4(%eax),%ecx
 804a044:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 804a047:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a04a:	51                   	push   %ecx
 804a04b:	52                   	push   %edx
 804a04c:	50                   	push   %eax
 804a04d:	68 e2 5b 05 08       	push   $0x8055be2
 804a052:	e8 75 ed ff ff       	call   8048dcc <printMips>
 804a057:	83 c4 10             	add    $0x10,%esp
 804a05a:	83 ec 0c             	sub    $0xc,%esp
 804a05d:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a060:	e8 02 f2 ff ff       	call   8049267 <free_cReg>
 804a065:	83 c4 10             	add    $0x10,%esp
 804a068:	83 ec 0c             	sub    $0xc,%esp
 804a06b:	ff 75 b4             	pushl  -0x4c(%ebp)
 804a06e:	e8 f4 f1 ff ff       	call   8049267 <free_cReg>
 804a073:	83 c4 10             	add    $0x10,%esp
 804a076:	e9 84 02 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 804a07b:	e8 84 f1 ff ff       	call   8049204 <spill_allReg>
 804a080:	83 ec 0c             	sub    $0xc,%esp
 804a083:	ff 75 d4             	pushl  -0x2c(%ebp)
 804a086:	e8 19 f4 ff ff       	call   80494a4 <ensure>
 804a08b:	83 c4 10             	add    $0x10,%esp
 804a08e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a091:	83 ec 0c             	sub    $0xc,%esp
 804a094:	ff 75 d8             	pushl  -0x28(%ebp)
 804a097:	e8 08 f4 ff ff       	call   80494a4 <ensure>
 804a09c:	83 c4 10             	add    $0x10,%esp
 804a09f:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804a0a2:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804a0a5:	8b 48 04             	mov    0x4(%eax),%ecx
 804a0a8:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 804a0ab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a0ae:	51                   	push   %ecx
 804a0af:	52                   	push   %edx
 804a0b0:	50                   	push   %eax
 804a0b1:	68 f8 5b 05 08       	push   $0x8055bf8
 804a0b6:	e8 11 ed ff ff       	call   8048dcc <printMips>
 804a0bb:	83 c4 10             	add    $0x10,%esp
 804a0be:	83 ec 0c             	sub    $0xc,%esp
 804a0c1:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a0c4:	e8 9e f1 ff ff       	call   8049267 <free_cReg>
 804a0c9:	83 c4 10             	add    $0x10,%esp
 804a0cc:	83 ec 0c             	sub    $0xc,%esp
 804a0cf:	ff 75 b4             	pushl  -0x4c(%ebp)
 804a0d2:	e8 90 f1 ff ff       	call   8049267 <free_cReg>
 804a0d7:	83 c4 10             	add    $0x10,%esp
 804a0da:	e9 20 02 00 00       	jmp    804a2ff <generate_mips+0xa0b>
 804a0df:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 804a0e6:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804a0e9:	8b 40 10             	mov    0x10(%eax),%eax
 804a0ec:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804a0ef:	eb 0d                	jmp    804a0fe <generate_mips+0x80a>
 804a0f1:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
 804a0f5:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804a0f8:	8b 40 14             	mov    0x14(%eax),%eax
 804a0fb:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804a0fe:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
 804a102:	74 0a                	je     804a10e <generate_mips+0x81a>
 804a104:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804a107:	8b 00                	mov    (%eax),%eax
 804a109:	83 f8 0d             	cmp    $0xd,%eax
 804a10c:	74 e3                	je     804a0f1 <generate_mips+0x7fd>
 804a10e:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 804a115:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804a118:	8b 40 10             	mov    0x10(%eax),%eax
 804a11b:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804a11e:	e9 c6 00 00 00       	jmp    804a1e9 <generate_mips+0x8f5>
 804a123:	83 7d c4 03          	cmpl   $0x3,-0x3c(%ebp)
 804a127:	7f 31                	jg     804a15a <generate_mips+0x866>
 804a129:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804a12c:	8b 40 08             	mov    0x8(%eax),%eax
 804a12f:	83 ec 0c             	sub    $0xc,%esp
 804a132:	50                   	push   %eax
 804a133:	e8 6c f3 ff ff       	call   80494a4 <ensure>
 804a138:	83 c4 10             	add    $0x10,%esp
 804a13b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a13e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a141:	83 ec 04             	sub    $0x4,%esp
 804a144:	50                   	push   %eax
 804a145:	ff 75 c4             	pushl  -0x3c(%ebp)
 804a148:	68 0e 5c 05 08       	push   $0x8055c0e
 804a14d:	e8 7a ec ff ff       	call   8048dcc <printMips>
 804a152:	83 c4 10             	add    $0x10,%esp
 804a155:	e9 82 00 00 00       	jmp    804a1dc <generate_mips+0x8e8>
 804a15a:	83 7d c4 04          	cmpl   $0x4,-0x3c(%ebp)
 804a15e:	75 45                	jne    804a1a5 <generate_mips+0x8b1>
 804a160:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804a163:	83 e8 03             	sub    $0x3,%eax
 804a166:	c1 e0 02             	shl    $0x2,%eax
 804a169:	83 ec 08             	sub    $0x8,%esp
 804a16c:	50                   	push   %eax
 804a16d:	68 20 5c 05 08       	push   $0x8055c20
 804a172:	e8 55 ec ff ff       	call   8048dcc <printMips>
 804a177:	83 c4 10             	add    $0x10,%esp
 804a17a:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804a17d:	8b 40 08             	mov    0x8(%eax),%eax
 804a180:	83 ec 0c             	sub    $0xc,%esp
 804a183:	50                   	push   %eax
 804a184:	e8 1b f3 ff ff       	call   80494a4 <ensure>
 804a189:	83 c4 10             	add    $0x10,%esp
 804a18c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a18f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a192:	83 ec 08             	sub    $0x8,%esp
 804a195:	50                   	push   %eax
 804a196:	68 46 5c 05 08       	push   $0x8055c46
 804a19b:	e8 2c ec ff ff       	call   8048dcc <printMips>
 804a1a0:	83 c4 10             	add    $0x10,%esp
 804a1a3:	eb 37                	jmp    804a1dc <generate_mips+0x8e8>
 804a1a5:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804a1a8:	8b 40 08             	mov    0x8(%eax),%eax
 804a1ab:	83 ec 0c             	sub    $0xc,%esp
 804a1ae:	50                   	push   %eax
 804a1af:	e8 f0 f2 ff ff       	call   80494a4 <ensure>
 804a1b4:	83 c4 10             	add    $0x10,%esp
 804a1b7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a1ba:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804a1bd:	83 e8 04             	sub    $0x4,%eax
 804a1c0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804a1c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a1ca:	83 ec 04             	sub    $0x4,%esp
 804a1cd:	52                   	push   %edx
 804a1ce:	50                   	push   %eax
 804a1cf:	68 56 5c 05 08       	push   $0x8055c56
 804a1d4:	e8 f3 eb ff ff       	call   8048dcc <printMips>
 804a1d9:	83 c4 10             	add    $0x10,%esp
 804a1dc:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804a1df:	8b 40 10             	mov    0x10(%eax),%eax
 804a1e2:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804a1e5:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
 804a1e9:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
 804a1ed:	74 0e                	je     804a1fd <generate_mips+0x909>
 804a1ef:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804a1f2:	8b 00                	mov    (%eax),%eax
 804a1f4:	83 f8 0d             	cmp    $0xd,%eax
 804a1f7:	0f 84 26 ff ff ff    	je     804a123 <generate_mips+0x82f>
 804a1fd:	e8 02 f0 ff ff       	call   8049204 <spill_allReg>
 804a202:	83 ec 0c             	sub    $0xc,%esp
 804a205:	68 9f 5a 05 08       	push   $0x8055a9f
 804a20a:	e8 bd eb ff ff       	call   8048dcc <printMips>
 804a20f:	83 c4 10             	add    $0x10,%esp
 804a212:	83 ec 0c             	sub    $0xc,%esp
 804a215:	68 b3 5a 05 08       	push   $0x8055ab3
 804a21a:	e8 ad eb ff ff       	call   8048dcc <printMips>
 804a21f:	83 c4 10             	add    $0x10,%esp
 804a222:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a225:	8b 40 04             	mov    0x4(%eax),%eax
 804a228:	83 ec 08             	sub    $0x8,%esp
 804a22b:	50                   	push   %eax
 804a22c:	68 67 5c 05 08       	push   $0x8055c67
 804a231:	e8 96 eb ff ff       	call   8048dcc <printMips>
 804a236:	83 c4 10             	add    $0x10,%esp
 804a239:	83 ec 0c             	sub    $0xc,%esp
 804a23c:	68 d0 5a 05 08       	push   $0x8055ad0
 804a241:	e8 86 eb ff ff       	call   8048dcc <printMips>
 804a246:	83 c4 10             	add    $0x10,%esp
 804a249:	83 ec 0c             	sub    $0xc,%esp
 804a24c:	68 e1 5a 05 08       	push   $0x8055ae1
 804a251:	e8 76 eb ff ff       	call   8048dcc <printMips>
 804a256:	83 c4 10             	add    $0x10,%esp
 804a259:	83 ec 0c             	sub    $0xc,%esp
 804a25c:	ff 75 d0             	pushl  -0x30(%ebp)
 804a25f:	e8 40 f2 ff ff       	call   80494a4 <ensure>
 804a264:	83 c4 10             	add    $0x10,%esp
 804a267:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a26a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a26d:	83 ec 08             	sub    $0x8,%esp
 804a270:	50                   	push   %eax
 804a271:	68 ff 5a 05 08       	push   $0x8055aff
 804a276:	e8 51 eb ff ff       	call   8048dcc <printMips>
 804a27b:	83 c4 10             	add    $0x10,%esp
 804a27e:	eb 7f                	jmp    804a2ff <generate_mips+0xa0b>
 804a280:	68 e4 5c 05 08       	push   $0x8055ce4
 804a285:	68 4d 02 00 00       	push   $0x24d
 804a28a:	68 f5 58 05 08       	push   $0x80558f5
 804a28f:	68 fc 58 05 08       	push   $0x80558fc
 804a294:	e8 57 e7 ff ff       	call   80489f0 <__assert_fail@plt>
 804a299:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a29c:	8b 40 04             	mov    0x4(%eax),%eax
 804a29f:	83 ec 08             	sub    $0x8,%esp
 804a2a2:	50                   	push   %eax
 804a2a3:	ff 75 d4             	pushl  -0x2c(%ebp)
 804a2a6:	e8 30 ee ff ff       	call   80490db <alloc_array>
 804a2ab:	83 c4 10             	add    $0x10,%esp
 804a2ae:	eb 4f                	jmp    804a2ff <generate_mips+0xa0b>
 804a2b0:	68 e4 5c 05 08       	push   $0x8055ce4
 804a2b5:	68 57 02 00 00       	push   $0x257
 804a2ba:	68 f5 58 05 08       	push   $0x80558f5
 804a2bf:	68 fc 58 05 08       	push   $0x80558fc
 804a2c4:	e8 27 e7 ff ff       	call   80489f0 <__assert_fail@plt>
 804a2c9:	68 e4 5c 05 08       	push   $0x8055ce4
 804a2ce:	68 5e 02 00 00       	push   $0x25e
 804a2d3:	68 f5 58 05 08       	push   $0x80558f5
 804a2d8:	68 fc 58 05 08       	push   $0x80558fc
 804a2dd:	e8 0e e7 ff ff       	call   80489f0 <__assert_fail@plt>
 804a2e2:	68 e4 5c 05 08       	push   $0x8055ce4
 804a2e7:	68 60 02 00 00       	push   $0x260
 804a2ec:	68 f5 58 05 08       	push   $0x80558f5
 804a2f1:	68 fc 58 05 08       	push   $0x80558fc
 804a2f6:	e8 f5 e6 ff ff       	call   80489f0 <__assert_fail@plt>
 804a2fb:	90                   	nop
 804a2fc:	eb 01                	jmp    804a2ff <generate_mips+0xa0b>
 804a2fe:	90                   	nop
 804a2ff:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804a302:	8b 40 14             	mov    0x14(%eax),%eax
 804a305:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804a308:	83 7d bc 00          	cmpl   $0x0,-0x44(%ebp)
 804a30c:	0f 85 23 f6 ff ff    	jne    8049935 <generate_mips+0x41>
 804a312:	90                   	nop
 804a313:	c9                   	leave  
 804a314:	c3                   	ret    

0804a315 <sematicCheck>:
 804a315:	55                   	push   %ebp
 804a316:	89 e5                	mov    %esp,%ebp
 804a318:	83 ec 08             	sub    $0x8,%esp
 804a31b:	83 ec 0c             	sub    $0xc,%esp
 804a31e:	ff 75 08             	pushl  0x8(%ebp)
 804a321:	e8 0b 00 00 00       	call   804a331 <Program>
 804a326:	83 c4 10             	add    $0x10,%esp
 804a329:	e8 02 16 00 00       	call   804b930 <checkFunc>
 804a32e:	90                   	nop
 804a32f:	c9                   	leave  
 804a330:	c3                   	ret    

0804a331 <Program>:
 804a331:	55                   	push   %ebp
 804a332:	89 e5                	mov    %esp,%ebp
 804a334:	83 ec 08             	sub    $0x8,%esp
 804a337:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a33b:	74 14                	je     804a351 <Program+0x20>
 804a33d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a340:	8b 40 14             	mov    0x14(%eax),%eax
 804a343:	83 ec 0c             	sub    $0xc,%esp
 804a346:	50                   	push   %eax
 804a347:	e8 08 00 00 00       	call   804a354 <ExtDefList>
 804a34c:	83 c4 10             	add    $0x10,%esp
 804a34f:	eb 01                	jmp    804a352 <Program+0x21>
 804a351:	90                   	nop
 804a352:	c9                   	leave  
 804a353:	c3                   	ret    

0804a354 <ExtDefList>:
 804a354:	55                   	push   %ebp
 804a355:	89 e5                	mov    %esp,%ebp
 804a357:	83 ec 18             	sub    $0x18,%esp
 804a35a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a35e:	74 31                	je     804a391 <ExtDefList+0x3d>
 804a360:	8b 45 08             	mov    0x8(%ebp),%eax
 804a363:	8b 40 14             	mov    0x14(%eax),%eax
 804a366:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a369:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804a36d:	74 23                	je     804a392 <ExtDefList+0x3e>
 804a36f:	83 ec 0c             	sub    $0xc,%esp
 804a372:	ff 75 f4             	pushl  -0xc(%ebp)
 804a375:	e8 1a 00 00 00       	call   804a394 <ExtDef>
 804a37a:	83 c4 10             	add    $0x10,%esp
 804a37d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a380:	8b 40 18             	mov    0x18(%eax),%eax
 804a383:	83 ec 0c             	sub    $0xc,%esp
 804a386:	50                   	push   %eax
 804a387:	e8 c8 ff ff ff       	call   804a354 <ExtDefList>
 804a38c:	83 c4 10             	add    $0x10,%esp
 804a38f:	eb 01                	jmp    804a392 <ExtDefList+0x3e>
 804a391:	90                   	nop
 804a392:	c9                   	leave  
 804a393:	c3                   	ret    

0804a394 <ExtDef>:
 804a394:	55                   	push   %ebp
 804a395:	89 e5                	mov    %esp,%ebp
 804a397:	83 ec 28             	sub    $0x28,%esp
 804a39a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a39e:	0f 84 1a 02 00 00    	je     804a5be <ExtDef+0x22a>
 804a3a4:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3a7:	8b 40 10             	mov    0x10(%eax),%eax
 804a3aa:	83 f8 01             	cmp    $0x1,%eax
 804a3ad:	0f 8e 0e 02 00 00    	jle    804a5c1 <ExtDef+0x22d>
 804a3b3:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3b6:	8b 40 14             	mov    0x14(%eax),%eax
 804a3b9:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804a3bc:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3bf:	8b 40 18             	mov    0x18(%eax),%eax
 804a3c2:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804a3c5:	83 ec 0c             	sub    $0xc,%esp
 804a3c8:	ff 75 dc             	pushl  -0x24(%ebp)
 804a3cb:	e8 7c 02 00 00       	call   804a64c <Specifier>
 804a3d0:	83 c4 10             	add    $0x10,%esp
 804a3d3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a3d6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a3d9:	8b 40 04             	mov    0x4(%eax),%eax
 804a3dc:	83 f8 28             	cmp    $0x28,%eax
 804a3df:	0f 85 bb 01 00 00    	jne    804a5a0 <ExtDef+0x20c>
 804a3e5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a3e8:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a3eb:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3ee:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a3f1:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a3f4:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804a3fb:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3fe:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a401:	8b 40 04             	mov    0x4(%eax),%eax
 804a404:	83 f8 2b             	cmp    $0x2b,%eax
 804a407:	75 18                	jne    804a421 <ExtDef+0x8d>
 804a409:	83 ec 04             	sub    $0x4,%esp
 804a40c:	6a 01                	push   $0x1
 804a40e:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a411:	ff 75 e8             	pushl  -0x18(%ebp)
 804a414:	e8 73 05 00 00       	call   804a98c <FunDec>
 804a419:	83 c4 10             	add    $0x10,%esp
 804a41c:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804a41f:	eb 16                	jmp    804a437 <ExtDef+0xa3>
 804a421:	83 ec 04             	sub    $0x4,%esp
 804a424:	6a 00                	push   $0x0
 804a426:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a429:	ff 75 e8             	pushl  -0x18(%ebp)
 804a42c:	e8 5b 05 00 00       	call   804a98c <FunDec>
 804a431:	83 c4 10             	add    $0x10,%esp
 804a434:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804a437:	8b 45 08             	mov    0x8(%ebp),%eax
 804a43a:	8b 10                	mov    (%eax),%edx
 804a43c:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a43f:	89 50 08             	mov    %edx,0x8(%eax)
 804a442:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a445:	8b 40 04             	mov    0x4(%eax),%eax
 804a448:	83 ec 0c             	sub    $0xc,%esp
 804a44b:	50                   	push   %eax
 804a44c:	e8 00 aa 00 00       	call   8054e51 <searchTable>
 804a451:	83 c4 10             	add    $0x10,%esp
 804a454:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a457:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a45b:	0f 84 c7 00 00 00    	je     804a528 <ExtDef+0x194>
 804a461:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a464:	8b 00                	mov    (%eax),%eax
 804a466:	83 f8 01             	cmp    $0x1,%eax
 804a469:	0f 85 fa 00 00 00    	jne    804a569 <ExtDef+0x1d5>
 804a46f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a472:	8b 40 0c             	mov    0xc(%eax),%eax
 804a475:	8b 40 08             	mov    0x8(%eax),%eax
 804a478:	83 f8 01             	cmp    $0x1,%eax
 804a47b:	75 3d                	jne    804a4ba <ExtDef+0x126>
 804a47d:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a480:	8b 40 0c             	mov    0xc(%eax),%eax
 804a483:	8b 40 08             	mov    0x8(%eax),%eax
 804a486:	83 f8 01             	cmp    $0x1,%eax
 804a489:	75 2f                	jne    804a4ba <ExtDef+0x126>
 804a48b:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804a490:	83 c0 01             	add    $0x1,%eax
 804a493:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804a498:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a49b:	8b 50 04             	mov    0x4(%eax),%edx
 804a49e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a4a1:	8b 00                	mov    (%eax),%eax
 804a4a3:	83 ec 04             	sub    $0x4,%esp
 804a4a6:	52                   	push   %edx
 804a4a7:	50                   	push   %eax
 804a4a8:	68 f4 5c 05 08       	push   $0x8055cf4
 804a4ad:	e8 2e e3 ff ff       	call   80487e0 <printf@plt>
 804a4b2:	83 c4 10             	add    $0x10,%esp
 804a4b5:	e9 af 00 00 00       	jmp    804a569 <ExtDef+0x1d5>
 804a4ba:	83 ec 08             	sub    $0x8,%esp
 804a4bd:	ff 75 d8             	pushl  -0x28(%ebp)
 804a4c0:	ff 75 f0             	pushl  -0x10(%ebp)
 804a4c3:	e8 69 ae 00 00       	call   8055331 <compareFunction>
 804a4c8:	83 c4 10             	add    $0x10,%esp
 804a4cb:	85 c0                	test   %eax,%eax
 804a4cd:	75 2f                	jne    804a4fe <ExtDef+0x16a>
 804a4cf:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804a4d4:	83 c0 01             	add    $0x1,%eax
 804a4d7:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804a4dc:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a4df:	8b 50 04             	mov    0x4(%eax),%edx
 804a4e2:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a4e5:	8b 00                	mov    (%eax),%eax
 804a4e7:	83 ec 04             	sub    $0x4,%esp
 804a4ea:	52                   	push   %edx
 804a4eb:	50                   	push   %eax
 804a4ec:	68 28 5d 05 08       	push   $0x8055d28
 804a4f1:	e8 ea e2 ff ff       	call   80487e0 <printf@plt>
 804a4f6:	83 c4 10             	add    $0x10,%esp
 804a4f9:	e9 c4 00 00 00       	jmp    804a5c2 <ExtDef+0x22e>
 804a4fe:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a501:	8b 40 0c             	mov    0xc(%eax),%eax
 804a504:	8b 40 08             	mov    0x8(%eax),%eax
 804a507:	85 c0                	test   %eax,%eax
 804a509:	75 5e                	jne    804a569 <ExtDef+0x1d5>
 804a50b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a50e:	8b 40 0c             	mov    0xc(%eax),%eax
 804a511:	8b 40 08             	mov    0x8(%eax),%eax
 804a514:	83 f8 01             	cmp    $0x1,%eax
 804a517:	75 50                	jne    804a569 <ExtDef+0x1d5>
 804a519:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a51c:	8b 40 0c             	mov    0xc(%eax),%eax
 804a51f:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 804a526:	eb 41                	jmp    804a569 <ExtDef+0x1d5>
 804a528:	83 ec 0c             	sub    $0xc,%esp
 804a52b:	ff 75 d8             	pushl  -0x28(%ebp)
 804a52e:	e8 96 a9 00 00       	call   8054ec9 <insertTable>
 804a533:	83 c4 10             	add    $0x10,%esp
 804a536:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a539:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 804a53d:	75 2a                	jne    804a569 <ExtDef+0x1d5>
 804a53f:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804a544:	83 c0 01             	add    $0x1,%eax
 804a547:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804a54c:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a54f:	8b 50 04             	mov    0x4(%eax),%edx
 804a552:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a555:	8b 00                	mov    (%eax),%eax
 804a557:	83 ec 04             	sub    $0x4,%esp
 804a55a:	52                   	push   %edx
 804a55b:	50                   	push   %eax
 804a55c:	68 f4 5c 05 08       	push   $0x8055cf4
 804a561:	e8 7a e2 ff ff       	call   80487e0 <printf@plt>
 804a566:	83 c4 10             	add    $0x10,%esp
 804a569:	8b 45 08             	mov    0x8(%ebp),%eax
 804a56c:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a56f:	8b 40 04             	mov    0x4(%eax),%eax
 804a572:	83 f8 2b             	cmp    $0x2b,%eax
 804a575:	75 4b                	jne    804a5c2 <ExtDef+0x22e>
 804a577:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a57a:	8b 40 0c             	mov    0xc(%eax),%eax
 804a57d:	a3 70 b1 05 08       	mov    %eax,0x805b170
 804a582:	8b 45 08             	mov    0x8(%ebp),%eax
 804a585:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a588:	83 ec 0c             	sub    $0xc,%esp
 804a58b:	50                   	push   %eax
 804a58c:	e8 c3 05 00 00       	call   804ab54 <CompSt>
 804a591:	83 c4 10             	add    $0x10,%esp
 804a594:	c7 05 70 b1 05 08 00 	movl   $0x0,0x805b170
 804a59b:	00 00 00 
 804a59e:	eb 22                	jmp    804a5c2 <ExtDef+0x22e>
 804a5a0:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a5a3:	8b 40 04             	mov    0x4(%eax),%eax
 804a5a6:	83 f8 22             	cmp    $0x22,%eax
 804a5a9:	75 17                	jne    804a5c2 <ExtDef+0x22e>
 804a5ab:	83 ec 08             	sub    $0x8,%esp
 804a5ae:	ff 75 e0             	pushl  -0x20(%ebp)
 804a5b1:	ff 75 e4             	pushl  -0x1c(%ebp)
 804a5b4:	e8 0b 00 00 00       	call   804a5c4 <ExtDecList>
 804a5b9:	83 c4 10             	add    $0x10,%esp
 804a5bc:	eb 04                	jmp    804a5c2 <ExtDef+0x22e>
 804a5be:	90                   	nop
 804a5bf:	eb 01                	jmp    804a5c2 <ExtDef+0x22e>
 804a5c1:	90                   	nop
 804a5c2:	c9                   	leave  
 804a5c3:	c3                   	ret    

0804a5c4 <ExtDecList>:
 804a5c4:	55                   	push   %ebp
 804a5c5:	89 e5                	mov    %esp,%ebp
 804a5c7:	83 ec 18             	sub    $0x18,%esp
 804a5ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a5cd:	8b 40 14             	mov    0x14(%eax),%eax
 804a5d0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a5d3:	83 ec 08             	sub    $0x8,%esp
 804a5d6:	ff 75 ec             	pushl  -0x14(%ebp)
 804a5d9:	ff 75 08             	pushl  0x8(%ebp)
 804a5dc:	e8 f3 02 00 00       	call   804a8d4 <VarDec>
 804a5e1:	83 c4 10             	add    $0x10,%esp
 804a5e4:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a5e7:	83 ec 0c             	sub    $0xc,%esp
 804a5ea:	ff 75 f0             	pushl  -0x10(%ebp)
 804a5ed:	e8 d7 a8 00 00       	call   8054ec9 <insertTable>
 804a5f2:	83 c4 10             	add    $0x10,%esp
 804a5f5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a5f8:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 804a5fc:	75 2b                	jne    804a629 <ExtDecList+0x65>
 804a5fe:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804a603:	83 c0 01             	add    $0x1,%eax
 804a606:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804a60b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a60e:	8b 50 04             	mov    0x4(%eax),%edx
 804a611:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a614:	8b 40 08             	mov    0x8(%eax),%eax
 804a617:	83 ec 04             	sub    $0x4,%esp
 804a61a:	52                   	push   %edx
 804a61b:	50                   	push   %eax
 804a61c:	68 70 5d 05 08       	push   $0x8055d70
 804a621:	e8 ba e1 ff ff       	call   80487e0 <printf@plt>
 804a626:	83 c4 10             	add    $0x10,%esp
 804a629:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a62c:	8b 40 10             	mov    0x10(%eax),%eax
 804a62f:	83 f8 01             	cmp    $0x1,%eax
 804a632:	7e 15                	jle    804a649 <ExtDecList+0x85>
 804a634:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a637:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a63a:	83 ec 08             	sub    $0x8,%esp
 804a63d:	50                   	push   %eax
 804a63e:	ff 75 08             	pushl  0x8(%ebp)
 804a641:	e8 7e ff ff ff       	call   804a5c4 <ExtDecList>
 804a646:	83 c4 10             	add    $0x10,%esp
 804a649:	90                   	nop
 804a64a:	c9                   	leave  
 804a64b:	c3                   	ret    

0804a64c <Specifier>:
 804a64c:	55                   	push   %ebp
 804a64d:	89 e5                	mov    %esp,%ebp
 804a64f:	83 ec 18             	sub    $0x18,%esp
 804a652:	8b 45 08             	mov    0x8(%ebp),%eax
 804a655:	8b 40 14             	mov    0x14(%eax),%eax
 804a658:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a65b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a662:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a665:	8b 40 04             	mov    0x4(%eax),%eax
 804a668:	83 f8 04             	cmp    $0x4,%eax
 804a66b:	75 7d                	jne    804a6ea <Specifier+0x9e>
 804a66d:	83 ec 0c             	sub    $0xc,%esp
 804a670:	6a 0c                	push   $0xc
 804a672:	e8 29 e2 ff ff       	call   80488a0 <malloc@plt>
 804a677:	83 c4 10             	add    $0x10,%esp
 804a67a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a67d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a680:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a686:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a689:	8b 40 08             	mov    0x8(%eax),%eax
 804a68c:	83 ec 08             	sub    $0x8,%esp
 804a68f:	68 a3 5d 05 08       	push   $0x8055da3
 804a694:	50                   	push   %eax
 804a695:	e8 36 e1 ff ff       	call   80487d0 <strcmp@plt>
 804a69a:	83 c4 10             	add    $0x10,%esp
 804a69d:	85 c0                	test   %eax,%eax
 804a69f:	75 0c                	jne    804a6ad <Specifier+0x61>
 804a6a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a6a4:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a6ab:	eb 78                	jmp    804a725 <Specifier+0xd9>
 804a6ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a6b0:	8b 40 08             	mov    0x8(%eax),%eax
 804a6b3:	83 ec 08             	sub    $0x8,%esp
 804a6b6:	68 a7 5d 05 08       	push   $0x8055da7
 804a6bb:	50                   	push   %eax
 804a6bc:	e8 0f e1 ff ff       	call   80487d0 <strcmp@plt>
 804a6c1:	83 c4 10             	add    $0x10,%esp
 804a6c4:	85 c0                	test   %eax,%eax
 804a6c6:	75 0c                	jne    804a6d4 <Specifier+0x88>
 804a6c8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a6cb:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 804a6d2:	eb 51                	jmp    804a725 <Specifier+0xd9>
 804a6d4:	68 78 62 05 08       	push   $0x8056278
 804a6d9:	6a 7c                	push   $0x7c
 804a6db:	68 ad 5d 05 08       	push   $0x8055dad
 804a6e0:	68 b7 5d 05 08       	push   $0x8055db7
 804a6e5:	e8 06 e3 ff ff       	call   80489f0 <__assert_fail@plt>
 804a6ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a6ed:	8b 40 04             	mov    0x4(%eax),%eax
 804a6f0:	83 f8 24             	cmp    $0x24,%eax
 804a6f3:	75 17                	jne    804a70c <Specifier+0xc0>
 804a6f5:	8b 45 08             	mov    0x8(%ebp),%eax
 804a6f8:	8b 40 14             	mov    0x14(%eax),%eax
 804a6fb:	83 ec 0c             	sub    $0xc,%esp
 804a6fe:	50                   	push   %eax
 804a6ff:	e8 26 00 00 00       	call   804a72a <StructSpecifier>
 804a704:	83 c4 10             	add    $0x10,%esp
 804a707:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a70a:	eb 19                	jmp    804a725 <Specifier+0xd9>
 804a70c:	68 78 62 05 08       	push   $0x8056278
 804a711:	68 84 00 00 00       	push   $0x84
 804a716:	68 ad 5d 05 08       	push   $0x8055dad
 804a71b:	68 b7 5d 05 08       	push   $0x8055db7
 804a720:	e8 cb e2 ff ff       	call   80489f0 <__assert_fail@plt>
 804a725:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a728:	c9                   	leave  
 804a729:	c3                   	ret    

0804a72a <StructSpecifier>:
 804a72a:	55                   	push   %ebp
 804a72b:	89 e5                	mov    %esp,%ebp
 804a72d:	83 ec 28             	sub    $0x28,%esp
 804a730:	83 ec 0c             	sub    $0xc,%esp
 804a733:	6a 0c                	push   $0xc
 804a735:	e8 66 e1 ff ff       	call   80488a0 <malloc@plt>
 804a73a:	83 c4 10             	add    $0x10,%esp
 804a73d:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804a740:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a743:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a749:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a74c:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a753:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a756:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a75d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a760:	8b 40 18             	mov    0x18(%eax),%eax
 804a763:	8b 40 04             	mov    0x4(%eax),%eax
 804a766:	83 f8 26             	cmp    $0x26,%eax
 804a769:	75 76                	jne    804a7e1 <StructSpecifier+0xb7>
 804a76b:	8b 45 08             	mov    0x8(%ebp),%eax
 804a76e:	8b 40 18             	mov    0x18(%eax),%eax
 804a771:	8b 40 14             	mov    0x14(%eax),%eax
 804a774:	8b 40 08             	mov    0x8(%eax),%eax
 804a777:	83 ec 0c             	sub    $0xc,%esp
 804a77a:	50                   	push   %eax
 804a77b:	e8 d1 a6 00 00       	call   8054e51 <searchTable>
 804a780:	83 c4 10             	add    $0x10,%esp
 804a783:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804a786:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804a78a:	74 0a                	je     804a796 <StructSpecifier+0x6c>
 804a78c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a78f:	8b 00                	mov    (%eax),%eax
 804a791:	83 f8 02             	cmp    $0x2,%eax
 804a794:	74 40                	je     804a7d6 <StructSpecifier+0xac>
 804a796:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804a79b:	83 c0 01             	add    $0x1,%eax
 804a79e:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804a7a3:	8b 45 08             	mov    0x8(%ebp),%eax
 804a7a6:	8b 40 18             	mov    0x18(%eax),%eax
 804a7a9:	8b 40 14             	mov    0x14(%eax),%eax
 804a7ac:	8b 50 08             	mov    0x8(%eax),%edx
 804a7af:	8b 45 08             	mov    0x8(%ebp),%eax
 804a7b2:	8b 40 18             	mov    0x18(%eax),%eax
 804a7b5:	8b 40 14             	mov    0x14(%eax),%eax
 804a7b8:	8b 00                	mov    (%eax),%eax
 804a7ba:	83 ec 04             	sub    $0x4,%esp
 804a7bd:	52                   	push   %edx
 804a7be:	50                   	push   %eax
 804a7bf:	68 bc 5d 05 08       	push   $0x8055dbc
 804a7c4:	e8 17 e0 ff ff       	call   80487e0 <printf@plt>
 804a7c9:	83 c4 10             	add    $0x10,%esp
 804a7cc:	b8 00 00 00 00       	mov    $0x0,%eax
 804a7d1:	e9 fc 00 00 00       	jmp    804a8d2 <StructSpecifier+0x1a8>
 804a7d6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a7d9:	8b 40 0c             	mov    0xc(%eax),%eax
 804a7dc:	e9 f1 00 00 00       	jmp    804a8d2 <StructSpecifier+0x1a8>
 804a7e1:	8b 45 08             	mov    0x8(%ebp),%eax
 804a7e4:	8b 40 18             	mov    0x18(%eax),%eax
 804a7e7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a7ea:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804a7ee:	74 4c                	je     804a83c <StructSpecifier+0x112>
 804a7f0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a7f3:	8b 40 14             	mov    0x14(%eax),%eax
 804a7f6:	8b 40 08             	mov    0x8(%eax),%eax
 804a7f9:	83 ec 0c             	sub    $0xc,%esp
 804a7fc:	50                   	push   %eax
 804a7fd:	e8 ce e0 ff ff       	call   80488d0 <strlen@plt>
 804a802:	83 c4 10             	add    $0x10,%esp
 804a805:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a808:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a80b:	83 c0 01             	add    $0x1,%eax
 804a80e:	83 ec 0c             	sub    $0xc,%esp
 804a811:	50                   	push   %eax
 804a812:	e8 89 e0 ff ff       	call   80488a0 <malloc@plt>
 804a817:	83 c4 10             	add    $0x10,%esp
 804a81a:	89 c2                	mov    %eax,%edx
 804a81c:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a81f:	89 10                	mov    %edx,(%eax)
 804a821:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a824:	8b 40 14             	mov    0x14(%eax),%eax
 804a827:	8b 50 08             	mov    0x8(%eax),%edx
 804a82a:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a82d:	8b 00                	mov    (%eax),%eax
 804a82f:	83 ec 08             	sub    $0x8,%esp
 804a832:	52                   	push   %edx
 804a833:	50                   	push   %eax
 804a834:	e8 47 e0 ff ff       	call   8048880 <strcpy@plt>
 804a839:	83 c4 10             	add    $0x10,%esp
 804a83c:	8b 45 08             	mov    0x8(%ebp),%eax
 804a83f:	8b 40 20             	mov    0x20(%eax),%eax
 804a842:	83 ec 04             	sub    $0x4,%esp
 804a845:	ff 75 dc             	pushl  -0x24(%ebp)
 804a848:	6a 00                	push   $0x0
 804a84a:	50                   	push   %eax
 804a84b:	e8 cf 05 00 00       	call   804ae1f <DefList>
 804a850:	83 c4 10             	add    $0x10,%esp
 804a853:	83 ec 0c             	sub    $0xc,%esp
 804a856:	6a 0c                	push   $0xc
 804a858:	e8 43 e0 ff ff       	call   80488a0 <malloc@plt>
 804a85d:	83 c4 10             	add    $0x10,%esp
 804a860:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a863:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a866:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
 804a86c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a86f:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804a872:	89 50 04             	mov    %edx,0x4(%eax)
 804a875:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a878:	8b 00                	mov    (%eax),%eax
 804a87a:	83 ec 04             	sub    $0x4,%esp
 804a87d:	ff 75 ec             	pushl  -0x14(%ebp)
 804a880:	50                   	push   %eax
 804a881:	6a 02                	push   $0x2
 804a883:	e8 ef a3 00 00       	call   8054c77 <newTypeSymbol>
 804a888:	83 c4 10             	add    $0x10,%esp
 804a88b:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a88e:	83 ec 0c             	sub    $0xc,%esp
 804a891:	ff 75 f0             	pushl  -0x10(%ebp)
 804a894:	e8 30 a6 00 00       	call   8054ec9 <insertTable>
 804a899:	83 c4 10             	add    $0x10,%esp
 804a89c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a89f:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 804a8a3:	75 2a                	jne    804a8cf <StructSpecifier+0x1a5>
 804a8a5:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804a8aa:	83 c0 01             	add    $0x1,%eax
 804a8ad:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804a8b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a8b5:	8b 50 04             	mov    0x4(%eax),%edx
 804a8b8:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8bb:	8b 00                	mov    (%eax),%eax
 804a8bd:	83 ec 04             	sub    $0x4,%esp
 804a8c0:	52                   	push   %edx
 804a8c1:	50                   	push   %eax
 804a8c2:	68 f4 5d 05 08       	push   $0x8055df4
 804a8c7:	e8 14 df ff ff       	call   80487e0 <printf@plt>
 804a8cc:	83 c4 10             	add    $0x10,%esp
 804a8cf:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a8d2:	c9                   	leave  
 804a8d3:	c3                   	ret    

0804a8d4 <VarDec>:
 804a8d4:	55                   	push   %ebp
 804a8d5:	89 e5                	mov    %esp,%ebp
 804a8d7:	83 ec 18             	sub    $0x18,%esp
 804a8da:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a8dd:	8b 40 14             	mov    0x14(%eax),%eax
 804a8e0:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a8e3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804a8ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a8ed:	8b 40 04             	mov    0x4(%eax),%eax
 804a8f0:	83 f8 03             	cmp    $0x3,%eax
 804a8f3:	75 27                	jne    804a91c <VarDec+0x48>
 804a8f5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a8f8:	8b 40 08             	mov    0x8(%eax),%eax
 804a8fb:	83 ec 04             	sub    $0x4,%esp
 804a8fe:	ff 75 08             	pushl  0x8(%ebp)
 804a901:	50                   	push   %eax
 804a902:	6a 00                	push   $0x0
 804a904:	e8 6e a3 00 00       	call   8054c77 <newTypeSymbol>
 804a909:	83 c4 10             	add    $0x10,%esp
 804a90c:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a90f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a912:	8b 10                	mov    (%eax),%edx
 804a914:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a917:	89 50 08             	mov    %edx,0x8(%eax)
 804a91a:	eb 6b                	jmp    804a987 <VarDec+0xb3>
 804a91c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a91f:	8b 40 04             	mov    0x4(%eax),%eax
 804a922:	83 f8 27             	cmp    $0x27,%eax
 804a925:	75 47                	jne    804a96e <VarDec+0x9a>
 804a927:	83 ec 0c             	sub    $0xc,%esp
 804a92a:	6a 0c                	push   $0xc
 804a92c:	e8 6f df ff ff       	call   80488a0 <malloc@plt>
 804a931:	83 c4 10             	add    $0x10,%esp
 804a934:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a937:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a93a:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804a940:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a943:	8b 55 08             	mov    0x8(%ebp),%edx
 804a946:	89 50 04             	mov    %edx,0x4(%eax)
 804a949:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a94c:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a94f:	8b 50 08             	mov    0x8(%eax),%edx
 804a952:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a955:	89 50 08             	mov    %edx,0x8(%eax)
 804a958:	83 ec 08             	sub    $0x8,%esp
 804a95b:	ff 75 f0             	pushl  -0x10(%ebp)
 804a95e:	ff 75 f4             	pushl  -0xc(%ebp)
 804a961:	e8 6e ff ff ff       	call   804a8d4 <VarDec>
 804a966:	83 c4 10             	add    $0x10,%esp
 804a969:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a96c:	eb 19                	jmp    804a987 <VarDec+0xb3>
 804a96e:	68 84 62 05 08       	push   $0x8056284
 804a973:	68 d8 00 00 00       	push   $0xd8
 804a978:	68 ad 5d 05 08       	push   $0x8055dad
 804a97d:	68 b7 5d 05 08       	push   $0x8055db7
 804a982:	e8 69 e0 ff ff       	call   80489f0 <__assert_fail@plt>
 804a987:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a98a:	c9                   	leave  
 804a98b:	c3                   	ret    

0804a98c <FunDec>:
 804a98c:	55                   	push   %ebp
 804a98d:	89 e5                	mov    %esp,%ebp
 804a98f:	83 ec 18             	sub    $0x18,%esp
 804a992:	83 ec 0c             	sub    $0xc,%esp
 804a995:	6a 0c                	push   $0xc
 804a997:	e8 04 df ff ff       	call   80488a0 <malloc@plt>
 804a99c:	83 c4 10             	add    $0x10,%esp
 804a99f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a9a2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a9a5:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a9a8:	89 10                	mov    %edx,(%eax)
 804a9aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a9ad:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a9b4:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
 804a9b8:	75 0c                	jne    804a9c6 <FunDec+0x3a>
 804a9ba:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a9bd:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 804a9c4:	eb 0a                	jmp    804a9d0 <FunDec+0x44>
 804a9c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a9c9:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a9d0:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9d3:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a9d6:	8b 40 04             	mov    0x4(%eax),%eax
 804a9d9:	83 f8 29             	cmp    $0x29,%eax
 804a9dc:	75 1d                	jne    804a9fb <FunDec+0x6f>
 804a9de:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9e1:	8b 40 1c             	mov    0x1c(%eax),%eax
 804a9e4:	83 ec 08             	sub    $0x8,%esp
 804a9e7:	ff 75 10             	pushl  0x10(%ebp)
 804a9ea:	50                   	push   %eax
 804a9eb:	e8 2d 00 00 00       	call   804aa1d <VarList>
 804a9f0:	83 c4 10             	add    $0x10,%esp
 804a9f3:	89 c2                	mov    %eax,%edx
 804a9f5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a9f8:	89 50 04             	mov    %edx,0x4(%eax)
 804a9fb:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9fe:	8b 40 14             	mov    0x14(%eax),%eax
 804aa01:	8b 40 08             	mov    0x8(%eax),%eax
 804aa04:	83 ec 04             	sub    $0x4,%esp
 804aa07:	ff 75 f0             	pushl  -0x10(%ebp)
 804aa0a:	50                   	push   %eax
 804aa0b:	6a 01                	push   $0x1
 804aa0d:	e8 e9 a2 00 00       	call   8054cfb <newFuncSymbol>
 804aa12:	83 c4 10             	add    $0x10,%esp
 804aa15:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aa18:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804aa1b:	c9                   	leave  
 804aa1c:	c3                   	ret    

0804aa1d <VarList>:
 804aa1d:	55                   	push   %ebp
 804aa1e:	89 e5                	mov    %esp,%ebp
 804aa20:	83 ec 18             	sub    $0x18,%esp
 804aa23:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa26:	8b 40 14             	mov    0x14(%eax),%eax
 804aa29:	83 ec 08             	sub    $0x8,%esp
 804aa2c:	ff 75 0c             	pushl  0xc(%ebp)
 804aa2f:	50                   	push   %eax
 804aa30:	e8 33 00 00 00       	call   804aa68 <ParamDec>
 804aa35:	83 c4 10             	add    $0x10,%esp
 804aa38:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aa3b:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa3e:	8b 40 10             	mov    0x10(%eax),%eax
 804aa41:	83 f8 01             	cmp    $0x1,%eax
 804aa44:	7e 1d                	jle    804aa63 <VarList+0x46>
 804aa46:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa49:	8b 40 1c             	mov    0x1c(%eax),%eax
 804aa4c:	83 ec 08             	sub    $0x8,%esp
 804aa4f:	ff 75 0c             	pushl  0xc(%ebp)
 804aa52:	50                   	push   %eax
 804aa53:	e8 c5 ff ff ff       	call   804aa1d <VarList>
 804aa58:	83 c4 10             	add    $0x10,%esp
 804aa5b:	89 c2                	mov    %eax,%edx
 804aa5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804aa60:	89 50 08             	mov    %edx,0x8(%eax)
 804aa63:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804aa66:	c9                   	leave  
 804aa67:	c3                   	ret    

0804aa68 <ParamDec>:
 804aa68:	55                   	push   %ebp
 804aa69:	89 e5                	mov    %esp,%ebp
 804aa6b:	83 ec 28             	sub    $0x28,%esp
 804aa6e:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa71:	8b 40 14             	mov    0x14(%eax),%eax
 804aa74:	83 ec 0c             	sub    $0xc,%esp
 804aa77:	50                   	push   %eax
 804aa78:	e8 cf fb ff ff       	call   804a64c <Specifier>
 804aa7d:	83 c4 10             	add    $0x10,%esp
 804aa80:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804aa83:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa86:	8b 40 18             	mov    0x18(%eax),%eax
 804aa89:	83 ec 08             	sub    $0x8,%esp
 804aa8c:	50                   	push   %eax
 804aa8d:	ff 75 e4             	pushl  -0x1c(%ebp)
 804aa90:	e8 3f fe ff ff       	call   804a8d4 <VarDec>
 804aa95:	83 c4 10             	add    $0x10,%esp
 804aa98:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804aa9b:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
 804aa9f:	75 42                	jne    804aae3 <ParamDec+0x7b>
 804aaa1:	83 ec 0c             	sub    $0xc,%esp
 804aaa4:	ff 75 e8             	pushl  -0x18(%ebp)
 804aaa7:	e8 1d a4 00 00       	call   8054ec9 <insertTable>
 804aaac:	83 c4 10             	add    $0x10,%esp
 804aaaf:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804aab2:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 804aab6:	75 2b                	jne    804aae3 <ParamDec+0x7b>
 804aab8:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804aabd:	83 c0 01             	add    $0x1,%eax
 804aac0:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804aac5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804aac8:	8b 50 04             	mov    0x4(%eax),%edx
 804aacb:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804aace:	8b 40 08             	mov    0x8(%eax),%eax
 804aad1:	83 ec 04             	sub    $0x4,%esp
 804aad4:	52                   	push   %edx
 804aad5:	50                   	push   %eax
 804aad6:	68 70 5d 05 08       	push   $0x8055d70
 804aadb:	e8 00 dd ff ff       	call   80487e0 <printf@plt>
 804aae0:	83 c4 10             	add    $0x10,%esp
 804aae3:	83 ec 0c             	sub    $0xc,%esp
 804aae6:	6a 0c                	push   $0xc
 804aae8:	e8 b3 dd ff ff       	call   80488a0 <malloc@plt>
 804aaed:	83 c4 10             	add    $0x10,%esp
 804aaf0:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804aaf3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804aaf6:	8b 40 04             	mov    0x4(%eax),%eax
 804aaf9:	83 ec 0c             	sub    $0xc,%esp
 804aafc:	50                   	push   %eax
 804aafd:	e8 ce dd ff ff       	call   80488d0 <strlen@plt>
 804ab02:	83 c4 10             	add    $0x10,%esp
 804ab05:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ab08:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ab0b:	83 c0 01             	add    $0x1,%eax
 804ab0e:	83 ec 0c             	sub    $0xc,%esp
 804ab11:	50                   	push   %eax
 804ab12:	e8 89 dd ff ff       	call   80488a0 <malloc@plt>
 804ab17:	83 c4 10             	add    $0x10,%esp
 804ab1a:	89 c2                	mov    %eax,%edx
 804ab1c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ab1f:	89 10                	mov    %edx,(%eax)
 804ab21:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ab24:	8b 50 04             	mov    0x4(%eax),%edx
 804ab27:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ab2a:	8b 00                	mov    (%eax),%eax
 804ab2c:	83 ec 08             	sub    $0x8,%esp
 804ab2f:	52                   	push   %edx
 804ab30:	50                   	push   %eax
 804ab31:	e8 4a dd ff ff       	call   8048880 <strcpy@plt>
 804ab36:	83 c4 10             	add    $0x10,%esp
 804ab39:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ab3c:	8b 50 0c             	mov    0xc(%eax),%edx
 804ab3f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ab42:	89 50 04             	mov    %edx,0x4(%eax)
 804ab45:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ab48:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804ab4f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ab52:	c9                   	leave  
 804ab53:	c3                   	ret    

0804ab54 <CompSt>:
 804ab54:	55                   	push   %ebp
 804ab55:	89 e5                	mov    %esp,%ebp
 804ab57:	83 ec 18             	sub    $0x18,%esp
 804ab5a:	83 ec 0c             	sub    $0xc,%esp
 804ab5d:	6a 0c                	push   $0xc
 804ab5f:	e8 3c dd ff ff       	call   80488a0 <malloc@plt>
 804ab64:	83 c4 10             	add    $0x10,%esp
 804ab67:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ab6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ab6d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804ab74:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ab77:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804ab7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ab81:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804ab87:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab8a:	8b 40 18             	mov    0x18(%eax),%eax
 804ab8d:	83 ec 04             	sub    $0x4,%esp
 804ab90:	ff 75 f4             	pushl  -0xc(%ebp)
 804ab93:	6a 01                	push   $0x1
 804ab95:	50                   	push   %eax
 804ab96:	e8 84 02 00 00       	call   804ae1f <DefList>
 804ab9b:	83 c4 10             	add    $0x10,%esp
 804ab9e:	8b 45 08             	mov    0x8(%ebp),%eax
 804aba1:	8b 40 1c             	mov    0x1c(%eax),%eax
 804aba4:	83 ec 0c             	sub    $0xc,%esp
 804aba7:	50                   	push   %eax
 804aba8:	e8 06 00 00 00       	call   804abb3 <StmtList>
 804abad:	83 c4 10             	add    $0x10,%esp
 804abb0:	90                   	nop
 804abb1:	c9                   	leave  
 804abb2:	c3                   	ret    

0804abb3 <StmtList>:
 804abb3:	55                   	push   %ebp
 804abb4:	89 e5                	mov    %esp,%ebp
 804abb6:	83 ec 08             	sub    $0x8,%esp
 804abb9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804abbd:	74 31                	je     804abf0 <StmtList+0x3d>
 804abbf:	8b 45 08             	mov    0x8(%ebp),%eax
 804abc2:	8b 40 10             	mov    0x10(%eax),%eax
 804abc5:	83 f8 02             	cmp    $0x2,%eax
 804abc8:	75 27                	jne    804abf1 <StmtList+0x3e>
 804abca:	8b 45 08             	mov    0x8(%ebp),%eax
 804abcd:	8b 40 14             	mov    0x14(%eax),%eax
 804abd0:	83 ec 0c             	sub    $0xc,%esp
 804abd3:	50                   	push   %eax
 804abd4:	e8 1a 00 00 00       	call   804abf3 <Stmt>
 804abd9:	83 c4 10             	add    $0x10,%esp
 804abdc:	8b 45 08             	mov    0x8(%ebp),%eax
 804abdf:	8b 40 18             	mov    0x18(%eax),%eax
 804abe2:	83 ec 0c             	sub    $0xc,%esp
 804abe5:	50                   	push   %eax
 804abe6:	e8 c8 ff ff ff       	call   804abb3 <StmtList>
 804abeb:	83 c4 10             	add    $0x10,%esp
 804abee:	eb 01                	jmp    804abf1 <StmtList+0x3e>
 804abf0:	90                   	nop
 804abf1:	c9                   	leave  
 804abf2:	c3                   	ret    

0804abf3 <Stmt>:
 804abf3:	55                   	push   %ebp
 804abf4:	89 e5                	mov    %esp,%ebp
 804abf6:	83 ec 18             	sub    $0x18,%esp
 804abf9:	8b 45 08             	mov    0x8(%ebp),%eax
 804abfc:	8b 40 14             	mov    0x14(%eax),%eax
 804abff:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804ac02:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804ac09:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ac0c:	8b 40 04             	mov    0x4(%eax),%eax
 804ac0f:	83 e8 1b             	sub    $0x1b,%eax
 804ac12:	83 f8 17             	cmp    $0x17,%eax
 804ac15:	0f 87 e4 01 00 00    	ja     804adff <Stmt+0x20c>
 804ac1b:	8b 04 85 80 5e 05 08 	mov    0x8055e80(,%eax,4),%eax
 804ac22:	ff e0                	jmp    *%eax
 804ac24:	83 ec 0c             	sub    $0xc,%esp
 804ac27:	ff 75 f0             	pushl  -0x10(%ebp)
 804ac2a:	e8 7d 04 00 00       	call   804b0ac <Exp>
 804ac2f:	83 c4 10             	add    $0x10,%esp
 804ac32:	e9 e5 01 00 00       	jmp    804ae1c <Stmt+0x229>
 804ac37:	83 ec 0c             	sub    $0xc,%esp
 804ac3a:	ff 75 f0             	pushl  -0x10(%ebp)
 804ac3d:	e8 12 ff ff ff       	call   804ab54 <CompSt>
 804ac42:	83 c4 10             	add    $0x10,%esp
 804ac45:	e9 d2 01 00 00       	jmp    804ae1c <Stmt+0x229>
 804ac4a:	a1 70 b1 05 08       	mov    0x805b170,%eax
 804ac4f:	85 c0                	test   %eax,%eax
 804ac51:	75 40                	jne    804ac93 <Stmt+0xa0>
 804ac53:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804ac58:	83 c0 01             	add    $0x1,%eax
 804ac5b:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804ac60:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac63:	8b 00                	mov    (%eax),%eax
 804ac65:	68 25 5e 05 08       	push   $0x8055e25
 804ac6a:	50                   	push   %eax
 804ac6b:	6a 08                	push   $0x8
 804ac6d:	68 41 5e 05 08       	push   $0x8055e41
 804ac72:	e8 69 db ff ff       	call   80487e0 <printf@plt>
 804ac77:	83 c4 10             	add    $0x10,%esp
 804ac7a:	68 8c 62 05 08       	push   $0x805628c
 804ac7f:	68 44 01 00 00       	push   $0x144
 804ac84:	68 ad 5d 05 08       	push   $0x8055dad
 804ac89:	68 b7 5d 05 08       	push   $0x8055db7
 804ac8e:	e8 5d dd ff ff       	call   80489f0 <__assert_fail@plt>
 804ac93:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac96:	8b 40 18             	mov    0x18(%eax),%eax
 804ac99:	83 ec 0c             	sub    $0xc,%esp
 804ac9c:	50                   	push   %eax
 804ac9d:	e8 0a 04 00 00       	call   804b0ac <Exp>
 804aca2:	83 c4 10             	add    $0x10,%esp
 804aca5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aca8:	a1 70 b1 05 08       	mov    0x805b170,%eax
 804acad:	8b 00                	mov    (%eax),%eax
 804acaf:	83 ec 08             	sub    $0x8,%esp
 804acb2:	ff 75 f4             	pushl  -0xc(%ebp)
 804acb5:	50                   	push   %eax
 804acb6:	e8 03 a5 00 00       	call   80551be <compareType>
 804acbb:	83 c4 10             	add    $0x10,%esp
 804acbe:	85 c0                	test   %eax,%eax
 804acc0:	0f 85 52 01 00 00    	jne    804ae18 <Stmt+0x225>
 804acc6:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804accb:	83 c0 01             	add    $0x1,%eax
 804acce:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804acd3:	8b 45 08             	mov    0x8(%ebp),%eax
 804acd6:	8b 00                	mov    (%eax),%eax
 804acd8:	68 25 5e 05 08       	push   $0x8055e25
 804acdd:	50                   	push   %eax
 804acde:	6a 08                	push   $0x8
 804ace0:	68 41 5e 05 08       	push   $0x8055e41
 804ace5:	e8 f6 da ff ff       	call   80487e0 <printf@plt>
 804acea:	83 c4 10             	add    $0x10,%esp
 804aced:	e9 26 01 00 00       	jmp    804ae18 <Stmt+0x225>
 804acf2:	8b 45 08             	mov    0x8(%ebp),%eax
 804acf5:	8b 40 1c             	mov    0x1c(%eax),%eax
 804acf8:	83 ec 0c             	sub    $0xc,%esp
 804acfb:	50                   	push   %eax
 804acfc:	e8 ab 03 00 00       	call   804b0ac <Exp>
 804ad01:	83 c4 10             	add    $0x10,%esp
 804ad04:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ad07:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804ad0b:	74 3d                	je     804ad4a <Stmt+0x157>
 804ad0d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ad10:	8b 00                	mov    (%eax),%eax
 804ad12:	85 c0                	test   %eax,%eax
 804ad14:	75 0a                	jne    804ad20 <Stmt+0x12d>
 804ad16:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ad19:	8b 40 04             	mov    0x4(%eax),%eax
 804ad1c:	85 c0                	test   %eax,%eax
 804ad1e:	74 2a                	je     804ad4a <Stmt+0x157>
 804ad20:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804ad25:	83 c0 01             	add    $0x1,%eax
 804ad28:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804ad2d:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad30:	8b 40 1c             	mov    0x1c(%eax),%eax
 804ad33:	8b 00                	mov    (%eax),%eax
 804ad35:	68 60 5e 05 08       	push   $0x8055e60
 804ad3a:	50                   	push   %eax
 804ad3b:	6a 07                	push   $0x7
 804ad3d:	68 41 5e 05 08       	push   $0x8055e41
 804ad42:	e8 99 da ff ff       	call   80487e0 <printf@plt>
 804ad47:	83 c4 10             	add    $0x10,%esp
 804ad4a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad4d:	8b 40 24             	mov    0x24(%eax),%eax
 804ad50:	83 ec 0c             	sub    $0xc,%esp
 804ad53:	50                   	push   %eax
 804ad54:	e8 9a fe ff ff       	call   804abf3 <Stmt>
 804ad59:	83 c4 10             	add    $0x10,%esp
 804ad5c:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad5f:	8b 40 2c             	mov    0x2c(%eax),%eax
 804ad62:	85 c0                	test   %eax,%eax
 804ad64:	0f 84 b1 00 00 00    	je     804ae1b <Stmt+0x228>
 804ad6a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad6d:	8b 40 2c             	mov    0x2c(%eax),%eax
 804ad70:	8b 40 04             	mov    0x4(%eax),%eax
 804ad73:	83 f8 2d             	cmp    $0x2d,%eax
 804ad76:	0f 85 9f 00 00 00    	jne    804ae1b <Stmt+0x228>
 804ad7c:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad7f:	8b 40 2c             	mov    0x2c(%eax),%eax
 804ad82:	83 ec 0c             	sub    $0xc,%esp
 804ad85:	50                   	push   %eax
 804ad86:	e8 68 fe ff ff       	call   804abf3 <Stmt>
 804ad8b:	83 c4 10             	add    $0x10,%esp
 804ad8e:	e9 88 00 00 00       	jmp    804ae1b <Stmt+0x228>
 804ad93:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad96:	8b 40 1c             	mov    0x1c(%eax),%eax
 804ad99:	83 ec 0c             	sub    $0xc,%esp
 804ad9c:	50                   	push   %eax
 804ad9d:	e8 0a 03 00 00       	call   804b0ac <Exp>
 804ada2:	83 c4 10             	add    $0x10,%esp
 804ada5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ada8:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804adac:	74 3d                	je     804adeb <Stmt+0x1f8>
 804adae:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804adb1:	8b 00                	mov    (%eax),%eax
 804adb3:	85 c0                	test   %eax,%eax
 804adb5:	75 0a                	jne    804adc1 <Stmt+0x1ce>
 804adb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804adba:	8b 40 04             	mov    0x4(%eax),%eax
 804adbd:	85 c0                	test   %eax,%eax
 804adbf:	74 2a                	je     804adeb <Stmt+0x1f8>
 804adc1:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804adc6:	83 c0 01             	add    $0x1,%eax
 804adc9:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804adce:	8b 45 08             	mov    0x8(%ebp),%eax
 804add1:	8b 40 1c             	mov    0x1c(%eax),%eax
 804add4:	8b 00                	mov    (%eax),%eax
 804add6:	68 60 5e 05 08       	push   $0x8055e60
 804addb:	50                   	push   %eax
 804addc:	6a 07                	push   $0x7
 804adde:	68 41 5e 05 08       	push   $0x8055e41
 804ade3:	e8 f8 d9 ff ff       	call   80487e0 <printf@plt>
 804ade8:	83 c4 10             	add    $0x10,%esp
 804adeb:	8b 45 08             	mov    0x8(%ebp),%eax
 804adee:	8b 40 24             	mov    0x24(%eax),%eax
 804adf1:	83 ec 0c             	sub    $0xc,%esp
 804adf4:	50                   	push   %eax
 804adf5:	e8 f9 fd ff ff       	call   804abf3 <Stmt>
 804adfa:	83 c4 10             	add    $0x10,%esp
 804adfd:	eb 1d                	jmp    804ae1c <Stmt+0x229>
 804adff:	68 8c 62 05 08       	push   $0x805628c
 804ae04:	68 5f 01 00 00       	push   $0x15f
 804ae09:	68 ad 5d 05 08       	push   $0x8055dad
 804ae0e:	68 b7 5d 05 08       	push   $0x8055db7
 804ae13:	e8 d8 db ff ff       	call   80489f0 <__assert_fail@plt>
 804ae18:	90                   	nop
 804ae19:	eb 01                	jmp    804ae1c <Stmt+0x229>
 804ae1b:	90                   	nop
 804ae1c:	90                   	nop
 804ae1d:	c9                   	leave  
 804ae1e:	c3                   	ret    

0804ae1f <DefList>:
 804ae1f:	55                   	push   %ebp
 804ae20:	89 e5                	mov    %esp,%ebp
 804ae22:	83 ec 18             	sub    $0x18,%esp
 804ae25:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ae29:	75 07                	jne    804ae32 <DefList+0x13>
 804ae2b:	b8 00 00 00 00       	mov    $0x0,%eax
 804ae30:	eb 59                	jmp    804ae8b <DefList+0x6c>
 804ae32:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae35:	8b 40 14             	mov    0x14(%eax),%eax
 804ae38:	83 ec 04             	sub    $0x4,%esp
 804ae3b:	ff 75 10             	pushl  0x10(%ebp)
 804ae3e:	ff 75 0c             	pushl  0xc(%ebp)
 804ae41:	50                   	push   %eax
 804ae42:	e8 46 00 00 00       	call   804ae8d <Def>
 804ae47:	83 c4 10             	add    $0x10,%esp
 804ae4a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae4d:	8b 40 10             	mov    0x10(%eax),%eax
 804ae50:	83 f8 02             	cmp    $0x2,%eax
 804ae53:	75 33                	jne    804ae88 <DefList+0x69>
 804ae55:	8b 45 10             	mov    0x10(%ebp),%eax
 804ae58:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ae5b:	eb 09                	jmp    804ae66 <DefList+0x47>
 804ae5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ae60:	8b 40 08             	mov    0x8(%eax),%eax
 804ae63:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ae66:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ae69:	8b 40 08             	mov    0x8(%eax),%eax
 804ae6c:	85 c0                	test   %eax,%eax
 804ae6e:	75 ed                	jne    804ae5d <DefList+0x3e>
 804ae70:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae73:	8b 40 18             	mov    0x18(%eax),%eax
 804ae76:	83 ec 04             	sub    $0x4,%esp
 804ae79:	ff 75 10             	pushl  0x10(%ebp)
 804ae7c:	ff 75 0c             	pushl  0xc(%ebp)
 804ae7f:	50                   	push   %eax
 804ae80:	e8 9a ff ff ff       	call   804ae1f <DefList>
 804ae85:	83 c4 10             	add    $0x10,%esp
 804ae88:	8b 45 10             	mov    0x10(%ebp),%eax
 804ae8b:	c9                   	leave  
 804ae8c:	c3                   	ret    

0804ae8d <Def>:
 804ae8d:	55                   	push   %ebp
 804ae8e:	89 e5                	mov    %esp,%ebp
 804ae90:	83 ec 18             	sub    $0x18,%esp
 804ae93:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae96:	8b 40 14             	mov    0x14(%eax),%eax
 804ae99:	83 ec 0c             	sub    $0xc,%esp
 804ae9c:	50                   	push   %eax
 804ae9d:	e8 aa f7 ff ff       	call   804a64c <Specifier>
 804aea2:	83 c4 10             	add    $0x10,%esp
 804aea5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aea8:	8b 45 08             	mov    0x8(%ebp),%eax
 804aeab:	8b 40 18             	mov    0x18(%eax),%eax
 804aeae:	ff 75 10             	pushl  0x10(%ebp)
 804aeb1:	ff 75 0c             	pushl  0xc(%ebp)
 804aeb4:	ff 75 f4             	pushl  -0xc(%ebp)
 804aeb7:	50                   	push   %eax
 804aeb8:	e8 05 00 00 00       	call   804aec2 <DecList>
 804aebd:	83 c4 10             	add    $0x10,%esp
 804aec0:	c9                   	leave  
 804aec1:	c3                   	ret    

0804aec2 <DecList>:
 804aec2:	55                   	push   %ebp
 804aec3:	89 e5                	mov    %esp,%ebp
 804aec5:	83 ec 18             	sub    $0x18,%esp
 804aec8:	8b 45 08             	mov    0x8(%ebp),%eax
 804aecb:	8b 40 14             	mov    0x14(%eax),%eax
 804aece:	ff 75 14             	pushl  0x14(%ebp)
 804aed1:	ff 75 10             	pushl  0x10(%ebp)
 804aed4:	ff 75 0c             	pushl  0xc(%ebp)
 804aed7:	50                   	push   %eax
 804aed8:	e8 2e 00 00 00       	call   804af0b <Dec>
 804aedd:	83 c4 10             	add    $0x10,%esp
 804aee0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aee3:	8b 45 08             	mov    0x8(%ebp),%eax
 804aee6:	8b 40 10             	mov    0x10(%eax),%eax
 804aee9:	83 f8 03             	cmp    $0x3,%eax
 804aeec:	75 18                	jne    804af06 <DecList+0x44>
 804aeee:	8b 45 08             	mov    0x8(%ebp),%eax
 804aef1:	8b 40 1c             	mov    0x1c(%eax),%eax
 804aef4:	ff 75 14             	pushl  0x14(%ebp)
 804aef7:	ff 75 10             	pushl  0x10(%ebp)
 804aefa:	ff 75 0c             	pushl  0xc(%ebp)
 804aefd:	50                   	push   %eax
 804aefe:	e8 bf ff ff ff       	call   804aec2 <DecList>
 804af03:	83 c4 10             	add    $0x10,%esp
 804af06:	8b 45 14             	mov    0x14(%ebp),%eax
 804af09:	c9                   	leave  
 804af0a:	c3                   	ret    

0804af0b <Dec>:
 804af0b:	55                   	push   %ebp
 804af0c:	89 e5                	mov    %esp,%ebp
 804af0e:	83 ec 28             	sub    $0x28,%esp
 804af11:	8b 45 08             	mov    0x8(%ebp),%eax
 804af14:	8b 40 14             	mov    0x14(%eax),%eax
 804af17:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804af1a:	83 ec 08             	sub    $0x8,%esp
 804af1d:	ff 75 e4             	pushl  -0x1c(%ebp)
 804af20:	ff 75 0c             	pushl  0xc(%ebp)
 804af23:	e8 ac f9 ff ff       	call   804a8d4 <VarDec>
 804af28:	83 c4 10             	add    $0x10,%esp
 804af2b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804af2e:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
 804af32:	75 42                	jne    804af76 <Dec+0x6b>
 804af34:	83 ec 0c             	sub    $0xc,%esp
 804af37:	ff 75 e8             	pushl  -0x18(%ebp)
 804af3a:	e8 8a 9f 00 00       	call   8054ec9 <insertTable>
 804af3f:	83 c4 10             	add    $0x10,%esp
 804af42:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804af45:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 804af49:	75 2b                	jne    804af76 <Dec+0x6b>
 804af4b:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804af50:	83 c0 01             	add    $0x1,%eax
 804af53:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804af58:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804af5b:	8b 50 04             	mov    0x4(%eax),%edx
 804af5e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804af61:	8b 40 08             	mov    0x8(%eax),%eax
 804af64:	83 ec 04             	sub    $0x4,%esp
 804af67:	52                   	push   %edx
 804af68:	50                   	push   %eax
 804af69:	68 70 5d 05 08       	push   $0x8055d70
 804af6e:	e8 6d d8 ff ff       	call   80487e0 <printf@plt>
 804af73:	83 c4 10             	add    $0x10,%esp
 804af76:	83 ec 0c             	sub    $0xc,%esp
 804af79:	6a 0c                	push   $0xc
 804af7b:	e8 20 d9 ff ff       	call   80488a0 <malloc@plt>
 804af80:	83 c4 10             	add    $0x10,%esp
 804af83:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804af86:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804af89:	8b 50 04             	mov    0x4(%eax),%edx
 804af8c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804af8f:	89 10                	mov    %edx,(%eax)
 804af91:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804af94:	8b 50 0c             	mov    0xc(%eax),%edx
 804af97:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804af9a:	89 50 04             	mov    %edx,0x4(%eax)
 804af9d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804afa0:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804afa7:	8b 45 14             	mov    0x14(%ebp),%eax
 804afaa:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804afad:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804afb1:	75 6b                	jne    804b01e <Dec+0x113>
 804afb3:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804afb7:	74 65                	je     804b01e <Dec+0x113>
 804afb9:	eb 50                	jmp    804b00b <Dec+0x100>
 804afbb:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804afbe:	8b 50 04             	mov    0x4(%eax),%edx
 804afc1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804afc4:	8b 00                	mov    (%eax),%eax
 804afc6:	83 ec 08             	sub    $0x8,%esp
 804afc9:	52                   	push   %edx
 804afca:	50                   	push   %eax
 804afcb:	e8 00 d8 ff ff       	call   80487d0 <strcmp@plt>
 804afd0:	83 c4 10             	add    $0x10,%esp
 804afd3:	85 c0                	test   %eax,%eax
 804afd5:	75 2b                	jne    804b002 <Dec+0xf7>
 804afd7:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804afdc:	83 c0 01             	add    $0x1,%eax
 804afdf:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804afe4:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804afe7:	8b 50 04             	mov    0x4(%eax),%edx
 804afea:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804afed:	8b 40 08             	mov    0x8(%eax),%eax
 804aff0:	83 ec 04             	sub    $0x4,%esp
 804aff3:	52                   	push   %edx
 804aff4:	50                   	push   %eax
 804aff5:	68 e0 5e 05 08       	push   $0x8055ee0
 804affa:	e8 e1 d7 ff ff       	call   80487e0 <printf@plt>
 804afff:	83 c4 10             	add    $0x10,%esp
 804b002:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b005:	8b 40 08             	mov    0x8(%eax),%eax
 804b008:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b00b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b00e:	8b 40 08             	mov    0x8(%eax),%eax
 804b011:	85 c0                	test   %eax,%eax
 804b013:	75 a6                	jne    804afbb <Dec+0xb0>
 804b015:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b018:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b01b:	89 50 08             	mov    %edx,0x8(%eax)
 804b01e:	8b 45 08             	mov    0x8(%ebp),%eax
 804b021:	8b 40 10             	mov    0x10(%eax),%eax
 804b024:	83 f8 03             	cmp    $0x3,%eax
 804b027:	75 7e                	jne    804b0a7 <Dec+0x19c>
 804b029:	8b 45 08             	mov    0x8(%ebp),%eax
 804b02c:	8b 40 1c             	mov    0x1c(%eax),%eax
 804b02f:	83 ec 0c             	sub    $0xc,%esp
 804b032:	50                   	push   %eax
 804b033:	e8 74 00 00 00       	call   804b0ac <Exp>
 804b038:	83 c4 10             	add    $0x10,%esp
 804b03b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b03e:	83 ec 08             	sub    $0x8,%esp
 804b041:	ff 75 f4             	pushl  -0xc(%ebp)
 804b044:	ff 75 0c             	pushl  0xc(%ebp)
 804b047:	e8 72 a1 00 00       	call   80551be <compareType>
 804b04c:	83 c4 10             	add    $0x10,%esp
 804b04f:	85 c0                	test   %eax,%eax
 804b051:	75 27                	jne    804b07a <Dec+0x16f>
 804b053:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b058:	83 c0 01             	add    $0x1,%eax
 804b05b:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b060:	8b 45 08             	mov    0x8(%ebp),%eax
 804b063:	8b 00                	mov    (%eax),%eax
 804b065:	68 14 5f 05 08       	push   $0x8055f14
 804b06a:	50                   	push   %eax
 804b06b:	6a 05                	push   $0x5
 804b06d:	68 41 5e 05 08       	push   $0x8055e41
 804b072:	e8 69 d7 ff ff       	call   80487e0 <printf@plt>
 804b077:	83 c4 10             	add    $0x10,%esp
 804b07a:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804b07e:	75 27                	jne    804b0a7 <Dec+0x19c>
 804b080:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b085:	83 c0 01             	add    $0x1,%eax
 804b088:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b08d:	8b 45 08             	mov    0x8(%ebp),%eax
 804b090:	8b 00                	mov    (%eax),%eax
 804b092:	68 34 5f 05 08       	push   $0x8055f34
 804b097:	50                   	push   %eax
 804b098:	6a 0f                	push   $0xf
 804b09a:	68 41 5e 05 08       	push   $0x8055e41
 804b09f:	e8 3c d7 ff ff       	call   80487e0 <printf@plt>
 804b0a4:	83 c4 10             	add    $0x10,%esp
 804b0a7:	8b 45 14             	mov    0x14(%ebp),%eax
 804b0aa:	c9                   	leave  
 804b0ab:	c3                   	ret    

0804b0ac <Exp>:
 804b0ac:	55                   	push   %ebp
 804b0ad:	89 e5                	mov    %esp,%ebp
 804b0af:	83 ec 38             	sub    $0x38,%esp
 804b0b2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b0b6:	75 0a                	jne    804b0c2 <Exp+0x16>
 804b0b8:	b8 00 00 00 00       	mov    $0x0,%eax
 804b0bd:	e9 48 06 00 00       	jmp    804b70a <Exp+0x65e>
 804b0c2:	8b 45 08             	mov    0x8(%ebp),%eax
 804b0c5:	8b 40 14             	mov    0x14(%eax),%eax
 804b0c8:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804b0cb:	8b 45 08             	mov    0x8(%ebp),%eax
 804b0ce:	8b 40 18             	mov    0x18(%eax),%eax
 804b0d1:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b0d4:	8b 45 08             	mov    0x8(%ebp),%eax
 804b0d7:	8b 40 1c             	mov    0x1c(%eax),%eax
 804b0da:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b0dd:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b0e4:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 804b0eb:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b0ee:	8b 40 04             	mov    0x4(%eax),%eax
 804b0f1:	83 f8 32             	cmp    $0x32,%eax
 804b0f4:	0f 87 e2 05 00 00    	ja     804b6dc <Exp+0x630>
 804b0fa:	8b 04 85 78 61 05 08 	mov    0x8056178(,%eax,4),%eax
 804b101:	ff e0                	jmp    *%eax
 804b103:	83 ec 0c             	sub    $0xc,%esp
 804b106:	ff 75 dc             	pushl  -0x24(%ebp)
 804b109:	e8 9e ff ff ff       	call   804b0ac <Exp>
 804b10e:	83 c4 10             	add    $0x10,%esp
 804b111:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b114:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b117:	8b 40 04             	mov    0x4(%eax),%eax
 804b11a:	83 f8 0a             	cmp    $0xa,%eax
 804b11d:	0f 85 bc 00 00 00    	jne    804b1df <Exp+0x133>
 804b123:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804b127:	74 45                	je     804b16e <Exp+0xc2>
 804b129:	83 ec 0c             	sub    $0xc,%esp
 804b12c:	ff 75 dc             	pushl  -0x24(%ebp)
 804b12f:	e8 d8 05 00 00       	call   804b70c <isLeftVar>
 804b134:	83 c4 10             	add    $0x10,%esp
 804b137:	85 c0                	test   %eax,%eax
 804b139:	75 33                	jne    804b16e <Exp+0xc2>
 804b13b:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b140:	83 c0 01             	add    $0x1,%eax
 804b143:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b148:	8b 45 08             	mov    0x8(%ebp),%eax
 804b14b:	8b 00                	mov    (%eax),%eax
 804b14d:	68 60 5f 05 08       	push   $0x8055f60
 804b152:	50                   	push   %eax
 804b153:	6a 06                	push   $0x6
 804b155:	68 41 5e 05 08       	push   $0x8055e41
 804b15a:	e8 81 d6 ff ff       	call   80487e0 <printf@plt>
 804b15f:	83 c4 10             	add    $0x10,%esp
 804b162:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b169:	e9 24 03 00 00       	jmp    804b492 <Exp+0x3e6>
 804b16e:	83 ec 0c             	sub    $0xc,%esp
 804b171:	ff 75 e4             	pushl  -0x1c(%ebp)
 804b174:	e8 33 ff ff ff       	call   804b0ac <Exp>
 804b179:	83 c4 10             	add    $0x10,%esp
 804b17c:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b17f:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804b183:	0f 84 7a 05 00 00    	je     804b703 <Exp+0x657>
 804b189:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804b18d:	0f 84 70 05 00 00    	je     804b703 <Exp+0x657>
 804b193:	83 ec 08             	sub    $0x8,%esp
 804b196:	ff 75 e8             	pushl  -0x18(%ebp)
 804b199:	ff 75 d4             	pushl  -0x2c(%ebp)
 804b19c:	e8 1d a0 00 00       	call   80551be <compareType>
 804b1a1:	83 c4 10             	add    $0x10,%esp
 804b1a4:	85 c0                	test   %eax,%eax
 804b1a6:	0f 85 57 05 00 00    	jne    804b703 <Exp+0x657>
 804b1ac:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b1b1:	83 c0 01             	add    $0x1,%eax
 804b1b4:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b1b9:	8b 45 08             	mov    0x8(%ebp),%eax
 804b1bc:	8b 00                	mov    (%eax),%eax
 804b1be:	68 14 5f 05 08       	push   $0x8055f14
 804b1c3:	50                   	push   %eax
 804b1c4:	6a 05                	push   $0x5
 804b1c6:	68 41 5e 05 08       	push   $0x8055e41
 804b1cb:	e8 10 d6 ff ff       	call   80487e0 <printf@plt>
 804b1d0:	83 c4 10             	add    $0x10,%esp
 804b1d3:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b1da:	e9 24 05 00 00       	jmp    804b703 <Exp+0x657>
 804b1df:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b1e2:	8b 40 04             	mov    0x4(%eax),%eax
 804b1e5:	83 f8 10             	cmp    $0x10,%eax
 804b1e8:	74 0b                	je     804b1f5 <Exp+0x149>
 804b1ea:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b1ed:	8b 40 04             	mov    0x4(%eax),%eax
 804b1f0:	83 f8 11             	cmp    $0x11,%eax
 804b1f3:	75 6a                	jne    804b25f <Exp+0x1b3>
 804b1f5:	83 ec 0c             	sub    $0xc,%esp
 804b1f8:	ff 75 e4             	pushl  -0x1c(%ebp)
 804b1fb:	e8 ac fe ff ff       	call   804b0ac <Exp>
 804b200:	83 c4 10             	add    $0x10,%esp
 804b203:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b206:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804b20a:	74 09                	je     804b215 <Exp+0x169>
 804b20c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b20f:	8b 00                	mov    (%eax),%eax
 804b211:	85 c0                	test   %eax,%eax
 804b213:	75 17                	jne    804b22c <Exp+0x180>
 804b215:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804b219:	0f 84 6c 02 00 00    	je     804b48b <Exp+0x3df>
 804b21f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804b222:	8b 00                	mov    (%eax),%eax
 804b224:	85 c0                	test   %eax,%eax
 804b226:	0f 84 5f 02 00 00    	je     804b48b <Exp+0x3df>
 804b22c:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b231:	83 c0 01             	add    $0x1,%eax
 804b234:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b239:	8b 45 08             	mov    0x8(%ebp),%eax
 804b23c:	8b 00                	mov    (%eax),%eax
 804b23e:	68 98 5f 05 08       	push   $0x8055f98
 804b243:	50                   	push   %eax
 804b244:	6a 07                	push   $0x7
 804b246:	68 41 5e 05 08       	push   $0x8055e41
 804b24b:	e8 90 d5 ff ff       	call   80487e0 <printf@plt>
 804b250:	83 c4 10             	add    $0x10,%esp
 804b253:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b25a:	e9 2c 02 00 00       	jmp    804b48b <Exp+0x3df>
 804b25f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b262:	8b 40 04             	mov    0x4(%eax),%eax
 804b265:	83 f8 0c             	cmp    $0xc,%eax
 804b268:	74 2c                	je     804b296 <Exp+0x1ea>
 804b26a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b26d:	8b 40 04             	mov    0x4(%eax),%eax
 804b270:	83 f8 0d             	cmp    $0xd,%eax
 804b273:	74 21                	je     804b296 <Exp+0x1ea>
 804b275:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b278:	8b 40 04             	mov    0x4(%eax),%eax
 804b27b:	83 f8 0e             	cmp    $0xe,%eax
 804b27e:	74 16                	je     804b296 <Exp+0x1ea>
 804b280:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b283:	8b 40 04             	mov    0x4(%eax),%eax
 804b286:	83 f8 0f             	cmp    $0xf,%eax
 804b289:	74 0b                	je     804b296 <Exp+0x1ea>
 804b28b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b28e:	8b 40 04             	mov    0x4(%eax),%eax
 804b291:	83 f8 0b             	cmp    $0xb,%eax
 804b294:	75 70                	jne    804b306 <Exp+0x25a>
 804b296:	83 ec 0c             	sub    $0xc,%esp
 804b299:	ff 75 e4             	pushl  -0x1c(%ebp)
 804b29c:	e8 0b fe ff ff       	call   804b0ac <Exp>
 804b2a1:	83 c4 10             	add    $0x10,%esp
 804b2a4:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b2a7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804b2ab:	0f 84 e0 01 00 00    	je     804b491 <Exp+0x3e5>
 804b2b1:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b2b4:	8b 00                	mov    (%eax),%eax
 804b2b6:	85 c0                	test   %eax,%eax
 804b2b8:	75 19                	jne    804b2d3 <Exp+0x227>
 804b2ba:	83 ec 08             	sub    $0x8,%esp
 804b2bd:	ff 75 e8             	pushl  -0x18(%ebp)
 804b2c0:	ff 75 d4             	pushl  -0x2c(%ebp)
 804b2c3:	e8 f6 9e 00 00       	call   80551be <compareType>
 804b2c8:	83 c4 10             	add    $0x10,%esp
 804b2cb:	85 c0                	test   %eax,%eax
 804b2cd:	0f 85 be 01 00 00    	jne    804b491 <Exp+0x3e5>
 804b2d3:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b2d8:	83 c0 01             	add    $0x1,%eax
 804b2db:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b2e0:	8b 45 08             	mov    0x8(%ebp),%eax
 804b2e3:	8b 00                	mov    (%eax),%eax
 804b2e5:	68 98 5f 05 08       	push   $0x8055f98
 804b2ea:	50                   	push   %eax
 804b2eb:	6a 07                	push   $0x7
 804b2ed:	68 41 5e 05 08       	push   $0x8055e41
 804b2f2:	e8 e9 d4 ff ff       	call   80487e0 <printf@plt>
 804b2f7:	83 c4 10             	add    $0x10,%esp
 804b2fa:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b301:	e9 8b 01 00 00       	jmp    804b491 <Exp+0x3e5>
 804b306:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b309:	8b 40 04             	mov    0x4(%eax),%eax
 804b30c:	83 f8 16             	cmp    $0x16,%eax
 804b30f:	0f 85 a0 00 00 00    	jne    804b3b5 <Exp+0x309>
 804b315:	83 ec 0c             	sub    $0xc,%esp
 804b318:	ff 75 e4             	pushl  -0x1c(%ebp)
 804b31b:	e8 8c fd ff ff       	call   804b0ac <Exp>
 804b320:	83 c4 10             	add    $0x10,%esp
 804b323:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b326:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b329:	8b 00                	mov    (%eax),%eax
 804b32b:	83 f8 01             	cmp    $0x1,%eax
 804b32e:	74 2f                	je     804b35f <Exp+0x2b3>
 804b330:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b335:	83 c0 01             	add    $0x1,%eax
 804b338:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b33d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b340:	8b 00                	mov    (%eax),%eax
 804b342:	83 ec 08             	sub    $0x8,%esp
 804b345:	50                   	push   %eax
 804b346:	68 b8 5f 05 08       	push   $0x8055fb8
 804b34b:	e8 90 d4 ff ff       	call   80487e0 <printf@plt>
 804b350:	83 c4 10             	add    $0x10,%esp
 804b353:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b35a:	e9 a4 03 00 00       	jmp    804b703 <Exp+0x657>
 804b35f:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804b363:	74 42                	je     804b3a7 <Exp+0x2fb>
 804b365:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804b368:	8b 00                	mov    (%eax),%eax
 804b36a:	85 c0                	test   %eax,%eax
 804b36c:	75 0a                	jne    804b378 <Exp+0x2cc>
 804b36e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804b371:	8b 40 04             	mov    0x4(%eax),%eax
 804b374:	85 c0                	test   %eax,%eax
 804b376:	74 2f                	je     804b3a7 <Exp+0x2fb>
 804b378:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b37d:	83 c0 01             	add    $0x1,%eax
 804b380:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b385:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b388:	8b 00                	mov    (%eax),%eax
 804b38a:	83 ec 08             	sub    $0x8,%esp
 804b38d:	50                   	push   %eax
 804b38e:	68 f0 5f 05 08       	push   $0x8055ff0
 804b393:	e8 48 d4 ff ff       	call   80487e0 <printf@plt>
 804b398:	83 c4 10             	add    $0x10,%esp
 804b39b:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b3a2:	e9 eb 00 00 00       	jmp    804b492 <Exp+0x3e6>
 804b3a7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b3aa:	8b 40 04             	mov    0x4(%eax),%eax
 804b3ad:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b3b0:	e9 4e 03 00 00       	jmp    804b703 <Exp+0x657>
 804b3b5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b3b8:	8b 40 04             	mov    0x4(%eax),%eax
 804b3bb:	83 f8 12             	cmp    $0x12,%eax
 804b3be:	0f 85 ae 00 00 00    	jne    804b472 <Exp+0x3c6>
 804b3c4:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804b3c8:	74 32                	je     804b3fc <Exp+0x350>
 804b3ca:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b3cd:	8b 00                	mov    (%eax),%eax
 804b3cf:	83 f8 02             	cmp    $0x2,%eax
 804b3d2:	74 28                	je     804b3fc <Exp+0x350>
 804b3d4:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b3d9:	83 c0 01             	add    $0x1,%eax
 804b3dc:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b3e1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b3e4:	8b 00                	mov    (%eax),%eax
 804b3e6:	83 ec 08             	sub    $0x8,%esp
 804b3e9:	50                   	push   %eax
 804b3ea:	68 2c 60 05 08       	push   $0x805602c
 804b3ef:	e8 ec d3 ff ff       	call   80487e0 <printf@plt>
 804b3f4:	83 c4 10             	add    $0x10,%esp
 804b3f7:	e9 96 00 00 00       	jmp    804b492 <Exp+0x3e6>
 804b3fc:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804b400:	75 0c                	jne    804b40e <Exp+0x362>
 804b402:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b409:	e9 f5 02 00 00       	jmp    804b703 <Exp+0x657>
 804b40e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b411:	8b 40 08             	mov    0x8(%eax),%eax
 804b414:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b417:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b41a:	8b 40 04             	mov    0x4(%eax),%eax
 804b41d:	83 ec 08             	sub    $0x8,%esp
 804b420:	ff 75 ec             	pushl  -0x14(%ebp)
 804b423:	50                   	push   %eax
 804b424:	e8 57 9d 00 00       	call   8055180 <structureField>
 804b429:	83 c4 10             	add    $0x10,%esp
 804b42c:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b42f:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804b433:	75 32                	jne    804b467 <Exp+0x3bb>
 804b435:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b43a:	83 c0 01             	add    $0x1,%eax
 804b43d:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b442:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b445:	8b 00                	mov    (%eax),%eax
 804b447:	83 ec 04             	sub    $0x4,%esp
 804b44a:	ff 75 ec             	pushl  -0x14(%ebp)
 804b44d:	50                   	push   %eax
 804b44e:	68 5c 60 05 08       	push   $0x805605c
 804b453:	e8 88 d3 ff ff       	call   80487e0 <printf@plt>
 804b458:	83 c4 10             	add    $0x10,%esp
 804b45b:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b462:	e9 9c 02 00 00       	jmp    804b703 <Exp+0x657>
 804b467:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804b46a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b46d:	e9 91 02 00 00       	jmp    804b703 <Exp+0x657>
 804b472:	68 94 62 05 08       	push   $0x8056294
 804b477:	68 25 02 00 00       	push   $0x225
 804b47c:	68 ad 5d 05 08       	push   $0x8055dad
 804b481:	68 b7 5d 05 08       	push   $0x8055db7
 804b486:	e8 65 d5 ff ff       	call   80489f0 <__assert_fail@plt>
 804b48b:	90                   	nop
 804b48c:	e9 72 02 00 00       	jmp    804b703 <Exp+0x657>
 804b491:	90                   	nop
 804b492:	e9 6c 02 00 00       	jmp    804b703 <Exp+0x657>
 804b497:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804b49b:	75 79                	jne    804b516 <Exp+0x46a>
 804b49d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b4a0:	8b 40 08             	mov    0x8(%eax),%eax
 804b4a3:	83 ec 0c             	sub    $0xc,%esp
 804b4a6:	50                   	push   %eax
 804b4a7:	e8 a5 99 00 00       	call   8054e51 <searchTable>
 804b4ac:	83 c4 10             	add    $0x10,%esp
 804b4af:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b4b2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804b4b6:	75 36                	jne    804b4ee <Exp+0x442>
 804b4b8:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b4bd:	83 c0 01             	add    $0x1,%eax
 804b4c0:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b4c5:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b4c8:	8b 50 08             	mov    0x8(%eax),%edx
 804b4cb:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4ce:	8b 00                	mov    (%eax),%eax
 804b4d0:	83 ec 04             	sub    $0x4,%esp
 804b4d3:	52                   	push   %edx
 804b4d4:	50                   	push   %eax
 804b4d5:	68 90 60 05 08       	push   $0x8056090
 804b4da:	e8 01 d3 ff ff       	call   80487e0 <printf@plt>
 804b4df:	83 c4 10             	add    $0x10,%esp
 804b4e2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b4e9:	e9 18 02 00 00       	jmp    804b706 <Exp+0x65a>
 804b4ee:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b4f1:	8b 00                	mov    (%eax),%eax
 804b4f3:	83 f8 01             	cmp    $0x1,%eax
 804b4f6:	75 10                	jne    804b508 <Exp+0x45c>
 804b4f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b4fb:	8b 40 0c             	mov    0xc(%eax),%eax
 804b4fe:	8b 00                	mov    (%eax),%eax
 804b500:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b503:	e9 fe 01 00 00       	jmp    804b706 <Exp+0x65a>
 804b508:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b50b:	8b 40 0c             	mov    0xc(%eax),%eax
 804b50e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b511:	e9 f0 01 00 00       	jmp    804b706 <Exp+0x65a>
 804b516:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b519:	8b 40 04             	mov    0x4(%eax),%eax
 804b51c:	83 f8 14             	cmp    $0x14,%eax
 804b51f:	0f 85 e1 01 00 00    	jne    804b706 <Exp+0x65a>
 804b525:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b528:	8b 40 08             	mov    0x8(%eax),%eax
 804b52b:	83 ec 0c             	sub    $0xc,%esp
 804b52e:	50                   	push   %eax
 804b52f:	e8 1d 99 00 00       	call   8054e51 <searchTable>
 804b534:	83 c4 10             	add    $0x10,%esp
 804b537:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b53a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804b53e:	75 36                	jne    804b576 <Exp+0x4ca>
 804b540:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b545:	83 c0 01             	add    $0x1,%eax
 804b548:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b54d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b550:	8b 50 08             	mov    0x8(%eax),%edx
 804b553:	8b 45 08             	mov    0x8(%ebp),%eax
 804b556:	8b 00                	mov    (%eax),%eax
 804b558:	83 ec 04             	sub    $0x4,%esp
 804b55b:	52                   	push   %edx
 804b55c:	50                   	push   %eax
 804b55d:	68 c4 60 05 08       	push   $0x80560c4
 804b562:	e8 79 d2 ff ff       	call   80487e0 <printf@plt>
 804b567:	83 c4 10             	add    $0x10,%esp
 804b56a:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b571:	e9 90 01 00 00       	jmp    804b706 <Exp+0x65a>
 804b576:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b579:	8b 00                	mov    (%eax),%eax
 804b57b:	83 f8 01             	cmp    $0x1,%eax
 804b57e:	74 36                	je     804b5b6 <Exp+0x50a>
 804b580:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b585:	83 c0 01             	add    $0x1,%eax
 804b588:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b58d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b590:	8b 50 04             	mov    0x4(%eax),%edx
 804b593:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b596:	8b 00                	mov    (%eax),%eax
 804b598:	83 ec 04             	sub    $0x4,%esp
 804b59b:	52                   	push   %edx
 804b59c:	50                   	push   %eax
 804b59d:	68 f8 60 05 08       	push   $0x80560f8
 804b5a2:	e8 39 d2 ff ff       	call   80487e0 <printf@plt>
 804b5a7:	83 c4 10             	add    $0x10,%esp
 804b5aa:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 804b5b1:	e9 50 01 00 00       	jmp    804b706 <Exp+0x65a>
 804b5b6:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804b5bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b5c0:	8b 40 0c             	mov    0xc(%eax),%eax
 804b5c3:	8b 00                	mov    (%eax),%eax
 804b5c5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b5c8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b5cb:	8b 40 04             	mov    0x4(%eax),%eax
 804b5ce:	83 f8 33             	cmp    $0x33,%eax
 804b5d1:	75 15                	jne    804b5e8 <Exp+0x53c>
 804b5d3:	8b 45 08             	mov    0x8(%ebp),%eax
 804b5d6:	8b 40 1c             	mov    0x1c(%eax),%eax
 804b5d9:	83 ec 0c             	sub    $0xc,%esp
 804b5dc:	50                   	push   %eax
 804b5dd:	e8 23 02 00 00       	call   804b805 <Args>
 804b5e2:	83 c4 10             	add    $0x10,%esp
 804b5e5:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804b5e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b5eb:	8b 40 0c             	mov    0xc(%eax),%eax
 804b5ee:	8b 40 04             	mov    0x4(%eax),%eax
 804b5f1:	83 ec 08             	sub    $0x8,%esp
 804b5f4:	50                   	push   %eax
 804b5f5:	ff 75 d8             	pushl  -0x28(%ebp)
 804b5f8:	e8 cd 9c 00 00       	call   80552ca <compareArgs>
 804b5fd:	83 c4 10             	add    $0x10,%esp
 804b600:	85 c0                	test   %eax,%eax
 804b602:	0f 85 fe 00 00 00    	jne    804b706 <Exp+0x65a>
 804b608:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b60d:	83 c0 01             	add    $0x1,%eax
 804b610:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b615:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b618:	8b 00                	mov    (%eax),%eax
 804b61a:	83 ec 08             	sub    $0x8,%esp
 804b61d:	50                   	push   %eax
 804b61e:	68 2c 61 05 08       	push   $0x805612c
 804b623:	e8 b8 d1 ff ff       	call   80487e0 <printf@plt>
 804b628:	83 c4 10             	add    $0x10,%esp
 804b62b:	83 ec 0c             	sub    $0xc,%esp
 804b62e:	ff 75 f4             	pushl  -0xc(%ebp)
 804b631:	e8 03 9f 00 00       	call   8055539 <printFuncType>
 804b636:	83 c4 10             	add    $0x10,%esp
 804b639:	83 ec 0c             	sub    $0xc,%esp
 804b63c:	68 50 61 05 08       	push   $0x8056150
 804b641:	e8 9a d1 ff ff       	call   80487e0 <printf@plt>
 804b646:	83 c4 10             	add    $0x10,%esp
 804b649:	83 ec 0c             	sub    $0xc,%esp
 804b64c:	ff 75 d8             	pushl  -0x28(%ebp)
 804b64f:	e8 69 9d 00 00       	call   80553bd <printFieldList>
 804b654:	83 c4 10             	add    $0x10,%esp
 804b657:	83 ec 0c             	sub    $0xc,%esp
 804b65a:	68 74 61 05 08       	push   $0x8056174
 804b65f:	e8 4c d2 ff ff       	call   80488b0 <puts@plt>
 804b664:	83 c4 10             	add    $0x10,%esp
 804b667:	e9 9a 00 00 00       	jmp    804b706 <Exp+0x65a>
 804b66c:	83 ec 0c             	sub    $0xc,%esp
 804b66f:	6a 0c                	push   $0xc
 804b671:	e8 2a d2 ff ff       	call   80488a0 <malloc@plt>
 804b676:	83 c4 10             	add    $0x10,%esp
 804b679:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b67c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b67f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804b685:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b688:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804b68f:	eb 76                	jmp    804b707 <Exp+0x65b>
 804b691:	83 ec 0c             	sub    $0xc,%esp
 804b694:	6a 0c                	push   $0xc
 804b696:	e8 05 d2 ff ff       	call   80488a0 <malloc@plt>
 804b69b:	83 c4 10             	add    $0x10,%esp
 804b69e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b6a1:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b6a4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804b6aa:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b6ad:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 804b6b4:	eb 51                	jmp    804b707 <Exp+0x65b>
 804b6b6:	83 ec 0c             	sub    $0xc,%esp
 804b6b9:	ff 75 e0             	pushl  -0x20(%ebp)
 804b6bc:	e8 eb f9 ff ff       	call   804b0ac <Exp>
 804b6c1:	83 c4 10             	add    $0x10,%esp
 804b6c4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b6c7:	eb 3e                	jmp    804b707 <Exp+0x65b>
 804b6c9:	83 ec 0c             	sub    $0xc,%esp
 804b6cc:	ff 75 e0             	pushl  -0x20(%ebp)
 804b6cf:	e8 d8 f9 ff ff       	call   804b0ac <Exp>
 804b6d4:	83 c4 10             	add    $0x10,%esp
 804b6d7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b6da:	eb 2b                	jmp    804b707 <Exp+0x65b>
 804b6dc:	83 ec 0c             	sub    $0xc,%esp
 804b6df:	ff 75 08             	pushl  0x8(%ebp)
 804b6e2:	e8 7e d6 ff ff       	call   8048d65 <printTree>
 804b6e7:	83 c4 10             	add    $0x10,%esp
 804b6ea:	68 94 62 05 08       	push   $0x8056294
 804b6ef:	68 74 02 00 00       	push   $0x274
 804b6f4:	68 ad 5d 05 08       	push   $0x8055dad
 804b6f9:	68 b7 5d 05 08       	push   $0x8055db7
 804b6fe:	e8 ed d2 ff ff       	call   80489f0 <__assert_fail@plt>
 804b703:	90                   	nop
 804b704:	eb 01                	jmp    804b707 <Exp+0x65b>
 804b706:	90                   	nop
 804b707:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804b70a:	c9                   	leave  
 804b70b:	c3                   	ret    

0804b70c <isLeftVar>:
 804b70c:	55                   	push   %ebp
 804b70d:	89 e5                	mov    %esp,%ebp
 804b70f:	83 ec 18             	sub    $0x18,%esp
 804b712:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804b716:	75 0a                	jne    804b722 <isLeftVar+0x16>
 804b718:	b8 01 00 00 00       	mov    $0x1,%eax
 804b71d:	e9 e1 00 00 00       	jmp    804b803 <isLeftVar+0xf7>
 804b722:	8b 45 08             	mov    0x8(%ebp),%eax
 804b725:	8b 40 14             	mov    0x14(%eax),%eax
 804b728:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b72b:	8b 45 08             	mov    0x8(%ebp),%eax
 804b72e:	8b 40 04             	mov    0x4(%eax),%eax
 804b731:	83 f8 03             	cmp    $0x3,%eax
 804b734:	75 36                	jne    804b76c <isLeftVar+0x60>
 804b736:	8b 45 08             	mov    0x8(%ebp),%eax
 804b739:	8b 40 08             	mov    0x8(%eax),%eax
 804b73c:	83 ec 0c             	sub    $0xc,%esp
 804b73f:	50                   	push   %eax
 804b740:	e8 0c 97 00 00       	call   8054e51 <searchTable>
 804b745:	83 c4 10             	add    $0x10,%esp
 804b748:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b74b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804b74f:	0f 84 a9 00 00 00    	je     804b7fe <isLeftVar+0xf2>
 804b755:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b758:	8b 00                	mov    (%eax),%eax
 804b75a:	85 c0                	test   %eax,%eax
 804b75c:	0f 85 9c 00 00 00    	jne    804b7fe <isLeftVar+0xf2>
 804b762:	b8 01 00 00 00       	mov    $0x1,%eax
 804b767:	e9 97 00 00 00       	jmp    804b803 <isLeftVar+0xf7>
 804b76c:	8b 45 08             	mov    0x8(%ebp),%eax
 804b76f:	8b 40 04             	mov    0x4(%eax),%eax
 804b772:	83 f8 32             	cmp    $0x32,%eax
 804b775:	75 3c                	jne    804b7b3 <isLeftVar+0xa7>
 804b777:	8b 45 08             	mov    0x8(%ebp),%eax
 804b77a:	8b 40 14             	mov    0x14(%eax),%eax
 804b77d:	8b 40 04             	mov    0x4(%eax),%eax
 804b780:	83 f8 03             	cmp    $0x3,%eax
 804b783:	75 2e                	jne    804b7b3 <isLeftVar+0xa7>
 804b785:	8b 45 08             	mov    0x8(%ebp),%eax
 804b788:	8b 40 14             	mov    0x14(%eax),%eax
 804b78b:	8b 40 08             	mov    0x8(%eax),%eax
 804b78e:	83 ec 0c             	sub    $0xc,%esp
 804b791:	50                   	push   %eax
 804b792:	e8 ba 96 00 00       	call   8054e51 <searchTable>
 804b797:	83 c4 10             	add    $0x10,%esp
 804b79a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b79d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804b7a1:	74 5a                	je     804b7fd <isLeftVar+0xf1>
 804b7a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b7a6:	8b 00                	mov    (%eax),%eax
 804b7a8:	85 c0                	test   %eax,%eax
 804b7aa:	75 51                	jne    804b7fd <isLeftVar+0xf1>
 804b7ac:	b8 01 00 00 00       	mov    $0x1,%eax
 804b7b1:	eb 50                	jmp    804b803 <isLeftVar+0xf7>
 804b7b3:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7b6:	8b 40 04             	mov    0x4(%eax),%eax
 804b7b9:	83 f8 32             	cmp    $0x32,%eax
 804b7bc:	75 40                	jne    804b7fe <isLeftVar+0xf2>
 804b7be:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7c1:	8b 40 14             	mov    0x14(%eax),%eax
 804b7c4:	8b 40 04             	mov    0x4(%eax),%eax
 804b7c7:	83 f8 32             	cmp    $0x32,%eax
 804b7ca:	75 32                	jne    804b7fe <isLeftVar+0xf2>
 804b7cc:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7cf:	8b 40 18             	mov    0x18(%eax),%eax
 804b7d2:	8b 40 04             	mov    0x4(%eax),%eax
 804b7d5:	83 f8 16             	cmp    $0x16,%eax
 804b7d8:	74 1c                	je     804b7f6 <isLeftVar+0xea>
 804b7da:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7dd:	8b 40 18             	mov    0x18(%eax),%eax
 804b7e0:	8b 40 04             	mov    0x4(%eax),%eax
 804b7e3:	83 f8 12             	cmp    $0x12,%eax
 804b7e6:	74 0e                	je     804b7f6 <isLeftVar+0xea>
 804b7e8:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7eb:	8b 40 18             	mov    0x18(%eax),%eax
 804b7ee:	8b 40 04             	mov    0x4(%eax),%eax
 804b7f1:	83 f8 03             	cmp    $0x3,%eax
 804b7f4:	75 08                	jne    804b7fe <isLeftVar+0xf2>
 804b7f6:	b8 01 00 00 00       	mov    $0x1,%eax
 804b7fb:	eb 06                	jmp    804b803 <isLeftVar+0xf7>
 804b7fd:	90                   	nop
 804b7fe:	b8 00 00 00 00       	mov    $0x0,%eax
 804b803:	c9                   	leave  
 804b804:	c3                   	ret    

0804b805 <Args>:
 804b805:	55                   	push   %ebp
 804b806:	89 e5                	mov    %esp,%ebp
 804b808:	83 ec 18             	sub    $0x18,%esp
 804b80b:	83 ec 0c             	sub    $0xc,%esp
 804b80e:	6a 0c                	push   $0xc
 804b810:	e8 8b d0 ff ff       	call   80488a0 <malloc@plt>
 804b815:	83 c4 10             	add    $0x10,%esp
 804b818:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b81b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b81e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804b824:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b827:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804b82e:	8b 45 08             	mov    0x8(%ebp),%eax
 804b831:	8b 40 10             	mov    0x10(%eax),%eax
 804b834:	83 f8 01             	cmp    $0x1,%eax
 804b837:	75 1c                	jne    804b855 <Args+0x50>
 804b839:	8b 45 08             	mov    0x8(%ebp),%eax
 804b83c:	8b 40 14             	mov    0x14(%eax),%eax
 804b83f:	83 ec 0c             	sub    $0xc,%esp
 804b842:	50                   	push   %eax
 804b843:	e8 64 f8 ff ff       	call   804b0ac <Exp>
 804b848:	83 c4 10             	add    $0x10,%esp
 804b84b:	89 c2                	mov    %eax,%edx
 804b84d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b850:	89 50 04             	mov    %edx,0x4(%eax)
 804b853:	eb 5a                	jmp    804b8af <Args+0xaa>
 804b855:	8b 45 08             	mov    0x8(%ebp),%eax
 804b858:	8b 40 10             	mov    0x10(%eax),%eax
 804b85b:	83 f8 03             	cmp    $0x3,%eax
 804b85e:	75 36                	jne    804b896 <Args+0x91>
 804b860:	8b 45 08             	mov    0x8(%ebp),%eax
 804b863:	8b 40 14             	mov    0x14(%eax),%eax
 804b866:	83 ec 0c             	sub    $0xc,%esp
 804b869:	50                   	push   %eax
 804b86a:	e8 3d f8 ff ff       	call   804b0ac <Exp>
 804b86f:	83 c4 10             	add    $0x10,%esp
 804b872:	89 c2                	mov    %eax,%edx
 804b874:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b877:	89 50 04             	mov    %edx,0x4(%eax)
 804b87a:	8b 45 08             	mov    0x8(%ebp),%eax
 804b87d:	8b 40 1c             	mov    0x1c(%eax),%eax
 804b880:	83 ec 0c             	sub    $0xc,%esp
 804b883:	50                   	push   %eax
 804b884:	e8 7c ff ff ff       	call   804b805 <Args>
 804b889:	83 c4 10             	add    $0x10,%esp
 804b88c:	89 c2                	mov    %eax,%edx
 804b88e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b891:	89 50 08             	mov    %edx,0x8(%eax)
 804b894:	eb 19                	jmp    804b8af <Args+0xaa>
 804b896:	68 98 62 05 08       	push   $0x8056298
 804b89b:	68 a4 02 00 00       	push   $0x2a4
 804b8a0:	68 ad 5d 05 08       	push   $0x8055dad
 804b8a5:	68 b7 5d 05 08       	push   $0x8055db7
 804b8aa:	e8 41 d1 ff ff       	call   80489f0 <__assert_fail@plt>
 804b8af:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b8b2:	c9                   	leave  
 804b8b3:	c3                   	ret    

0804b8b4 <checkStructure>:
 804b8b4:	55                   	push   %ebp
 804b8b5:	89 e5                	mov    %esp,%ebp
 804b8b7:	83 ec 18             	sub    $0x18,%esp
 804b8ba:	eb 63                	jmp    804b91f <checkStructure+0x6b>
 804b8bc:	8b 45 08             	mov    0x8(%ebp),%eax
 804b8bf:	8b 40 08             	mov    0x8(%eax),%eax
 804b8c2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b8c5:	eb 49                	jmp    804b910 <checkStructure+0x5c>
 804b8c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b8ca:	8b 10                	mov    (%eax),%edx
 804b8cc:	8b 45 08             	mov    0x8(%ebp),%eax
 804b8cf:	8b 00                	mov    (%eax),%eax
 804b8d1:	83 ec 08             	sub    $0x8,%esp
 804b8d4:	52                   	push   %edx
 804b8d5:	50                   	push   %eax
 804b8d6:	e8 f5 ce ff ff       	call   80487d0 <strcmp@plt>
 804b8db:	83 c4 10             	add    $0x10,%esp
 804b8de:	85 c0                	test   %eax,%eax
 804b8e0:	75 25                	jne    804b907 <checkStructure+0x53>
 804b8e2:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b8e7:	83 c0 01             	add    $0x1,%eax
 804b8ea:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b8ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b8f2:	8b 00                	mov    (%eax),%eax
 804b8f4:	83 ec 04             	sub    $0x4,%esp
 804b8f7:	50                   	push   %eax
 804b8f8:	6a 01                	push   $0x1
 804b8fa:	68 e0 5e 05 08       	push   $0x8055ee0
 804b8ff:	e8 dc ce ff ff       	call   80487e0 <printf@plt>
 804b904:	83 c4 10             	add    $0x10,%esp
 804b907:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b90a:	8b 40 08             	mov    0x8(%eax),%eax
 804b90d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b910:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804b914:	75 b1                	jne    804b8c7 <checkStructure+0x13>
 804b916:	8b 45 08             	mov    0x8(%ebp),%eax
 804b919:	8b 40 08             	mov    0x8(%eax),%eax
 804b91c:	89 45 08             	mov    %eax,0x8(%ebp)
 804b91f:	8b 45 08             	mov    0x8(%ebp),%eax
 804b922:	8b 40 08             	mov    0x8(%eax),%eax
 804b925:	85 c0                	test   %eax,%eax
 804b927:	75 93                	jne    804b8bc <checkStructure+0x8>
 804b929:	b8 01 00 00 00       	mov    $0x1,%eax
 804b92e:	c9                   	leave  
 804b92f:	c3                   	ret    

0804b930 <checkFunc>:
 804b930:	55                   	push   %ebp
 804b931:	89 e5                	mov    %esp,%ebp
 804b933:	83 ec 18             	sub    $0x18,%esp
 804b936:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804b93d:	eb 70                	jmp    804b9af <checkFunc+0x7f>
 804b93f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b942:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 804b949:	85 c0                	test   %eax,%eax
 804b94b:	74 5e                	je     804b9ab <checkFunc+0x7b>
 804b94d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b950:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 804b957:	8b 00                	mov    (%eax),%eax
 804b959:	83 f8 01             	cmp    $0x1,%eax
 804b95c:	75 4d                	jne    804b9ab <checkFunc+0x7b>
 804b95e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b961:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 804b968:	8b 40 0c             	mov    0xc(%eax),%eax
 804b96b:	8b 40 08             	mov    0x8(%eax),%eax
 804b96e:	85 c0                	test   %eax,%eax
 804b970:	75 39                	jne    804b9ab <checkFunc+0x7b>
 804b972:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804b977:	83 c0 01             	add    $0x1,%eax
 804b97a:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 804b97f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b982:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 804b989:	8b 50 04             	mov    0x4(%eax),%edx
 804b98c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b98f:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 804b996:	8b 40 08             	mov    0x8(%eax),%eax
 804b999:	83 ec 04             	sub    $0x4,%esp
 804b99c:	52                   	push   %edx
 804b99d:	50                   	push   %eax
 804b99e:	68 44 62 05 08       	push   $0x8056244
 804b9a3:	e8 38 ce ff ff       	call   80487e0 <printf@plt>
 804b9a8:	83 c4 10             	add    $0x10,%esp
 804b9ab:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804b9af:	81 7d f4 fe 3f 00 00 	cmpl   $0x3ffe,-0xc(%ebp)
 804b9b6:	7e 87                	jle    804b93f <checkFunc+0xf>
 804b9b8:	90                   	nop
 804b9b9:	c9                   	leave  
 804b9ba:	c3                   	ret    

0804b9bb <clearMap>:
 804b9bb:	55                   	push   %ebp
 804b9bc:	89 e5                	mov    %esp,%ebp
 804b9be:	83 ec 18             	sub    $0x18,%esp
 804b9c1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804b9c8:	eb 28                	jmp    804b9f2 <clearMap+0x37>
 804b9ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b9cd:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804b9d4:	83 ec 0c             	sub    $0xc,%esp
 804b9d7:	50                   	push   %eax
 804b9d8:	e8 13 ce ff ff       	call   80487f0 <free@plt>
 804b9dd:	83 c4 10             	add    $0x10,%esp
 804b9e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b9e3:	c7 04 85 80 b3 05 08 	movl   $0x0,0x805b380(,%eax,4)
 804b9ea:	00 00 00 00 
 804b9ee:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804b9f2:	a1 18 b1 05 08       	mov    0x805b118,%eax
 804b9f7:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 804b9fa:	7c ce                	jl     804b9ca <clearMap+0xf>
 804b9fc:	c7 05 18 b1 05 08 00 	movl   $0x0,0x805b118
 804ba03:	00 00 00 
 804ba06:	90                   	nop
 804ba07:	c9                   	leave  
 804ba08:	c3                   	ret    

0804ba09 <existSign>:
 804ba09:	55                   	push   %ebp
 804ba0a:	89 e5                	mov    %esp,%ebp
 804ba0c:	83 ec 18             	sub    $0x18,%esp
 804ba0f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ba13:	75 07                	jne    804ba1c <existSign+0x13>
 804ba15:	b8 00 00 00 00       	mov    $0x0,%eax
 804ba1a:	eb 45                	jmp    804ba61 <existSign+0x58>
 804ba1c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804ba23:	eb 29                	jmp    804ba4e <existSign+0x45>
 804ba25:	8b 45 08             	mov    0x8(%ebp),%eax
 804ba28:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804ba2b:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
 804ba2f:	83 ec 08             	sub    $0x8,%esp
 804ba32:	50                   	push   %eax
 804ba33:	ff 75 0c             	pushl  0xc(%ebp)
 804ba36:	e8 4a 1b 00 00       	call   804d585 <compareOperand>
 804ba3b:	83 c4 10             	add    $0x10,%esp
 804ba3e:	83 f8 01             	cmp    $0x1,%eax
 804ba41:	75 07                	jne    804ba4a <existSign+0x41>
 804ba43:	b8 01 00 00 00       	mov    $0x1,%eax
 804ba48:	eb 17                	jmp    804ba61 <existSign+0x58>
 804ba4a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804ba4e:	8b 45 08             	mov    0x8(%ebp),%eax
 804ba51:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804ba57:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804ba5a:	7f c9                	jg     804ba25 <existSign+0x1c>
 804ba5c:	b8 00 00 00 00       	mov    $0x0,%eax
 804ba61:	c9                   	leave  
 804ba62:	c3                   	ret    

0804ba63 <findSign>:
 804ba63:	55                   	push   %ebp
 804ba64:	89 e5                	mov    %esp,%ebp
 804ba66:	83 ec 18             	sub    $0x18,%esp
 804ba69:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ba6d:	75 07                	jne    804ba76 <findSign+0x13>
 804ba6f:	b8 00 00 00 00       	mov    $0x0,%eax
 804ba74:	eb 74                	jmp    804baea <findSign+0x87>
 804ba76:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804ba7d:	eb 5c                	jmp    804badb <findSign+0x78>
 804ba7f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804ba86:	eb 3a                	jmp    804bac2 <findSign+0x5f>
 804ba88:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804ba8b:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804ba92:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804ba95:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
 804ba99:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ba9c:	83 ec 08             	sub    $0x8,%esp
 804ba9f:	ff 75 f4             	pushl  -0xc(%ebp)
 804baa2:	ff 75 08             	pushl  0x8(%ebp)
 804baa5:	e8 db 1a 00 00       	call   804d585 <compareOperand>
 804baaa:	83 c4 10             	add    $0x10,%esp
 804baad:	83 f8 01             	cmp    $0x1,%eax
 804bab0:	75 0c                	jne    804babe <findSign+0x5b>
 804bab2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804bab5:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804babc:	eb 2c                	jmp    804baea <findSign+0x87>
 804babe:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804bac2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804bac5:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804bacc:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804bad2:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 804bad5:	7f b1                	jg     804ba88 <findSign+0x25>
 804bad7:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 804badb:	a1 18 b1 05 08       	mov    0x805b118,%eax
 804bae0:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 804bae3:	7c 9a                	jl     804ba7f <findSign+0x1c>
 804bae5:	b8 00 00 00 00       	mov    $0x0,%eax
 804baea:	c9                   	leave  
 804baeb:	c3                   	ret    

0804baec <findLeaf>:
 804baec:	55                   	push   %ebp
 804baed:	89 e5                	mov    %esp,%ebp
 804baef:	83 ec 18             	sub    $0x18,%esp
 804baf2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804baf6:	75 07                	jne    804baff <findLeaf+0x13>
 804baf8:	b8 00 00 00 00       	mov    $0x0,%eax
 804bafd:	eb 5c                	jmp    804bb5b <findLeaf+0x6f>
 804baff:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804bb06:	eb 44                	jmp    804bb4c <findLeaf+0x60>
 804bb08:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb0b:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804bb12:	8b 00                	mov    (%eax),%eax
 804bb14:	85 c0                	test   %eax,%eax
 804bb16:	74 30                	je     804bb48 <findLeaf+0x5c>
 804bb18:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb1b:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804bb22:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
 804bb28:	83 ec 08             	sub    $0x8,%esp
 804bb2b:	50                   	push   %eax
 804bb2c:	ff 75 08             	pushl  0x8(%ebp)
 804bb2f:	e8 51 1a 00 00       	call   804d585 <compareOperand>
 804bb34:	83 c4 10             	add    $0x10,%esp
 804bb37:	83 f8 01             	cmp    $0x1,%eax
 804bb3a:	75 0c                	jne    804bb48 <findLeaf+0x5c>
 804bb3c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb3f:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804bb46:	eb 13                	jmp    804bb5b <findLeaf+0x6f>
 804bb48:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804bb4c:	a1 18 b1 05 08       	mov    0x805b118,%eax
 804bb51:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 804bb54:	7c b2                	jl     804bb08 <findLeaf+0x1c>
 804bb56:	b8 00 00 00 00       	mov    $0x0,%eax
 804bb5b:	c9                   	leave  
 804bb5c:	c3                   	ret    

0804bb5d <findOp>:
 804bb5d:	55                   	push   %ebp
 804bb5e:	89 e5                	mov    %esp,%ebp
 804bb60:	83 ec 18             	sub    $0x18,%esp
 804bb63:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804bb6a:	eb 62                	jmp    804bbce <findOp+0x71>
 804bb6c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bb6f:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804bb76:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bb79:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb7c:	8b 00                	mov    (%eax),%eax
 804bb7e:	85 c0                	test   %eax,%eax
 804bb80:	75 48                	jne    804bbca <findOp+0x6d>
 804bb82:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb85:	8b 40 04             	mov    0x4(%eax),%eax
 804bb88:	3b 45 08             	cmp    0x8(%ebp),%eax
 804bb8b:	75 3d                	jne    804bbca <findOp+0x6d>
 804bb8d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bb90:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804bb96:	83 ec 08             	sub    $0x8,%esp
 804bb99:	ff 75 0c             	pushl  0xc(%ebp)
 804bb9c:	50                   	push   %eax
 804bb9d:	e8 67 fe ff ff       	call   804ba09 <existSign>
 804bba2:	83 c4 10             	add    $0x10,%esp
 804bba5:	85 c0                	test   %eax,%eax
 804bba7:	74 21                	je     804bbca <findOp+0x6d>
 804bba9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bbac:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804bbb2:	83 ec 08             	sub    $0x8,%esp
 804bbb5:	ff 75 10             	pushl  0x10(%ebp)
 804bbb8:	50                   	push   %eax
 804bbb9:	e8 4b fe ff ff       	call   804ba09 <existSign>
 804bbbe:	83 c4 10             	add    $0x10,%esp
 804bbc1:	85 c0                	test   %eax,%eax
 804bbc3:	74 05                	je     804bbca <findOp+0x6d>
 804bbc5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bbc8:	eb 13                	jmp    804bbdd <findOp+0x80>
 804bbca:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804bbce:	a1 18 b1 05 08       	mov    0x805b118,%eax
 804bbd3:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 804bbd6:	7c 94                	jl     804bb6c <findOp+0xf>
 804bbd8:	b8 00 00 00 00       	mov    $0x0,%eax
 804bbdd:	c9                   	leave  
 804bbde:	c3                   	ret    

0804bbdf <removeSign>:
 804bbdf:	55                   	push   %ebp
 804bbe0:	89 e5                	mov    %esp,%ebp
 804bbe2:	83 ec 18             	sub    $0x18,%esp
 804bbe5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804bbec:	eb 6d                	jmp    804bc5b <removeSign+0x7c>
 804bbee:	8b 45 08             	mov    0x8(%ebp),%eax
 804bbf1:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804bbf4:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
 804bbf8:	83 ec 08             	sub    $0x8,%esp
 804bbfb:	50                   	push   %eax
 804bbfc:	ff 75 0c             	pushl  0xc(%ebp)
 804bbff:	e8 81 19 00 00       	call   804d585 <compareOperand>
 804bc04:	83 c4 10             	add    $0x10,%esp
 804bc07:	83 f8 01             	cmp    $0x1,%eax
 804bc0a:	75 4b                	jne    804bc57 <removeSign+0x78>
 804bc0c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bc0f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bc12:	eb 1b                	jmp    804bc2f <removeSign+0x50>
 804bc14:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bc17:	8d 50 01             	lea    0x1(%eax),%edx
 804bc1a:	8b 45 08             	mov    0x8(%ebp),%eax
 804bc1d:	8b 4c 90 08          	mov    0x8(%eax,%edx,4),%ecx
 804bc21:	8b 45 08             	mov    0x8(%ebp),%eax
 804bc24:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804bc27:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
 804bc2b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804bc2f:	8b 45 08             	mov    0x8(%ebp),%eax
 804bc32:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804bc38:	83 e8 01             	sub    $0x1,%eax
 804bc3b:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804bc3e:	7f d4                	jg     804bc14 <removeSign+0x35>
 804bc40:	8b 45 08             	mov    0x8(%ebp),%eax
 804bc43:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804bc49:	8d 50 ff             	lea    -0x1(%eax),%edx
 804bc4c:	8b 45 08             	mov    0x8(%ebp),%eax
 804bc4f:	89 90 88 00 00 00    	mov    %edx,0x88(%eax)
 804bc55:	eb 12                	jmp    804bc69 <removeSign+0x8a>
 804bc57:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804bc5b:	8b 45 08             	mov    0x8(%ebp),%eax
 804bc5e:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804bc64:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 804bc67:	7f 85                	jg     804bbee <removeSign+0xf>
 804bc69:	90                   	nop
 804bc6a:	c9                   	leave  
 804bc6b:	c3                   	ret    

0804bc6c <insertLeaf>:
 804bc6c:	55                   	push   %ebp
 804bc6d:	89 e5                	mov    %esp,%ebp
 804bc6f:	83 ec 18             	sub    $0x18,%esp
 804bc72:	83 ec 0c             	sub    $0xc,%esp
 804bc75:	68 9c 00 00 00       	push   $0x9c
 804bc7a:	e8 21 cc ff ff       	call   80488a0 <malloc@plt>
 804bc7f:	83 c4 10             	add    $0x10,%esp
 804bc82:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bc85:	83 ec 04             	sub    $0x4,%esp
 804bc88:	68 9c 00 00 00       	push   $0x9c
 804bc8d:	6a 00                	push   $0x0
 804bc8f:	ff 75 f4             	pushl  -0xc(%ebp)
 804bc92:	e8 89 cc ff ff       	call   8048920 <memset@plt>
 804bc97:	83 c4 10             	add    $0x10,%esp
 804bc9a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bc9d:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804bca3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bca6:	8b 55 08             	mov    0x8(%ebp),%edx
 804bca9:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
 804bcaf:	a1 18 b1 05 08       	mov    0x805b118,%eax
 804bcb4:	8d 50 01             	lea    0x1(%eax),%edx
 804bcb7:	89 15 18 b1 05 08    	mov    %edx,0x805b118
 804bcbd:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804bcc0:	89 14 85 80 b3 05 08 	mov    %edx,0x805b380(,%eax,4)
 804bcc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bcca:	c9                   	leave  
 804bccb:	c3                   	ret    

0804bccc <insertTuple>:
 804bccc:	55                   	push   %ebp
 804bccd:	89 e5                	mov    %esp,%ebp
 804bccf:	83 ec 18             	sub    $0x18,%esp
 804bcd2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804bcd9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bcdc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bcdf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bce2:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804bce5:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804bce8:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804bceb:	8b 45 08             	mov    0x8(%ebp),%eax
 804bcee:	8b 40 08             	mov    0x8(%eax),%eax
 804bcf1:	85 c0                	test   %eax,%eax
 804bcf3:	74 67                	je     804bd5c <insertTuple+0x90>
 804bcf5:	8b 45 08             	mov    0x8(%ebp),%eax
 804bcf8:	8b 40 08             	mov    0x8(%eax),%eax
 804bcfb:	83 ec 0c             	sub    $0xc,%esp
 804bcfe:	50                   	push   %eax
 804bcff:	e8 5f fd ff ff       	call   804ba63 <findSign>
 804bd04:	83 c4 10             	add    $0x10,%esp
 804bd07:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804bd0a:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804bd0e:	75 30                	jne    804bd40 <insertTuple+0x74>
 804bd10:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd13:	8b 40 08             	mov    0x8(%eax),%eax
 804bd16:	83 ec 0c             	sub    $0xc,%esp
 804bd19:	50                   	push   %eax
 804bd1a:	e8 cd fd ff ff       	call   804baec <findLeaf>
 804bd1f:	83 c4 10             	add    $0x10,%esp
 804bd22:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804bd25:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804bd29:	75 15                	jne    804bd40 <insertTuple+0x74>
 804bd2b:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd2e:	8b 40 08             	mov    0x8(%eax),%eax
 804bd31:	83 ec 0c             	sub    $0xc,%esp
 804bd34:	50                   	push   %eax
 804bd35:	e8 32 ff ff ff       	call   804bc6c <insertLeaf>
 804bd3a:	83 c4 10             	add    $0x10,%esp
 804bd3d:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804bd40:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804bd44:	75 16                	jne    804bd5c <insertTuple+0x90>
 804bd46:	68 14 63 05 08       	push   $0x8056314
 804bd4b:	6a 73                	push   $0x73
 804bd4d:	68 a0 62 05 08       	push   $0x80562a0
 804bd52:	68 a9 62 05 08       	push   $0x80562a9
 804bd57:	e8 94 cc ff ff       	call   80489f0 <__assert_fail@plt>
 804bd5c:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd5f:	8b 40 0c             	mov    0xc(%eax),%eax
 804bd62:	85 c0                	test   %eax,%eax
 804bd64:	74 4b                	je     804bdb1 <insertTuple+0xe5>
 804bd66:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd69:	8b 40 0c             	mov    0xc(%eax),%eax
 804bd6c:	83 ec 0c             	sub    $0xc,%esp
 804bd6f:	50                   	push   %eax
 804bd70:	e8 ee fc ff ff       	call   804ba63 <findSign>
 804bd75:	83 c4 10             	add    $0x10,%esp
 804bd78:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804bd7b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804bd7f:	75 30                	jne    804bdb1 <insertTuple+0xe5>
 804bd81:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd84:	8b 40 0c             	mov    0xc(%eax),%eax
 804bd87:	83 ec 0c             	sub    $0xc,%esp
 804bd8a:	50                   	push   %eax
 804bd8b:	e8 5c fd ff ff       	call   804baec <findLeaf>
 804bd90:	83 c4 10             	add    $0x10,%esp
 804bd93:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804bd96:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804bd9a:	75 15                	jne    804bdb1 <insertTuple+0xe5>
 804bd9c:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd9f:	8b 40 0c             	mov    0xc(%eax),%eax
 804bda2:	83 ec 0c             	sub    $0xc,%esp
 804bda5:	50                   	push   %eax
 804bda6:	e8 c1 fe ff ff       	call   804bc6c <insertLeaf>
 804bdab:	83 c4 10             	add    $0x10,%esp
 804bdae:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804bdb1:	8b 45 08             	mov    0x8(%ebp),%eax
 804bdb4:	8b 40 04             	mov    0x4(%eax),%eax
 804bdb7:	85 c0                	test   %eax,%eax
 804bdb9:	74 30                	je     804bdeb <insertTuple+0x11f>
 804bdbb:	8b 45 08             	mov    0x8(%ebp),%eax
 804bdbe:	8b 40 04             	mov    0x4(%eax),%eax
 804bdc1:	83 ec 0c             	sub    $0xc,%esp
 804bdc4:	50                   	push   %eax
 804bdc5:	e8 99 fc ff ff       	call   804ba63 <findSign>
 804bdca:	83 c4 10             	add    $0x10,%esp
 804bdcd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bdd0:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804bdd4:	74 15                	je     804bdeb <insertTuple+0x11f>
 804bdd6:	8b 45 08             	mov    0x8(%ebp),%eax
 804bdd9:	8b 40 04             	mov    0x4(%eax),%eax
 804bddc:	83 ec 08             	sub    $0x8,%esp
 804bddf:	50                   	push   %eax
 804bde0:	ff 75 f4             	pushl  -0xc(%ebp)
 804bde3:	e8 f7 fd ff ff       	call   804bbdf <removeSign>
 804bde8:	83 c4 10             	add    $0x10,%esp
 804bdeb:	8b 45 08             	mov    0x8(%ebp),%eax
 804bdee:	8b 00                	mov    (%eax),%eax
 804bdf0:	83 f8 01             	cmp    $0x1,%eax
 804bdf3:	75 27                	jne    804be1c <insertTuple+0x150>
 804bdf5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804bdf8:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804bdfe:	8d 48 01             	lea    0x1(%eax),%ecx
 804be01:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804be04:	89 8a 88 00 00 00    	mov    %ecx,0x88(%edx)
 804be0a:	8b 55 08             	mov    0x8(%ebp),%edx
 804be0d:	8b 4a 04             	mov    0x4(%edx),%ecx
 804be10:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804be13:	89 4c 82 08          	mov    %ecx,0x8(%edx,%eax,4)
 804be17:	e9 6e 01 00 00       	jmp    804bf8a <insertTuple+0x2be>
 804be1c:	8b 45 08             	mov    0x8(%ebp),%eax
 804be1f:	8b 00                	mov    (%eax),%eax
 804be21:	83 f8 0d             	cmp    $0xd,%eax
 804be24:	0f 86 81 00 00 00    	jbe    804beab <insertTuple+0x1df>
 804be2a:	8b 45 08             	mov    0x8(%ebp),%eax
 804be2d:	8b 00                	mov    (%eax),%eax
 804be2f:	83 f8 13             	cmp    $0x13,%eax
 804be32:	77 77                	ja     804beab <insertTuple+0x1df>
 804be34:	83 ec 0c             	sub    $0xc,%esp
 804be37:	68 9c 00 00 00       	push   $0x9c
 804be3c:	e8 5f ca ff ff       	call   80488a0 <malloc@plt>
 804be41:	83 c4 10             	add    $0x10,%esp
 804be44:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804be47:	83 ec 04             	sub    $0x4,%esp
 804be4a:	68 9c 00 00 00       	push   $0x9c
 804be4f:	6a 00                	push   $0x0
 804be51:	ff 75 f0             	pushl  -0x10(%ebp)
 804be54:	e8 c7 ca ff ff       	call   8048920 <memset@plt>
 804be59:	83 c4 10             	add    $0x10,%esp
 804be5c:	8b 45 08             	mov    0x8(%ebp),%eax
 804be5f:	8b 10                	mov    (%eax),%edx
 804be61:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804be64:	89 50 04             	mov    %edx,0x4(%eax)
 804be67:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804be6a:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804be6d:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
 804be73:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804be76:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804be79:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
 804be7f:	8b 45 08             	mov    0x8(%ebp),%eax
 804be82:	8b 50 04             	mov    0x4(%eax),%edx
 804be85:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804be88:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
 804be8e:	a1 18 b1 05 08       	mov    0x805b118,%eax
 804be93:	8d 50 01             	lea    0x1(%eax),%edx
 804be96:	89 15 18 b1 05 08    	mov    %edx,0x805b118
 804be9c:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804be9f:	89 14 85 80 b3 05 08 	mov    %edx,0x805b380(,%eax,4)
 804bea6:	e9 df 00 00 00       	jmp    804bf8a <insertTuple+0x2be>
 804beab:	8b 45 08             	mov    0x8(%ebp),%eax
 804beae:	8b 48 0c             	mov    0xc(%eax),%ecx
 804beb1:	8b 45 08             	mov    0x8(%ebp),%eax
 804beb4:	8b 50 08             	mov    0x8(%eax),%edx
 804beb7:	8b 45 08             	mov    0x8(%ebp),%eax
 804beba:	8b 00                	mov    (%eax),%eax
 804bebc:	83 ec 04             	sub    $0x4,%esp
 804bebf:	51                   	push   %ecx
 804bec0:	52                   	push   %edx
 804bec1:	50                   	push   %eax
 804bec2:	e8 96 fc ff ff       	call   804bb5d <findOp>
 804bec7:	83 c4 10             	add    $0x10,%esp
 804beca:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804becd:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804bed1:	0f 85 91 00 00 00    	jne    804bf68 <insertTuple+0x29c>
 804bed7:	83 ec 0c             	sub    $0xc,%esp
 804beda:	68 9c 00 00 00       	push   $0x9c
 804bedf:	e8 bc c9 ff ff       	call   80488a0 <malloc@plt>
 804bee4:	83 c4 10             	add    $0x10,%esp
 804bee7:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804beea:	83 ec 04             	sub    $0x4,%esp
 804beed:	68 9c 00 00 00       	push   $0x9c
 804bef2:	6a 00                	push   $0x0
 804bef4:	ff 75 f0             	pushl  -0x10(%ebp)
 804bef7:	e8 24 ca ff ff       	call   8048920 <memset@plt>
 804befc:	83 c4 10             	add    $0x10,%esp
 804beff:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf02:	8b 10                	mov    (%eax),%edx
 804bf04:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bf07:	89 50 04             	mov    %edx,0x4(%eax)
 804bf0a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bf0d:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804bf10:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
 804bf16:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bf19:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804bf1c:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
 804bf22:	a1 18 b1 05 08       	mov    0x805b118,%eax
 804bf27:	8d 50 01             	lea    0x1(%eax),%edx
 804bf2a:	89 15 18 b1 05 08    	mov    %edx,0x805b118
 804bf30:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804bf33:	89 14 85 80 b3 05 08 	mov    %edx,0x805b380(,%eax,4)
 804bf3a:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf3d:	8b 40 04             	mov    0x4(%eax),%eax
 804bf40:	85 c0                	test   %eax,%eax
 804bf42:	74 46                	je     804bf8a <insertTuple+0x2be>
 804bf44:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bf47:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804bf4d:	8d 48 01             	lea    0x1(%eax),%ecx
 804bf50:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804bf53:	89 8a 88 00 00 00    	mov    %ecx,0x88(%edx)
 804bf59:	8b 55 08             	mov    0x8(%ebp),%edx
 804bf5c:	8b 4a 04             	mov    0x4(%edx),%ecx
 804bf5f:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804bf62:	89 4c 82 08          	mov    %ecx,0x8(%edx,%eax,4)
 804bf66:	eb 22                	jmp    804bf8a <insertTuple+0x2be>
 804bf68:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bf6b:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804bf71:	8d 48 01             	lea    0x1(%eax),%ecx
 804bf74:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804bf77:	89 8a 88 00 00 00    	mov    %ecx,0x88(%edx)
 804bf7d:	8b 55 08             	mov    0x8(%ebp),%edx
 804bf80:	8b 4a 04             	mov    0x4(%edx),%ecx
 804bf83:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804bf86:	89 4c 82 08          	mov    %ecx,0x8(%edx,%eax,4)
 804bf8a:	90                   	nop
 804bf8b:	c9                   	leave  
 804bf8c:	c3                   	ret    

0804bf8d <fixRefAndDeref>:
 804bf8d:	55                   	push   %ebp
 804bf8e:	89 e5                	mov    %esp,%ebp
 804bf90:	83 ec 18             	sub    $0x18,%esp
 804bf93:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804bf97:	74 74                	je     804c00d <fixRefAndDeref+0x80>
 804bf99:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf9c:	8b 00                	mov    (%eax),%eax
 804bf9e:	83 f8 06             	cmp    $0x6,%eax
 804bfa1:	74 0a                	je     804bfad <fixRefAndDeref+0x20>
 804bfa3:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfa6:	8b 00                	mov    (%eax),%eax
 804bfa8:	83 f8 05             	cmp    $0x5,%eax
 804bfab:	75 61                	jne    804c00e <fixRefAndDeref+0x81>
 804bfad:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfb0:	8b 40 04             	mov    0x4(%eax),%eax
 804bfb3:	83 ec 0c             	sub    $0xc,%esp
 804bfb6:	50                   	push   %eax
 804bfb7:	e8 a7 fa ff ff       	call   804ba63 <findSign>
 804bfbc:	83 c4 10             	add    $0x10,%esp
 804bfbf:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bfc2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804bfc6:	75 15                	jne    804bfdd <fixRefAndDeref+0x50>
 804bfc8:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfcb:	8b 40 04             	mov    0x4(%eax),%eax
 804bfce:	83 ec 0c             	sub    $0xc,%esp
 804bfd1:	50                   	push   %eax
 804bfd2:	e8 15 fb ff ff       	call   804baec <findLeaf>
 804bfd7:	83 c4 10             	add    $0x10,%esp
 804bfda:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bfdd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804bfe1:	75 19                	jne    804bffc <fixRefAndDeref+0x6f>
 804bfe3:	68 20 63 05 08       	push   $0x8056320
 804bfe8:	68 aa 00 00 00       	push   $0xaa
 804bfed:	68 a0 62 05 08       	push   $0x80562a0
 804bff2:	68 be 62 05 08       	push   $0x80562be
 804bff7:	e8 f4 c9 ff ff       	call   80489f0 <__assert_fail@plt>
 804bffc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bfff:	8b 90 98 00 00 00    	mov    0x98(%eax),%edx
 804c005:	8b 45 08             	mov    0x8(%ebp),%eax
 804c008:	89 50 04             	mov    %edx,0x4(%eax)
 804c00b:	eb 01                	jmp    804c00e <fixRefAndDeref+0x81>
 804c00d:	90                   	nop
 804c00e:	c9                   	leave  
 804c00f:	c3                   	ret    

0804c010 <DAG2ir>:
 804c010:	55                   	push   %ebp
 804c011:	89 e5                	mov    %esp,%ebp
 804c013:	83 ec 58             	sub    $0x58,%esp
 804c016:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804c01d:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
 804c024:	e9 25 03 00 00       	jmp    804c34e <DAG2ir+0x33e>
 804c029:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804c02c:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804c033:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804c036:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c039:	8b 00                	mov    (%eax),%eax
 804c03b:	85 c0                	test   %eax,%eax
 804c03d:	0f 84 b7 00 00 00    	je     804c0fa <DAG2ir+0xea>
 804c043:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 804c04a:	eb 63                	jmp    804c0af <DAG2ir+0x9f>
 804c04c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c04f:	8b 55 bc             	mov    -0x44(%ebp),%edx
 804c052:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
 804c056:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804c059:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804c05c:	8b 00                	mov    (%eax),%eax
 804c05e:	85 c0                	test   %eax,%eax
 804c060:	75 49                	jne    804c0ab <DAG2ir+0x9b>
 804c062:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c065:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c06b:	85 c0                	test   %eax,%eax
 804c06d:	75 0c                	jne    804c07b <DAG2ir+0x6b>
 804c06f:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c072:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 804c075:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
 804c07b:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c07e:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
 804c084:	6a 00                	push   $0x0
 804c086:	50                   	push   %eax
 804c087:	ff 75 c4             	pushl  -0x3c(%ebp)
 804c08a:	6a 01                	push   $0x1
 804c08c:	e8 86 13 00 00       	call   804d417 <newIC>
 804c091:	83 c4 10             	add    $0x10,%esp
 804c094:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804c097:	83 ec 08             	sub    $0x8,%esp
 804c09a:	ff 75 c8             	pushl  -0x38(%ebp)
 804c09d:	ff 75 b4             	pushl  -0x4c(%ebp)
 804c0a0:	e8 f4 07 00 00       	call   804c899 <addTail>
 804c0a5:	83 c4 10             	add    $0x10,%esp
 804c0a8:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804c0ab:	83 45 bc 01          	addl   $0x1,-0x44(%ebp)
 804c0af:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c0b2:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804c0b8:	3b 45 bc             	cmp    -0x44(%ebp),%eax
 804c0bb:	7f 8f                	jg     804c04c <DAG2ir+0x3c>
 804c0bd:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c0c0:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c0c6:	85 c0                	test   %eax,%eax
 804c0c8:	0f 85 7c 02 00 00    	jne    804c34a <DAG2ir+0x33a>
 804c0ce:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c0d1:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
 804c0d7:	83 ec 0c             	sub    $0xc,%esp
 804c0da:	50                   	push   %eax
 804c0db:	e8 ad fe ff ff       	call   804bf8d <fixRefAndDeref>
 804c0e0:	83 c4 10             	add    $0x10,%esp
 804c0e3:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c0e6:	8b 90 8c 00 00 00    	mov    0x8c(%eax),%edx
 804c0ec:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c0ef:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
 804c0f5:	e9 50 02 00 00       	jmp    804c34a <DAG2ir+0x33a>
 804c0fa:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 804c101:	e9 e7 00 00 00       	jmp    804c1ed <DAG2ir+0x1dd>
 804c106:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c109:	8b 55 bc             	mov    -0x44(%ebp),%edx
 804c10c:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
 804c110:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804c113:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804c116:	8b 00                	mov    (%eax),%eax
 804c118:	85 c0                	test   %eax,%eax
 804c11a:	0f 85 c9 00 00 00    	jne    804c1e9 <DAG2ir+0x1d9>
 804c120:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c123:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c129:	85 c0                	test   %eax,%eax
 804c12b:	74 35                	je     804c162 <DAG2ir+0x152>
 804c12d:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c130:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c136:	6a 00                	push   $0x0
 804c138:	50                   	push   %eax
 804c139:	ff 75 cc             	pushl  -0x34(%ebp)
 804c13c:	6a 01                	push   $0x1
 804c13e:	e8 d4 12 00 00       	call   804d417 <newIC>
 804c143:	83 c4 10             	add    $0x10,%esp
 804c146:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804c149:	83 ec 08             	sub    $0x8,%esp
 804c14c:	ff 75 d0             	pushl  -0x30(%ebp)
 804c14f:	ff 75 b4             	pushl  -0x4c(%ebp)
 804c152:	e8 42 07 00 00       	call   804c899 <addTail>
 804c157:	83 c4 10             	add    $0x10,%esp
 804c15a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804c15d:	e9 87 00 00 00       	jmp    804c1e9 <DAG2ir+0x1d9>
 804c162:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c165:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804c16b:	85 c0                	test   %eax,%eax
 804c16d:	74 11                	je     804c180 <DAG2ir+0x170>
 804c16f:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c172:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804c178:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c17e:	eb 05                	jmp    804c185 <DAG2ir+0x175>
 804c180:	b8 00 00 00 00       	mov    $0x0,%eax
 804c185:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804c188:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c18b:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804c191:	85 c0                	test   %eax,%eax
 804c193:	74 11                	je     804c1a6 <DAG2ir+0x196>
 804c195:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c198:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804c19e:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c1a4:	eb 05                	jmp    804c1ab <DAG2ir+0x19b>
 804c1a6:	b8 00 00 00 00       	mov    $0x0,%eax
 804c1ab:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804c1ae:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c1b1:	8b 40 04             	mov    0x4(%eax),%eax
 804c1b4:	ff 75 d8             	pushl  -0x28(%ebp)
 804c1b7:	ff 75 d4             	pushl  -0x2c(%ebp)
 804c1ba:	ff 75 cc             	pushl  -0x34(%ebp)
 804c1bd:	50                   	push   %eax
 804c1be:	e8 54 12 00 00       	call   804d417 <newIC>
 804c1c3:	83 c4 10             	add    $0x10,%esp
 804c1c6:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804c1c9:	83 ec 08             	sub    $0x8,%esp
 804c1cc:	ff 75 dc             	pushl  -0x24(%ebp)
 804c1cf:	ff 75 b4             	pushl  -0x4c(%ebp)
 804c1d2:	e8 c2 06 00 00       	call   804c899 <addTail>
 804c1d7:	83 c4 10             	add    $0x10,%esp
 804c1da:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804c1dd:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c1e0:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804c1e3:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
 804c1e9:	83 45 bc 01          	addl   $0x1,-0x44(%ebp)
 804c1ed:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c1f0:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804c1f6:	3b 45 bc             	cmp    -0x44(%ebp),%eax
 804c1f9:	0f 8f 07 ff ff ff    	jg     804c106 <DAG2ir+0xf6>
 804c1ff:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c202:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c208:	85 c0                	test   %eax,%eax
 804c20a:	0f 85 a7 00 00 00    	jne    804c2b7 <DAG2ir+0x2a7>
 804c210:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c213:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804c219:	85 c0                	test   %eax,%eax
 804c21b:	0f 8e 96 00 00 00    	jle    804c2b7 <DAG2ir+0x2a7>
 804c221:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c224:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804c22a:	85 c0                	test   %eax,%eax
 804c22c:	74 11                	je     804c23f <DAG2ir+0x22f>
 804c22e:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c231:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804c237:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c23d:	eb 05                	jmp    804c244 <DAG2ir+0x234>
 804c23f:	b8 00 00 00 00       	mov    $0x0,%eax
 804c244:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c247:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c24a:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804c250:	85 c0                	test   %eax,%eax
 804c252:	74 11                	je     804c265 <DAG2ir+0x255>
 804c254:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c257:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804c25d:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c263:	eb 05                	jmp    804c26a <DAG2ir+0x25a>
 804c265:	b8 00 00 00 00       	mov    $0x0,%eax
 804c26a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c26d:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c270:	8b 50 08             	mov    0x8(%eax),%edx
 804c273:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c276:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
 804c27c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c27f:	8b 90 98 00 00 00    	mov    0x98(%eax),%edx
 804c285:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c288:	8b 40 04             	mov    0x4(%eax),%eax
 804c28b:	ff 75 e4             	pushl  -0x1c(%ebp)
 804c28e:	ff 75 e0             	pushl  -0x20(%ebp)
 804c291:	52                   	push   %edx
 804c292:	50                   	push   %eax
 804c293:	e8 7f 11 00 00       	call   804d417 <newIC>
 804c298:	83 c4 10             	add    $0x10,%esp
 804c29b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c29e:	83 ec 08             	sub    $0x8,%esp
 804c2a1:	ff 75 e8             	pushl  -0x18(%ebp)
 804c2a4:	ff 75 b4             	pushl  -0x4c(%ebp)
 804c2a7:	e8 ed 05 00 00       	call   804c899 <addTail>
 804c2ac:	83 c4 10             	add    $0x10,%esp
 804c2af:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804c2b2:	e9 93 00 00 00       	jmp    804c34a <DAG2ir+0x33a>
 804c2b7:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c2ba:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804c2c0:	85 c0                	test   %eax,%eax
 804c2c2:	0f 85 82 00 00 00    	jne    804c34a <DAG2ir+0x33a>
 804c2c8:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c2cb:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804c2d1:	85 c0                	test   %eax,%eax
 804c2d3:	74 11                	je     804c2e6 <DAG2ir+0x2d6>
 804c2d5:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c2d8:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 804c2de:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c2e4:	eb 05                	jmp    804c2eb <DAG2ir+0x2db>
 804c2e6:	b8 00 00 00 00       	mov    $0x0,%eax
 804c2eb:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c2ee:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c2f1:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804c2f7:	85 c0                	test   %eax,%eax
 804c2f9:	74 11                	je     804c30c <DAG2ir+0x2fc>
 804c2fb:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c2fe:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 804c304:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 804c30a:	eb 05                	jmp    804c311 <DAG2ir+0x301>
 804c30c:	b8 00 00 00 00       	mov    $0x0,%eax
 804c311:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c314:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c317:	8b 90 98 00 00 00    	mov    0x98(%eax),%edx
 804c31d:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804c320:	8b 40 04             	mov    0x4(%eax),%eax
 804c323:	ff 75 f0             	pushl  -0x10(%ebp)
 804c326:	ff 75 ec             	pushl  -0x14(%ebp)
 804c329:	52                   	push   %edx
 804c32a:	50                   	push   %eax
 804c32b:	e8 e7 10 00 00       	call   804d417 <newIC>
 804c330:	83 c4 10             	add    $0x10,%esp
 804c333:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c336:	83 ec 08             	sub    $0x8,%esp
 804c339:	ff 75 f4             	pushl  -0xc(%ebp)
 804c33c:	ff 75 b4             	pushl  -0x4c(%ebp)
 804c33f:	e8 55 05 00 00       	call   804c899 <addTail>
 804c344:	83 c4 10             	add    $0x10,%esp
 804c347:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804c34a:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
 804c34e:	a1 18 b1 05 08       	mov    0x805b118,%eax
 804c353:	39 45 b8             	cmp    %eax,-0x48(%ebp)
 804c356:	0f 8c cd fc ff ff    	jl     804c029 <DAG2ir+0x19>
 804c35c:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804c35f:	c9                   	leave  
 804c360:	c3                   	ret    

0804c361 <opt_block>:
 804c361:	55                   	push   %ebp
 804c362:	89 e5                	mov    %esp,%ebp
 804c364:	83 ec 18             	sub    $0x18,%esp
 804c367:	8b 45 08             	mov    0x8(%ebp),%eax
 804c36a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c36d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804c374:	e8 42 f6 ff ff       	call   804b9bb <clearMap>
 804c379:	eb 51                	jmp    804c3cc <opt_block+0x6b>
 804c37b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c37e:	8b 00                	mov    (%eax),%eax
 804c380:	85 c0                	test   %eax,%eax
 804c382:	74 30                	je     804c3b4 <opt_block+0x53>
 804c384:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c387:	8b 00                	mov    (%eax),%eax
 804c389:	83 f8 05             	cmp    $0x5,%eax
 804c38c:	77 26                	ja     804c3b4 <opt_block+0x53>
 804c38e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c391:	8b 40 04             	mov    0x4(%eax),%eax
 804c394:	8b 00                	mov    (%eax),%eax
 804c396:	83 f8 06             	cmp    $0x6,%eax
 804c399:	75 19                	jne    804c3b4 <opt_block+0x53>
 804c39b:	83 ec 08             	sub    $0x8,%esp
 804c39e:	ff 75 0c             	pushl  0xc(%ebp)
 804c3a1:	ff 75 08             	pushl  0x8(%ebp)
 804c3a4:	e8 55 05 00 00       	call   804c8fe <copyInterCodes>
 804c3a9:	83 c4 10             	add    $0x10,%esp
 804c3ac:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c3af:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c3b2:	eb 34                	jmp    804c3e8 <opt_block+0x87>
 804c3b4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c3b7:	83 ec 0c             	sub    $0xc,%esp
 804c3ba:	50                   	push   %eax
 804c3bb:	e8 0c f9 ff ff       	call   804bccc <insertTuple>
 804c3c0:	83 c4 10             	add    $0x10,%esp
 804c3c3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c3c6:	8b 40 14             	mov    0x14(%eax),%eax
 804c3c9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c3cc:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804c3d0:	74 0b                	je     804c3dd <opt_block+0x7c>
 804c3d2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c3d5:	8b 40 10             	mov    0x10(%eax),%eax
 804c3d8:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804c3db:	75 9e                	jne    804c37b <opt_block+0x1a>
 804c3dd:	e8 2e fc ff ff       	call   804c010 <DAG2ir>
 804c3e2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c3e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c3e8:	c9                   	leave  
 804c3e9:	c3                   	ret    

0804c3ea <opt_ir>:
 804c3ea:	55                   	push   %ebp
 804c3eb:	89 e5                	mov    %esp,%ebp
 804c3ed:	83 ec 28             	sub    $0x28,%esp
 804c3f0:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804c3f7:	8b 45 08             	mov    0x8(%ebp),%eax
 804c3fa:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c3fd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804c404:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c407:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c40a:	e9 1f 01 00 00       	jmp    804c52e <opt_ir+0x144>
 804c40f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c412:	8b 00                	mov    (%eax),%eax
 804c414:	83 e8 07             	sub    $0x7,%eax
 804c417:	83 f8 0c             	cmp    $0xc,%eax
 804c41a:	0f 87 01 01 00 00    	ja     804c521 <opt_ir+0x137>
 804c420:	8b 04 85 cc 62 05 08 	mov    0x80562cc(,%eax,4),%eax
 804c427:	ff e0                	jmp    *%eax
 804c429:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804c42d:	74 31                	je     804c460 <opt_ir+0x76>
 804c42f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c432:	8b 40 10             	mov    0x10(%eax),%eax
 804c435:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c438:	83 ec 08             	sub    $0x8,%esp
 804c43b:	ff 75 f4             	pushl  -0xc(%ebp)
 804c43e:	ff 75 e4             	pushl  -0x1c(%ebp)
 804c441:	e8 1b ff ff ff       	call   804c361 <opt_block>
 804c446:	83 c4 10             	add    $0x10,%esp
 804c449:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c44c:	83 ec 08             	sub    $0x8,%esp
 804c44f:	ff 75 f0             	pushl  -0x10(%ebp)
 804c452:	ff 75 ec             	pushl  -0x14(%ebp)
 804c455:	e8 3f 04 00 00       	call   804c899 <addTail>
 804c45a:	83 c4 10             	add    $0x10,%esp
 804c45d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c460:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c463:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c466:	eb 09                	jmp    804c471 <opt_ir+0x87>
 804c468:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c46b:	8b 40 14             	mov    0x14(%eax),%eax
 804c46e:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c471:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804c475:	74 0d                	je     804c484 <opt_ir+0x9a>
 804c477:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c47a:	8b 40 14             	mov    0x14(%eax),%eax
 804c47d:	8b 00                	mov    (%eax),%eax
 804c47f:	83 f8 08             	cmp    $0x8,%eax
 804c482:	74 e4                	je     804c468 <opt_ir+0x7e>
 804c484:	83 ec 08             	sub    $0x8,%esp
 804c487:	ff 75 e8             	pushl  -0x18(%ebp)
 804c48a:	ff 75 e4             	pushl  -0x1c(%ebp)
 804c48d:	e8 6c 04 00 00       	call   804c8fe <copyInterCodes>
 804c492:	83 c4 10             	add    $0x10,%esp
 804c495:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c498:	83 ec 08             	sub    $0x8,%esp
 804c49b:	ff 75 f0             	pushl  -0x10(%ebp)
 804c49e:	ff 75 ec             	pushl  -0x14(%ebp)
 804c4a1:	e8 f3 03 00 00       	call   804c899 <addTail>
 804c4a6:	83 c4 10             	add    $0x10,%esp
 804c4a9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c4ac:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804c4b3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c4b6:	8b 40 14             	mov    0x14(%eax),%eax
 804c4b9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c4bc:	eb 67                	jmp    804c525 <opt_ir+0x13b>
 804c4be:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 804c4c2:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804c4c6:	7f 19                	jg     804c4e1 <opt_ir+0xf7>
 804c4c8:	68 30 63 05 08       	push   $0x8056330
 804c4cd:	68 2e 01 00 00       	push   $0x12e
 804c4d2:	68 a0 62 05 08       	push   $0x80562a0
 804c4d7:	68 c3 62 05 08       	push   $0x80562c3
 804c4dc:	e8 0f c5 ff ff       	call   80489f0 <__assert_fail@plt>
 804c4e1:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c4e4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c4e7:	83 ec 08             	sub    $0x8,%esp
 804c4ea:	ff 75 f4             	pushl  -0xc(%ebp)
 804c4ed:	ff 75 e4             	pushl  -0x1c(%ebp)
 804c4f0:	e8 6c fe ff ff       	call   804c361 <opt_block>
 804c4f5:	83 c4 10             	add    $0x10,%esp
 804c4f8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c4fb:	83 ec 08             	sub    $0x8,%esp
 804c4fe:	ff 75 f0             	pushl  -0x10(%ebp)
 804c501:	ff 75 ec             	pushl  -0x14(%ebp)
 804c504:	e8 90 03 00 00       	call   804c899 <addTail>
 804c509:	83 c4 10             	add    $0x10,%esp
 804c50c:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c50f:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804c516:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c519:	8b 40 14             	mov    0x14(%eax),%eax
 804c51c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c51f:	eb 04                	jmp    804c525 <opt_ir+0x13b>
 804c521:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 804c525:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c528:	8b 40 14             	mov    0x14(%eax),%eax
 804c52b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c52e:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804c532:	0f 85 d7 fe ff ff    	jne    804c40f <opt_ir+0x25>
 804c538:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c53b:	c9                   	leave  
 804c53c:	c3                   	ret    

0804c53d <printMap>:
 804c53d:	55                   	push   %ebp
 804c53e:	89 e5                	mov    %esp,%ebp
 804c540:	83 ec 18             	sub    $0x18,%esp
 804c543:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804c54a:	e9 d8 00 00 00       	jmp    804c627 <printMap+0xea>
 804c54f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c552:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804c559:	8b 00                	mov    (%eax),%eax
 804c55b:	83 f8 01             	cmp    $0x1,%eax
 804c55e:	75 35                	jne    804c595 <printMap+0x58>
 804c560:	83 ec 0c             	sub    $0xc,%esp
 804c563:	68 00 63 05 08       	push   $0x8056300
 804c568:	e8 73 c2 ff ff       	call   80487e0 <printf@plt>
 804c56d:	83 c4 10             	add    $0x10,%esp
 804c570:	8b 15 04 b1 05 08    	mov    0x805b104,%edx
 804c576:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c579:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804c580:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
 804c586:	83 ec 08             	sub    $0x8,%esp
 804c589:	52                   	push   %edx
 804c58a:	50                   	push   %eax
 804c58b:	e8 94 04 00 00       	call   804ca24 <printOperand>
 804c590:	83 c4 10             	add    $0x10,%esp
 804c593:	eb 1e                	jmp    804c5b3 <printMap+0x76>
 804c595:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c598:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804c59f:	8b 40 04             	mov    0x4(%eax),%eax
 804c5a2:	83 ec 08             	sub    $0x8,%esp
 804c5a5:	50                   	push   %eax
 804c5a6:	68 06 63 05 08       	push   $0x8056306
 804c5ab:	e8 30 c2 ff ff       	call   80487e0 <printf@plt>
 804c5b0:	83 c4 10             	add    $0x10,%esp
 804c5b3:	83 ec 0c             	sub    $0xc,%esp
 804c5b6:	68 0e 63 05 08       	push   $0x805630e
 804c5bb:	e8 20 c2 ff ff       	call   80487e0 <printf@plt>
 804c5c0:	83 c4 10             	add    $0x10,%esp
 804c5c3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804c5ca:	eb 35                	jmp    804c601 <printMap+0xc4>
 804c5cc:	8b 15 04 b1 05 08    	mov    0x805b104,%edx
 804c5d2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c5d5:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804c5dc:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804c5df:	8b 44 88 08          	mov    0x8(%eax,%ecx,4),%eax
 804c5e3:	83 ec 08             	sub    $0x8,%esp
 804c5e6:	52                   	push   %edx
 804c5e7:	50                   	push   %eax
 804c5e8:	e8 37 04 00 00       	call   804ca24 <printOperand>
 804c5ed:	83 c4 10             	add    $0x10,%esp
 804c5f0:	83 ec 0c             	sub    $0xc,%esp
 804c5f3:	6a 20                	push   $0x20
 804c5f5:	e8 36 c3 ff ff       	call   8048930 <putchar@plt>
 804c5fa:	83 c4 10             	add    $0x10,%esp
 804c5fd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804c601:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c604:	8b 04 85 80 b3 05 08 	mov    0x805b380(,%eax,4),%eax
 804c60b:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 804c611:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804c614:	7f b6                	jg     804c5cc <printMap+0x8f>
 804c616:	83 ec 0c             	sub    $0xc,%esp
 804c619:	6a 0a                	push   $0xa
 804c61b:	e8 10 c3 ff ff       	call   8048930 <putchar@plt>
 804c620:	83 c4 10             	add    $0x10,%esp
 804c623:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804c627:	a1 18 b1 05 08       	mov    0x805b118,%eax
 804c62c:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 804c62f:	0f 8c 1a ff ff ff    	jl     804c54f <printMap+0x12>
 804c635:	90                   	nop
 804c636:	c9                   	leave  
 804c637:	c3                   	ret    

0804c638 <main>:
 804c638:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804c63c:	83 e4 f0             	and    $0xfffffff0,%esp
 804c63f:	ff 71 fc             	pushl  -0x4(%ecx)
 804c642:	55                   	push   %ebp
 804c643:	89 e5                	mov    %esp,%ebp
 804c645:	53                   	push   %ebx
 804c646:	51                   	push   %ecx
 804c647:	83 ec 10             	sub    $0x10,%esp
 804c64a:	89 cb                	mov    %ecx,%ebx
 804c64c:	83 3b 01             	cmpl   $0x1,(%ebx)
 804c64f:	0f 8e d4 01 00 00    	jle    804c829 <main+0x1f1>
 804c655:	8b 43 04             	mov    0x4(%ebx),%eax
 804c658:	83 c0 04             	add    $0x4,%eax
 804c65b:	8b 00                	mov    (%eax),%eax
 804c65d:	83 ec 08             	sub    $0x8,%esp
 804c660:	68 38 63 05 08       	push   $0x8056338
 804c665:	50                   	push   %eax
 804c666:	e8 a5 c2 ff ff       	call   8048910 <fopen@plt>
 804c66b:	83 c4 10             	add    $0x10,%esp
 804c66e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c671:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804c675:	75 1e                	jne    804c695 <main+0x5d>
 804c677:	8b 43 04             	mov    0x4(%ebx),%eax
 804c67a:	83 c0 04             	add    $0x4,%eax
 804c67d:	8b 00                	mov    (%eax),%eax
 804c67f:	83 ec 0c             	sub    $0xc,%esp
 804c682:	50                   	push   %eax
 804c683:	e8 c8 c1 ff ff       	call   8048850 <perror@plt>
 804c688:	83 c4 10             	add    $0x10,%esp
 804c68b:	b8 01 00 00 00       	mov    $0x1,%eax
 804c690:	e9 a9 01 00 00       	jmp    804c83e <main+0x206>
 804c695:	83 ec 0c             	sub    $0xc,%esp
 804c698:	ff 75 f0             	pushl  -0x10(%ebp)
 804c69b:	e8 40 7b 00 00       	call   80541e0 <yyrestart>
 804c6a0:	83 c4 10             	add    $0x10,%esp
 804c6a3:	e8 3f 31 00 00       	call   804f7e7 <yyparse>
 804c6a8:	83 ec 0c             	sub    $0xc,%esp
 804c6ab:	ff 75 f0             	pushl  -0x10(%ebp)
 804c6ae:	e8 6d c1 ff ff       	call   8048820 <fclose@plt>
 804c6b3:	83 c4 10             	add    $0x10,%esp
 804c6b6:	c7 05 c0 b0 05 08 01 	movl   $0x1,0x805b0c0
 804c6bd:	00 00 00 
 804c6c0:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804c6c5:	85 c0                	test   %eax,%eax
 804c6c7:	75 09                	jne    804c6d2 <main+0x9a>
 804c6c9:	a1 2c b1 05 08       	mov    0x805b12c,%eax
 804c6ce:	85 c0                	test   %eax,%eax
 804c6d0:	75 0a                	jne    804c6dc <main+0xa4>
 804c6d2:	b8 01 00 00 00       	mov    $0x1,%eax
 804c6d7:	e9 62 01 00 00       	jmp    804c83e <main+0x206>
 804c6dc:	e8 ec 86 00 00       	call   8054dcd <initTable>
 804c6e1:	e8 8b 88 00 00       	call   8054f71 <preprocessTable>
 804c6e6:	a1 2c b1 05 08       	mov    0x805b12c,%eax
 804c6eb:	83 ec 0c             	sub    $0xc,%esp
 804c6ee:	50                   	push   %eax
 804c6ef:	e8 21 dc ff ff       	call   804a315 <sematicCheck>
 804c6f4:	83 c4 10             	add    $0x10,%esp
 804c6f7:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 804c6fc:	85 c0                	test   %eax,%eax
 804c6fe:	0f 85 f9 00 00 00    	jne    804c7fd <main+0x1c5>
 804c704:	83 3b 02             	cmpl   $0x2,(%ebx)
 804c707:	0f 8e f0 00 00 00    	jle    804c7fd <main+0x1c5>
 804c70d:	a1 2c b1 05 08       	mov    0x805b12c,%eax
 804c712:	83 ec 0c             	sub    $0xc,%esp
 804c715:	50                   	push   %eax
 804c716:	e8 f9 0e 00 00       	call   804d614 <generate_ir>
 804c71b:	83 c4 10             	add    $0x10,%esp
 804c71e:	a3 1c b1 05 08       	mov    %eax,0x805b11c
 804c723:	a1 1c b1 05 08       	mov    0x805b11c,%eax
 804c728:	83 ec 0c             	sub    $0xc,%esp
 804c72b:	50                   	push   %eax
 804c72c:	e8 17 01 00 00       	call   804c848 <test_ir>
 804c731:	83 c4 10             	add    $0x10,%esp
 804c734:	8b 43 04             	mov    0x4(%ebx),%eax
 804c737:	83 c0 08             	add    $0x8,%eax
 804c73a:	8b 00                	mov    (%eax),%eax
 804c73c:	83 ec 08             	sub    $0x8,%esp
 804c73f:	68 3a 63 05 08       	push   $0x805633a
 804c744:	50                   	push   %eax
 804c745:	e8 c6 c1 ff ff       	call   8048910 <fopen@plt>
 804c74a:	83 c4 10             	add    $0x10,%esp
 804c74d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c750:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804c754:	75 1e                	jne    804c774 <main+0x13c>
 804c756:	8b 43 04             	mov    0x4(%ebx),%eax
 804c759:	83 c0 08             	add    $0x8,%eax
 804c75c:	8b 00                	mov    (%eax),%eax
 804c75e:	83 ec 0c             	sub    $0xc,%esp
 804c761:	50                   	push   %eax
 804c762:	e8 e9 c0 ff ff       	call   8048850 <perror@plt>
 804c767:	83 c4 10             	add    $0x10,%esp
 804c76a:	b8 01 00 00 00       	mov    $0x1,%eax
 804c76f:	e9 ca 00 00 00       	jmp    804c83e <main+0x206>
 804c774:	a1 04 b1 05 08       	mov    0x805b104,%eax
 804c779:	a3 28 b1 05 08       	mov    %eax,0x805b128
 804c77e:	a1 1c b1 05 08       	mov    0x805b11c,%eax
 804c783:	a3 20 b1 05 08       	mov    %eax,0x805b120
 804c788:	8b 15 28 b1 05 08    	mov    0x805b128,%edx
 804c78e:	a1 1c b1 05 08       	mov    0x805b11c,%eax
 804c793:	83 ec 08             	sub    $0x8,%esp
 804c796:	52                   	push   %edx
 804c797:	50                   	push   %eax
 804c798:	e8 9d 03 00 00       	call   804cb3a <printInterCodes>
 804c79d:	83 c4 10             	add    $0x10,%esp
 804c7a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c7a3:	a3 24 b1 05 08       	mov    %eax,0x805b124
 804c7a8:	a1 20 b1 05 08       	mov    0x805b120,%eax
 804c7ad:	83 ec 0c             	sub    $0xc,%esp
 804c7b0:	50                   	push   %eax
 804c7b1:	e8 3e d1 ff ff       	call   80498f4 <generate_mips>
 804c7b6:	83 c4 10             	add    $0x10,%esp
 804c7b9:	83 ec 0c             	sub    $0xc,%esp
 804c7bc:	ff 75 f4             	pushl  -0xc(%ebp)
 804c7bf:	e8 5c c0 ff ff       	call   8048820 <fclose@plt>
 804c7c4:	83 c4 10             	add    $0x10,%esp
 804c7c7:	c7 05 28 b1 05 08 00 	movl   $0x0,0x805b128
 804c7ce:	00 00 00 
 804c7d1:	c7 05 24 b1 05 08 00 	movl   $0x0,0x805b124
 804c7d8:	00 00 00 
 804c7db:	a1 1c b1 05 08       	mov    0x805b11c,%eax
 804c7e0:	83 ec 0c             	sub    $0xc,%esp
 804c7e3:	50                   	push   %eax
 804c7e4:	e8 87 01 00 00       	call   804c970 <clearInterCodes>
 804c7e9:	83 c4 10             	add    $0x10,%esp
 804c7ec:	a1 20 b1 05 08       	mov    0x805b120,%eax
 804c7f1:	83 ec 0c             	sub    $0xc,%esp
 804c7f4:	50                   	push   %eax
 804c7f5:	e8 76 01 00 00       	call   804c970 <clearInterCodes>
 804c7fa:	83 c4 10             	add    $0x10,%esp
 804c7fd:	a1 2c b1 05 08       	mov    0x805b12c,%eax
 804c802:	83 ec 0c             	sub    $0xc,%esp
 804c805:	50                   	push   %eax
 804c806:	e8 73 c5 ff ff       	call   8048d7e <deleteTree>
 804c80b:	83 c4 10             	add    $0x10,%esp
 804c80e:	e8 f1 85 00 00       	call   8054e04 <clearTable>
 804c813:	c7 05 2c b1 05 08 00 	movl   $0x0,0x805b12c
 804c81a:	00 00 00 
 804c81d:	c7 05 3c b1 05 08 00 	movl   $0x0,0x805b13c
 804c824:	00 00 00 
 804c827:	eb 10                	jmp    804c839 <main+0x201>
 804c829:	83 ec 0c             	sub    $0xc,%esp
 804c82c:	68 3c 63 05 08       	push   $0x805633c
 804c831:	e8 7a c0 ff ff       	call   80488b0 <puts@plt>
 804c836:	83 c4 10             	add    $0x10,%esp
 804c839:	b8 00 00 00 00       	mov    $0x0,%eax
 804c83e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804c841:	59                   	pop    %ecx
 804c842:	5b                   	pop    %ebx
 804c843:	5d                   	pop    %ebp
 804c844:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804c847:	c3                   	ret    

0804c848 <test_ir>:
 804c848:	55                   	push   %ebp
 804c849:	89 e5                	mov    %esp,%ebp
 804c84b:	83 ec 18             	sub    $0x18,%esp
 804c84e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804c855:	eb 2d                	jmp    804c884 <test_ir+0x3c>
 804c857:	8b 45 08             	mov    0x8(%ebp),%eax
 804c85a:	8b 40 14             	mov    0x14(%eax),%eax
 804c85d:	8b 40 10             	mov    0x10(%eax),%eax
 804c860:	3b 45 08             	cmp    0x8(%ebp),%eax
 804c863:	74 16                	je     804c87b <test_ir+0x33>
 804c865:	68 84 63 05 08       	push   $0x8056384
 804c86a:	6a 0c                	push   $0xc
 804c86c:	68 60 63 05 08       	push   $0x8056360
 804c871:	68 67 63 05 08       	push   $0x8056367
 804c876:	e8 75 c1 ff ff       	call   80489f0 <__assert_fail@plt>
 804c87b:	8b 45 08             	mov    0x8(%ebp),%eax
 804c87e:	8b 40 14             	mov    0x14(%eax),%eax
 804c881:	89 45 08             	mov    %eax,0x8(%ebp)
 804c884:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804c888:	74 0a                	je     804c894 <test_ir+0x4c>
 804c88a:	8b 45 08             	mov    0x8(%ebp),%eax
 804c88d:	8b 40 14             	mov    0x14(%eax),%eax
 804c890:	85 c0                	test   %eax,%eax
 804c892:	75 c3                	jne    804c857 <test_ir+0xf>
 804c894:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c897:	c9                   	leave  
 804c898:	c3                   	ret    

0804c899 <addTail>:
 804c899:	55                   	push   %ebp
 804c89a:	89 e5                	mov    %esp,%ebp
 804c89c:	83 ec 10             	sub    $0x10,%esp
 804c89f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804c8a3:	75 05                	jne    804c8aa <addTail+0x11>
 804c8a5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c8a8:	eb 36                	jmp    804c8e0 <addTail+0x47>
 804c8aa:	8b 45 08             	mov    0x8(%ebp),%eax
 804c8ad:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804c8b0:	eb 09                	jmp    804c8bb <addTail+0x22>
 804c8b2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804c8b5:	8b 40 14             	mov    0x14(%eax),%eax
 804c8b8:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804c8bb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804c8be:	8b 40 14             	mov    0x14(%eax),%eax
 804c8c1:	85 c0                	test   %eax,%eax
 804c8c3:	75 ed                	jne    804c8b2 <addTail+0x19>
 804c8c5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804c8c8:	8b 55 0c             	mov    0xc(%ebp),%edx
 804c8cb:	89 50 14             	mov    %edx,0x14(%eax)
 804c8ce:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804c8d2:	74 09                	je     804c8dd <addTail+0x44>
 804c8d4:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c8d7:	8b 55 fc             	mov    -0x4(%ebp),%edx
 804c8da:	89 50 10             	mov    %edx,0x10(%eax)
 804c8dd:	8b 45 08             	mov    0x8(%ebp),%eax
 804c8e0:	c9                   	leave  
 804c8e1:	c3                   	ret    

0804c8e2 <delInterCodes>:
 804c8e2:	55                   	push   %ebp
 804c8e3:	89 e5                	mov    %esp,%ebp
 804c8e5:	83 ec 08             	sub    $0x8,%esp
 804c8e8:	68 94 66 05 08       	push   $0x8056694
 804c8ed:	6a 14                	push   $0x14
 804c8ef:	68 8c 63 05 08       	push   $0x805638c
 804c8f4:	68 91 63 05 08       	push   $0x8056391
 804c8f9:	e8 f2 c0 ff ff       	call   80489f0 <__assert_fail@plt>

0804c8fe <copyInterCodes>:
 804c8fe:	55                   	push   %ebp
 804c8ff:	89 e5                	mov    %esp,%ebp
 804c901:	53                   	push   %ebx
 804c902:	83 ec 14             	sub    $0x14,%esp
 804c905:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804c90c:	8b 45 08             	mov    0x8(%ebp),%eax
 804c90f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c912:	eb 43                	jmp    804c957 <copyInterCodes+0x59>
 804c914:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c917:	8b 58 0c             	mov    0xc(%eax),%ebx
 804c91a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c91d:	8b 48 08             	mov    0x8(%eax),%ecx
 804c920:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c923:	8b 50 04             	mov    0x4(%eax),%edx
 804c926:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c929:	8b 00                	mov    (%eax),%eax
 804c92b:	53                   	push   %ebx
 804c92c:	51                   	push   %ecx
 804c92d:	52                   	push   %edx
 804c92e:	50                   	push   %eax
 804c92f:	e8 e3 0a 00 00       	call   804d417 <newIC>
 804c934:	83 c4 10             	add    $0x10,%esp
 804c937:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c93a:	83 ec 08             	sub    $0x8,%esp
 804c93d:	ff 75 f4             	pushl  -0xc(%ebp)
 804c940:	ff 75 ec             	pushl  -0x14(%ebp)
 804c943:	e8 51 ff ff ff       	call   804c899 <addTail>
 804c948:	83 c4 10             	add    $0x10,%esp
 804c94b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c94e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c951:	8b 40 14             	mov    0x14(%eax),%eax
 804c954:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c957:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804c95b:	74 0b                	je     804c968 <copyInterCodes+0x6a>
 804c95d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c960:	8b 40 10             	mov    0x10(%eax),%eax
 804c963:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804c966:	75 ac                	jne    804c914 <copyInterCodes+0x16>
 804c968:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c96b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804c96e:	c9                   	leave  
 804c96f:	c3                   	ret    

0804c970 <clearInterCodes>:
 804c970:	55                   	push   %ebp
 804c971:	89 e5                	mov    %esp,%ebp
 804c973:	83 ec 18             	sub    $0x18,%esp
 804c976:	eb 1d                	jmp    804c995 <clearInterCodes+0x25>
 804c978:	8b 45 08             	mov    0x8(%ebp),%eax
 804c97b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c97e:	8b 45 08             	mov    0x8(%ebp),%eax
 804c981:	8b 40 14             	mov    0x14(%eax),%eax
 804c984:	89 45 08             	mov    %eax,0x8(%ebp)
 804c987:	83 ec 0c             	sub    $0xc,%esp
 804c98a:	ff 75 f4             	pushl  -0xc(%ebp)
 804c98d:	e8 5e be ff ff       	call   80487f0 <free@plt>
 804c992:	83 c4 10             	add    $0x10,%esp
 804c995:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804c999:	75 dd                	jne    804c978 <clearInterCodes+0x8>
 804c99b:	90                   	nop
 804c99c:	c9                   	leave  
 804c99d:	c3                   	ret    

0804c99e <newParm>:
 804c99e:	55                   	push   %ebp
 804c99f:	89 e5                	mov    %esp,%ebp
 804c9a1:	a1 a0 b0 05 08       	mov    0x805b0a0,%eax
 804c9a6:	8d 50 01             	lea    0x1(%eax),%edx
 804c9a9:	89 15 a0 b0 05 08    	mov    %edx,0x805b0a0
 804c9af:	5d                   	pop    %ebp
 804c9b0:	c3                   	ret    

0804c9b1 <newArg>:
 804c9b1:	55                   	push   %ebp
 804c9b2:	89 e5                	mov    %esp,%ebp
 804c9b4:	a1 a4 b0 05 08       	mov    0x805b0a4,%eax
 804c9b9:	8d 50 01             	lea    0x1(%eax),%edx
 804c9bc:	89 15 a4 b0 05 08    	mov    %edx,0x805b0a4
 804c9c2:	5d                   	pop    %ebp
 804c9c3:	c3                   	ret    

0804c9c4 <newTemp>:
 804c9c4:	55                   	push   %ebp
 804c9c5:	89 e5                	mov    %esp,%ebp
 804c9c7:	83 ec 18             	sub    $0x18,%esp
 804c9ca:	e8 b5 09 00 00       	call   804d384 <newOperand>
 804c9cf:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c9d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c9d5:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
 804c9db:	a1 a8 b0 05 08       	mov    0x805b0a8,%eax
 804c9e0:	8d 50 01             	lea    0x1(%eax),%edx
 804c9e3:	89 15 a8 b0 05 08    	mov    %edx,0x805b0a8
 804c9e9:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804c9ec:	89 42 04             	mov    %eax,0x4(%edx)
 804c9ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c9f2:	c9                   	leave  
 804c9f3:	c3                   	ret    

0804c9f4 <newLabel>:
 804c9f4:	55                   	push   %ebp
 804c9f5:	89 e5                	mov    %esp,%ebp
 804c9f7:	83 ec 18             	sub    $0x18,%esp
 804c9fa:	e8 85 09 00 00       	call   804d384 <newOperand>
 804c9ff:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ca02:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ca05:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
 804ca0b:	a1 ac b0 05 08       	mov    0x805b0ac,%eax
 804ca10:	8d 50 01             	lea    0x1(%eax),%edx
 804ca13:	89 15 ac b0 05 08    	mov    %edx,0x805b0ac
 804ca19:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804ca1c:	89 42 04             	mov    %eax,0x4(%edx)
 804ca1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ca22:	c9                   	leave  
 804ca23:	c3                   	ret    

0804ca24 <printOperand>:
 804ca24:	55                   	push   %ebp
 804ca25:	89 e5                	mov    %esp,%ebp
 804ca27:	83 ec 08             	sub    $0x8,%esp
 804ca2a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ca2e:	75 15                	jne    804ca45 <printOperand+0x21>
 804ca30:	83 ec 0c             	sub    $0xc,%esp
 804ca33:	68 93 63 05 08       	push   $0x8056393
 804ca38:	e8 a3 bd ff ff       	call   80487e0 <printf@plt>
 804ca3d:	83 c4 10             	add    $0x10,%esp
 804ca40:	e9 f3 00 00 00       	jmp    804cb38 <printOperand+0x114>
 804ca45:	8b 45 08             	mov    0x8(%ebp),%eax
 804ca48:	8b 00                	mov    (%eax),%eax
 804ca4a:	83 f8 06             	cmp    $0x6,%eax
 804ca4d:	0f 87 cb 00 00 00    	ja     804cb1e <printOperand+0xfa>
 804ca53:	8b 04 85 b0 63 05 08 	mov    0x80563b0(,%eax,4),%eax
 804ca5a:	ff e0                	jmp    *%eax
 804ca5c:	8b 45 08             	mov    0x8(%ebp),%eax
 804ca5f:	8b 40 04             	mov    0x4(%eax),%eax
 804ca62:	83 ec 08             	sub    $0x8,%esp
 804ca65:	ff 75 0c             	pushl  0xc(%ebp)
 804ca68:	50                   	push   %eax
 804ca69:	e8 72 bf ff ff       	call   80489e0 <fputs@plt>
 804ca6e:	83 c4 10             	add    $0x10,%esp
 804ca71:	e9 c2 00 00 00       	jmp    804cb38 <printOperand+0x114>
 804ca76:	8b 45 08             	mov    0x8(%ebp),%eax
 804ca79:	8b 40 04             	mov    0x4(%eax),%eax
 804ca7c:	83 ec 04             	sub    $0x4,%esp
 804ca7f:	50                   	push   %eax
 804ca80:	68 9b 63 05 08       	push   $0x805639b
 804ca85:	ff 75 0c             	pushl  0xc(%ebp)
 804ca88:	e8 73 be ff ff       	call   8048900 <fprintf@plt>
 804ca8d:	83 c4 10             	add    $0x10,%esp
 804ca90:	e9 a3 00 00 00       	jmp    804cb38 <printOperand+0x114>
 804ca95:	8b 45 08             	mov    0x8(%ebp),%eax
 804ca98:	8b 40 04             	mov    0x4(%eax),%eax
 804ca9b:	83 ec 04             	sub    $0x4,%esp
 804ca9e:	50                   	push   %eax
 804ca9f:	68 9f 63 05 08       	push   $0x805639f
 804caa4:	ff 75 0c             	pushl  0xc(%ebp)
 804caa7:	e8 54 be ff ff       	call   8048900 <fprintf@plt>
 804caac:	83 c4 10             	add    $0x10,%esp
 804caaf:	e9 84 00 00 00       	jmp    804cb38 <printOperand+0x114>
 804cab4:	8b 45 08             	mov    0x8(%ebp),%eax
 804cab7:	8b 40 04             	mov    0x4(%eax),%eax
 804caba:	83 ec 04             	sub    $0x4,%esp
 804cabd:	50                   	push   %eax
 804cabe:	68 a3 63 05 08       	push   $0x80563a3
 804cac3:	ff 75 0c             	pushl  0xc(%ebp)
 804cac6:	e8 35 be ff ff       	call   8048900 <fprintf@plt>
 804cacb:	83 c4 10             	add    $0x10,%esp
 804cace:	eb 68                	jmp    804cb38 <printOperand+0x114>
 804cad0:	83 ec 08             	sub    $0x8,%esp
 804cad3:	ff 75 0c             	pushl  0xc(%ebp)
 804cad6:	6a 26                	push   $0x26
 804cad8:	e8 a3 be ff ff       	call   8048980 <fputc@plt>
 804cadd:	83 c4 10             	add    $0x10,%esp
 804cae0:	8b 45 08             	mov    0x8(%ebp),%eax
 804cae3:	8b 40 04             	mov    0x4(%eax),%eax
 804cae6:	83 ec 08             	sub    $0x8,%esp
 804cae9:	ff 75 0c             	pushl  0xc(%ebp)
 804caec:	50                   	push   %eax
 804caed:	e8 32 ff ff ff       	call   804ca24 <printOperand>
 804caf2:	83 c4 10             	add    $0x10,%esp
 804caf5:	eb 41                	jmp    804cb38 <printOperand+0x114>
 804caf7:	83 ec 08             	sub    $0x8,%esp
 804cafa:	ff 75 0c             	pushl  0xc(%ebp)
 804cafd:	6a 2a                	push   $0x2a
 804caff:	e8 7c be ff ff       	call   8048980 <fputc@plt>
 804cb04:	83 c4 10             	add    $0x10,%esp
 804cb07:	8b 45 08             	mov    0x8(%ebp),%eax
 804cb0a:	8b 40 04             	mov    0x4(%eax),%eax
 804cb0d:	83 ec 08             	sub    $0x8,%esp
 804cb10:	ff 75 0c             	pushl  0xc(%ebp)
 804cb13:	50                   	push   %eax
 804cb14:	e8 0b ff ff ff       	call   804ca24 <printOperand>
 804cb19:	83 c4 10             	add    $0x10,%esp
 804cb1c:	eb 1a                	jmp    804cb38 <printOperand+0x114>
 804cb1e:	8b 45 08             	mov    0x8(%ebp),%eax
 804cb21:	8b 40 04             	mov    0x4(%eax),%eax
 804cb24:	83 ec 04             	sub    $0x4,%esp
 804cb27:	50                   	push   %eax
 804cb28:	68 ab 63 05 08       	push   $0x80563ab
 804cb2d:	ff 75 0c             	pushl  0xc(%ebp)
 804cb30:	e8 cb bd ff ff       	call   8048900 <fprintf@plt>
 804cb35:	83 c4 10             	add    $0x10,%esp
 804cb38:	c9                   	leave  
 804cb39:	c3                   	ret    

0804cb3a <printInterCodes>:
 804cb3a:	55                   	push   %ebp
 804cb3b:	89 e5                	mov    %esp,%ebp
 804cb3d:	83 ec 18             	sub    $0x18,%esp
 804cb40:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804cb44:	75 1a                	jne    804cb60 <printInterCodes+0x26>
 804cb46:	83 ec 0c             	sub    $0xc,%esp
 804cb49:	68 cc 63 05 08       	push   $0x80563cc
 804cb4e:	e8 5d bd ff ff       	call   80488b0 <puts@plt>
 804cb53:	83 c4 10             	add    $0x10,%esp
 804cb56:	b8 00 00 00 00       	mov    $0x0,%eax
 804cb5b:	e9 f5 07 00 00       	jmp    804d355 <printInterCodes+0x81b>
 804cb60:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804cb64:	75 08                	jne    804cb6e <printInterCodes+0x34>
 804cb66:	a1 04 b1 05 08       	mov    0x805b104,%eax
 804cb6b:	89 45 0c             	mov    %eax,0xc(%ebp)
 804cb6e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804cb75:	e9 ce 07 00 00       	jmp    804d348 <printInterCodes+0x80e>
 804cb7a:	8b 45 08             	mov    0x8(%ebp),%eax
 804cb7d:	8b 00                	mov    (%eax),%eax
 804cb7f:	83 f8 17             	cmp    $0x17,%eax
 804cb82:	0f 87 90 07 00 00    	ja     804d318 <printInterCodes+0x7de>
 804cb88:	8b 04 85 74 64 05 08 	mov    0x8056474(,%eax,4),%eax
 804cb8f:	ff e0                	jmp    *%eax
 804cb91:	8b 45 08             	mov    0x8(%ebp),%eax
 804cb94:	8b 40 04             	mov    0x4(%eax),%eax
 804cb97:	83 ec 08             	sub    $0x8,%esp
 804cb9a:	ff 75 0c             	pushl  0xc(%ebp)
 804cb9d:	50                   	push   %eax
 804cb9e:	e8 81 fe ff ff       	call   804ca24 <printOperand>
 804cba3:	83 c4 10             	add    $0x10,%esp
 804cba6:	ff 75 0c             	pushl  0xc(%ebp)
 804cba9:	6a 04                	push   $0x4
 804cbab:	6a 01                	push   $0x1
 804cbad:	68 d4 63 05 08       	push   $0x80563d4
 804cbb2:	e8 a9 bc ff ff       	call   8048860 <fwrite@plt>
 804cbb7:	83 c4 10             	add    $0x10,%esp
 804cbba:	8b 45 08             	mov    0x8(%ebp),%eax
 804cbbd:	8b 40 08             	mov    0x8(%eax),%eax
 804cbc0:	83 ec 08             	sub    $0x8,%esp
 804cbc3:	ff 75 0c             	pushl  0xc(%ebp)
 804cbc6:	50                   	push   %eax
 804cbc7:	e8 58 fe ff ff       	call   804ca24 <printOperand>
 804cbcc:	83 c4 10             	add    $0x10,%esp
 804cbcf:	e9 57 07 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804cbd4:	8b 45 08             	mov    0x8(%ebp),%eax
 804cbd7:	8b 40 04             	mov    0x4(%eax),%eax
 804cbda:	83 ec 08             	sub    $0x8,%esp
 804cbdd:	ff 75 0c             	pushl  0xc(%ebp)
 804cbe0:	50                   	push   %eax
 804cbe1:	e8 3e fe ff ff       	call   804ca24 <printOperand>
 804cbe6:	83 c4 10             	add    $0x10,%esp
 804cbe9:	ff 75 0c             	pushl  0xc(%ebp)
 804cbec:	6a 04                	push   $0x4
 804cbee:	6a 01                	push   $0x1
 804cbf0:	68 d4 63 05 08       	push   $0x80563d4
 804cbf5:	e8 66 bc ff ff       	call   8048860 <fwrite@plt>
 804cbfa:	83 c4 10             	add    $0x10,%esp
 804cbfd:	8b 45 08             	mov    0x8(%ebp),%eax
 804cc00:	8b 40 08             	mov    0x8(%eax),%eax
 804cc03:	83 ec 08             	sub    $0x8,%esp
 804cc06:	ff 75 0c             	pushl  0xc(%ebp)
 804cc09:	50                   	push   %eax
 804cc0a:	e8 15 fe ff ff       	call   804ca24 <printOperand>
 804cc0f:	83 c4 10             	add    $0x10,%esp
 804cc12:	ff 75 0c             	pushl  0xc(%ebp)
 804cc15:	6a 03                	push   $0x3
 804cc17:	6a 01                	push   $0x1
 804cc19:	68 d9 63 05 08       	push   $0x80563d9
 804cc1e:	e8 3d bc ff ff       	call   8048860 <fwrite@plt>
 804cc23:	83 c4 10             	add    $0x10,%esp
 804cc26:	8b 45 08             	mov    0x8(%ebp),%eax
 804cc29:	8b 40 0c             	mov    0xc(%eax),%eax
 804cc2c:	83 ec 08             	sub    $0x8,%esp
 804cc2f:	ff 75 0c             	pushl  0xc(%ebp)
 804cc32:	50                   	push   %eax
 804cc33:	e8 ec fd ff ff       	call   804ca24 <printOperand>
 804cc38:	83 c4 10             	add    $0x10,%esp
 804cc3b:	e9 eb 06 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804cc40:	8b 45 08             	mov    0x8(%ebp),%eax
 804cc43:	8b 40 04             	mov    0x4(%eax),%eax
 804cc46:	83 ec 08             	sub    $0x8,%esp
 804cc49:	ff 75 0c             	pushl  0xc(%ebp)
 804cc4c:	50                   	push   %eax
 804cc4d:	e8 d2 fd ff ff       	call   804ca24 <printOperand>
 804cc52:	83 c4 10             	add    $0x10,%esp
 804cc55:	ff 75 0c             	pushl  0xc(%ebp)
 804cc58:	6a 04                	push   $0x4
 804cc5a:	6a 01                	push   $0x1
 804cc5c:	68 d4 63 05 08       	push   $0x80563d4
 804cc61:	e8 fa bb ff ff       	call   8048860 <fwrite@plt>
 804cc66:	83 c4 10             	add    $0x10,%esp
 804cc69:	8b 45 08             	mov    0x8(%ebp),%eax
 804cc6c:	8b 40 08             	mov    0x8(%eax),%eax
 804cc6f:	83 ec 08             	sub    $0x8,%esp
 804cc72:	ff 75 0c             	pushl  0xc(%ebp)
 804cc75:	50                   	push   %eax
 804cc76:	e8 a9 fd ff ff       	call   804ca24 <printOperand>
 804cc7b:	83 c4 10             	add    $0x10,%esp
 804cc7e:	ff 75 0c             	pushl  0xc(%ebp)
 804cc81:	6a 03                	push   $0x3
 804cc83:	6a 01                	push   $0x1
 804cc85:	68 dd 63 05 08       	push   $0x80563dd
 804cc8a:	e8 d1 bb ff ff       	call   8048860 <fwrite@plt>
 804cc8f:	83 c4 10             	add    $0x10,%esp
 804cc92:	8b 45 08             	mov    0x8(%ebp),%eax
 804cc95:	8b 40 0c             	mov    0xc(%eax),%eax
 804cc98:	83 ec 08             	sub    $0x8,%esp
 804cc9b:	ff 75 0c             	pushl  0xc(%ebp)
 804cc9e:	50                   	push   %eax
 804cc9f:	e8 80 fd ff ff       	call   804ca24 <printOperand>
 804cca4:	83 c4 10             	add    $0x10,%esp
 804cca7:	e9 7f 06 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804ccac:	8b 45 08             	mov    0x8(%ebp),%eax
 804ccaf:	8b 40 04             	mov    0x4(%eax),%eax
 804ccb2:	83 ec 08             	sub    $0x8,%esp
 804ccb5:	ff 75 0c             	pushl  0xc(%ebp)
 804ccb8:	50                   	push   %eax
 804ccb9:	e8 66 fd ff ff       	call   804ca24 <printOperand>
 804ccbe:	83 c4 10             	add    $0x10,%esp
 804ccc1:	ff 75 0c             	pushl  0xc(%ebp)
 804ccc4:	6a 04                	push   $0x4
 804ccc6:	6a 01                	push   $0x1
 804ccc8:	68 d4 63 05 08       	push   $0x80563d4
 804cccd:	e8 8e bb ff ff       	call   8048860 <fwrite@plt>
 804ccd2:	83 c4 10             	add    $0x10,%esp
 804ccd5:	8b 45 08             	mov    0x8(%ebp),%eax
 804ccd8:	8b 40 08             	mov    0x8(%eax),%eax
 804ccdb:	83 ec 08             	sub    $0x8,%esp
 804ccde:	ff 75 0c             	pushl  0xc(%ebp)
 804cce1:	50                   	push   %eax
 804cce2:	e8 3d fd ff ff       	call   804ca24 <printOperand>
 804cce7:	83 c4 10             	add    $0x10,%esp
 804ccea:	ff 75 0c             	pushl  0xc(%ebp)
 804cced:	6a 03                	push   $0x3
 804ccef:	6a 01                	push   $0x1
 804ccf1:	68 e1 63 05 08       	push   $0x80563e1
 804ccf6:	e8 65 bb ff ff       	call   8048860 <fwrite@plt>
 804ccfb:	83 c4 10             	add    $0x10,%esp
 804ccfe:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd01:	8b 40 0c             	mov    0xc(%eax),%eax
 804cd04:	83 ec 08             	sub    $0x8,%esp
 804cd07:	ff 75 0c             	pushl  0xc(%ebp)
 804cd0a:	50                   	push   %eax
 804cd0b:	e8 14 fd ff ff       	call   804ca24 <printOperand>
 804cd10:	83 c4 10             	add    $0x10,%esp
 804cd13:	e9 13 06 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804cd18:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd1b:	8b 40 04             	mov    0x4(%eax),%eax
 804cd1e:	83 ec 08             	sub    $0x8,%esp
 804cd21:	ff 75 0c             	pushl  0xc(%ebp)
 804cd24:	50                   	push   %eax
 804cd25:	e8 fa fc ff ff       	call   804ca24 <printOperand>
 804cd2a:	83 c4 10             	add    $0x10,%esp
 804cd2d:	ff 75 0c             	pushl  0xc(%ebp)
 804cd30:	6a 04                	push   $0x4
 804cd32:	6a 01                	push   $0x1
 804cd34:	68 d4 63 05 08       	push   $0x80563d4
 804cd39:	e8 22 bb ff ff       	call   8048860 <fwrite@plt>
 804cd3e:	83 c4 10             	add    $0x10,%esp
 804cd41:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd44:	8b 40 08             	mov    0x8(%eax),%eax
 804cd47:	83 ec 08             	sub    $0x8,%esp
 804cd4a:	ff 75 0c             	pushl  0xc(%ebp)
 804cd4d:	50                   	push   %eax
 804cd4e:	e8 d1 fc ff ff       	call   804ca24 <printOperand>
 804cd53:	83 c4 10             	add    $0x10,%esp
 804cd56:	ff 75 0c             	pushl  0xc(%ebp)
 804cd59:	6a 03                	push   $0x3
 804cd5b:	6a 01                	push   $0x1
 804cd5d:	68 e5 63 05 08       	push   $0x80563e5
 804cd62:	e8 f9 ba ff ff       	call   8048860 <fwrite@plt>
 804cd67:	83 c4 10             	add    $0x10,%esp
 804cd6a:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd6d:	8b 40 0c             	mov    0xc(%eax),%eax
 804cd70:	83 ec 08             	sub    $0x8,%esp
 804cd73:	ff 75 0c             	pushl  0xc(%ebp)
 804cd76:	50                   	push   %eax
 804cd77:	e8 a8 fc ff ff       	call   804ca24 <printOperand>
 804cd7c:	83 c4 10             	add    $0x10,%esp
 804cd7f:	e9 a7 05 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804cd84:	ff 75 0c             	pushl  0xc(%ebp)
 804cd87:	6a 04                	push   $0x4
 804cd89:	6a 01                	push   $0x1
 804cd8b:	68 e9 63 05 08       	push   $0x80563e9
 804cd90:	e8 cb ba ff ff       	call   8048860 <fwrite@plt>
 804cd95:	83 c4 10             	add    $0x10,%esp
 804cd98:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd9b:	8b 40 08             	mov    0x8(%eax),%eax
 804cd9e:	83 ec 08             	sub    $0x8,%esp
 804cda1:	ff 75 0c             	pushl  0xc(%ebp)
 804cda4:	50                   	push   %eax
 804cda5:	e8 7a fc ff ff       	call   804ca24 <printOperand>
 804cdaa:	83 c4 10             	add    $0x10,%esp
 804cdad:	8b 45 08             	mov    0x8(%ebp),%eax
 804cdb0:	8b 40 0c             	mov    0xc(%eax),%eax
 804cdb3:	85 c0                	test   %eax,%eax
 804cdb5:	0f 84 6f 05 00 00    	je     804d32a <printInterCodes+0x7f0>
 804cdbb:	8b 45 08             	mov    0x8(%ebp),%eax
 804cdbe:	8b 40 0c             	mov    0xc(%eax),%eax
 804cdc1:	8b 40 04             	mov    0x4(%eax),%eax
 804cdc4:	83 ec 04             	sub    $0x4,%esp
 804cdc7:	50                   	push   %eax
 804cdc8:	68 ee 63 05 08       	push   $0x80563ee
 804cdcd:	ff 75 0c             	pushl  0xc(%ebp)
 804cdd0:	e8 2b bb ff ff       	call   8048900 <fprintf@plt>
 804cdd5:	83 c4 10             	add    $0x10,%esp
 804cdd8:	e9 4d 05 00 00       	jmp    804d32a <printInterCodes+0x7f0>
 804cddd:	8b 45 08             	mov    0x8(%ebp),%eax
 804cde0:	8b 40 08             	mov    0x8(%eax),%eax
 804cde3:	8b 40 04             	mov    0x4(%eax),%eax
 804cde6:	83 ec 04             	sub    $0x4,%esp
 804cde9:	50                   	push   %eax
 804cdea:	68 f2 63 05 08       	push   $0x80563f2
 804cdef:	ff 75 0c             	pushl  0xc(%ebp)
 804cdf2:	e8 09 bb ff ff       	call   8048900 <fprintf@plt>
 804cdf7:	83 c4 10             	add    $0x10,%esp
 804cdfa:	e9 2c 05 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804cdff:	ff 75 0c             	pushl  0xc(%ebp)
 804ce02:	6a 06                	push   $0x6
 804ce04:	6a 01                	push   $0x1
 804ce06:	68 00 64 05 08       	push   $0x8056400
 804ce0b:	e8 50 ba ff ff       	call   8048860 <fwrite@plt>
 804ce10:	83 c4 10             	add    $0x10,%esp
 804ce13:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce16:	8b 40 08             	mov    0x8(%eax),%eax
 804ce19:	83 ec 08             	sub    $0x8,%esp
 804ce1c:	ff 75 0c             	pushl  0xc(%ebp)
 804ce1f:	50                   	push   %eax
 804ce20:	e8 ff fb ff ff       	call   804ca24 <printOperand>
 804ce25:	83 c4 10             	add    $0x10,%esp
 804ce28:	e9 fe 04 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804ce2d:	ff 75 0c             	pushl  0xc(%ebp)
 804ce30:	6a 06                	push   $0x6
 804ce32:	6a 01                	push   $0x1
 804ce34:	68 07 64 05 08       	push   $0x8056407
 804ce39:	e8 22 ba ff ff       	call   8048860 <fwrite@plt>
 804ce3e:	83 c4 10             	add    $0x10,%esp
 804ce41:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce44:	8b 40 08             	mov    0x8(%eax),%eax
 804ce47:	83 ec 08             	sub    $0x8,%esp
 804ce4a:	ff 75 0c             	pushl  0xc(%ebp)
 804ce4d:	50                   	push   %eax
 804ce4e:	e8 d1 fb ff ff       	call   804ca24 <printOperand>
 804ce53:	83 c4 10             	add    $0x10,%esp
 804ce56:	ff 75 0c             	pushl  0xc(%ebp)
 804ce59:	6a 02                	push   $0x2
 804ce5b:	6a 01                	push   $0x1
 804ce5d:	68 0e 64 05 08       	push   $0x805640e
 804ce62:	e8 f9 b9 ff ff       	call   8048860 <fwrite@plt>
 804ce67:	83 c4 10             	add    $0x10,%esp
 804ce6a:	e9 bc 04 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804ce6f:	ff 75 0c             	pushl  0xc(%ebp)
 804ce72:	6a 07                	push   $0x7
 804ce74:	6a 01                	push   $0x1
 804ce76:	68 11 64 05 08       	push   $0x8056411
 804ce7b:	e8 e0 b9 ff ff       	call   8048860 <fwrite@plt>
 804ce80:	83 c4 10             	add    $0x10,%esp
 804ce83:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce86:	8b 40 08             	mov    0x8(%eax),%eax
 804ce89:	83 ec 08             	sub    $0x8,%esp
 804ce8c:	ff 75 0c             	pushl  0xc(%ebp)
 804ce8f:	50                   	push   %eax
 804ce90:	e8 8f fb ff ff       	call   804ca24 <printOperand>
 804ce95:	83 c4 10             	add    $0x10,%esp
 804ce98:	e9 8e 04 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804ce9d:	ff 75 0c             	pushl  0xc(%ebp)
 804cea0:	6a 05                	push   $0x5
 804cea2:	6a 01                	push   $0x1
 804cea4:	68 19 64 05 08       	push   $0x8056419
 804cea9:	e8 b2 b9 ff ff       	call   8048860 <fwrite@plt>
 804ceae:	83 c4 10             	add    $0x10,%esp
 804ceb1:	8b 45 08             	mov    0x8(%ebp),%eax
 804ceb4:	8b 40 08             	mov    0x8(%eax),%eax
 804ceb7:	83 ec 08             	sub    $0x8,%esp
 804ceba:	ff 75 0c             	pushl  0xc(%ebp)
 804cebd:	50                   	push   %eax
 804cebe:	e8 61 fb ff ff       	call   804ca24 <printOperand>
 804cec3:	83 c4 10             	add    $0x10,%esp
 804cec6:	e9 60 04 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804cecb:	ff 75 0c             	pushl  0xc(%ebp)
 804cece:	6a 03                	push   $0x3
 804ced0:	6a 01                	push   $0x1
 804ced2:	68 1f 64 05 08       	push   $0x805641f
 804ced7:	e8 84 b9 ff ff       	call   8048860 <fwrite@plt>
 804cedc:	83 c4 10             	add    $0x10,%esp
 804cedf:	8b 45 08             	mov    0x8(%ebp),%eax
 804cee2:	8b 40 08             	mov    0x8(%eax),%eax
 804cee5:	83 ec 08             	sub    $0x8,%esp
 804cee8:	ff 75 0c             	pushl  0xc(%ebp)
 804ceeb:	50                   	push   %eax
 804ceec:	e8 33 fb ff ff       	call   804ca24 <printOperand>
 804cef1:	83 c4 10             	add    $0x10,%esp
 804cef4:	ff 75 0c             	pushl  0xc(%ebp)
 804cef7:	6a 03                	push   $0x3
 804cef9:	6a 01                	push   $0x1
 804cefb:	68 23 64 05 08       	push   $0x8056423
 804cf00:	e8 5b b9 ff ff       	call   8048860 <fwrite@plt>
 804cf05:	83 c4 10             	add    $0x10,%esp
 804cf08:	8b 45 08             	mov    0x8(%ebp),%eax
 804cf0b:	8b 40 0c             	mov    0xc(%eax),%eax
 804cf0e:	83 ec 08             	sub    $0x8,%esp
 804cf11:	ff 75 0c             	pushl  0xc(%ebp)
 804cf14:	50                   	push   %eax
 804cf15:	e8 0a fb ff ff       	call   804ca24 <printOperand>
 804cf1a:	83 c4 10             	add    $0x10,%esp
 804cf1d:	ff 75 0c             	pushl  0xc(%ebp)
 804cf20:	6a 06                	push   $0x6
 804cf22:	6a 01                	push   $0x1
 804cf24:	68 27 64 05 08       	push   $0x8056427
 804cf29:	e8 32 b9 ff ff       	call   8048860 <fwrite@plt>
 804cf2e:	83 c4 10             	add    $0x10,%esp
 804cf31:	8b 45 08             	mov    0x8(%ebp),%eax
 804cf34:	8b 40 04             	mov    0x4(%eax),%eax
 804cf37:	83 ec 08             	sub    $0x8,%esp
 804cf3a:	ff 75 0c             	pushl  0xc(%ebp)
 804cf3d:	50                   	push   %eax
 804cf3e:	e8 e1 fa ff ff       	call   804ca24 <printOperand>
 804cf43:	83 c4 10             	add    $0x10,%esp
 804cf46:	e9 e0 03 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804cf4b:	ff 75 0c             	pushl  0xc(%ebp)
 804cf4e:	6a 03                	push   $0x3
 804cf50:	6a 01                	push   $0x1
 804cf52:	68 1f 64 05 08       	push   $0x805641f
 804cf57:	e8 04 b9 ff ff       	call   8048860 <fwrite@plt>
 804cf5c:	83 c4 10             	add    $0x10,%esp
 804cf5f:	8b 45 08             	mov    0x8(%ebp),%eax
 804cf62:	8b 40 08             	mov    0x8(%eax),%eax
 804cf65:	83 ec 08             	sub    $0x8,%esp
 804cf68:	ff 75 0c             	pushl  0xc(%ebp)
 804cf6b:	50                   	push   %eax
 804cf6c:	e8 b3 fa ff ff       	call   804ca24 <printOperand>
 804cf71:	83 c4 10             	add    $0x10,%esp
 804cf74:	ff 75 0c             	pushl  0xc(%ebp)
 804cf77:	6a 03                	push   $0x3
 804cf79:	6a 01                	push   $0x1
 804cf7b:	68 2e 64 05 08       	push   $0x805642e
 804cf80:	e8 db b8 ff ff       	call   8048860 <fwrite@plt>
 804cf85:	83 c4 10             	add    $0x10,%esp
 804cf88:	8b 45 08             	mov    0x8(%ebp),%eax
 804cf8b:	8b 40 0c             	mov    0xc(%eax),%eax
 804cf8e:	83 ec 08             	sub    $0x8,%esp
 804cf91:	ff 75 0c             	pushl  0xc(%ebp)
 804cf94:	50                   	push   %eax
 804cf95:	e8 8a fa ff ff       	call   804ca24 <printOperand>
 804cf9a:	83 c4 10             	add    $0x10,%esp
 804cf9d:	ff 75 0c             	pushl  0xc(%ebp)
 804cfa0:	6a 06                	push   $0x6
 804cfa2:	6a 01                	push   $0x1
 804cfa4:	68 27 64 05 08       	push   $0x8056427
 804cfa9:	e8 b2 b8 ff ff       	call   8048860 <fwrite@plt>
 804cfae:	83 c4 10             	add    $0x10,%esp
 804cfb1:	8b 45 08             	mov    0x8(%ebp),%eax
 804cfb4:	8b 40 04             	mov    0x4(%eax),%eax
 804cfb7:	83 ec 08             	sub    $0x8,%esp
 804cfba:	ff 75 0c             	pushl  0xc(%ebp)
 804cfbd:	50                   	push   %eax
 804cfbe:	e8 61 fa ff ff       	call   804ca24 <printOperand>
 804cfc3:	83 c4 10             	add    $0x10,%esp
 804cfc6:	e9 60 03 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804cfcb:	ff 75 0c             	pushl  0xc(%ebp)
 804cfce:	6a 03                	push   $0x3
 804cfd0:	6a 01                	push   $0x1
 804cfd2:	68 1f 64 05 08       	push   $0x805641f
 804cfd7:	e8 84 b8 ff ff       	call   8048860 <fwrite@plt>
 804cfdc:	83 c4 10             	add    $0x10,%esp
 804cfdf:	8b 45 08             	mov    0x8(%ebp),%eax
 804cfe2:	8b 40 08             	mov    0x8(%eax),%eax
 804cfe5:	83 ec 08             	sub    $0x8,%esp
 804cfe8:	ff 75 0c             	pushl  0xc(%ebp)
 804cfeb:	50                   	push   %eax
 804cfec:	e8 33 fa ff ff       	call   804ca24 <printOperand>
 804cff1:	83 c4 10             	add    $0x10,%esp
 804cff4:	ff 75 0c             	pushl  0xc(%ebp)
 804cff7:	6a 04                	push   $0x4
 804cff9:	6a 01                	push   $0x1
 804cffb:	68 32 64 05 08       	push   $0x8056432
 804d000:	e8 5b b8 ff ff       	call   8048860 <fwrite@plt>
 804d005:	83 c4 10             	add    $0x10,%esp
 804d008:	8b 45 08             	mov    0x8(%ebp),%eax
 804d00b:	8b 40 0c             	mov    0xc(%eax),%eax
 804d00e:	83 ec 08             	sub    $0x8,%esp
 804d011:	ff 75 0c             	pushl  0xc(%ebp)
 804d014:	50                   	push   %eax
 804d015:	e8 0a fa ff ff       	call   804ca24 <printOperand>
 804d01a:	83 c4 10             	add    $0x10,%esp
 804d01d:	ff 75 0c             	pushl  0xc(%ebp)
 804d020:	6a 06                	push   $0x6
 804d022:	6a 01                	push   $0x1
 804d024:	68 27 64 05 08       	push   $0x8056427
 804d029:	e8 32 b8 ff ff       	call   8048860 <fwrite@plt>
 804d02e:	83 c4 10             	add    $0x10,%esp
 804d031:	8b 45 08             	mov    0x8(%ebp),%eax
 804d034:	8b 40 04             	mov    0x4(%eax),%eax
 804d037:	83 ec 08             	sub    $0x8,%esp
 804d03a:	ff 75 0c             	pushl  0xc(%ebp)
 804d03d:	50                   	push   %eax
 804d03e:	e8 e1 f9 ff ff       	call   804ca24 <printOperand>
 804d043:	83 c4 10             	add    $0x10,%esp
 804d046:	e9 e0 02 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804d04b:	ff 75 0c             	pushl  0xc(%ebp)
 804d04e:	6a 03                	push   $0x3
 804d050:	6a 01                	push   $0x1
 804d052:	68 1f 64 05 08       	push   $0x805641f
 804d057:	e8 04 b8 ff ff       	call   8048860 <fwrite@plt>
 804d05c:	83 c4 10             	add    $0x10,%esp
 804d05f:	8b 45 08             	mov    0x8(%ebp),%eax
 804d062:	8b 40 08             	mov    0x8(%eax),%eax
 804d065:	83 ec 08             	sub    $0x8,%esp
 804d068:	ff 75 0c             	pushl  0xc(%ebp)
 804d06b:	50                   	push   %eax
 804d06c:	e8 b3 f9 ff ff       	call   804ca24 <printOperand>
 804d071:	83 c4 10             	add    $0x10,%esp
 804d074:	ff 75 0c             	pushl  0xc(%ebp)
 804d077:	6a 04                	push   $0x4
 804d079:	6a 01                	push   $0x1
 804d07b:	68 37 64 05 08       	push   $0x8056437
 804d080:	e8 db b7 ff ff       	call   8048860 <fwrite@plt>
 804d085:	83 c4 10             	add    $0x10,%esp
 804d088:	8b 45 08             	mov    0x8(%ebp),%eax
 804d08b:	8b 40 0c             	mov    0xc(%eax),%eax
 804d08e:	83 ec 08             	sub    $0x8,%esp
 804d091:	ff 75 0c             	pushl  0xc(%ebp)
 804d094:	50                   	push   %eax
 804d095:	e8 8a f9 ff ff       	call   804ca24 <printOperand>
 804d09a:	83 c4 10             	add    $0x10,%esp
 804d09d:	ff 75 0c             	pushl  0xc(%ebp)
 804d0a0:	6a 06                	push   $0x6
 804d0a2:	6a 01                	push   $0x1
 804d0a4:	68 27 64 05 08       	push   $0x8056427
 804d0a9:	e8 b2 b7 ff ff       	call   8048860 <fwrite@plt>
 804d0ae:	83 c4 10             	add    $0x10,%esp
 804d0b1:	8b 45 08             	mov    0x8(%ebp),%eax
 804d0b4:	8b 40 04             	mov    0x4(%eax),%eax
 804d0b7:	83 ec 08             	sub    $0x8,%esp
 804d0ba:	ff 75 0c             	pushl  0xc(%ebp)
 804d0bd:	50                   	push   %eax
 804d0be:	e8 61 f9 ff ff       	call   804ca24 <printOperand>
 804d0c3:	83 c4 10             	add    $0x10,%esp
 804d0c6:	e9 60 02 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804d0cb:	ff 75 0c             	pushl  0xc(%ebp)
 804d0ce:	6a 03                	push   $0x3
 804d0d0:	6a 01                	push   $0x1
 804d0d2:	68 1f 64 05 08       	push   $0x805641f
 804d0d7:	e8 84 b7 ff ff       	call   8048860 <fwrite@plt>
 804d0dc:	83 c4 10             	add    $0x10,%esp
 804d0df:	8b 45 08             	mov    0x8(%ebp),%eax
 804d0e2:	8b 40 08             	mov    0x8(%eax),%eax
 804d0e5:	83 ec 08             	sub    $0x8,%esp
 804d0e8:	ff 75 0c             	pushl  0xc(%ebp)
 804d0eb:	50                   	push   %eax
 804d0ec:	e8 33 f9 ff ff       	call   804ca24 <printOperand>
 804d0f1:	83 c4 10             	add    $0x10,%esp
 804d0f4:	ff 75 0c             	pushl  0xc(%ebp)
 804d0f7:	6a 04                	push   $0x4
 804d0f9:	6a 01                	push   $0x1
 804d0fb:	68 3c 64 05 08       	push   $0x805643c
 804d100:	e8 5b b7 ff ff       	call   8048860 <fwrite@plt>
 804d105:	83 c4 10             	add    $0x10,%esp
 804d108:	8b 45 08             	mov    0x8(%ebp),%eax
 804d10b:	8b 40 0c             	mov    0xc(%eax),%eax
 804d10e:	83 ec 08             	sub    $0x8,%esp
 804d111:	ff 75 0c             	pushl  0xc(%ebp)
 804d114:	50                   	push   %eax
 804d115:	e8 0a f9 ff ff       	call   804ca24 <printOperand>
 804d11a:	83 c4 10             	add    $0x10,%esp
 804d11d:	ff 75 0c             	pushl  0xc(%ebp)
 804d120:	6a 06                	push   $0x6
 804d122:	6a 01                	push   $0x1
 804d124:	68 27 64 05 08       	push   $0x8056427
 804d129:	e8 32 b7 ff ff       	call   8048860 <fwrite@plt>
 804d12e:	83 c4 10             	add    $0x10,%esp
 804d131:	8b 45 08             	mov    0x8(%ebp),%eax
 804d134:	8b 40 04             	mov    0x4(%eax),%eax
 804d137:	83 ec 08             	sub    $0x8,%esp
 804d13a:	ff 75 0c             	pushl  0xc(%ebp)
 804d13d:	50                   	push   %eax
 804d13e:	e8 e1 f8 ff ff       	call   804ca24 <printOperand>
 804d143:	83 c4 10             	add    $0x10,%esp
 804d146:	e9 e0 01 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804d14b:	ff 75 0c             	pushl  0xc(%ebp)
 804d14e:	6a 03                	push   $0x3
 804d150:	6a 01                	push   $0x1
 804d152:	68 1f 64 05 08       	push   $0x805641f
 804d157:	e8 04 b7 ff ff       	call   8048860 <fwrite@plt>
 804d15c:	83 c4 10             	add    $0x10,%esp
 804d15f:	8b 45 08             	mov    0x8(%ebp),%eax
 804d162:	8b 40 08             	mov    0x8(%eax),%eax
 804d165:	83 ec 08             	sub    $0x8,%esp
 804d168:	ff 75 0c             	pushl  0xc(%ebp)
 804d16b:	50                   	push   %eax
 804d16c:	e8 b3 f8 ff ff       	call   804ca24 <printOperand>
 804d171:	83 c4 10             	add    $0x10,%esp
 804d174:	ff 75 0c             	pushl  0xc(%ebp)
 804d177:	6a 04                	push   $0x4
 804d179:	6a 01                	push   $0x1
 804d17b:	68 41 64 05 08       	push   $0x8056441
 804d180:	e8 db b6 ff ff       	call   8048860 <fwrite@plt>
 804d185:	83 c4 10             	add    $0x10,%esp
 804d188:	8b 45 08             	mov    0x8(%ebp),%eax
 804d18b:	8b 40 0c             	mov    0xc(%eax),%eax
 804d18e:	83 ec 08             	sub    $0x8,%esp
 804d191:	ff 75 0c             	pushl  0xc(%ebp)
 804d194:	50                   	push   %eax
 804d195:	e8 8a f8 ff ff       	call   804ca24 <printOperand>
 804d19a:	83 c4 10             	add    $0x10,%esp
 804d19d:	ff 75 0c             	pushl  0xc(%ebp)
 804d1a0:	6a 06                	push   $0x6
 804d1a2:	6a 01                	push   $0x1
 804d1a4:	68 27 64 05 08       	push   $0x8056427
 804d1a9:	e8 b2 b6 ff ff       	call   8048860 <fwrite@plt>
 804d1ae:	83 c4 10             	add    $0x10,%esp
 804d1b1:	8b 45 08             	mov    0x8(%ebp),%eax
 804d1b4:	8b 40 04             	mov    0x4(%eax),%eax
 804d1b7:	83 ec 08             	sub    $0x8,%esp
 804d1ba:	ff 75 0c             	pushl  0xc(%ebp)
 804d1bd:	50                   	push   %eax
 804d1be:	e8 61 f8 ff ff       	call   804ca24 <printOperand>
 804d1c3:	83 c4 10             	add    $0x10,%esp
 804d1c6:	e9 60 01 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804d1cb:	ff 75 0c             	pushl  0xc(%ebp)
 804d1ce:	6a 04                	push   $0x4
 804d1d0:	6a 01                	push   $0x1
 804d1d2:	68 46 64 05 08       	push   $0x8056446
 804d1d7:	e8 84 b6 ff ff       	call   8048860 <fwrite@plt>
 804d1dc:	83 c4 10             	add    $0x10,%esp
 804d1df:	8b 45 08             	mov    0x8(%ebp),%eax
 804d1e2:	8b 40 08             	mov    0x8(%eax),%eax
 804d1e5:	83 ec 08             	sub    $0x8,%esp
 804d1e8:	ff 75 0c             	pushl  0xc(%ebp)
 804d1eb:	50                   	push   %eax
 804d1ec:	e8 33 f8 ff ff       	call   804ca24 <printOperand>
 804d1f1:	83 c4 10             	add    $0x10,%esp
 804d1f4:	e9 32 01 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804d1f9:	8b 45 08             	mov    0x8(%ebp),%eax
 804d1fc:	8b 40 04             	mov    0x4(%eax),%eax
 804d1ff:	83 ec 08             	sub    $0x8,%esp
 804d202:	ff 75 0c             	pushl  0xc(%ebp)
 804d205:	50                   	push   %eax
 804d206:	e8 19 f8 ff ff       	call   804ca24 <printOperand>
 804d20b:	83 c4 10             	add    $0x10,%esp
 804d20e:	ff 75 0c             	pushl  0xc(%ebp)
 804d211:	6a 09                	push   $0x9
 804d213:	6a 01                	push   $0x1
 804d215:	68 4b 64 05 08       	push   $0x805644b
 804d21a:	e8 41 b6 ff ff       	call   8048860 <fwrite@plt>
 804d21f:	83 c4 10             	add    $0x10,%esp
 804d222:	8b 45 08             	mov    0x8(%ebp),%eax
 804d225:	8b 40 08             	mov    0x8(%eax),%eax
 804d228:	83 ec 08             	sub    $0x8,%esp
 804d22b:	ff 75 0c             	pushl  0xc(%ebp)
 804d22e:	50                   	push   %eax
 804d22f:	e8 f0 f7 ff ff       	call   804ca24 <printOperand>
 804d234:	83 c4 10             	add    $0x10,%esp
 804d237:	e9 ef 00 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804d23c:	ff 75 0c             	pushl  0xc(%ebp)
 804d23f:	6a 05                	push   $0x5
 804d241:	6a 01                	push   $0x1
 804d243:	68 55 64 05 08       	push   $0x8056455
 804d248:	e8 13 b6 ff ff       	call   8048860 <fwrite@plt>
 804d24d:	83 c4 10             	add    $0x10,%esp
 804d250:	8b 45 08             	mov    0x8(%ebp),%eax
 804d253:	8b 40 04             	mov    0x4(%eax),%eax
 804d256:	83 ec 08             	sub    $0x8,%esp
 804d259:	ff 75 0c             	pushl  0xc(%ebp)
 804d25c:	50                   	push   %eax
 804d25d:	e8 c2 f7 ff ff       	call   804ca24 <printOperand>
 804d262:	83 c4 10             	add    $0x10,%esp
 804d265:	e9 c1 00 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804d26a:	ff 75 0c             	pushl  0xc(%ebp)
 804d26d:	6a 06                	push   $0x6
 804d26f:	6a 01                	push   $0x1
 804d271:	68 5b 64 05 08       	push   $0x805645b
 804d276:	e8 e5 b5 ff ff       	call   8048860 <fwrite@plt>
 804d27b:	83 c4 10             	add    $0x10,%esp
 804d27e:	8b 45 08             	mov    0x8(%ebp),%eax
 804d281:	8b 40 08             	mov    0x8(%eax),%eax
 804d284:	83 ec 08             	sub    $0x8,%esp
 804d287:	ff 75 0c             	pushl  0xc(%ebp)
 804d28a:	50                   	push   %eax
 804d28b:	e8 94 f7 ff ff       	call   804ca24 <printOperand>
 804d290:	83 c4 10             	add    $0x10,%esp
 804d293:	e9 93 00 00 00       	jmp    804d32b <printInterCodes+0x7f1>
 804d298:	8b 45 08             	mov    0x8(%ebp),%eax
 804d29b:	8b 40 04             	mov    0x4(%eax),%eax
 804d29e:	83 ec 08             	sub    $0x8,%esp
 804d2a1:	ff 75 0c             	pushl  0xc(%ebp)
 804d2a4:	50                   	push   %eax
 804d2a5:	e8 7a f7 ff ff       	call   804ca24 <printOperand>
 804d2aa:	83 c4 10             	add    $0x10,%esp
 804d2ad:	ff 75 0c             	pushl  0xc(%ebp)
 804d2b0:	6a 05                	push   $0x5
 804d2b2:	6a 01                	push   $0x1
 804d2b4:	68 62 64 05 08       	push   $0x8056462
 804d2b9:	e8 a2 b5 ff ff       	call   8048860 <fwrite@plt>
 804d2be:	83 c4 10             	add    $0x10,%esp
 804d2c1:	8b 45 08             	mov    0x8(%ebp),%eax
 804d2c4:	8b 40 08             	mov    0x8(%eax),%eax
 804d2c7:	83 ec 08             	sub    $0x8,%esp
 804d2ca:	ff 75 0c             	pushl  0xc(%ebp)
 804d2cd:	50                   	push   %eax
 804d2ce:	e8 51 f7 ff ff       	call   804ca24 <printOperand>
 804d2d3:	83 c4 10             	add    $0x10,%esp
 804d2d6:	eb 53                	jmp    804d32b <printInterCodes+0x7f1>
 804d2d8:	8b 45 08             	mov    0x8(%ebp),%eax
 804d2db:	8b 40 04             	mov    0x4(%eax),%eax
 804d2de:	83 ec 08             	sub    $0x8,%esp
 804d2e1:	ff 75 0c             	pushl  0xc(%ebp)
 804d2e4:	50                   	push   %eax
 804d2e5:	e8 3a f7 ff ff       	call   804ca24 <printOperand>
 804d2ea:	83 c4 10             	add    $0x10,%esp
 804d2ed:	ff 75 0c             	pushl  0xc(%ebp)
 804d2f0:	6a 05                	push   $0x5
 804d2f2:	6a 01                	push   $0x1
 804d2f4:	68 68 64 05 08       	push   $0x8056468
 804d2f9:	e8 62 b5 ff ff       	call   8048860 <fwrite@plt>
 804d2fe:	83 c4 10             	add    $0x10,%esp
 804d301:	8b 45 08             	mov    0x8(%ebp),%eax
 804d304:	8b 40 08             	mov    0x8(%eax),%eax
 804d307:	83 ec 08             	sub    $0x8,%esp
 804d30a:	ff 75 0c             	pushl  0xc(%ebp)
 804d30d:	50                   	push   %eax
 804d30e:	e8 11 f7 ff ff       	call   804ca24 <printOperand>
 804d313:	83 c4 10             	add    $0x10,%esp
 804d316:	eb 13                	jmp    804d32b <printInterCodes+0x7f1>
 804d318:	83 ec 0c             	sub    $0xc,%esp
 804d31b:	68 6e 64 05 08       	push   $0x805646e
 804d320:	e8 bb b4 ff ff       	call   80487e0 <printf@plt>
 804d325:	83 c4 10             	add    $0x10,%esp
 804d328:	eb 01                	jmp    804d32b <printInterCodes+0x7f1>
 804d32a:	90                   	nop
 804d32b:	83 ec 08             	sub    $0x8,%esp
 804d32e:	ff 75 0c             	pushl  0xc(%ebp)
 804d331:	6a 0a                	push   $0xa
 804d333:	e8 48 b6 ff ff       	call   8048980 <fputc@plt>
 804d338:	83 c4 10             	add    $0x10,%esp
 804d33b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804d33f:	8b 45 08             	mov    0x8(%ebp),%eax
 804d342:	8b 40 14             	mov    0x14(%eax),%eax
 804d345:	89 45 08             	mov    %eax,0x8(%ebp)
 804d348:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804d34c:	0f 85 28 f8 ff ff    	jne    804cb7a <printInterCodes+0x40>
 804d352:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d355:	c9                   	leave  
 804d356:	c3                   	ret    

0804d357 <newInterCodes>:
 804d357:	55                   	push   %ebp
 804d358:	89 e5                	mov    %esp,%ebp
 804d35a:	83 ec 18             	sub    $0x18,%esp
 804d35d:	83 ec 0c             	sub    $0xc,%esp
 804d360:	6a 18                	push   $0x18
 804d362:	e8 39 b5 ff ff       	call   80488a0 <malloc@plt>
 804d367:	83 c4 10             	add    $0x10,%esp
 804d36a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d36d:	83 ec 04             	sub    $0x4,%esp
 804d370:	6a 18                	push   $0x18
 804d372:	6a 00                	push   $0x0
 804d374:	ff 75 f4             	pushl  -0xc(%ebp)
 804d377:	e8 a4 b5 ff ff       	call   8048920 <memset@plt>
 804d37c:	83 c4 10             	add    $0x10,%esp
 804d37f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d382:	c9                   	leave  
 804d383:	c3                   	ret    

0804d384 <newOperand>:
 804d384:	55                   	push   %ebp
 804d385:	89 e5                	mov    %esp,%ebp
 804d387:	83 ec 18             	sub    $0x18,%esp
 804d38a:	83 ec 0c             	sub    $0xc,%esp
 804d38d:	6a 08                	push   $0x8
 804d38f:	e8 0c b5 ff ff       	call   80488a0 <malloc@plt>
 804d394:	83 c4 10             	add    $0x10,%esp
 804d397:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d39a:	83 ec 04             	sub    $0x4,%esp
 804d39d:	6a 08                	push   $0x8
 804d39f:	6a 00                	push   $0x0
 804d3a1:	ff 75 f4             	pushl  -0xc(%ebp)
 804d3a4:	e8 77 b5 ff ff       	call   8048920 <memset@plt>
 804d3a9:	83 c4 10             	add    $0x10,%esp
 804d3ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d3af:	c9                   	leave  
 804d3b0:	c3                   	ret    

0804d3b1 <newOp>:
 804d3b1:	55                   	push   %ebp
 804d3b2:	89 e5                	mov    %esp,%ebp
 804d3b4:	83 ec 18             	sub    $0x18,%esp
 804d3b7:	83 ec 0c             	sub    $0xc,%esp
 804d3ba:	6a 08                	push   $0x8
 804d3bc:	e8 df b4 ff ff       	call   80488a0 <malloc@plt>
 804d3c1:	83 c4 10             	add    $0x10,%esp
 804d3c4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d3c7:	83 ec 04             	sub    $0x4,%esp
 804d3ca:	6a 08                	push   $0x8
 804d3cc:	6a 00                	push   $0x0
 804d3ce:	ff 75 f4             	pushl  -0xc(%ebp)
 804d3d1:	e8 4a b5 ff ff       	call   8048920 <memset@plt>
 804d3d6:	83 c4 10             	add    $0x10,%esp
 804d3d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d3dc:	8b 55 08             	mov    0x8(%ebp),%edx
 804d3df:	89 10                	mov    %edx,(%eax)
 804d3e1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804d3e5:	75 0b                	jne    804d3f2 <newOp+0x41>
 804d3e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d3ea:	8b 55 0c             	mov    0xc(%ebp),%edx
 804d3ed:	89 50 04             	mov    %edx,0x4(%eax)
 804d3f0:	eb 20                	jmp    804d412 <newOp+0x61>
 804d3f2:	83 7d 08 05          	cmpl   $0x5,0x8(%ebp)
 804d3f6:	74 06                	je     804d3fe <newOp+0x4d>
 804d3f8:	83 7d 08 06          	cmpl   $0x6,0x8(%ebp)
 804d3fc:	75 0b                	jne    804d409 <newOp+0x58>
 804d3fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d401:	8b 55 0c             	mov    0xc(%ebp),%edx
 804d404:	89 50 04             	mov    %edx,0x4(%eax)
 804d407:	eb 09                	jmp    804d412 <newOp+0x61>
 804d409:	8b 55 0c             	mov    0xc(%ebp),%edx
 804d40c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d40f:	89 50 04             	mov    %edx,0x4(%eax)
 804d412:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d415:	c9                   	leave  
 804d416:	c3                   	ret    

0804d417 <newIC>:
 804d417:	55                   	push   %ebp
 804d418:	89 e5                	mov    %esp,%ebp
 804d41a:	83 ec 18             	sub    $0x18,%esp
 804d41d:	83 ec 0c             	sub    $0xc,%esp
 804d420:	6a 18                	push   $0x18
 804d422:	e8 79 b4 ff ff       	call   80488a0 <malloc@plt>
 804d427:	83 c4 10             	add    $0x10,%esp
 804d42a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d42d:	83 ec 04             	sub    $0x4,%esp
 804d430:	6a 18                	push   $0x18
 804d432:	6a 00                	push   $0x0
 804d434:	ff 75 f4             	pushl  -0xc(%ebp)
 804d437:	e8 e4 b4 ff ff       	call   8048920 <memset@plt>
 804d43c:	83 c4 10             	add    $0x10,%esp
 804d43f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d442:	8b 55 08             	mov    0x8(%ebp),%edx
 804d445:	89 10                	mov    %edx,(%eax)
 804d447:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d44a:	8b 55 0c             	mov    0xc(%ebp),%edx
 804d44d:	89 50 04             	mov    %edx,0x4(%eax)
 804d450:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d453:	8b 55 10             	mov    0x10(%ebp),%edx
 804d456:	89 50 08             	mov    %edx,0x8(%eax)
 804d459:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d45c:	8b 55 14             	mov    0x14(%ebp),%edx
 804d45f:	89 50 0c             	mov    %edx,0xc(%eax)
 804d462:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d465:	c9                   	leave  
 804d466:	c3                   	ret    

0804d467 <getRelop>:
 804d467:	55                   	push   %ebp
 804d468:	89 e5                	mov    %esp,%ebp
 804d46a:	83 ec 18             	sub    $0x18,%esp
 804d46d:	8b 45 08             	mov    0x8(%ebp),%eax
 804d470:	8b 40 04             	mov    0x4(%eax),%eax
 804d473:	83 f8 0b             	cmp    $0xb,%eax
 804d476:	74 19                	je     804d491 <getRelop+0x2a>
 804d478:	68 a4 66 05 08       	push   $0x80566a4
 804d47d:	68 3d 01 00 00       	push   $0x13d
 804d482:	68 8c 63 05 08       	push   $0x805638c
 804d487:	68 d4 64 05 08       	push   $0x80564d4
 804d48c:	e8 5f b5 ff ff       	call   80489f0 <__assert_fail@plt>
 804d491:	8b 45 08             	mov    0x8(%ebp),%eax
 804d494:	8b 40 08             	mov    0x8(%eax),%eax
 804d497:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d49a:	c7 45 f0 12 00 00 00 	movl   $0x12,-0x10(%ebp)
 804d4a1:	83 ec 08             	sub    $0x8,%esp
 804d4a4:	68 ec 64 05 08       	push   $0x80564ec
 804d4a9:	ff 75 f4             	pushl  -0xc(%ebp)
 804d4ac:	e8 1f b3 ff ff       	call   80487d0 <strcmp@plt>
 804d4b1:	83 c4 10             	add    $0x10,%esp
 804d4b4:	85 c0                	test   %eax,%eax
 804d4b6:	75 0c                	jne    804d4c4 <getRelop+0x5d>
 804d4b8:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
 804d4bf:	e9 bc 00 00 00       	jmp    804d580 <getRelop+0x119>
 804d4c4:	83 ec 08             	sub    $0x8,%esp
 804d4c7:	68 ee 64 05 08       	push   $0x80564ee
 804d4cc:	ff 75 f4             	pushl  -0xc(%ebp)
 804d4cf:	e8 fc b2 ff ff       	call   80487d0 <strcmp@plt>
 804d4d4:	83 c4 10             	add    $0x10,%esp
 804d4d7:	85 c0                	test   %eax,%eax
 804d4d9:	75 0c                	jne    804d4e7 <getRelop+0x80>
 804d4db:	c7 45 f0 0f 00 00 00 	movl   $0xf,-0x10(%ebp)
 804d4e2:	e9 99 00 00 00       	jmp    804d580 <getRelop+0x119>
 804d4e7:	83 ec 08             	sub    $0x8,%esp
 804d4ea:	68 f0 64 05 08       	push   $0x80564f0
 804d4ef:	ff 75 f4             	pushl  -0xc(%ebp)
 804d4f2:	e8 d9 b2 ff ff       	call   80487d0 <strcmp@plt>
 804d4f7:	83 c4 10             	add    $0x10,%esp
 804d4fa:	85 c0                	test   %eax,%eax
 804d4fc:	75 09                	jne    804d507 <getRelop+0xa0>
 804d4fe:	c7 45 f0 10 00 00 00 	movl   $0x10,-0x10(%ebp)
 804d505:	eb 79                	jmp    804d580 <getRelop+0x119>
 804d507:	83 ec 08             	sub    $0x8,%esp
 804d50a:	68 f3 64 05 08       	push   $0x80564f3
 804d50f:	ff 75 f4             	pushl  -0xc(%ebp)
 804d512:	e8 b9 b2 ff ff       	call   80487d0 <strcmp@plt>
 804d517:	83 c4 10             	add    $0x10,%esp
 804d51a:	85 c0                	test   %eax,%eax
 804d51c:	75 09                	jne    804d527 <getRelop+0xc0>
 804d51e:	c7 45 f0 11 00 00 00 	movl   $0x11,-0x10(%ebp)
 804d525:	eb 59                	jmp    804d580 <getRelop+0x119>
 804d527:	83 ec 08             	sub    $0x8,%esp
 804d52a:	68 f6 64 05 08       	push   $0x80564f6
 804d52f:	ff 75 f4             	pushl  -0xc(%ebp)
 804d532:	e8 99 b2 ff ff       	call   80487d0 <strcmp@plt>
 804d537:	83 c4 10             	add    $0x10,%esp
 804d53a:	85 c0                	test   %eax,%eax
 804d53c:	75 09                	jne    804d547 <getRelop+0xe0>
 804d53e:	c7 45 f0 12 00 00 00 	movl   $0x12,-0x10(%ebp)
 804d545:	eb 39                	jmp    804d580 <getRelop+0x119>
 804d547:	83 ec 08             	sub    $0x8,%esp
 804d54a:	68 f9 64 05 08       	push   $0x80564f9
 804d54f:	ff 75 f4             	pushl  -0xc(%ebp)
 804d552:	e8 79 b2 ff ff       	call   80487d0 <strcmp@plt>
 804d557:	83 c4 10             	add    $0x10,%esp
 804d55a:	85 c0                	test   %eax,%eax
 804d55c:	75 09                	jne    804d567 <getRelop+0x100>
 804d55e:	c7 45 f0 13 00 00 00 	movl   $0x13,-0x10(%ebp)
 804d565:	eb 19                	jmp    804d580 <getRelop+0x119>
 804d567:	68 a4 66 05 08       	push   $0x80566a4
 804d56c:	68 47 01 00 00       	push   $0x147
 804d571:	68 8c 63 05 08       	push   $0x805638c
 804d576:	68 91 63 05 08       	push   $0x8056391
 804d57b:	e8 70 b4 ff ff       	call   80489f0 <__assert_fail@plt>
 804d580:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d583:	c9                   	leave  
 804d584:	c3                   	ret    

0804d585 <compareOperand>:
 804d585:	55                   	push   %ebp
 804d586:	89 e5                	mov    %esp,%ebp
 804d588:	83 ec 08             	sub    $0x8,%esp
 804d58b:	8b 45 08             	mov    0x8(%ebp),%eax
 804d58e:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804d591:	75 07                	jne    804d59a <compareOperand+0x15>
 804d593:	b8 01 00 00 00       	mov    $0x1,%eax
 804d598:	eb 78                	jmp    804d612 <compareOperand+0x8d>
 804d59a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804d59e:	74 06                	je     804d5a6 <compareOperand+0x21>
 804d5a0:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804d5a4:	75 07                	jne    804d5ad <compareOperand+0x28>
 804d5a6:	b8 00 00 00 00       	mov    $0x0,%eax
 804d5ab:	eb 65                	jmp    804d612 <compareOperand+0x8d>
 804d5ad:	8b 45 08             	mov    0x8(%ebp),%eax
 804d5b0:	8b 00                	mov    (%eax),%eax
 804d5b2:	85 c0                	test   %eax,%eax
 804d5b4:	75 32                	jne    804d5e8 <compareOperand+0x63>
 804d5b6:	8b 45 08             	mov    0x8(%ebp),%eax
 804d5b9:	8b 10                	mov    (%eax),%edx
 804d5bb:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d5be:	8b 00                	mov    (%eax),%eax
 804d5c0:	39 c2                	cmp    %eax,%edx
 804d5c2:	75 24                	jne    804d5e8 <compareOperand+0x63>
 804d5c4:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d5c7:	8b 50 04             	mov    0x4(%eax),%edx
 804d5ca:	8b 45 08             	mov    0x8(%ebp),%eax
 804d5cd:	8b 40 04             	mov    0x4(%eax),%eax
 804d5d0:	83 ec 08             	sub    $0x8,%esp
 804d5d3:	52                   	push   %edx
 804d5d4:	50                   	push   %eax
 804d5d5:	e8 38 81 00 00       	call   8055712 <safe_strcmp>
 804d5da:	83 c4 10             	add    $0x10,%esp
 804d5dd:	85 c0                	test   %eax,%eax
 804d5df:	75 07                	jne    804d5e8 <compareOperand+0x63>
 804d5e1:	b8 01 00 00 00       	mov    $0x1,%eax
 804d5e6:	eb 2a                	jmp    804d612 <compareOperand+0x8d>
 804d5e8:	8b 45 08             	mov    0x8(%ebp),%eax
 804d5eb:	8b 10                	mov    (%eax),%edx
 804d5ed:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d5f0:	8b 00                	mov    (%eax),%eax
 804d5f2:	39 c2                	cmp    %eax,%edx
 804d5f4:	75 17                	jne    804d60d <compareOperand+0x88>
 804d5f6:	8b 45 08             	mov    0x8(%ebp),%eax
 804d5f9:	8b 50 04             	mov    0x4(%eax),%edx
 804d5fc:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d5ff:	8b 40 04             	mov    0x4(%eax),%eax
 804d602:	39 c2                	cmp    %eax,%edx
 804d604:	75 07                	jne    804d60d <compareOperand+0x88>
 804d606:	b8 01 00 00 00       	mov    $0x1,%eax
 804d60b:	eb 05                	jmp    804d612 <compareOperand+0x8d>
 804d60d:	b8 00 00 00 00       	mov    $0x0,%eax
 804d612:	c9                   	leave  
 804d613:	c3                   	ret    

0804d614 <generate_ir>:
 804d614:	55                   	push   %ebp
 804d615:	89 e5                	mov    %esp,%ebp
 804d617:	83 ec 08             	sub    $0x8,%esp
 804d61a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804d61e:	75 07                	jne    804d627 <generate_ir+0x13>
 804d620:	b8 00 00 00 00       	mov    $0x0,%eax
 804d625:	eb 0e                	jmp    804d635 <generate_ir+0x21>
 804d627:	83 ec 0c             	sub    $0xc,%esp
 804d62a:	ff 75 08             	pushl  0x8(%ebp)
 804d62d:	e8 05 00 00 00       	call   804d637 <translate_Program>
 804d632:	83 c4 10             	add    $0x10,%esp
 804d635:	c9                   	leave  
 804d636:	c3                   	ret    

0804d637 <translate_Program>:
 804d637:	55                   	push   %ebp
 804d638:	89 e5                	mov    %esp,%ebp
 804d63a:	83 ec 18             	sub    $0x18,%esp
 804d63d:	8b 45 08             	mov    0x8(%ebp),%eax
 804d640:	8b 40 04             	mov    0x4(%eax),%eax
 804d643:	83 f8 1f             	cmp    $0x1f,%eax
 804d646:	74 19                	je     804d661 <translate_Program+0x2a>
 804d648:	68 b0 66 05 08       	push   $0x80566b0
 804d64d:	68 60 01 00 00       	push   $0x160
 804d652:	68 8c 63 05 08       	push   $0x805638c
 804d657:	68 fc 64 05 08       	push   $0x80564fc
 804d65c:	e8 8f b3 ff ff       	call   80489f0 <__assert_fail@plt>
 804d661:	8b 45 08             	mov    0x8(%ebp),%eax
 804d664:	8b 40 14             	mov    0x14(%eax),%eax
 804d667:	83 ec 0c             	sub    $0xc,%esp
 804d66a:	50                   	push   %eax
 804d66b:	e8 0b 00 00 00       	call   804d67b <translate_ExtDefList>
 804d670:	83 c4 10             	add    $0x10,%esp
 804d673:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d676:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d679:	c9                   	leave  
 804d67a:	c3                   	ret    

0804d67b <translate_ExtDefList>:
 804d67b:	55                   	push   %ebp
 804d67c:	89 e5                	mov    %esp,%ebp
 804d67e:	83 ec 18             	sub    $0x18,%esp
 804d681:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804d685:	75 07                	jne    804d68e <translate_ExtDefList+0x13>
 804d687:	b8 00 00 00 00       	mov    $0x0,%eax
 804d68c:	eb 41                	jmp    804d6cf <translate_ExtDefList+0x54>
 804d68e:	8b 45 08             	mov    0x8(%ebp),%eax
 804d691:	8b 40 14             	mov    0x14(%eax),%eax
 804d694:	83 ec 0c             	sub    $0xc,%esp
 804d697:	50                   	push   %eax
 804d698:	e8 34 00 00 00       	call   804d6d1 <translate_ExtDef>
 804d69d:	83 c4 10             	add    $0x10,%esp
 804d6a0:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d6a3:	8b 45 08             	mov    0x8(%ebp),%eax
 804d6a6:	8b 40 18             	mov    0x18(%eax),%eax
 804d6a9:	83 ec 0c             	sub    $0xc,%esp
 804d6ac:	50                   	push   %eax
 804d6ad:	e8 c9 ff ff ff       	call   804d67b <translate_ExtDefList>
 804d6b2:	83 c4 10             	add    $0x10,%esp
 804d6b5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d6b8:	83 ec 08             	sub    $0x8,%esp
 804d6bb:	ff 75 f4             	pushl  -0xc(%ebp)
 804d6be:	ff 75 f0             	pushl  -0x10(%ebp)
 804d6c1:	e8 d3 f1 ff ff       	call   804c899 <addTail>
 804d6c6:	83 c4 10             	add    $0x10,%esp
 804d6c9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d6cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d6cf:	c9                   	leave  
 804d6d0:	c3                   	ret    

0804d6d1 <translate_ExtDef>:
 804d6d1:	55                   	push   %ebp
 804d6d2:	89 e5                	mov    %esp,%ebp
 804d6d4:	83 ec 18             	sub    $0x18,%esp
 804d6d7:	8b 45 08             	mov    0x8(%ebp),%eax
 804d6da:	8b 40 18             	mov    0x18(%eax),%eax
 804d6dd:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d6e0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804d6e3:	8b 40 04             	mov    0x4(%eax),%eax
 804d6e6:	83 f8 22             	cmp    $0x22,%eax
 804d6e9:	75 10                	jne    804d6fb <translate_ExtDef+0x2a>
 804d6eb:	83 ec 0c             	sub    $0xc,%esp
 804d6ee:	ff 75 ec             	pushl  -0x14(%ebp)
 804d6f1:	e8 56 00 00 00       	call   804d74c <translate_ExtDecList>
 804d6f6:	83 c4 10             	add    $0x10,%esp
 804d6f9:	eb 4f                	jmp    804d74a <translate_ExtDef+0x79>
 804d6fb:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804d6fe:	8b 40 04             	mov    0x4(%eax),%eax
 804d701:	83 f8 28             	cmp    $0x28,%eax
 804d704:	75 3f                	jne    804d745 <translate_ExtDef+0x74>
 804d706:	83 ec 0c             	sub    $0xc,%esp
 804d709:	ff 75 ec             	pushl  -0x14(%ebp)
 804d70c:	e8 be 01 00 00       	call   804d8cf <translate_FunDec>
 804d711:	83 c4 10             	add    $0x10,%esp
 804d714:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d717:	8b 45 08             	mov    0x8(%ebp),%eax
 804d71a:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d71d:	83 ec 0c             	sub    $0xc,%esp
 804d720:	50                   	push   %eax
 804d721:	e8 ac 02 00 00       	call   804d9d2 <translate_CompSt>
 804d726:	83 c4 10             	add    $0x10,%esp
 804d729:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d72c:	83 ec 08             	sub    $0x8,%esp
 804d72f:	ff 75 f4             	pushl  -0xc(%ebp)
 804d732:	ff 75 f0             	pushl  -0x10(%ebp)
 804d735:	e8 5f f1 ff ff       	call   804c899 <addTail>
 804d73a:	83 c4 10             	add    $0x10,%esp
 804d73d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d740:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d743:	eb 05                	jmp    804d74a <translate_ExtDef+0x79>
 804d745:	b8 00 00 00 00       	mov    $0x0,%eax
 804d74a:	c9                   	leave  
 804d74b:	c3                   	ret    

0804d74c <translate_ExtDecList>:
 804d74c:	55                   	push   %ebp
 804d74d:	89 e5                	mov    %esp,%ebp
 804d74f:	83 ec 18             	sub    $0x18,%esp
 804d752:	8b 45 08             	mov    0x8(%ebp),%eax
 804d755:	8b 40 14             	mov    0x14(%eax),%eax
 804d758:	83 ec 0c             	sub    $0xc,%esp
 804d75b:	50                   	push   %eax
 804d75c:	e8 3f 00 00 00       	call   804d7a0 <translate_VarDec>
 804d761:	83 c4 10             	add    $0x10,%esp
 804d764:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d767:	8b 45 08             	mov    0x8(%ebp),%eax
 804d76a:	8b 40 10             	mov    0x10(%eax),%eax
 804d76d:	83 f8 03             	cmp    $0x3,%eax
 804d770:	75 29                	jne    804d79b <translate_ExtDecList+0x4f>
 804d772:	8b 45 08             	mov    0x8(%ebp),%eax
 804d775:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d778:	83 ec 0c             	sub    $0xc,%esp
 804d77b:	50                   	push   %eax
 804d77c:	e8 cb ff ff ff       	call   804d74c <translate_ExtDecList>
 804d781:	83 c4 10             	add    $0x10,%esp
 804d784:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d787:	83 ec 08             	sub    $0x8,%esp
 804d78a:	ff 75 f4             	pushl  -0xc(%ebp)
 804d78d:	ff 75 f0             	pushl  -0x10(%ebp)
 804d790:	e8 04 f1 ff ff       	call   804c899 <addTail>
 804d795:	83 c4 10             	add    $0x10,%esp
 804d798:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d79b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d79e:	c9                   	leave  
 804d79f:	c3                   	ret    

0804d7a0 <translate_VarDec>:
 804d7a0:	55                   	push   %ebp
 804d7a1:	89 e5                	mov    %esp,%ebp
 804d7a3:	83 ec 38             	sub    $0x38,%esp
 804d7a6:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 804d7ad:	8b 45 08             	mov    0x8(%ebp),%eax
 804d7b0:	8b 40 14             	mov    0x14(%eax),%eax
 804d7b3:	8b 40 04             	mov    0x4(%eax),%eax
 804d7b6:	83 f8 03             	cmp    $0x3,%eax
 804d7b9:	0f 85 f6 00 00 00    	jne    804d8b5 <translate_VarDec+0x115>
 804d7bf:	8b 45 08             	mov    0x8(%ebp),%eax
 804d7c2:	8b 40 14             	mov    0x14(%eax),%eax
 804d7c5:	8b 40 08             	mov    0x8(%eax),%eax
 804d7c8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804d7cb:	83 ec 0c             	sub    $0xc,%esp
 804d7ce:	ff 75 d4             	pushl  -0x2c(%ebp)
 804d7d1:	e8 7b 76 00 00       	call   8054e51 <searchTable>
 804d7d6:	83 c4 10             	add    $0x10,%esp
 804d7d9:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804d7dc:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 804d7e0:	75 19                	jne    804d7fb <translate_VarDec+0x5b>
 804d7e2:	68 c4 66 05 08       	push   $0x80566c4
 804d7e7:	68 92 01 00 00       	push   $0x192
 804d7ec:	68 8c 63 05 08       	push   $0x805638c
 804d7f1:	68 18 65 05 08       	push   $0x8056518
 804d7f6:	e8 f5 b1 ff ff       	call   80489f0 <__assert_fail@plt>
 804d7fb:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d7fe:	8b 00                	mov    (%eax),%eax
 804d800:	85 c0                	test   %eax,%eax
 804d802:	0f 85 c2 00 00 00    	jne    804d8ca <translate_VarDec+0x12a>
 804d808:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d80b:	8b 40 0c             	mov    0xc(%eax),%eax
 804d80e:	8b 00                	mov    (%eax),%eax
 804d810:	85 c0                	test   %eax,%eax
 804d812:	0f 84 b2 00 00 00    	je     804d8ca <translate_VarDec+0x12a>
 804d818:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d81b:	8b 40 0c             	mov    0xc(%eax),%eax
 804d81e:	83 ec 0c             	sub    $0xc,%esp
 804d821:	50                   	push   %eax
 804d822:	e8 ae 78 00 00       	call   80550d5 <typeSize>
 804d827:	83 c4 10             	add    $0x10,%esp
 804d82a:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804d82d:	e8 92 f1 ff ff       	call   804c9c4 <newTemp>
 804d832:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d835:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804d838:	83 ec 08             	sub    $0x8,%esp
 804d83b:	50                   	push   %eax
 804d83c:	6a 01                	push   $0x1
 804d83e:	e8 6e fb ff ff       	call   804d3b1 <newOp>
 804d843:	83 c4 10             	add    $0x10,%esp
 804d846:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d849:	ff 75 e4             	pushl  -0x1c(%ebp)
 804d84c:	ff 75 e0             	pushl  -0x20(%ebp)
 804d84f:	6a 00                	push   $0x0
 804d851:	6a 06                	push   $0x6
 804d853:	e8 bf fb ff ff       	call   804d417 <newIC>
 804d858:	83 c4 10             	add    $0x10,%esp
 804d85b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d85e:	83 ec 08             	sub    $0x8,%esp
 804d861:	ff 75 d4             	pushl  -0x2c(%ebp)
 804d864:	6a 00                	push   $0x0
 804d866:	e8 46 fb ff ff       	call   804d3b1 <newOp>
 804d86b:	83 c4 10             	add    $0x10,%esp
 804d86e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d871:	83 ec 08             	sub    $0x8,%esp
 804d874:	ff 75 e0             	pushl  -0x20(%ebp)
 804d877:	6a 05                	push   $0x5
 804d879:	e8 33 fb ff ff       	call   804d3b1 <newOp>
 804d87e:	83 c4 10             	add    $0x10,%esp
 804d881:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d884:	6a 00                	push   $0x0
 804d886:	ff 75 f0             	pushl  -0x10(%ebp)
 804d889:	ff 75 ec             	pushl  -0x14(%ebp)
 804d88c:	6a 01                	push   $0x1
 804d88e:	e8 84 fb ff ff       	call   804d417 <newIC>
 804d893:	83 c4 10             	add    $0x10,%esp
 804d896:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d899:	83 ec 08             	sub    $0x8,%esp
 804d89c:	ff 75 f4             	pushl  -0xc(%ebp)
 804d89f:	ff 75 e8             	pushl  -0x18(%ebp)
 804d8a2:	e8 f2 ef ff ff       	call   804c899 <addTail>
 804d8a7:	83 c4 10             	add    $0x10,%esp
 804d8aa:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d8ad:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d8b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d8b3:	eb 15                	jmp    804d8ca <translate_VarDec+0x12a>
 804d8b5:	8b 45 08             	mov    0x8(%ebp),%eax
 804d8b8:	8b 40 14             	mov    0x14(%eax),%eax
 804d8bb:	83 ec 0c             	sub    $0xc,%esp
 804d8be:	50                   	push   %eax
 804d8bf:	e8 dc fe ff ff       	call   804d7a0 <translate_VarDec>
 804d8c4:	83 c4 10             	add    $0x10,%esp
 804d8c7:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d8ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d8cd:	c9                   	leave  
 804d8ce:	c3                   	ret    

0804d8cf <translate_FunDec>:
 804d8cf:	55                   	push   %ebp
 804d8d0:	89 e5                	mov    %esp,%ebp
 804d8d2:	83 ec 28             	sub    $0x28,%esp
 804d8d5:	8b 45 08             	mov    0x8(%ebp),%eax
 804d8d8:	8b 40 14             	mov    0x14(%eax),%eax
 804d8db:	8b 40 08             	mov    0x8(%eax),%eax
 804d8de:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d8e1:	8b 45 08             	mov    0x8(%ebp),%eax
 804d8e4:	8b 40 14             	mov    0x14(%eax),%eax
 804d8e7:	8b 40 08             	mov    0x8(%eax),%eax
 804d8ea:	83 ec 0c             	sub    $0xc,%esp
 804d8ed:	50                   	push   %eax
 804d8ee:	e8 5e 75 00 00       	call   8054e51 <searchTable>
 804d8f3:	83 c4 10             	add    $0x10,%esp
 804d8f6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d8f9:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804d8fd:	74 0a                	je     804d909 <translate_FunDec+0x3a>
 804d8ff:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d902:	8b 00                	mov    (%eax),%eax
 804d904:	83 f8 01             	cmp    $0x1,%eax
 804d907:	74 19                	je     804d922 <translate_FunDec+0x53>
 804d909:	68 d8 66 05 08       	push   $0x80566d8
 804d90e:	68 ad 01 00 00       	push   $0x1ad
 804d913:	68 8c 63 05 08       	push   $0x805638c
 804d918:	68 2c 65 05 08       	push   $0x805652c
 804d91d:	e8 ce b0 ff ff       	call   80489f0 <__assert_fail@plt>
 804d922:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d925:	8b 40 04             	mov    0x4(%eax),%eax
 804d928:	83 ec 08             	sub    $0x8,%esp
 804d92b:	50                   	push   %eax
 804d92c:	6a 00                	push   $0x0
 804d92e:	e8 7e fa ff ff       	call   804d3b1 <newOp>
 804d933:	83 c4 10             	add    $0x10,%esp
 804d936:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d939:	6a 00                	push   $0x0
 804d93b:	ff 75 e8             	pushl  -0x18(%ebp)
 804d93e:	6a 00                	push   $0x0
 804d940:	6a 07                	push   $0x7
 804d942:	e8 d0 fa ff ff       	call   804d417 <newIC>
 804d947:	83 c4 10             	add    $0x10,%esp
 804d94a:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d94d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804d954:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d957:	8b 40 0c             	mov    0xc(%eax),%eax
 804d95a:	8b 40 04             	mov    0x4(%eax),%eax
 804d95d:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804d960:	eb 47                	jmp    804d9a9 <translate_FunDec+0xda>
 804d962:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804d965:	8b 00                	mov    (%eax),%eax
 804d967:	83 ec 08             	sub    $0x8,%esp
 804d96a:	50                   	push   %eax
 804d96b:	6a 00                	push   $0x0
 804d96d:	e8 3f fa ff ff       	call   804d3b1 <newOp>
 804d972:	83 c4 10             	add    $0x10,%esp
 804d975:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d978:	6a 00                	push   $0x0
 804d97a:	ff 75 f0             	pushl  -0x10(%ebp)
 804d97d:	6a 00                	push   $0x0
 804d97f:	6a 08                	push   $0x8
 804d981:	e8 91 fa ff ff       	call   804d417 <newIC>
 804d986:	83 c4 10             	add    $0x10,%esp
 804d989:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d98c:	83 ec 08             	sub    $0x8,%esp
 804d98f:	ff 75 f4             	pushl  -0xc(%ebp)
 804d992:	ff 75 d8             	pushl  -0x28(%ebp)
 804d995:	e8 ff ee ff ff       	call   804c899 <addTail>
 804d99a:	83 c4 10             	add    $0x10,%esp
 804d99d:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804d9a0:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804d9a3:	8b 40 08             	mov    0x8(%eax),%eax
 804d9a6:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804d9a9:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804d9ad:	75 b3                	jne    804d962 <translate_FunDec+0x93>
 804d9af:	83 ec 08             	sub    $0x8,%esp
 804d9b2:	ff 75 d8             	pushl  -0x28(%ebp)
 804d9b5:	ff 75 ec             	pushl  -0x14(%ebp)
 804d9b8:	e8 dc ee ff ff       	call   804c899 <addTail>
 804d9bd:	83 c4 10             	add    $0x10,%esp
 804d9c0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d9c3:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804d9c6:	c9                   	leave  
 804d9c7:	c3                   	ret    

0804d9c8 <translate_VarList>:
 804d9c8:	55                   	push   %ebp
 804d9c9:	89 e5                	mov    %esp,%ebp
 804d9cb:	b8 00 00 00 00       	mov    $0x0,%eax
 804d9d0:	5d                   	pop    %ebp
 804d9d1:	c3                   	ret    

0804d9d2 <translate_CompSt>:
 804d9d2:	55                   	push   %ebp
 804d9d3:	89 e5                	mov    %esp,%ebp
 804d9d5:	83 ec 18             	sub    $0x18,%esp
 804d9d8:	8b 45 08             	mov    0x8(%ebp),%eax
 804d9db:	8b 40 18             	mov    0x18(%eax),%eax
 804d9de:	83 ec 0c             	sub    $0xc,%esp
 804d9e1:	50                   	push   %eax
 804d9e2:	e8 34 00 00 00       	call   804da1b <translate_DefList>
 804d9e7:	83 c4 10             	add    $0x10,%esp
 804d9ea:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d9ed:	8b 45 08             	mov    0x8(%ebp),%eax
 804d9f0:	8b 40 1c             	mov    0x1c(%eax),%eax
 804d9f3:	83 ec 0c             	sub    $0xc,%esp
 804d9f6:	50                   	push   %eax
 804d9f7:	e8 17 02 00 00       	call   804dc13 <translate_StmtList>
 804d9fc:	83 c4 10             	add    $0x10,%esp
 804d9ff:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804da02:	83 ec 08             	sub    $0x8,%esp
 804da05:	ff 75 f4             	pushl  -0xc(%ebp)
 804da08:	ff 75 f0             	pushl  -0x10(%ebp)
 804da0b:	e8 89 ee ff ff       	call   804c899 <addTail>
 804da10:	83 c4 10             	add    $0x10,%esp
 804da13:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804da16:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da19:	c9                   	leave  
 804da1a:	c3                   	ret    

0804da1b <translate_DefList>:
 804da1b:	55                   	push   %ebp
 804da1c:	89 e5                	mov    %esp,%ebp
 804da1e:	83 ec 18             	sub    $0x18,%esp
 804da21:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804da25:	75 07                	jne    804da2e <translate_DefList+0x13>
 804da27:	b8 00 00 00 00       	mov    $0x0,%eax
 804da2c:	eb 41                	jmp    804da6f <translate_DefList+0x54>
 804da2e:	8b 45 08             	mov    0x8(%ebp),%eax
 804da31:	8b 40 14             	mov    0x14(%eax),%eax
 804da34:	83 ec 0c             	sub    $0xc,%esp
 804da37:	50                   	push   %eax
 804da38:	e8 34 00 00 00       	call   804da71 <translate_Def>
 804da3d:	83 c4 10             	add    $0x10,%esp
 804da40:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804da43:	8b 45 08             	mov    0x8(%ebp),%eax
 804da46:	8b 40 18             	mov    0x18(%eax),%eax
 804da49:	83 ec 0c             	sub    $0xc,%esp
 804da4c:	50                   	push   %eax
 804da4d:	e8 c9 ff ff ff       	call   804da1b <translate_DefList>
 804da52:	83 c4 10             	add    $0x10,%esp
 804da55:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804da58:	83 ec 08             	sub    $0x8,%esp
 804da5b:	ff 75 f4             	pushl  -0xc(%ebp)
 804da5e:	ff 75 f0             	pushl  -0x10(%ebp)
 804da61:	e8 33 ee ff ff       	call   804c899 <addTail>
 804da66:	83 c4 10             	add    $0x10,%esp
 804da69:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804da6c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da6f:	c9                   	leave  
 804da70:	c3                   	ret    

0804da71 <translate_Def>:
 804da71:	55                   	push   %ebp
 804da72:	89 e5                	mov    %esp,%ebp
 804da74:	83 ec 08             	sub    $0x8,%esp
 804da77:	8b 45 08             	mov    0x8(%ebp),%eax
 804da7a:	8b 40 18             	mov    0x18(%eax),%eax
 804da7d:	83 ec 0c             	sub    $0xc,%esp
 804da80:	50                   	push   %eax
 804da81:	e8 05 00 00 00       	call   804da8b <translate_DecList>
 804da86:	83 c4 10             	add    $0x10,%esp
 804da89:	c9                   	leave  
 804da8a:	c3                   	ret    

0804da8b <translate_DecList>:
 804da8b:	55                   	push   %ebp
 804da8c:	89 e5                	mov    %esp,%ebp
 804da8e:	83 ec 18             	sub    $0x18,%esp
 804da91:	8b 45 08             	mov    0x8(%ebp),%eax
 804da94:	8b 40 14             	mov    0x14(%eax),%eax
 804da97:	83 ec 0c             	sub    $0xc,%esp
 804da9a:	50                   	push   %eax
 804da9b:	e8 3f 00 00 00       	call   804dadf <translate_Dec>
 804daa0:	83 c4 10             	add    $0x10,%esp
 804daa3:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804daa6:	8b 45 08             	mov    0x8(%ebp),%eax
 804daa9:	8b 40 10             	mov    0x10(%eax),%eax
 804daac:	83 f8 03             	cmp    $0x3,%eax
 804daaf:	75 29                	jne    804dada <translate_DecList+0x4f>
 804dab1:	8b 45 08             	mov    0x8(%ebp),%eax
 804dab4:	8b 40 1c             	mov    0x1c(%eax),%eax
 804dab7:	83 ec 0c             	sub    $0xc,%esp
 804daba:	50                   	push   %eax
 804dabb:	e8 cb ff ff ff       	call   804da8b <translate_DecList>
 804dac0:	83 c4 10             	add    $0x10,%esp
 804dac3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804dac6:	83 ec 08             	sub    $0x8,%esp
 804dac9:	ff 75 f4             	pushl  -0xc(%ebp)
 804dacc:	ff 75 f0             	pushl  -0x10(%ebp)
 804dacf:	e8 c5 ed ff ff       	call   804c899 <addTail>
 804dad4:	83 c4 10             	add    $0x10,%esp
 804dad7:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804dada:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804dadd:	c9                   	leave  
 804dade:	c3                   	ret    

0804dadf <translate_Dec>:
 804dadf:	55                   	push   %ebp
 804dae0:	89 e5                	mov    %esp,%ebp
 804dae2:	83 ec 28             	sub    $0x28,%esp
 804dae5:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804daec:	8b 45 08             	mov    0x8(%ebp),%eax
 804daef:	8b 40 10             	mov    0x10(%eax),%eax
 804daf2:	83 f8 01             	cmp    $0x1,%eax
 804daf5:	75 1a                	jne    804db11 <translate_Dec+0x32>
 804daf7:	8b 45 08             	mov    0x8(%ebp),%eax
 804dafa:	8b 40 14             	mov    0x14(%eax),%eax
 804dafd:	83 ec 0c             	sub    $0xc,%esp
 804db00:	50                   	push   %eax
 804db01:	e8 9a fc ff ff       	call   804d7a0 <translate_VarDec>
 804db06:	83 c4 10             	add    $0x10,%esp
 804db09:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804db0c:	e9 fd 00 00 00       	jmp    804dc0e <translate_Dec+0x12f>
 804db11:	8b 45 08             	mov    0x8(%ebp),%eax
 804db14:	8b 40 10             	mov    0x10(%eax),%eax
 804db17:	83 f8 03             	cmp    $0x3,%eax
 804db1a:	0f 85 d5 00 00 00    	jne    804dbf5 <translate_Dec+0x116>
 804db20:	8b 45 08             	mov    0x8(%ebp),%eax
 804db23:	8b 40 14             	mov    0x14(%eax),%eax
 804db26:	8b 40 14             	mov    0x14(%eax),%eax
 804db29:	8b 40 04             	mov    0x4(%eax),%eax
 804db2c:	83 f8 03             	cmp    $0x3,%eax
 804db2f:	74 19                	je     804db4a <translate_Dec+0x6b>
 804db31:	68 ec 66 05 08       	push   $0x80566ec
 804db36:	68 f6 01 00 00       	push   $0x1f6
 804db3b:	68 8c 63 05 08       	push   $0x805638c
 804db40:	68 58 65 05 08       	push   $0x8056558
 804db45:	e8 a6 ae ff ff       	call   80489f0 <__assert_fail@plt>
 804db4a:	8b 45 08             	mov    0x8(%ebp),%eax
 804db4d:	8b 40 14             	mov    0x14(%eax),%eax
 804db50:	8b 40 14             	mov    0x14(%eax),%eax
 804db53:	8b 40 08             	mov    0x8(%eax),%eax
 804db56:	83 ec 0c             	sub    $0xc,%esp
 804db59:	50                   	push   %eax
 804db5a:	e8 f2 72 00 00       	call   8054e51 <searchTable>
 804db5f:	83 c4 10             	add    $0x10,%esp
 804db62:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804db65:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804db69:	74 09                	je     804db74 <translate_Dec+0x95>
 804db6b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804db6e:	8b 00                	mov    (%eax),%eax
 804db70:	85 c0                	test   %eax,%eax
 804db72:	74 19                	je     804db8d <translate_Dec+0xae>
 804db74:	68 ec 66 05 08       	push   $0x80566ec
 804db79:	68 f8 01 00 00       	push   $0x1f8
 804db7e:	68 8c 63 05 08       	push   $0x805638c
 804db83:	68 81 65 05 08       	push   $0x8056581
 804db88:	e8 63 ae ff ff       	call   80489f0 <__assert_fail@plt>
 804db8d:	e8 32 ee ff ff       	call   804c9c4 <newTemp>
 804db92:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804db95:	8b 45 08             	mov    0x8(%ebp),%eax
 804db98:	8b 40 1c             	mov    0x1c(%eax),%eax
 804db9b:	83 ec 08             	sub    $0x8,%esp
 804db9e:	ff 75 e8             	pushl  -0x18(%ebp)
 804dba1:	50                   	push   %eax
 804dba2:	e8 c9 04 00 00       	call   804e070 <translate_Exp>
 804dba7:	83 c4 10             	add    $0x10,%esp
 804dbaa:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804dbad:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804dbb0:	8b 40 04             	mov    0x4(%eax),%eax
 804dbb3:	83 ec 08             	sub    $0x8,%esp
 804dbb6:	50                   	push   %eax
 804dbb7:	6a 00                	push   $0x0
 804dbb9:	e8 f3 f7 ff ff       	call   804d3b1 <newOp>
 804dbbe:	83 c4 10             	add    $0x10,%esp
 804dbc1:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804dbc4:	6a 00                	push   $0x0
 804dbc6:	ff 75 e8             	pushl  -0x18(%ebp)
 804dbc9:	ff 75 f0             	pushl  -0x10(%ebp)
 804dbcc:	6a 01                	push   $0x1
 804dbce:	e8 44 f8 ff ff       	call   804d417 <newIC>
 804dbd3:	83 c4 10             	add    $0x10,%esp
 804dbd6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804dbd9:	83 ec 08             	sub    $0x8,%esp
 804dbdc:	ff 75 f4             	pushl  -0xc(%ebp)
 804dbdf:	ff 75 ec             	pushl  -0x14(%ebp)
 804dbe2:	e8 b2 ec ff ff       	call   804c899 <addTail>
 804dbe7:	83 c4 10             	add    $0x10,%esp
 804dbea:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804dbed:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804dbf0:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804dbf3:	eb 19                	jmp    804dc0e <translate_Dec+0x12f>
 804dbf5:	68 ec 66 05 08       	push   $0x80566ec
 804dbfa:	68 03 02 00 00       	push   $0x203
 804dbff:	68 8c 63 05 08       	push   $0x805638c
 804dc04:	68 91 63 05 08       	push   $0x8056391
 804dc09:	e8 e2 ad ff ff       	call   80489f0 <__assert_fail@plt>
 804dc0e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804dc11:	c9                   	leave  
 804dc12:	c3                   	ret    

0804dc13 <translate_StmtList>:
 804dc13:	55                   	push   %ebp
 804dc14:	89 e5                	mov    %esp,%ebp
 804dc16:	83 ec 18             	sub    $0x18,%esp
 804dc19:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804dc1d:	75 07                	jne    804dc26 <translate_StmtList+0x13>
 804dc1f:	b8 00 00 00 00       	mov    $0x0,%eax
 804dc24:	eb 41                	jmp    804dc67 <translate_StmtList+0x54>
 804dc26:	8b 45 08             	mov    0x8(%ebp),%eax
 804dc29:	8b 40 14             	mov    0x14(%eax),%eax
 804dc2c:	83 ec 0c             	sub    $0xc,%esp
 804dc2f:	50                   	push   %eax
 804dc30:	e8 34 00 00 00       	call   804dc69 <translate_Stmt>
 804dc35:	83 c4 10             	add    $0x10,%esp
 804dc38:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804dc3b:	8b 45 08             	mov    0x8(%ebp),%eax
 804dc3e:	8b 40 18             	mov    0x18(%eax),%eax
 804dc41:	83 ec 0c             	sub    $0xc,%esp
 804dc44:	50                   	push   %eax
 804dc45:	e8 c9 ff ff ff       	call   804dc13 <translate_StmtList>
 804dc4a:	83 c4 10             	add    $0x10,%esp
 804dc4d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804dc50:	83 ec 08             	sub    $0x8,%esp
 804dc53:	ff 75 f4             	pushl  -0xc(%ebp)
 804dc56:	ff 75 f0             	pushl  -0x10(%ebp)
 804dc59:	e8 3b ec ff ff       	call   804c899 <addTail>
 804dc5e:	83 c4 10             	add    $0x10,%esp
 804dc61:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804dc64:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804dc67:	c9                   	leave  
 804dc68:	c3                   	ret    

0804dc69 <translate_Stmt>:
 804dc69:	55                   	push   %ebp
 804dc6a:	89 e5                	mov    %esp,%ebp
 804dc6c:	81 ec 88 00 00 00    	sub    $0x88,%esp
 804dc72:	8b 45 08             	mov    0x8(%ebp),%eax
 804dc75:	8b 40 14             	mov    0x14(%eax),%eax
 804dc78:	89 45 80             	mov    %eax,-0x80(%ebp)
 804dc7b:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 804dc82:	00 00 00 
 804dc85:	8b 45 80             	mov    -0x80(%ebp),%eax
 804dc88:	8b 40 04             	mov    0x4(%eax),%eax
 804dc8b:	83 f8 32             	cmp    $0x32,%eax
 804dc8e:	75 24                	jne    804dcb4 <translate_Stmt+0x4b>
 804dc90:	e8 2f ed ff ff       	call   804c9c4 <newTemp>
 804dc95:	89 45 84             	mov    %eax,-0x7c(%ebp)
 804dc98:	83 ec 08             	sub    $0x8,%esp
 804dc9b:	ff 75 84             	pushl  -0x7c(%ebp)
 804dc9e:	ff 75 80             	pushl  -0x80(%ebp)
 804dca1:	e8 ca 03 00 00       	call   804e070 <translate_Exp>
 804dca6:	83 c4 10             	add    $0x10,%esp
 804dca9:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804dcaf:	e9 b4 03 00 00       	jmp    804e068 <translate_Stmt+0x3ff>
 804dcb4:	8b 45 80             	mov    -0x80(%ebp),%eax
 804dcb7:	8b 40 04             	mov    0x4(%eax),%eax
 804dcba:	83 f8 2b             	cmp    $0x2b,%eax
 804dcbd:	75 19                	jne    804dcd8 <translate_Stmt+0x6f>
 804dcbf:	83 ec 0c             	sub    $0xc,%esp
 804dcc2:	ff 75 80             	pushl  -0x80(%ebp)
 804dcc5:	e8 08 fd ff ff       	call   804d9d2 <translate_CompSt>
 804dcca:	83 c4 10             	add    $0x10,%esp
 804dccd:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804dcd3:	e9 90 03 00 00       	jmp    804e068 <translate_Stmt+0x3ff>
 804dcd8:	8b 45 80             	mov    -0x80(%ebp),%eax
 804dcdb:	8b 40 04             	mov    0x4(%eax),%eax
 804dcde:	83 f8 1b             	cmp    $0x1b,%eax
 804dce1:	75 50                	jne    804dd33 <translate_Stmt+0xca>
 804dce3:	e8 dc ec ff ff       	call   804c9c4 <newTemp>
 804dce8:	89 45 88             	mov    %eax,-0x78(%ebp)
 804dceb:	8b 45 08             	mov    0x8(%ebp),%eax
 804dcee:	8b 40 18             	mov    0x18(%eax),%eax
 804dcf1:	83 ec 08             	sub    $0x8,%esp
 804dcf4:	ff 75 88             	pushl  -0x78(%ebp)
 804dcf7:	50                   	push   %eax
 804dcf8:	e8 73 03 00 00       	call   804e070 <translate_Exp>
 804dcfd:	83 c4 10             	add    $0x10,%esp
 804dd00:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804dd03:	6a 00                	push   $0x0
 804dd05:	ff 75 88             	pushl  -0x78(%ebp)
 804dd08:	6a 00                	push   $0x0
 804dd0a:	6a 0a                	push   $0xa
 804dd0c:	e8 06 f7 ff ff       	call   804d417 <newIC>
 804dd11:	83 c4 10             	add    $0x10,%esp
 804dd14:	89 45 90             	mov    %eax,-0x70(%ebp)
 804dd17:	83 ec 08             	sub    $0x8,%esp
 804dd1a:	ff 75 90             	pushl  -0x70(%ebp)
 804dd1d:	ff 75 8c             	pushl  -0x74(%ebp)
 804dd20:	e8 74 eb ff ff       	call   804c899 <addTail>
 804dd25:	83 c4 10             	add    $0x10,%esp
 804dd28:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804dd2e:	e9 35 03 00 00       	jmp    804e068 <translate_Stmt+0x3ff>
 804dd33:	8b 45 80             	mov    -0x80(%ebp),%eax
 804dd36:	8b 40 04             	mov    0x4(%eax),%eax
 804dd39:	83 f8 1c             	cmp    $0x1c,%eax
 804dd3c:	0f 85 c1 00 00 00    	jne    804de03 <translate_Stmt+0x19a>
 804dd42:	8b 45 08             	mov    0x8(%ebp),%eax
 804dd45:	8b 40 10             	mov    0x10(%eax),%eax
 804dd48:	83 f8 05             	cmp    $0x5,%eax
 804dd4b:	0f 85 b2 00 00 00    	jne    804de03 <translate_Stmt+0x19a>
 804dd51:	e8 9e ec ff ff       	call   804c9f4 <newLabel>
 804dd56:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804dd59:	e8 96 ec ff ff       	call   804c9f4 <newLabel>
 804dd5e:	89 45 98             	mov    %eax,-0x68(%ebp)
 804dd61:	8b 45 08             	mov    0x8(%ebp),%eax
 804dd64:	8b 40 1c             	mov    0x1c(%eax),%eax
 804dd67:	83 ec 04             	sub    $0x4,%esp
 804dd6a:	ff 75 98             	pushl  -0x68(%ebp)
 804dd6d:	ff 75 94             	pushl  -0x6c(%ebp)
 804dd70:	50                   	push   %eax
 804dd71:	e8 38 17 00 00       	call   804f4ae <translate_Cond>
 804dd76:	83 c4 10             	add    $0x10,%esp
 804dd79:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804dd7c:	8b 45 08             	mov    0x8(%ebp),%eax
 804dd7f:	8b 40 24             	mov    0x24(%eax),%eax
 804dd82:	83 ec 0c             	sub    $0xc,%esp
 804dd85:	50                   	push   %eax
 804dd86:	e8 de fe ff ff       	call   804dc69 <translate_Stmt>
 804dd8b:	83 c4 10             	add    $0x10,%esp
 804dd8e:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804dd91:	6a 00                	push   $0x0
 804dd93:	ff 75 94             	pushl  -0x6c(%ebp)
 804dd96:	6a 00                	push   $0x0
 804dd98:	6a 09                	push   $0x9
 804dd9a:	e8 78 f6 ff ff       	call   804d417 <newIC>
 804dd9f:	83 c4 10             	add    $0x10,%esp
 804dda2:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804dda5:	6a 00                	push   $0x0
 804dda7:	ff 75 98             	pushl  -0x68(%ebp)
 804ddaa:	6a 00                	push   $0x0
 804ddac:	6a 09                	push   $0x9
 804ddae:	e8 64 f6 ff ff       	call   804d417 <newIC>
 804ddb3:	83 c4 10             	add    $0x10,%esp
 804ddb6:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804ddb9:	83 ec 08             	sub    $0x8,%esp
 804ddbc:	ff 75 a8             	pushl  -0x58(%ebp)
 804ddbf:	ff 75 a0             	pushl  -0x60(%ebp)
 804ddc2:	e8 d2 ea ff ff       	call   804c899 <addTail>
 804ddc7:	83 c4 10             	add    $0x10,%esp
 804ddca:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804ddcd:	83 ec 08             	sub    $0x8,%esp
 804ddd0:	ff 75 a0             	pushl  -0x60(%ebp)
 804ddd3:	ff 75 a4             	pushl  -0x5c(%ebp)
 804ddd6:	e8 be ea ff ff       	call   804c899 <addTail>
 804dddb:	83 c4 10             	add    $0x10,%esp
 804ddde:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804dde1:	83 ec 08             	sub    $0x8,%esp
 804dde4:	ff 75 a4             	pushl  -0x5c(%ebp)
 804dde7:	ff 75 9c             	pushl  -0x64(%ebp)
 804ddea:	e8 aa ea ff ff       	call   804c899 <addTail>
 804ddef:	83 c4 10             	add    $0x10,%esp
 804ddf2:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804ddf5:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804ddf8:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804ddfe:	e9 65 02 00 00       	jmp    804e068 <translate_Stmt+0x3ff>
 804de03:	8b 45 80             	mov    -0x80(%ebp),%eax
 804de06:	8b 40 04             	mov    0x4(%eax),%eax
 804de09:	83 f8 1c             	cmp    $0x1c,%eax
 804de0c:	0f 85 42 01 00 00    	jne    804df54 <translate_Stmt+0x2eb>
 804de12:	8b 45 08             	mov    0x8(%ebp),%eax
 804de15:	8b 40 10             	mov    0x10(%eax),%eax
 804de18:	83 f8 07             	cmp    $0x7,%eax
 804de1b:	0f 85 33 01 00 00    	jne    804df54 <translate_Stmt+0x2eb>
 804de21:	e8 ce eb ff ff       	call   804c9f4 <newLabel>
 804de26:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804de29:	e8 c6 eb ff ff       	call   804c9f4 <newLabel>
 804de2e:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804de31:	e8 be eb ff ff       	call   804c9f4 <newLabel>
 804de36:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804de39:	8b 45 08             	mov    0x8(%ebp),%eax
 804de3c:	8b 40 1c             	mov    0x1c(%eax),%eax
 804de3f:	83 ec 04             	sub    $0x4,%esp
 804de42:	ff 75 b0             	pushl  -0x50(%ebp)
 804de45:	ff 75 ac             	pushl  -0x54(%ebp)
 804de48:	50                   	push   %eax
 804de49:	e8 60 16 00 00       	call   804f4ae <translate_Cond>
 804de4e:	83 c4 10             	add    $0x10,%esp
 804de51:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804de54:	8b 45 08             	mov    0x8(%ebp),%eax
 804de57:	8b 40 24             	mov    0x24(%eax),%eax
 804de5a:	83 ec 0c             	sub    $0xc,%esp
 804de5d:	50                   	push   %eax
 804de5e:	e8 06 fe ff ff       	call   804dc69 <translate_Stmt>
 804de63:	83 c4 10             	add    $0x10,%esp
 804de66:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804de69:	8b 45 08             	mov    0x8(%ebp),%eax
 804de6c:	8b 40 2c             	mov    0x2c(%eax),%eax
 804de6f:	83 ec 0c             	sub    $0xc,%esp
 804de72:	50                   	push   %eax
 804de73:	e8 f1 fd ff ff       	call   804dc69 <translate_Stmt>
 804de78:	83 c4 10             	add    $0x10,%esp
 804de7b:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804de7e:	6a 00                	push   $0x0
 804de80:	ff 75 ac             	pushl  -0x54(%ebp)
 804de83:	6a 00                	push   $0x0
 804de85:	6a 09                	push   $0x9
 804de87:	e8 8b f5 ff ff       	call   804d417 <newIC>
 804de8c:	83 c4 10             	add    $0x10,%esp
 804de8f:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804de92:	6a 00                	push   $0x0
 804de94:	ff 75 b4             	pushl  -0x4c(%ebp)
 804de97:	6a 00                	push   $0x0
 804de99:	6a 0b                	push   $0xb
 804de9b:	e8 77 f5 ff ff       	call   804d417 <newIC>
 804dea0:	83 c4 10             	add    $0x10,%esp
 804dea3:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804dea6:	6a 00                	push   $0x0
 804dea8:	ff 75 b0             	pushl  -0x50(%ebp)
 804deab:	6a 00                	push   $0x0
 804dead:	6a 09                	push   $0x9
 804deaf:	e8 63 f5 ff ff       	call   804d417 <newIC>
 804deb4:	83 c4 10             	add    $0x10,%esp
 804deb7:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804deba:	6a 00                	push   $0x0
 804debc:	ff 75 b4             	pushl  -0x4c(%ebp)
 804debf:	6a 00                	push   $0x0
 804dec1:	6a 09                	push   $0x9
 804dec3:	e8 4f f5 ff ff       	call   804d417 <newIC>
 804dec8:	83 c4 10             	add    $0x10,%esp
 804decb:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804dece:	83 ec 08             	sub    $0x8,%esp
 804ded1:	ff 75 d0             	pushl  -0x30(%ebp)
 804ded4:	ff 75 c0             	pushl  -0x40(%ebp)
 804ded7:	e8 bd e9 ff ff       	call   804c899 <addTail>
 804dedc:	83 c4 10             	add    $0x10,%esp
 804dedf:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804dee2:	83 ec 08             	sub    $0x8,%esp
 804dee5:	ff 75 c0             	pushl  -0x40(%ebp)
 804dee8:	ff 75 cc             	pushl  -0x34(%ebp)
 804deeb:	e8 a9 e9 ff ff       	call   804c899 <addTail>
 804def0:	83 c4 10             	add    $0x10,%esp
 804def3:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804def6:	83 ec 08             	sub    $0x8,%esp
 804def9:	ff 75 cc             	pushl  -0x34(%ebp)
 804defc:	ff 75 c8             	pushl  -0x38(%ebp)
 804deff:	e8 95 e9 ff ff       	call   804c899 <addTail>
 804df04:	83 c4 10             	add    $0x10,%esp
 804df07:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804df0a:	83 ec 08             	sub    $0x8,%esp
 804df0d:	ff 75 c8             	pushl  -0x38(%ebp)
 804df10:	ff 75 bc             	pushl  -0x44(%ebp)
 804df13:	e8 81 e9 ff ff       	call   804c899 <addTail>
 804df18:	83 c4 10             	add    $0x10,%esp
 804df1b:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804df1e:	83 ec 08             	sub    $0x8,%esp
 804df21:	ff 75 bc             	pushl  -0x44(%ebp)
 804df24:	ff 75 c4             	pushl  -0x3c(%ebp)
 804df27:	e8 6d e9 ff ff       	call   804c899 <addTail>
 804df2c:	83 c4 10             	add    $0x10,%esp
 804df2f:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804df32:	83 ec 08             	sub    $0x8,%esp
 804df35:	ff 75 c4             	pushl  -0x3c(%ebp)
 804df38:	ff 75 b8             	pushl  -0x48(%ebp)
 804df3b:	e8 59 e9 ff ff       	call   804c899 <addTail>
 804df40:	83 c4 10             	add    $0x10,%esp
 804df43:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804df46:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804df49:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804df4f:	e9 14 01 00 00       	jmp    804e068 <translate_Stmt+0x3ff>
 804df54:	8b 45 80             	mov    -0x80(%ebp),%eax
 804df57:	8b 40 04             	mov    0x4(%eax),%eax
 804df5a:	83 f8 1e             	cmp    $0x1e,%eax
 804df5d:	0f 85 05 01 00 00    	jne    804e068 <translate_Stmt+0x3ff>
 804df63:	e8 8c ea ff ff       	call   804c9f4 <newLabel>
 804df68:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804df6b:	e8 84 ea ff ff       	call   804c9f4 <newLabel>
 804df70:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804df73:	e8 7c ea ff ff       	call   804c9f4 <newLabel>
 804df78:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804df7b:	8b 45 08             	mov    0x8(%ebp),%eax
 804df7e:	8b 40 1c             	mov    0x1c(%eax),%eax
 804df81:	83 ec 04             	sub    $0x4,%esp
 804df84:	ff 75 dc             	pushl  -0x24(%ebp)
 804df87:	ff 75 d8             	pushl  -0x28(%ebp)
 804df8a:	50                   	push   %eax
 804df8b:	e8 1e 15 00 00       	call   804f4ae <translate_Cond>
 804df90:	83 c4 10             	add    $0x10,%esp
 804df93:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804df96:	8b 45 08             	mov    0x8(%ebp),%eax
 804df99:	8b 40 24             	mov    0x24(%eax),%eax
 804df9c:	83 ec 0c             	sub    $0xc,%esp
 804df9f:	50                   	push   %eax
 804dfa0:	e8 c4 fc ff ff       	call   804dc69 <translate_Stmt>
 804dfa5:	83 c4 10             	add    $0x10,%esp
 804dfa8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804dfab:	6a 00                	push   $0x0
 804dfad:	ff 75 d4             	pushl  -0x2c(%ebp)
 804dfb0:	6a 00                	push   $0x0
 804dfb2:	6a 09                	push   $0x9
 804dfb4:	e8 5e f4 ff ff       	call   804d417 <newIC>
 804dfb9:	83 c4 10             	add    $0x10,%esp
 804dfbc:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804dfbf:	6a 00                	push   $0x0
 804dfc1:	ff 75 d8             	pushl  -0x28(%ebp)
 804dfc4:	6a 00                	push   $0x0
 804dfc6:	6a 09                	push   $0x9
 804dfc8:	e8 4a f4 ff ff       	call   804d417 <newIC>
 804dfcd:	83 c4 10             	add    $0x10,%esp
 804dfd0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804dfd3:	6a 00                	push   $0x0
 804dfd5:	ff 75 d4             	pushl  -0x2c(%ebp)
 804dfd8:	6a 00                	push   $0x0
 804dfda:	6a 0b                	push   $0xb
 804dfdc:	e8 36 f4 ff ff       	call   804d417 <newIC>
 804dfe1:	83 c4 10             	add    $0x10,%esp
 804dfe4:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804dfe7:	6a 00                	push   $0x0
 804dfe9:	ff 75 dc             	pushl  -0x24(%ebp)
 804dfec:	6a 00                	push   $0x0
 804dfee:	6a 09                	push   $0x9
 804dff0:	e8 22 f4 ff ff       	call   804d417 <newIC>
 804dff5:	83 c4 10             	add    $0x10,%esp
 804dff8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804dffb:	83 ec 08             	sub    $0x8,%esp
 804dffe:	ff 75 f4             	pushl  -0xc(%ebp)
 804e001:	ff 75 f0             	pushl  -0x10(%ebp)
 804e004:	e8 90 e8 ff ff       	call   804c899 <addTail>
 804e009:	83 c4 10             	add    $0x10,%esp
 804e00c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804e00f:	83 ec 08             	sub    $0x8,%esp
 804e012:	ff 75 f0             	pushl  -0x10(%ebp)
 804e015:	ff 75 e4             	pushl  -0x1c(%ebp)
 804e018:	e8 7c e8 ff ff       	call   804c899 <addTail>
 804e01d:	83 c4 10             	add    $0x10,%esp
 804e020:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804e023:	83 ec 08             	sub    $0x8,%esp
 804e026:	ff 75 e4             	pushl  -0x1c(%ebp)
 804e029:	ff 75 ec             	pushl  -0x14(%ebp)
 804e02c:	e8 68 e8 ff ff       	call   804c899 <addTail>
 804e031:	83 c4 10             	add    $0x10,%esp
 804e034:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804e037:	83 ec 08             	sub    $0x8,%esp
 804e03a:	ff 75 ec             	pushl  -0x14(%ebp)
 804e03d:	ff 75 e0             	pushl  -0x20(%ebp)
 804e040:	e8 54 e8 ff ff       	call   804c899 <addTail>
 804e045:	83 c4 10             	add    $0x10,%esp
 804e048:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804e04b:	83 ec 08             	sub    $0x8,%esp
 804e04e:	ff 75 e0             	pushl  -0x20(%ebp)
 804e051:	ff 75 e8             	pushl  -0x18(%ebp)
 804e054:	e8 40 e8 ff ff       	call   804c899 <addTail>
 804e059:	83 c4 10             	add    $0x10,%esp
 804e05c:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804e05f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804e062:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804e068:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 804e06e:	c9                   	leave  
 804e06f:	c3                   	ret    

0804e070 <translate_Exp>:
 804e070:	55                   	push   %ebp
 804e071:	89 e5                	mov    %esp,%ebp
 804e073:	81 ec 38 01 00 00    	sub    $0x138,%esp
 804e079:	8b 45 08             	mov    0x8(%ebp),%eax
 804e07c:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
 804e082:	8b 45 0c             	mov    0xc(%ebp),%eax
 804e085:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%ebp)
 804e08b:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804e091:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804e094:	31 c0                	xor    %eax,%eax
 804e096:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804e09c:	8b 40 14             	mov    0x14(%eax),%eax
 804e09f:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
 804e0a5:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804e0ab:	8b 40 18             	mov    0x18(%eax),%eax
 804e0ae:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
 804e0b4:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804e0ba:	8b 40 1c             	mov    0x1c(%eax),%eax
 804e0bd:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
 804e0c3:	c7 85 e8 fe ff ff 00 	movl   $0x0,-0x118(%ebp)
 804e0ca:	00 00 00 
 804e0cd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e0d3:	8b 40 04             	mov    0x4(%eax),%eax
 804e0d6:	83 f8 32             	cmp    $0x32,%eax
 804e0d9:	0f 85 ad 02 00 00    	jne    804e38c <translate_Exp+0x31c>
 804e0df:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804e0e5:	8b 40 04             	mov    0x4(%eax),%eax
 804e0e8:	83 f8 0a             	cmp    $0xa,%eax
 804e0eb:	0f 85 9b 02 00 00    	jne    804e38c <translate_Exp+0x31c>
 804e0f1:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e0f7:	8b 40 14             	mov    0x14(%eax),%eax
 804e0fa:	8b 40 04             	mov    0x4(%eax),%eax
 804e0fd:	83 f8 03             	cmp    $0x3,%eax
 804e100:	0f 85 34 01 00 00    	jne    804e23a <translate_Exp+0x1ca>
 804e106:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e10c:	8b 40 14             	mov    0x14(%eax),%eax
 804e10f:	8b 40 08             	mov    0x8(%eax),%eax
 804e112:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
 804e118:	83 ec 0c             	sub    $0xc,%esp
 804e11b:	ff b5 0c ff ff ff    	pushl  -0xf4(%ebp)
 804e121:	e8 2b 6d 00 00       	call   8054e51 <searchTable>
 804e126:	83 c4 10             	add    $0x10,%esp
 804e129:	89 85 10 ff ff ff    	mov    %eax,-0xf0(%ebp)
 804e12f:	83 bd 10 ff ff ff 00 	cmpl   $0x0,-0xf0(%ebp)
 804e136:	75 19                	jne    804e151 <translate_Exp+0xe1>
 804e138:	68 fc 66 05 08       	push   $0x80566fc
 804e13d:	68 6b 02 00 00       	push   $0x26b
 804e142:	68 8c 63 05 08       	push   $0x805638c
 804e147:	68 9b 65 05 08       	push   $0x805659b
 804e14c:	e8 9f a8 ff ff       	call   80489f0 <__assert_fail@plt>
 804e151:	e8 6e e8 ff ff       	call   804c9c4 <newTemp>
 804e156:	89 85 14 ff ff ff    	mov    %eax,-0xec(%ebp)
 804e15c:	83 ec 08             	sub    $0x8,%esp
 804e15f:	ff b5 14 ff ff ff    	pushl  -0xec(%ebp)
 804e165:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804e16b:	e8 00 ff ff ff       	call   804e070 <translate_Exp>
 804e170:	83 c4 10             	add    $0x10,%esp
 804e173:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%ebp)
 804e179:	e8 d9 f1 ff ff       	call   804d357 <newInterCodes>
 804e17e:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
 804e184:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
 804e18a:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804e190:	e8 ef f1 ff ff       	call   804d384 <newOperand>
 804e195:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804e19b:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804e1a1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804e1a7:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804e1ad:	8b 95 0c ff ff ff    	mov    -0xf4(%ebp),%edx
 804e1b3:	89 50 04             	mov    %edx,0x4(%eax)
 804e1b6:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
 804e1bc:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
 804e1c2:	89 50 04             	mov    %edx,0x4(%eax)
 804e1c5:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
 804e1cb:	8b 95 14 ff ff ff    	mov    -0xec(%ebp),%edx
 804e1d1:	89 50 08             	mov    %edx,0x8(%eax)
 804e1d4:	83 bd d0 fe ff ff 00 	cmpl   $0x0,-0x130(%ebp)
 804e1db:	74 3b                	je     804e218 <translate_Exp+0x1a8>
 804e1dd:	6a 00                	push   $0x0
 804e1df:	ff b5 1c ff ff ff    	pushl  -0xe4(%ebp)
 804e1e5:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804e1eb:	6a 01                	push   $0x1
 804e1ed:	e8 25 f2 ff ff       	call   804d417 <newIC>
 804e1f2:	83 c4 10             	add    $0x10,%esp
 804e1f5:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804e1fb:	83 ec 08             	sub    $0x8,%esp
 804e1fe:	ff b5 20 ff ff ff    	pushl  -0xe0(%ebp)
 804e204:	ff b5 ec fe ff ff    	pushl  -0x114(%ebp)
 804e20a:	e8 8a e6 ff ff       	call   804c899 <addTail>
 804e20f:	83 c4 10             	add    $0x10,%esp
 804e212:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
 804e218:	83 ec 08             	sub    $0x8,%esp
 804e21b:	ff b5 ec fe ff ff    	pushl  -0x114(%ebp)
 804e221:	ff b5 18 ff ff ff    	pushl  -0xe8(%ebp)
 804e227:	e8 6d e6 ff ff       	call   804c899 <addTail>
 804e22c:	83 c4 10             	add    $0x10,%esp
 804e22f:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e235:	e9 64 0b 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e23a:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e240:	8b 40 14             	mov    0x14(%eax),%eax
 804e243:	8b 40 04             	mov    0x4(%eax),%eax
 804e246:	83 f8 32             	cmp    $0x32,%eax
 804e249:	0f 85 24 01 00 00    	jne    804e373 <translate_Exp+0x303>
 804e24f:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e255:	8b 40 18             	mov    0x18(%eax),%eax
 804e258:	8b 40 04             	mov    0x4(%eax),%eax
 804e25b:	83 f8 12             	cmp    $0x12,%eax
 804e25e:	74 15                	je     804e275 <translate_Exp+0x205>
 804e260:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e266:	8b 40 18             	mov    0x18(%eax),%eax
 804e269:	8b 40 04             	mov    0x4(%eax),%eax
 804e26c:	83 f8 16             	cmp    $0x16,%eax
 804e26f:	0f 85 fe 00 00 00    	jne    804e373 <translate_Exp+0x303>
 804e275:	e8 4a e7 ff ff       	call   804c9c4 <newTemp>
 804e27a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804e280:	83 ec 08             	sub    $0x8,%esp
 804e283:	ff b5 24 ff ff ff    	pushl  -0xdc(%ebp)
 804e289:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804e28f:	e8 dc fd ff ff       	call   804e070 <translate_Exp>
 804e294:	83 c4 10             	add    $0x10,%esp
 804e297:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
 804e29d:	e8 22 e7 ff ff       	call   804c9c4 <newTemp>
 804e2a2:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804e2a8:	83 ec 08             	sub    $0x8,%esp
 804e2ab:	ff b5 28 ff ff ff    	pushl  -0xd8(%ebp)
 804e2b1:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804e2b7:	e8 b4 fd ff ff       	call   804e070 <translate_Exp>
 804e2bc:	83 c4 10             	add    $0x10,%esp
 804e2bf:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804e2c5:	6a 00                	push   $0x0
 804e2c7:	ff b5 28 ff ff ff    	pushl  -0xd8(%ebp)
 804e2cd:	ff b5 24 ff ff ff    	pushl  -0xdc(%ebp)
 804e2d3:	6a 01                	push   $0x1
 804e2d5:	e8 3d f1 ff ff       	call   804d417 <newIC>
 804e2da:	83 c4 10             	add    $0x10,%esp
 804e2dd:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
 804e2e3:	83 ec 08             	sub    $0x8,%esp
 804e2e6:	ff b5 30 ff ff ff    	pushl  -0xd0(%ebp)
 804e2ec:	ff b5 2c ff ff ff    	pushl  -0xd4(%ebp)
 804e2f2:	e8 a2 e5 ff ff       	call   804c899 <addTail>
 804e2f7:	83 c4 10             	add    $0x10,%esp
 804e2fa:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804e300:	83 ec 08             	sub    $0x8,%esp
 804e303:	ff b5 2c ff ff ff    	pushl  -0xd4(%ebp)
 804e309:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
 804e30f:	e8 85 e5 ff ff       	call   804c899 <addTail>
 804e314:	83 c4 10             	add    $0x10,%esp
 804e317:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
 804e31d:	83 bd d0 fe ff ff 00 	cmpl   $0x0,-0x130(%ebp)
 804e324:	74 3b                	je     804e361 <translate_Exp+0x2f1>
 804e326:	6a 00                	push   $0x0
 804e328:	ff b5 24 ff ff ff    	pushl  -0xdc(%ebp)
 804e32e:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804e334:	6a 01                	push   $0x1
 804e336:	e8 dc f0 ff ff       	call   804d417 <newIC>
 804e33b:	83 c4 10             	add    $0x10,%esp
 804e33e:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%ebp)
 804e344:	83 ec 08             	sub    $0x8,%esp
 804e347:	ff b5 34 ff ff ff    	pushl  -0xcc(%ebp)
 804e34d:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
 804e353:	e8 41 e5 ff ff       	call   804c899 <addTail>
 804e358:	83 c4 10             	add    $0x10,%esp
 804e35b:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
 804e361:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
 804e367:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e36d:	90                   	nop
 804e36e:	e9 2b 0a 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e373:	68 fc 66 05 08       	push   $0x80566fc
 804e378:	68 97 02 00 00       	push   $0x297
 804e37d:	68 8c 63 05 08       	push   $0x805638c
 804e382:	68 91 63 05 08       	push   $0x8056391
 804e387:	e8 64 a6 ff ff       	call   80489f0 <__assert_fail@plt>
 804e38c:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e392:	8b 40 04             	mov    0x4(%eax),%eax
 804e395:	83 f8 32             	cmp    $0x32,%eax
 804e398:	0f 85 f1 00 00 00    	jne    804e48f <translate_Exp+0x41f>
 804e39e:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804e3a4:	8b 40 04             	mov    0x4(%eax),%eax
 804e3a7:	83 f8 0c             	cmp    $0xc,%eax
 804e3aa:	0f 85 df 00 00 00    	jne    804e48f <translate_Exp+0x41f>
 804e3b0:	e8 0f e6 ff ff       	call   804c9c4 <newTemp>
 804e3b5:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804e3bb:	e8 04 e6 ff ff       	call   804c9c4 <newTemp>
 804e3c0:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
 804e3c6:	83 ec 08             	sub    $0x8,%esp
 804e3c9:	ff b5 38 ff ff ff    	pushl  -0xc8(%ebp)
 804e3cf:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804e3d5:	e8 96 fc ff ff       	call   804e070 <translate_Exp>
 804e3da:	83 c4 10             	add    $0x10,%esp
 804e3dd:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 804e3e3:	83 ec 08             	sub    $0x8,%esp
 804e3e6:	ff b5 3c ff ff ff    	pushl  -0xc4(%ebp)
 804e3ec:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804e3f2:	e8 79 fc ff ff       	call   804e070 <translate_Exp>
 804e3f7:	83 c4 10             	add    $0x10,%esp
 804e3fa:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804e400:	e8 52 ef ff ff       	call   804d357 <newInterCodes>
 804e405:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804e40b:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804e411:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
 804e417:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804e41d:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
 804e423:	89 50 08             	mov    %edx,0x8(%eax)
 804e426:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804e42c:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
 804e432:	89 50 0c             	mov    %edx,0xc(%eax)
 804e435:	8b 85 48 ff ff ff    	mov    -0xb8(%ebp),%eax
 804e43b:	8b 95 d0 fe ff ff    	mov    -0x130(%ebp),%edx
 804e441:	89 50 04             	mov    %edx,0x4(%eax)
 804e444:	83 ec 08             	sub    $0x8,%esp
 804e447:	ff b5 48 ff ff ff    	pushl  -0xb8(%ebp)
 804e44d:	ff b5 44 ff ff ff    	pushl  -0xbc(%ebp)
 804e453:	e8 41 e4 ff ff       	call   804c899 <addTail>
 804e458:	83 c4 10             	add    $0x10,%esp
 804e45b:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804e461:	83 ec 08             	sub    $0x8,%esp
 804e464:	ff b5 44 ff ff ff    	pushl  -0xbc(%ebp)
 804e46a:	ff b5 40 ff ff ff    	pushl  -0xc0(%ebp)
 804e470:	e8 24 e4 ff ff       	call   804c899 <addTail>
 804e475:	83 c4 10             	add    $0x10,%esp
 804e478:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 804e47e:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
 804e484:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e48a:	e9 0f 09 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e48f:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e495:	8b 40 04             	mov    0x4(%eax),%eax
 804e498:	83 f8 32             	cmp    $0x32,%eax
 804e49b:	0f 85 cf 00 00 00    	jne    804e570 <translate_Exp+0x500>
 804e4a1:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804e4a7:	8b 40 04             	mov    0x4(%eax),%eax
 804e4aa:	83 f8 0d             	cmp    $0xd,%eax
 804e4ad:	0f 85 bd 00 00 00    	jne    804e570 <translate_Exp+0x500>
 804e4b3:	e8 0c e5 ff ff       	call   804c9c4 <newTemp>
 804e4b8:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804e4be:	e8 01 e5 ff ff       	call   804c9c4 <newTemp>
 804e4c3:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
 804e4c9:	83 ec 08             	sub    $0x8,%esp
 804e4cc:	ff b5 4c ff ff ff    	pushl  -0xb4(%ebp)
 804e4d2:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804e4d8:	e8 93 fb ff ff       	call   804e070 <translate_Exp>
 804e4dd:	83 c4 10             	add    $0x10,%esp
 804e4e0:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 804e4e6:	83 ec 08             	sub    $0x8,%esp
 804e4e9:	ff b5 50 ff ff ff    	pushl  -0xb0(%ebp)
 804e4ef:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804e4f5:	e8 76 fb ff ff       	call   804e070 <translate_Exp>
 804e4fa:	83 c4 10             	add    $0x10,%esp
 804e4fd:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 804e503:	ff b5 50 ff ff ff    	pushl  -0xb0(%ebp)
 804e509:	ff b5 4c ff ff ff    	pushl  -0xb4(%ebp)
 804e50f:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804e515:	6a 03                	push   $0x3
 804e517:	e8 fb ee ff ff       	call   804d417 <newIC>
 804e51c:	83 c4 10             	add    $0x10,%esp
 804e51f:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
 804e525:	83 ec 08             	sub    $0x8,%esp
 804e528:	ff b5 5c ff ff ff    	pushl  -0xa4(%ebp)
 804e52e:	ff b5 58 ff ff ff    	pushl  -0xa8(%ebp)
 804e534:	e8 60 e3 ff ff       	call   804c899 <addTail>
 804e539:	83 c4 10             	add    $0x10,%esp
 804e53c:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 804e542:	83 ec 08             	sub    $0x8,%esp
 804e545:	ff b5 58 ff ff ff    	pushl  -0xa8(%ebp)
 804e54b:	ff b5 54 ff ff ff    	pushl  -0xac(%ebp)
 804e551:	e8 43 e3 ff ff       	call   804c899 <addTail>
 804e556:	83 c4 10             	add    $0x10,%esp
 804e559:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 804e55f:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804e565:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e56b:	e9 2e 08 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e570:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e576:	8b 40 04             	mov    0x4(%eax),%eax
 804e579:	83 f8 32             	cmp    $0x32,%eax
 804e57c:	0f 85 cf 00 00 00    	jne    804e651 <translate_Exp+0x5e1>
 804e582:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804e588:	8b 40 04             	mov    0x4(%eax),%eax
 804e58b:	83 f8 0e             	cmp    $0xe,%eax
 804e58e:	0f 85 bd 00 00 00    	jne    804e651 <translate_Exp+0x5e1>
 804e594:	e8 2b e4 ff ff       	call   804c9c4 <newTemp>
 804e599:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 804e59f:	e8 20 e4 ff ff       	call   804c9c4 <newTemp>
 804e5a4:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
 804e5aa:	83 ec 08             	sub    $0x8,%esp
 804e5ad:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804e5b3:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804e5b9:	e8 b2 fa ff ff       	call   804e070 <translate_Exp>
 804e5be:	83 c4 10             	add    $0x10,%esp
 804e5c1:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
 804e5c7:	83 ec 08             	sub    $0x8,%esp
 804e5ca:	ff b5 64 ff ff ff    	pushl  -0x9c(%ebp)
 804e5d0:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804e5d6:	e8 95 fa ff ff       	call   804e070 <translate_Exp>
 804e5db:	83 c4 10             	add    $0x10,%esp
 804e5de:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
 804e5e4:	ff b5 64 ff ff ff    	pushl  -0x9c(%ebp)
 804e5ea:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
 804e5f0:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804e5f6:	6a 04                	push   $0x4
 804e5f8:	e8 1a ee ff ff       	call   804d417 <newIC>
 804e5fd:	83 c4 10             	add    $0x10,%esp
 804e600:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
 804e606:	83 ec 08             	sub    $0x8,%esp
 804e609:	ff b5 70 ff ff ff    	pushl  -0x90(%ebp)
 804e60f:	ff b5 6c ff ff ff    	pushl  -0x94(%ebp)
 804e615:	e8 7f e2 ff ff       	call   804c899 <addTail>
 804e61a:	83 c4 10             	add    $0x10,%esp
 804e61d:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
 804e623:	83 ec 08             	sub    $0x8,%esp
 804e626:	ff b5 6c ff ff ff    	pushl  -0x94(%ebp)
 804e62c:	ff b5 68 ff ff ff    	pushl  -0x98(%ebp)
 804e632:	e8 62 e2 ff ff       	call   804c899 <addTail>
 804e637:	83 c4 10             	add    $0x10,%esp
 804e63a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
 804e640:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
 804e646:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e64c:	e9 4d 07 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e651:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e657:	8b 40 04             	mov    0x4(%eax),%eax
 804e65a:	83 f8 32             	cmp    $0x32,%eax
 804e65d:	0f 85 bd 00 00 00    	jne    804e720 <translate_Exp+0x6b0>
 804e663:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804e669:	8b 40 04             	mov    0x4(%eax),%eax
 804e66c:	83 f8 0f             	cmp    $0xf,%eax
 804e66f:	0f 85 ab 00 00 00    	jne    804e720 <translate_Exp+0x6b0>
 804e675:	e8 4a e3 ff ff       	call   804c9c4 <newTemp>
 804e67a:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 804e680:	e8 3f e3 ff ff       	call   804c9c4 <newTemp>
 804e685:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804e68b:	83 ec 08             	sub    $0x8,%esp
 804e68e:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
 804e694:	ff b5 00 ff ff ff    	pushl  -0x100(%ebp)
 804e69a:	e8 d1 f9 ff ff       	call   804e070 <translate_Exp>
 804e69f:	83 c4 10             	add    $0x10,%esp
 804e6a2:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804e6a8:	83 ec 08             	sub    $0x8,%esp
 804e6ab:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
 804e6b1:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
 804e6b7:	e8 b4 f9 ff ff       	call   804e070 <translate_Exp>
 804e6bc:	83 c4 10             	add    $0x10,%esp
 804e6bf:	89 45 80             	mov    %eax,-0x80(%ebp)
 804e6c2:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
 804e6c8:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
 804e6ce:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804e6d4:	6a 05                	push   $0x5
 804e6d6:	e8 3c ed ff ff       	call   804d417 <newIC>
 804e6db:	83 c4 10             	add    $0x10,%esp
 804e6de:	89 45 84             	mov    %eax,-0x7c(%ebp)
 804e6e1:	83 ec 08             	sub    $0x8,%esp
 804e6e4:	ff 75 84             	pushl  -0x7c(%ebp)
 804e6e7:	ff 75 80             	pushl  -0x80(%ebp)
 804e6ea:	e8 aa e1 ff ff       	call   804c899 <addTail>
 804e6ef:	83 c4 10             	add    $0x10,%esp
 804e6f2:	89 45 80             	mov    %eax,-0x80(%ebp)
 804e6f5:	83 ec 08             	sub    $0x8,%esp
 804e6f8:	ff 75 80             	pushl  -0x80(%ebp)
 804e6fb:	ff b5 7c ff ff ff    	pushl  -0x84(%ebp)
 804e701:	e8 93 e1 ff ff       	call   804c899 <addTail>
 804e706:	83 c4 10             	add    $0x10,%esp
 804e709:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 804e70f:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 804e715:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e71b:	e9 7e 06 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e720:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e726:	8b 40 04             	mov    0x4(%eax),%eax
 804e729:	83 f8 14             	cmp    $0x14,%eax
 804e72c:	75 22                	jne    804e750 <translate_Exp+0x6e0>
 804e72e:	83 ec 08             	sub    $0x8,%esp
 804e731:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804e737:	ff b5 04 ff ff ff    	pushl  -0xfc(%ebp)
 804e73d:	e8 2e f9 ff ff       	call   804e070 <translate_Exp>
 804e742:	83 c4 10             	add    $0x10,%esp
 804e745:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e74b:	e9 4e 06 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e750:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e756:	8b 40 04             	mov    0x4(%eax),%eax
 804e759:	83 f8 0d             	cmp    $0xd,%eax
 804e75c:	75 6c                	jne    804e7ca <translate_Exp+0x75a>
 804e75e:	e8 61 e2 ff ff       	call   804c9c4 <newTemp>
 804e763:	89 45 88             	mov    %eax,-0x78(%ebp)
 804e766:	83 ec 08             	sub    $0x8,%esp
 804e769:	ff 75 88             	pushl  -0x78(%ebp)
 804e76c:	ff b5 04 ff ff ff    	pushl  -0xfc(%ebp)
 804e772:	e8 f9 f8 ff ff       	call   804e070 <translate_Exp>
 804e777:	83 c4 10             	add    $0x10,%esp
 804e77a:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804e77d:	83 ec 08             	sub    $0x8,%esp
 804e780:	6a 00                	push   $0x0
 804e782:	6a 01                	push   $0x1
 804e784:	e8 28 ec ff ff       	call   804d3b1 <newOp>
 804e789:	83 c4 10             	add    $0x10,%esp
 804e78c:	89 45 90             	mov    %eax,-0x70(%ebp)
 804e78f:	ff 75 88             	pushl  -0x78(%ebp)
 804e792:	ff 75 90             	pushl  -0x70(%ebp)
 804e795:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804e79b:	6a 03                	push   $0x3
 804e79d:	e8 75 ec ff ff       	call   804d417 <newIC>
 804e7a2:	83 c4 10             	add    $0x10,%esp
 804e7a5:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804e7a8:	83 ec 08             	sub    $0x8,%esp
 804e7ab:	ff 75 94             	pushl  -0x6c(%ebp)
 804e7ae:	ff 75 8c             	pushl  -0x74(%ebp)
 804e7b1:	e8 e3 e0 ff ff       	call   804c899 <addTail>
 804e7b6:	83 c4 10             	add    $0x10,%esp
 804e7b9:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804e7bc:	8b 45 8c             	mov    -0x74(%ebp),%eax
 804e7bf:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e7c5:	e9 d4 05 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e7ca:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e7d0:	8b 40 04             	mov    0x4(%eax),%eax
 804e7d3:	83 f8 13             	cmp    $0x13,%eax
 804e7d6:	74 40                	je     804e818 <translate_Exp+0x7a8>
 804e7d8:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e7de:	8b 40 04             	mov    0x4(%eax),%eax
 804e7e1:	83 f8 32             	cmp    $0x32,%eax
 804e7e4:	0f 85 32 01 00 00    	jne    804e91c <translate_Exp+0x8ac>
 804e7ea:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804e7f0:	8b 40 04             	mov    0x4(%eax),%eax
 804e7f3:	83 f8 10             	cmp    $0x10,%eax
 804e7f6:	74 20                	je     804e818 <translate_Exp+0x7a8>
 804e7f8:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804e7fe:	8b 40 04             	mov    0x4(%eax),%eax
 804e801:	83 f8 11             	cmp    $0x11,%eax
 804e804:	74 12                	je     804e818 <translate_Exp+0x7a8>
 804e806:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804e80c:	8b 40 04             	mov    0x4(%eax),%eax
 804e80f:	83 f8 0b             	cmp    $0xb,%eax
 804e812:	0f 85 04 01 00 00    	jne    804e91c <translate_Exp+0x8ac>
 804e818:	e8 d7 e1 ff ff       	call   804c9f4 <newLabel>
 804e81d:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804e820:	e8 cf e1 ff ff       	call   804c9f4 <newLabel>
 804e825:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804e828:	83 ec 08             	sub    $0x8,%esp
 804e82b:	6a 00                	push   $0x0
 804e82d:	6a 01                	push   $0x1
 804e82f:	e8 7d eb ff ff       	call   804d3b1 <newOp>
 804e834:	83 c4 10             	add    $0x10,%esp
 804e837:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804e83a:	6a 00                	push   $0x0
 804e83c:	ff 75 d8             	pushl  -0x28(%ebp)
 804e83f:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804e845:	6a 01                	push   $0x1
 804e847:	e8 cb eb ff ff       	call   804d417 <newIC>
 804e84c:	83 c4 10             	add    $0x10,%esp
 804e84f:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804e852:	83 ec 04             	sub    $0x4,%esp
 804e855:	ff 75 d4             	pushl  -0x2c(%ebp)
 804e858:	ff 75 d0             	pushl  -0x30(%ebp)
 804e85b:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804e861:	e8 48 0c 00 00       	call   804f4ae <translate_Cond>
 804e866:	83 c4 10             	add    $0x10,%esp
 804e869:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804e86c:	6a 00                	push   $0x0
 804e86e:	ff 75 d0             	pushl  -0x30(%ebp)
 804e871:	6a 00                	push   $0x0
 804e873:	6a 09                	push   $0x9
 804e875:	e8 9d eb ff ff       	call   804d417 <newIC>
 804e87a:	83 c4 10             	add    $0x10,%esp
 804e87d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804e880:	83 ec 08             	sub    $0x8,%esp
 804e883:	6a 01                	push   $0x1
 804e885:	6a 01                	push   $0x1
 804e887:	e8 25 eb ff ff       	call   804d3b1 <newOp>
 804e88c:	83 c4 10             	add    $0x10,%esp
 804e88f:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804e892:	6a 00                	push   $0x0
 804e894:	ff 75 e8             	pushl  -0x18(%ebp)
 804e897:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804e89d:	6a 01                	push   $0x1
 804e89f:	e8 73 eb ff ff       	call   804d417 <newIC>
 804e8a4:	83 c4 10             	add    $0x10,%esp
 804e8a7:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804e8aa:	83 ec 08             	sub    $0x8,%esp
 804e8ad:	ff 75 ec             	pushl  -0x14(%ebp)
 804e8b0:	ff 75 e4             	pushl  -0x1c(%ebp)
 804e8b3:	e8 e1 df ff ff       	call   804c899 <addTail>
 804e8b8:	83 c4 10             	add    $0x10,%esp
 804e8bb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804e8be:	6a 00                	push   $0x0
 804e8c0:	ff 75 d4             	pushl  -0x2c(%ebp)
 804e8c3:	6a 00                	push   $0x0
 804e8c5:	6a 09                	push   $0x9
 804e8c7:	e8 4b eb ff ff       	call   804d417 <newIC>
 804e8cc:	83 c4 10             	add    $0x10,%esp
 804e8cf:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804e8d2:	83 ec 08             	sub    $0x8,%esp
 804e8d5:	ff 75 f0             	pushl  -0x10(%ebp)
 804e8d8:	ff 75 e4             	pushl  -0x1c(%ebp)
 804e8db:	e8 b9 df ff ff       	call   804c899 <addTail>
 804e8e0:	83 c4 10             	add    $0x10,%esp
 804e8e3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804e8e6:	83 ec 08             	sub    $0x8,%esp
 804e8e9:	ff 75 e4             	pushl  -0x1c(%ebp)
 804e8ec:	ff 75 e0             	pushl  -0x20(%ebp)
 804e8ef:	e8 a5 df ff ff       	call   804c899 <addTail>
 804e8f4:	83 c4 10             	add    $0x10,%esp
 804e8f7:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804e8fa:	83 ec 08             	sub    $0x8,%esp
 804e8fd:	ff 75 e0             	pushl  -0x20(%ebp)
 804e900:	ff 75 dc             	pushl  -0x24(%ebp)
 804e903:	e8 91 df ff ff       	call   804c899 <addTail>
 804e908:	83 c4 10             	add    $0x10,%esp
 804e90b:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804e90e:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804e911:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e917:	e9 82 04 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e91c:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e922:	8b 40 04             	mov    0x4(%eax),%eax
 804e925:	83 f8 03             	cmp    $0x3,%eax
 804e928:	0f 85 a3 00 00 00    	jne    804e9d1 <translate_Exp+0x961>
 804e92e:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804e934:	8b 40 10             	mov    0x10(%eax),%eax
 804e937:	83 f8 01             	cmp    $0x1,%eax
 804e93a:	0f 85 91 00 00 00    	jne    804e9d1 <translate_Exp+0x961>
 804e940:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e946:	8b 40 08             	mov    0x8(%eax),%eax
 804e949:	83 ec 0c             	sub    $0xc,%esp
 804e94c:	50                   	push   %eax
 804e94d:	e8 ff 64 00 00       	call   8054e51 <searchTable>
 804e952:	83 c4 10             	add    $0x10,%esp
 804e955:	89 45 98             	mov    %eax,-0x68(%ebp)
 804e958:	83 7d 98 00          	cmpl   $0x0,-0x68(%ebp)
 804e95c:	75 19                	jne    804e977 <translate_Exp+0x907>
 804e95e:	68 fc 66 05 08       	push   $0x80566fc
 804e963:	68 f4 02 00 00       	push   $0x2f4
 804e968:	68 8c 63 05 08       	push   $0x805638c
 804e96d:	68 18 65 05 08       	push   $0x8056518
 804e972:	e8 79 a0 ff ff       	call   80489f0 <__assert_fail@plt>
 804e977:	8b 85 d0 fe ff ff    	mov    -0x130(%ebp),%eax
 804e97d:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804e980:	e8 ff e9 ff ff       	call   804d384 <newOperand>
 804e985:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804e988:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804e98b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804e991:	8b 45 98             	mov    -0x68(%ebp),%eax
 804e994:	8b 50 04             	mov    0x4(%eax),%edx
 804e997:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804e99a:	89 50 04             	mov    %edx,0x4(%eax)
 804e99d:	e8 b5 e9 ff ff       	call   804d357 <newInterCodes>
 804e9a2:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804e9a8:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804e9ae:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804e9b4:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804e9ba:	8b 55 9c             	mov    -0x64(%ebp),%edx
 804e9bd:	89 50 04             	mov    %edx,0x4(%eax)
 804e9c0:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804e9c6:	8b 55 a0             	mov    -0x60(%ebp),%edx
 804e9c9:	89 50 08             	mov    %edx,0x8(%eax)
 804e9cc:	e9 cd 03 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804e9d1:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804e9d7:	8b 40 04             	mov    0x4(%eax),%eax
 804e9da:	83 f8 03             	cmp    $0x3,%eax
 804e9dd:	0f 85 d3 00 00 00    	jne    804eab6 <translate_Exp+0xa46>
 804e9e3:	83 bd 04 ff ff ff 00 	cmpl   $0x0,-0xfc(%ebp)
 804e9ea:	0f 84 c6 00 00 00    	je     804eab6 <translate_Exp+0xa46>
 804e9f0:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804e9f6:	8b 40 10             	mov    0x10(%eax),%eax
 804e9f9:	83 f8 03             	cmp    $0x3,%eax
 804e9fc:	0f 85 b4 00 00 00    	jne    804eab6 <translate_Exp+0xa46>
 804ea02:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ea08:	8b 40 08             	mov    0x8(%eax),%eax
 804ea0b:	83 ec 0c             	sub    $0xc,%esp
 804ea0e:	50                   	push   %eax
 804ea0f:	e8 3d 64 00 00       	call   8054e51 <searchTable>
 804ea14:	83 c4 10             	add    $0x10,%esp
 804ea17:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804ea1a:	83 7d a4 00          	cmpl   $0x0,-0x5c(%ebp)
 804ea1e:	75 19                	jne    804ea39 <translate_Exp+0x9c9>
 804ea20:	68 fc 66 05 08       	push   $0x80566fc
 804ea25:	68 02 03 00 00       	push   $0x302
 804ea2a:	68 8c 63 05 08       	push   $0x805638c
 804ea2f:	68 9b 65 05 08       	push   $0x805659b
 804ea34:	e8 b7 9f ff ff       	call   80489f0 <__assert_fail@plt>
 804ea39:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804ea3c:	8b 40 04             	mov    0x4(%eax),%eax
 804ea3f:	83 ec 08             	sub    $0x8,%esp
 804ea42:	68 9f 65 05 08       	push   $0x805659f
 804ea47:	50                   	push   %eax
 804ea48:	e8 83 9d ff ff       	call   80487d0 <strcmp@plt>
 804ea4d:	83 c4 10             	add    $0x10,%esp
 804ea50:	85 c0                	test   %eax,%eax
 804ea52:	75 25                	jne    804ea79 <translate_Exp+0xa09>
 804ea54:	6a 00                	push   $0x0
 804ea56:	6a 00                	push   $0x0
 804ea58:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ea5e:	6a 14                	push   $0x14
 804ea60:	e8 b2 e9 ff ff       	call   804d417 <newIC>
 804ea65:	83 c4 10             	add    $0x10,%esp
 804ea68:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804ea6b:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804ea6e:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804ea74:	e9 25 03 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804ea79:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804ea7c:	8b 40 04             	mov    0x4(%eax),%eax
 804ea7f:	83 ec 08             	sub    $0x8,%esp
 804ea82:	50                   	push   %eax
 804ea83:	6a 00                	push   $0x0
 804ea85:	e8 27 e9 ff ff       	call   804d3b1 <newOp>
 804ea8a:	83 c4 10             	add    $0x10,%esp
 804ea8d:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804ea90:	6a 00                	push   $0x0
 804ea92:	ff 75 ac             	pushl  -0x54(%ebp)
 804ea95:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ea9b:	6a 0c                	push   $0xc
 804ea9d:	e8 75 e9 ff ff       	call   804d417 <newIC>
 804eaa2:	83 c4 10             	add    $0x10,%esp
 804eaa5:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804eaa8:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804eaab:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804eab1:	e9 e8 02 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804eab6:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804eabc:	8b 40 04             	mov    0x4(%eax),%eax
 804eabf:	83 f8 03             	cmp    $0x3,%eax
 804eac2:	0f 85 b1 01 00 00    	jne    804ec79 <translate_Exp+0xc09>
 804eac8:	83 bd 04 ff ff ff 00 	cmpl   $0x0,-0xfc(%ebp)
 804eacf:	0f 84 a4 01 00 00    	je     804ec79 <translate_Exp+0xc09>
 804ead5:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804eadb:	8b 40 10             	mov    0x10(%eax),%eax
 804eade:	83 f8 04             	cmp    $0x4,%eax
 804eae1:	0f 85 92 01 00 00    	jne    804ec79 <translate_Exp+0xc09>
 804eae7:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804eaed:	8b 40 08             	mov    0x8(%eax),%eax
 804eaf0:	83 ec 0c             	sub    $0xc,%esp
 804eaf3:	50                   	push   %eax
 804eaf4:	e8 58 63 00 00       	call   8054e51 <searchTable>
 804eaf9:	83 c4 10             	add    $0x10,%esp
 804eafc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804eaff:	83 7d b4 00          	cmpl   $0x0,-0x4c(%ebp)
 804eb03:	75 19                	jne    804eb1e <translate_Exp+0xaae>
 804eb05:	68 fc 66 05 08       	push   $0x80566fc
 804eb0a:	68 11 03 00 00       	push   $0x311
 804eb0f:	68 8c 63 05 08       	push   $0x805638c
 804eb14:	68 9b 65 05 08       	push   $0x805659b
 804eb19:	e8 d2 9e ff ff       	call   80489f0 <__assert_fail@plt>
 804eb1e:	c7 85 e4 fe ff ff 00 	movl   $0x0,-0x11c(%ebp)
 804eb25:	00 00 00 
 804eb28:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
 804eb2e:	8b 40 1c             	mov    0x1c(%eax),%eax
 804eb31:	83 ec 08             	sub    $0x8,%esp
 804eb34:	8d 95 e4 fe ff ff    	lea    -0x11c(%ebp),%edx
 804eb3a:	52                   	push   %edx
 804eb3b:	50                   	push   %eax
 804eb3c:	e8 c3 08 00 00       	call   804f404 <translate_Args>
 804eb41:	83 c4 10             	add    $0x10,%esp
 804eb44:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
 804eb4a:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804eb4d:	8b 40 04             	mov    0x4(%eax),%eax
 804eb50:	83 ec 08             	sub    $0x8,%esp
 804eb53:	68 a4 65 05 08       	push   $0x80565a4
 804eb58:	50                   	push   %eax
 804eb59:	e8 72 9c ff ff       	call   80487d0 <strcmp@plt>
 804eb5e:	83 c4 10             	add    $0x10,%esp
 804eb61:	85 c0                	test   %eax,%eax
 804eb63:	75 39                	jne    804eb9e <translate_Exp+0xb2e>
 804eb65:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
 804eb6b:	8b 00                	mov    (%eax),%eax
 804eb6d:	6a 00                	push   $0x0
 804eb6f:	50                   	push   %eax
 804eb70:	6a 00                	push   $0x0
 804eb72:	6a 15                	push   $0x15
 804eb74:	e8 9e e8 ff ff       	call   804d417 <newIC>
 804eb79:	83 c4 10             	add    $0x10,%esp
 804eb7c:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804eb7f:	83 ec 08             	sub    $0x8,%esp
 804eb82:	ff 75 b8             	pushl  -0x48(%ebp)
 804eb85:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
 804eb8b:	e8 09 dd ff ff       	call   804c899 <addTail>
 804eb90:	83 c4 10             	add    $0x10,%esp
 804eb93:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
 804eb99:	e9 ca 00 00 00       	jmp    804ec68 <translate_Exp+0xbf8>
 804eb9e:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
 804eba4:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%ebp)
 804ebaa:	c7 85 fc fe ff ff 00 	movl   $0x0,-0x104(%ebp)
 804ebb1:	00 00 00 
 804ebb4:	eb 43                	jmp    804ebf9 <translate_Exp+0xb89>
 804ebb6:	8b 85 f8 fe ff ff    	mov    -0x108(%ebp),%eax
 804ebbc:	8b 00                	mov    (%eax),%eax
 804ebbe:	6a 00                	push   $0x0
 804ebc0:	50                   	push   %eax
 804ebc1:	6a 00                	push   $0x0
 804ebc3:	6a 0d                	push   $0xd
 804ebc5:	e8 4d e8 ff ff       	call   804d417 <newIC>
 804ebca:	83 c4 10             	add    $0x10,%esp
 804ebcd:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804ebd0:	83 ec 08             	sub    $0x8,%esp
 804ebd3:	ff 75 bc             	pushl  -0x44(%ebp)
 804ebd6:	ff b5 fc fe ff ff    	pushl  -0x104(%ebp)
 804ebdc:	e8 b8 dc ff ff       	call   804c899 <addTail>
 804ebe1:	83 c4 10             	add    $0x10,%esp
 804ebe4:	89 85 fc fe ff ff    	mov    %eax,-0x104(%ebp)
 804ebea:	8b 85 f8 fe ff ff    	mov    -0x108(%ebp),%eax
 804ebf0:	8b 40 04             	mov    0x4(%eax),%eax
 804ebf3:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%ebp)
 804ebf9:	83 bd f8 fe ff ff 00 	cmpl   $0x0,-0x108(%ebp)
 804ec00:	75 b4                	jne    804ebb6 <translate_Exp+0xb46>
 804ec02:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804ec05:	8b 40 04             	mov    0x4(%eax),%eax
 804ec08:	83 ec 08             	sub    $0x8,%esp
 804ec0b:	50                   	push   %eax
 804ec0c:	6a 00                	push   $0x0
 804ec0e:	e8 9e e7 ff ff       	call   804d3b1 <newOp>
 804ec13:	83 c4 10             	add    $0x10,%esp
 804ec16:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804ec19:	6a 00                	push   $0x0
 804ec1b:	ff 75 c0             	pushl  -0x40(%ebp)
 804ec1e:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ec24:	6a 0c                	push   $0xc
 804ec26:	e8 ec e7 ff ff       	call   804d417 <newIC>
 804ec2b:	83 c4 10             	add    $0x10,%esp
 804ec2e:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804ec31:	83 ec 08             	sub    $0x8,%esp
 804ec34:	ff 75 c4             	pushl  -0x3c(%ebp)
 804ec37:	ff b5 fc fe ff ff    	pushl  -0x104(%ebp)
 804ec3d:	e8 57 dc ff ff       	call   804c899 <addTail>
 804ec42:	83 c4 10             	add    $0x10,%esp
 804ec45:	89 85 fc fe ff ff    	mov    %eax,-0x104(%ebp)
 804ec4b:	83 ec 08             	sub    $0x8,%esp
 804ec4e:	ff b5 fc fe ff ff    	pushl  -0x104(%ebp)
 804ec54:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
 804ec5a:	e8 3a dc ff ff       	call   804c899 <addTail>
 804ec5f:	83 c4 10             	add    $0x10,%esp
 804ec62:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
 804ec68:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
 804ec6e:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804ec74:	e9 25 01 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804ec79:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ec7f:	8b 40 04             	mov    0x4(%eax),%eax
 804ec82:	83 f8 01             	cmp    $0x1,%eax
 804ec85:	75 5d                	jne    804ece4 <translate_Exp+0xc74>
 804ec87:	8b 85 d0 fe ff ff    	mov    -0x130(%ebp),%eax
 804ec8d:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804ec90:	e8 ef e6 ff ff       	call   804d384 <newOperand>
 804ec95:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804ec98:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804ec9b:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804eca1:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804eca7:	8b 50 08             	mov    0x8(%eax),%edx
 804ecaa:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804ecad:	89 50 04             	mov    %edx,0x4(%eax)
 804ecb0:	e8 a2 e6 ff ff       	call   804d357 <newInterCodes>
 804ecb5:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804ecbb:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804ecc1:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804ecc7:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804eccd:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804ecd0:	89 50 08             	mov    %edx,0x8(%eax)
 804ecd3:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804ecd9:	8b 55 c8             	mov    -0x38(%ebp),%edx
 804ecdc:	89 50 04             	mov    %edx,0x4(%eax)
 804ecdf:	e9 ba 00 00 00       	jmp    804ed9e <translate_Exp+0xd2e>
 804ece4:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ecea:	8b 40 04             	mov    0x4(%eax),%eax
 804eced:	83 f8 02             	cmp    $0x2,%eax
 804ecf0:	75 19                	jne    804ed0b <translate_Exp+0xc9b>
 804ecf2:	68 fc 66 05 08       	push   $0x80566fc
 804ecf7:	68 32 03 00 00       	push   $0x332
 804ecfc:	68 8c 63 05 08       	push   $0x805638c
 804ed01:	68 91 63 05 08       	push   $0x8056391
 804ed06:	e8 e5 9c ff ff       	call   80489f0 <__assert_fail@plt>
 804ed0b:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ed11:	8b 40 04             	mov    0x4(%eax),%eax
 804ed14:	83 f8 32             	cmp    $0x32,%eax
 804ed17:	75 2f                	jne    804ed48 <translate_Exp+0xcd8>
 804ed19:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804ed1f:	8b 40 04             	mov    0x4(%eax),%eax
 804ed22:	83 f8 12             	cmp    $0x12,%eax
 804ed25:	75 21                	jne    804ed48 <translate_Exp+0xcd8>
 804ed27:	83 ec 04             	sub    $0x4,%esp
 804ed2a:	6a 00                	push   $0x0
 804ed2c:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ed32:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804ed38:	e8 7a 00 00 00       	call   804edb7 <translate_Structure>
 804ed3d:	83 c4 10             	add    $0x10,%esp
 804ed40:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804ed46:	eb 56                	jmp    804ed9e <translate_Exp+0xd2e>
 804ed48:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804ed4e:	8b 40 04             	mov    0x4(%eax),%eax
 804ed51:	83 f8 32             	cmp    $0x32,%eax
 804ed54:	75 2f                	jne    804ed85 <translate_Exp+0xd15>
 804ed56:	8b 85 04 ff ff ff    	mov    -0xfc(%ebp),%eax
 804ed5c:	8b 40 04             	mov    0x4(%eax),%eax
 804ed5f:	83 f8 16             	cmp    $0x16,%eax
 804ed62:	75 21                	jne    804ed85 <translate_Exp+0xd15>
 804ed64:	83 ec 04             	sub    $0x4,%esp
 804ed67:	6a 00                	push   $0x0
 804ed69:	ff b5 d0 fe ff ff    	pushl  -0x130(%ebp)
 804ed6f:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
 804ed75:	e8 61 03 00 00       	call   804f0db <translate_Array>
 804ed7a:	83 c4 10             	add    $0x10,%esp
 804ed7d:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%ebp)
 804ed83:	eb 19                	jmp    804ed9e <translate_Exp+0xd2e>
 804ed85:	68 fc 66 05 08       	push   $0x80566fc
 804ed8a:	68 3b 03 00 00       	push   $0x33b
 804ed8f:	68 8c 63 05 08       	push   $0x805638c
 804ed94:	68 91 63 05 08       	push   $0x8056391
 804ed99:	e8 52 9c ff ff       	call   80489f0 <__assert_fail@plt>
 804ed9e:	8b 85 e8 fe ff ff    	mov    -0x118(%ebp),%eax
 804eda4:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804eda7:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804edae:	74 05                	je     804edb5 <translate_Exp+0xd45>
 804edb0:	e8 7b 9a ff ff       	call   8048830 <__stack_chk_fail@plt>
 804edb5:	c9                   	leave  
 804edb6:	c3                   	ret    

0804edb7 <translate_Structure>:
 804edb7:	55                   	push   %ebp
 804edb8:	89 e5                	mov    %esp,%ebp
 804edba:	83 ec 68             	sub    $0x68,%esp
 804edbd:	8b 45 08             	mov    0x8(%ebp),%eax
 804edc0:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804edc3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804edc6:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804edc9:	8b 45 10             	mov    0x10(%ebp),%eax
 804edcc:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804edcf:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804edd5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804edd8:	31 c0                	xor    %eax,%eax
 804edda:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804eddd:	8b 40 14             	mov    0x14(%eax),%eax
 804ede0:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804ede3:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804ede6:	8b 40 18             	mov    0x18(%eax),%eax
 804ede9:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804edec:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804edef:	8b 40 1c             	mov    0x1c(%eax),%eax
 804edf2:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804edf5:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
 804edfc:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 804ee03:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 804ee0a:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 804ee11:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804ee14:	8b 40 14             	mov    0x14(%eax),%eax
 804ee17:	8b 40 04             	mov    0x4(%eax),%eax
 804ee1a:	83 f8 03             	cmp    $0x3,%eax
 804ee1d:	0f 85 92 00 00 00    	jne    804eeb5 <translate_Structure+0xfe>
 804ee23:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804ee26:	8b 40 14             	mov    0x14(%eax),%eax
 804ee29:	8b 40 08             	mov    0x8(%eax),%eax
 804ee2c:	83 ec 0c             	sub    $0xc,%esp
 804ee2f:	50                   	push   %eax
 804ee30:	e8 1c 60 00 00       	call   8054e51 <searchTable>
 804ee35:	83 c4 10             	add    $0x10,%esp
 804ee38:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804ee3b:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 804ee3f:	74 16                	je     804ee57 <translate_Structure+0xa0>
 804ee41:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804ee44:	8b 00                	mov    (%eax),%eax
 804ee46:	85 c0                	test   %eax,%eax
 804ee48:	75 0d                	jne    804ee57 <translate_Structure+0xa0>
 804ee4a:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804ee4d:	8b 40 0c             	mov    0xc(%eax),%eax
 804ee50:	8b 00                	mov    (%eax),%eax
 804ee52:	83 f8 02             	cmp    $0x2,%eax
 804ee55:	74 19                	je     804ee70 <translate_Structure+0xb9>
 804ee57:	68 0c 67 05 08       	push   $0x805670c
 804ee5c:	68 4f 03 00 00       	push   $0x34f
 804ee61:	68 8c 63 05 08       	push   $0x805638c
 804ee66:	68 ac 65 05 08       	push   $0x80565ac
 804ee6b:	e8 80 9b ff ff       	call   80489f0 <__assert_fail@plt>
 804ee70:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804ee73:	8b 40 0c             	mov    0xc(%eax),%eax
 804ee76:	8b 40 04             	mov    0x4(%eax),%eax
 804ee79:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804ee7c:	e8 43 db ff ff       	call   804c9c4 <newTemp>
 804ee81:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804ee84:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804ee87:	8b 40 04             	mov    0x4(%eax),%eax
 804ee8a:	83 ec 08             	sub    $0x8,%esp
 804ee8d:	50                   	push   %eax
 804ee8e:	6a 00                	push   $0x0
 804ee90:	e8 1c e5 ff ff       	call   804d3b1 <newOp>
 804ee95:	83 c4 10             	add    $0x10,%esp
 804ee98:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804ee9b:	6a 00                	push   $0x0
 804ee9d:	ff 75 dc             	pushl  -0x24(%ebp)
 804eea0:	ff 75 c4             	pushl  -0x3c(%ebp)
 804eea3:	6a 01                	push   $0x1
 804eea5:	e8 6d e5 ff ff       	call   804d417 <newIC>
 804eeaa:	83 c4 10             	add    $0x10,%esp
 804eead:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804eeb0:	e9 d2 00 00 00       	jmp    804ef87 <translate_Structure+0x1d0>
 804eeb5:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804eeb8:	8b 40 18             	mov    0x18(%eax),%eax
 804eebb:	8b 40 04             	mov    0x4(%eax),%eax
 804eebe:	83 f8 12             	cmp    $0x12,%eax
 804eec1:	75 5c                	jne    804ef1f <translate_Structure+0x168>
 804eec3:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804eeca:	e8 f5 da ff ff       	call   804c9c4 <newTemp>
 804eecf:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804eed2:	83 ec 04             	sub    $0x4,%esp
 804eed5:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 804eed8:	50                   	push   %eax
 804eed9:	ff 75 c4             	pushl  -0x3c(%ebp)
 804eedc:	ff 75 cc             	pushl  -0x34(%ebp)
 804eedf:	e8 d3 fe ff ff       	call   804edb7 <translate_Structure>
 804eee4:	83 c4 10             	add    $0x10,%esp
 804eee7:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804eeea:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804eeed:	85 c0                	test   %eax,%eax
 804eeef:	74 0a                	je     804eefb <translate_Structure+0x144>
 804eef1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804eef4:	8b 00                	mov    (%eax),%eax
 804eef6:	83 f8 02             	cmp    $0x2,%eax
 804eef9:	74 19                	je     804ef14 <translate_Structure+0x15d>
 804eefb:	68 0c 67 05 08       	push   $0x805670c
 804ef00:	68 5c 03 00 00       	push   $0x35c
 804ef05:	68 8c 63 05 08       	push   $0x805638c
 804ef0a:	68 e8 65 05 08       	push   $0x80565e8
 804ef0f:	e8 dc 9a ff ff       	call   80489f0 <__assert_fail@plt>
 804ef14:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804ef17:	8b 40 04             	mov    0x4(%eax),%eax
 804ef1a:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804ef1d:	eb 68                	jmp    804ef87 <translate_Structure+0x1d0>
 804ef1f:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804ef22:	8b 40 18             	mov    0x18(%eax),%eax
 804ef25:	8b 40 04             	mov    0x4(%eax),%eax
 804ef28:	83 f8 16             	cmp    $0x16,%eax
 804ef2b:	75 5a                	jne    804ef87 <translate_Structure+0x1d0>
 804ef2d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804ef34:	e8 8b da ff ff       	call   804c9c4 <newTemp>
 804ef39:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804ef3c:	83 ec 04             	sub    $0x4,%esp
 804ef3f:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 804ef42:	50                   	push   %eax
 804ef43:	ff 75 c4             	pushl  -0x3c(%ebp)
 804ef46:	ff 75 cc             	pushl  -0x34(%ebp)
 804ef49:	e8 8d 01 00 00       	call   804f0db <translate_Array>
 804ef4e:	83 c4 10             	add    $0x10,%esp
 804ef51:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804ef54:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804ef57:	85 c0                	test   %eax,%eax
 804ef59:	74 0a                	je     804ef65 <translate_Structure+0x1ae>
 804ef5b:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804ef5e:	8b 00                	mov    (%eax),%eax
 804ef60:	83 f8 02             	cmp    $0x2,%eax
 804ef63:	74 19                	je     804ef7e <translate_Structure+0x1c7>
 804ef65:	68 0c 67 05 08       	push   $0x805670c
 804ef6a:	68 65 03 00 00       	push   $0x365
 804ef6f:	68 8c 63 05 08       	push   $0x805638c
 804ef74:	68 e8 65 05 08       	push   $0x80565e8
 804ef79:	e8 72 9a ff ff       	call   80489f0 <__assert_fail@plt>
 804ef7e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804ef81:	8b 40 04             	mov    0x4(%eax),%eax
 804ef84:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804ef87:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804ef8a:	8b 40 04             	mov    0x4(%eax),%eax
 804ef8d:	83 f8 03             	cmp    $0x3,%eax
 804ef90:	74 19                	je     804efab <translate_Structure+0x1f4>
 804ef92:	68 0c 67 05 08       	push   $0x805670c
 804ef97:	68 69 03 00 00       	push   $0x369
 804ef9c:	68 8c 63 05 08       	push   $0x805638c
 804efa1:	68 08 66 05 08       	push   $0x8056608
 804efa6:	e8 45 9a ff ff       	call   80489f0 <__assert_fail@plt>
 804efab:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804efae:	8b 40 08             	mov    0x8(%eax),%eax
 804efb1:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804efb4:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 804efbb:	eb 1e                	jmp    804efdb <translate_Structure+0x224>
 804efbd:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804efc0:	8b 40 04             	mov    0x4(%eax),%eax
 804efc3:	83 ec 0c             	sub    $0xc,%esp
 804efc6:	50                   	push   %eax
 804efc7:	e8 09 61 00 00       	call   80550d5 <typeSize>
 804efcc:	83 c4 10             	add    $0x10,%esp
 804efcf:	01 45 c8             	add    %eax,-0x38(%ebp)
 804efd2:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804efd5:	8b 40 08             	mov    0x8(%eax),%eax
 804efd8:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804efdb:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
 804efdf:	74 18                	je     804eff9 <translate_Structure+0x242>
 804efe1:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804efe4:	8b 00                	mov    (%eax),%eax
 804efe6:	83 ec 08             	sub    $0x8,%esp
 804efe9:	ff 75 e0             	pushl  -0x20(%ebp)
 804efec:	50                   	push   %eax
 804efed:	e8 20 67 00 00       	call   8055712 <safe_strcmp>
 804eff2:	83 c4 10             	add    $0x10,%esp
 804eff5:	85 c0                	test   %eax,%eax
 804eff7:	75 c4                	jne    804efbd <translate_Structure+0x206>
 804eff9:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
 804effd:	75 19                	jne    804f018 <translate_Structure+0x261>
 804efff:	68 0c 67 05 08       	push   $0x805670c
 804f004:	68 71 03 00 00       	push   $0x371
 804f009:	68 8c 63 05 08       	push   $0x805638c
 804f00e:	68 1d 66 05 08       	push   $0x805661d
 804f013:	e8 d8 99 ff ff       	call   80489f0 <__assert_fail@plt>
 804f018:	83 7d 9c 00          	cmpl   $0x0,-0x64(%ebp)
 804f01c:	74 0b                	je     804f029 <translate_Structure+0x272>
 804f01e:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804f021:	8b 50 04             	mov    0x4(%eax),%edx
 804f024:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804f027:	89 10                	mov    %edx,(%eax)
 804f029:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f02c:	83 ec 08             	sub    $0x8,%esp
 804f02f:	50                   	push   %eax
 804f030:	6a 01                	push   $0x1
 804f032:	e8 7a e3 ff ff       	call   804d3b1 <newOp>
 804f037:	83 c4 10             	add    $0x10,%esp
 804f03a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f03d:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804f040:	8b 40 04             	mov    0x4(%eax),%eax
 804f043:	8b 00                	mov    (%eax),%eax
 804f045:	85 c0                	test   %eax,%eax
 804f047:	75 4c                	jne    804f095 <translate_Structure+0x2de>
 804f049:	e8 76 d9 ff ff       	call   804c9c4 <newTemp>
 804f04e:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f051:	ff 75 e4             	pushl  -0x1c(%ebp)
 804f054:	ff 75 c4             	pushl  -0x3c(%ebp)
 804f057:	ff 75 e8             	pushl  -0x18(%ebp)
 804f05a:	6a 02                	push   $0x2
 804f05c:	e8 b6 e3 ff ff       	call   804d417 <newIC>
 804f061:	83 c4 10             	add    $0x10,%esp
 804f064:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804f067:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804f06a:	c7 00 06 00 00 00    	movl   $0x6,(%eax)
 804f070:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804f073:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804f076:	89 50 04             	mov    %edx,0x4(%eax)
 804f079:	83 ec 08             	sub    $0x8,%esp
 804f07c:	ff 75 ec             	pushl  -0x14(%ebp)
 804f07f:	ff 75 bc             	pushl  -0x44(%ebp)
 804f082:	e8 12 d8 ff ff       	call   804c899 <addTail>
 804f087:	83 c4 10             	add    $0x10,%esp
 804f08a:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804f08d:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f090:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804f093:	eb 30                	jmp    804f0c5 <translate_Structure+0x30e>
 804f095:	ff 75 e4             	pushl  -0x1c(%ebp)
 804f098:	ff 75 c4             	pushl  -0x3c(%ebp)
 804f09b:	ff 75 a0             	pushl  -0x60(%ebp)
 804f09e:	6a 02                	push   $0x2
 804f0a0:	e8 72 e3 ff ff       	call   804d417 <newIC>
 804f0a5:	83 c4 10             	add    $0x10,%esp
 804f0a8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f0ab:	83 ec 08             	sub    $0x8,%esp
 804f0ae:	ff 75 f0             	pushl  -0x10(%ebp)
 804f0b1:	ff 75 bc             	pushl  -0x44(%ebp)
 804f0b4:	e8 e0 d7 ff ff       	call   804c899 <addTail>
 804f0b9:	83 c4 10             	add    $0x10,%esp
 804f0bc:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804f0bf:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f0c2:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804f0c5:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804f0c8:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804f0cb:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804f0d2:	74 05                	je     804f0d9 <translate_Structure+0x322>
 804f0d4:	e8 57 97 ff ff       	call   8048830 <__stack_chk_fail@plt>
 804f0d9:	c9                   	leave  
 804f0da:	c3                   	ret    

0804f0db <translate_Array>:
 804f0db:	55                   	push   %ebp
 804f0dc:	89 e5                	mov    %esp,%ebp
 804f0de:	83 ec 68             	sub    $0x68,%esp
 804f0e1:	8b 45 08             	mov    0x8(%ebp),%eax
 804f0e4:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804f0e7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f0ea:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804f0ed:	8b 45 10             	mov    0x10(%ebp),%eax
 804f0f0:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804f0f3:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804f0f9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804f0fc:	31 c0                	xor    %eax,%eax
 804f0fe:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f101:	8b 40 14             	mov    0x14(%eax),%eax
 804f104:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804f107:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f10a:	8b 40 18             	mov    0x18(%eax),%eax
 804f10d:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804f110:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f113:	8b 40 1c             	mov    0x1c(%eax),%eax
 804f116:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804f119:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
 804f120:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804f127:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804f12e:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
 804f135:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f138:	8b 40 14             	mov    0x14(%eax),%eax
 804f13b:	8b 40 04             	mov    0x4(%eax),%eax
 804f13e:	83 f8 03             	cmp    $0x3,%eax
 804f141:	0f 85 8f 00 00 00    	jne    804f1d6 <translate_Array+0xfb>
 804f147:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f14a:	8b 40 14             	mov    0x14(%eax),%eax
 804f14d:	8b 40 08             	mov    0x8(%eax),%eax
 804f150:	83 ec 0c             	sub    $0xc,%esp
 804f153:	50                   	push   %eax
 804f154:	e8 f8 5c 00 00       	call   8054e51 <searchTable>
 804f159:	83 c4 10             	add    $0x10,%esp
 804f15c:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804f15f:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
 804f163:	74 16                	je     804f17b <translate_Array+0xa0>
 804f165:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f168:	8b 00                	mov    (%eax),%eax
 804f16a:	85 c0                	test   %eax,%eax
 804f16c:	75 0d                	jne    804f17b <translate_Array+0xa0>
 804f16e:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f171:	8b 40 0c             	mov    0xc(%eax),%eax
 804f174:	8b 00                	mov    (%eax),%eax
 804f176:	83 f8 01             	cmp    $0x1,%eax
 804f179:	74 19                	je     804f194 <translate_Array+0xb9>
 804f17b:	68 20 67 05 08       	push   $0x8056720
 804f180:	68 9c 03 00 00       	push   $0x39c
 804f185:	68 8c 63 05 08       	push   $0x805638c
 804f18a:	68 24 66 05 08       	push   $0x8056624
 804f18f:	e8 5c 98 ff ff       	call   80489f0 <__assert_fail@plt>
 804f194:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f197:	8b 40 0c             	mov    0xc(%eax),%eax
 804f19a:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804f19d:	e8 22 d8 ff ff       	call   804c9c4 <newTemp>
 804f1a2:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804f1a5:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f1a8:	8b 40 04             	mov    0x4(%eax),%eax
 804f1ab:	83 ec 08             	sub    $0x8,%esp
 804f1ae:	50                   	push   %eax
 804f1af:	6a 00                	push   $0x0
 804f1b1:	e8 fb e1 ff ff       	call   804d3b1 <newOp>
 804f1b6:	83 c4 10             	add    $0x10,%esp
 804f1b9:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804f1bc:	6a 00                	push   $0x0
 804f1be:	ff 75 cc             	pushl  -0x34(%ebp)
 804f1c1:	ff 75 b4             	pushl  -0x4c(%ebp)
 804f1c4:	6a 01                	push   $0x1
 804f1c6:	e8 4c e2 ff ff       	call   804d417 <newIC>
 804f1cb:	83 c4 10             	add    $0x10,%esp
 804f1ce:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804f1d1:	e9 cc 00 00 00       	jmp    804f2a2 <translate_Array+0x1c7>
 804f1d6:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f1d9:	8b 40 18             	mov    0x18(%eax),%eax
 804f1dc:	8b 40 04             	mov    0x4(%eax),%eax
 804f1df:	83 f8 12             	cmp    $0x12,%eax
 804f1e2:	75 59                	jne    804f23d <translate_Array+0x162>
 804f1e4:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
 804f1eb:	e8 d4 d7 ff ff       	call   804c9c4 <newTemp>
 804f1f0:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804f1f3:	83 ec 04             	sub    $0x4,%esp
 804f1f6:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804f1f9:	50                   	push   %eax
 804f1fa:	ff 75 b4             	pushl  -0x4c(%ebp)
 804f1fd:	ff 75 bc             	pushl  -0x44(%ebp)
 804f200:	e8 b2 fb ff ff       	call   804edb7 <translate_Structure>
 804f205:	83 c4 10             	add    $0x10,%esp
 804f208:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804f20b:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804f20e:	85 c0                	test   %eax,%eax
 804f210:	74 0a                	je     804f21c <translate_Array+0x141>
 804f212:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804f215:	8b 00                	mov    (%eax),%eax
 804f217:	83 f8 01             	cmp    $0x1,%eax
 804f21a:	74 19                	je     804f235 <translate_Array+0x15a>
 804f21c:	68 20 67 05 08       	push   $0x8056720
 804f221:	68 a9 03 00 00       	push   $0x3a9
 804f226:	68 8c 63 05 08       	push   $0x805638c
 804f22b:	68 5b 66 05 08       	push   $0x805665b
 804f230:	e8 bb 97 ff ff       	call   80489f0 <__assert_fail@plt>
 804f235:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804f238:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804f23b:	eb 65                	jmp    804f2a2 <translate_Array+0x1c7>
 804f23d:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f240:	8b 40 18             	mov    0x18(%eax),%eax
 804f243:	8b 40 04             	mov    0x4(%eax),%eax
 804f246:	83 f8 16             	cmp    $0x16,%eax
 804f249:	75 57                	jne    804f2a2 <translate_Array+0x1c7>
 804f24b:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
 804f252:	e8 6d d7 ff ff       	call   804c9c4 <newTemp>
 804f257:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804f25a:	83 ec 04             	sub    $0x4,%esp
 804f25d:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804f260:	50                   	push   %eax
 804f261:	ff 75 b4             	pushl  -0x4c(%ebp)
 804f264:	ff 75 bc             	pushl  -0x44(%ebp)
 804f267:	e8 6f fe ff ff       	call   804f0db <translate_Array>
 804f26c:	83 c4 10             	add    $0x10,%esp
 804f26f:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804f272:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804f275:	85 c0                	test   %eax,%eax
 804f277:	74 0a                	je     804f283 <translate_Array+0x1a8>
 804f279:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804f27c:	8b 00                	mov    (%eax),%eax
 804f27e:	83 f8 01             	cmp    $0x1,%eax
 804f281:	74 19                	je     804f29c <translate_Array+0x1c1>
 804f283:	68 20 67 05 08       	push   $0x8056720
 804f288:	68 b6 03 00 00       	push   $0x3b6
 804f28d:	68 8c 63 05 08       	push   $0x805638c
 804f292:	68 5b 66 05 08       	push   $0x805665b
 804f297:	e8 54 97 ff ff       	call   80489f0 <__assert_fail@plt>
 804f29c:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804f29f:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804f2a2:	83 7d 9c 00          	cmpl   $0x0,-0x64(%ebp)
 804f2a6:	74 0b                	je     804f2b3 <translate_Array+0x1d8>
 804f2a8:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804f2ab:	8b 50 04             	mov    0x4(%eax),%edx
 804f2ae:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804f2b1:	89 10                	mov    %edx,(%eax)
 804f2b3:	e8 0c d7 ff ff       	call   804c9c4 <newTemp>
 804f2b8:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804f2bb:	83 ec 08             	sub    $0x8,%esp
 804f2be:	ff 75 d0             	pushl  -0x30(%ebp)
 804f2c1:	ff 75 c4             	pushl  -0x3c(%ebp)
 804f2c4:	e8 a7 ed ff ff       	call   804e070 <translate_Exp>
 804f2c9:	83 c4 10             	add    $0x10,%esp
 804f2cc:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804f2cf:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804f2d2:	8b 40 04             	mov    0x4(%eax),%eax
 804f2d5:	83 ec 0c             	sub    $0xc,%esp
 804f2d8:	50                   	push   %eax
 804f2d9:	e8 f7 5d 00 00       	call   80550d5 <typeSize>
 804f2de:	83 c4 10             	add    $0x10,%esp
 804f2e1:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804f2e4:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804f2e7:	83 ec 08             	sub    $0x8,%esp
 804f2ea:	50                   	push   %eax
 804f2eb:	6a 01                	push   $0x1
 804f2ed:	e8 bf e0 ff ff       	call   804d3b1 <newOp>
 804f2f2:	83 c4 10             	add    $0x10,%esp
 804f2f5:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804f2f8:	e8 c7 d6 ff ff       	call   804c9c4 <newTemp>
 804f2fd:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f300:	ff 75 d0             	pushl  -0x30(%ebp)
 804f303:	ff 75 dc             	pushl  -0x24(%ebp)
 804f306:	ff 75 e0             	pushl  -0x20(%ebp)
 804f309:	6a 04                	push   $0x4
 804f30b:	e8 07 e1 ff ff       	call   804d417 <newIC>
 804f310:	83 c4 10             	add    $0x10,%esp
 804f313:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f316:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804f319:	8b 40 04             	mov    0x4(%eax),%eax
 804f31c:	8b 00                	mov    (%eax),%eax
 804f31e:	85 c0                	test   %eax,%eax
 804f320:	75 74                	jne    804f396 <translate_Array+0x2bb>
 804f322:	e8 9d d6 ff ff       	call   804c9c4 <newTemp>
 804f327:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f32a:	ff 75 e0             	pushl  -0x20(%ebp)
 804f32d:	ff 75 b4             	pushl  -0x4c(%ebp)
 804f330:	ff 75 e8             	pushl  -0x18(%ebp)
 804f333:	6a 02                	push   $0x2
 804f335:	e8 dd e0 ff ff       	call   804d417 <newIC>
 804f33a:	83 c4 10             	add    $0x10,%esp
 804f33d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804f340:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804f343:	c7 00 06 00 00 00    	movl   $0x6,(%eax)
 804f349:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804f34c:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804f34f:	89 50 04             	mov    %edx,0x4(%eax)
 804f352:	83 ec 08             	sub    $0x8,%esp
 804f355:	ff 75 ec             	pushl  -0x14(%ebp)
 804f358:	ff 75 e4             	pushl  -0x1c(%ebp)
 804f35b:	e8 39 d5 ff ff       	call   804c899 <addTail>
 804f360:	83 c4 10             	add    $0x10,%esp
 804f363:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f366:	83 ec 08             	sub    $0x8,%esp
 804f369:	ff 75 e4             	pushl  -0x1c(%ebp)
 804f36c:	ff 75 d4             	pushl  -0x2c(%ebp)
 804f36f:	e8 25 d5 ff ff       	call   804c899 <addTail>
 804f374:	83 c4 10             	add    $0x10,%esp
 804f377:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804f37a:	83 ec 08             	sub    $0x8,%esp
 804f37d:	ff 75 d4             	pushl  -0x2c(%ebp)
 804f380:	ff 75 b0             	pushl  -0x50(%ebp)
 804f383:	e8 11 d5 ff ff       	call   804c899 <addTail>
 804f388:	83 c4 10             	add    $0x10,%esp
 804f38b:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804f38e:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804f391:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804f394:	eb 58                	jmp    804f3ee <translate_Array+0x313>
 804f396:	ff 75 e0             	pushl  -0x20(%ebp)
 804f399:	ff 75 b4             	pushl  -0x4c(%ebp)
 804f39c:	ff 75 a0             	pushl  -0x60(%ebp)
 804f39f:	6a 02                	push   $0x2
 804f3a1:	e8 71 e0 ff ff       	call   804d417 <newIC>
 804f3a6:	83 c4 10             	add    $0x10,%esp
 804f3a9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f3ac:	83 ec 08             	sub    $0x8,%esp
 804f3af:	ff 75 f0             	pushl  -0x10(%ebp)
 804f3b2:	ff 75 e4             	pushl  -0x1c(%ebp)
 804f3b5:	e8 df d4 ff ff       	call   804c899 <addTail>
 804f3ba:	83 c4 10             	add    $0x10,%esp
 804f3bd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f3c0:	83 ec 08             	sub    $0x8,%esp
 804f3c3:	ff 75 e4             	pushl  -0x1c(%ebp)
 804f3c6:	ff 75 d4             	pushl  -0x2c(%ebp)
 804f3c9:	e8 cb d4 ff ff       	call   804c899 <addTail>
 804f3ce:	83 c4 10             	add    $0x10,%esp
 804f3d1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804f3d4:	83 ec 08             	sub    $0x8,%esp
 804f3d7:	ff 75 d4             	pushl  -0x2c(%ebp)
 804f3da:	ff 75 b0             	pushl  -0x50(%ebp)
 804f3dd:	e8 b7 d4 ff ff       	call   804c899 <addTail>
 804f3e2:	83 c4 10             	add    $0x10,%esp
 804f3e5:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804f3e8:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804f3eb:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804f3ee:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804f3f1:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804f3f4:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 804f3fb:	74 05                	je     804f402 <translate_Array+0x327>
 804f3fd:	e8 2e 94 ff ff       	call   8048830 <__stack_chk_fail@plt>
 804f402:	c9                   	leave  
 804f403:	c3                   	ret    

0804f404 <translate_Args>:
 804f404:	55                   	push   %ebp
 804f405:	89 e5                	mov    %esp,%ebp
 804f407:	83 ec 18             	sub    $0x18,%esp
 804f40a:	e8 b5 d5 ff ff       	call   804c9c4 <newTemp>
 804f40f:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804f412:	8b 45 08             	mov    0x8(%ebp),%eax
 804f415:	8b 40 14             	mov    0x14(%eax),%eax
 804f418:	83 ec 08             	sub    $0x8,%esp
 804f41b:	ff 75 ec             	pushl  -0x14(%ebp)
 804f41e:	50                   	push   %eax
 804f41f:	e8 4c ec ff ff       	call   804e070 <translate_Exp>
 804f424:	83 c4 10             	add    $0x10,%esp
 804f427:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f42a:	83 ec 0c             	sub    $0xc,%esp
 804f42d:	6a 08                	push   $0x8
 804f42f:	e8 6c 94 ff ff       	call   80488a0 <malloc@plt>
 804f434:	83 c4 10             	add    $0x10,%esp
 804f437:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f43a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804f43d:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804f440:	89 10                	mov    %edx,(%eax)
 804f442:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804f445:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804f44c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f44f:	8b 00                	mov    (%eax),%eax
 804f451:	85 c0                	test   %eax,%eax
 804f453:	75 0a                	jne    804f45f <translate_Args+0x5b>
 804f455:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f458:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804f45b:	89 10                	mov    %edx,(%eax)
 804f45d:	eb 13                	jmp    804f472 <translate_Args+0x6e>
 804f45f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f462:	8b 10                	mov    (%eax),%edx
 804f464:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804f467:	89 50 04             	mov    %edx,0x4(%eax)
 804f46a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f46d:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804f470:	89 10                	mov    %edx,(%eax)
 804f472:	8b 45 08             	mov    0x8(%ebp),%eax
 804f475:	8b 40 10             	mov    0x10(%eax),%eax
 804f478:	83 f8 03             	cmp    $0x3,%eax
 804f47b:	75 2c                	jne    804f4a9 <translate_Args+0xa5>
 804f47d:	8b 45 08             	mov    0x8(%ebp),%eax
 804f480:	8b 40 1c             	mov    0x1c(%eax),%eax
 804f483:	83 ec 08             	sub    $0x8,%esp
 804f486:	ff 75 0c             	pushl  0xc(%ebp)
 804f489:	50                   	push   %eax
 804f48a:	e8 75 ff ff ff       	call   804f404 <translate_Args>
 804f48f:	83 c4 10             	add    $0x10,%esp
 804f492:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804f495:	83 ec 08             	sub    $0x8,%esp
 804f498:	ff 75 f4             	pushl  -0xc(%ebp)
 804f49b:	ff 75 e8             	pushl  -0x18(%ebp)
 804f49e:	e8 f6 d3 ff ff       	call   804c899 <addTail>
 804f4a3:	83 c4 10             	add    $0x10,%esp
 804f4a6:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f4a9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f4ac:	c9                   	leave  
 804f4ad:	c3                   	ret    

0804f4ae <translate_Cond>:
 804f4ae:	55                   	push   %ebp
 804f4af:	89 e5                	mov    %esp,%ebp
 804f4b1:	83 ec 68             	sub    $0x68,%esp
 804f4b4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804f4b8:	74 0b                	je     804f4c5 <translate_Cond+0x17>
 804f4ba:	8b 45 08             	mov    0x8(%ebp),%eax
 804f4bd:	8b 40 04             	mov    0x4(%eax),%eax
 804f4c0:	83 f8 32             	cmp    $0x32,%eax
 804f4c3:	74 19                	je     804f4de <translate_Cond+0x30>
 804f4c5:	68 30 67 05 08       	push   $0x8056730
 804f4ca:	68 fc 03 00 00       	push   $0x3fc
 804f4cf:	68 8c 63 05 08       	push   $0x805638c
 804f4d4:	68 77 66 05 08       	push   $0x8056677
 804f4d9:	e8 12 95 ff ff       	call   80489f0 <__assert_fail@plt>
 804f4de:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
 804f4e5:	8b 45 08             	mov    0x8(%ebp),%eax
 804f4e8:	8b 40 14             	mov    0x14(%eax),%eax
 804f4eb:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804f4ee:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f4f1:	8b 40 04             	mov    0x4(%eax),%eax
 804f4f4:	83 f8 32             	cmp    $0x32,%eax
 804f4f7:	0f 85 d9 00 00 00    	jne    804f5d6 <translate_Cond+0x128>
 804f4fd:	8b 45 08             	mov    0x8(%ebp),%eax
 804f500:	8b 40 18             	mov    0x18(%eax),%eax
 804f503:	8b 40 04             	mov    0x4(%eax),%eax
 804f506:	83 f8 0b             	cmp    $0xb,%eax
 804f509:	0f 85 c7 00 00 00    	jne    804f5d6 <translate_Cond+0x128>
 804f50f:	e8 b0 d4 ff ff       	call   804c9c4 <newTemp>
 804f514:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804f517:	e8 a8 d4 ff ff       	call   804c9c4 <newTemp>
 804f51c:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804f51f:	8b 45 08             	mov    0x8(%ebp),%eax
 804f522:	8b 40 14             	mov    0x14(%eax),%eax
 804f525:	83 ec 08             	sub    $0x8,%esp
 804f528:	ff 75 a8             	pushl  -0x58(%ebp)
 804f52b:	50                   	push   %eax
 804f52c:	e8 3f eb ff ff       	call   804e070 <translate_Exp>
 804f531:	83 c4 10             	add    $0x10,%esp
 804f534:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804f537:	8b 45 08             	mov    0x8(%ebp),%eax
 804f53a:	8b 40 1c             	mov    0x1c(%eax),%eax
 804f53d:	83 ec 08             	sub    $0x8,%esp
 804f540:	ff 75 ac             	pushl  -0x54(%ebp)
 804f543:	50                   	push   %eax
 804f544:	e8 27 eb ff ff       	call   804e070 <translate_Exp>
 804f549:	83 c4 10             	add    $0x10,%esp
 804f54c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804f54f:	8b 45 08             	mov    0x8(%ebp),%eax
 804f552:	8b 40 18             	mov    0x18(%eax),%eax
 804f555:	83 ec 0c             	sub    $0xc,%esp
 804f558:	50                   	push   %eax
 804f559:	e8 09 df ff ff       	call   804d467 <getRelop>
 804f55e:	83 c4 10             	add    $0x10,%esp
 804f561:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804f564:	ff 75 ac             	pushl  -0x54(%ebp)
 804f567:	ff 75 a8             	pushl  -0x58(%ebp)
 804f56a:	ff 75 0c             	pushl  0xc(%ebp)
 804f56d:	ff 75 b8             	pushl  -0x48(%ebp)
 804f570:	e8 a2 de ff ff       	call   804d417 <newIC>
 804f575:	83 c4 10             	add    $0x10,%esp
 804f578:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804f57b:	6a 00                	push   $0x0
 804f57d:	ff 75 10             	pushl  0x10(%ebp)
 804f580:	6a 00                	push   $0x0
 804f582:	6a 0b                	push   $0xb
 804f584:	e8 8e de ff ff       	call   804d417 <newIC>
 804f589:	83 c4 10             	add    $0x10,%esp
 804f58c:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804f58f:	83 ec 08             	sub    $0x8,%esp
 804f592:	ff 75 c0             	pushl  -0x40(%ebp)
 804f595:	ff 75 bc             	pushl  -0x44(%ebp)
 804f598:	e8 fc d2 ff ff       	call   804c899 <addTail>
 804f59d:	83 c4 10             	add    $0x10,%esp
 804f5a0:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804f5a3:	83 ec 08             	sub    $0x8,%esp
 804f5a6:	ff 75 bc             	pushl  -0x44(%ebp)
 804f5a9:	ff 75 b4             	pushl  -0x4c(%ebp)
 804f5ac:	e8 e8 d2 ff ff       	call   804c899 <addTail>
 804f5b1:	83 c4 10             	add    $0x10,%esp
 804f5b4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804f5b7:	83 ec 08             	sub    $0x8,%esp
 804f5ba:	ff 75 b4             	pushl  -0x4c(%ebp)
 804f5bd:	ff 75 b0             	pushl  -0x50(%ebp)
 804f5c0:	e8 d4 d2 ff ff       	call   804c899 <addTail>
 804f5c5:	83 c4 10             	add    $0x10,%esp
 804f5c8:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804f5cb:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804f5ce:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804f5d1:	e9 f9 01 00 00       	jmp    804f7cf <translate_Cond+0x321>
 804f5d6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f5d9:	8b 40 04             	mov    0x4(%eax),%eax
 804f5dc:	83 f8 32             	cmp    $0x32,%eax
 804f5df:	0f 85 97 00 00 00    	jne    804f67c <translate_Cond+0x1ce>
 804f5e5:	8b 45 08             	mov    0x8(%ebp),%eax
 804f5e8:	8b 40 18             	mov    0x18(%eax),%eax
 804f5eb:	8b 40 04             	mov    0x4(%eax),%eax
 804f5ee:	83 f8 10             	cmp    $0x10,%eax
 804f5f1:	0f 85 85 00 00 00    	jne    804f67c <translate_Cond+0x1ce>
 804f5f7:	e8 f8 d3 ff ff       	call   804c9f4 <newLabel>
 804f5fc:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804f5ff:	8b 45 08             	mov    0x8(%ebp),%eax
 804f602:	8b 40 14             	mov    0x14(%eax),%eax
 804f605:	83 ec 04             	sub    $0x4,%esp
 804f608:	ff 75 10             	pushl  0x10(%ebp)
 804f60b:	ff 75 c4             	pushl  -0x3c(%ebp)
 804f60e:	50                   	push   %eax
 804f60f:	e8 9a fe ff ff       	call   804f4ae <translate_Cond>
 804f614:	83 c4 10             	add    $0x10,%esp
 804f617:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804f61a:	8b 45 08             	mov    0x8(%ebp),%eax
 804f61d:	8b 40 1c             	mov    0x1c(%eax),%eax
 804f620:	83 ec 04             	sub    $0x4,%esp
 804f623:	ff 75 10             	pushl  0x10(%ebp)
 804f626:	ff 75 0c             	pushl  0xc(%ebp)
 804f629:	50                   	push   %eax
 804f62a:	e8 7f fe ff ff       	call   804f4ae <translate_Cond>
 804f62f:	83 c4 10             	add    $0x10,%esp
 804f632:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804f635:	6a 00                	push   $0x0
 804f637:	ff 75 c4             	pushl  -0x3c(%ebp)
 804f63a:	6a 00                	push   $0x0
 804f63c:	6a 09                	push   $0x9
 804f63e:	e8 d4 dd ff ff       	call   804d417 <newIC>
 804f643:	83 c4 10             	add    $0x10,%esp
 804f646:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804f649:	83 ec 08             	sub    $0x8,%esp
 804f64c:	ff 75 cc             	pushl  -0x34(%ebp)
 804f64f:	ff 75 d0             	pushl  -0x30(%ebp)
 804f652:	e8 42 d2 ff ff       	call   804c899 <addTail>
 804f657:	83 c4 10             	add    $0x10,%esp
 804f65a:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804f65d:	83 ec 08             	sub    $0x8,%esp
 804f660:	ff 75 d0             	pushl  -0x30(%ebp)
 804f663:	ff 75 c8             	pushl  -0x38(%ebp)
 804f666:	e8 2e d2 ff ff       	call   804c899 <addTail>
 804f66b:	83 c4 10             	add    $0x10,%esp
 804f66e:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804f671:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f674:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804f677:	e9 53 01 00 00       	jmp    804f7cf <translate_Cond+0x321>
 804f67c:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f67f:	8b 40 04             	mov    0x4(%eax),%eax
 804f682:	83 f8 32             	cmp    $0x32,%eax
 804f685:	0f 85 97 00 00 00    	jne    804f722 <translate_Cond+0x274>
 804f68b:	8b 45 08             	mov    0x8(%ebp),%eax
 804f68e:	8b 40 18             	mov    0x18(%eax),%eax
 804f691:	8b 40 04             	mov    0x4(%eax),%eax
 804f694:	83 f8 11             	cmp    $0x11,%eax
 804f697:	0f 85 85 00 00 00    	jne    804f722 <translate_Cond+0x274>
 804f69d:	e8 52 d3 ff ff       	call   804c9f4 <newLabel>
 804f6a2:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804f6a5:	8b 45 08             	mov    0x8(%ebp),%eax
 804f6a8:	8b 40 14             	mov    0x14(%eax),%eax
 804f6ab:	83 ec 04             	sub    $0x4,%esp
 804f6ae:	ff 75 d4             	pushl  -0x2c(%ebp)
 804f6b1:	ff 75 0c             	pushl  0xc(%ebp)
 804f6b4:	50                   	push   %eax
 804f6b5:	e8 f4 fd ff ff       	call   804f4ae <translate_Cond>
 804f6ba:	83 c4 10             	add    $0x10,%esp
 804f6bd:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804f6c0:	8b 45 08             	mov    0x8(%ebp),%eax
 804f6c3:	8b 40 1c             	mov    0x1c(%eax),%eax
 804f6c6:	83 ec 04             	sub    $0x4,%esp
 804f6c9:	ff 75 10             	pushl  0x10(%ebp)
 804f6cc:	ff 75 0c             	pushl  0xc(%ebp)
 804f6cf:	50                   	push   %eax
 804f6d0:	e8 d9 fd ff ff       	call   804f4ae <translate_Cond>
 804f6d5:	83 c4 10             	add    $0x10,%esp
 804f6d8:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804f6db:	6a 00                	push   $0x0
 804f6dd:	ff 75 d4             	pushl  -0x2c(%ebp)
 804f6e0:	6a 00                	push   $0x0
 804f6e2:	6a 09                	push   $0x9
 804f6e4:	e8 2e dd ff ff       	call   804d417 <newIC>
 804f6e9:	83 c4 10             	add    $0x10,%esp
 804f6ec:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f6ef:	83 ec 08             	sub    $0x8,%esp
 804f6f2:	ff 75 dc             	pushl  -0x24(%ebp)
 804f6f5:	ff 75 e0             	pushl  -0x20(%ebp)
 804f6f8:	e8 9c d1 ff ff       	call   804c899 <addTail>
 804f6fd:	83 c4 10             	add    $0x10,%esp
 804f700:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f703:	83 ec 08             	sub    $0x8,%esp
 804f706:	ff 75 e0             	pushl  -0x20(%ebp)
 804f709:	ff 75 d8             	pushl  -0x28(%ebp)
 804f70c:	e8 88 d1 ff ff       	call   804c899 <addTail>
 804f711:	83 c4 10             	add    $0x10,%esp
 804f714:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804f717:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804f71a:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804f71d:	e9 ad 00 00 00       	jmp    804f7cf <translate_Cond+0x321>
 804f722:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f725:	8b 40 04             	mov    0x4(%eax),%eax
 804f728:	83 f8 13             	cmp    $0x13,%eax
 804f72b:	75 1c                	jne    804f749 <translate_Cond+0x29b>
 804f72d:	83 ec 04             	sub    $0x4,%esp
 804f730:	ff 75 0c             	pushl  0xc(%ebp)
 804f733:	ff 75 10             	pushl  0x10(%ebp)
 804f736:	ff 75 08             	pushl  0x8(%ebp)
 804f739:	e8 70 fd ff ff       	call   804f4ae <translate_Cond>
 804f73e:	83 c4 10             	add    $0x10,%esp
 804f741:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804f744:	e9 86 00 00 00       	jmp    804f7cf <translate_Cond+0x321>
 804f749:	e8 76 d2 ff ff       	call   804c9c4 <newTemp>
 804f74e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f751:	83 ec 08             	sub    $0x8,%esp
 804f754:	ff 75 e4             	pushl  -0x1c(%ebp)
 804f757:	ff 75 08             	pushl  0x8(%ebp)
 804f75a:	e8 11 e9 ff ff       	call   804e070 <translate_Exp>
 804f75f:	83 c4 10             	add    $0x10,%esp
 804f762:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f765:	83 ec 08             	sub    $0x8,%esp
 804f768:	6a 00                	push   $0x0
 804f76a:	6a 01                	push   $0x1
 804f76c:	e8 40 dc ff ff       	call   804d3b1 <newOp>
 804f771:	83 c4 10             	add    $0x10,%esp
 804f774:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804f777:	ff 75 ec             	pushl  -0x14(%ebp)
 804f77a:	ff 75 e4             	pushl  -0x1c(%ebp)
 804f77d:	ff 75 0c             	pushl  0xc(%ebp)
 804f780:	6a 13                	push   $0x13
 804f782:	e8 90 dc ff ff       	call   804d417 <newIC>
 804f787:	83 c4 10             	add    $0x10,%esp
 804f78a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f78d:	6a 00                	push   $0x0
 804f78f:	ff 75 10             	pushl  0x10(%ebp)
 804f792:	6a 00                	push   $0x0
 804f794:	6a 0b                	push   $0xb
 804f796:	e8 7c dc ff ff       	call   804d417 <newIC>
 804f79b:	83 c4 10             	add    $0x10,%esp
 804f79e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804f7a1:	83 ec 08             	sub    $0x8,%esp
 804f7a4:	ff 75 f4             	pushl  -0xc(%ebp)
 804f7a7:	ff 75 f0             	pushl  -0x10(%ebp)
 804f7aa:	e8 ea d0 ff ff       	call   804c899 <addTail>
 804f7af:	83 c4 10             	add    $0x10,%esp
 804f7b2:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f7b5:	83 ec 08             	sub    $0x8,%esp
 804f7b8:	ff 75 f0             	pushl  -0x10(%ebp)
 804f7bb:	ff 75 e8             	pushl  -0x18(%ebp)
 804f7be:	e8 d6 d0 ff ff       	call   804c899 <addTail>
 804f7c3:	83 c4 10             	add    $0x10,%esp
 804f7c6:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f7c9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f7cc:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804f7cf:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804f7d2:	c9                   	leave  
 804f7d3:	c3                   	ret    

0804f7d4 <yydestruct>:
 804f7d4:	55                   	push   %ebp
 804f7d5:	89 e5                	mov    %esp,%ebp
 804f7d7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804f7db:	75 07                	jne    804f7e4 <yydestruct+0x10>
 804f7dd:	c7 45 08 a5 6d 05 08 	movl   $0x8056da5,0x8(%ebp)
 804f7e4:	90                   	nop
 804f7e5:	5d                   	pop    %ebp
 804f7e6:	c3                   	ret    

0804f7e7 <yyparse>:
 804f7e7:	55                   	push   %ebp
 804f7e8:	89 e5                	mov    %esp,%ebp
 804f7ea:	81 ec d8 11 00 00    	sub    $0x11d8,%esp
 804f7f0:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804f7f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804f7f9:	31 c0                	xor    %eax,%eax
 804f7fb:	c7 85 64 ee ff ff 00 	movl   $0x0,-0x119c(%ebp)
 804f802:	00 00 00 
 804f805:	c7 85 68 ee ff ff 00 	movl   $0x0,-0x1198(%ebp)
 804f80c:	00 00 00 
 804f80f:	8d 85 c4 ee ff ff    	lea    -0x113c(%ebp),%eax
 804f815:	89 85 40 ee ff ff    	mov    %eax,-0x11c0(%ebp)
 804f81b:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804f821:	89 85 44 ee ff ff    	mov    %eax,-0x11bc(%ebp)
 804f827:	8d 85 54 f0 ff ff    	lea    -0xfac(%ebp),%eax
 804f82d:	89 85 48 ee ff ff    	mov    %eax,-0x11b8(%ebp)
 804f833:	8b 85 48 ee ff ff    	mov    -0x11b8(%ebp),%eax
 804f839:	89 85 4c ee ff ff    	mov    %eax,-0x11b4(%ebp)
 804f83f:	8d 85 74 f3 ff ff    	lea    -0xc8c(%ebp),%eax
 804f845:	89 85 50 ee ff ff    	mov    %eax,-0x11b0(%ebp)
 804f84b:	8b 85 50 ee ff ff    	mov    -0x11b0(%ebp),%eax
 804f851:	89 85 54 ee ff ff    	mov    %eax,-0x11ac(%ebp)
 804f857:	c7 85 58 ee ff ff c8 	movl   $0xc8,-0x11a8(%ebp)
 804f85e:	00 00 00 
 804f861:	c7 85 38 ee ff ff 00 	movl   $0x0,-0x11c8(%ebp)
 804f868:	00 00 00 
 804f86b:	c7 85 3c ee ff ff 00 	movl   $0x0,-0x11c4(%ebp)
 804f872:	00 00 00 
 804f875:	c7 05 80 b7 05 08 00 	movl   $0x0,0x805b780
 804f87c:	00 00 00 
 804f87f:	c7 05 88 b7 05 08 fe 	movl   $0xfffffffe,0x805b788
 804f886:	ff ff ff 
 804f889:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804f88f:	8b 15 b0 b0 05 08    	mov    0x805b0b0,%edx
 804f895:	89 10                	mov    %edx,(%eax)
 804f897:	8b 15 b4 b0 05 08    	mov    0x805b0b4,%edx
 804f89d:	89 50 04             	mov    %edx,0x4(%eax)
 804f8a0:	8b 15 b8 b0 05 08    	mov    0x805b0b8,%edx
 804f8a6:	89 50 08             	mov    %edx,0x8(%eax)
 804f8a9:	8b 15 bc b0 05 08    	mov    0x805b0bc,%edx
 804f8af:	89 50 0c             	mov    %edx,0xc(%eax)
 804f8b2:	eb 07                	jmp    804f8bb <yyparse+0xd4>
 804f8b4:	83 85 44 ee ff ff 02 	addl   $0x2,-0x11bc(%ebp)
 804f8bb:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804f8c1:	89 c2                	mov    %eax,%edx
 804f8c3:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 804f8c9:	66 89 10             	mov    %dx,(%eax)
 804f8cc:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804f8d2:	05 ff ff ff 7f       	add    $0x7fffffff,%eax
 804f8d7:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804f8da:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804f8e0:	01 d0                	add    %edx,%eax
 804f8e2:	3b 85 44 ee ff ff    	cmp    -0x11bc(%ebp),%eax
 804f8e8:	0f 87 17 02 00 00    	ja     804fb05 <yyparse+0x31e>
 804f8ee:	8b 95 44 ee ff ff    	mov    -0x11bc(%ebp),%edx
 804f8f4:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804f8fa:	29 c2                	sub    %eax,%edx
 804f8fc:	89 d0                	mov    %edx,%eax
 804f8fe:	d1 f8                	sar    %eax
 804f900:	83 c0 01             	add    $0x1,%eax
 804f903:	89 85 6c ee ff ff    	mov    %eax,-0x1194(%ebp)
 804f909:	81 bd 58 ee ff ff 0f 	cmpl   $0x270f,-0x11a8(%ebp)
 804f910:	27 00 00 
 804f913:	0f 87 28 25 00 00    	ja     8051e41 <yyparse+0x265a>
 804f919:	d1 a5 58 ee ff ff    	shll   -0x11a8(%ebp)
 804f91f:	81 bd 58 ee ff ff 10 	cmpl   $0x2710,-0x11a8(%ebp)
 804f926:	27 00 00 
 804f929:	76 0a                	jbe    804f935 <yyparse+0x14e>
 804f92b:	c7 85 58 ee ff ff 10 	movl   $0x2710,-0x11a8(%ebp)
 804f932:	27 00 00 
 804f935:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804f93b:	89 85 70 ee ff ff    	mov    %eax,-0x1190(%ebp)
 804f941:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804f947:	6b c0 16             	imul   $0x16,%eax,%eax
 804f94a:	83 c0 1e             	add    $0x1e,%eax
 804f94d:	83 ec 0c             	sub    $0xc,%esp
 804f950:	50                   	push   %eax
 804f951:	e8 4a 8f ff ff       	call   80488a0 <malloc@plt>
 804f956:	83 c4 10             	add    $0x10,%esp
 804f959:	89 85 74 ee ff ff    	mov    %eax,-0x118c(%ebp)
 804f95f:	83 bd 74 ee ff ff 00 	cmpl   $0x0,-0x118c(%ebp)
 804f966:	0f 84 d8 24 00 00    	je     8051e44 <yyparse+0x265d>
 804f96c:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804f972:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 804f975:	8b 95 74 ee ff ff    	mov    -0x118c(%ebp),%edx
 804f97b:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804f981:	83 ec 04             	sub    $0x4,%esp
 804f984:	51                   	push   %ecx
 804f985:	50                   	push   %eax
 804f986:	52                   	push   %edx
 804f987:	e8 74 8e ff ff       	call   8048800 <memcpy@plt>
 804f98c:	83 c4 10             	add    $0x10,%esp
 804f98f:	8b 85 74 ee ff ff    	mov    -0x118c(%ebp),%eax
 804f995:	89 85 40 ee ff ff    	mov    %eax,-0x11c0(%ebp)
 804f99b:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804f9a1:	01 c0                	add    %eax,%eax
 804f9a3:	83 c0 0f             	add    $0xf,%eax
 804f9a6:	89 85 78 ee ff ff    	mov    %eax,-0x1188(%ebp)
 804f9ac:	8b 85 78 ee ff ff    	mov    -0x1188(%ebp),%eax
 804f9b2:	c1 e8 04             	shr    $0x4,%eax
 804f9b5:	c1 e0 04             	shl    $0x4,%eax
 804f9b8:	01 85 74 ee ff ff    	add    %eax,-0x118c(%ebp)
 804f9be:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804f9c4:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804f9cb:	8b 95 74 ee ff ff    	mov    -0x118c(%ebp),%edx
 804f9d1:	8b 85 48 ee ff ff    	mov    -0x11b8(%ebp),%eax
 804f9d7:	83 ec 04             	sub    $0x4,%esp
 804f9da:	51                   	push   %ecx
 804f9db:	50                   	push   %eax
 804f9dc:	52                   	push   %edx
 804f9dd:	e8 1e 8e ff ff       	call   8048800 <memcpy@plt>
 804f9e2:	83 c4 10             	add    $0x10,%esp
 804f9e5:	8b 85 74 ee ff ff    	mov    -0x118c(%ebp),%eax
 804f9eb:	89 85 48 ee ff ff    	mov    %eax,-0x11b8(%ebp)
 804f9f1:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804f9f7:	c1 e0 02             	shl    $0x2,%eax
 804f9fa:	83 c0 0f             	add    $0xf,%eax
 804f9fd:	89 85 7c ee ff ff    	mov    %eax,-0x1184(%ebp)
 804fa03:	8b 85 7c ee ff ff    	mov    -0x1184(%ebp),%eax
 804fa09:	c1 e8 04             	shr    $0x4,%eax
 804fa0c:	c1 e0 04             	shl    $0x4,%eax
 804fa0f:	01 85 74 ee ff ff    	add    %eax,-0x118c(%ebp)
 804fa15:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804fa1b:	c1 e0 04             	shl    $0x4,%eax
 804fa1e:	89 c1                	mov    %eax,%ecx
 804fa20:	8b 95 74 ee ff ff    	mov    -0x118c(%ebp),%edx
 804fa26:	8b 85 50 ee ff ff    	mov    -0x11b0(%ebp),%eax
 804fa2c:	83 ec 04             	sub    $0x4,%esp
 804fa2f:	51                   	push   %ecx
 804fa30:	50                   	push   %eax
 804fa31:	52                   	push   %edx
 804fa32:	e8 c9 8d ff ff       	call   8048800 <memcpy@plt>
 804fa37:	83 c4 10             	add    $0x10,%esp
 804fa3a:	8b 85 74 ee ff ff    	mov    -0x118c(%ebp),%eax
 804fa40:	89 85 50 ee ff ff    	mov    %eax,-0x11b0(%ebp)
 804fa46:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804fa4c:	c1 e0 04             	shl    $0x4,%eax
 804fa4f:	83 c0 0f             	add    $0xf,%eax
 804fa52:	89 85 80 ee ff ff    	mov    %eax,-0x1180(%ebp)
 804fa58:	8b 85 80 ee ff ff    	mov    -0x1180(%ebp),%eax
 804fa5e:	c1 e8 04             	shr    $0x4,%eax
 804fa61:	c1 e0 04             	shl    $0x4,%eax
 804fa64:	01 85 74 ee ff ff    	add    %eax,-0x118c(%ebp)
 804fa6a:	8d 85 c4 ee ff ff    	lea    -0x113c(%ebp),%eax
 804fa70:	39 85 70 ee ff ff    	cmp    %eax,-0x1190(%ebp)
 804fa76:	74 11                	je     804fa89 <yyparse+0x2a2>
 804fa78:	83 ec 0c             	sub    $0xc,%esp
 804fa7b:	ff b5 70 ee ff ff    	pushl  -0x1190(%ebp)
 804fa81:	e8 6a 8d ff ff       	call   80487f0 <free@plt>
 804fa86:	83 c4 10             	add    $0x10,%esp
 804fa89:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804fa8f:	05 ff ff ff 7f       	add    $0x7fffffff,%eax
 804fa94:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804fa97:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804fa9d:	01 d0                	add    %edx,%eax
 804fa9f:	89 85 44 ee ff ff    	mov    %eax,-0x11bc(%ebp)
 804faa5:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804faab:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
 804fab0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804fab7:	8b 85 48 ee ff ff    	mov    -0x11b8(%ebp),%eax
 804fabd:	01 d0                	add    %edx,%eax
 804fabf:	89 85 4c ee ff ff    	mov    %eax,-0x11b4(%ebp)
 804fac5:	8b 85 6c ee ff ff    	mov    -0x1194(%ebp),%eax
 804facb:	05 ff ff ff 0f       	add    $0xfffffff,%eax
 804fad0:	c1 e0 04             	shl    $0x4,%eax
 804fad3:	89 c2                	mov    %eax,%edx
 804fad5:	8b 85 50 ee ff ff    	mov    -0x11b0(%ebp),%eax
 804fadb:	01 d0                	add    %edx,%eax
 804fadd:	89 85 54 ee ff ff    	mov    %eax,-0x11ac(%ebp)
 804fae3:	8b 85 58 ee ff ff    	mov    -0x11a8(%ebp),%eax
 804fae9:	05 ff ff ff 7f       	add    $0x7fffffff,%eax
 804faee:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804faf1:	8b 85 40 ee ff ff    	mov    -0x11c0(%ebp),%eax
 804faf7:	01 d0                	add    %edx,%eax
 804faf9:	3b 85 44 ee ff ff    	cmp    -0x11bc(%ebp),%eax
 804faff:	0f 86 2c 23 00 00    	jbe    8051e31 <yyparse+0x264a>
 804fb05:	83 bd 38 ee ff ff 0d 	cmpl   $0xd,-0x11c8(%ebp)
 804fb0c:	0f 84 12 23 00 00    	je     8051e24 <yyparse+0x263d>
 804fb12:	90                   	nop
 804fb13:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804fb19:	0f b7 84 00 60 68 05 	movzwl 0x8056860(%eax,%eax,1),%eax
 804fb20:	08 
 804fb21:	98                   	cwtl   
 804fb22:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804fb28:	83 bd 5c ee ff ff c5 	cmpl   $0xffffffc5,-0x11a4(%ebp)
 804fb2f:	0f 84 3d 01 00 00    	je     804fc72 <yyparse+0x48b>
 804fb35:	a1 88 b7 05 08       	mov    0x805b788,%eax
 804fb3a:	83 f8 fe             	cmp    $0xfffffffe,%eax
 804fb3d:	75 0a                	jne    804fb49 <yyparse+0x362>
 804fb3f:	e8 27 24 00 00       	call   8051f6b <yylex>
 804fb44:	a3 88 b7 05 08       	mov    %eax,0x805b788
 804fb49:	a1 88 b7 05 08       	mov    0x805b788,%eax
 804fb4e:	85 c0                	test   %eax,%eax
 804fb50:	7f 17                	jg     804fb69 <yyparse+0x382>
 804fb52:	c7 85 64 ee ff ff 00 	movl   $0x0,-0x119c(%ebp)
 804fb59:	00 00 00 
 804fb5c:	8b 85 64 ee ff ff    	mov    -0x119c(%ebp),%eax
 804fb62:	a3 88 b7 05 08       	mov    %eax,0x805b788
 804fb67:	eb 28                	jmp    804fb91 <yyparse+0x3aa>
 804fb69:	a1 88 b7 05 08       	mov    0x805b788,%eax
 804fb6e:	3d 1e 01 00 00       	cmp    $0x11e,%eax
 804fb73:	77 11                	ja     804fb86 <yyparse+0x39f>
 804fb75:	a1 88 b7 05 08       	mov    0x805b788,%eax
 804fb7a:	0f b6 80 40 67 05 08 	movzbl 0x8056740(%eax),%eax
 804fb81:	0f b6 c0             	movzbl %al,%eax
 804fb84:	eb 05                	jmp    804fb8b <yyparse+0x3a4>
 804fb86:	b8 02 00 00 00       	mov    $0x2,%eax
 804fb8b:	89 85 64 ee ff ff    	mov    %eax,-0x119c(%ebp)
 804fb91:	8b 85 64 ee ff ff    	mov    -0x119c(%ebp),%eax
 804fb97:	01 85 5c ee ff ff    	add    %eax,-0x11a4(%ebp)
 804fb9d:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804fba4:	0f 88 c9 00 00 00    	js     804fc73 <yyparse+0x48c>
 804fbaa:	81 bd 5c ee ff ff 0a 	cmpl   $0x10a,-0x11a4(%ebp)
 804fbb1:	01 00 00 
 804fbb4:	0f 8f b9 00 00 00    	jg     804fc73 <yyparse+0x48c>
 804fbba:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804fbc0:	05 60 6b 05 08       	add    $0x8056b60,%eax
 804fbc5:	0f b6 00             	movzbl (%eax),%eax
 804fbc8:	0f be c0             	movsbl %al,%eax
 804fbcb:	3b 85 64 ee ff ff    	cmp    -0x119c(%ebp),%eax
 804fbd1:	0f 85 9c 00 00 00    	jne    804fc73 <yyparse+0x48c>
 804fbd7:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804fbdd:	05 40 6a 05 08       	add    $0x8056a40,%eax
 804fbe2:	0f b6 00             	movzbl (%eax),%eax
 804fbe5:	0f be c0             	movsbl %al,%eax
 804fbe8:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804fbee:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804fbf5:	7f 0b                	jg     804fc02 <yyparse+0x41b>
 804fbf7:	f7 9d 5c ee ff ff    	negl   -0x11a4(%ebp)
 804fbfd:	e9 96 00 00 00       	jmp    804fc98 <yyparse+0x4b1>
 804fc02:	83 bd 3c ee ff ff 00 	cmpl   $0x0,-0x11c4(%ebp)
 804fc09:	74 07                	je     804fc12 <yyparse+0x42b>
 804fc0b:	83 ad 3c ee ff ff 01 	subl   $0x1,-0x11c4(%ebp)
 804fc12:	c7 05 88 b7 05 08 fe 	movl   $0xfffffffe,0x805b788
 804fc19:	ff ff ff 
 804fc1c:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804fc22:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 804fc28:	83 85 4c ee ff ff 04 	addl   $0x4,-0x11b4(%ebp)
 804fc2f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fc35:	8b 15 90 b7 05 08    	mov    0x805b790,%edx
 804fc3b:	89 10                	mov    %edx,(%eax)
 804fc3d:	83 85 54 ee ff ff 10 	addl   $0x10,-0x11ac(%ebp)
 804fc44:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804fc4a:	8b 15 b0 b0 05 08    	mov    0x805b0b0,%edx
 804fc50:	89 10                	mov    %edx,(%eax)
 804fc52:	8b 15 b4 b0 05 08    	mov    0x805b0b4,%edx
 804fc58:	89 50 04             	mov    %edx,0x4(%eax)
 804fc5b:	8b 15 b8 b0 05 08    	mov    0x805b0b8,%edx
 804fc61:	89 50 08             	mov    %edx,0x8(%eax)
 804fc64:	8b 15 bc b0 05 08    	mov    0x805b0bc,%edx
 804fc6a:	89 50 0c             	mov    %edx,0xc(%eax)
 804fc6d:	e9 42 fc ff ff       	jmp    804f8b4 <yyparse+0xcd>
 804fc72:	90                   	nop
 804fc73:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 804fc79:	05 60 69 05 08       	add    $0x8056960,%eax
 804fc7e:	0f b6 00             	movzbl (%eax),%eax
 804fc81:	0f b6 c0             	movzbl %al,%eax
 804fc84:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 804fc8a:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 804fc91:	0f 84 fc 1e 00 00    	je     8051b93 <yyparse+0x23ac>
 804fc97:	90                   	nop
 804fc98:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804fc9e:	05 60 6d 05 08       	add    $0x8056d60,%eax
 804fca3:	0f b6 00             	movzbl (%eax),%eax
 804fca6:	0f b6 c0             	movzbl %al,%eax
 804fca9:	89 85 68 ee ff ff    	mov    %eax,-0x1198(%ebp)
 804fcaf:	b8 01 00 00 00       	mov    $0x1,%eax
 804fcb4:	2b 85 68 ee ff ff    	sub    -0x1198(%ebp),%eax
 804fcba:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804fcc1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fcc7:	01 d0                	add    %edx,%eax
 804fcc9:	8b 00                	mov    (%eax),%eax
 804fccb:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fcd1:	83 bd 68 ee ff ff 00 	cmpl   $0x0,-0x1198(%ebp)
 804fcd8:	74 67                	je     804fd41 <yyparse+0x55a>
 804fcda:	8b 95 68 ee ff ff    	mov    -0x1198(%ebp),%edx
 804fce0:	b8 00 00 00 00       	mov    $0x0,%eax
 804fce5:	29 d0                	sub    %edx,%eax
 804fce7:	c1 e0 04             	shl    $0x4,%eax
 804fcea:	8d 50 10             	lea    0x10(%eax),%edx
 804fced:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804fcf3:	01 d0                	add    %edx,%eax
 804fcf5:	8b 00                	mov    (%eax),%eax
 804fcf7:	89 85 84 ee ff ff    	mov    %eax,-0x117c(%ebp)
 804fcfd:	8b 95 68 ee ff ff    	mov    -0x1198(%ebp),%edx
 804fd03:	b8 00 00 00 00       	mov    $0x0,%eax
 804fd08:	29 d0                	sub    %edx,%eax
 804fd0a:	c1 e0 04             	shl    $0x4,%eax
 804fd0d:	8d 50 10             	lea    0x10(%eax),%edx
 804fd10:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804fd16:	01 d0                	add    %edx,%eax
 804fd18:	8b 40 04             	mov    0x4(%eax),%eax
 804fd1b:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%ebp)
 804fd21:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804fd27:	8b 40 08             	mov    0x8(%eax),%eax
 804fd2a:	89 85 8c ee ff ff    	mov    %eax,-0x1174(%ebp)
 804fd30:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804fd36:	8b 40 0c             	mov    0xc(%eax),%eax
 804fd39:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%ebp)
 804fd3f:	eb 54                	jmp    804fd95 <yyparse+0x5ae>
 804fd41:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804fd47:	c1 e0 04             	shl    $0x4,%eax
 804fd4a:	f7 d8                	neg    %eax
 804fd4c:	89 c2                	mov    %eax,%edx
 804fd4e:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804fd54:	01 d0                	add    %edx,%eax
 804fd56:	8b 40 08             	mov    0x8(%eax),%eax
 804fd59:	89 85 8c ee ff ff    	mov    %eax,-0x1174(%ebp)
 804fd5f:	8b 85 8c ee ff ff    	mov    -0x1174(%ebp),%eax
 804fd65:	89 85 84 ee ff ff    	mov    %eax,-0x117c(%ebp)
 804fd6b:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 804fd71:	c1 e0 04             	shl    $0x4,%eax
 804fd74:	f7 d8                	neg    %eax
 804fd76:	89 c2                	mov    %eax,%edx
 804fd78:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 804fd7e:	01 d0                	add    %edx,%eax
 804fd80:	8b 40 0c             	mov    0xc(%eax),%eax
 804fd83:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%ebp)
 804fd89:	8b 85 90 ee ff ff    	mov    -0x1170(%ebp),%eax
 804fd8f:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%ebp)
 804fd95:	83 bd 5c ee ff ff 44 	cmpl   $0x44,-0x11a4(%ebp)
 804fd9c:	0f 87 c3 1c 00 00    	ja     8051a65 <yyparse+0x227e>
 804fda2:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 804fda8:	c1 e0 02             	shl    $0x2,%eax
 804fdab:	05 ec 6e 05 08       	add    $0x8056eec,%eax
 804fdb0:	8b 00                	mov    (%eax),%eax
 804fdb2:	ff e0                	jmp    *%eax
 804fdb4:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fdba:	83 ec 08             	sub    $0x8,%esp
 804fdbd:	50                   	push   %eax
 804fdbe:	68 ae 6d 05 08       	push   $0x8056dae
 804fdc3:	e8 70 8d ff ff       	call   8048b38 <createNode>
 804fdc8:	83 c4 10             	add    $0x10,%esp
 804fdcb:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fdd1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fdd7:	c7 40 04 1f 00 00 00 	movl   $0x1f,0x4(%eax)
 804fdde:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fde4:	8b 10                	mov    (%eax),%edx
 804fde6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fdec:	83 ec 08             	sub    $0x8,%esp
 804fdef:	52                   	push   %edx
 804fdf0:	50                   	push   %eax
 804fdf1:	e8 c5 8d ff ff       	call   8048bbb <addChild>
 804fdf6:	83 c4 10             	add    $0x10,%esp
 804fdf9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fdff:	a3 2c b1 05 08       	mov    %eax,0x805b12c
 804fe04:	e9 5d 1c 00 00       	jmp    8051a66 <yyparse+0x227f>
 804fe09:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fe0f:	83 ec 08             	sub    $0x8,%esp
 804fe12:	50                   	push   %eax
 804fe13:	68 b6 6d 05 08       	push   $0x8056db6
 804fe18:	e8 1b 8d ff ff       	call   8048b38 <createNode>
 804fe1d:	83 c4 10             	add    $0x10,%esp
 804fe20:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fe26:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fe2c:	83 e8 04             	sub    $0x4,%eax
 804fe2f:	8b 10                	mov    (%eax),%edx
 804fe31:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fe37:	83 ec 08             	sub    $0x8,%esp
 804fe3a:	52                   	push   %edx
 804fe3b:	50                   	push   %eax
 804fe3c:	e8 7a 8d ff ff       	call   8048bbb <addChild>
 804fe41:	83 c4 10             	add    $0x10,%esp
 804fe44:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fe4a:	8b 10                	mov    (%eax),%edx
 804fe4c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fe52:	83 ec 08             	sub    $0x8,%esp
 804fe55:	52                   	push   %edx
 804fe56:	50                   	push   %eax
 804fe57:	e8 5f 8d ff ff       	call   8048bbb <addChild>
 804fe5c:	83 c4 10             	add    $0x10,%esp
 804fe5f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fe65:	c7 40 04 20 00 00 00 	movl   $0x20,0x4(%eax)
 804fe6c:	e9 f5 1b 00 00       	jmp    8051a66 <yyparse+0x227f>
 804fe71:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 804fe78:	00 00 00 
 804fe7b:	e9 e6 1b 00 00       	jmp    8051a66 <yyparse+0x227f>
 804fe80:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fe86:	83 ec 08             	sub    $0x8,%esp
 804fe89:	50                   	push   %eax
 804fe8a:	68 c1 6d 05 08       	push   $0x8056dc1
 804fe8f:	e8 a4 8c ff ff       	call   8048b38 <createNode>
 804fe94:	83 c4 10             	add    $0x10,%esp
 804fe97:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804fe9d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fea3:	83 e8 08             	sub    $0x8,%eax
 804fea6:	8b 10                	mov    (%eax),%edx
 804fea8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804feae:	83 ec 08             	sub    $0x8,%esp
 804feb1:	52                   	push   %edx
 804feb2:	50                   	push   %eax
 804feb3:	e8 03 8d ff ff       	call   8048bbb <addChild>
 804feb8:	83 c4 10             	add    $0x10,%esp
 804febb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fec1:	83 e8 04             	sub    $0x4,%eax
 804fec4:	8b 10                	mov    (%eax),%edx
 804fec6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fecc:	83 ec 08             	sub    $0x8,%esp
 804fecf:	52                   	push   %edx
 804fed0:	50                   	push   %eax
 804fed1:	e8 e5 8c ff ff       	call   8048bbb <addChild>
 804fed6:	83 c4 10             	add    $0x10,%esp
 804fed9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804fedf:	8b 10                	mov    (%eax),%edx
 804fee1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fee7:	83 ec 08             	sub    $0x8,%esp
 804feea:	52                   	push   %edx
 804feeb:	50                   	push   %eax
 804feec:	e8 ca 8c ff ff       	call   8048bbb <addChild>
 804fef1:	83 c4 10             	add    $0x10,%esp
 804fef4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804fefa:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804ff01:	e9 60 1b 00 00       	jmp    8051a66 <yyparse+0x227f>
 804ff06:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ff0c:	83 ec 08             	sub    $0x8,%esp
 804ff0f:	50                   	push   %eax
 804ff10:	68 c1 6d 05 08       	push   $0x8056dc1
 804ff15:	e8 1e 8c ff ff       	call   8048b38 <createNode>
 804ff1a:	83 c4 10             	add    $0x10,%esp
 804ff1d:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ff23:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ff29:	83 e8 04             	sub    $0x4,%eax
 804ff2c:	8b 10                	mov    (%eax),%edx
 804ff2e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff34:	83 ec 08             	sub    $0x8,%esp
 804ff37:	52                   	push   %edx
 804ff38:	50                   	push   %eax
 804ff39:	e8 7d 8c ff ff       	call   8048bbb <addChild>
 804ff3e:	83 c4 10             	add    $0x10,%esp
 804ff41:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ff47:	8b 10                	mov    (%eax),%edx
 804ff49:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff4f:	83 ec 08             	sub    $0x8,%esp
 804ff52:	52                   	push   %edx
 804ff53:	50                   	push   %eax
 804ff54:	e8 62 8c ff ff       	call   8048bbb <addChild>
 804ff59:	83 c4 10             	add    $0x10,%esp
 804ff5c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff62:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804ff69:	e9 f8 1a 00 00       	jmp    8051a66 <yyparse+0x227f>
 804ff6e:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804ff74:	83 ec 08             	sub    $0x8,%esp
 804ff77:	50                   	push   %eax
 804ff78:	68 c1 6d 05 08       	push   $0x8056dc1
 804ff7d:	e8 b6 8b ff ff       	call   8048b38 <createNode>
 804ff82:	83 c4 10             	add    $0x10,%esp
 804ff85:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 804ff8b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ff91:	83 e8 08             	sub    $0x8,%eax
 804ff94:	8b 10                	mov    (%eax),%edx
 804ff96:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ff9c:	83 ec 08             	sub    $0x8,%esp
 804ff9f:	52                   	push   %edx
 804ffa0:	50                   	push   %eax
 804ffa1:	e8 15 8c ff ff       	call   8048bbb <addChild>
 804ffa6:	83 c4 10             	add    $0x10,%esp
 804ffa9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ffaf:	83 e8 04             	sub    $0x4,%eax
 804ffb2:	8b 10                	mov    (%eax),%edx
 804ffb4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ffba:	83 ec 08             	sub    $0x8,%esp
 804ffbd:	52                   	push   %edx
 804ffbe:	50                   	push   %eax
 804ffbf:	e8 f7 8b ff ff       	call   8048bbb <addChild>
 804ffc4:	83 c4 10             	add    $0x10,%esp
 804ffc7:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 804ffcd:	8b 10                	mov    (%eax),%edx
 804ffcf:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ffd5:	83 ec 08             	sub    $0x8,%esp
 804ffd8:	52                   	push   %edx
 804ffd9:	50                   	push   %eax
 804ffda:	e8 dc 8b ff ff       	call   8048bbb <addChild>
 804ffdf:	83 c4 10             	add    $0x10,%esp
 804ffe2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 804ffe8:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 804ffef:	e9 72 1a 00 00       	jmp    8051a66 <yyparse+0x227f>
 804fff4:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 804fffa:	83 ec 08             	sub    $0x8,%esp
 804fffd:	50                   	push   %eax
 804fffe:	68 c1 6d 05 08       	push   $0x8056dc1
 8050003:	e8 30 8b ff ff       	call   8048b38 <createNode>
 8050008:	83 c4 10             	add    $0x10,%esp
 805000b:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050011:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050017:	83 e8 08             	sub    $0x8,%eax
 805001a:	8b 10                	mov    (%eax),%edx
 805001c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050022:	83 ec 08             	sub    $0x8,%esp
 8050025:	52                   	push   %edx
 8050026:	50                   	push   %eax
 8050027:	e8 8f 8b ff ff       	call   8048bbb <addChild>
 805002c:	83 c4 10             	add    $0x10,%esp
 805002f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050035:	83 e8 04             	sub    $0x4,%eax
 8050038:	8b 10                	mov    (%eax),%edx
 805003a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050040:	83 ec 08             	sub    $0x8,%esp
 8050043:	52                   	push   %edx
 8050044:	50                   	push   %eax
 8050045:	e8 71 8b ff ff       	call   8048bbb <addChild>
 805004a:	83 c4 10             	add    $0x10,%esp
 805004d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050053:	8b 10                	mov    (%eax),%edx
 8050055:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805005b:	83 ec 08             	sub    $0x8,%esp
 805005e:	52                   	push   %edx
 805005f:	50                   	push   %eax
 8050060:	e8 56 8b ff ff       	call   8048bbb <addChild>
 8050065:	83 c4 10             	add    $0x10,%esp
 8050068:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805006e:	c7 40 04 21 00 00 00 	movl   $0x21,0x4(%eax)
 8050075:	e9 ec 19 00 00       	jmp    8051a66 <yyparse+0x227f>
 805007a:	83 ec 0c             	sub    $0xc,%esp
 805007d:	68 c8 6d 05 08       	push   $0x8056dc8
 8050082:	e8 72 4b 00 00       	call   8054bf9 <yyerror>
 8050087:	83 c4 10             	add    $0x10,%esp
 805008a:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 805008f:	83 c0 01             	add    $0x1,%eax
 8050092:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 8050097:	e9 ca 19 00 00       	jmp    8051a66 <yyparse+0x227f>
 805009c:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80500a2:	83 ec 08             	sub    $0x8,%esp
 80500a5:	50                   	push   %eax
 80500a6:	68 d4 6d 05 08       	push   $0x8056dd4
 80500ab:	e8 88 8a ff ff       	call   8048b38 <createNode>
 80500b0:	83 c4 10             	add    $0x10,%esp
 80500b3:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80500b9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80500bf:	8b 10                	mov    (%eax),%edx
 80500c1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80500c7:	83 ec 08             	sub    $0x8,%esp
 80500ca:	52                   	push   %edx
 80500cb:	50                   	push   %eax
 80500cc:	e8 ea 8a ff ff       	call   8048bbb <addChild>
 80500d1:	83 c4 10             	add    $0x10,%esp
 80500d4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80500da:	c7 40 04 22 00 00 00 	movl   $0x22,0x4(%eax)
 80500e1:	e9 80 19 00 00       	jmp    8051a66 <yyparse+0x227f>
 80500e6:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80500ec:	83 ec 08             	sub    $0x8,%esp
 80500ef:	50                   	push   %eax
 80500f0:	68 d4 6d 05 08       	push   $0x8056dd4
 80500f5:	e8 3e 8a ff ff       	call   8048b38 <createNode>
 80500fa:	83 c4 10             	add    $0x10,%esp
 80500fd:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050103:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050109:	83 e8 08             	sub    $0x8,%eax
 805010c:	8b 10                	mov    (%eax),%edx
 805010e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050114:	83 ec 08             	sub    $0x8,%esp
 8050117:	52                   	push   %edx
 8050118:	50                   	push   %eax
 8050119:	e8 9d 8a ff ff       	call   8048bbb <addChild>
 805011e:	83 c4 10             	add    $0x10,%esp
 8050121:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050127:	83 e8 04             	sub    $0x4,%eax
 805012a:	8b 10                	mov    (%eax),%edx
 805012c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050132:	83 ec 08             	sub    $0x8,%esp
 8050135:	52                   	push   %edx
 8050136:	50                   	push   %eax
 8050137:	e8 7f 8a ff ff       	call   8048bbb <addChild>
 805013c:	83 c4 10             	add    $0x10,%esp
 805013f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050145:	8b 10                	mov    (%eax),%edx
 8050147:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805014d:	83 ec 08             	sub    $0x8,%esp
 8050150:	52                   	push   %edx
 8050151:	50                   	push   %eax
 8050152:	e8 64 8a ff ff       	call   8048bbb <addChild>
 8050157:	83 c4 10             	add    $0x10,%esp
 805015a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050160:	c7 40 04 22 00 00 00 	movl   $0x22,0x4(%eax)
 8050167:	e9 fa 18 00 00       	jmp    8051a66 <yyparse+0x227f>
 805016c:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050172:	83 ec 08             	sub    $0x8,%esp
 8050175:	50                   	push   %eax
 8050176:	68 df 6d 05 08       	push   $0x8056ddf
 805017b:	e8 b8 89 ff ff       	call   8048b38 <createNode>
 8050180:	83 c4 10             	add    $0x10,%esp
 8050183:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050189:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805018f:	8b 10                	mov    (%eax),%edx
 8050191:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050197:	83 ec 08             	sub    $0x8,%esp
 805019a:	52                   	push   %edx
 805019b:	50                   	push   %eax
 805019c:	e8 1a 8a ff ff       	call   8048bbb <addChild>
 80501a1:	83 c4 10             	add    $0x10,%esp
 80501a4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80501aa:	c7 40 04 23 00 00 00 	movl   $0x23,0x4(%eax)
 80501b1:	e9 b0 18 00 00       	jmp    8051a66 <yyparse+0x227f>
 80501b6:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80501bc:	83 ec 08             	sub    $0x8,%esp
 80501bf:	50                   	push   %eax
 80501c0:	68 df 6d 05 08       	push   $0x8056ddf
 80501c5:	e8 6e 89 ff ff       	call   8048b38 <createNode>
 80501ca:	83 c4 10             	add    $0x10,%esp
 80501cd:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80501d3:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80501d9:	8b 10                	mov    (%eax),%edx
 80501db:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80501e1:	83 ec 08             	sub    $0x8,%esp
 80501e4:	52                   	push   %edx
 80501e5:	50                   	push   %eax
 80501e6:	e8 d0 89 ff ff       	call   8048bbb <addChild>
 80501eb:	83 c4 10             	add    $0x10,%esp
 80501ee:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80501f4:	c7 40 04 23 00 00 00 	movl   $0x23,0x4(%eax)
 80501fb:	e9 66 18 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050200:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050206:	83 ec 08             	sub    $0x8,%esp
 8050209:	50                   	push   %eax
 805020a:	68 e9 6d 05 08       	push   $0x8056de9
 805020f:	e8 24 89 ff ff       	call   8048b38 <createNode>
 8050214:	83 c4 10             	add    $0x10,%esp
 8050217:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 805021d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050223:	83 e8 04             	sub    $0x4,%eax
 8050226:	8b 10                	mov    (%eax),%edx
 8050228:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805022e:	83 ec 08             	sub    $0x8,%esp
 8050231:	52                   	push   %edx
 8050232:	50                   	push   %eax
 8050233:	e8 83 89 ff ff       	call   8048bbb <addChild>
 8050238:	83 c4 10             	add    $0x10,%esp
 805023b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050241:	8b 10                	mov    (%eax),%edx
 8050243:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050249:	83 ec 08             	sub    $0x8,%esp
 805024c:	52                   	push   %edx
 805024d:	50                   	push   %eax
 805024e:	e8 68 89 ff ff       	call   8048bbb <addChild>
 8050253:	83 c4 10             	add    $0x10,%esp
 8050256:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805025c:	c7 40 04 24 00 00 00 	movl   $0x24,0x4(%eax)
 8050263:	e9 fe 17 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050268:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805026e:	83 ec 08             	sub    $0x8,%esp
 8050271:	50                   	push   %eax
 8050272:	68 e9 6d 05 08       	push   $0x8056de9
 8050277:	e8 bc 88 ff ff       	call   8048b38 <createNode>
 805027c:	83 c4 10             	add    $0x10,%esp
 805027f:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050285:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805028b:	83 e8 10             	sub    $0x10,%eax
 805028e:	8b 10                	mov    (%eax),%edx
 8050290:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050296:	83 ec 08             	sub    $0x8,%esp
 8050299:	52                   	push   %edx
 805029a:	50                   	push   %eax
 805029b:	e8 1b 89 ff ff       	call   8048bbb <addChild>
 80502a0:	83 c4 10             	add    $0x10,%esp
 80502a3:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80502a9:	83 e8 0c             	sub    $0xc,%eax
 80502ac:	8b 10                	mov    (%eax),%edx
 80502ae:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80502b4:	83 ec 08             	sub    $0x8,%esp
 80502b7:	52                   	push   %edx
 80502b8:	50                   	push   %eax
 80502b9:	e8 fd 88 ff ff       	call   8048bbb <addChild>
 80502be:	83 c4 10             	add    $0x10,%esp
 80502c1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80502c7:	83 e8 08             	sub    $0x8,%eax
 80502ca:	8b 10                	mov    (%eax),%edx
 80502cc:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80502d2:	83 ec 08             	sub    $0x8,%esp
 80502d5:	52                   	push   %edx
 80502d6:	50                   	push   %eax
 80502d7:	e8 df 88 ff ff       	call   8048bbb <addChild>
 80502dc:	83 c4 10             	add    $0x10,%esp
 80502df:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80502e5:	83 e8 04             	sub    $0x4,%eax
 80502e8:	8b 10                	mov    (%eax),%edx
 80502ea:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80502f0:	83 ec 08             	sub    $0x8,%esp
 80502f3:	52                   	push   %edx
 80502f4:	50                   	push   %eax
 80502f5:	e8 c1 88 ff ff       	call   8048bbb <addChild>
 80502fa:	83 c4 10             	add    $0x10,%esp
 80502fd:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050303:	8b 10                	mov    (%eax),%edx
 8050305:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805030b:	83 ec 08             	sub    $0x8,%esp
 805030e:	52                   	push   %edx
 805030f:	50                   	push   %eax
 8050310:	e8 a6 88 ff ff       	call   8048bbb <addChild>
 8050315:	83 c4 10             	add    $0x10,%esp
 8050318:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805031e:	c7 40 04 24 00 00 00 	movl   $0x24,0x4(%eax)
 8050325:	e9 3c 17 00 00       	jmp    8051a66 <yyparse+0x227f>
 805032a:	83 ec 0c             	sub    $0xc,%esp
 805032d:	68 f9 6d 05 08       	push   $0x8056df9
 8050332:	e8 c2 48 00 00       	call   8054bf9 <yyerror>
 8050337:	83 c4 10             	add    $0x10,%esp
 805033a:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 805033f:	83 c0 01             	add    $0x1,%eax
 8050342:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 8050347:	e9 1a 17 00 00       	jmp    8051a66 <yyparse+0x227f>
 805034c:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050352:	83 ec 08             	sub    $0x8,%esp
 8050355:	50                   	push   %eax
 8050356:	68 05 6e 05 08       	push   $0x8056e05
 805035b:	e8 d8 87 ff ff       	call   8048b38 <createNode>
 8050360:	83 c4 10             	add    $0x10,%esp
 8050363:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050369:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805036f:	8b 10                	mov    (%eax),%edx
 8050371:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050377:	83 ec 08             	sub    $0x8,%esp
 805037a:	52                   	push   %edx
 805037b:	50                   	push   %eax
 805037c:	e8 3a 88 ff ff       	call   8048bbb <addChild>
 8050381:	83 c4 10             	add    $0x10,%esp
 8050384:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805038a:	c7 40 04 25 00 00 00 	movl   $0x25,0x4(%eax)
 8050391:	e9 d0 16 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050396:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 805039d:	00 00 00 
 80503a0:	e9 c1 16 00 00       	jmp    8051a66 <yyparse+0x227f>
 80503a5:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80503ab:	83 ec 08             	sub    $0x8,%esp
 80503ae:	50                   	push   %eax
 80503af:	68 0c 6e 05 08       	push   $0x8056e0c
 80503b4:	e8 7f 87 ff ff       	call   8048b38 <createNode>
 80503b9:	83 c4 10             	add    $0x10,%esp
 80503bc:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80503c2:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80503c8:	8b 10                	mov    (%eax),%edx
 80503ca:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80503d0:	83 ec 08             	sub    $0x8,%esp
 80503d3:	52                   	push   %edx
 80503d4:	50                   	push   %eax
 80503d5:	e8 e1 87 ff ff       	call   8048bbb <addChild>
 80503da:	83 c4 10             	add    $0x10,%esp
 80503dd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80503e3:	c7 40 04 26 00 00 00 	movl   $0x26,0x4(%eax)
 80503ea:	e9 77 16 00 00       	jmp    8051a66 <yyparse+0x227f>
 80503ef:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80503f5:	83 ec 08             	sub    $0x8,%esp
 80503f8:	50                   	push   %eax
 80503f9:	68 10 6e 05 08       	push   $0x8056e10
 80503fe:	e8 35 87 ff ff       	call   8048b38 <createNode>
 8050403:	83 c4 10             	add    $0x10,%esp
 8050406:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 805040c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050412:	8b 10                	mov    (%eax),%edx
 8050414:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805041a:	83 ec 08             	sub    $0x8,%esp
 805041d:	52                   	push   %edx
 805041e:	50                   	push   %eax
 805041f:	e8 97 87 ff ff       	call   8048bbb <addChild>
 8050424:	83 c4 10             	add    $0x10,%esp
 8050427:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805042d:	c7 40 04 27 00 00 00 	movl   $0x27,0x4(%eax)
 8050434:	e9 2d 16 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050439:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805043f:	83 ec 08             	sub    $0x8,%esp
 8050442:	50                   	push   %eax
 8050443:	68 10 6e 05 08       	push   $0x8056e10
 8050448:	e8 eb 86 ff ff       	call   8048b38 <createNode>
 805044d:	83 c4 10             	add    $0x10,%esp
 8050450:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050456:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805045c:	83 e8 0c             	sub    $0xc,%eax
 805045f:	8b 10                	mov    (%eax),%edx
 8050461:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050467:	83 ec 08             	sub    $0x8,%esp
 805046a:	52                   	push   %edx
 805046b:	50                   	push   %eax
 805046c:	e8 4a 87 ff ff       	call   8048bbb <addChild>
 8050471:	83 c4 10             	add    $0x10,%esp
 8050474:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805047a:	83 e8 08             	sub    $0x8,%eax
 805047d:	8b 10                	mov    (%eax),%edx
 805047f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050485:	83 ec 08             	sub    $0x8,%esp
 8050488:	52                   	push   %edx
 8050489:	50                   	push   %eax
 805048a:	e8 2c 87 ff ff       	call   8048bbb <addChild>
 805048f:	83 c4 10             	add    $0x10,%esp
 8050492:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050498:	83 e8 04             	sub    $0x4,%eax
 805049b:	8b 10                	mov    (%eax),%edx
 805049d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80504a3:	83 ec 08             	sub    $0x8,%esp
 80504a6:	52                   	push   %edx
 80504a7:	50                   	push   %eax
 80504a8:	e8 0e 87 ff ff       	call   8048bbb <addChild>
 80504ad:	83 c4 10             	add    $0x10,%esp
 80504b0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80504b6:	8b 10                	mov    (%eax),%edx
 80504b8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80504be:	83 ec 08             	sub    $0x8,%esp
 80504c1:	52                   	push   %edx
 80504c2:	50                   	push   %eax
 80504c3:	e8 f3 86 ff ff       	call   8048bbb <addChild>
 80504c8:	83 c4 10             	add    $0x10,%esp
 80504cb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80504d1:	c7 40 04 27 00 00 00 	movl   $0x27,0x4(%eax)
 80504d8:	e9 89 15 00 00       	jmp    8051a66 <yyparse+0x227f>
 80504dd:	83 ec 0c             	sub    $0xc,%esp
 80504e0:	68 17 6e 05 08       	push   $0x8056e17
 80504e5:	e8 0f 47 00 00       	call   8054bf9 <yyerror>
 80504ea:	83 c4 10             	add    $0x10,%esp
 80504ed:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 80504f2:	83 c0 01             	add    $0x1,%eax
 80504f5:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 80504fa:	e9 67 15 00 00       	jmp    8051a66 <yyparse+0x227f>
 80504ff:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050505:	83 ec 08             	sub    $0x8,%esp
 8050508:	50                   	push   %eax
 8050509:	68 23 6e 05 08       	push   $0x8056e23
 805050e:	e8 25 86 ff ff       	call   8048b38 <createNode>
 8050513:	83 c4 10             	add    $0x10,%esp
 8050516:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 805051c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050522:	83 e8 0c             	sub    $0xc,%eax
 8050525:	8b 10                	mov    (%eax),%edx
 8050527:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805052d:	83 ec 08             	sub    $0x8,%esp
 8050530:	52                   	push   %edx
 8050531:	50                   	push   %eax
 8050532:	e8 84 86 ff ff       	call   8048bbb <addChild>
 8050537:	83 c4 10             	add    $0x10,%esp
 805053a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050540:	83 e8 08             	sub    $0x8,%eax
 8050543:	8b 10                	mov    (%eax),%edx
 8050545:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805054b:	83 ec 08             	sub    $0x8,%esp
 805054e:	52                   	push   %edx
 805054f:	50                   	push   %eax
 8050550:	e8 66 86 ff ff       	call   8048bbb <addChild>
 8050555:	83 c4 10             	add    $0x10,%esp
 8050558:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805055e:	83 e8 04             	sub    $0x4,%eax
 8050561:	8b 10                	mov    (%eax),%edx
 8050563:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050569:	83 ec 08             	sub    $0x8,%esp
 805056c:	52                   	push   %edx
 805056d:	50                   	push   %eax
 805056e:	e8 48 86 ff ff       	call   8048bbb <addChild>
 8050573:	83 c4 10             	add    $0x10,%esp
 8050576:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805057c:	8b 10                	mov    (%eax),%edx
 805057e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050584:	83 ec 08             	sub    $0x8,%esp
 8050587:	52                   	push   %edx
 8050588:	50                   	push   %eax
 8050589:	e8 2d 86 ff ff       	call   8048bbb <addChild>
 805058e:	83 c4 10             	add    $0x10,%esp
 8050591:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050597:	c7 40 04 28 00 00 00 	movl   $0x28,0x4(%eax)
 805059e:	e9 c3 14 00 00       	jmp    8051a66 <yyparse+0x227f>
 80505a3:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80505a9:	83 ec 08             	sub    $0x8,%esp
 80505ac:	50                   	push   %eax
 80505ad:	68 23 6e 05 08       	push   $0x8056e23
 80505b2:	e8 81 85 ff ff       	call   8048b38 <createNode>
 80505b7:	83 c4 10             	add    $0x10,%esp
 80505ba:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80505c0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80505c6:	83 e8 08             	sub    $0x8,%eax
 80505c9:	8b 10                	mov    (%eax),%edx
 80505cb:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80505d1:	83 ec 08             	sub    $0x8,%esp
 80505d4:	52                   	push   %edx
 80505d5:	50                   	push   %eax
 80505d6:	e8 e0 85 ff ff       	call   8048bbb <addChild>
 80505db:	83 c4 10             	add    $0x10,%esp
 80505de:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80505e4:	83 e8 04             	sub    $0x4,%eax
 80505e7:	8b 10                	mov    (%eax),%edx
 80505e9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80505ef:	83 ec 08             	sub    $0x8,%esp
 80505f2:	52                   	push   %edx
 80505f3:	50                   	push   %eax
 80505f4:	e8 c2 85 ff ff       	call   8048bbb <addChild>
 80505f9:	83 c4 10             	add    $0x10,%esp
 80505fc:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050602:	8b 10                	mov    (%eax),%edx
 8050604:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805060a:	83 ec 08             	sub    $0x8,%esp
 805060d:	52                   	push   %edx
 805060e:	50                   	push   %eax
 805060f:	e8 a7 85 ff ff       	call   8048bbb <addChild>
 8050614:	83 c4 10             	add    $0x10,%esp
 8050617:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805061d:	c7 40 04 28 00 00 00 	movl   $0x28,0x4(%eax)
 8050624:	e9 3d 14 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050629:	83 ec 0c             	sub    $0xc,%esp
 805062c:	68 2a 6e 05 08       	push   $0x8056e2a
 8050631:	e8 c3 45 00 00       	call   8054bf9 <yyerror>
 8050636:	83 c4 10             	add    $0x10,%esp
 8050639:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 805063e:	83 c0 01             	add    $0x1,%eax
 8050641:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 8050646:	e9 1b 14 00 00       	jmp    8051a66 <yyparse+0x227f>
 805064b:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050651:	83 ec 08             	sub    $0x8,%esp
 8050654:	50                   	push   %eax
 8050655:	68 36 6e 05 08       	push   $0x8056e36
 805065a:	e8 d9 84 ff ff       	call   8048b38 <createNode>
 805065f:	83 c4 10             	add    $0x10,%esp
 8050662:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050668:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805066e:	83 e8 08             	sub    $0x8,%eax
 8050671:	8b 10                	mov    (%eax),%edx
 8050673:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050679:	83 ec 08             	sub    $0x8,%esp
 805067c:	52                   	push   %edx
 805067d:	50                   	push   %eax
 805067e:	e8 38 85 ff ff       	call   8048bbb <addChild>
 8050683:	83 c4 10             	add    $0x10,%esp
 8050686:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805068c:	83 e8 04             	sub    $0x4,%eax
 805068f:	8b 10                	mov    (%eax),%edx
 8050691:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050697:	83 ec 08             	sub    $0x8,%esp
 805069a:	52                   	push   %edx
 805069b:	50                   	push   %eax
 805069c:	e8 1a 85 ff ff       	call   8048bbb <addChild>
 80506a1:	83 c4 10             	add    $0x10,%esp
 80506a4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80506aa:	8b 10                	mov    (%eax),%edx
 80506ac:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80506b2:	83 ec 08             	sub    $0x8,%esp
 80506b5:	52                   	push   %edx
 80506b6:	50                   	push   %eax
 80506b7:	e8 ff 84 ff ff       	call   8048bbb <addChild>
 80506bc:	83 c4 10             	add    $0x10,%esp
 80506bf:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80506c5:	c7 40 04 29 00 00 00 	movl   $0x29,0x4(%eax)
 80506cc:	e9 95 13 00 00       	jmp    8051a66 <yyparse+0x227f>
 80506d1:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80506d7:	83 ec 08             	sub    $0x8,%esp
 80506da:	50                   	push   %eax
 80506db:	68 36 6e 05 08       	push   $0x8056e36
 80506e0:	e8 53 84 ff ff       	call   8048b38 <createNode>
 80506e5:	83 c4 10             	add    $0x10,%esp
 80506e8:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80506ee:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80506f4:	8b 10                	mov    (%eax),%edx
 80506f6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80506fc:	83 ec 08             	sub    $0x8,%esp
 80506ff:	52                   	push   %edx
 8050700:	50                   	push   %eax
 8050701:	e8 b5 84 ff ff       	call   8048bbb <addChild>
 8050706:	83 c4 10             	add    $0x10,%esp
 8050709:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805070f:	c7 40 04 29 00 00 00 	movl   $0x29,0x4(%eax)
 8050716:	e9 4b 13 00 00       	jmp    8051a66 <yyparse+0x227f>
 805071b:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050721:	83 ec 08             	sub    $0x8,%esp
 8050724:	50                   	push   %eax
 8050725:	68 3e 6e 05 08       	push   $0x8056e3e
 805072a:	e8 09 84 ff ff       	call   8048b38 <createNode>
 805072f:	83 c4 10             	add    $0x10,%esp
 8050732:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050738:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805073e:	83 e8 04             	sub    $0x4,%eax
 8050741:	8b 10                	mov    (%eax),%edx
 8050743:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050749:	83 ec 08             	sub    $0x8,%esp
 805074c:	52                   	push   %edx
 805074d:	50                   	push   %eax
 805074e:	e8 68 84 ff ff       	call   8048bbb <addChild>
 8050753:	83 c4 10             	add    $0x10,%esp
 8050756:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805075c:	8b 10                	mov    (%eax),%edx
 805075e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050764:	83 ec 08             	sub    $0x8,%esp
 8050767:	52                   	push   %edx
 8050768:	50                   	push   %eax
 8050769:	e8 4d 84 ff ff       	call   8048bbb <addChild>
 805076e:	83 c4 10             	add    $0x10,%esp
 8050771:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050777:	c7 40 04 2a 00 00 00 	movl   $0x2a,0x4(%eax)
 805077e:	e9 e3 12 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050783:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050789:	83 ec 08             	sub    $0x8,%esp
 805078c:	50                   	push   %eax
 805078d:	68 47 6e 05 08       	push   $0x8056e47
 8050792:	e8 a1 83 ff ff       	call   8048b38 <createNode>
 8050797:	83 c4 10             	add    $0x10,%esp
 805079a:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80507a0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80507a6:	83 e8 0c             	sub    $0xc,%eax
 80507a9:	8b 10                	mov    (%eax),%edx
 80507ab:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80507b1:	83 ec 08             	sub    $0x8,%esp
 80507b4:	52                   	push   %edx
 80507b5:	50                   	push   %eax
 80507b6:	e8 00 84 ff ff       	call   8048bbb <addChild>
 80507bb:	83 c4 10             	add    $0x10,%esp
 80507be:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80507c4:	83 e8 08             	sub    $0x8,%eax
 80507c7:	8b 10                	mov    (%eax),%edx
 80507c9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80507cf:	83 ec 08             	sub    $0x8,%esp
 80507d2:	52                   	push   %edx
 80507d3:	50                   	push   %eax
 80507d4:	e8 e2 83 ff ff       	call   8048bbb <addChild>
 80507d9:	83 c4 10             	add    $0x10,%esp
 80507dc:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80507e2:	83 e8 04             	sub    $0x4,%eax
 80507e5:	8b 10                	mov    (%eax),%edx
 80507e7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80507ed:	83 ec 08             	sub    $0x8,%esp
 80507f0:	52                   	push   %edx
 80507f1:	50                   	push   %eax
 80507f2:	e8 c4 83 ff ff       	call   8048bbb <addChild>
 80507f7:	83 c4 10             	add    $0x10,%esp
 80507fa:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050800:	8b 10                	mov    (%eax),%edx
 8050802:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050808:	83 ec 08             	sub    $0x8,%esp
 805080b:	52                   	push   %edx
 805080c:	50                   	push   %eax
 805080d:	e8 a9 83 ff ff       	call   8048bbb <addChild>
 8050812:	83 c4 10             	add    $0x10,%esp
 8050815:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805081b:	c7 40 04 2b 00 00 00 	movl   $0x2b,0x4(%eax)
 8050822:	e9 3f 12 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050827:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 805082c:	83 c0 01             	add    $0x1,%eax
 805082f:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 8050834:	e9 2d 12 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050839:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805083f:	83 ec 08             	sub    $0x8,%esp
 8050842:	50                   	push   %eax
 8050843:	68 4e 6e 05 08       	push   $0x8056e4e
 8050848:	e8 eb 82 ff ff       	call   8048b38 <createNode>
 805084d:	83 c4 10             	add    $0x10,%esp
 8050850:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050856:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805085c:	83 e8 04             	sub    $0x4,%eax
 805085f:	8b 10                	mov    (%eax),%edx
 8050861:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050867:	83 ec 08             	sub    $0x8,%esp
 805086a:	52                   	push   %edx
 805086b:	50                   	push   %eax
 805086c:	e8 4a 83 ff ff       	call   8048bbb <addChild>
 8050871:	83 c4 10             	add    $0x10,%esp
 8050874:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805087a:	8b 10                	mov    (%eax),%edx
 805087c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050882:	83 ec 08             	sub    $0x8,%esp
 8050885:	52                   	push   %edx
 8050886:	50                   	push   %eax
 8050887:	e8 2f 83 ff ff       	call   8048bbb <addChild>
 805088c:	83 c4 10             	add    $0x10,%esp
 805088f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050895:	c7 40 04 2c 00 00 00 	movl   $0x2c,0x4(%eax)
 805089c:	e9 c5 11 00 00       	jmp    8051a66 <yyparse+0x227f>
 80508a1:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 80508a8:	00 00 00 
 80508ab:	e9 b6 11 00 00       	jmp    8051a66 <yyparse+0x227f>
 80508b0:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80508b6:	83 ec 08             	sub    $0x8,%esp
 80508b9:	50                   	push   %eax
 80508ba:	68 57 6e 05 08       	push   $0x8056e57
 80508bf:	e8 74 82 ff ff       	call   8048b38 <createNode>
 80508c4:	83 c4 10             	add    $0x10,%esp
 80508c7:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80508cd:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80508d3:	83 e8 04             	sub    $0x4,%eax
 80508d6:	8b 10                	mov    (%eax),%edx
 80508d8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80508de:	83 ec 08             	sub    $0x8,%esp
 80508e1:	52                   	push   %edx
 80508e2:	50                   	push   %eax
 80508e3:	e8 d3 82 ff ff       	call   8048bbb <addChild>
 80508e8:	83 c4 10             	add    $0x10,%esp
 80508eb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80508f1:	8b 10                	mov    (%eax),%edx
 80508f3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80508f9:	83 ec 08             	sub    $0x8,%esp
 80508fc:	52                   	push   %edx
 80508fd:	50                   	push   %eax
 80508fe:	e8 b8 82 ff ff       	call   8048bbb <addChild>
 8050903:	83 c4 10             	add    $0x10,%esp
 8050906:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805090c:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 8050913:	e9 4e 11 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050918:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805091e:	83 ec 08             	sub    $0x8,%esp
 8050921:	50                   	push   %eax
 8050922:	68 57 6e 05 08       	push   $0x8056e57
 8050927:	e8 0c 82 ff ff       	call   8048b38 <createNode>
 805092c:	83 c4 10             	add    $0x10,%esp
 805092f:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050935:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805093b:	8b 10                	mov    (%eax),%edx
 805093d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050943:	83 ec 08             	sub    $0x8,%esp
 8050946:	52                   	push   %edx
 8050947:	50                   	push   %eax
 8050948:	e8 6e 82 ff ff       	call   8048bbb <addChild>
 805094d:	83 c4 10             	add    $0x10,%esp
 8050950:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050956:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 805095d:	e9 04 11 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050962:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050968:	83 ec 08             	sub    $0x8,%esp
 805096b:	50                   	push   %eax
 805096c:	68 57 6e 05 08       	push   $0x8056e57
 8050971:	e8 c2 81 ff ff       	call   8048b38 <createNode>
 8050976:	83 c4 10             	add    $0x10,%esp
 8050979:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 805097f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050985:	83 e8 08             	sub    $0x8,%eax
 8050988:	8b 10                	mov    (%eax),%edx
 805098a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050990:	83 ec 08             	sub    $0x8,%esp
 8050993:	52                   	push   %edx
 8050994:	50                   	push   %eax
 8050995:	e8 21 82 ff ff       	call   8048bbb <addChild>
 805099a:	83 c4 10             	add    $0x10,%esp
 805099d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80509a3:	83 e8 04             	sub    $0x4,%eax
 80509a6:	8b 10                	mov    (%eax),%edx
 80509a8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80509ae:	83 ec 08             	sub    $0x8,%esp
 80509b1:	52                   	push   %edx
 80509b2:	50                   	push   %eax
 80509b3:	e8 03 82 ff ff       	call   8048bbb <addChild>
 80509b8:	83 c4 10             	add    $0x10,%esp
 80509bb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80509c1:	8b 10                	mov    (%eax),%edx
 80509c3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80509c9:	83 ec 08             	sub    $0x8,%esp
 80509cc:	52                   	push   %edx
 80509cd:	50                   	push   %eax
 80509ce:	e8 e8 81 ff ff       	call   8048bbb <addChild>
 80509d3:	83 c4 10             	add    $0x10,%esp
 80509d6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80509dc:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 80509e3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80509e9:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 80509f0:	e9 71 10 00 00       	jmp    8051a66 <yyparse+0x227f>
 80509f5:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80509fb:	83 ec 08             	sub    $0x8,%esp
 80509fe:	50                   	push   %eax
 80509ff:	68 57 6e 05 08       	push   $0x8056e57
 8050a04:	e8 2f 81 ff ff       	call   8048b38 <createNode>
 8050a09:	83 c4 10             	add    $0x10,%esp
 8050a0c:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050a12:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050a18:	83 e8 10             	sub    $0x10,%eax
 8050a1b:	8b 10                	mov    (%eax),%edx
 8050a1d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050a23:	83 ec 08             	sub    $0x8,%esp
 8050a26:	52                   	push   %edx
 8050a27:	50                   	push   %eax
 8050a28:	e8 8e 81 ff ff       	call   8048bbb <addChild>
 8050a2d:	83 c4 10             	add    $0x10,%esp
 8050a30:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050a36:	83 e8 0c             	sub    $0xc,%eax
 8050a39:	8b 10                	mov    (%eax),%edx
 8050a3b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050a41:	83 ec 08             	sub    $0x8,%esp
 8050a44:	52                   	push   %edx
 8050a45:	50                   	push   %eax
 8050a46:	e8 70 81 ff ff       	call   8048bbb <addChild>
 8050a4b:	83 c4 10             	add    $0x10,%esp
 8050a4e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050a54:	83 e8 08             	sub    $0x8,%eax
 8050a57:	8b 10                	mov    (%eax),%edx
 8050a59:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050a5f:	83 ec 08             	sub    $0x8,%esp
 8050a62:	52                   	push   %edx
 8050a63:	50                   	push   %eax
 8050a64:	e8 52 81 ff ff       	call   8048bbb <addChild>
 8050a69:	83 c4 10             	add    $0x10,%esp
 8050a6c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050a72:	83 e8 04             	sub    $0x4,%eax
 8050a75:	8b 10                	mov    (%eax),%edx
 8050a77:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050a7d:	83 ec 08             	sub    $0x8,%esp
 8050a80:	52                   	push   %edx
 8050a81:	50                   	push   %eax
 8050a82:	e8 34 81 ff ff       	call   8048bbb <addChild>
 8050a87:	83 c4 10             	add    $0x10,%esp
 8050a8a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050a90:	8b 10                	mov    (%eax),%edx
 8050a92:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050a98:	83 ec 08             	sub    $0x8,%esp
 8050a9b:	52                   	push   %edx
 8050a9c:	50                   	push   %eax
 8050a9d:	e8 19 81 ff ff       	call   8048bbb <addChild>
 8050aa2:	83 c4 10             	add    $0x10,%esp
 8050aa5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050aab:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050ab2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050ab8:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 8050abf:	e9 a2 0f 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050ac4:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050aca:	83 ec 08             	sub    $0x8,%esp
 8050acd:	50                   	push   %eax
 8050ace:	68 57 6e 05 08       	push   $0x8056e57
 8050ad3:	e8 60 80 ff ff       	call   8048b38 <createNode>
 8050ad8:	83 c4 10             	add    $0x10,%esp
 8050adb:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050ae1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050ae7:	83 e8 18             	sub    $0x18,%eax
 8050aea:	8b 10                	mov    (%eax),%edx
 8050aec:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050af2:	83 ec 08             	sub    $0x8,%esp
 8050af5:	52                   	push   %edx
 8050af6:	50                   	push   %eax
 8050af7:	e8 bf 80 ff ff       	call   8048bbb <addChild>
 8050afc:	83 c4 10             	add    $0x10,%esp
 8050aff:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050b05:	83 e8 14             	sub    $0x14,%eax
 8050b08:	8b 10                	mov    (%eax),%edx
 8050b0a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050b10:	83 ec 08             	sub    $0x8,%esp
 8050b13:	52                   	push   %edx
 8050b14:	50                   	push   %eax
 8050b15:	e8 a1 80 ff ff       	call   8048bbb <addChild>
 8050b1a:	83 c4 10             	add    $0x10,%esp
 8050b1d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050b23:	83 e8 10             	sub    $0x10,%eax
 8050b26:	8b 10                	mov    (%eax),%edx
 8050b28:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050b2e:	83 ec 08             	sub    $0x8,%esp
 8050b31:	52                   	push   %edx
 8050b32:	50                   	push   %eax
 8050b33:	e8 83 80 ff ff       	call   8048bbb <addChild>
 8050b38:	83 c4 10             	add    $0x10,%esp
 8050b3b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050b41:	83 e8 0c             	sub    $0xc,%eax
 8050b44:	8b 10                	mov    (%eax),%edx
 8050b46:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050b4c:	83 ec 08             	sub    $0x8,%esp
 8050b4f:	52                   	push   %edx
 8050b50:	50                   	push   %eax
 8050b51:	e8 65 80 ff ff       	call   8048bbb <addChild>
 8050b56:	83 c4 10             	add    $0x10,%esp
 8050b59:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050b5f:	83 e8 08             	sub    $0x8,%eax
 8050b62:	8b 10                	mov    (%eax),%edx
 8050b64:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050b6a:	83 ec 08             	sub    $0x8,%esp
 8050b6d:	52                   	push   %edx
 8050b6e:	50                   	push   %eax
 8050b6f:	e8 47 80 ff ff       	call   8048bbb <addChild>
 8050b74:	83 c4 10             	add    $0x10,%esp
 8050b77:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050b7d:	83 e8 04             	sub    $0x4,%eax
 8050b80:	8b 10                	mov    (%eax),%edx
 8050b82:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050b88:	83 ec 08             	sub    $0x8,%esp
 8050b8b:	52                   	push   %edx
 8050b8c:	50                   	push   %eax
 8050b8d:	e8 29 80 ff ff       	call   8048bbb <addChild>
 8050b92:	83 c4 10             	add    $0x10,%esp
 8050b95:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050b9b:	8b 10                	mov    (%eax),%edx
 8050b9d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050ba3:	83 ec 08             	sub    $0x8,%esp
 8050ba6:	52                   	push   %edx
 8050ba7:	50                   	push   %eax
 8050ba8:	e8 0e 80 ff ff       	call   8048bbb <addChild>
 8050bad:	83 c4 10             	add    $0x10,%esp
 8050bb0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050bb6:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050bbd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050bc3:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 8050bca:	e9 97 0e 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050bcf:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050bd5:	83 ec 08             	sub    $0x8,%esp
 8050bd8:	50                   	push   %eax
 8050bd9:	68 57 6e 05 08       	push   $0x8056e57
 8050bde:	e8 55 7f ff ff       	call   8048b38 <createNode>
 8050be3:	83 c4 10             	add    $0x10,%esp
 8050be6:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050bec:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050bf2:	83 e8 10             	sub    $0x10,%eax
 8050bf5:	8b 10                	mov    (%eax),%edx
 8050bf7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050bfd:	83 ec 08             	sub    $0x8,%esp
 8050c00:	52                   	push   %edx
 8050c01:	50                   	push   %eax
 8050c02:	e8 b4 7f ff ff       	call   8048bbb <addChild>
 8050c07:	83 c4 10             	add    $0x10,%esp
 8050c0a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050c10:	83 e8 0c             	sub    $0xc,%eax
 8050c13:	8b 10                	mov    (%eax),%edx
 8050c15:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050c1b:	83 ec 08             	sub    $0x8,%esp
 8050c1e:	52                   	push   %edx
 8050c1f:	50                   	push   %eax
 8050c20:	e8 96 7f ff ff       	call   8048bbb <addChild>
 8050c25:	83 c4 10             	add    $0x10,%esp
 8050c28:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050c2e:	83 e8 08             	sub    $0x8,%eax
 8050c31:	8b 10                	mov    (%eax),%edx
 8050c33:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050c39:	83 ec 08             	sub    $0x8,%esp
 8050c3c:	52                   	push   %edx
 8050c3d:	50                   	push   %eax
 8050c3e:	e8 78 7f ff ff       	call   8048bbb <addChild>
 8050c43:	83 c4 10             	add    $0x10,%esp
 8050c46:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050c4c:	83 e8 04             	sub    $0x4,%eax
 8050c4f:	8b 10                	mov    (%eax),%edx
 8050c51:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050c57:	83 ec 08             	sub    $0x8,%esp
 8050c5a:	52                   	push   %edx
 8050c5b:	50                   	push   %eax
 8050c5c:	e8 5a 7f ff ff       	call   8048bbb <addChild>
 8050c61:	83 c4 10             	add    $0x10,%esp
 8050c64:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050c6a:	8b 10                	mov    (%eax),%edx
 8050c6c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050c72:	83 ec 08             	sub    $0x8,%esp
 8050c75:	52                   	push   %edx
 8050c76:	50                   	push   %eax
 8050c77:	e8 3f 7f ff ff       	call   8048bbb <addChild>
 8050c7c:	83 c4 10             	add    $0x10,%esp
 8050c7f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050c85:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050c8c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050c92:	c7 40 04 2d 00 00 00 	movl   $0x2d,0x4(%eax)
 8050c99:	e9 c8 0d 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050c9e:	83 ec 0c             	sub    $0xc,%esp
 8050ca1:	68 c8 6d 05 08       	push   $0x8056dc8
 8050ca6:	e8 4e 3f 00 00       	call   8054bf9 <yyerror>
 8050cab:	83 c4 10             	add    $0x10,%esp
 8050cae:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 8050cb3:	83 c0 01             	add    $0x1,%eax
 8050cb6:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 8050cbb:	e9 a6 0d 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050cc0:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050cc6:	83 ec 08             	sub    $0x8,%esp
 8050cc9:	50                   	push   %eax
 8050cca:	68 5c 6e 05 08       	push   $0x8056e5c
 8050ccf:	e8 64 7e ff ff       	call   8048b38 <createNode>
 8050cd4:	83 c4 10             	add    $0x10,%esp
 8050cd7:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050cdd:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050ce3:	83 e8 04             	sub    $0x4,%eax
 8050ce6:	8b 10                	mov    (%eax),%edx
 8050ce8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050cee:	83 ec 08             	sub    $0x8,%esp
 8050cf1:	52                   	push   %edx
 8050cf2:	50                   	push   %eax
 8050cf3:	e8 c3 7e ff ff       	call   8048bbb <addChild>
 8050cf8:	83 c4 10             	add    $0x10,%esp
 8050cfb:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050d01:	8b 10                	mov    (%eax),%edx
 8050d03:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050d09:	83 ec 08             	sub    $0x8,%esp
 8050d0c:	52                   	push   %edx
 8050d0d:	50                   	push   %eax
 8050d0e:	e8 a8 7e ff ff       	call   8048bbb <addChild>
 8050d13:	83 c4 10             	add    $0x10,%esp
 8050d16:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050d1c:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050d23:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050d29:	c7 40 04 2e 00 00 00 	movl   $0x2e,0x4(%eax)
 8050d30:	e9 31 0d 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050d35:	c7 85 34 ee ff ff 00 	movl   $0x0,-0x11cc(%ebp)
 8050d3c:	00 00 00 
 8050d3f:	e9 22 0d 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050d44:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050d4a:	83 ec 08             	sub    $0x8,%esp
 8050d4d:	50                   	push   %eax
 8050d4e:	68 64 6e 05 08       	push   $0x8056e64
 8050d53:	e8 e0 7d ff ff       	call   8048b38 <createNode>
 8050d58:	83 c4 10             	add    $0x10,%esp
 8050d5b:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050d61:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050d67:	83 e8 08             	sub    $0x8,%eax
 8050d6a:	8b 10                	mov    (%eax),%edx
 8050d6c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050d72:	83 ec 08             	sub    $0x8,%esp
 8050d75:	52                   	push   %edx
 8050d76:	50                   	push   %eax
 8050d77:	e8 3f 7e ff ff       	call   8048bbb <addChild>
 8050d7c:	83 c4 10             	add    $0x10,%esp
 8050d7f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050d85:	83 e8 04             	sub    $0x4,%eax
 8050d88:	8b 10                	mov    (%eax),%edx
 8050d8a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050d90:	83 ec 08             	sub    $0x8,%esp
 8050d93:	52                   	push   %edx
 8050d94:	50                   	push   %eax
 8050d95:	e8 21 7e ff ff       	call   8048bbb <addChild>
 8050d9a:	83 c4 10             	add    $0x10,%esp
 8050d9d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050da3:	8b 10                	mov    (%eax),%edx
 8050da5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050dab:	83 ec 08             	sub    $0x8,%esp
 8050dae:	52                   	push   %edx
 8050daf:	50                   	push   %eax
 8050db0:	e8 06 7e ff ff       	call   8048bbb <addChild>
 8050db5:	83 c4 10             	add    $0x10,%esp
 8050db8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050dbe:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050dc5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050dcb:	c7 40 04 2f 00 00 00 	movl   $0x2f,0x4(%eax)
 8050dd2:	e9 8f 0c 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050dd7:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 8050ddc:	83 c0 01             	add    $0x1,%eax
 8050ddf:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 8050de4:	e9 7d 0c 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050de9:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050def:	83 ec 08             	sub    $0x8,%esp
 8050df2:	50                   	push   %eax
 8050df3:	68 68 6e 05 08       	push   $0x8056e68
 8050df8:	e8 3b 7d ff ff       	call   8048b38 <createNode>
 8050dfd:	83 c4 10             	add    $0x10,%esp
 8050e00:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050e06:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050e0c:	8b 10                	mov    (%eax),%edx
 8050e0e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050e14:	83 ec 08             	sub    $0x8,%esp
 8050e17:	52                   	push   %edx
 8050e18:	50                   	push   %eax
 8050e19:	e8 9d 7d ff ff       	call   8048bbb <addChild>
 8050e1e:	83 c4 10             	add    $0x10,%esp
 8050e21:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050e27:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050e2e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050e34:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%eax)
 8050e3b:	e9 26 0c 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050e40:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050e46:	83 ec 08             	sub    $0x8,%esp
 8050e49:	50                   	push   %eax
 8050e4a:	68 68 6e 05 08       	push   $0x8056e68
 8050e4f:	e8 e4 7c ff ff       	call   8048b38 <createNode>
 8050e54:	83 c4 10             	add    $0x10,%esp
 8050e57:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050e5d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050e63:	83 e8 08             	sub    $0x8,%eax
 8050e66:	8b 10                	mov    (%eax),%edx
 8050e68:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050e6e:	83 ec 08             	sub    $0x8,%esp
 8050e71:	52                   	push   %edx
 8050e72:	50                   	push   %eax
 8050e73:	e8 43 7d ff ff       	call   8048bbb <addChild>
 8050e78:	83 c4 10             	add    $0x10,%esp
 8050e7b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050e81:	83 e8 04             	sub    $0x4,%eax
 8050e84:	8b 10                	mov    (%eax),%edx
 8050e86:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050e8c:	83 ec 08             	sub    $0x8,%esp
 8050e8f:	52                   	push   %edx
 8050e90:	50                   	push   %eax
 8050e91:	e8 25 7d ff ff       	call   8048bbb <addChild>
 8050e96:	83 c4 10             	add    $0x10,%esp
 8050e99:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050e9f:	8b 10                	mov    (%eax),%edx
 8050ea1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050ea7:	83 ec 08             	sub    $0x8,%esp
 8050eaa:	52                   	push   %edx
 8050eab:	50                   	push   %eax
 8050eac:	e8 0a 7d ff ff       	call   8048bbb <addChild>
 8050eb1:	83 c4 10             	add    $0x10,%esp
 8050eb4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050eba:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050ec1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050ec7:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%eax)
 8050ece:	e9 93 0b 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050ed3:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050ed9:	83 ec 08             	sub    $0x8,%esp
 8050edc:	50                   	push   %eax
 8050edd:	68 70 6e 05 08       	push   $0x8056e70
 8050ee2:	e8 51 7c ff ff       	call   8048b38 <createNode>
 8050ee7:	83 c4 10             	add    $0x10,%esp
 8050eea:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050ef0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050ef6:	8b 10                	mov    (%eax),%edx
 8050ef8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050efe:	83 ec 08             	sub    $0x8,%esp
 8050f01:	52                   	push   %edx
 8050f02:	50                   	push   %eax
 8050f03:	e8 b3 7c ff ff       	call   8048bbb <addChild>
 8050f08:	83 c4 10             	add    $0x10,%esp
 8050f0b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050f11:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050f18:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050f1e:	c7 40 04 31 00 00 00 	movl   $0x31,0x4(%eax)
 8050f25:	e9 3c 0b 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050f2a:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050f30:	83 ec 08             	sub    $0x8,%esp
 8050f33:	50                   	push   %eax
 8050f34:	68 70 6e 05 08       	push   $0x8056e70
 8050f39:	e8 fa 7b ff ff       	call   8048b38 <createNode>
 8050f3e:	83 c4 10             	add    $0x10,%esp
 8050f41:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050f47:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050f4d:	83 e8 08             	sub    $0x8,%eax
 8050f50:	8b 10                	mov    (%eax),%edx
 8050f52:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050f58:	83 ec 08             	sub    $0x8,%esp
 8050f5b:	52                   	push   %edx
 8050f5c:	50                   	push   %eax
 8050f5d:	e8 59 7c ff ff       	call   8048bbb <addChild>
 8050f62:	83 c4 10             	add    $0x10,%esp
 8050f65:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050f6b:	83 e8 04             	sub    $0x4,%eax
 8050f6e:	8b 10                	mov    (%eax),%edx
 8050f70:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050f76:	83 ec 08             	sub    $0x8,%esp
 8050f79:	52                   	push   %edx
 8050f7a:	50                   	push   %eax
 8050f7b:	e8 3b 7c ff ff       	call   8048bbb <addChild>
 8050f80:	83 c4 10             	add    $0x10,%esp
 8050f83:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050f89:	8b 10                	mov    (%eax),%edx
 8050f8b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050f91:	83 ec 08             	sub    $0x8,%esp
 8050f94:	52                   	push   %edx
 8050f95:	50                   	push   %eax
 8050f96:	e8 20 7c ff ff       	call   8048bbb <addChild>
 8050f9b:	83 c4 10             	add    $0x10,%esp
 8050f9e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050fa4:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8050fab:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050fb1:	c7 40 04 31 00 00 00 	movl   $0x31,0x4(%eax)
 8050fb8:	e9 a9 0a 00 00       	jmp    8051a66 <yyparse+0x227f>
 8050fbd:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8050fc3:	83 ec 08             	sub    $0x8,%esp
 8050fc6:	50                   	push   %eax
 8050fc7:	68 74 6e 05 08       	push   $0x8056e74
 8050fcc:	e8 67 7b ff ff       	call   8048b38 <createNode>
 8050fd1:	83 c4 10             	add    $0x10,%esp
 8050fd4:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8050fda:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050fe0:	83 e8 08             	sub    $0x8,%eax
 8050fe3:	8b 10                	mov    (%eax),%edx
 8050fe5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8050feb:	83 ec 08             	sub    $0x8,%esp
 8050fee:	52                   	push   %edx
 8050fef:	50                   	push   %eax
 8050ff0:	e8 c6 7b ff ff       	call   8048bbb <addChild>
 8050ff5:	83 c4 10             	add    $0x10,%esp
 8050ff8:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8050ffe:	83 e8 04             	sub    $0x4,%eax
 8051001:	8b 10                	mov    (%eax),%edx
 8051003:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051009:	83 ec 08             	sub    $0x8,%esp
 805100c:	52                   	push   %edx
 805100d:	50                   	push   %eax
 805100e:	e8 a8 7b ff ff       	call   8048bbb <addChild>
 8051013:	83 c4 10             	add    $0x10,%esp
 8051016:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805101c:	8b 10                	mov    (%eax),%edx
 805101e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051024:	83 ec 08             	sub    $0x8,%esp
 8051027:	52                   	push   %edx
 8051028:	50                   	push   %eax
 8051029:	e8 8d 7b ff ff       	call   8048bbb <addChild>
 805102e:	83 c4 10             	add    $0x10,%esp
 8051031:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051037:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 805103e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051044:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 805104b:	e9 16 0a 00 00       	jmp    8051a66 <yyparse+0x227f>
 8051050:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8051056:	83 ec 08             	sub    $0x8,%esp
 8051059:	50                   	push   %eax
 805105a:	68 74 6e 05 08       	push   $0x8056e74
 805105f:	e8 d4 7a ff ff       	call   8048b38 <createNode>
 8051064:	83 c4 10             	add    $0x10,%esp
 8051067:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 805106d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051073:	83 e8 08             	sub    $0x8,%eax
 8051076:	8b 10                	mov    (%eax),%edx
 8051078:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805107e:	83 ec 08             	sub    $0x8,%esp
 8051081:	52                   	push   %edx
 8051082:	50                   	push   %eax
 8051083:	e8 33 7b ff ff       	call   8048bbb <addChild>
 8051088:	83 c4 10             	add    $0x10,%esp
 805108b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051091:	83 e8 04             	sub    $0x4,%eax
 8051094:	8b 10                	mov    (%eax),%edx
 8051096:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805109c:	83 ec 08             	sub    $0x8,%esp
 805109f:	52                   	push   %edx
 80510a0:	50                   	push   %eax
 80510a1:	e8 15 7b ff ff       	call   8048bbb <addChild>
 80510a6:	83 c4 10             	add    $0x10,%esp
 80510a9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80510af:	8b 10                	mov    (%eax),%edx
 80510b1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80510b7:	83 ec 08             	sub    $0x8,%esp
 80510ba:	52                   	push   %edx
 80510bb:	50                   	push   %eax
 80510bc:	e8 fa 7a ff ff       	call   8048bbb <addChild>
 80510c1:	83 c4 10             	add    $0x10,%esp
 80510c4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80510ca:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 80510d1:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80510d7:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 80510de:	e9 83 09 00 00       	jmp    8051a66 <yyparse+0x227f>
 80510e3:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80510e9:	83 ec 08             	sub    $0x8,%esp
 80510ec:	50                   	push   %eax
 80510ed:	68 74 6e 05 08       	push   $0x8056e74
 80510f2:	e8 41 7a ff ff       	call   8048b38 <createNode>
 80510f7:	83 c4 10             	add    $0x10,%esp
 80510fa:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8051100:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051106:	83 e8 08             	sub    $0x8,%eax
 8051109:	8b 10                	mov    (%eax),%edx
 805110b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051111:	83 ec 08             	sub    $0x8,%esp
 8051114:	52                   	push   %edx
 8051115:	50                   	push   %eax
 8051116:	e8 a0 7a ff ff       	call   8048bbb <addChild>
 805111b:	83 c4 10             	add    $0x10,%esp
 805111e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051124:	83 e8 04             	sub    $0x4,%eax
 8051127:	8b 10                	mov    (%eax),%edx
 8051129:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805112f:	83 ec 08             	sub    $0x8,%esp
 8051132:	52                   	push   %edx
 8051133:	50                   	push   %eax
 8051134:	e8 82 7a ff ff       	call   8048bbb <addChild>
 8051139:	83 c4 10             	add    $0x10,%esp
 805113c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051142:	8b 10                	mov    (%eax),%edx
 8051144:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805114a:	83 ec 08             	sub    $0x8,%esp
 805114d:	52                   	push   %edx
 805114e:	50                   	push   %eax
 805114f:	e8 67 7a ff ff       	call   8048bbb <addChild>
 8051154:	83 c4 10             	add    $0x10,%esp
 8051157:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805115d:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8051164:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805116a:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 8051171:	e9 f0 08 00 00       	jmp    8051a66 <yyparse+0x227f>
 8051176:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805117c:	83 ec 08             	sub    $0x8,%esp
 805117f:	50                   	push   %eax
 8051180:	68 74 6e 05 08       	push   $0x8056e74
 8051185:	e8 ae 79 ff ff       	call   8048b38 <createNode>
 805118a:	83 c4 10             	add    $0x10,%esp
 805118d:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8051193:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051199:	83 e8 08             	sub    $0x8,%eax
 805119c:	8b 10                	mov    (%eax),%edx
 805119e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80511a4:	83 ec 08             	sub    $0x8,%esp
 80511a7:	52                   	push   %edx
 80511a8:	50                   	push   %eax
 80511a9:	e8 0d 7a ff ff       	call   8048bbb <addChild>
 80511ae:	83 c4 10             	add    $0x10,%esp
 80511b1:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80511b7:	83 e8 04             	sub    $0x4,%eax
 80511ba:	8b 10                	mov    (%eax),%edx
 80511bc:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80511c2:	83 ec 08             	sub    $0x8,%esp
 80511c5:	52                   	push   %edx
 80511c6:	50                   	push   %eax
 80511c7:	e8 ef 79 ff ff       	call   8048bbb <addChild>
 80511cc:	83 c4 10             	add    $0x10,%esp
 80511cf:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80511d5:	8b 10                	mov    (%eax),%edx
 80511d7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80511dd:	83 ec 08             	sub    $0x8,%esp
 80511e0:	52                   	push   %edx
 80511e1:	50                   	push   %eax
 80511e2:	e8 d4 79 ff ff       	call   8048bbb <addChild>
 80511e7:	83 c4 10             	add    $0x10,%esp
 80511ea:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80511f0:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 80511f7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80511fd:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 8051204:	e9 5d 08 00 00       	jmp    8051a66 <yyparse+0x227f>
 8051209:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805120f:	83 ec 08             	sub    $0x8,%esp
 8051212:	50                   	push   %eax
 8051213:	68 74 6e 05 08       	push   $0x8056e74
 8051218:	e8 1b 79 ff ff       	call   8048b38 <createNode>
 805121d:	83 c4 10             	add    $0x10,%esp
 8051220:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8051226:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805122c:	83 e8 08             	sub    $0x8,%eax
 805122f:	8b 10                	mov    (%eax),%edx
 8051231:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051237:	83 ec 08             	sub    $0x8,%esp
 805123a:	52                   	push   %edx
 805123b:	50                   	push   %eax
 805123c:	e8 7a 79 ff ff       	call   8048bbb <addChild>
 8051241:	83 c4 10             	add    $0x10,%esp
 8051244:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805124a:	83 e8 04             	sub    $0x4,%eax
 805124d:	8b 10                	mov    (%eax),%edx
 805124f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051255:	83 ec 08             	sub    $0x8,%esp
 8051258:	52                   	push   %edx
 8051259:	50                   	push   %eax
 805125a:	e8 5c 79 ff ff       	call   8048bbb <addChild>
 805125f:	83 c4 10             	add    $0x10,%esp
 8051262:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051268:	8b 10                	mov    (%eax),%edx
 805126a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051270:	83 ec 08             	sub    $0x8,%esp
 8051273:	52                   	push   %edx
 8051274:	50                   	push   %eax
 8051275:	e8 41 79 ff ff       	call   8048bbb <addChild>
 805127a:	83 c4 10             	add    $0x10,%esp
 805127d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051283:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 805128a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051290:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 8051297:	e9 ca 07 00 00       	jmp    8051a66 <yyparse+0x227f>
 805129c:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80512a2:	83 ec 08             	sub    $0x8,%esp
 80512a5:	50                   	push   %eax
 80512a6:	68 74 6e 05 08       	push   $0x8056e74
 80512ab:	e8 88 78 ff ff       	call   8048b38 <createNode>
 80512b0:	83 c4 10             	add    $0x10,%esp
 80512b3:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80512b9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80512bf:	83 e8 08             	sub    $0x8,%eax
 80512c2:	8b 10                	mov    (%eax),%edx
 80512c4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80512ca:	83 ec 08             	sub    $0x8,%esp
 80512cd:	52                   	push   %edx
 80512ce:	50                   	push   %eax
 80512cf:	e8 e7 78 ff ff       	call   8048bbb <addChild>
 80512d4:	83 c4 10             	add    $0x10,%esp
 80512d7:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80512dd:	83 e8 04             	sub    $0x4,%eax
 80512e0:	8b 10                	mov    (%eax),%edx
 80512e2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80512e8:	83 ec 08             	sub    $0x8,%esp
 80512eb:	52                   	push   %edx
 80512ec:	50                   	push   %eax
 80512ed:	e8 c9 78 ff ff       	call   8048bbb <addChild>
 80512f2:	83 c4 10             	add    $0x10,%esp
 80512f5:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80512fb:	8b 10                	mov    (%eax),%edx
 80512fd:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051303:	83 ec 08             	sub    $0x8,%esp
 8051306:	52                   	push   %edx
 8051307:	50                   	push   %eax
 8051308:	e8 ae 78 ff ff       	call   8048bbb <addChild>
 805130d:	83 c4 10             	add    $0x10,%esp
 8051310:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051316:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 805131d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051323:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 805132a:	e9 37 07 00 00       	jmp    8051a66 <yyparse+0x227f>
 805132f:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8051335:	83 ec 08             	sub    $0x8,%esp
 8051338:	50                   	push   %eax
 8051339:	68 74 6e 05 08       	push   $0x8056e74
 805133e:	e8 f5 77 ff ff       	call   8048b38 <createNode>
 8051343:	83 c4 10             	add    $0x10,%esp
 8051346:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 805134c:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051352:	83 e8 08             	sub    $0x8,%eax
 8051355:	8b 10                	mov    (%eax),%edx
 8051357:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805135d:	83 ec 08             	sub    $0x8,%esp
 8051360:	52                   	push   %edx
 8051361:	50                   	push   %eax
 8051362:	e8 54 78 ff ff       	call   8048bbb <addChild>
 8051367:	83 c4 10             	add    $0x10,%esp
 805136a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051370:	83 e8 04             	sub    $0x4,%eax
 8051373:	8b 10                	mov    (%eax),%edx
 8051375:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805137b:	83 ec 08             	sub    $0x8,%esp
 805137e:	52                   	push   %edx
 805137f:	50                   	push   %eax
 8051380:	e8 36 78 ff ff       	call   8048bbb <addChild>
 8051385:	83 c4 10             	add    $0x10,%esp
 8051388:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805138e:	8b 10                	mov    (%eax),%edx
 8051390:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051396:	83 ec 08             	sub    $0x8,%esp
 8051399:	52                   	push   %edx
 805139a:	50                   	push   %eax
 805139b:	e8 1b 78 ff ff       	call   8048bbb <addChild>
 80513a0:	83 c4 10             	add    $0x10,%esp
 80513a3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80513a9:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 80513b0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80513b6:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 80513bd:	e9 a4 06 00 00       	jmp    8051a66 <yyparse+0x227f>
 80513c2:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80513c8:	83 ec 08             	sub    $0x8,%esp
 80513cb:	50                   	push   %eax
 80513cc:	68 74 6e 05 08       	push   $0x8056e74
 80513d1:	e8 62 77 ff ff       	call   8048b38 <createNode>
 80513d6:	83 c4 10             	add    $0x10,%esp
 80513d9:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80513df:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80513e5:	83 e8 08             	sub    $0x8,%eax
 80513e8:	8b 10                	mov    (%eax),%edx
 80513ea:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80513f0:	83 ec 08             	sub    $0x8,%esp
 80513f3:	52                   	push   %edx
 80513f4:	50                   	push   %eax
 80513f5:	e8 c1 77 ff ff       	call   8048bbb <addChild>
 80513fa:	83 c4 10             	add    $0x10,%esp
 80513fd:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051403:	83 e8 04             	sub    $0x4,%eax
 8051406:	8b 10                	mov    (%eax),%edx
 8051408:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805140e:	83 ec 08             	sub    $0x8,%esp
 8051411:	52                   	push   %edx
 8051412:	50                   	push   %eax
 8051413:	e8 a3 77 ff ff       	call   8048bbb <addChild>
 8051418:	83 c4 10             	add    $0x10,%esp
 805141b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051421:	8b 10                	mov    (%eax),%edx
 8051423:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051429:	83 ec 08             	sub    $0x8,%esp
 805142c:	52                   	push   %edx
 805142d:	50                   	push   %eax
 805142e:	e8 88 77 ff ff       	call   8048bbb <addChild>
 8051433:	83 c4 10             	add    $0x10,%esp
 8051436:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805143c:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8051443:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051449:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 8051450:	e9 11 06 00 00       	jmp    8051a66 <yyparse+0x227f>
 8051455:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805145b:	83 ec 08             	sub    $0x8,%esp
 805145e:	50                   	push   %eax
 805145f:	68 74 6e 05 08       	push   $0x8056e74
 8051464:	e8 cf 76 ff ff       	call   8048b38 <createNode>
 8051469:	83 c4 10             	add    $0x10,%esp
 805146c:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8051472:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051478:	83 e8 08             	sub    $0x8,%eax
 805147b:	8b 10                	mov    (%eax),%edx
 805147d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051483:	83 ec 08             	sub    $0x8,%esp
 8051486:	52                   	push   %edx
 8051487:	50                   	push   %eax
 8051488:	e8 2e 77 ff ff       	call   8048bbb <addChild>
 805148d:	83 c4 10             	add    $0x10,%esp
 8051490:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051496:	83 e8 04             	sub    $0x4,%eax
 8051499:	8b 10                	mov    (%eax),%edx
 805149b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80514a1:	83 ec 08             	sub    $0x8,%esp
 80514a4:	52                   	push   %edx
 80514a5:	50                   	push   %eax
 80514a6:	e8 10 77 ff ff       	call   8048bbb <addChild>
 80514ab:	83 c4 10             	add    $0x10,%esp
 80514ae:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80514b4:	8b 10                	mov    (%eax),%edx
 80514b6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80514bc:	83 ec 08             	sub    $0x8,%esp
 80514bf:	52                   	push   %edx
 80514c0:	50                   	push   %eax
 80514c1:	e8 f5 76 ff ff       	call   8048bbb <addChild>
 80514c6:	83 c4 10             	add    $0x10,%esp
 80514c9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80514cf:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 80514d6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80514dc:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 80514e3:	e9 7e 05 00 00       	jmp    8051a66 <yyparse+0x227f>
 80514e8:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80514ee:	83 ec 08             	sub    $0x8,%esp
 80514f1:	50                   	push   %eax
 80514f2:	68 74 6e 05 08       	push   $0x8056e74
 80514f7:	e8 3c 76 ff ff       	call   8048b38 <createNode>
 80514fc:	83 c4 10             	add    $0x10,%esp
 80514ff:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8051505:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805150b:	83 e8 04             	sub    $0x4,%eax
 805150e:	8b 10                	mov    (%eax),%edx
 8051510:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051516:	83 ec 08             	sub    $0x8,%esp
 8051519:	52                   	push   %edx
 805151a:	50                   	push   %eax
 805151b:	e8 9b 76 ff ff       	call   8048bbb <addChild>
 8051520:	83 c4 10             	add    $0x10,%esp
 8051523:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051529:	8b 10                	mov    (%eax),%edx
 805152b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051531:	83 ec 08             	sub    $0x8,%esp
 8051534:	52                   	push   %edx
 8051535:	50                   	push   %eax
 8051536:	e8 80 76 ff ff       	call   8048bbb <addChild>
 805153b:	83 c4 10             	add    $0x10,%esp
 805153e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051544:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 805154b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051551:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 8051558:	e9 09 05 00 00       	jmp    8051a66 <yyparse+0x227f>
 805155d:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8051563:	83 ec 08             	sub    $0x8,%esp
 8051566:	50                   	push   %eax
 8051567:	68 74 6e 05 08       	push   $0x8056e74
 805156c:	e8 c7 75 ff ff       	call   8048b38 <createNode>
 8051571:	83 c4 10             	add    $0x10,%esp
 8051574:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 805157a:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051580:	83 e8 04             	sub    $0x4,%eax
 8051583:	8b 10                	mov    (%eax),%edx
 8051585:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805158b:	83 ec 08             	sub    $0x8,%esp
 805158e:	52                   	push   %edx
 805158f:	50                   	push   %eax
 8051590:	e8 26 76 ff ff       	call   8048bbb <addChild>
 8051595:	83 c4 10             	add    $0x10,%esp
 8051598:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805159e:	8b 10                	mov    (%eax),%edx
 80515a0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80515a6:	83 ec 08             	sub    $0x8,%esp
 80515a9:	52                   	push   %edx
 80515aa:	50                   	push   %eax
 80515ab:	e8 0b 76 ff ff       	call   8048bbb <addChild>
 80515b0:	83 c4 10             	add    $0x10,%esp
 80515b3:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80515b9:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 80515c0:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80515c6:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 80515cd:	e9 94 04 00 00       	jmp    8051a66 <yyparse+0x227f>
 80515d2:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80515d8:	83 ec 08             	sub    $0x8,%esp
 80515db:	50                   	push   %eax
 80515dc:	68 74 6e 05 08       	push   $0x8056e74
 80515e1:	e8 52 75 ff ff       	call   8048b38 <createNode>
 80515e6:	83 c4 10             	add    $0x10,%esp
 80515e9:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80515ef:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80515f5:	83 e8 0c             	sub    $0xc,%eax
 80515f8:	8b 10                	mov    (%eax),%edx
 80515fa:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051600:	83 ec 08             	sub    $0x8,%esp
 8051603:	52                   	push   %edx
 8051604:	50                   	push   %eax
 8051605:	e8 b1 75 ff ff       	call   8048bbb <addChild>
 805160a:	83 c4 10             	add    $0x10,%esp
 805160d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051613:	83 e8 08             	sub    $0x8,%eax
 8051616:	8b 10                	mov    (%eax),%edx
 8051618:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805161e:	83 ec 08             	sub    $0x8,%esp
 8051621:	52                   	push   %edx
 8051622:	50                   	push   %eax
 8051623:	e8 93 75 ff ff       	call   8048bbb <addChild>
 8051628:	83 c4 10             	add    $0x10,%esp
 805162b:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051631:	83 e8 04             	sub    $0x4,%eax
 8051634:	8b 10                	mov    (%eax),%edx
 8051636:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805163c:	83 ec 08             	sub    $0x8,%esp
 805163f:	52                   	push   %edx
 8051640:	50                   	push   %eax
 8051641:	e8 75 75 ff ff       	call   8048bbb <addChild>
 8051646:	83 c4 10             	add    $0x10,%esp
 8051649:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805164f:	8b 10                	mov    (%eax),%edx
 8051651:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051657:	83 ec 08             	sub    $0x8,%esp
 805165a:	52                   	push   %edx
 805165b:	50                   	push   %eax
 805165c:	e8 5a 75 ff ff       	call   8048bbb <addChild>
 8051661:	83 c4 10             	add    $0x10,%esp
 8051664:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805166a:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8051671:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051677:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 805167e:	e9 e3 03 00 00       	jmp    8051a66 <yyparse+0x227f>
 8051683:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8051689:	83 ec 08             	sub    $0x8,%esp
 805168c:	50                   	push   %eax
 805168d:	68 74 6e 05 08       	push   $0x8056e74
 8051692:	e8 a1 74 ff ff       	call   8048b38 <createNode>
 8051697:	83 c4 10             	add    $0x10,%esp
 805169a:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80516a0:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80516a6:	83 e8 08             	sub    $0x8,%eax
 80516a9:	8b 10                	mov    (%eax),%edx
 80516ab:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80516b1:	83 ec 08             	sub    $0x8,%esp
 80516b4:	52                   	push   %edx
 80516b5:	50                   	push   %eax
 80516b6:	e8 00 75 ff ff       	call   8048bbb <addChild>
 80516bb:	83 c4 10             	add    $0x10,%esp
 80516be:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80516c4:	83 e8 04             	sub    $0x4,%eax
 80516c7:	8b 10                	mov    (%eax),%edx
 80516c9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80516cf:	83 ec 08             	sub    $0x8,%esp
 80516d2:	52                   	push   %edx
 80516d3:	50                   	push   %eax
 80516d4:	e8 e2 74 ff ff       	call   8048bbb <addChild>
 80516d9:	83 c4 10             	add    $0x10,%esp
 80516dc:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80516e2:	8b 10                	mov    (%eax),%edx
 80516e4:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80516ea:	83 ec 08             	sub    $0x8,%esp
 80516ed:	52                   	push   %edx
 80516ee:	50                   	push   %eax
 80516ef:	e8 c7 74 ff ff       	call   8048bbb <addChild>
 80516f4:	83 c4 10             	add    $0x10,%esp
 80516f7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80516fd:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8051704:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805170a:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 8051711:	e9 50 03 00 00       	jmp    8051a66 <yyparse+0x227f>
 8051716:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805171c:	83 ec 08             	sub    $0x8,%esp
 805171f:	50                   	push   %eax
 8051720:	68 74 6e 05 08       	push   $0x8056e74
 8051725:	e8 0e 74 ff ff       	call   8048b38 <createNode>
 805172a:	83 c4 10             	add    $0x10,%esp
 805172d:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8051733:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051739:	83 e8 0c             	sub    $0xc,%eax
 805173c:	8b 10                	mov    (%eax),%edx
 805173e:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051744:	83 ec 08             	sub    $0x8,%esp
 8051747:	52                   	push   %edx
 8051748:	50                   	push   %eax
 8051749:	e8 6d 74 ff ff       	call   8048bbb <addChild>
 805174e:	83 c4 10             	add    $0x10,%esp
 8051751:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051757:	83 e8 08             	sub    $0x8,%eax
 805175a:	8b 10                	mov    (%eax),%edx
 805175c:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051762:	83 ec 08             	sub    $0x8,%esp
 8051765:	52                   	push   %edx
 8051766:	50                   	push   %eax
 8051767:	e8 4f 74 ff ff       	call   8048bbb <addChild>
 805176c:	83 c4 10             	add    $0x10,%esp
 805176f:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051775:	83 e8 04             	sub    $0x4,%eax
 8051778:	8b 10                	mov    (%eax),%edx
 805177a:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051780:	83 ec 08             	sub    $0x8,%esp
 8051783:	52                   	push   %edx
 8051784:	50                   	push   %eax
 8051785:	e8 31 74 ff ff       	call   8048bbb <addChild>
 805178a:	83 c4 10             	add    $0x10,%esp
 805178d:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051793:	8b 10                	mov    (%eax),%edx
 8051795:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805179b:	83 ec 08             	sub    $0x8,%esp
 805179e:	52                   	push   %edx
 805179f:	50                   	push   %eax
 80517a0:	e8 16 74 ff ff       	call   8048bbb <addChild>
 80517a5:	83 c4 10             	add    $0x10,%esp
 80517a8:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80517ae:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 80517b5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80517bb:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 80517c2:	e9 9f 02 00 00       	jmp    8051a66 <yyparse+0x227f>
 80517c7:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80517cd:	83 ec 08             	sub    $0x8,%esp
 80517d0:	50                   	push   %eax
 80517d1:	68 74 6e 05 08       	push   $0x8056e74
 80517d6:	e8 5d 73 ff ff       	call   8048b38 <createNode>
 80517db:	83 c4 10             	add    $0x10,%esp
 80517de:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80517e4:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80517ea:	83 e8 08             	sub    $0x8,%eax
 80517ed:	8b 10                	mov    (%eax),%edx
 80517ef:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80517f5:	83 ec 08             	sub    $0x8,%esp
 80517f8:	52                   	push   %edx
 80517f9:	50                   	push   %eax
 80517fa:	e8 bc 73 ff ff       	call   8048bbb <addChild>
 80517ff:	83 c4 10             	add    $0x10,%esp
 8051802:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051808:	83 e8 04             	sub    $0x4,%eax
 805180b:	8b 10                	mov    (%eax),%edx
 805180d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051813:	83 ec 08             	sub    $0x8,%esp
 8051816:	52                   	push   %edx
 8051817:	50                   	push   %eax
 8051818:	e8 9e 73 ff ff       	call   8048bbb <addChild>
 805181d:	83 c4 10             	add    $0x10,%esp
 8051820:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051826:	8b 10                	mov    (%eax),%edx
 8051828:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805182e:	83 ec 08             	sub    $0x8,%esp
 8051831:	52                   	push   %edx
 8051832:	50                   	push   %eax
 8051833:	e8 83 73 ff ff       	call   8048bbb <addChild>
 8051838:	83 c4 10             	add    $0x10,%esp
 805183b:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051841:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8051848:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 805184e:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 8051855:	e9 0c 02 00 00       	jmp    8051a66 <yyparse+0x227f>
 805185a:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8051860:	83 ec 08             	sub    $0x8,%esp
 8051863:	50                   	push   %eax
 8051864:	68 74 6e 05 08       	push   $0x8056e74
 8051869:	e8 ca 72 ff ff       	call   8048b38 <createNode>
 805186e:	83 c4 10             	add    $0x10,%esp
 8051871:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8051877:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805187d:	8b 10                	mov    (%eax),%edx
 805187f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051885:	83 ec 08             	sub    $0x8,%esp
 8051888:	52                   	push   %edx
 8051889:	50                   	push   %eax
 805188a:	e8 2c 73 ff ff       	call   8048bbb <addChild>
 805188f:	83 c4 10             	add    $0x10,%esp
 8051892:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051898:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 805189f:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80518a5:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 80518ac:	e9 b5 01 00 00       	jmp    8051a66 <yyparse+0x227f>
 80518b1:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 80518b7:	83 ec 08             	sub    $0x8,%esp
 80518ba:	50                   	push   %eax
 80518bb:	68 74 6e 05 08       	push   $0x8056e74
 80518c0:	e8 73 72 ff ff       	call   8048b38 <createNode>
 80518c5:	83 c4 10             	add    $0x10,%esp
 80518c8:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 80518ce:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80518d4:	8b 10                	mov    (%eax),%edx
 80518d6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80518dc:	83 ec 08             	sub    $0x8,%esp
 80518df:	52                   	push   %edx
 80518e0:	50                   	push   %eax
 80518e1:	e8 d5 72 ff ff       	call   8048bbb <addChild>
 80518e6:	83 c4 10             	add    $0x10,%esp
 80518e9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80518ef:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 80518f6:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80518fc:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 8051903:	e9 5e 01 00 00       	jmp    8051a66 <yyparse+0x227f>
 8051908:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 805190e:	83 ec 08             	sub    $0x8,%esp
 8051911:	50                   	push   %eax
 8051912:	68 74 6e 05 08       	push   $0x8056e74
 8051917:	e8 1c 72 ff ff       	call   8048b38 <createNode>
 805191c:	83 c4 10             	add    $0x10,%esp
 805191f:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8051925:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 805192b:	8b 10                	mov    (%eax),%edx
 805192d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051933:	83 ec 08             	sub    $0x8,%esp
 8051936:	52                   	push   %edx
 8051937:	50                   	push   %eax
 8051938:	e8 7e 72 ff ff       	call   8048bbb <addChild>
 805193d:	83 c4 10             	add    $0x10,%esp
 8051940:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051946:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 805194d:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051953:	c7 40 04 32 00 00 00 	movl   $0x32,0x4(%eax)
 805195a:	e9 07 01 00 00       	jmp    8051a66 <yyparse+0x227f>
 805195f:	83 ec 0c             	sub    $0xc,%esp
 8051962:	68 17 6e 05 08       	push   $0x8056e17
 8051967:	e8 8d 32 00 00       	call   8054bf9 <yyerror>
 805196c:	83 c4 10             	add    $0x10,%esp
 805196f:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 8051974:	83 c0 01             	add    $0x1,%eax
 8051977:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 805197c:	e9 e5 00 00 00       	jmp    8051a66 <yyparse+0x227f>
 8051981:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8051987:	83 ec 08             	sub    $0x8,%esp
 805198a:	50                   	push   %eax
 805198b:	68 78 6e 05 08       	push   $0x8056e78
 8051990:	e8 a3 71 ff ff       	call   8048b38 <createNode>
 8051995:	83 c4 10             	add    $0x10,%esp
 8051998:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 805199e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80519a4:	83 e8 08             	sub    $0x8,%eax
 80519a7:	8b 10                	mov    (%eax),%edx
 80519a9:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80519af:	83 ec 08             	sub    $0x8,%esp
 80519b2:	52                   	push   %edx
 80519b3:	50                   	push   %eax
 80519b4:	e8 02 72 ff ff       	call   8048bbb <addChild>
 80519b9:	83 c4 10             	add    $0x10,%esp
 80519bc:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80519c2:	83 e8 04             	sub    $0x4,%eax
 80519c5:	8b 10                	mov    (%eax),%edx
 80519c7:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80519cd:	83 ec 08             	sub    $0x8,%esp
 80519d0:	52                   	push   %edx
 80519d1:	50                   	push   %eax
 80519d2:	e8 e4 71 ff ff       	call   8048bbb <addChild>
 80519d7:	83 c4 10             	add    $0x10,%esp
 80519da:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 80519e0:	8b 10                	mov    (%eax),%edx
 80519e2:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80519e8:	83 ec 08             	sub    $0x8,%esp
 80519eb:	52                   	push   %edx
 80519ec:	50                   	push   %eax
 80519ed:	e8 c9 71 ff ff       	call   8048bbb <addChild>
 80519f2:	83 c4 10             	add    $0x10,%esp
 80519f5:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 80519fb:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8051a02:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051a08:	c7 40 04 33 00 00 00 	movl   $0x33,0x4(%eax)
 8051a0f:	eb 55                	jmp    8051a66 <yyparse+0x227f>
 8051a11:	8b 85 84 ee ff ff    	mov    -0x117c(%ebp),%eax
 8051a17:	83 ec 08             	sub    $0x8,%esp
 8051a1a:	50                   	push   %eax
 8051a1b:	68 78 6e 05 08       	push   $0x8056e78
 8051a20:	e8 13 71 ff ff       	call   8048b38 <createNode>
 8051a25:	83 c4 10             	add    $0x10,%esp
 8051a28:	89 85 34 ee ff ff    	mov    %eax,-0x11cc(%ebp)
 8051a2e:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051a34:	8b 10                	mov    (%eax),%edx
 8051a36:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051a3c:	83 ec 08             	sub    $0x8,%esp
 8051a3f:	52                   	push   %edx
 8051a40:	50                   	push   %eax
 8051a41:	e8 75 71 ff ff       	call   8048bbb <addChild>
 8051a46:	83 c4 10             	add    $0x10,%esp
 8051a49:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051a4f:	c7 40 04 06 00 00 00 	movl   $0x6,0x4(%eax)
 8051a56:	8b 85 34 ee ff ff    	mov    -0x11cc(%ebp),%eax
 8051a5c:	c7 40 04 33 00 00 00 	movl   $0x33,0x4(%eax)
 8051a63:	eb 01                	jmp    8051a66 <yyparse+0x227f>
 8051a65:	90                   	nop
 8051a66:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 8051a6c:	c1 e0 02             	shl    $0x2,%eax
 8051a6f:	f7 d8                	neg    %eax
 8051a71:	01 85 4c ee ff ff    	add    %eax,-0x11b4(%ebp)
 8051a77:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 8051a7d:	01 c0                	add    %eax,%eax
 8051a7f:	f7 d8                	neg    %eax
 8051a81:	01 85 44 ee ff ff    	add    %eax,-0x11bc(%ebp)
 8051a87:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 8051a8d:	c1 e0 04             	shl    $0x4,%eax
 8051a90:	f7 d8                	neg    %eax
 8051a92:	01 85 54 ee ff ff    	add    %eax,-0x11ac(%ebp)
 8051a98:	c7 85 68 ee ff ff 00 	movl   $0x0,-0x1198(%ebp)
 8051a9f:	00 00 00 
 8051aa2:	83 85 4c ee ff ff 04 	addl   $0x4,-0x11b4(%ebp)
 8051aa9:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051aaf:	8b 95 34 ee ff ff    	mov    -0x11cc(%ebp),%edx
 8051ab5:	89 10                	mov    %edx,(%eax)
 8051ab7:	83 85 54 ee ff ff 10 	addl   $0x10,-0x11ac(%ebp)
 8051abe:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 8051ac4:	8b 95 84 ee ff ff    	mov    -0x117c(%ebp),%edx
 8051aca:	89 10                	mov    %edx,(%eax)
 8051acc:	8b 95 88 ee ff ff    	mov    -0x1178(%ebp),%edx
 8051ad2:	89 50 04             	mov    %edx,0x4(%eax)
 8051ad5:	8b 95 8c ee ff ff    	mov    -0x1174(%ebp),%edx
 8051adb:	89 50 08             	mov    %edx,0x8(%eax)
 8051ade:	8b 95 90 ee ff ff    	mov    -0x1170(%ebp),%edx
 8051ae4:	89 50 0c             	mov    %edx,0xc(%eax)
 8051ae7:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 8051aed:	05 00 6d 05 08       	add    $0x8056d00,%eax
 8051af2:	0f b6 00             	movzbl (%eax),%eax
 8051af5:	0f b6 c0             	movzbl %al,%eax
 8051af8:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 8051afe:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 8051b04:	83 e8 20             	sub    $0x20,%eax
 8051b07:	0f b7 84 00 e0 69 05 	movzwl 0x80569e0(%eax,%eax,1),%eax
 8051b0e:	08 
 8051b0f:	0f bf d0             	movswl %ax,%edx
 8051b12:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 8051b18:	0f b7 00             	movzwl (%eax),%eax
 8051b1b:	98                   	cwtl   
 8051b1c:	01 d0                	add    %edx,%eax
 8051b1e:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8051b24:	83 bd 38 ee ff ff 00 	cmpl   $0x0,-0x11c8(%ebp)
 8051b2b:	78 48                	js     8051b75 <yyparse+0x238e>
 8051b2d:	81 bd 38 ee ff ff 0a 	cmpl   $0x10a,-0x11c8(%ebp)
 8051b34:	01 00 00 
 8051b37:	7f 3c                	jg     8051b75 <yyparse+0x238e>
 8051b39:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 8051b3f:	05 60 6b 05 08       	add    $0x8056b60,%eax
 8051b44:	0f b6 00             	movzbl (%eax),%eax
 8051b47:	66 0f be d0          	movsbw %al,%dx
 8051b4b:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 8051b51:	0f b7 00             	movzwl (%eax),%eax
 8051b54:	66 39 c2             	cmp    %ax,%dx
 8051b57:	75 1c                	jne    8051b75 <yyparse+0x238e>
 8051b59:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 8051b5f:	05 40 6a 05 08       	add    $0x8056a40,%eax
 8051b64:	0f b6 00             	movzbl (%eax),%eax
 8051b67:	0f be c0             	movsbl %al,%eax
 8051b6a:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8051b70:	e9 3f dd ff ff       	jmp    804f8b4 <yyparse+0xcd>
 8051b75:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 8051b7b:	83 e8 20             	sub    $0x20,%eax
 8051b7e:	0f b6 80 0c 6a 05 08 	movzbl 0x8056a0c(%eax),%eax
 8051b85:	0f be c0             	movsbl %al,%eax
 8051b88:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8051b8e:	e9 21 dd ff ff       	jmp    804f8b4 <yyparse+0xcd>
 8051b93:	90                   	nop
 8051b94:	a1 88 b7 05 08       	mov    0x805b788,%eax
 8051b99:	83 f8 fe             	cmp    $0xfffffffe,%eax
 8051b9c:	74 24                	je     8051bc2 <yyparse+0x23db>
 8051b9e:	a1 88 b7 05 08       	mov    0x805b788,%eax
 8051ba3:	3d 1e 01 00 00       	cmp    $0x11e,%eax
 8051ba8:	77 11                	ja     8051bbb <yyparse+0x23d4>
 8051baa:	a1 88 b7 05 08       	mov    0x805b788,%eax
 8051baf:	0f b6 80 40 67 05 08 	movzbl 0x8056740(%eax),%eax
 8051bb6:	0f b6 c0             	movzbl %al,%eax
 8051bb9:	eb 0c                	jmp    8051bc7 <yyparse+0x23e0>
 8051bbb:	b8 02 00 00 00       	mov    $0x2,%eax
 8051bc0:	eb 05                	jmp    8051bc7 <yyparse+0x23e0>
 8051bc2:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
 8051bc7:	89 85 64 ee ff ff    	mov    %eax,-0x119c(%ebp)
 8051bcd:	83 bd 3c ee ff ff 00 	cmpl   $0x0,-0x11c4(%ebp)
 8051bd4:	75 1d                	jne    8051bf3 <yyparse+0x240c>
 8051bd6:	a1 80 b7 05 08       	mov    0x805b780,%eax
 8051bdb:	83 c0 01             	add    $0x1,%eax
 8051bde:	a3 80 b7 05 08       	mov    %eax,0x805b780
 8051be3:	83 ec 0c             	sub    $0xc,%esp
 8051be6:	68 7d 6e 05 08       	push   $0x8056e7d
 8051beb:	e8 09 30 00 00       	call   8054bf9 <yyerror>
 8051bf0:	83 c4 10             	add    $0x10,%esp
 8051bf3:	a1 b0 b0 05 08       	mov    0x805b0b0,%eax
 8051bf8:	89 85 a4 ee ff ff    	mov    %eax,-0x115c(%ebp)
 8051bfe:	a1 b4 b0 05 08       	mov    0x805b0b4,%eax
 8051c03:	89 85 a8 ee ff ff    	mov    %eax,-0x1158(%ebp)
 8051c09:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8051c0e:	89 85 ac ee ff ff    	mov    %eax,-0x1154(%ebp)
 8051c14:	a1 bc b0 05 08       	mov    0x805b0bc,%eax
 8051c19:	89 85 b0 ee ff ff    	mov    %eax,-0x1150(%ebp)
 8051c1f:	83 bd 3c ee ff ff 03 	cmpl   $0x3,-0x11c4(%ebp)
 8051c26:	75 3e                	jne    8051c66 <yyparse+0x247f>
 8051c28:	a1 88 b7 05 08       	mov    0x805b788,%eax
 8051c2d:	85 c0                	test   %eax,%eax
 8051c2f:	7f 0e                	jg     8051c3f <yyparse+0x2458>
 8051c31:	a1 88 b7 05 08       	mov    0x805b788,%eax
 8051c36:	85 c0                	test   %eax,%eax
 8051c38:	75 2c                	jne    8051c66 <yyparse+0x247f>
 8051c3a:	e9 f6 01 00 00       	jmp    8051e35 <yyparse+0x264e>
 8051c3f:	68 b0 b0 05 08       	push   $0x805b0b0
 8051c44:	68 90 b7 05 08       	push   $0x805b790
 8051c49:	ff b5 64 ee ff ff    	pushl  -0x119c(%ebp)
 8051c4f:	68 8a 6e 05 08       	push   $0x8056e8a
 8051c54:	e8 7b db ff ff       	call   804f7d4 <yydestruct>
 8051c59:	83 c4 10             	add    $0x10,%esp
 8051c5c:	c7 05 88 b7 05 08 fe 	movl   $0xfffffffe,0x805b788
 8051c63:	ff ff ff 
 8051c66:	90                   	nop
 8051c67:	c7 85 3c ee ff ff 03 	movl   $0x3,-0x11c4(%ebp)
 8051c6e:	00 00 00 
 8051c71:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 8051c77:	0f b7 84 00 60 68 05 	movzwl 0x8056860(%eax,%eax,1),%eax
 8051c7e:	08 
 8051c7f:	98                   	cwtl   
 8051c80:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 8051c86:	83 bd 5c ee ff ff c5 	cmpl   $0xffffffc5,-0x11a4(%ebp)
 8051c8d:	74 52                	je     8051ce1 <yyparse+0x24fa>
 8051c8f:	83 85 5c ee ff ff 01 	addl   $0x1,-0x11a4(%ebp)
 8051c96:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 8051c9d:	78 42                	js     8051ce1 <yyparse+0x24fa>
 8051c9f:	81 bd 5c ee ff ff 0a 	cmpl   $0x10a,-0x11a4(%ebp)
 8051ca6:	01 00 00 
 8051ca9:	7f 36                	jg     8051ce1 <yyparse+0x24fa>
 8051cab:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 8051cb1:	05 60 6b 05 08       	add    $0x8056b60,%eax
 8051cb6:	0f b6 00             	movzbl (%eax),%eax
 8051cb9:	3c 01                	cmp    $0x1,%al
 8051cbb:	75 24                	jne    8051ce1 <yyparse+0x24fa>
 8051cbd:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 8051cc3:	05 40 6a 05 08       	add    $0x8056a40,%eax
 8051cc8:	0f b6 00             	movzbl (%eax),%eax
 8051ccb:	0f be c0             	movsbl %al,%eax
 8051cce:	89 85 5c ee ff ff    	mov    %eax,-0x11a4(%ebp)
 8051cd4:	83 bd 5c ee ff ff 00 	cmpl   $0x0,-0x11a4(%ebp)
 8051cdb:	0f 8f 90 00 00 00    	jg     8051d71 <yyparse+0x258a>
 8051ce1:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 8051ce7:	3b 85 40 ee ff ff    	cmp    -0x11c0(%ebp),%eax
 8051ced:	0f 84 41 01 00 00    	je     8051e34 <yyparse+0x264d>
 8051cf3:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 8051cf9:	8b 10                	mov    (%eax),%edx
 8051cfb:	89 95 a4 ee ff ff    	mov    %edx,-0x115c(%ebp)
 8051d01:	8b 50 04             	mov    0x4(%eax),%edx
 8051d04:	89 95 a8 ee ff ff    	mov    %edx,-0x1158(%ebp)
 8051d0a:	8b 50 08             	mov    0x8(%eax),%edx
 8051d0d:	89 95 ac ee ff ff    	mov    %edx,-0x1154(%ebp)
 8051d13:	8b 40 0c             	mov    0xc(%eax),%eax
 8051d16:	89 85 b0 ee ff ff    	mov    %eax,-0x1150(%ebp)
 8051d1c:	8b 85 38 ee ff ff    	mov    -0x11c8(%ebp),%eax
 8051d22:	05 80 6c 05 08       	add    $0x8056c80,%eax
 8051d27:	0f b6 00             	movzbl (%eax),%eax
 8051d2a:	0f b6 c0             	movzbl %al,%eax
 8051d2d:	ff b5 54 ee ff ff    	pushl  -0x11ac(%ebp)
 8051d33:	ff b5 4c ee ff ff    	pushl  -0x11b4(%ebp)
 8051d39:	50                   	push   %eax
 8051d3a:	68 9c 6e 05 08       	push   $0x8056e9c
 8051d3f:	e8 90 da ff ff       	call   804f7d4 <yydestruct>
 8051d44:	83 c4 10             	add    $0x10,%esp
 8051d47:	83 ad 4c ee ff ff 04 	subl   $0x4,-0x11b4(%ebp)
 8051d4e:	83 ad 44 ee ff ff 02 	subl   $0x2,-0x11bc(%ebp)
 8051d55:	83 ad 54 ee ff ff 10 	subl   $0x10,-0x11ac(%ebp)
 8051d5c:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 8051d62:	0f b7 00             	movzwl (%eax),%eax
 8051d65:	98                   	cwtl   
 8051d66:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8051d6c:	e9 00 ff ff ff       	jmp    8051c71 <yyparse+0x248a>
 8051d71:	90                   	nop
 8051d72:	83 85 4c ee ff ff 04 	addl   $0x4,-0x11b4(%ebp)
 8051d79:	8b 85 4c ee ff ff    	mov    -0x11b4(%ebp),%eax
 8051d7f:	8b 15 90 b7 05 08    	mov    0x805b790,%edx
 8051d85:	89 10                	mov    %edx,(%eax)
 8051d87:	a1 b0 b0 05 08       	mov    0x805b0b0,%eax
 8051d8c:	89 85 b4 ee ff ff    	mov    %eax,-0x114c(%ebp)
 8051d92:	a1 b4 b0 05 08       	mov    0x805b0b4,%eax
 8051d97:	89 85 b8 ee ff ff    	mov    %eax,-0x1148(%ebp)
 8051d9d:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8051da2:	89 85 bc ee ff ff    	mov    %eax,-0x1144(%ebp)
 8051da8:	a1 bc b0 05 08       	mov    0x805b0bc,%eax
 8051dad:	89 85 c0 ee ff ff    	mov    %eax,-0x1140(%ebp)
 8051db3:	8b 85 a4 ee ff ff    	mov    -0x115c(%ebp),%eax
 8051db9:	89 85 84 ee ff ff    	mov    %eax,-0x117c(%ebp)
 8051dbf:	8b 85 a8 ee ff ff    	mov    -0x1158(%ebp),%eax
 8051dc5:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%ebp)
 8051dcb:	8b 85 bc ee ff ff    	mov    -0x1144(%ebp),%eax
 8051dd1:	89 85 8c ee ff ff    	mov    %eax,-0x1174(%ebp)
 8051dd7:	8b 85 c0 ee ff ff    	mov    -0x1140(%ebp),%eax
 8051ddd:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%ebp)
 8051de3:	83 85 54 ee ff ff 10 	addl   $0x10,-0x11ac(%ebp)
 8051dea:	8b 85 54 ee ff ff    	mov    -0x11ac(%ebp),%eax
 8051df0:	8b 95 84 ee ff ff    	mov    -0x117c(%ebp),%edx
 8051df6:	89 10                	mov    %edx,(%eax)
 8051df8:	8b 95 88 ee ff ff    	mov    -0x1178(%ebp),%edx
 8051dfe:	89 50 04             	mov    %edx,0x4(%eax)
 8051e01:	8b 95 8c ee ff ff    	mov    -0x1174(%ebp),%edx
 8051e07:	89 50 08             	mov    %edx,0x8(%eax)
 8051e0a:	8b 95 90 ee ff ff    	mov    -0x1170(%ebp),%edx
 8051e10:	89 50 0c             	mov    %edx,0xc(%eax)
 8051e13:	8b 85 5c ee ff ff    	mov    -0x11a4(%ebp),%eax
 8051e19:	89 85 38 ee ff ff    	mov    %eax,-0x11c8(%ebp)
 8051e1f:	e9 90 da ff ff       	jmp    804f8b4 <yyparse+0xcd>
 8051e24:	90                   	nop
 8051e25:	c7 85 60 ee ff ff 00 	movl   $0x0,-0x11a0(%ebp)
 8051e2c:	00 00 00 
 8051e2f:	eb 2e                	jmp    8051e5f <yyparse+0x2678>
 8051e31:	90                   	nop
 8051e32:	eb 01                	jmp    8051e35 <yyparse+0x264e>
 8051e34:	90                   	nop
 8051e35:	c7 85 60 ee ff ff 01 	movl   $0x1,-0x11a0(%ebp)
 8051e3c:	00 00 00 
 8051e3f:	eb 1e                	jmp    8051e5f <yyparse+0x2678>
 8051e41:	90                   	nop
 8051e42:	eb 01                	jmp    8051e45 <yyparse+0x265e>
 8051e44:	90                   	nop
 8051e45:	83 ec 0c             	sub    $0xc,%esp
 8051e48:	68 ab 6e 05 08       	push   $0x8056eab
 8051e4d:	e8 a7 2d 00 00       	call   8054bf9 <yyerror>
 8051e52:	83 c4 10             	add    $0x10,%esp
 8051e55:	c7 85 60 ee ff ff 02 	movl   $0x2,-0x11a0(%ebp)
 8051e5c:	00 00 00 
 8051e5f:	a1 88 b7 05 08       	mov    0x805b788,%eax
 8051e64:	83 f8 fe             	cmp    $0xfffffffe,%eax
 8051e67:	74 45                	je     8051eae <yyparse+0x26c7>
 8051e69:	a1 88 b7 05 08       	mov    0x805b788,%eax
 8051e6e:	3d 1e 01 00 00       	cmp    $0x11e,%eax
 8051e73:	77 11                	ja     8051e86 <yyparse+0x269f>
 8051e75:	a1 88 b7 05 08       	mov    0x805b788,%eax
 8051e7a:	0f b6 80 40 67 05 08 	movzbl 0x8056740(%eax),%eax
 8051e81:	0f b6 c0             	movzbl %al,%eax
 8051e84:	eb 05                	jmp    8051e8b <yyparse+0x26a4>
 8051e86:	b8 02 00 00 00       	mov    $0x2,%eax
 8051e8b:	89 85 64 ee ff ff    	mov    %eax,-0x119c(%ebp)
 8051e91:	68 b0 b0 05 08       	push   $0x805b0b0
 8051e96:	68 90 b7 05 08       	push   $0x805b790
 8051e9b:	ff b5 64 ee ff ff    	pushl  -0x119c(%ebp)
 8051ea1:	68 bc 6e 05 08       	push   $0x8056ebc
 8051ea6:	e8 29 d9 ff ff       	call   804f7d4 <yydestruct>
 8051eab:	83 c4 10             	add    $0x10,%esp
 8051eae:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 8051eb4:	c1 e0 02             	shl    $0x2,%eax
 8051eb7:	f7 d8                	neg    %eax
 8051eb9:	01 85 4c ee ff ff    	add    %eax,-0x11b4(%ebp)
 8051ebf:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 8051ec5:	01 c0                	add    %eax,%eax
 8051ec7:	f7 d8                	neg    %eax
 8051ec9:	01 85 44 ee ff ff    	add    %eax,-0x11bc(%ebp)
 8051ecf:	8b 85 68 ee ff ff    	mov    -0x1198(%ebp),%eax
 8051ed5:	c1 e0 04             	shl    $0x4,%eax
 8051ed8:	f7 d8                	neg    %eax
 8051eda:	01 85 54 ee ff ff    	add    %eax,-0x11ac(%ebp)
 8051ee0:	eb 43                	jmp    8051f25 <yyparse+0x273e>
 8051ee2:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 8051ee8:	0f b7 00             	movzwl (%eax),%eax
 8051eeb:	98                   	cwtl   
 8051eec:	0f b6 80 80 6c 05 08 	movzbl 0x8056c80(%eax),%eax
 8051ef3:	0f b6 c0             	movzbl %al,%eax
 8051ef6:	ff b5 54 ee ff ff    	pushl  -0x11ac(%ebp)
 8051efc:	ff b5 4c ee ff ff    	pushl  -0x11b4(%ebp)
 8051f02:	50                   	push   %eax
 8051f03:	68 da 6e 05 08       	push   $0x8056eda
 8051f08:	e8 c7 d8 ff ff       	call   804f7d4 <yydestruct>
 8051f0d:	83 c4 10             	add    $0x10,%esp
 8051f10:	83 ad 4c ee ff ff 04 	subl   $0x4,-0x11b4(%ebp)
 8051f17:	83 ad 44 ee ff ff 02 	subl   $0x2,-0x11bc(%ebp)
 8051f1e:	83 ad 54 ee ff ff 10 	subl   $0x10,-0x11ac(%ebp)
 8051f25:	8b 85 44 ee ff ff    	mov    -0x11bc(%ebp),%eax
 8051f2b:	3b 85 40 ee ff ff    	cmp    -0x11c0(%ebp),%eax
 8051f31:	75 af                	jne    8051ee2 <yyparse+0x26fb>
 8051f33:	8d 85 c4 ee ff ff    	lea    -0x113c(%ebp),%eax
 8051f39:	39 85 40 ee ff ff    	cmp    %eax,-0x11c0(%ebp)
 8051f3f:	74 11                	je     8051f52 <yyparse+0x276b>
 8051f41:	83 ec 0c             	sub    $0xc,%esp
 8051f44:	ff b5 40 ee ff ff    	pushl  -0x11c0(%ebp)
 8051f4a:	e8 a1 68 ff ff       	call   80487f0 <free@plt>
 8051f4f:	83 c4 10             	add    $0x10,%esp
 8051f52:	8b 85 60 ee ff ff    	mov    -0x11a0(%ebp),%eax
 8051f58:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8051f5b:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 8051f62:	74 05                	je     8051f69 <yyparse+0x2782>
 8051f64:	e8 c7 68 ff ff       	call   8048830 <__stack_chk_fail@plt>
 8051f69:	c9                   	leave  
 8051f6a:	c3                   	ret    

08051f6b <yylex>:
 8051f6b:	55                   	push   %ebp
 8051f6c:	89 e5                	mov    %esp,%ebp
 8051f6e:	53                   	push   %ebx
 8051f6f:	83 ec 34             	sub    $0x34,%esp
 8051f72:	a1 5c b1 05 08       	mov    0x805b15c,%eax
 8051f77:	85 c0                	test   %eax,%eax
 8051f79:	0f 85 95 00 00 00    	jne    8052014 <yylex+0xa9>
 8051f7f:	c7 05 5c b1 05 08 01 	movl   $0x1,0x805b15c
 8051f86:	00 00 00 
 8051f89:	a1 60 b1 05 08       	mov    0x805b160,%eax
 8051f8e:	85 c0                	test   %eax,%eax
 8051f90:	75 0a                	jne    8051f9c <yylex+0x31>
 8051f92:	c7 05 60 b1 05 08 01 	movl   $0x1,0x805b160
 8051f99:	00 00 00 
 8051f9c:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8051fa1:	85 c0                	test   %eax,%eax
 8051fa3:	75 0a                	jne    8051faf <yylex+0x44>
 8051fa5:	a1 00 b1 05 08       	mov    0x805b100,%eax
 8051faa:	a3 30 b1 05 08       	mov    %eax,0x805b130
 8051faf:	a1 34 b1 05 08       	mov    0x805b134,%eax
 8051fb4:	85 c0                	test   %eax,%eax
 8051fb6:	75 0a                	jne    8051fc2 <yylex+0x57>
 8051fb8:	a1 04 b1 05 08       	mov    0x805b104,%eax
 8051fbd:	a3 34 b1 05 08       	mov    %eax,0x805b134
 8051fc2:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8051fc7:	85 c0                	test   %eax,%eax
 8051fc9:	74 16                	je     8051fe1 <yylex+0x76>
 8051fcb:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8051fd0:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8051fd6:	c1 e2 02             	shl    $0x2,%edx
 8051fd9:	01 d0                	add    %edx,%eax
 8051fdb:	8b 00                	mov    (%eax),%eax
 8051fdd:	85 c0                	test   %eax,%eax
 8051fdf:	75 2e                	jne    805200f <yylex+0xa4>
 8051fe1:	e8 64 27 00 00       	call   805474a <yyensure_buffer_stack>
 8051fe6:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8051feb:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8051ff1:	c1 e2 02             	shl    $0x2,%edx
 8051ff4:	8d 1c 10             	lea    (%eax,%edx,1),%ebx
 8051ff7:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8051ffc:	83 ec 08             	sub    $0x8,%esp
 8051fff:	68 00 40 00 00       	push   $0x4000
 8052004:	50                   	push   %eax
 8052005:	e8 92 23 00 00       	call   805439c <yy_create_buffer>
 805200a:	83 c4 10             	add    $0x10,%esp
 805200d:	89 03                	mov    %eax,(%ebx)
 805200f:	e8 1e 23 00 00       	call   8054332 <yy_load_buffer_state>
 8052014:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8052019:	89 45 e0             	mov    %eax,-0x20(%ebp)
 805201c:	0f b6 15 50 b1 05 08 	movzbl 0x805b150,%edx
 8052023:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8052026:	88 10                	mov    %dl,(%eax)
 8052028:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805202b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 805202e:	a1 60 b1 05 08       	mov    0x805b160,%eax
 8052033:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8052036:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8052039:	0f b6 00             	movzbl (%eax),%eax
 805203c:	0f b6 c0             	movzbl %al,%eax
 805203f:	0f b6 80 c0 70 05 08 	movzbl 0x80570c0(%eax),%eax
 8052046:	88 45 d9             	mov    %al,-0x27(%ebp)
 8052049:	8b 45 dc             	mov    -0x24(%ebp),%eax
 805204c:	0f b7 84 00 00 70 05 	movzwl 0x8057000(%eax,%eax,1),%eax
 8052053:	08 
 8052054:	66 85 c0             	test   %ax,%ax
 8052057:	74 35                	je     805208e <yylex+0x123>
 8052059:	8b 45 dc             	mov    -0x24(%ebp),%eax
 805205c:	a3 68 b1 05 08       	mov    %eax,0x805b168
 8052061:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8052064:	a3 6c b1 05 08       	mov    %eax,0x805b16c
 8052069:	eb 23                	jmp    805208e <yylex+0x123>
 805206b:	8b 45 dc             	mov    -0x24(%ebp),%eax
 805206e:	0f b7 84 00 c0 72 05 	movzwl 0x80572c0(%eax,%eax,1),%eax
 8052075:	08 
 8052076:	98                   	cwtl   
 8052077:	89 45 dc             	mov    %eax,-0x24(%ebp)
 805207a:	83 7d dc 51          	cmpl   $0x51,-0x24(%ebp)
 805207e:	7e 0e                	jle    805208e <yylex+0x123>
 8052080:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
 8052084:	0f b6 80 c0 71 05 08 	movzbl 0x80571c0(%eax),%eax
 805208b:	88 45 d9             	mov    %al,-0x27(%ebp)
 805208e:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8052091:	0f b7 84 00 00 72 05 	movzwl 0x8057200(%eax,%eax,1),%eax
 8052098:	08 
 8052099:	0f b7 d0             	movzwl %ax,%edx
 805209c:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
 80520a0:	01 d0                	add    %edx,%eax
 80520a2:	0f b7 84 00 40 75 05 	movzwl 0x8057540(%eax,%eax,1),%eax
 80520a9:	08 
 80520aa:	98                   	cwtl   
 80520ab:	3b 45 dc             	cmp    -0x24(%ebp),%eax
 80520ae:	75 bb                	jne    805206b <yylex+0x100>
 80520b0:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80520b3:	0f b7 84 00 00 72 05 	movzwl 0x8057200(%eax,%eax,1),%eax
 80520ba:	08 
 80520bb:	0f b7 d0             	movzwl %ax,%edx
 80520be:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
 80520c2:	01 d0                	add    %edx,%eax
 80520c4:	0f b7 84 00 80 73 05 	movzwl 0x8057380(%eax,%eax,1),%eax
 80520cb:	08 
 80520cc:	0f b7 c0             	movzwl %ax,%eax
 80520cf:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80520d2:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 80520d6:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80520d9:	0f b7 84 00 00 72 05 	movzwl 0x8057200(%eax,%eax,1),%eax
 80520e0:	08 
 80520e1:	66 3d b0 00          	cmp    $0xb0,%ax
 80520e5:	0f 85 4b ff ff ff    	jne    8052036 <yylex+0xcb>
 80520eb:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80520ee:	0f b7 84 00 00 70 05 	movzwl 0x8057000(%eax,%eax,1),%eax
 80520f5:	08 
 80520f6:	98                   	cwtl   
 80520f7:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80520fa:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 80520fe:	75 1f                	jne    805211f <yylex+0x1b4>
 8052100:	a1 6c b1 05 08       	mov    0x805b16c,%eax
 8052105:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8052108:	a1 68 b1 05 08       	mov    0x805b168,%eax
 805210d:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8052110:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8052113:	0f b7 84 00 00 70 05 	movzwl 0x8057000(%eax,%eax,1),%eax
 805211a:	08 
 805211b:	98                   	cwtl   
 805211c:	89 45 e8             	mov    %eax,-0x18(%ebp)
 805211f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8052122:	a3 84 b7 05 08       	mov    %eax,0x805b784
 8052127:	8b 55 e0             	mov    -0x20(%ebp),%edx
 805212a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 805212d:	29 c2                	sub    %eax,%edx
 805212f:	89 d0                	mov    %edx,%eax
 8052131:	a3 8c b7 05 08       	mov    %eax,0x805b78c
 8052136:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8052139:	0f b6 00             	movzbl (%eax),%eax
 805213c:	a2 50 b1 05 08       	mov    %al,0x805b150
 8052141:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8052144:	c6 00 00             	movb   $0x0,(%eax)
 8052147:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805214a:	a3 58 b1 05 08       	mov    %eax,0x805b158
 805214f:	83 7d e8 27          	cmpl   $0x27,-0x18(%ebp)
 8052153:	74 44                	je     8052199 <yylex+0x22e>
 8052155:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8052158:	8b 04 85 00 77 05 08 	mov    0x8057700(,%eax,4),%eax
 805215f:	85 c0                	test   %eax,%eax
 8052161:	74 36                	je     8052199 <yylex+0x22e>
 8052163:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 805216a:	eb 23                	jmp    805218f <yylex+0x224>
 805216c:	8b 15 84 b7 05 08    	mov    0x805b784,%edx
 8052172:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8052175:	01 d0                	add    %edx,%eax
 8052177:	0f b6 00             	movzbl (%eax),%eax
 805217a:	3c 0a                	cmp    $0xa,%al
 805217c:	75 0d                	jne    805218b <yylex+0x220>
 805217e:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052183:	83 c0 01             	add    $0x1,%eax
 8052186:	a3 c0 b0 05 08       	mov    %eax,0x805b0c0
 805218b:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 805218f:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052194:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 8052197:	72 d3                	jb     805216c <yylex+0x201>
 8052199:	83 7d e8 28          	cmpl   $0x28,-0x18(%ebp)
 805219d:	0f 87 a9 16 00 00    	ja     805384c <yylex+0x18e1>
 80521a3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80521a6:	c1 e0 02             	shl    $0x2,%eax
 80521a9:	05 08 79 05 08       	add    $0x8057908,%eax
 80521ae:	8b 00                	mov    (%eax),%eax
 80521b0:	ff e0                	jmp    *%eax
 80521b2:	0f b6 15 50 b1 05 08 	movzbl 0x805b150,%edx
 80521b9:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80521bc:	88 10                	mov    %dl,(%eax)
 80521be:	a1 6c b1 05 08       	mov    0x805b16c,%eax
 80521c3:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80521c6:	a1 68 b1 05 08       	mov    0x805b168,%eax
 80521cb:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80521ce:	e9 18 ff ff ff       	jmp    80520eb <yylex+0x180>
 80521d3:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80521d8:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80521dd:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 80521e2:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 80521e7:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80521ec:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 80521f1:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80521f6:	89 c2                	mov    %eax,%edx
 80521f8:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80521fd:	01 d0                	add    %edx,%eax
 80521ff:	83 e8 01             	sub    $0x1,%eax
 8052202:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052207:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805220c:	89 c2                	mov    %eax,%edx
 805220e:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052213:	01 d0                	add    %edx,%eax
 8052215:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 805221a:	c7 05 c4 b0 05 08 01 	movl   $0x1,0x805b0c4
 8052221:	00 00 00 
 8052224:	c7 05 40 b1 05 08 01 	movl   $0x1,0x805b140
 805222b:	00 00 00 
 805222e:	e9 27 16 00 00       	jmp    805385a <yylex+0x18ef>
 8052233:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052238:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 805223d:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052242:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052247:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805224c:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052251:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052256:	89 c2                	mov    %eax,%edx
 8052258:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805225d:	01 d0                	add    %edx,%eax
 805225f:	83 e8 01             	sub    $0x1,%eax
 8052262:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052267:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805226c:	89 c2                	mov    %eax,%edx
 805226e:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052273:	01 d0                	add    %edx,%eax
 8052275:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 805227a:	e9 db 15 00 00       	jmp    805385a <yylex+0x18ef>
 805227f:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052284:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052289:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 805228e:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052293:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052298:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805229d:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80522a2:	89 c2                	mov    %eax,%edx
 80522a4:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80522a9:	01 d0                	add    %edx,%eax
 80522ab:	83 e8 01             	sub    $0x1,%eax
 80522ae:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80522b3:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80522b8:	89 c2                	mov    %eax,%edx
 80522ba:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80522bf:	01 d0                	add    %edx,%eax
 80522c1:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80522c6:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80522cb:	83 ec 08             	sub    $0x8,%esp
 80522ce:	50                   	push   %eax
 80522cf:	68 9c 77 05 08       	push   $0x805779c
 80522d4:	e8 5f 68 ff ff       	call   8048b38 <createNode>
 80522d9:	83 c4 10             	add    $0x10,%esp
 80522dc:	a3 90 b7 05 08       	mov    %eax,0x805b790
 80522e1:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80522e6:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 80522ed:	8b 1d 90 b7 05 08    	mov    0x805b790,%ebx
 80522f3:	a1 84 b7 05 08       	mov    0x805b784,%eax
 80522f8:	83 ec 0c             	sub    $0xc,%esp
 80522fb:	50                   	push   %eax
 80522fc:	e8 9f 66 ff ff       	call   80489a0 <atoi@plt>
 8052301:	83 c4 10             	add    $0x10,%esp
 8052304:	89 43 08             	mov    %eax,0x8(%ebx)
 8052307:	b8 02 01 00 00       	mov    $0x102,%eax
 805230c:	e9 4e 15 00 00       	jmp    805385f <yylex+0x18f4>
 8052311:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052316:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 805231b:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052320:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052325:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805232a:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805232f:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052334:	89 c2                	mov    %eax,%edx
 8052336:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805233b:	01 d0                	add    %edx,%eax
 805233d:	83 e8 01             	sub    $0x1,%eax
 8052340:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052345:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805234a:	89 c2                	mov    %eax,%edx
 805234c:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052351:	01 d0                	add    %edx,%eax
 8052353:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052358:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 805235d:	83 ec 08             	sub    $0x8,%esp
 8052360:	50                   	push   %eax
 8052361:	68 9c 77 05 08       	push   $0x805779c
 8052366:	e8 cd 67 ff ff       	call   8048b38 <createNode>
 805236b:	83 c4 10             	add    $0x10,%esp
 805236e:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052373:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052378:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 805237f:	8b 1d 90 b7 05 08    	mov    0x805b790,%ebx
 8052385:	a1 84 b7 05 08       	mov    0x805b784,%eax
 805238a:	83 ec 04             	sub    $0x4,%esp
 805238d:	6a 10                	push   $0x10
 805238f:	6a 00                	push   $0x0
 8052391:	50                   	push   %eax
 8052392:	e8 39 66 ff ff       	call   80489d0 <strtol@plt>
 8052397:	83 c4 10             	add    $0x10,%esp
 805239a:	89 43 08             	mov    %eax,0x8(%ebx)
 805239d:	b8 02 01 00 00       	mov    $0x102,%eax
 80523a2:	e9 b8 14 00 00       	jmp    805385f <yylex+0x18f4>
 80523a7:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80523ac:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80523b1:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 80523b6:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 80523bb:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80523c0:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 80523c5:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80523ca:	89 c2                	mov    %eax,%edx
 80523cc:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80523d1:	01 d0                	add    %edx,%eax
 80523d3:	83 e8 01             	sub    $0x1,%eax
 80523d6:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80523db:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80523e0:	89 c2                	mov    %eax,%edx
 80523e2:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80523e7:	01 d0                	add    %edx,%eax
 80523e9:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80523ee:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80523f3:	83 ec 08             	sub    $0x8,%esp
 80523f6:	50                   	push   %eax
 80523f7:	68 9c 77 05 08       	push   $0x805779c
 80523fc:	e8 37 67 ff ff       	call   8048b38 <createNode>
 8052401:	83 c4 10             	add    $0x10,%esp
 8052404:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052409:	a1 90 b7 05 08       	mov    0x805b790,%eax
 805240e:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 8052415:	8b 1d 90 b7 05 08    	mov    0x805b790,%ebx
 805241b:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8052420:	83 ec 04             	sub    $0x4,%esp
 8052423:	6a 08                	push   $0x8
 8052425:	6a 00                	push   $0x0
 8052427:	50                   	push   %eax
 8052428:	e8 a3 65 ff ff       	call   80489d0 <strtol@plt>
 805242d:	83 c4 10             	add    $0x10,%esp
 8052430:	89 43 08             	mov    %eax,0x8(%ebx)
 8052433:	b8 02 01 00 00       	mov    $0x102,%eax
 8052438:	e9 22 14 00 00       	jmp    805385f <yylex+0x18f4>
 805243d:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052442:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052447:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 805244c:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052451:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052456:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805245b:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052460:	89 c2                	mov    %eax,%edx
 8052462:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052467:	01 d0                	add    %edx,%eax
 8052469:	83 e8 01             	sub    $0x1,%eax
 805246c:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052471:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052476:	89 c2                	mov    %eax,%edx
 8052478:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805247d:	01 d0                	add    %edx,%eax
 805247f:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052484:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052489:	83 ec 08             	sub    $0x8,%esp
 805248c:	50                   	push   %eax
 805248d:	68 a0 77 05 08       	push   $0x80577a0
 8052492:	e8 a1 66 ff ff       	call   8048b38 <createNode>
 8052497:	83 c4 10             	add    $0x10,%esp
 805249a:	a3 90 b7 05 08       	mov    %eax,0x805b790
 805249f:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80524a4:	c7 40 04 02 00 00 00 	movl   $0x2,0x4(%eax)
 80524ab:	8b 1d 90 b7 05 08    	mov    0x805b790,%ebx
 80524b1:	a1 84 b7 05 08       	mov    0x805b784,%eax
 80524b6:	83 ec 0c             	sub    $0xc,%esp
 80524b9:	50                   	push   %eax
 80524ba:	e8 f1 64 ff ff       	call   80489b0 <atof@plt>
 80524bf:	83 c4 10             	add    $0x10,%esp
 80524c2:	d9 5d d4             	fstps  -0x2c(%ebp)
 80524c5:	d9 45 d4             	flds   -0x2c(%ebp)
 80524c8:	d9 5b 08             	fstps  0x8(%ebx)
 80524cb:	b8 03 01 00 00       	mov    $0x103,%eax
 80524d0:	e9 8a 13 00 00       	jmp    805385f <yylex+0x18f4>
 80524d5:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80524da:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80524df:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 80524e4:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 80524e9:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80524ee:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 80524f3:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80524f8:	89 c2                	mov    %eax,%edx
 80524fa:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80524ff:	01 d0                	add    %edx,%eax
 8052501:	83 e8 01             	sub    $0x1,%eax
 8052504:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052509:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805250e:	89 c2                	mov    %eax,%edx
 8052510:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052515:	01 d0                	add    %edx,%eax
 8052517:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 805251c:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052521:	83 ec 08             	sub    $0x8,%esp
 8052524:	50                   	push   %eax
 8052525:	68 a0 77 05 08       	push   $0x80577a0
 805252a:	e8 09 66 ff ff       	call   8048b38 <createNode>
 805252f:	83 c4 10             	add    $0x10,%esp
 8052532:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052537:	a1 90 b7 05 08       	mov    0x805b790,%eax
 805253c:	c7 40 04 02 00 00 00 	movl   $0x2,0x4(%eax)
 8052543:	8b 1d 90 b7 05 08    	mov    0x805b790,%ebx
 8052549:	a1 84 b7 05 08       	mov    0x805b784,%eax
 805254e:	83 ec 0c             	sub    $0xc,%esp
 8052551:	50                   	push   %eax
 8052552:	e8 59 64 ff ff       	call   80489b0 <atof@plt>
 8052557:	83 c4 10             	add    $0x10,%esp
 805255a:	d9 5d d4             	fstps  -0x2c(%ebp)
 805255d:	d9 45 d4             	flds   -0x2c(%ebp)
 8052560:	d9 5b 08             	fstps  0x8(%ebx)
 8052563:	b8 03 01 00 00       	mov    $0x103,%eax
 8052568:	e9 f2 12 00 00       	jmp    805385f <yylex+0x18f4>
 805256d:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052572:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052577:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 805257c:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052581:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052586:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805258b:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052590:	89 c2                	mov    %eax,%edx
 8052592:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052597:	01 d0                	add    %edx,%eax
 8052599:	83 e8 01             	sub    $0x1,%eax
 805259c:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80525a1:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80525a6:	89 c2                	mov    %eax,%edx
 80525a8:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80525ad:	01 d0                	add    %edx,%eax
 80525af:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80525b4:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80525b9:	83 ec 08             	sub    $0x8,%esp
 80525bc:	50                   	push   %eax
 80525bd:	68 a6 77 05 08       	push   $0x80577a6
 80525c2:	e8 71 65 ff ff       	call   8048b38 <createNode>
 80525c7:	83 c4 10             	add    $0x10,%esp
 80525ca:	a3 90 b7 05 08       	mov    %eax,0x805b790
 80525cf:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80525d4:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80525db:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80525e0:	c7 40 04 08 00 00 00 	movl   $0x8,0x4(%eax)
 80525e7:	b8 05 01 00 00       	mov    $0x105,%eax
 80525ec:	e9 6e 12 00 00       	jmp    805385f <yylex+0x18f4>
 80525f1:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80525f6:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80525fb:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052600:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052605:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805260a:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805260f:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052614:	89 c2                	mov    %eax,%edx
 8052616:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805261b:	01 d0                	add    %edx,%eax
 805261d:	83 e8 01             	sub    $0x1,%eax
 8052620:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052625:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805262a:	89 c2                	mov    %eax,%edx
 805262c:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052631:	01 d0                	add    %edx,%eax
 8052633:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052638:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 805263d:	83 ec 08             	sub    $0x8,%esp
 8052640:	50                   	push   %eax
 8052641:	68 ab 77 05 08       	push   $0x80577ab
 8052646:	e8 ed 64 ff ff       	call   8048b38 <createNode>
 805264b:	83 c4 10             	add    $0x10,%esp
 805264e:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052653:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052658:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 805265f:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052664:	c7 40 04 09 00 00 00 	movl   $0x9,0x4(%eax)
 805266b:	b8 06 01 00 00       	mov    $0x106,%eax
 8052670:	e9 ea 11 00 00       	jmp    805385f <yylex+0x18f4>
 8052675:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 805267a:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 805267f:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052684:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052689:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805268e:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052693:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052698:	89 c2                	mov    %eax,%edx
 805269a:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805269f:	01 d0                	add    %edx,%eax
 80526a1:	83 e8 01             	sub    $0x1,%eax
 80526a4:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80526a9:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80526ae:	89 c2                	mov    %eax,%edx
 80526b0:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80526b5:	01 d0                	add    %edx,%eax
 80526b7:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80526bc:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80526c1:	83 ec 08             	sub    $0x8,%esp
 80526c4:	50                   	push   %eax
 80526c5:	68 b1 77 05 08       	push   $0x80577b1
 80526ca:	e8 69 64 ff ff       	call   8048b38 <createNode>
 80526cf:	83 c4 10             	add    $0x10,%esp
 80526d2:	a3 90 b7 05 08       	mov    %eax,0x805b790
 80526d7:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80526dc:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80526e3:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80526e8:	c7 40 04 0a 00 00 00 	movl   $0xa,0x4(%eax)
 80526ef:	b8 07 01 00 00       	mov    $0x107,%eax
 80526f4:	e9 66 11 00 00       	jmp    805385f <yylex+0x18f4>
 80526f9:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80526fe:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052703:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052708:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 805270d:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052712:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052717:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805271c:	89 c2                	mov    %eax,%edx
 805271e:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052723:	01 d0                	add    %edx,%eax
 8052725:	83 e8 01             	sub    $0x1,%eax
 8052728:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 805272d:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052732:	89 c2                	mov    %eax,%edx
 8052734:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052739:	01 d0                	add    %edx,%eax
 805273b:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052740:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052745:	83 ec 08             	sub    $0x8,%esp
 8052748:	50                   	push   %eax
 8052749:	68 ba 77 05 08       	push   $0x80577ba
 805274e:	e8 e5 63 ff ff       	call   8048b38 <createNode>
 8052753:	83 c4 10             	add    $0x10,%esp
 8052756:	a3 90 b7 05 08       	mov    %eax,0x805b790
 805275b:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052760:	c7 40 04 0b 00 00 00 	movl   $0xb,0x4(%eax)
 8052767:	8b 1d 90 b7 05 08    	mov    0x805b790,%ebx
 805276d:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8052772:	83 ec 0c             	sub    $0xc,%esp
 8052775:	50                   	push   %eax
 8052776:	e8 55 61 ff ff       	call   80488d0 <strlen@plt>
 805277b:	83 c4 10             	add    $0x10,%esp
 805277e:	83 ec 0c             	sub    $0xc,%esp
 8052781:	50                   	push   %eax
 8052782:	e8 19 61 ff ff       	call   80488a0 <malloc@plt>
 8052787:	83 c4 10             	add    $0x10,%esp
 805278a:	89 43 08             	mov    %eax,0x8(%ebx)
 805278d:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8052792:	83 ec 0c             	sub    $0xc,%esp
 8052795:	50                   	push   %eax
 8052796:	e8 35 61 ff ff       	call   80488d0 <strlen@plt>
 805279b:	83 c4 10             	add    $0x10,%esp
 805279e:	89 c1                	mov    %eax,%ecx
 80527a0:	8b 15 84 b7 05 08    	mov    0x805b784,%edx
 80527a6:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80527ab:	8b 40 08             	mov    0x8(%eax),%eax
 80527ae:	83 ec 04             	sub    $0x4,%esp
 80527b1:	51                   	push   %ecx
 80527b2:	52                   	push   %edx
 80527b3:	50                   	push   %eax
 80527b4:	e8 97 61 ff ff       	call   8048950 <strncpy@plt>
 80527b9:	83 c4 10             	add    $0x10,%esp
 80527bc:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80527c1:	8b 58 08             	mov    0x8(%eax),%ebx
 80527c4:	a1 84 b7 05 08       	mov    0x805b784,%eax
 80527c9:	83 ec 0c             	sub    $0xc,%esp
 80527cc:	50                   	push   %eax
 80527cd:	e8 fe 60 ff ff       	call   80488d0 <strlen@plt>
 80527d2:	83 c4 10             	add    $0x10,%esp
 80527d5:	01 d8                	add    %ebx,%eax
 80527d7:	c6 00 00             	movb   $0x0,(%eax)
 80527da:	b8 08 01 00 00       	mov    $0x108,%eax
 80527df:	e9 7b 10 00 00       	jmp    805385f <yylex+0x18f4>
 80527e4:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80527e9:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80527ee:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 80527f3:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 80527f8:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80527fd:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052802:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052807:	89 c2                	mov    %eax,%edx
 8052809:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805280e:	01 d0                	add    %edx,%eax
 8052810:	83 e8 01             	sub    $0x1,%eax
 8052813:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052818:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805281d:	89 c2                	mov    %eax,%edx
 805281f:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052824:	01 d0                	add    %edx,%eax
 8052826:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 805282b:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052830:	83 ec 08             	sub    $0x8,%esp
 8052833:	50                   	push   %eax
 8052834:	68 c0 77 05 08       	push   $0x80577c0
 8052839:	e8 fa 62 ff ff       	call   8048b38 <createNode>
 805283e:	83 c4 10             	add    $0x10,%esp
 8052841:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052846:	a1 90 b7 05 08       	mov    0x805b790,%eax
 805284b:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052852:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052857:	c7 40 04 0c 00 00 00 	movl   $0xc,0x4(%eax)
 805285e:	b8 09 01 00 00       	mov    $0x109,%eax
 8052863:	e9 f7 0f 00 00       	jmp    805385f <yylex+0x18f4>
 8052868:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 805286d:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052872:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052877:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 805287c:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052881:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052886:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805288b:	89 c2                	mov    %eax,%edx
 805288d:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052892:	01 d0                	add    %edx,%eax
 8052894:	83 e8 01             	sub    $0x1,%eax
 8052897:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 805289c:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80528a1:	89 c2                	mov    %eax,%edx
 80528a3:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80528a8:	01 d0                	add    %edx,%eax
 80528aa:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80528af:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80528b4:	83 ec 08             	sub    $0x8,%esp
 80528b7:	50                   	push   %eax
 80528b8:	68 c5 77 05 08       	push   $0x80577c5
 80528bd:	e8 76 62 ff ff       	call   8048b38 <createNode>
 80528c2:	83 c4 10             	add    $0x10,%esp
 80528c5:	a3 90 b7 05 08       	mov    %eax,0x805b790
 80528ca:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80528cf:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80528d6:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80528db:	c7 40 04 0d 00 00 00 	movl   $0xd,0x4(%eax)
 80528e2:	b8 0a 01 00 00       	mov    $0x10a,%eax
 80528e7:	e9 73 0f 00 00       	jmp    805385f <yylex+0x18f4>
 80528ec:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80528f1:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80528f6:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 80528fb:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052900:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052905:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805290a:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805290f:	89 c2                	mov    %eax,%edx
 8052911:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052916:	01 d0                	add    %edx,%eax
 8052918:	83 e8 01             	sub    $0x1,%eax
 805291b:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052920:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052925:	89 c2                	mov    %eax,%edx
 8052927:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805292c:	01 d0                	add    %edx,%eax
 805292e:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052933:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052938:	83 ec 08             	sub    $0x8,%esp
 805293b:	50                   	push   %eax
 805293c:	68 cb 77 05 08       	push   $0x80577cb
 8052941:	e8 f2 61 ff ff       	call   8048b38 <createNode>
 8052946:	83 c4 10             	add    $0x10,%esp
 8052949:	a3 90 b7 05 08       	mov    %eax,0x805b790
 805294e:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052953:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 805295a:	a1 90 b7 05 08       	mov    0x805b790,%eax
 805295f:	c7 40 04 0e 00 00 00 	movl   $0xe,0x4(%eax)
 8052966:	b8 0b 01 00 00       	mov    $0x10b,%eax
 805296b:	e9 ef 0e 00 00       	jmp    805385f <yylex+0x18f4>
 8052970:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052975:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 805297a:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 805297f:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052984:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052989:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805298e:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052993:	89 c2                	mov    %eax,%edx
 8052995:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805299a:	01 d0                	add    %edx,%eax
 805299c:	83 e8 01             	sub    $0x1,%eax
 805299f:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80529a4:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80529a9:	89 c2                	mov    %eax,%edx
 80529ab:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80529b0:	01 d0                	add    %edx,%eax
 80529b2:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80529b7:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80529bc:	83 ec 08             	sub    $0x8,%esp
 80529bf:	50                   	push   %eax
 80529c0:	68 d0 77 05 08       	push   $0x80577d0
 80529c5:	e8 6e 61 ff ff       	call   8048b38 <createNode>
 80529ca:	83 c4 10             	add    $0x10,%esp
 80529cd:	a3 90 b7 05 08       	mov    %eax,0x805b790
 80529d2:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80529d7:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80529de:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80529e3:	c7 40 04 0f 00 00 00 	movl   $0xf,0x4(%eax)
 80529ea:	b8 0c 01 00 00       	mov    $0x10c,%eax
 80529ef:	e9 6b 0e 00 00       	jmp    805385f <yylex+0x18f4>
 80529f4:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80529f9:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80529fe:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052a03:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052a08:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052a0d:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052a12:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052a17:	89 c2                	mov    %eax,%edx
 8052a19:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052a1e:	01 d0                	add    %edx,%eax
 8052a20:	83 e8 01             	sub    $0x1,%eax
 8052a23:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052a28:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052a2d:	89 c2                	mov    %eax,%edx
 8052a2f:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052a34:	01 d0                	add    %edx,%eax
 8052a36:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052a3b:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052a40:	83 ec 08             	sub    $0x8,%esp
 8052a43:	50                   	push   %eax
 8052a44:	68 d4 77 05 08       	push   $0x80577d4
 8052a49:	e8 ea 60 ff ff       	call   8048b38 <createNode>
 8052a4e:	83 c4 10             	add    $0x10,%esp
 8052a51:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052a56:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052a5b:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052a62:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052a67:	c7 40 04 10 00 00 00 	movl   $0x10,0x4(%eax)
 8052a6e:	b8 0d 01 00 00       	mov    $0x10d,%eax
 8052a73:	e9 e7 0d 00 00       	jmp    805385f <yylex+0x18f4>
 8052a78:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052a7d:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052a82:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052a87:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052a8c:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052a91:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052a96:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052a9b:	89 c2                	mov    %eax,%edx
 8052a9d:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052aa2:	01 d0                	add    %edx,%eax
 8052aa4:	83 e8 01             	sub    $0x1,%eax
 8052aa7:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052aac:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052ab1:	89 c2                	mov    %eax,%edx
 8052ab3:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052ab8:	01 d0                	add    %edx,%eax
 8052aba:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052abf:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052ac4:	83 ec 08             	sub    $0x8,%esp
 8052ac7:	50                   	push   %eax
 8052ac8:	68 d8 77 05 08       	push   $0x80577d8
 8052acd:	e8 66 60 ff ff       	call   8048b38 <createNode>
 8052ad2:	83 c4 10             	add    $0x10,%esp
 8052ad5:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052ada:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052adf:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052ae6:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052aeb:	c7 40 04 11 00 00 00 	movl   $0x11,0x4(%eax)
 8052af2:	b8 0e 01 00 00       	mov    $0x10e,%eax
 8052af7:	e9 63 0d 00 00       	jmp    805385f <yylex+0x18f4>
 8052afc:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052b01:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052b06:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052b0b:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052b10:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052b15:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052b1a:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052b1f:	89 c2                	mov    %eax,%edx
 8052b21:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052b26:	01 d0                	add    %edx,%eax
 8052b28:	83 e8 01             	sub    $0x1,%eax
 8052b2b:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052b30:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052b35:	89 c2                	mov    %eax,%edx
 8052b37:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052b3c:	01 d0                	add    %edx,%eax
 8052b3e:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052b43:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052b48:	83 ec 08             	sub    $0x8,%esp
 8052b4b:	50                   	push   %eax
 8052b4c:	68 db 77 05 08       	push   $0x80577db
 8052b51:	e8 e2 5f ff ff       	call   8048b38 <createNode>
 8052b56:	83 c4 10             	add    $0x10,%esp
 8052b59:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052b5e:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052b63:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052b6a:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052b6f:	c7 40 04 12 00 00 00 	movl   $0x12,0x4(%eax)
 8052b76:	b8 0f 01 00 00       	mov    $0x10f,%eax
 8052b7b:	e9 df 0c 00 00       	jmp    805385f <yylex+0x18f4>
 8052b80:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052b85:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052b8a:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052b8f:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052b94:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052b99:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052b9e:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052ba3:	89 c2                	mov    %eax,%edx
 8052ba5:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052baa:	01 d0                	add    %edx,%eax
 8052bac:	83 e8 01             	sub    $0x1,%eax
 8052baf:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052bb4:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052bb9:	89 c2                	mov    %eax,%edx
 8052bbb:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052bc0:	01 d0                	add    %edx,%eax
 8052bc2:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052bc7:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052bcc:	83 ec 08             	sub    $0x8,%esp
 8052bcf:	50                   	push   %eax
 8052bd0:	68 df 77 05 08       	push   $0x80577df
 8052bd5:	e8 5e 5f ff ff       	call   8048b38 <createNode>
 8052bda:	83 c4 10             	add    $0x10,%esp
 8052bdd:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052be2:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052be7:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052bee:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052bf3:	c7 40 04 13 00 00 00 	movl   $0x13,0x4(%eax)
 8052bfa:	b8 10 01 00 00       	mov    $0x110,%eax
 8052bff:	e9 5b 0c 00 00       	jmp    805385f <yylex+0x18f4>
 8052c04:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052c09:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052c0e:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052c13:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052c18:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052c1d:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052c22:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052c27:	89 c2                	mov    %eax,%edx
 8052c29:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052c2e:	01 d0                	add    %edx,%eax
 8052c30:	83 e8 01             	sub    $0x1,%eax
 8052c33:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052c38:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052c3d:	89 c2                	mov    %eax,%edx
 8052c3f:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052c44:	01 d0                	add    %edx,%eax
 8052c46:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052c4b:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052c50:	83 ec 08             	sub    $0x8,%esp
 8052c53:	50                   	push   %eax
 8052c54:	68 e3 77 05 08       	push   $0x80577e3
 8052c59:	e8 da 5e ff ff       	call   8048b38 <createNode>
 8052c5e:	83 c4 10             	add    $0x10,%esp
 8052c61:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052c66:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052c6b:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052c72:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052c77:	c7 40 04 14 00 00 00 	movl   $0x14,0x4(%eax)
 8052c7e:	b8 11 01 00 00       	mov    $0x111,%eax
 8052c83:	e9 d7 0b 00 00       	jmp    805385f <yylex+0x18f4>
 8052c88:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052c8d:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052c92:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052c97:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052c9c:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052ca1:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052ca6:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052cab:	89 c2                	mov    %eax,%edx
 8052cad:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052cb2:	01 d0                	add    %edx,%eax
 8052cb4:	83 e8 01             	sub    $0x1,%eax
 8052cb7:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052cbc:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052cc1:	89 c2                	mov    %eax,%edx
 8052cc3:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052cc8:	01 d0                	add    %edx,%eax
 8052cca:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052ccf:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052cd4:	83 ec 08             	sub    $0x8,%esp
 8052cd7:	50                   	push   %eax
 8052cd8:	68 e6 77 05 08       	push   $0x80577e6
 8052cdd:	e8 56 5e ff ff       	call   8048b38 <createNode>
 8052ce2:	83 c4 10             	add    $0x10,%esp
 8052ce5:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052cea:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052cef:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052cf6:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052cfb:	c7 40 04 15 00 00 00 	movl   $0x15,0x4(%eax)
 8052d02:	b8 12 01 00 00       	mov    $0x112,%eax
 8052d07:	e9 53 0b 00 00       	jmp    805385f <yylex+0x18f4>
 8052d0c:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052d11:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052d16:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052d1b:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052d20:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052d25:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052d2a:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052d2f:	89 c2                	mov    %eax,%edx
 8052d31:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052d36:	01 d0                	add    %edx,%eax
 8052d38:	83 e8 01             	sub    $0x1,%eax
 8052d3b:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052d40:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052d45:	89 c2                	mov    %eax,%edx
 8052d47:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052d4c:	01 d0                	add    %edx,%eax
 8052d4e:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052d53:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052d58:	83 ec 08             	sub    $0x8,%esp
 8052d5b:	50                   	push   %eax
 8052d5c:	68 e9 77 05 08       	push   $0x80577e9
 8052d61:	e8 d2 5d ff ff       	call   8048b38 <createNode>
 8052d66:	83 c4 10             	add    $0x10,%esp
 8052d69:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052d6e:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052d73:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052d7a:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052d7f:	c7 40 04 16 00 00 00 	movl   $0x16,0x4(%eax)
 8052d86:	b8 13 01 00 00       	mov    $0x113,%eax
 8052d8b:	e9 cf 0a 00 00       	jmp    805385f <yylex+0x18f4>
 8052d90:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052d95:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052d9a:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052d9f:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052da4:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052da9:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052dae:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052db3:	89 c2                	mov    %eax,%edx
 8052db5:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052dba:	01 d0                	add    %edx,%eax
 8052dbc:	83 e8 01             	sub    $0x1,%eax
 8052dbf:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052dc4:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052dc9:	89 c2                	mov    %eax,%edx
 8052dcb:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052dd0:	01 d0                	add    %edx,%eax
 8052dd2:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052dd7:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052ddc:	83 ec 08             	sub    $0x8,%esp
 8052ddf:	50                   	push   %eax
 8052de0:	68 ec 77 05 08       	push   $0x80577ec
 8052de5:	e8 4e 5d ff ff       	call   8048b38 <createNode>
 8052dea:	83 c4 10             	add    $0x10,%esp
 8052ded:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052df2:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052df7:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052dfe:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052e03:	c7 40 04 17 00 00 00 	movl   $0x17,0x4(%eax)
 8052e0a:	b8 14 01 00 00       	mov    $0x114,%eax
 8052e0f:	e9 4b 0a 00 00       	jmp    805385f <yylex+0x18f4>
 8052e14:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052e19:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052e1e:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052e23:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052e28:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052e2d:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052e32:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052e37:	89 c2                	mov    %eax,%edx
 8052e39:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052e3e:	01 d0                	add    %edx,%eax
 8052e40:	83 e8 01             	sub    $0x1,%eax
 8052e43:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052e48:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052e4d:	89 c2                	mov    %eax,%edx
 8052e4f:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052e54:	01 d0                	add    %edx,%eax
 8052e56:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052e5b:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052e60:	83 ec 08             	sub    $0x8,%esp
 8052e63:	50                   	push   %eax
 8052e64:	68 ef 77 05 08       	push   $0x80577ef
 8052e69:	e8 ca 5c ff ff       	call   8048b38 <createNode>
 8052e6e:	83 c4 10             	add    $0x10,%esp
 8052e71:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052e76:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052e7b:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052e82:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052e87:	c7 40 04 18 00 00 00 	movl   $0x18,0x4(%eax)
 8052e8e:	b8 15 01 00 00       	mov    $0x115,%eax
 8052e93:	e9 c7 09 00 00       	jmp    805385f <yylex+0x18f4>
 8052e98:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052e9d:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052ea2:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052ea7:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052eac:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052eb1:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052eb6:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052ebb:	89 c2                	mov    %eax,%edx
 8052ebd:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052ec2:	01 d0                	add    %edx,%eax
 8052ec4:	83 e8 01             	sub    $0x1,%eax
 8052ec7:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052ecc:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052ed1:	89 c2                	mov    %eax,%edx
 8052ed3:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052ed8:	01 d0                	add    %edx,%eax
 8052eda:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052edf:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052ee4:	83 ec 08             	sub    $0x8,%esp
 8052ee7:	50                   	push   %eax
 8052ee8:	68 f2 77 05 08       	push   $0x80577f2
 8052eed:	e8 46 5c ff ff       	call   8048b38 <createNode>
 8052ef2:	83 c4 10             	add    $0x10,%esp
 8052ef5:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8052efa:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052eff:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8052f06:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8052f0b:	c7 40 04 19 00 00 00 	movl   $0x19,0x4(%eax)
 8052f12:	b8 16 01 00 00       	mov    $0x116,%eax
 8052f17:	e9 43 09 00 00       	jmp    805385f <yylex+0x18f4>
 8052f1c:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052f21:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052f26:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052f2b:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052f30:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052f35:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052f3a:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052f3f:	89 c2                	mov    %eax,%edx
 8052f41:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052f46:	01 d0                	add    %edx,%eax
 8052f48:	83 e8 01             	sub    $0x1,%eax
 8052f4b:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052f50:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052f55:	89 c2                	mov    %eax,%edx
 8052f57:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052f5c:	01 d0                	add    %edx,%eax
 8052f5e:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052f63:	e8 51 11 00 00       	call   80540b9 <input>
 8052f68:	88 45 da             	mov    %al,-0x26(%ebp)
 8052f6b:	eb 08                	jmp    8052f75 <yylex+0x100a>
 8052f6d:	e8 47 11 00 00       	call   80540b9 <input>
 8052f72:	88 45 da             	mov    %al,-0x26(%ebp)
 8052f75:	80 7d da ff          	cmpb   $0xff,-0x26(%ebp)
 8052f79:	0f 84 da 08 00 00    	je     8053859 <yylex+0x18ee>
 8052f7f:	80 7d da 0a          	cmpb   $0xa,-0x26(%ebp)
 8052f83:	75 e8                	jne    8052f6d <yylex+0x1002>
 8052f85:	e9 cf 08 00 00       	jmp    8053859 <yylex+0x18ee>
 8052f8a:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8052f8f:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8052f94:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8052f99:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8052f9e:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052fa3:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8052fa8:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052fad:	89 c2                	mov    %eax,%edx
 8052faf:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052fb4:	01 d0                	add    %edx,%eax
 8052fb6:	83 e8 01             	sub    $0x1,%eax
 8052fb9:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8052fbe:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8052fc3:	89 c2                	mov    %eax,%edx
 8052fc5:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8052fca:	01 d0                	add    %edx,%eax
 8052fcc:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8052fd1:	e8 e3 10 00 00       	call   80540b9 <input>
 8052fd6:	88 45 db             	mov    %al,-0x25(%ebp)
 8052fd9:	eb 1e                	jmp    8052ff9 <yylex+0x108e>
 8052fdb:	80 7d db 2a          	cmpb   $0x2a,-0x25(%ebp)
 8052fdf:	75 10                	jne    8052ff1 <yylex+0x1086>
 8052fe1:	e8 d3 10 00 00       	call   80540b9 <input>
 8052fe6:	88 45 db             	mov    %al,-0x25(%ebp)
 8052fe9:	80 7d db 2f          	cmpb   $0x2f,-0x25(%ebp)
 8052fed:	75 0a                	jne    8052ff9 <yylex+0x108e>
 8052fef:	eb 13                	jmp    8053004 <yylex+0x1099>
 8052ff1:	e8 c3 10 00 00       	call   80540b9 <input>
 8052ff6:	88 45 db             	mov    %al,-0x25(%ebp)
 8052ff9:	80 7d db ff          	cmpb   $0xff,-0x25(%ebp)
 8052ffd:	75 dc                	jne    8052fdb <yylex+0x1070>
 8052fff:	e9 56 08 00 00       	jmp    805385a <yylex+0x18ef>
 8053004:	e9 51 08 00 00       	jmp    805385a <yylex+0x18ef>
 8053009:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 805300e:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8053013:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8053018:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 805301d:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053022:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8053027:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805302c:	89 c2                	mov    %eax,%edx
 805302e:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8053033:	01 d0                	add    %edx,%eax
 8053035:	83 e8 01             	sub    $0x1,%eax
 8053038:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 805303d:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053042:	89 c2                	mov    %eax,%edx
 8053044:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8053049:	01 d0                	add    %edx,%eax
 805304b:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8053050:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8053055:	83 ec 08             	sub    $0x8,%esp
 8053058:	50                   	push   %eax
 8053059:	68 f5 77 05 08       	push   $0x80577f5
 805305e:	e8 d5 5a ff ff       	call   8048b38 <createNode>
 8053063:	83 c4 10             	add    $0x10,%esp
 8053066:	a3 90 b7 05 08       	mov    %eax,0x805b790
 805306b:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8053070:	c7 40 04 04 00 00 00 	movl   $0x4,0x4(%eax)
 8053077:	8b 1d 90 b7 05 08    	mov    0x805b790,%ebx
 805307d:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053082:	83 ec 0c             	sub    $0xc,%esp
 8053085:	50                   	push   %eax
 8053086:	e8 45 58 ff ff       	call   80488d0 <strlen@plt>
 805308b:	83 c4 10             	add    $0x10,%esp
 805308e:	83 ec 0c             	sub    $0xc,%esp
 8053091:	50                   	push   %eax
 8053092:	e8 09 58 ff ff       	call   80488a0 <malloc@plt>
 8053097:	83 c4 10             	add    $0x10,%esp
 805309a:	89 43 08             	mov    %eax,0x8(%ebx)
 805309d:	a1 84 b7 05 08       	mov    0x805b784,%eax
 80530a2:	83 ec 0c             	sub    $0xc,%esp
 80530a5:	50                   	push   %eax
 80530a6:	e8 25 58 ff ff       	call   80488d0 <strlen@plt>
 80530ab:	83 c4 10             	add    $0x10,%esp
 80530ae:	89 c1                	mov    %eax,%ecx
 80530b0:	8b 15 84 b7 05 08    	mov    0x805b784,%edx
 80530b6:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80530bb:	8b 40 08             	mov    0x8(%eax),%eax
 80530be:	83 ec 04             	sub    $0x4,%esp
 80530c1:	51                   	push   %ecx
 80530c2:	52                   	push   %edx
 80530c3:	50                   	push   %eax
 80530c4:	e8 87 58 ff ff       	call   8048950 <strncpy@plt>
 80530c9:	83 c4 10             	add    $0x10,%esp
 80530cc:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80530d1:	8b 58 08             	mov    0x8(%eax),%ebx
 80530d4:	a1 84 b7 05 08       	mov    0x805b784,%eax
 80530d9:	83 ec 0c             	sub    $0xc,%esp
 80530dc:	50                   	push   %eax
 80530dd:	e8 ee 57 ff ff       	call   80488d0 <strlen@plt>
 80530e2:	83 c4 10             	add    $0x10,%esp
 80530e5:	01 d8                	add    %ebx,%eax
 80530e7:	c6 00 00             	movb   $0x0,(%eax)
 80530ea:	b8 1d 01 00 00       	mov    $0x11d,%eax
 80530ef:	e9 6b 07 00 00       	jmp    805385f <yylex+0x18f4>
 80530f4:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80530f9:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80530fe:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8053103:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8053108:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805310d:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8053112:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053117:	89 c2                	mov    %eax,%edx
 8053119:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805311e:	01 d0                	add    %edx,%eax
 8053120:	83 e8 01             	sub    $0x1,%eax
 8053123:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8053128:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805312d:	89 c2                	mov    %eax,%edx
 805312f:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8053134:	01 d0                	add    %edx,%eax
 8053136:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 805313b:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8053140:	83 ec 08             	sub    $0x8,%esp
 8053143:	50                   	push   %eax
 8053144:	68 fa 77 05 08       	push   $0x80577fa
 8053149:	e8 ea 59 ff ff       	call   8048b38 <createNode>
 805314e:	83 c4 10             	add    $0x10,%esp
 8053151:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8053156:	a1 90 b7 05 08       	mov    0x805b790,%eax
 805315b:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8053162:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8053167:	c7 40 04 1a 00 00 00 	movl   $0x1a,0x4(%eax)
 805316e:	b8 17 01 00 00       	mov    $0x117,%eax
 8053173:	e9 e7 06 00 00       	jmp    805385f <yylex+0x18f4>
 8053178:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 805317d:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8053182:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8053187:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 805318c:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053191:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8053196:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805319b:	89 c2                	mov    %eax,%edx
 805319d:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80531a2:	01 d0                	add    %edx,%eax
 80531a4:	83 e8 01             	sub    $0x1,%eax
 80531a7:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80531ac:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80531b1:	89 c2                	mov    %eax,%edx
 80531b3:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80531b8:	01 d0                	add    %edx,%eax
 80531ba:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80531bf:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80531c4:	83 ec 08             	sub    $0x8,%esp
 80531c7:	50                   	push   %eax
 80531c8:	68 01 78 05 08       	push   $0x8057801
 80531cd:	e8 66 59 ff ff       	call   8048b38 <createNode>
 80531d2:	83 c4 10             	add    $0x10,%esp
 80531d5:	a3 90 b7 05 08       	mov    %eax,0x805b790
 80531da:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80531df:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80531e6:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80531eb:	c7 40 04 1b 00 00 00 	movl   $0x1b,0x4(%eax)
 80531f2:	b8 18 01 00 00       	mov    $0x118,%eax
 80531f7:	e9 63 06 00 00       	jmp    805385f <yylex+0x18f4>
 80531fc:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8053201:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8053206:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 805320b:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8053210:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053215:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805321a:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805321f:	89 c2                	mov    %eax,%edx
 8053221:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8053226:	01 d0                	add    %edx,%eax
 8053228:	83 e8 01             	sub    $0x1,%eax
 805322b:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8053230:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053235:	89 c2                	mov    %eax,%edx
 8053237:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805323c:	01 d0                	add    %edx,%eax
 805323e:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8053243:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8053248:	83 ec 08             	sub    $0x8,%esp
 805324b:	50                   	push   %eax
 805324c:	68 08 78 05 08       	push   $0x8057808
 8053251:	e8 e2 58 ff ff       	call   8048b38 <createNode>
 8053256:	83 c4 10             	add    $0x10,%esp
 8053259:	a3 90 b7 05 08       	mov    %eax,0x805b790
 805325e:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8053263:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 805326a:	a1 90 b7 05 08       	mov    0x805b790,%eax
 805326f:	c7 40 04 1c 00 00 00 	movl   $0x1c,0x4(%eax)
 8053276:	b8 19 01 00 00       	mov    $0x119,%eax
 805327b:	e9 df 05 00 00       	jmp    805385f <yylex+0x18f4>
 8053280:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8053285:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 805328a:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 805328f:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8053294:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053299:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805329e:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80532a3:	89 c2                	mov    %eax,%edx
 80532a5:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80532aa:	01 d0                	add    %edx,%eax
 80532ac:	83 e8 01             	sub    $0x1,%eax
 80532af:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80532b4:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80532b9:	89 c2                	mov    %eax,%edx
 80532bb:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80532c0:	01 d0                	add    %edx,%eax
 80532c2:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80532c7:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80532cc:	83 ec 08             	sub    $0x8,%esp
 80532cf:	50                   	push   %eax
 80532d0:	68 0b 78 05 08       	push   $0x805780b
 80532d5:	e8 5e 58 ff ff       	call   8048b38 <createNode>
 80532da:	83 c4 10             	add    $0x10,%esp
 80532dd:	a3 90 b7 05 08       	mov    %eax,0x805b790
 80532e2:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80532e7:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 80532ee:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80532f3:	c7 40 04 1d 00 00 00 	movl   $0x1d,0x4(%eax)
 80532fa:	b8 1a 01 00 00       	mov    $0x11a,%eax
 80532ff:	e9 5b 05 00 00       	jmp    805385f <yylex+0x18f4>
 8053304:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8053309:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 805330e:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8053313:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8053318:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805331d:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8053322:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053327:	89 c2                	mov    %eax,%edx
 8053329:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805332e:	01 d0                	add    %edx,%eax
 8053330:	83 e8 01             	sub    $0x1,%eax
 8053333:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8053338:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805333d:	89 c2                	mov    %eax,%edx
 805333f:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8053344:	01 d0                	add    %edx,%eax
 8053346:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 805334b:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8053350:	83 ec 08             	sub    $0x8,%esp
 8053353:	50                   	push   %eax
 8053354:	68 10 78 05 08       	push   $0x8057810
 8053359:	e8 da 57 ff ff       	call   8048b38 <createNode>
 805335e:	83 c4 10             	add    $0x10,%esp
 8053361:	a3 90 b7 05 08       	mov    %eax,0x805b790
 8053366:	a1 90 b7 05 08       	mov    0x805b790,%eax
 805336b:	c7 40 04 05 00 00 00 	movl   $0x5,0x4(%eax)
 8053372:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8053377:	c7 40 04 1e 00 00 00 	movl   $0x1e,0x4(%eax)
 805337e:	b8 1b 01 00 00       	mov    $0x11b,%eax
 8053383:	e9 d7 04 00 00       	jmp    805385f <yylex+0x18f4>
 8053388:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 805338d:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 8053392:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8053397:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 805339c:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80533a1:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 80533a6:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80533ab:	89 c2                	mov    %eax,%edx
 80533ad:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80533b2:	01 d0                	add    %edx,%eax
 80533b4:	83 e8 01             	sub    $0x1,%eax
 80533b7:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80533bc:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80533c1:	89 c2                	mov    %eax,%edx
 80533c3:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80533c8:	01 d0                	add    %edx,%eax
 80533ca:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80533cf:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80533d4:	83 ec 08             	sub    $0x8,%esp
 80533d7:	50                   	push   %eax
 80533d8:	68 16 78 05 08       	push   $0x8057816
 80533dd:	e8 56 57 ff ff       	call   8048b38 <createNode>
 80533e2:	83 c4 10             	add    $0x10,%esp
 80533e5:	a3 90 b7 05 08       	mov    %eax,0x805b790
 80533ea:	a1 90 b7 05 08       	mov    0x805b790,%eax
 80533ef:	c7 40 04 03 00 00 00 	movl   $0x3,0x4(%eax)
 80533f6:	8b 1d 90 b7 05 08    	mov    0x805b790,%ebx
 80533fc:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053401:	83 ec 0c             	sub    $0xc,%esp
 8053404:	50                   	push   %eax
 8053405:	e8 c6 54 ff ff       	call   80488d0 <strlen@plt>
 805340a:	83 c4 10             	add    $0x10,%esp
 805340d:	83 ec 0c             	sub    $0xc,%esp
 8053410:	50                   	push   %eax
 8053411:	e8 8a 54 ff ff       	call   80488a0 <malloc@plt>
 8053416:	83 c4 10             	add    $0x10,%esp
 8053419:	89 43 08             	mov    %eax,0x8(%ebx)
 805341c:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053421:	83 ec 0c             	sub    $0xc,%esp
 8053424:	50                   	push   %eax
 8053425:	e8 a6 54 ff ff       	call   80488d0 <strlen@plt>
 805342a:	83 c4 10             	add    $0x10,%esp
 805342d:	89 c1                	mov    %eax,%ecx
 805342f:	8b 15 84 b7 05 08    	mov    0x805b784,%edx
 8053435:	a1 90 b7 05 08       	mov    0x805b790,%eax
 805343a:	8b 40 08             	mov    0x8(%eax),%eax
 805343d:	83 ec 04             	sub    $0x4,%esp
 8053440:	51                   	push   %ecx
 8053441:	52                   	push   %edx
 8053442:	50                   	push   %eax
 8053443:	e8 08 55 ff ff       	call   8048950 <strncpy@plt>
 8053448:	83 c4 10             	add    $0x10,%esp
 805344b:	a1 90 b7 05 08       	mov    0x805b790,%eax
 8053450:	8b 58 08             	mov    0x8(%eax),%ebx
 8053453:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053458:	83 ec 0c             	sub    $0xc,%esp
 805345b:	50                   	push   %eax
 805345c:	e8 6f 54 ff ff       	call   80488d0 <strlen@plt>
 8053461:	83 c4 10             	add    $0x10,%esp
 8053464:	01 d8                	add    %ebx,%eax
 8053466:	c6 00 00             	movb   $0x0,(%eax)
 8053469:	b8 04 01 00 00       	mov    $0x104,%eax
 805346e:	e9 ec 03 00 00       	jmp    805385f <yylex+0x18f4>
 8053473:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8053478:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 805347d:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8053482:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8053487:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805348c:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8053491:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053496:	89 c2                	mov    %eax,%edx
 8053498:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805349d:	01 d0                	add    %edx,%eax
 805349f:	83 e8 01             	sub    $0x1,%eax
 80534a2:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80534a7:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80534ac:	89 c2                	mov    %eax,%edx
 80534ae:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80534b3:	01 d0                	add    %edx,%eax
 80534b5:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80534ba:	8b 0d 84 b7 05 08    	mov    0x805b784,%ecx
 80534c0:	8b 15 c0 b0 05 08    	mov    0x805b0c0,%edx
 80534c6:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 80534cb:	51                   	push   %ecx
 80534cc:	52                   	push   %edx
 80534cd:	50                   	push   %eax
 80534ce:	68 1c 78 05 08       	push   $0x805781c
 80534d3:	e8 08 53 ff ff       	call   80487e0 <printf@plt>
 80534d8:	83 c4 10             	add    $0x10,%esp
 80534db:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 80534e0:	83 c0 01             	add    $0x1,%eax
 80534e3:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 80534e8:	b8 02 01 00 00       	mov    $0x102,%eax
 80534ed:	e9 6d 03 00 00       	jmp    805385f <yylex+0x18f4>
 80534f2:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80534f7:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80534fc:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8053501:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8053506:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805350b:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8053510:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053515:	89 c2                	mov    %eax,%edx
 8053517:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805351c:	01 d0                	add    %edx,%eax
 805351e:	83 e8 01             	sub    $0x1,%eax
 8053521:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 8053526:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805352b:	89 c2                	mov    %eax,%edx
 805352d:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8053532:	01 d0                	add    %edx,%eax
 8053534:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8053539:	8b 0d 84 b7 05 08    	mov    0x805b784,%ecx
 805353f:	8b 15 c0 b0 05 08    	mov    0x805b0c0,%edx
 8053545:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 805354a:	51                   	push   %ecx
 805354b:	52                   	push   %edx
 805354c:	50                   	push   %eax
 805354d:	68 5c 78 05 08       	push   $0x805785c
 8053552:	e8 89 52 ff ff       	call   80487e0 <printf@plt>
 8053557:	83 c4 10             	add    $0x10,%esp
 805355a:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 805355f:	83 c0 01             	add    $0x1,%eax
 8053562:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 8053567:	b8 02 01 00 00       	mov    $0x102,%eax
 805356c:	e9 ee 02 00 00       	jmp    805385f <yylex+0x18f4>
 8053571:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8053576:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 805357b:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 8053580:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 8053585:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805358a:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 805358f:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053594:	89 c2                	mov    %eax,%edx
 8053596:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805359b:	01 d0                	add    %edx,%eax
 805359d:	83 e8 01             	sub    $0x1,%eax
 80535a0:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 80535a5:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 80535aa:	89 c2                	mov    %eax,%edx
 80535ac:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 80535b1:	01 d0                	add    %edx,%eax
 80535b3:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 80535b8:	8b 0d 84 b7 05 08    	mov    0x805b784,%ecx
 80535be:	8b 15 c0 b0 05 08    	mov    0x805b0c0,%edx
 80535c4:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 80535c9:	51                   	push   %ecx
 80535ca:	52                   	push   %edx
 80535cb:	50                   	push   %eax
 80535cc:	68 98 78 05 08       	push   $0x8057898
 80535d1:	e8 0a 52 ff ff       	call   80487e0 <printf@plt>
 80535d6:	83 c4 10             	add    $0x10,%esp
 80535d9:	a1 3c b1 05 08       	mov    0x805b13c,%eax
 80535de:	83 c0 01             	add    $0x1,%eax
 80535e1:	a3 3c b1 05 08       	mov    %eax,0x805b13c
 80535e6:	e9 6f 02 00 00       	jmp    805385a <yylex+0x18ef>
 80535eb:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80535f0:	a3 b8 b0 05 08       	mov    %eax,0x805b0b8
 80535f5:	a1 b8 b0 05 08       	mov    0x805b0b8,%eax
 80535fa:	a3 b0 b0 05 08       	mov    %eax,0x805b0b0
 80535ff:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053604:	a3 b4 b0 05 08       	mov    %eax,0x805b0b4
 8053609:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 805360e:	89 c2                	mov    %eax,%edx
 8053610:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8053615:	01 d0                	add    %edx,%eax
 8053617:	83 e8 01             	sub    $0x1,%eax
 805361a:	a3 bc b0 05 08       	mov    %eax,0x805b0bc
 805361f:	a1 c4 b0 05 08       	mov    0x805b0c4,%eax
 8053624:	89 c2                	mov    %eax,%edx
 8053626:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 805362b:	01 d0                	add    %edx,%eax
 805362d:	a3 c4 b0 05 08       	mov    %eax,0x805b0c4
 8053632:	8b 0d 34 b1 05 08    	mov    0x805b134,%ecx
 8053638:	8b 15 8c b7 05 08    	mov    0x805b78c,%edx
 805363e:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053643:	51                   	push   %ecx
 8053644:	6a 01                	push   $0x1
 8053646:	52                   	push   %edx
 8053647:	50                   	push   %eax
 8053648:	e8 13 52 ff ff       	call   8048860 <fwrite@plt>
 805364d:	83 c4 10             	add    $0x10,%esp
 8053650:	e9 05 02 00 00       	jmp    805385a <yylex+0x18ef>
 8053655:	b8 00 00 00 00       	mov    $0x0,%eax
 805365a:	e9 00 02 00 00       	jmp    805385f <yylex+0x18f4>
 805365f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8053662:	8b 15 84 b7 05 08    	mov    0x805b784,%edx
 8053668:	29 d0                	sub    %edx,%eax
 805366a:	83 e8 01             	sub    $0x1,%eax
 805366d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8053670:	0f b6 15 50 b1 05 08 	movzbl 0x805b150,%edx
 8053677:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805367a:	88 10                	mov    %dl,(%eax)
 805367c:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053681:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053687:	c1 e2 02             	shl    $0x2,%edx
 805368a:	01 d0                	add    %edx,%eax
 805368c:	8b 00                	mov    (%eax),%eax
 805368e:	8b 40 2c             	mov    0x2c(%eax),%eax
 8053691:	85 c0                	test   %eax,%eax
 8053693:	75 4d                	jne    80536e2 <yylex+0x1777>
 8053695:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805369a:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80536a0:	c1 e2 02             	shl    $0x2,%edx
 80536a3:	01 d0                	add    %edx,%eax
 80536a5:	8b 00                	mov    (%eax),%eax
 80536a7:	8b 40 10             	mov    0x10(%eax),%eax
 80536aa:	a3 54 b1 05 08       	mov    %eax,0x805b154
 80536af:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80536b4:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80536ba:	c1 e2 02             	shl    $0x2,%edx
 80536bd:	01 d0                	add    %edx,%eax
 80536bf:	8b 00                	mov    (%eax),%eax
 80536c1:	8b 15 30 b1 05 08    	mov    0x805b130,%edx
 80536c7:	89 10                	mov    %edx,(%eax)
 80536c9:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80536ce:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80536d4:	c1 e2 02             	shl    $0x2,%edx
 80536d7:	01 d0                	add    %edx,%eax
 80536d9:	8b 00                	mov    (%eax),%eax
 80536db:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
 80536e2:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80536e7:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80536ed:	c1 e2 02             	shl    $0x2,%edx
 80536f0:	01 d0                	add    %edx,%eax
 80536f2:	8b 00                	mov    (%eax),%eax
 80536f4:	8b 40 04             	mov    0x4(%eax),%eax
 80536f7:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 80536fd:	01 c2                	add    %eax,%edx
 80536ff:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8053704:	39 c2                	cmp    %eax,%edx
 8053706:	72 64                	jb     805376c <yylex+0x1801>
 8053708:	8b 15 84 b7 05 08    	mov    0x805b784,%edx
 805370e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053711:	01 d0                	add    %edx,%eax
 8053713:	a3 58 b1 05 08       	mov    %eax,0x805b158
 8053718:	e8 85 06 00 00       	call   8053da2 <yy_get_previous_state>
 805371d:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8053720:	83 ec 0c             	sub    $0xc,%esp
 8053723:	ff 75 dc             	pushl  -0x24(%ebp)
 8053726:	e8 56 07 00 00       	call   8053e81 <yy_try_NUL_trans>
 805372b:	83 c4 10             	add    $0x10,%esp
 805372e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8053731:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053736:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8053739:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 805373d:	74 20                	je     805375f <yylex+0x17f4>
 805373f:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8053744:	83 c0 01             	add    $0x1,%eax
 8053747:	a3 58 b1 05 08       	mov    %eax,0x805b158
 805374c:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8053751:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8053754:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053757:	89 45 dc             	mov    %eax,-0x24(%ebp)
 805375a:	e9 d7 e8 ff ff       	jmp    8052036 <yylex+0xcb>
 805375f:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8053764:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8053767:	e9 7f e9 ff ff       	jmp    80520eb <yylex+0x180>
 805376c:	e8 f3 00 00 00       	call   8053864 <yy_get_next_buffer>
 8053771:	83 f8 01             	cmp    $0x1,%eax
 8053774:	74 12                	je     8053788 <yylex+0x181d>
 8053776:	83 f8 02             	cmp    $0x2,%eax
 8053779:	0f 84 8b 00 00 00    	je     805380a <yylex+0x189f>
 805377f:	85 c0                	test   %eax,%eax
 8053781:	74 5a                	je     80537dd <yylex+0x1872>
 8053783:	e9 d2 00 00 00       	jmp    805385a <yylex+0x18ef>
 8053788:	c7 05 64 b1 05 08 00 	movl   $0x0,0x805b164
 805378f:	00 00 00 
 8053792:	e8 b9 1f 00 00       	call   8055750 <yywrap>
 8053797:	85 c0                	test   %eax,%eax
 8053799:	74 26                	je     80537c1 <yylex+0x1856>
 805379b:	a1 84 b7 05 08       	mov    0x805b784,%eax
 80537a0:	a3 58 b1 05 08       	mov    %eax,0x805b158
 80537a5:	a1 60 b1 05 08       	mov    0x805b160,%eax
 80537aa:	83 e8 01             	sub    $0x1,%eax
 80537ad:	89 c2                	mov    %eax,%edx
 80537af:	c1 ea 1f             	shr    $0x1f,%edx
 80537b2:	01 d0                	add    %edx,%eax
 80537b4:	d1 f8                	sar    %eax
 80537b6:	83 c0 28             	add    $0x28,%eax
 80537b9:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80537bc:	e9 d8 e9 ff ff       	jmp    8052199 <yylex+0x22e>
 80537c1:	a1 64 b1 05 08       	mov    0x805b164,%eax
 80537c6:	85 c0                	test   %eax,%eax
 80537c8:	75 7f                	jne    8053849 <yylex+0x18de>
 80537ca:	a1 30 b1 05 08       	mov    0x805b130,%eax
 80537cf:	83 ec 0c             	sub    $0xc,%esp
 80537d2:	50                   	push   %eax
 80537d3:	e8 08 0a 00 00       	call   80541e0 <yyrestart>
 80537d8:	83 c4 10             	add    $0x10,%esp
 80537db:	eb 6c                	jmp    8053849 <yylex+0x18de>
 80537dd:	8b 15 84 b7 05 08    	mov    0x805b784,%edx
 80537e3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80537e6:	01 d0                	add    %edx,%eax
 80537e8:	a3 58 b1 05 08       	mov    %eax,0x805b158
 80537ed:	e8 b0 05 00 00       	call   8053da2 <yy_get_previous_state>
 80537f2:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80537f5:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80537fa:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80537fd:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053802:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8053805:	e9 2c e8 ff ff       	jmp    8052036 <yylex+0xcb>
 805380a:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805380f:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053815:	c1 e2 02             	shl    $0x2,%edx
 8053818:	01 d0                	add    %edx,%eax
 805381a:	8b 00                	mov    (%eax),%eax
 805381c:	8b 40 04             	mov    0x4(%eax),%eax
 805381f:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 8053825:	01 d0                	add    %edx,%eax
 8053827:	a3 58 b1 05 08       	mov    %eax,0x805b158
 805382c:	e8 71 05 00 00       	call   8053da2 <yy_get_previous_state>
 8053831:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8053834:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8053839:	89 45 e0             	mov    %eax,-0x20(%ebp)
 805383c:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053841:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8053844:	e9 a2 e8 ff ff       	jmp    80520eb <yylex+0x180>
 8053849:	90                   	nop
 805384a:	eb 0e                	jmp    805385a <yylex+0x18ef>
 805384c:	83 ec 0c             	sub    $0xc,%esp
 805384f:	68 d4 78 05 08       	push   $0x80578d4
 8053854:	e8 a6 11 00 00       	call   80549ff <yy_fatal_error>
 8053859:	90                   	nop
 805385a:	e9 b5 e7 ff ff       	jmp    8052014 <yylex+0xa9>
 805385f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8053862:	c9                   	leave  
 8053863:	c3                   	ret    

08053864 <yy_get_next_buffer>:
 8053864:	55                   	push   %ebp
 8053865:	89 e5                	mov    %esp,%ebp
 8053867:	53                   	push   %ebx
 8053868:	83 ec 34             	sub    $0x34,%esp
 805386b:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053870:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053876:	c1 e2 02             	shl    $0x2,%edx
 8053879:	01 d0                	add    %edx,%eax
 805387b:	8b 00                	mov    (%eax),%eax
 805387d:	8b 40 04             	mov    0x4(%eax),%eax
 8053880:	89 45 c8             	mov    %eax,-0x38(%ebp)
 8053883:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053888:	89 45 cc             	mov    %eax,-0x34(%ebp)
 805388b:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053890:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053896:	c1 e2 02             	shl    $0x2,%edx
 8053899:	01 d0                	add    %edx,%eax
 805389b:	8b 00                	mov    (%eax),%eax
 805389d:	8b 40 04             	mov    0x4(%eax),%eax
 80538a0:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 80538a6:	83 c2 01             	add    $0x1,%edx
 80538a9:	01 c2                	add    %eax,%edx
 80538ab:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80538b0:	39 c2                	cmp    %eax,%edx
 80538b2:	73 0d                	jae    80538c1 <yy_get_next_buffer+0x5d>
 80538b4:	83 ec 0c             	sub    $0xc,%esp
 80538b7:	68 ac 79 05 08       	push   $0x80579ac
 80538bc:	e8 3e 11 00 00       	call   80549ff <yy_fatal_error>
 80538c1:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80538c6:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80538cc:	c1 e2 02             	shl    $0x2,%edx
 80538cf:	01 d0                	add    %edx,%eax
 80538d1:	8b 00                	mov    (%eax),%eax
 80538d3:	8b 40 28             	mov    0x28(%eax),%eax
 80538d6:	85 c0                	test   %eax,%eax
 80538d8:	75 29                	jne    8053903 <yy_get_next_buffer+0x9f>
 80538da:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80538df:	89 c2                	mov    %eax,%edx
 80538e1:	a1 84 b7 05 08       	mov    0x805b784,%eax
 80538e6:	29 c2                	sub    %eax,%edx
 80538e8:	89 d0                	mov    %edx,%eax
 80538ea:	83 f8 01             	cmp    $0x1,%eax
 80538ed:	75 0a                	jne    80538f9 <yy_get_next_buffer+0x95>
 80538ef:	b8 01 00 00 00       	mov    $0x1,%eax
 80538f4:	e9 a4 04 00 00       	jmp    8053d9d <yy_get_next_buffer+0x539>
 80538f9:	b8 02 00 00 00       	mov    $0x2,%eax
 80538fe:	e9 9a 04 00 00       	jmp    8053d9d <yy_get_next_buffer+0x539>
 8053903:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8053908:	89 c2                	mov    %eax,%edx
 805390a:	a1 84 b7 05 08       	mov    0x805b784,%eax
 805390f:	29 c2                	sub    %eax,%edx
 8053911:	89 d0                	mov    %edx,%eax
 8053913:	83 e8 01             	sub    $0x1,%eax
 8053916:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8053919:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 8053920:	eb 1b                	jmp    805393d <yy_get_next_buffer+0xd9>
 8053922:	8b 45 c8             	mov    -0x38(%ebp),%eax
 8053925:	8d 50 01             	lea    0x1(%eax),%edx
 8053928:	89 55 c8             	mov    %edx,-0x38(%ebp)
 805392b:	8b 55 cc             	mov    -0x34(%ebp),%edx
 805392e:	8d 4a 01             	lea    0x1(%edx),%ecx
 8053931:	89 4d cc             	mov    %ecx,-0x34(%ebp)
 8053934:	0f b6 12             	movzbl (%edx),%edx
 8053937:	88 10                	mov    %dl,(%eax)
 8053939:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
 805393d:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8053940:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
 8053943:	72 dd                	jb     8053922 <yy_get_next_buffer+0xbe>
 8053945:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805394a:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053950:	c1 e2 02             	shl    $0x2,%edx
 8053953:	01 d0                	add    %edx,%eax
 8053955:	8b 00                	mov    (%eax),%eax
 8053957:	8b 40 2c             	mov    0x2c(%eax),%eax
 805395a:	83 f8 02             	cmp    $0x2,%eax
 805395d:	75 2a                	jne    8053989 <yy_get_next_buffer+0x125>
 805395f:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053964:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 805396a:	c1 e2 02             	shl    $0x2,%edx
 805396d:	01 d0                	add    %edx,%eax
 805396f:	8b 00                	mov    (%eax),%eax
 8053971:	c7 05 54 b1 05 08 00 	movl   $0x0,0x805b154
 8053978:	00 00 00 
 805397b:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 8053981:	89 50 10             	mov    %edx,0x10(%eax)
 8053984:	e9 b3 02 00 00       	jmp    8053c3c <yy_get_next_buffer+0x3d8>
 8053989:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805398e:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053994:	c1 e2 02             	shl    $0x2,%edx
 8053997:	01 d0                	add    %edx,%eax
 8053999:	8b 00                	mov    (%eax),%eax
 805399b:	8b 40 0c             	mov    0xc(%eax),%eax
 805399e:	2b 45 e4             	sub    -0x1c(%ebp),%eax
 80539a1:	83 e8 01             	sub    $0x1,%eax
 80539a4:	89 45 d8             	mov    %eax,-0x28(%ebp)
 80539a7:	e9 e1 00 00 00       	jmp    8053a8d <yy_get_next_buffer+0x229>
 80539ac:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80539b1:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80539b7:	c1 e2 02             	shl    $0x2,%edx
 80539ba:	01 d0                	add    %edx,%eax
 80539bc:	8b 00                	mov    (%eax),%eax
 80539be:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80539c1:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80539c6:	89 c2                	mov    %eax,%edx
 80539c8:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80539cb:	8b 40 04             	mov    0x4(%eax),%eax
 80539ce:	29 c2                	sub    %eax,%edx
 80539d0:	89 d0                	mov    %edx,%eax
 80539d2:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80539d5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80539d8:	8b 40 14             	mov    0x14(%eax),%eax
 80539db:	85 c0                	test   %eax,%eax
 80539dd:	74 5f                	je     8053a3e <yy_get_next_buffer+0x1da>
 80539df:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80539e2:	8b 40 0c             	mov    0xc(%eax),%eax
 80539e5:	01 c0                	add    %eax,%eax
 80539e7:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80539ea:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80539ee:	75 19                	jne    8053a09 <yy_get_next_buffer+0x1a5>
 80539f0:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80539f3:	8b 50 0c             	mov    0xc(%eax),%edx
 80539f6:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80539f9:	8b 40 0c             	mov    0xc(%eax),%eax
 80539fc:	c1 e8 03             	shr    $0x3,%eax
 80539ff:	01 c2                	add    %eax,%edx
 8053a01:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053a04:	89 50 0c             	mov    %edx,0xc(%eax)
 8053a07:	eb 0f                	jmp    8053a18 <yy_get_next_buffer+0x1b4>
 8053a09:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053a0c:	8b 40 0c             	mov    0xc(%eax),%eax
 8053a0f:	8d 14 00             	lea    (%eax,%eax,1),%edx
 8053a12:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053a15:	89 50 0c             	mov    %edx,0xc(%eax)
 8053a18:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053a1b:	8b 40 0c             	mov    0xc(%eax),%eax
 8053a1e:	8d 50 02             	lea    0x2(%eax),%edx
 8053a21:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053a24:	8b 40 04             	mov    0x4(%eax),%eax
 8053a27:	83 ec 08             	sub    $0x8,%esp
 8053a2a:	52                   	push   %edx
 8053a2b:	50                   	push   %eax
 8053a2c:	e8 7c 11 00 00       	call   8054bad <yyrealloc>
 8053a31:	83 c4 10             	add    $0x10,%esp
 8053a34:	89 c2                	mov    %eax,%edx
 8053a36:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053a39:	89 50 04             	mov    %edx,0x4(%eax)
 8053a3c:	eb 0a                	jmp    8053a48 <yy_get_next_buffer+0x1e4>
 8053a3e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053a41:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8053a48:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053a4b:	8b 40 04             	mov    0x4(%eax),%eax
 8053a4e:	85 c0                	test   %eax,%eax
 8053a50:	75 0d                	jne    8053a5f <yy_get_next_buffer+0x1fb>
 8053a52:	83 ec 0c             	sub    $0xc,%esp
 8053a55:	68 e4 79 05 08       	push   $0x80579e4
 8053a5a:	e8 a0 0f 00 00       	call   80549ff <yy_fatal_error>
 8053a5f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053a62:	8b 50 04             	mov    0x4(%eax),%edx
 8053a65:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8053a68:	01 d0                	add    %edx,%eax
 8053a6a:	a3 58 b1 05 08       	mov    %eax,0x805b158
 8053a6f:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053a74:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053a7a:	c1 e2 02             	shl    $0x2,%edx
 8053a7d:	01 d0                	add    %edx,%eax
 8053a7f:	8b 00                	mov    (%eax),%eax
 8053a81:	8b 40 0c             	mov    0xc(%eax),%eax
 8053a84:	2b 45 e4             	sub    -0x1c(%ebp),%eax
 8053a87:	83 e8 01             	sub    $0x1,%eax
 8053a8a:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8053a8d:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 8053a91:	0f 84 15 ff ff ff    	je     80539ac <yy_get_next_buffer+0x148>
 8053a97:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
 8053a9e:	76 07                	jbe    8053aa7 <yy_get_next_buffer+0x243>
 8053aa0:	c7 45 d8 00 20 00 00 	movl   $0x2000,-0x28(%ebp)
 8053aa7:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053aac:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053ab2:	c1 e2 02             	shl    $0x2,%edx
 8053ab5:	01 d0                	add    %edx,%eax
 8053ab7:	8b 00                	mov    (%eax),%eax
 8053ab9:	8b 40 18             	mov    0x18(%eax),%eax
 8053abc:	85 c0                	test   %eax,%eax
 8053abe:	0f 84 c5 00 00 00    	je     8053b89 <yy_get_next_buffer+0x325>
 8053ac4:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
 8053acb:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 8053ad2:	eb 28                	jmp    8053afc <yy_get_next_buffer+0x298>
 8053ad4:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053ad9:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053adf:	c1 e2 02             	shl    $0x2,%edx
 8053ae2:	01 d0                	add    %edx,%eax
 8053ae4:	8b 00                	mov    (%eax),%eax
 8053ae6:	8b 40 04             	mov    0x4(%eax),%eax
 8053ae9:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8053aec:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8053aef:	01 ca                	add    %ecx,%edx
 8053af1:	01 d0                	add    %edx,%eax
 8053af3:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8053af6:	88 10                	mov    %dl,(%eax)
 8053af8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 8053afc:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8053aff:	3b 45 d8             	cmp    -0x28(%ebp),%eax
 8053b02:	73 20                	jae    8053b24 <yy_get_next_buffer+0x2c0>
 8053b04:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8053b09:	83 ec 0c             	sub    $0xc,%esp
 8053b0c:	50                   	push   %eax
 8053b0d:	e8 2e 4d ff ff       	call   8048840 <_IO_getc@plt>
 8053b12:	83 c4 10             	add    $0x10,%esp
 8053b15:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8053b18:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
 8053b1c:	74 06                	je     8053b24 <yy_get_next_buffer+0x2c0>
 8053b1e:	83 7d dc 0a          	cmpl   $0xa,-0x24(%ebp)
 8053b22:	75 b0                	jne    8053ad4 <yy_get_next_buffer+0x270>
 8053b24:	83 7d dc 0a          	cmpl   $0xa,-0x24(%ebp)
 8053b28:	75 2a                	jne    8053b54 <yy_get_next_buffer+0x2f0>
 8053b2a:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053b2f:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053b35:	c1 e2 02             	shl    $0x2,%edx
 8053b38:	01 d0                	add    %edx,%eax
 8053b3a:	8b 00                	mov    (%eax),%eax
 8053b3c:	8b 48 04             	mov    0x4(%eax),%ecx
 8053b3f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8053b42:	8d 50 01             	lea    0x1(%eax),%edx
 8053b45:	89 55 e0             	mov    %edx,-0x20(%ebp)
 8053b48:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8053b4b:	01 d0                	add    %edx,%eax
 8053b4d:	01 c8                	add    %ecx,%eax
 8053b4f:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8053b52:	88 10                	mov    %dl,(%eax)
 8053b54:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
 8053b58:	75 22                	jne    8053b7c <yy_get_next_buffer+0x318>
 8053b5a:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8053b5f:	83 ec 0c             	sub    $0xc,%esp
 8053b62:	50                   	push   %eax
 8053b63:	e8 a8 4c ff ff       	call   8048810 <ferror@plt>
 8053b68:	83 c4 10             	add    $0x10,%esp
 8053b6b:	85 c0                	test   %eax,%eax
 8053b6d:	74 0d                	je     8053b7c <yy_get_next_buffer+0x318>
 8053b6f:	83 ec 0c             	sub    $0xc,%esp
 8053b72:	68 10 7a 05 08       	push   $0x8057a10
 8053b77:	e8 83 0e 00 00       	call   80549ff <yy_fatal_error>
 8053b7c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8053b7f:	a3 54 b1 05 08       	mov    %eax,0x805b154
 8053b84:	e9 98 00 00 00       	jmp    8053c21 <yy_get_next_buffer+0x3bd>
 8053b89:	e8 b2 4d ff ff       	call   8048940 <__errno_location@plt>
 8053b8e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8053b94:	eb 35                	jmp    8053bcb <yy_get_next_buffer+0x367>
 8053b96:	e8 a5 4d ff ff       	call   8048940 <__errno_location@plt>
 8053b9b:	8b 00                	mov    (%eax),%eax
 8053b9d:	83 f8 04             	cmp    $0x4,%eax
 8053ba0:	74 0d                	je     8053baf <yy_get_next_buffer+0x34b>
 8053ba2:	83 ec 0c             	sub    $0xc,%esp
 8053ba5:	68 10 7a 05 08       	push   $0x8057a10
 8053baa:	e8 50 0e 00 00       	call   80549ff <yy_fatal_error>
 8053baf:	e8 8c 4d ff ff       	call   8048940 <__errno_location@plt>
 8053bb4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8053bba:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8053bbf:	83 ec 0c             	sub    $0xc,%esp
 8053bc2:	50                   	push   %eax
 8053bc3:	e8 c8 4d ff ff       	call   8048990 <clearerr@plt>
 8053bc8:	83 c4 10             	add    $0x10,%esp
 8053bcb:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8053bd0:	8b 15 4c b1 05 08    	mov    0x805b14c,%edx
 8053bd6:	8b 0d 44 b1 05 08    	mov    0x805b144,%ecx
 8053bdc:	c1 e1 02             	shl    $0x2,%ecx
 8053bdf:	01 ca                	add    %ecx,%edx
 8053be1:	8b 12                	mov    (%edx),%edx
 8053be3:	8b 4a 04             	mov    0x4(%edx),%ecx
 8053be6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8053be9:	01 ca                	add    %ecx,%edx
 8053beb:	50                   	push   %eax
 8053bec:	ff 75 d8             	pushl  -0x28(%ebp)
 8053bef:	6a 01                	push   $0x1
 8053bf1:	52                   	push   %edx
 8053bf2:	e8 79 4c ff ff       	call   8048870 <fread@plt>
 8053bf7:	83 c4 10             	add    $0x10,%esp
 8053bfa:	a3 54 b1 05 08       	mov    %eax,0x805b154
 8053bff:	a1 54 b1 05 08       	mov    0x805b154,%eax
 8053c04:	85 c0                	test   %eax,%eax
 8053c06:	75 19                	jne    8053c21 <yy_get_next_buffer+0x3bd>
 8053c08:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8053c0d:	83 ec 0c             	sub    $0xc,%esp
 8053c10:	50                   	push   %eax
 8053c11:	e8 fa 4b ff ff       	call   8048810 <ferror@plt>
 8053c16:	83 c4 10             	add    $0x10,%esp
 8053c19:	85 c0                	test   %eax,%eax
 8053c1b:	0f 85 75 ff ff ff    	jne    8053b96 <yy_get_next_buffer+0x332>
 8053c21:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053c26:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053c2c:	c1 e2 02             	shl    $0x2,%edx
 8053c2f:	01 d0                	add    %edx,%eax
 8053c31:	8b 00                	mov    (%eax),%eax
 8053c33:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 8053c39:	89 50 10             	mov    %edx,0x10(%eax)
 8053c3c:	a1 54 b1 05 08       	mov    0x805b154,%eax
 8053c41:	85 c0                	test   %eax,%eax
 8053c43:	75 42                	jne    8053c87 <yy_get_next_buffer+0x423>
 8053c45:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 8053c49:	75 1a                	jne    8053c65 <yy_get_next_buffer+0x401>
 8053c4b:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 8053c52:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8053c57:	83 ec 0c             	sub    $0xc,%esp
 8053c5a:	50                   	push   %eax
 8053c5b:	e8 80 05 00 00       	call   80541e0 <yyrestart>
 8053c60:	83 c4 10             	add    $0x10,%esp
 8053c63:	eb 29                	jmp    8053c8e <yy_get_next_buffer+0x42a>
 8053c65:	c7 45 d4 02 00 00 00 	movl   $0x2,-0x2c(%ebp)
 8053c6c:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053c71:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053c77:	c1 e2 02             	shl    $0x2,%edx
 8053c7a:	01 d0                	add    %edx,%eax
 8053c7c:	8b 00                	mov    (%eax),%eax
 8053c7e:	c7 40 2c 02 00 00 00 	movl   $0x2,0x2c(%eax)
 8053c85:	eb 07                	jmp    8053c8e <yy_get_next_buffer+0x42a>
 8053c87:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 8053c8e:	a1 54 b1 05 08       	mov    0x805b154,%eax
 8053c93:	89 c2                	mov    %eax,%edx
 8053c95:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053c98:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 8053c9b:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053ca0:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053ca6:	c1 e2 02             	shl    $0x2,%edx
 8053ca9:	01 d0                	add    %edx,%eax
 8053cab:	8b 00                	mov    (%eax),%eax
 8053cad:	8b 40 0c             	mov    0xc(%eax),%eax
 8053cb0:	39 c1                	cmp    %eax,%ecx
 8053cb2:	76 78                	jbe    8053d2c <yy_get_next_buffer+0x4c8>
 8053cb4:	a1 54 b1 05 08       	mov    0x805b154,%eax
 8053cb9:	89 c2                	mov    %eax,%edx
 8053cbb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053cbe:	01 c2                	add    %eax,%edx
 8053cc0:	a1 54 b1 05 08       	mov    0x805b154,%eax
 8053cc5:	d1 f8                	sar    %eax
 8053cc7:	01 d0                	add    %edx,%eax
 8053cc9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8053ccc:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053cd1:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053cd7:	c1 e2 02             	shl    $0x2,%edx
 8053cda:	01 d0                	add    %edx,%eax
 8053cdc:	8b 18                	mov    (%eax),%ebx
 8053cde:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8053ce1:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053ce6:	8b 0d 44 b1 05 08    	mov    0x805b144,%ecx
 8053cec:	c1 e1 02             	shl    $0x2,%ecx
 8053cef:	01 c8                	add    %ecx,%eax
 8053cf1:	8b 00                	mov    (%eax),%eax
 8053cf3:	8b 40 04             	mov    0x4(%eax),%eax
 8053cf6:	83 ec 08             	sub    $0x8,%esp
 8053cf9:	52                   	push   %edx
 8053cfa:	50                   	push   %eax
 8053cfb:	e8 ad 0e 00 00       	call   8054bad <yyrealloc>
 8053d00:	83 c4 10             	add    $0x10,%esp
 8053d03:	89 43 04             	mov    %eax,0x4(%ebx)
 8053d06:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053d0b:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053d11:	c1 e2 02             	shl    $0x2,%edx
 8053d14:	01 d0                	add    %edx,%eax
 8053d16:	8b 00                	mov    (%eax),%eax
 8053d18:	8b 40 04             	mov    0x4(%eax),%eax
 8053d1b:	85 c0                	test   %eax,%eax
 8053d1d:	75 0d                	jne    8053d2c <yy_get_next_buffer+0x4c8>
 8053d1f:	83 ec 0c             	sub    $0xc,%esp
 8053d22:	68 30 7a 05 08       	push   $0x8057a30
 8053d27:	e8 d3 0c 00 00       	call   80549ff <yy_fatal_error>
 8053d2c:	a1 54 b1 05 08       	mov    0x805b154,%eax
 8053d31:	89 c2                	mov    %eax,%edx
 8053d33:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053d36:	01 d0                	add    %edx,%eax
 8053d38:	a3 54 b1 05 08       	mov    %eax,0x805b154
 8053d3d:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053d42:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053d48:	c1 e2 02             	shl    $0x2,%edx
 8053d4b:	01 d0                	add    %edx,%eax
 8053d4d:	8b 00                	mov    (%eax),%eax
 8053d4f:	8b 40 04             	mov    0x4(%eax),%eax
 8053d52:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 8053d58:	01 d0                	add    %edx,%eax
 8053d5a:	c6 00 00             	movb   $0x0,(%eax)
 8053d5d:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053d62:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053d68:	c1 e2 02             	shl    $0x2,%edx
 8053d6b:	01 d0                	add    %edx,%eax
 8053d6d:	8b 00                	mov    (%eax),%eax
 8053d6f:	8b 40 04             	mov    0x4(%eax),%eax
 8053d72:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 8053d78:	83 c2 01             	add    $0x1,%edx
 8053d7b:	01 d0                	add    %edx,%eax
 8053d7d:	c6 00 00             	movb   $0x0,(%eax)
 8053d80:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053d85:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053d8b:	c1 e2 02             	shl    $0x2,%edx
 8053d8e:	01 d0                	add    %edx,%eax
 8053d90:	8b 00                	mov    (%eax),%eax
 8053d92:	8b 40 04             	mov    0x4(%eax),%eax
 8053d95:	a3 84 b7 05 08       	mov    %eax,0x805b784
 8053d9a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8053d9d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8053da0:	c9                   	leave  
 8053da1:	c3                   	ret    

08053da2 <yy_get_previous_state>:
 8053da2:	55                   	push   %ebp
 8053da3:	89 e5                	mov    %esp,%ebp
 8053da5:	83 ec 10             	sub    $0x10,%esp
 8053da8:	a1 60 b1 05 08       	mov    0x805b160,%eax
 8053dad:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8053db0:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8053db5:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8053db8:	e9 b1 00 00 00       	jmp    8053e6e <yy_get_previous_state+0xcc>
 8053dbd:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8053dc0:	0f b6 00             	movzbl (%eax),%eax
 8053dc3:	84 c0                	test   %al,%al
 8053dc5:	74 12                	je     8053dd9 <yy_get_previous_state+0x37>
 8053dc7:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8053dca:	0f b6 00             	movzbl (%eax),%eax
 8053dcd:	0f b6 c0             	movzbl %al,%eax
 8053dd0:	0f b6 80 c0 70 05 08 	movzbl 0x80570c0(%eax),%eax
 8053dd7:	eb 05                	jmp    8053dde <yy_get_previous_state+0x3c>
 8053dd9:	b8 01 00 00 00       	mov    $0x1,%eax
 8053dde:	88 45 f7             	mov    %al,-0x9(%ebp)
 8053de1:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8053de4:	0f b7 84 00 00 70 05 	movzwl 0x8057000(%eax,%eax,1),%eax
 8053deb:	08 
 8053dec:	66 85 c0             	test   %ax,%ax
 8053def:	74 35                	je     8053e26 <yy_get_previous_state+0x84>
 8053df1:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8053df4:	a3 68 b1 05 08       	mov    %eax,0x805b168
 8053df9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8053dfc:	a3 6c b1 05 08       	mov    %eax,0x805b16c
 8053e01:	eb 23                	jmp    8053e26 <yy_get_previous_state+0x84>
 8053e03:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8053e06:	0f b7 84 00 c0 72 05 	movzwl 0x80572c0(%eax,%eax,1),%eax
 8053e0d:	08 
 8053e0e:	98                   	cwtl   
 8053e0f:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8053e12:	83 7d f8 51          	cmpl   $0x51,-0x8(%ebp)
 8053e16:	7e 0e                	jle    8053e26 <yy_get_previous_state+0x84>
 8053e18:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8053e1c:	0f b6 80 c0 71 05 08 	movzbl 0x80571c0(%eax),%eax
 8053e23:	88 45 f7             	mov    %al,-0x9(%ebp)
 8053e26:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8053e29:	0f b7 84 00 00 72 05 	movzwl 0x8057200(%eax,%eax,1),%eax
 8053e30:	08 
 8053e31:	0f b7 d0             	movzwl %ax,%edx
 8053e34:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8053e38:	01 d0                	add    %edx,%eax
 8053e3a:	0f b7 84 00 40 75 05 	movzwl 0x8057540(%eax,%eax,1),%eax
 8053e41:	08 
 8053e42:	98                   	cwtl   
 8053e43:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 8053e46:	75 bb                	jne    8053e03 <yy_get_previous_state+0x61>
 8053e48:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8053e4b:	0f b7 84 00 00 72 05 	movzwl 0x8057200(%eax,%eax,1),%eax
 8053e52:	08 
 8053e53:	0f b7 d0             	movzwl %ax,%edx
 8053e56:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8053e5a:	01 d0                	add    %edx,%eax
 8053e5c:	0f b7 84 00 80 73 05 	movzwl 0x8057380(%eax,%eax,1),%eax
 8053e63:	08 
 8053e64:	0f b7 c0             	movzwl %ax,%eax
 8053e67:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8053e6a:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8053e6e:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8053e73:	39 45 fc             	cmp    %eax,-0x4(%ebp)
 8053e76:	0f 82 41 ff ff ff    	jb     8053dbd <yy_get_previous_state+0x1b>
 8053e7c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8053e7f:	c9                   	leave  
 8053e80:	c3                   	ret    

08053e81 <yy_try_NUL_trans>:
 8053e81:	55                   	push   %ebp
 8053e82:	89 e5                	mov    %esp,%ebp
 8053e84:	83 ec 10             	sub    $0x10,%esp
 8053e87:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8053e8c:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8053e8f:	c6 45 f7 01          	movb   $0x1,-0x9(%ebp)
 8053e93:	8b 45 08             	mov    0x8(%ebp),%eax
 8053e96:	0f b7 84 00 00 70 05 	movzwl 0x8057000(%eax,%eax,1),%eax
 8053e9d:	08 
 8053e9e:	66 85 c0             	test   %ax,%ax
 8053ea1:	74 35                	je     8053ed8 <yy_try_NUL_trans+0x57>
 8053ea3:	8b 45 08             	mov    0x8(%ebp),%eax
 8053ea6:	a3 68 b1 05 08       	mov    %eax,0x805b168
 8053eab:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8053eae:	a3 6c b1 05 08       	mov    %eax,0x805b16c
 8053eb3:	eb 23                	jmp    8053ed8 <yy_try_NUL_trans+0x57>
 8053eb5:	8b 45 08             	mov    0x8(%ebp),%eax
 8053eb8:	0f b7 84 00 c0 72 05 	movzwl 0x80572c0(%eax,%eax,1),%eax
 8053ebf:	08 
 8053ec0:	98                   	cwtl   
 8053ec1:	89 45 08             	mov    %eax,0x8(%ebp)
 8053ec4:	83 7d 08 51          	cmpl   $0x51,0x8(%ebp)
 8053ec8:	7e 0e                	jle    8053ed8 <yy_try_NUL_trans+0x57>
 8053eca:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8053ece:	0f b6 80 c0 71 05 08 	movzbl 0x80571c0(%eax),%eax
 8053ed5:	88 45 f7             	mov    %al,-0x9(%ebp)
 8053ed8:	8b 45 08             	mov    0x8(%ebp),%eax
 8053edb:	0f b7 84 00 00 72 05 	movzwl 0x8057200(%eax,%eax,1),%eax
 8053ee2:	08 
 8053ee3:	0f b7 d0             	movzwl %ax,%edx
 8053ee6:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8053eea:	01 d0                	add    %edx,%eax
 8053eec:	0f b7 84 00 40 75 05 	movzwl 0x8057540(%eax,%eax,1),%eax
 8053ef3:	08 
 8053ef4:	98                   	cwtl   
 8053ef5:	3b 45 08             	cmp    0x8(%ebp),%eax
 8053ef8:	75 bb                	jne    8053eb5 <yy_try_NUL_trans+0x34>
 8053efa:	8b 45 08             	mov    0x8(%ebp),%eax
 8053efd:	0f b7 84 00 00 72 05 	movzwl 0x8057200(%eax,%eax,1),%eax
 8053f04:	08 
 8053f05:	0f b7 d0             	movzwl %ax,%edx
 8053f08:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8053f0c:	01 d0                	add    %edx,%eax
 8053f0e:	0f b7 84 00 80 73 05 	movzwl 0x8057380(%eax,%eax,1),%eax
 8053f15:	08 
 8053f16:	0f b7 c0             	movzwl %ax,%eax
 8053f19:	89 45 08             	mov    %eax,0x8(%ebp)
 8053f1c:	83 7d 08 51          	cmpl   $0x51,0x8(%ebp)
 8053f20:	0f 94 c0             	sete   %al
 8053f23:	0f b6 c0             	movzbl %al,%eax
 8053f26:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8053f29:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8053f2d:	75 05                	jne    8053f34 <yy_try_NUL_trans+0xb3>
 8053f2f:	8b 45 08             	mov    0x8(%ebp),%eax
 8053f32:	eb 05                	jmp    8053f39 <yy_try_NUL_trans+0xb8>
 8053f34:	b8 00 00 00 00       	mov    $0x0,%eax
 8053f39:	c9                   	leave  
 8053f3a:	c3                   	ret    

08053f3b <yyunput>:
 8053f3b:	55                   	push   %ebp
 8053f3c:	89 e5                	mov    %esp,%ebp
 8053f3e:	83 ec 18             	sub    $0x18,%esp
 8053f41:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8053f46:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8053f49:	0f b6 15 50 b1 05 08 	movzbl 0x805b150,%edx
 8053f50:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8053f53:	88 10                	mov    %dl,(%eax)
 8053f55:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053f5a:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053f60:	c1 e2 02             	shl    $0x2,%edx
 8053f63:	01 d0                	add    %edx,%eax
 8053f65:	8b 00                	mov    (%eax),%eax
 8053f67:	8b 40 04             	mov    0x4(%eax),%eax
 8053f6a:	83 c0 02             	add    $0x2,%eax
 8053f6d:	3b 45 e8             	cmp    -0x18(%ebp),%eax
 8053f70:	0f 86 04 01 00 00    	jbe    805407a <yyunput+0x13f>
 8053f76:	a1 54 b1 05 08       	mov    0x805b154,%eax
 8053f7b:	83 c0 02             	add    $0x2,%eax
 8053f7e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8053f81:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053f86:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053f8c:	c1 e2 02             	shl    $0x2,%edx
 8053f8f:	01 d0                	add    %edx,%eax
 8053f91:	8b 00                	mov    (%eax),%eax
 8053f93:	8b 50 04             	mov    0x4(%eax),%edx
 8053f96:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053f9b:	8b 0d 44 b1 05 08    	mov    0x805b144,%ecx
 8053fa1:	c1 e1 02             	shl    $0x2,%ecx
 8053fa4:	01 c8                	add    %ecx,%eax
 8053fa6:	8b 00                	mov    (%eax),%eax
 8053fa8:	8b 40 0c             	mov    0xc(%eax),%eax
 8053fab:	83 c0 02             	add    $0x2,%eax
 8053fae:	01 d0                	add    %edx,%eax
 8053fb0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8053fb3:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053fb8:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053fbe:	c1 e2 02             	shl    $0x2,%edx
 8053fc1:	01 d0                	add    %edx,%eax
 8053fc3:	8b 00                	mov    (%eax),%eax
 8053fc5:	8b 50 04             	mov    0x4(%eax),%edx
 8053fc8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053fcb:	01 d0                	add    %edx,%eax
 8053fcd:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8053fd0:	eb 13                	jmp    8053fe5 <yyunput+0xaa>
 8053fd2:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 8053fd6:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
 8053fda:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8053fdd:	0f b6 10             	movzbl (%eax),%edx
 8053fe0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8053fe3:	88 10                	mov    %dl,(%eax)
 8053fe5:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8053fea:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8053ff0:	c1 e2 02             	shl    $0x2,%edx
 8053ff3:	01 d0                	add    %edx,%eax
 8053ff5:	8b 00                	mov    (%eax),%eax
 8053ff7:	8b 40 04             	mov    0x4(%eax),%eax
 8053ffa:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 8053ffd:	72 d3                	jb     8053fd2 <yyunput+0x97>
 8053fff:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8054002:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054005:	29 c2                	sub    %eax,%edx
 8054007:	89 d0                	mov    %edx,%eax
 8054009:	01 45 e8             	add    %eax,-0x18(%ebp)
 805400c:	8b 55 ec             	mov    -0x14(%ebp),%edx
 805400f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054012:	29 c2                	sub    %eax,%edx
 8054014:	89 d0                	mov    %edx,%eax
 8054016:	01 45 0c             	add    %eax,0xc(%ebp)
 8054019:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805401e:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054024:	c1 e2 02             	shl    $0x2,%edx
 8054027:	01 d0                	add    %edx,%eax
 8054029:	8b 00                	mov    (%eax),%eax
 805402b:	8b 15 4c b1 05 08    	mov    0x805b14c,%edx
 8054031:	8b 0d 44 b1 05 08    	mov    0x805b144,%ecx
 8054037:	c1 e1 02             	shl    $0x2,%ecx
 805403a:	01 ca                	add    %ecx,%edx
 805403c:	8b 12                	mov    (%edx),%edx
 805403e:	8b 52 0c             	mov    0xc(%edx),%edx
 8054041:	89 15 54 b1 05 08    	mov    %edx,0x805b154
 8054047:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 805404d:	89 50 10             	mov    %edx,0x10(%eax)
 8054050:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054055:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 805405b:	c1 e2 02             	shl    $0x2,%edx
 805405e:	01 d0                	add    %edx,%eax
 8054060:	8b 00                	mov    (%eax),%eax
 8054062:	8b 40 04             	mov    0x4(%eax),%eax
 8054065:	83 c0 02             	add    $0x2,%eax
 8054068:	3b 45 e8             	cmp    -0x18(%ebp),%eax
 805406b:	76 0d                	jbe    805407a <yyunput+0x13f>
 805406d:	83 ec 0c             	sub    $0xc,%esp
 8054070:	68 60 7a 05 08       	push   $0x8057a60
 8054075:	e8 85 09 00 00       	call   80549ff <yy_fatal_error>
 805407a:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
 805407e:	8b 45 08             	mov    0x8(%ebp),%eax
 8054081:	89 c2                	mov    %eax,%edx
 8054083:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8054086:	88 10                	mov    %dl,(%eax)
 8054088:	83 7d 08 0a          	cmpl   $0xa,0x8(%ebp)
 805408c:	75 0d                	jne    805409b <yyunput+0x160>
 805408e:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8054093:	83 e8 01             	sub    $0x1,%eax
 8054096:	a3 c0 b0 05 08       	mov    %eax,0x805b0c0
 805409b:	8b 45 0c             	mov    0xc(%ebp),%eax
 805409e:	a3 84 b7 05 08       	mov    %eax,0x805b784
 80540a3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80540a6:	0f b6 00             	movzbl (%eax),%eax
 80540a9:	a2 50 b1 05 08       	mov    %al,0x805b150
 80540ae:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80540b1:	a3 58 b1 05 08       	mov    %eax,0x805b158
 80540b6:	90                   	nop
 80540b7:	c9                   	leave  
 80540b8:	c3                   	ret    

080540b9 <input>:
 80540b9:	55                   	push   %ebp
 80540ba:	89 e5                	mov    %esp,%ebp
 80540bc:	83 ec 18             	sub    $0x18,%esp
 80540bf:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80540c4:	0f b6 15 50 b1 05 08 	movzbl 0x805b150,%edx
 80540cb:	88 10                	mov    %dl,(%eax)
 80540cd:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80540d2:	0f b6 00             	movzbl (%eax),%eax
 80540d5:	84 c0                	test   %al,%al
 80540d7:	0f 85 bb 00 00 00    	jne    8054198 <input+0xdf>
 80540dd:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80540e2:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80540e8:	c1 e2 02             	shl    $0x2,%edx
 80540eb:	01 d0                	add    %edx,%eax
 80540ed:	8b 00                	mov    (%eax),%eax
 80540ef:	8b 40 04             	mov    0x4(%eax),%eax
 80540f2:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 80540f8:	01 c2                	add    %eax,%edx
 80540fa:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80540ff:	39 c2                	cmp    %eax,%edx
 8054101:	76 0d                	jbe    8054110 <input+0x57>
 8054103:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8054108:	c6 00 00             	movb   $0x0,(%eax)
 805410b:	e9 88 00 00 00       	jmp    8054198 <input+0xdf>
 8054110:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8054115:	89 c2                	mov    %eax,%edx
 8054117:	a1 84 b7 05 08       	mov    0x805b784,%eax
 805411c:	29 c2                	sub    %eax,%edx
 805411e:	89 d0                	mov    %edx,%eax
 8054120:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8054123:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8054128:	83 c0 01             	add    $0x1,%eax
 805412b:	a3 58 b1 05 08       	mov    %eax,0x805b158
 8054130:	e8 2f f7 ff ff       	call   8053864 <yy_get_next_buffer>
 8054135:	83 f8 01             	cmp    $0x1,%eax
 8054138:	74 1c                	je     8054156 <input+0x9d>
 805413a:	83 f8 02             	cmp    $0x2,%eax
 805413d:	74 06                	je     8054145 <input+0x8c>
 805413f:	85 c0                	test   %eax,%eax
 8054141:	74 44                	je     8054187 <input+0xce>
 8054143:	eb 53                	jmp    8054198 <input+0xdf>
 8054145:	a1 30 b1 05 08       	mov    0x805b130,%eax
 805414a:	83 ec 0c             	sub    $0xc,%esp
 805414d:	50                   	push   %eax
 805414e:	e8 8d 00 00 00       	call   80541e0 <yyrestart>
 8054153:	83 c4 10             	add    $0x10,%esp
 8054156:	e8 f5 15 00 00       	call   8055750 <yywrap>
 805415b:	85 c0                	test   %eax,%eax
 805415d:	74 07                	je     8054166 <input+0xad>
 805415f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8054164:	eb 78                	jmp    80541de <input+0x125>
 8054166:	a1 64 b1 05 08       	mov    0x805b164,%eax
 805416b:	85 c0                	test   %eax,%eax
 805416d:	75 11                	jne    8054180 <input+0xc7>
 805416f:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8054174:	83 ec 0c             	sub    $0xc,%esp
 8054177:	50                   	push   %eax
 8054178:	e8 63 00 00 00       	call   80541e0 <yyrestart>
 805417d:	83 c4 10             	add    $0x10,%esp
 8054180:	e8 34 ff ff ff       	call   80540b9 <input>
 8054185:	eb 57                	jmp    80541de <input+0x125>
 8054187:	8b 15 84 b7 05 08    	mov    0x805b784,%edx
 805418d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054190:	01 d0                	add    %edx,%eax
 8054192:	a3 58 b1 05 08       	mov    %eax,0x805b158
 8054197:	90                   	nop
 8054198:	a1 58 b1 05 08       	mov    0x805b158,%eax
 805419d:	0f b6 00             	movzbl (%eax),%eax
 80541a0:	0f b6 c0             	movzbl %al,%eax
 80541a3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80541a6:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80541ab:	c6 00 00             	movb   $0x0,(%eax)
 80541ae:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80541b3:	83 c0 01             	add    $0x1,%eax
 80541b6:	a3 58 b1 05 08       	mov    %eax,0x805b158
 80541bb:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80541c0:	0f b6 00             	movzbl (%eax),%eax
 80541c3:	a2 50 b1 05 08       	mov    %al,0x805b150
 80541c8:	83 7d f4 0a          	cmpl   $0xa,-0xc(%ebp)
 80541cc:	75 0d                	jne    80541db <input+0x122>
 80541ce:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 80541d3:	83 c0 01             	add    $0x1,%eax
 80541d6:	a3 c0 b0 05 08       	mov    %eax,0x805b0c0
 80541db:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80541de:	c9                   	leave  
 80541df:	c3                   	ret    

080541e0 <yyrestart>:
 80541e0:	55                   	push   %ebp
 80541e1:	89 e5                	mov    %esp,%ebp
 80541e3:	53                   	push   %ebx
 80541e4:	83 ec 04             	sub    $0x4,%esp
 80541e7:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80541ec:	85 c0                	test   %eax,%eax
 80541ee:	74 16                	je     8054206 <yyrestart+0x26>
 80541f0:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80541f5:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80541fb:	c1 e2 02             	shl    $0x2,%edx
 80541fe:	01 d0                	add    %edx,%eax
 8054200:	8b 00                	mov    (%eax),%eax
 8054202:	85 c0                	test   %eax,%eax
 8054204:	75 2e                	jne    8054234 <yyrestart+0x54>
 8054206:	e8 3f 05 00 00       	call   805474a <yyensure_buffer_stack>
 805420b:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054210:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054216:	c1 e2 02             	shl    $0x2,%edx
 8054219:	8d 1c 10             	lea    (%eax,%edx,1),%ebx
 805421c:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8054221:	83 ec 08             	sub    $0x8,%esp
 8054224:	68 00 40 00 00       	push   $0x4000
 8054229:	50                   	push   %eax
 805422a:	e8 6d 01 00 00       	call   805439c <yy_create_buffer>
 805422f:	83 c4 10             	add    $0x10,%esp
 8054232:	89 03                	mov    %eax,(%ebx)
 8054234:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054239:	85 c0                	test   %eax,%eax
 805423b:	74 14                	je     8054251 <yyrestart+0x71>
 805423d:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054242:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054248:	c1 e2 02             	shl    $0x2,%edx
 805424b:	01 d0                	add    %edx,%eax
 805424d:	8b 00                	mov    (%eax),%eax
 805424f:	eb 05                	jmp    8054256 <yyrestart+0x76>
 8054251:	b8 00 00 00 00       	mov    $0x0,%eax
 8054256:	83 ec 08             	sub    $0x8,%esp
 8054259:	ff 75 08             	pushl  0x8(%ebp)
 805425c:	50                   	push   %eax
 805425d:	e8 38 02 00 00       	call   805449a <yy_init_buffer>
 8054262:	83 c4 10             	add    $0x10,%esp
 8054265:	e8 c8 00 00 00       	call   8054332 <yy_load_buffer_state>
 805426a:	90                   	nop
 805426b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 805426e:	c9                   	leave  
 805426f:	c3                   	ret    

08054270 <yy_switch_to_buffer>:
 8054270:	55                   	push   %ebp
 8054271:	89 e5                	mov    %esp,%ebp
 8054273:	83 ec 08             	sub    $0x8,%esp
 8054276:	e8 cf 04 00 00       	call   805474a <yyensure_buffer_stack>
 805427b:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054280:	85 c0                	test   %eax,%eax
 8054282:	74 14                	je     8054298 <yy_switch_to_buffer+0x28>
 8054284:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054289:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 805428f:	c1 e2 02             	shl    $0x2,%edx
 8054292:	01 d0                	add    %edx,%eax
 8054294:	8b 00                	mov    (%eax),%eax
 8054296:	eb 05                	jmp    805429d <yy_switch_to_buffer+0x2d>
 8054298:	b8 00 00 00 00       	mov    $0x0,%eax
 805429d:	3b 45 08             	cmp    0x8(%ebp),%eax
 80542a0:	0f 84 89 00 00 00    	je     805432f <yy_switch_to_buffer+0xbf>
 80542a6:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80542ab:	85 c0                	test   %eax,%eax
 80542ad:	74 5a                	je     8054309 <yy_switch_to_buffer+0x99>
 80542af:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80542b4:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80542ba:	c1 e2 02             	shl    $0x2,%edx
 80542bd:	01 d0                	add    %edx,%eax
 80542bf:	8b 00                	mov    (%eax),%eax
 80542c1:	85 c0                	test   %eax,%eax
 80542c3:	74 44                	je     8054309 <yy_switch_to_buffer+0x99>
 80542c5:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80542ca:	0f b6 15 50 b1 05 08 	movzbl 0x805b150,%edx
 80542d1:	88 10                	mov    %dl,(%eax)
 80542d3:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80542d8:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80542de:	c1 e2 02             	shl    $0x2,%edx
 80542e1:	01 d0                	add    %edx,%eax
 80542e3:	8b 00                	mov    (%eax),%eax
 80542e5:	8b 15 58 b1 05 08    	mov    0x805b158,%edx
 80542eb:	89 50 08             	mov    %edx,0x8(%eax)
 80542ee:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80542f3:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80542f9:	c1 e2 02             	shl    $0x2,%edx
 80542fc:	01 d0                	add    %edx,%eax
 80542fe:	8b 00                	mov    (%eax),%eax
 8054300:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 8054306:	89 50 10             	mov    %edx,0x10(%eax)
 8054309:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805430e:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054314:	c1 e2 02             	shl    $0x2,%edx
 8054317:	01 c2                	add    %eax,%edx
 8054319:	8b 45 08             	mov    0x8(%ebp),%eax
 805431c:	89 02                	mov    %eax,(%edx)
 805431e:	e8 0f 00 00 00       	call   8054332 <yy_load_buffer_state>
 8054323:	c7 05 64 b1 05 08 01 	movl   $0x1,0x805b164
 805432a:	00 00 00 
 805432d:	eb 01                	jmp    8054330 <yy_switch_to_buffer+0xc0>
 805432f:	90                   	nop
 8054330:	c9                   	leave  
 8054331:	c3                   	ret    

08054332 <yy_load_buffer_state>:
 8054332:	55                   	push   %ebp
 8054333:	89 e5                	mov    %esp,%ebp
 8054335:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805433a:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054340:	c1 e2 02             	shl    $0x2,%edx
 8054343:	01 d0                	add    %edx,%eax
 8054345:	8b 00                	mov    (%eax),%eax
 8054347:	8b 40 10             	mov    0x10(%eax),%eax
 805434a:	a3 54 b1 05 08       	mov    %eax,0x805b154
 805434f:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054354:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 805435a:	c1 e2 02             	shl    $0x2,%edx
 805435d:	01 d0                	add    %edx,%eax
 805435f:	8b 00                	mov    (%eax),%eax
 8054361:	8b 40 08             	mov    0x8(%eax),%eax
 8054364:	a3 58 b1 05 08       	mov    %eax,0x805b158
 8054369:	a1 58 b1 05 08       	mov    0x805b158,%eax
 805436e:	a3 84 b7 05 08       	mov    %eax,0x805b784
 8054373:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054378:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 805437e:	c1 e2 02             	shl    $0x2,%edx
 8054381:	01 d0                	add    %edx,%eax
 8054383:	8b 00                	mov    (%eax),%eax
 8054385:	8b 00                	mov    (%eax),%eax
 8054387:	a3 30 b1 05 08       	mov    %eax,0x805b130
 805438c:	a1 58 b1 05 08       	mov    0x805b158,%eax
 8054391:	0f b6 00             	movzbl (%eax),%eax
 8054394:	a2 50 b1 05 08       	mov    %al,0x805b150
 8054399:	90                   	nop
 805439a:	5d                   	pop    %ebp
 805439b:	c3                   	ret    

0805439c <yy_create_buffer>:
 805439c:	55                   	push   %ebp
 805439d:	89 e5                	mov    %esp,%ebp
 805439f:	83 ec 18             	sub    $0x18,%esp
 80543a2:	83 ec 0c             	sub    $0xc,%esp
 80543a5:	6a 30                	push   $0x30
 80543a7:	e8 eb 07 00 00       	call   8054b97 <yyalloc>
 80543ac:	83 c4 10             	add    $0x10,%esp
 80543af:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80543b2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80543b6:	75 0d                	jne    80543c5 <yy_create_buffer+0x29>
 80543b8:	83 ec 0c             	sub    $0xc,%esp
 80543bb:	68 80 7a 05 08       	push   $0x8057a80
 80543c0:	e8 3a 06 00 00       	call   80549ff <yy_fatal_error>
 80543c5:	8b 55 0c             	mov    0xc(%ebp),%edx
 80543c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80543cb:	89 50 0c             	mov    %edx,0xc(%eax)
 80543ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80543d1:	8b 40 0c             	mov    0xc(%eax),%eax
 80543d4:	83 c0 02             	add    $0x2,%eax
 80543d7:	83 ec 0c             	sub    $0xc,%esp
 80543da:	50                   	push   %eax
 80543db:	e8 b7 07 00 00       	call   8054b97 <yyalloc>
 80543e0:	83 c4 10             	add    $0x10,%esp
 80543e3:	89 c2                	mov    %eax,%edx
 80543e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80543e8:	89 50 04             	mov    %edx,0x4(%eax)
 80543eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80543ee:	8b 40 04             	mov    0x4(%eax),%eax
 80543f1:	85 c0                	test   %eax,%eax
 80543f3:	75 0d                	jne    8054402 <yy_create_buffer+0x66>
 80543f5:	83 ec 0c             	sub    $0xc,%esp
 80543f8:	68 80 7a 05 08       	push   $0x8057a80
 80543fd:	e8 fd 05 00 00       	call   80549ff <yy_fatal_error>
 8054402:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054405:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
 805440c:	83 ec 08             	sub    $0x8,%esp
 805440f:	ff 75 08             	pushl  0x8(%ebp)
 8054412:	ff 75 f4             	pushl  -0xc(%ebp)
 8054415:	e8 80 00 00 00       	call   805449a <yy_init_buffer>
 805441a:	83 c4 10             	add    $0x10,%esp
 805441d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054420:	c9                   	leave  
 8054421:	c3                   	ret    

08054422 <yy_delete_buffer>:
 8054422:	55                   	push   %ebp
 8054423:	89 e5                	mov    %esp,%ebp
 8054425:	83 ec 08             	sub    $0x8,%esp
 8054428:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 805442c:	74 69                	je     8054497 <yy_delete_buffer+0x75>
 805442e:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054433:	85 c0                	test   %eax,%eax
 8054435:	74 14                	je     805444b <yy_delete_buffer+0x29>
 8054437:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805443c:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054442:	c1 e2 02             	shl    $0x2,%edx
 8054445:	01 d0                	add    %edx,%eax
 8054447:	8b 00                	mov    (%eax),%eax
 8054449:	eb 05                	jmp    8054450 <yy_delete_buffer+0x2e>
 805444b:	b8 00 00 00 00       	mov    $0x0,%eax
 8054450:	3b 45 08             	cmp    0x8(%ebp),%eax
 8054453:	75 16                	jne    805446b <yy_delete_buffer+0x49>
 8054455:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805445a:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054460:	c1 e2 02             	shl    $0x2,%edx
 8054463:	01 d0                	add    %edx,%eax
 8054465:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 805446b:	8b 45 08             	mov    0x8(%ebp),%eax
 805446e:	8b 40 14             	mov    0x14(%eax),%eax
 8054471:	85 c0                	test   %eax,%eax
 8054473:	74 12                	je     8054487 <yy_delete_buffer+0x65>
 8054475:	8b 45 08             	mov    0x8(%ebp),%eax
 8054478:	8b 40 04             	mov    0x4(%eax),%eax
 805447b:	83 ec 0c             	sub    $0xc,%esp
 805447e:	50                   	push   %eax
 805447f:	e8 42 07 00 00       	call   8054bc6 <yyfree>
 8054484:	83 c4 10             	add    $0x10,%esp
 8054487:	83 ec 0c             	sub    $0xc,%esp
 805448a:	ff 75 08             	pushl  0x8(%ebp)
 805448d:	e8 34 07 00 00       	call   8054bc6 <yyfree>
 8054492:	83 c4 10             	add    $0x10,%esp
 8054495:	eb 01                	jmp    8054498 <yy_delete_buffer+0x76>
 8054497:	90                   	nop
 8054498:	c9                   	leave  
 8054499:	c3                   	ret    

0805449a <yy_init_buffer>:
 805449a:	55                   	push   %ebp
 805449b:	89 e5                	mov    %esp,%ebp
 805449d:	83 ec 18             	sub    $0x18,%esp
 80544a0:	e8 9b 44 ff ff       	call   8048940 <__errno_location@plt>
 80544a5:	8b 00                	mov    (%eax),%eax
 80544a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80544aa:	83 ec 0c             	sub    $0xc,%esp
 80544ad:	ff 75 08             	pushl  0x8(%ebp)
 80544b0:	e8 95 00 00 00       	call   805454a <yy_flush_buffer>
 80544b5:	83 c4 10             	add    $0x10,%esp
 80544b8:	8b 45 08             	mov    0x8(%ebp),%eax
 80544bb:	8b 55 0c             	mov    0xc(%ebp),%edx
 80544be:	89 10                	mov    %edx,(%eax)
 80544c0:	8b 45 08             	mov    0x8(%ebp),%eax
 80544c3:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
 80544ca:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80544cf:	85 c0                	test   %eax,%eax
 80544d1:	74 14                	je     80544e7 <yy_init_buffer+0x4d>
 80544d3:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80544d8:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80544de:	c1 e2 02             	shl    $0x2,%edx
 80544e1:	01 d0                	add    %edx,%eax
 80544e3:	8b 00                	mov    (%eax),%eax
 80544e5:	eb 05                	jmp    80544ec <yy_init_buffer+0x52>
 80544e7:	b8 00 00 00 00       	mov    $0x0,%eax
 80544ec:	3b 45 08             	cmp    0x8(%ebp),%eax
 80544ef:	74 14                	je     8054505 <yy_init_buffer+0x6b>
 80544f1:	8b 45 08             	mov    0x8(%ebp),%eax
 80544f4:	c7 40 20 01 00 00 00 	movl   $0x1,0x20(%eax)
 80544fb:	8b 45 08             	mov    0x8(%ebp),%eax
 80544fe:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
 8054505:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8054509:	74 25                	je     8054530 <yy_init_buffer+0x96>
 805450b:	83 ec 0c             	sub    $0xc,%esp
 805450e:	ff 75 0c             	pushl  0xc(%ebp)
 8054511:	e8 4a 44 ff ff       	call   8048960 <fileno@plt>
 8054516:	83 c4 10             	add    $0x10,%esp
 8054519:	83 ec 0c             	sub    $0xc,%esp
 805451c:	50                   	push   %eax
 805451d:	e8 9e 44 ff ff       	call   80489c0 <isatty@plt>
 8054522:	83 c4 10             	add    $0x10,%esp
 8054525:	85 c0                	test   %eax,%eax
 8054527:	7e 07                	jle    8054530 <yy_init_buffer+0x96>
 8054529:	ba 01 00 00 00       	mov    $0x1,%edx
 805452e:	eb 05                	jmp    8054535 <yy_init_buffer+0x9b>
 8054530:	ba 00 00 00 00       	mov    $0x0,%edx
 8054535:	8b 45 08             	mov    0x8(%ebp),%eax
 8054538:	89 50 18             	mov    %edx,0x18(%eax)
 805453b:	e8 00 44 ff ff       	call   8048940 <__errno_location@plt>
 8054540:	89 c2                	mov    %eax,%edx
 8054542:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054545:	89 02                	mov    %eax,(%edx)
 8054547:	90                   	nop
 8054548:	c9                   	leave  
 8054549:	c3                   	ret    

0805454a <yy_flush_buffer>:
 805454a:	55                   	push   %ebp
 805454b:	89 e5                	mov    %esp,%ebp
 805454d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8054551:	74 6d                	je     80545c0 <yy_flush_buffer+0x76>
 8054553:	8b 45 08             	mov    0x8(%ebp),%eax
 8054556:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 805455d:	8b 45 08             	mov    0x8(%ebp),%eax
 8054560:	8b 40 04             	mov    0x4(%eax),%eax
 8054563:	c6 00 00             	movb   $0x0,(%eax)
 8054566:	8b 45 08             	mov    0x8(%ebp),%eax
 8054569:	8b 40 04             	mov    0x4(%eax),%eax
 805456c:	83 c0 01             	add    $0x1,%eax
 805456f:	c6 00 00             	movb   $0x0,(%eax)
 8054572:	8b 45 08             	mov    0x8(%ebp),%eax
 8054575:	8b 50 04             	mov    0x4(%eax),%edx
 8054578:	8b 45 08             	mov    0x8(%ebp),%eax
 805457b:	89 50 08             	mov    %edx,0x8(%eax)
 805457e:	8b 45 08             	mov    0x8(%ebp),%eax
 8054581:	c7 40 1c 01 00 00 00 	movl   $0x1,0x1c(%eax)
 8054588:	8b 45 08             	mov    0x8(%ebp),%eax
 805458b:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
 8054592:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054597:	85 c0                	test   %eax,%eax
 8054599:	74 14                	je     80545af <yy_flush_buffer+0x65>
 805459b:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80545a0:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80545a6:	c1 e2 02             	shl    $0x2,%edx
 80545a9:	01 d0                	add    %edx,%eax
 80545ab:	8b 00                	mov    (%eax),%eax
 80545ad:	eb 05                	jmp    80545b4 <yy_flush_buffer+0x6a>
 80545af:	b8 00 00 00 00       	mov    $0x0,%eax
 80545b4:	3b 45 08             	cmp    0x8(%ebp),%eax
 80545b7:	75 08                	jne    80545c1 <yy_flush_buffer+0x77>
 80545b9:	e8 74 fd ff ff       	call   8054332 <yy_load_buffer_state>
 80545be:	eb 01                	jmp    80545c1 <yy_flush_buffer+0x77>
 80545c0:	90                   	nop
 80545c1:	5d                   	pop    %ebp
 80545c2:	c3                   	ret    

080545c3 <yypush_buffer_state>:
 80545c3:	55                   	push   %ebp
 80545c4:	89 e5                	mov    %esp,%ebp
 80545c6:	83 ec 08             	sub    $0x8,%esp
 80545c9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80545cd:	0f 84 ba 00 00 00    	je     805468d <yypush_buffer_state+0xca>
 80545d3:	e8 72 01 00 00       	call   805474a <yyensure_buffer_stack>
 80545d8:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80545dd:	85 c0                	test   %eax,%eax
 80545df:	74 5a                	je     805463b <yypush_buffer_state+0x78>
 80545e1:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80545e6:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80545ec:	c1 e2 02             	shl    $0x2,%edx
 80545ef:	01 d0                	add    %edx,%eax
 80545f1:	8b 00                	mov    (%eax),%eax
 80545f3:	85 c0                	test   %eax,%eax
 80545f5:	74 44                	je     805463b <yypush_buffer_state+0x78>
 80545f7:	a1 58 b1 05 08       	mov    0x805b158,%eax
 80545fc:	0f b6 15 50 b1 05 08 	movzbl 0x805b150,%edx
 8054603:	88 10                	mov    %dl,(%eax)
 8054605:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805460a:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054610:	c1 e2 02             	shl    $0x2,%edx
 8054613:	01 d0                	add    %edx,%eax
 8054615:	8b 00                	mov    (%eax),%eax
 8054617:	8b 15 58 b1 05 08    	mov    0x805b158,%edx
 805461d:	89 50 08             	mov    %edx,0x8(%eax)
 8054620:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054625:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 805462b:	c1 e2 02             	shl    $0x2,%edx
 805462e:	01 d0                	add    %edx,%eax
 8054630:	8b 00                	mov    (%eax),%eax
 8054632:	8b 15 54 b1 05 08    	mov    0x805b154,%edx
 8054638:	89 50 10             	mov    %edx,0x10(%eax)
 805463b:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054640:	85 c0                	test   %eax,%eax
 8054642:	74 23                	je     8054667 <yypush_buffer_state+0xa4>
 8054644:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054649:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 805464f:	c1 e2 02             	shl    $0x2,%edx
 8054652:	01 d0                	add    %edx,%eax
 8054654:	8b 00                	mov    (%eax),%eax
 8054656:	85 c0                	test   %eax,%eax
 8054658:	74 0d                	je     8054667 <yypush_buffer_state+0xa4>
 805465a:	a1 44 b1 05 08       	mov    0x805b144,%eax
 805465f:	83 c0 01             	add    $0x1,%eax
 8054662:	a3 44 b1 05 08       	mov    %eax,0x805b144
 8054667:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805466c:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054672:	c1 e2 02             	shl    $0x2,%edx
 8054675:	01 c2                	add    %eax,%edx
 8054677:	8b 45 08             	mov    0x8(%ebp),%eax
 805467a:	89 02                	mov    %eax,(%edx)
 805467c:	e8 b1 fc ff ff       	call   8054332 <yy_load_buffer_state>
 8054681:	c7 05 64 b1 05 08 01 	movl   $0x1,0x805b164
 8054688:	00 00 00 
 805468b:	eb 01                	jmp    805468e <yypush_buffer_state+0xcb>
 805468d:	90                   	nop
 805468e:	c9                   	leave  
 805468f:	c3                   	ret    

08054690 <yypop_buffer_state>:
 8054690:	55                   	push   %ebp
 8054691:	89 e5                	mov    %esp,%ebp
 8054693:	83 ec 08             	sub    $0x8,%esp
 8054696:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805469b:	85 c0                	test   %eax,%eax
 805469d:	0f 84 a4 00 00 00    	je     8054747 <yypop_buffer_state+0xb7>
 80546a3:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80546a8:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80546ae:	c1 e2 02             	shl    $0x2,%edx
 80546b1:	01 d0                	add    %edx,%eax
 80546b3:	8b 00                	mov    (%eax),%eax
 80546b5:	85 c0                	test   %eax,%eax
 80546b7:	0f 84 8a 00 00 00    	je     8054747 <yypop_buffer_state+0xb7>
 80546bd:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80546c2:	85 c0                	test   %eax,%eax
 80546c4:	74 14                	je     80546da <yypop_buffer_state+0x4a>
 80546c6:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80546cb:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80546d1:	c1 e2 02             	shl    $0x2,%edx
 80546d4:	01 d0                	add    %edx,%eax
 80546d6:	8b 00                	mov    (%eax),%eax
 80546d8:	eb 05                	jmp    80546df <yypop_buffer_state+0x4f>
 80546da:	b8 00 00 00 00       	mov    $0x0,%eax
 80546df:	83 ec 0c             	sub    $0xc,%esp
 80546e2:	50                   	push   %eax
 80546e3:	e8 3a fd ff ff       	call   8054422 <yy_delete_buffer>
 80546e8:	83 c4 10             	add    $0x10,%esp
 80546eb:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80546f0:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 80546f6:	c1 e2 02             	shl    $0x2,%edx
 80546f9:	01 d0                	add    %edx,%eax
 80546fb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8054701:	a1 44 b1 05 08       	mov    0x805b144,%eax
 8054706:	85 c0                	test   %eax,%eax
 8054708:	74 0d                	je     8054717 <yypop_buffer_state+0x87>
 805470a:	a1 44 b1 05 08       	mov    0x805b144,%eax
 805470f:	83 e8 01             	sub    $0x1,%eax
 8054712:	a3 44 b1 05 08       	mov    %eax,0x805b144
 8054717:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805471c:	85 c0                	test   %eax,%eax
 805471e:	74 28                	je     8054748 <yypop_buffer_state+0xb8>
 8054720:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054725:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 805472b:	c1 e2 02             	shl    $0x2,%edx
 805472e:	01 d0                	add    %edx,%eax
 8054730:	8b 00                	mov    (%eax),%eax
 8054732:	85 c0                	test   %eax,%eax
 8054734:	74 12                	je     8054748 <yypop_buffer_state+0xb8>
 8054736:	e8 f7 fb ff ff       	call   8054332 <yy_load_buffer_state>
 805473b:	c7 05 64 b1 05 08 01 	movl   $0x1,0x805b164
 8054742:	00 00 00 
 8054745:	eb 01                	jmp    8054748 <yypop_buffer_state+0xb8>
 8054747:	90                   	nop
 8054748:	c9                   	leave  
 8054749:	c3                   	ret    

0805474a <yyensure_buffer_stack>:
 805474a:	55                   	push   %ebp
 805474b:	89 e5                	mov    %esp,%ebp
 805474d:	83 ec 18             	sub    $0x18,%esp
 8054750:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054755:	85 c0                	test   %eax,%eax
 8054757:	75 69                	jne    80547c2 <yyensure_buffer_stack+0x78>
 8054759:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8054760:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054763:	c1 e0 02             	shl    $0x2,%eax
 8054766:	83 ec 0c             	sub    $0xc,%esp
 8054769:	50                   	push   %eax
 805476a:	e8 28 04 00 00       	call   8054b97 <yyalloc>
 805476f:	83 c4 10             	add    $0x10,%esp
 8054772:	a3 4c b1 05 08       	mov    %eax,0x805b14c
 8054777:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805477c:	85 c0                	test   %eax,%eax
 805477e:	75 0d                	jne    805478d <yyensure_buffer_stack+0x43>
 8054780:	83 ec 0c             	sub    $0xc,%esp
 8054783:	68 ac 7a 05 08       	push   $0x8057aac
 8054788:	e8 72 02 00 00       	call   80549ff <yy_fatal_error>
 805478d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054790:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8054797:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805479c:	83 ec 04             	sub    $0x4,%esp
 805479f:	52                   	push   %edx
 80547a0:	6a 00                	push   $0x0
 80547a2:	50                   	push   %eax
 80547a3:	e8 78 41 ff ff       	call   8048920 <memset@plt>
 80547a8:	83 c4 10             	add    $0x10,%esp
 80547ab:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80547ae:	a3 48 b1 05 08       	mov    %eax,0x805b148
 80547b3:	c7 05 44 b1 05 08 00 	movl   $0x0,0x805b144
 80547ba:	00 00 00 
 80547bd:	e9 8e 00 00 00       	jmp    8054850 <yyensure_buffer_stack+0x106>
 80547c2:	a1 48 b1 05 08       	mov    0x805b148,%eax
 80547c7:	8d 50 ff             	lea    -0x1(%eax),%edx
 80547ca:	a1 44 b1 05 08       	mov    0x805b144,%eax
 80547cf:	39 c2                	cmp    %eax,%edx
 80547d1:	77 7d                	ja     8054850 <yyensure_buffer_stack+0x106>
 80547d3:	c7 45 f4 08 00 00 00 	movl   $0x8,-0xc(%ebp)
 80547da:	8b 15 48 b1 05 08    	mov    0x805b148,%edx
 80547e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80547e3:	01 d0                	add    %edx,%eax
 80547e5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80547e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80547eb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 80547f2:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 80547f7:	83 ec 08             	sub    $0x8,%esp
 80547fa:	52                   	push   %edx
 80547fb:	50                   	push   %eax
 80547fc:	e8 ac 03 00 00       	call   8054bad <yyrealloc>
 8054801:	83 c4 10             	add    $0x10,%esp
 8054804:	a3 4c b1 05 08       	mov    %eax,0x805b14c
 8054809:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805480e:	85 c0                	test   %eax,%eax
 8054810:	75 0d                	jne    805481f <yyensure_buffer_stack+0xd5>
 8054812:	83 ec 0c             	sub    $0xc,%esp
 8054815:	68 ac 7a 05 08       	push   $0x8057aac
 805481a:	e8 e0 01 00 00       	call   80549ff <yy_fatal_error>
 805481f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054822:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8054829:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 805482e:	8b 0d 48 b1 05 08    	mov    0x805b148,%ecx
 8054834:	c1 e1 02             	shl    $0x2,%ecx
 8054837:	01 c8                	add    %ecx,%eax
 8054839:	83 ec 04             	sub    $0x4,%esp
 805483c:	52                   	push   %edx
 805483d:	6a 00                	push   $0x0
 805483f:	50                   	push   %eax
 8054840:	e8 db 40 ff ff       	call   8048920 <memset@plt>
 8054845:	83 c4 10             	add    $0x10,%esp
 8054848:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805484b:	a3 48 b1 05 08       	mov    %eax,0x805b148
 8054850:	c9                   	leave  
 8054851:	c3                   	ret    

08054852 <yy_scan_buffer>:
 8054852:	55                   	push   %ebp
 8054853:	89 e5                	mov    %esp,%ebp
 8054855:	83 ec 18             	sub    $0x18,%esp
 8054858:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
 805485c:	76 24                	jbe    8054882 <yy_scan_buffer+0x30>
 805485e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8054861:	8d 50 fe             	lea    -0x2(%eax),%edx
 8054864:	8b 45 08             	mov    0x8(%ebp),%eax
 8054867:	01 d0                	add    %edx,%eax
 8054869:	0f b6 00             	movzbl (%eax),%eax
 805486c:	84 c0                	test   %al,%al
 805486e:	75 12                	jne    8054882 <yy_scan_buffer+0x30>
 8054870:	8b 45 0c             	mov    0xc(%ebp),%eax
 8054873:	8d 50 ff             	lea    -0x1(%eax),%edx
 8054876:	8b 45 08             	mov    0x8(%ebp),%eax
 8054879:	01 d0                	add    %edx,%eax
 805487b:	0f b6 00             	movzbl (%eax),%eax
 805487e:	84 c0                	test   %al,%al
 8054880:	74 0a                	je     805488c <yy_scan_buffer+0x3a>
 8054882:	b8 00 00 00 00       	mov    $0x0,%eax
 8054887:	e9 9e 00 00 00       	jmp    805492a <yy_scan_buffer+0xd8>
 805488c:	83 ec 0c             	sub    $0xc,%esp
 805488f:	6a 30                	push   $0x30
 8054891:	e8 01 03 00 00       	call   8054b97 <yyalloc>
 8054896:	83 c4 10             	add    $0x10,%esp
 8054899:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805489c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80548a0:	75 0d                	jne    80548af <yy_scan_buffer+0x5d>
 80548a2:	83 ec 0c             	sub    $0xc,%esp
 80548a5:	68 e0 7a 05 08       	push   $0x8057ae0
 80548aa:	e8 50 01 00 00       	call   80549ff <yy_fatal_error>
 80548af:	8b 45 0c             	mov    0xc(%ebp),%eax
 80548b2:	8d 50 fe             	lea    -0x2(%eax),%edx
 80548b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548b8:	89 50 0c             	mov    %edx,0xc(%eax)
 80548bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548be:	8b 55 08             	mov    0x8(%ebp),%edx
 80548c1:	89 50 04             	mov    %edx,0x4(%eax)
 80548c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548c7:	8b 50 04             	mov    0x4(%eax),%edx
 80548ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548cd:	89 50 08             	mov    %edx,0x8(%eax)
 80548d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548d3:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 80548da:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548dd:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80548e3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548e6:	8b 40 0c             	mov    0xc(%eax),%eax
 80548e9:	89 c2                	mov    %eax,%edx
 80548eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548ee:	89 50 10             	mov    %edx,0x10(%eax)
 80548f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548f4:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
 80548fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80548fe:	c7 40 1c 01 00 00 00 	movl   $0x1,0x1c(%eax)
 8054905:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054908:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
 805490f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054912:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
 8054919:	83 ec 0c             	sub    $0xc,%esp
 805491c:	ff 75 f4             	pushl  -0xc(%ebp)
 805491f:	e8 4c f9 ff ff       	call   8054270 <yy_switch_to_buffer>
 8054924:	83 c4 10             	add    $0x10,%esp
 8054927:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805492a:	c9                   	leave  
 805492b:	c3                   	ret    

0805492c <yy_scan_string>:
 805492c:	55                   	push   %ebp
 805492d:	89 e5                	mov    %esp,%ebp
 805492f:	83 ec 08             	sub    $0x8,%esp
 8054932:	83 ec 0c             	sub    $0xc,%esp
 8054935:	ff 75 08             	pushl  0x8(%ebp)
 8054938:	e8 93 3f ff ff       	call   80488d0 <strlen@plt>
 805493d:	83 c4 10             	add    $0x10,%esp
 8054940:	83 ec 08             	sub    $0x8,%esp
 8054943:	50                   	push   %eax
 8054944:	ff 75 08             	pushl  0x8(%ebp)
 8054947:	e8 05 00 00 00       	call   8054951 <yy_scan_bytes>
 805494c:	83 c4 10             	add    $0x10,%esp
 805494f:	c9                   	leave  
 8054950:	c3                   	ret    

08054951 <yy_scan_bytes>:
 8054951:	55                   	push   %ebp
 8054952:	89 e5                	mov    %esp,%ebp
 8054954:	83 ec 18             	sub    $0x18,%esp
 8054957:	8b 45 0c             	mov    0xc(%ebp),%eax
 805495a:	83 c0 02             	add    $0x2,%eax
 805495d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8054960:	83 ec 0c             	sub    $0xc,%esp
 8054963:	ff 75 ec             	pushl  -0x14(%ebp)
 8054966:	e8 2c 02 00 00       	call   8054b97 <yyalloc>
 805496b:	83 c4 10             	add    $0x10,%esp
 805496e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8054971:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8054975:	75 0d                	jne    8054984 <yy_scan_bytes+0x33>
 8054977:	83 ec 0c             	sub    $0xc,%esp
 805497a:	68 0c 7b 05 08       	push   $0x8057b0c
 805497f:	e8 7b 00 00 00       	call   80549ff <yy_fatal_error>
 8054984:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 805498b:	eb 19                	jmp    80549a6 <yy_scan_bytes+0x55>
 805498d:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8054990:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8054993:	01 c2                	add    %eax,%edx
 8054995:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8054998:	8b 45 e8             	mov    -0x18(%ebp),%eax
 805499b:	01 c8                	add    %ecx,%eax
 805499d:	0f b6 00             	movzbl (%eax),%eax
 80549a0:	88 02                	mov    %al,(%edx)
 80549a2:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 80549a6:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80549a9:	3b 45 0c             	cmp    0xc(%ebp),%eax
 80549ac:	72 df                	jb     805498d <yy_scan_bytes+0x3c>
 80549ae:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80549b1:	8b 45 0c             	mov    0xc(%ebp),%eax
 80549b4:	01 c2                	add    %eax,%edx
 80549b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 80549b9:	8d 48 01             	lea    0x1(%eax),%ecx
 80549bc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80549bf:	01 c8                	add    %ecx,%eax
 80549c1:	c6 00 00             	movb   $0x0,(%eax)
 80549c4:	0f b6 00             	movzbl (%eax),%eax
 80549c7:	88 02                	mov    %al,(%edx)
 80549c9:	83 ec 08             	sub    $0x8,%esp
 80549cc:	ff 75 ec             	pushl  -0x14(%ebp)
 80549cf:	ff 75 f0             	pushl  -0x10(%ebp)
 80549d2:	e8 7b fe ff ff       	call   8054852 <yy_scan_buffer>
 80549d7:	83 c4 10             	add    $0x10,%esp
 80549da:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80549dd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80549e1:	75 0d                	jne    80549f0 <yy_scan_bytes+0x9f>
 80549e3:	83 ec 0c             	sub    $0xc,%esp
 80549e6:	68 35 7b 05 08       	push   $0x8057b35
 80549eb:	e8 0f 00 00 00       	call   80549ff <yy_fatal_error>
 80549f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80549f3:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
 80549fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80549fd:	c9                   	leave  
 80549fe:	c3                   	ret    

080549ff <yy_fatal_error>:
 80549ff:	55                   	push   %ebp
 8054a00:	89 e5                	mov    %esp,%ebp
 8054a02:	83 ec 08             	sub    $0x8,%esp
 8054a05:	a1 e0 b0 05 08       	mov    0x805b0e0,%eax
 8054a0a:	83 ec 04             	sub    $0x4,%esp
 8054a0d:	ff 75 08             	pushl  0x8(%ebp)
 8054a10:	68 53 7b 05 08       	push   $0x8057b53
 8054a15:	50                   	push   %eax
 8054a16:	e8 e5 3e ff ff       	call   8048900 <fprintf@plt>
 8054a1b:	83 c4 10             	add    $0x10,%esp
 8054a1e:	83 ec 0c             	sub    $0xc,%esp
 8054a21:	6a 02                	push   $0x2
 8054a23:	e8 98 3e ff ff       	call   80488c0 <exit@plt>

08054a28 <yyget_lineno>:
 8054a28:	55                   	push   %ebp
 8054a29:	89 e5                	mov    %esp,%ebp
 8054a2b:	a1 c0 b0 05 08       	mov    0x805b0c0,%eax
 8054a30:	5d                   	pop    %ebp
 8054a31:	c3                   	ret    

08054a32 <yyget_in>:
 8054a32:	55                   	push   %ebp
 8054a33:	89 e5                	mov    %esp,%ebp
 8054a35:	a1 30 b1 05 08       	mov    0x805b130,%eax
 8054a3a:	5d                   	pop    %ebp
 8054a3b:	c3                   	ret    

08054a3c <yyget_out>:
 8054a3c:	55                   	push   %ebp
 8054a3d:	89 e5                	mov    %esp,%ebp
 8054a3f:	a1 34 b1 05 08       	mov    0x805b134,%eax
 8054a44:	5d                   	pop    %ebp
 8054a45:	c3                   	ret    

08054a46 <yyget_leng>:
 8054a46:	55                   	push   %ebp
 8054a47:	89 e5                	mov    %esp,%ebp
 8054a49:	a1 8c b7 05 08       	mov    0x805b78c,%eax
 8054a4e:	5d                   	pop    %ebp
 8054a4f:	c3                   	ret    

08054a50 <yyget_text>:
 8054a50:	55                   	push   %ebp
 8054a51:	89 e5                	mov    %esp,%ebp
 8054a53:	a1 84 b7 05 08       	mov    0x805b784,%eax
 8054a58:	5d                   	pop    %ebp
 8054a59:	c3                   	ret    

08054a5a <yyset_lineno>:
 8054a5a:	55                   	push   %ebp
 8054a5b:	89 e5                	mov    %esp,%ebp
 8054a5d:	8b 45 08             	mov    0x8(%ebp),%eax
 8054a60:	a3 c0 b0 05 08       	mov    %eax,0x805b0c0
 8054a65:	90                   	nop
 8054a66:	5d                   	pop    %ebp
 8054a67:	c3                   	ret    

08054a68 <yyset_in>:
 8054a68:	55                   	push   %ebp
 8054a69:	89 e5                	mov    %esp,%ebp
 8054a6b:	8b 45 08             	mov    0x8(%ebp),%eax
 8054a6e:	a3 30 b1 05 08       	mov    %eax,0x805b130
 8054a73:	90                   	nop
 8054a74:	5d                   	pop    %ebp
 8054a75:	c3                   	ret    

08054a76 <yyset_out>:
 8054a76:	55                   	push   %ebp
 8054a77:	89 e5                	mov    %esp,%ebp
 8054a79:	8b 45 08             	mov    0x8(%ebp),%eax
 8054a7c:	a3 34 b1 05 08       	mov    %eax,0x805b134
 8054a81:	90                   	nop
 8054a82:	5d                   	pop    %ebp
 8054a83:	c3                   	ret    

08054a84 <yyget_debug>:
 8054a84:	55                   	push   %ebp
 8054a85:	89 e5                	mov    %esp,%ebp
 8054a87:	a1 38 b1 05 08       	mov    0x805b138,%eax
 8054a8c:	5d                   	pop    %ebp
 8054a8d:	c3                   	ret    

08054a8e <yyset_debug>:
 8054a8e:	55                   	push   %ebp
 8054a8f:	89 e5                	mov    %esp,%ebp
 8054a91:	8b 45 08             	mov    0x8(%ebp),%eax
 8054a94:	a3 38 b1 05 08       	mov    %eax,0x805b138
 8054a99:	90                   	nop
 8054a9a:	5d                   	pop    %ebp
 8054a9b:	c3                   	ret    

08054a9c <yy_init_globals>:
 8054a9c:	55                   	push   %ebp
 8054a9d:	89 e5                	mov    %esp,%ebp
 8054a9f:	c7 05 c0 b0 05 08 01 	movl   $0x1,0x805b0c0
 8054aa6:	00 00 00 
 8054aa9:	c7 05 4c b1 05 08 00 	movl   $0x0,0x805b14c
 8054ab0:	00 00 00 
 8054ab3:	c7 05 44 b1 05 08 00 	movl   $0x0,0x805b144
 8054aba:	00 00 00 
 8054abd:	c7 05 48 b1 05 08 00 	movl   $0x0,0x805b148
 8054ac4:	00 00 00 
 8054ac7:	c7 05 58 b1 05 08 00 	movl   $0x0,0x805b158
 8054ace:	00 00 00 
 8054ad1:	c7 05 5c b1 05 08 00 	movl   $0x0,0x805b15c
 8054ad8:	00 00 00 
 8054adb:	c7 05 60 b1 05 08 00 	movl   $0x0,0x805b160
 8054ae2:	00 00 00 
 8054ae5:	c7 05 30 b1 05 08 00 	movl   $0x0,0x805b130
 8054aec:	00 00 00 
 8054aef:	c7 05 34 b1 05 08 00 	movl   $0x0,0x805b134
 8054af6:	00 00 00 
 8054af9:	b8 00 00 00 00       	mov    $0x0,%eax
 8054afe:	5d                   	pop    %ebp
 8054aff:	c3                   	ret    

08054b00 <yylex_destroy>:
 8054b00:	55                   	push   %ebp
 8054b01:	89 e5                	mov    %esp,%ebp
 8054b03:	83 ec 08             	sub    $0x8,%esp
 8054b06:	eb 49                	jmp    8054b51 <yylex_destroy+0x51>
 8054b08:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054b0d:	85 c0                	test   %eax,%eax
 8054b0f:	74 14                	je     8054b25 <yylex_destroy+0x25>
 8054b11:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054b16:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054b1c:	c1 e2 02             	shl    $0x2,%edx
 8054b1f:	01 d0                	add    %edx,%eax
 8054b21:	8b 00                	mov    (%eax),%eax
 8054b23:	eb 05                	jmp    8054b2a <yylex_destroy+0x2a>
 8054b25:	b8 00 00 00 00       	mov    $0x0,%eax
 8054b2a:	83 ec 0c             	sub    $0xc,%esp
 8054b2d:	50                   	push   %eax
 8054b2e:	e8 ef f8 ff ff       	call   8054422 <yy_delete_buffer>
 8054b33:	83 c4 10             	add    $0x10,%esp
 8054b36:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054b3b:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054b41:	c1 e2 02             	shl    $0x2,%edx
 8054b44:	01 d0                	add    %edx,%eax
 8054b46:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8054b4c:	e8 3f fb ff ff       	call   8054690 <yypop_buffer_state>
 8054b51:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054b56:	85 c0                	test   %eax,%eax
 8054b58:	74 16                	je     8054b70 <yylex_destroy+0x70>
 8054b5a:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054b5f:	8b 15 44 b1 05 08    	mov    0x805b144,%edx
 8054b65:	c1 e2 02             	shl    $0x2,%edx
 8054b68:	01 d0                	add    %edx,%eax
 8054b6a:	8b 00                	mov    (%eax),%eax
 8054b6c:	85 c0                	test   %eax,%eax
 8054b6e:	75 98                	jne    8054b08 <yylex_destroy+0x8>
 8054b70:	a1 4c b1 05 08       	mov    0x805b14c,%eax
 8054b75:	83 ec 0c             	sub    $0xc,%esp
 8054b78:	50                   	push   %eax
 8054b79:	e8 48 00 00 00       	call   8054bc6 <yyfree>
 8054b7e:	83 c4 10             	add    $0x10,%esp
 8054b81:	c7 05 4c b1 05 08 00 	movl   $0x0,0x805b14c
 8054b88:	00 00 00 
 8054b8b:	e8 0c ff ff ff       	call   8054a9c <yy_init_globals>
 8054b90:	b8 00 00 00 00       	mov    $0x0,%eax
 8054b95:	c9                   	leave  
 8054b96:	c3                   	ret    

08054b97 <yyalloc>:
 8054b97:	55                   	push   %ebp
 8054b98:	89 e5                	mov    %esp,%ebp
 8054b9a:	83 ec 08             	sub    $0x8,%esp
 8054b9d:	83 ec 0c             	sub    $0xc,%esp
 8054ba0:	ff 75 08             	pushl  0x8(%ebp)
 8054ba3:	e8 f8 3c ff ff       	call   80488a0 <malloc@plt>
 8054ba8:	83 c4 10             	add    $0x10,%esp
 8054bab:	c9                   	leave  
 8054bac:	c3                   	ret    

08054bad <yyrealloc>:
 8054bad:	55                   	push   %ebp
 8054bae:	89 e5                	mov    %esp,%ebp
 8054bb0:	83 ec 08             	sub    $0x8,%esp
 8054bb3:	83 ec 08             	sub    $0x8,%esp
 8054bb6:	ff 75 0c             	pushl  0xc(%ebp)
 8054bb9:	ff 75 08             	pushl  0x8(%ebp)
 8054bbc:	e8 cf 3c ff ff       	call   8048890 <realloc@plt>
 8054bc1:	83 c4 10             	add    $0x10,%esp
 8054bc4:	c9                   	leave  
 8054bc5:	c3                   	ret    

08054bc6 <yyfree>:
 8054bc6:	55                   	push   %ebp
 8054bc7:	89 e5                	mov    %esp,%ebp
 8054bc9:	83 ec 08             	sub    $0x8,%esp
 8054bcc:	83 ec 0c             	sub    $0xc,%esp
 8054bcf:	ff 75 08             	pushl  0x8(%ebp)
 8054bd2:	e8 19 3c ff ff       	call   80487f0 <free@plt>
 8054bd7:	83 c4 10             	add    $0x10,%esp
 8054bda:	90                   	nop
 8054bdb:	c9                   	leave  
 8054bdc:	c3                   	ret    

08054bdd <detailedMessage>:
 8054bdd:	55                   	push   %ebp
 8054bde:	89 e5                	mov    %esp,%ebp
 8054be0:	83 ec 08             	sub    $0x8,%esp
 8054be3:	83 ec 08             	sub    $0x8,%esp
 8054be6:	ff 75 08             	pushl  0x8(%ebp)
 8054be9:	68 57 7b 05 08       	push   $0x8057b57
 8054bee:	e8 ed 3b ff ff       	call   80487e0 <printf@plt>
 8054bf3:	83 c4 10             	add    $0x10,%esp
 8054bf6:	90                   	nop
 8054bf7:	c9                   	leave  
 8054bf8:	c3                   	ret    

08054bf9 <yyerror>:
 8054bf9:	55                   	push   %ebp
 8054bfa:	89 e5                	mov    %esp,%ebp
 8054bfc:	83 ec 28             	sub    $0x28,%esp
 8054bff:	8b 45 08             	mov    0x8(%ebp),%eax
 8054c02:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8054c05:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8054c0b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8054c0e:	31 c0                	xor    %eax,%eax
 8054c10:	8b 0d c0 b0 05 08    	mov    0x805b0c0,%ecx
 8054c16:	8b 15 3c b1 05 08    	mov    0x805b13c,%edx
 8054c1c:	a1 e0 b0 05 08       	mov    0x805b0e0,%eax
 8054c21:	51                   	push   %ecx
 8054c22:	52                   	push   %edx
 8054c23:	68 5e 7b 05 08       	push   $0x8057b5e
 8054c28:	50                   	push   %eax
 8054c29:	e8 d2 3c ff ff       	call   8048900 <fprintf@plt>
 8054c2e:	83 c4 10             	add    $0x10,%esp
 8054c31:	8d 45 0c             	lea    0xc(%ebp),%eax
 8054c34:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8054c37:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054c3a:	83 ec 08             	sub    $0x8,%esp
 8054c3d:	50                   	push   %eax
 8054c3e:	ff 75 e4             	pushl  -0x1c(%ebp)
 8054c41:	e8 9a 3c ff ff       	call   80488e0 <vprintf@plt>
 8054c46:	83 c4 10             	add    $0x10,%esp
 8054c49:	83 ec 0c             	sub    $0xc,%esp
 8054c4c:	68 7c 7b 05 08       	push   $0x8057b7c
 8054c51:	e8 5a 3c ff ff       	call   80488b0 <puts@plt>
 8054c56:	83 c4 10             	add    $0x10,%esp
 8054c59:	c7 05 40 b1 05 08 00 	movl   $0x0,0x805b140
 8054c60:	00 00 00 
 8054c63:	90                   	nop
 8054c64:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054c67:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8054c6e:	74 05                	je     8054c75 <yyerror+0x7c>
 8054c70:	e8 bb 3b ff ff       	call   8048830 <__stack_chk_fail@plt>
 8054c75:	c9                   	leave  
 8054c76:	c3                   	ret    

08054c77 <newTypeSymbol>:
 8054c77:	55                   	push   %ebp
 8054c78:	89 e5                	mov    %esp,%ebp
 8054c7a:	83 ec 18             	sub    $0x18,%esp
 8054c7d:	83 ec 0c             	sub    $0xc,%esp
 8054c80:	ff 75 0c             	pushl  0xc(%ebp)
 8054c83:	e8 48 3c ff ff       	call   80488d0 <strlen@plt>
 8054c88:	83 c4 10             	add    $0x10,%esp
 8054c8b:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8054c8e:	83 ec 0c             	sub    $0xc,%esp
 8054c91:	6a 14                	push   $0x14
 8054c93:	e8 08 3c ff ff       	call   80488a0 <malloc@plt>
 8054c98:	83 c4 10             	add    $0x10,%esp
 8054c9b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8054c9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054ca1:	8b 55 08             	mov    0x8(%ebp),%edx
 8054ca4:	89 10                	mov    %edx,(%eax)
 8054ca6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054ca9:	8b 55 10             	mov    0x10(%ebp),%edx
 8054cac:	89 50 0c             	mov    %edx,0xc(%eax)
 8054caf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054cb2:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 8054cb9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054cbc:	83 c0 01             	add    $0x1,%eax
 8054cbf:	83 ec 0c             	sub    $0xc,%esp
 8054cc2:	50                   	push   %eax
 8054cc3:	e8 d8 3b ff ff       	call   80488a0 <malloc@plt>
 8054cc8:	83 c4 10             	add    $0x10,%esp
 8054ccb:	89 c2                	mov    %eax,%edx
 8054ccd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054cd0:	89 50 04             	mov    %edx,0x4(%eax)
 8054cd3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054cd6:	8b 40 04             	mov    0x4(%eax),%eax
 8054cd9:	83 ec 08             	sub    $0x8,%esp
 8054cdc:	ff 75 0c             	pushl  0xc(%ebp)
 8054cdf:	50                   	push   %eax
 8054ce0:	e8 9b 3b ff ff       	call   8048880 <strcpy@plt>
 8054ce5:	83 c4 10             	add    $0x10,%esp
 8054ce8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054ceb:	8b 50 04             	mov    0x4(%eax),%edx
 8054cee:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054cf1:	01 d0                	add    %edx,%eax
 8054cf3:	c6 00 00             	movb   $0x0,(%eax)
 8054cf6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054cf9:	c9                   	leave  
 8054cfa:	c3                   	ret    

08054cfb <newFuncSymbol>:
 8054cfb:	55                   	push   %ebp
 8054cfc:	89 e5                	mov    %esp,%ebp
 8054cfe:	83 ec 18             	sub    $0x18,%esp
 8054d01:	83 ec 0c             	sub    $0xc,%esp
 8054d04:	ff 75 0c             	pushl  0xc(%ebp)
 8054d07:	e8 c4 3b ff ff       	call   80488d0 <strlen@plt>
 8054d0c:	83 c4 10             	add    $0x10,%esp
 8054d0f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8054d12:	83 ec 0c             	sub    $0xc,%esp
 8054d15:	6a 14                	push   $0x14
 8054d17:	e8 84 3b ff ff       	call   80488a0 <malloc@plt>
 8054d1c:	83 c4 10             	add    $0x10,%esp
 8054d1f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8054d22:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054d25:	8b 55 08             	mov    0x8(%ebp),%edx
 8054d28:	89 10                	mov    %edx,(%eax)
 8054d2a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054d2d:	8b 55 10             	mov    0x10(%ebp),%edx
 8054d30:	89 50 0c             	mov    %edx,0xc(%eax)
 8054d33:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054d36:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 8054d3d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054d40:	83 c0 01             	add    $0x1,%eax
 8054d43:	83 ec 0c             	sub    $0xc,%esp
 8054d46:	50                   	push   %eax
 8054d47:	e8 54 3b ff ff       	call   80488a0 <malloc@plt>
 8054d4c:	83 c4 10             	add    $0x10,%esp
 8054d4f:	89 c2                	mov    %eax,%edx
 8054d51:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054d54:	89 50 04             	mov    %edx,0x4(%eax)
 8054d57:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054d5a:	8b 40 04             	mov    0x4(%eax),%eax
 8054d5d:	83 ec 08             	sub    $0x8,%esp
 8054d60:	ff 75 0c             	pushl  0xc(%ebp)
 8054d63:	50                   	push   %eax
 8054d64:	e8 17 3b ff ff       	call   8048880 <strcpy@plt>
 8054d69:	83 c4 10             	add    $0x10,%esp
 8054d6c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054d6f:	c9                   	leave  
 8054d70:	c3                   	ret    

08054d71 <hash_pjw>:
 8054d71:	55                   	push   %ebp
 8054d72:	89 e5                	mov    %esp,%ebp
 8054d74:	83 ec 10             	sub    $0x10,%esp
 8054d77:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8054d7e:	eb 3e                	jmp    8054dbe <hash_pjw+0x4d>
 8054d80:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8054d83:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8054d8a:	8b 45 08             	mov    0x8(%ebp),%eax
 8054d8d:	0f b6 00             	movzbl (%eax),%eax
 8054d90:	0f be c0             	movsbl %al,%eax
 8054d93:	01 d0                	add    %edx,%eax
 8054d95:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8054d98:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8054d9b:	25 00 c0 ff ff       	and    $0xffffc000,%eax
 8054da0:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8054da3:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8054da7:	74 11                	je     8054dba <hash_pjw+0x49>
 8054da9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8054dac:	c1 e8 0c             	shr    $0xc,%eax
 8054daf:	33 45 f8             	xor    -0x8(%ebp),%eax
 8054db2:	25 ff 3f 00 00       	and    $0x3fff,%eax
 8054db7:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8054dba:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 8054dbe:	8b 45 08             	mov    0x8(%ebp),%eax
 8054dc1:	0f b6 00             	movzbl (%eax),%eax
 8054dc4:	84 c0                	test   %al,%al
 8054dc6:	75 b8                	jne    8054d80 <hash_pjw+0xf>
 8054dc8:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8054dcb:	c9                   	leave  
 8054dcc:	c3                   	ret    

08054dcd <initTable>:
 8054dcd:	55                   	push   %ebp
 8054dce:	89 e5                	mov    %esp,%ebp
 8054dd0:	83 ec 10             	sub    $0x10,%esp
 8054dd3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8054dda:	eb 12                	jmp    8054dee <initTable+0x21>
 8054ddc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8054ddf:	c7 04 85 a0 b7 05 08 	movl   $0x0,0x805b7a0(,%eax,4)
 8054de6:	00 00 00 00 
 8054dea:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8054dee:	81 7d fc fe 3f 00 00 	cmpl   $0x3ffe,-0x4(%ebp)
 8054df5:	7e e5                	jle    8054ddc <initTable+0xf>
 8054df7:	c7 05 70 b1 05 08 00 	movl   $0x0,0x805b170
 8054dfe:	00 00 00 
 8054e01:	90                   	nop
 8054e02:	c9                   	leave  
 8054e03:	c3                   	ret    

08054e04 <clearTable>:
 8054e04:	55                   	push   %ebp
 8054e05:	89 e5                	mov    %esp,%ebp
 8054e07:	83 ec 18             	sub    $0x18,%esp
 8054e0a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8054e11:	eb 28                	jmp    8054e3b <clearTable+0x37>
 8054e13:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054e16:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 8054e1d:	85 c0                	test   %eax,%eax
 8054e1f:	74 16                	je     8054e37 <clearTable+0x33>
 8054e21:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054e24:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 8054e2b:	83 ec 0c             	sub    $0xc,%esp
 8054e2e:	50                   	push   %eax
 8054e2f:	e8 bc 39 ff ff       	call   80487f0 <free@plt>
 8054e34:	83 c4 10             	add    $0x10,%esp
 8054e37:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8054e3b:	81 7d f4 fe 3f 00 00 	cmpl   $0x3ffe,-0xc(%ebp)
 8054e42:	7e cf                	jle    8054e13 <clearTable+0xf>
 8054e44:	c7 05 70 b1 05 08 00 	movl   $0x0,0x805b170
 8054e4b:	00 00 00 
 8054e4e:	90                   	nop
 8054e4f:	c9                   	leave  
 8054e50:	c3                   	ret    

08054e51 <searchTable>:
 8054e51:	55                   	push   %ebp
 8054e52:	89 e5                	mov    %esp,%ebp
 8054e54:	83 ec 18             	sub    $0x18,%esp
 8054e57:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8054e5b:	75 07                	jne    8054e64 <searchTable+0x13>
 8054e5d:	b8 00 00 00 00       	mov    $0x0,%eax
 8054e62:	eb 63                	jmp    8054ec7 <searchTable+0x76>
 8054e64:	ff 75 08             	pushl  0x8(%ebp)
 8054e67:	e8 05 ff ff ff       	call   8054d71 <hash_pjw>
 8054e6c:	83 c4 04             	add    $0x4,%esp
 8054e6f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8054e72:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054e75:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 8054e7c:	85 c0                	test   %eax,%eax
 8054e7e:	74 42                	je     8054ec2 <searchTable+0x71>
 8054e80:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054e83:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 8054e8a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8054e8d:	eb 09                	jmp    8054e98 <searchTable+0x47>
 8054e8f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054e92:	8b 40 10             	mov    0x10(%eax),%eax
 8054e95:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8054e98:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8054e9c:	74 19                	je     8054eb7 <searchTable+0x66>
 8054e9e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054ea1:	8b 40 04             	mov    0x4(%eax),%eax
 8054ea4:	83 ec 08             	sub    $0x8,%esp
 8054ea7:	50                   	push   %eax
 8054ea8:	ff 75 08             	pushl  0x8(%ebp)
 8054eab:	e8 20 39 ff ff       	call   80487d0 <strcmp@plt>
 8054eb0:	83 c4 10             	add    $0x10,%esp
 8054eb3:	85 c0                	test   %eax,%eax
 8054eb5:	75 d8                	jne    8054e8f <searchTable+0x3e>
 8054eb7:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8054ebb:	74 05                	je     8054ec2 <searchTable+0x71>
 8054ebd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054ec0:	eb 05                	jmp    8054ec7 <searchTable+0x76>
 8054ec2:	b8 00 00 00 00       	mov    $0x0,%eax
 8054ec7:	c9                   	leave  
 8054ec8:	c3                   	ret    

08054ec9 <insertTable>:
 8054ec9:	55                   	push   %ebp
 8054eca:	89 e5                	mov    %esp,%ebp
 8054ecc:	83 ec 18             	sub    $0x18,%esp
 8054ecf:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8054ed3:	74 0a                	je     8054edf <insertTable+0x16>
 8054ed5:	8b 45 08             	mov    0x8(%ebp),%eax
 8054ed8:	8b 40 04             	mov    0x4(%eax),%eax
 8054edb:	85 c0                	test   %eax,%eax
 8054edd:	75 0a                	jne    8054ee9 <insertTable+0x20>
 8054edf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8054ee4:	e9 86 00 00 00       	jmp    8054f6f <insertTable+0xa6>
 8054ee9:	8b 45 08             	mov    0x8(%ebp),%eax
 8054eec:	8b 40 04             	mov    0x4(%eax),%eax
 8054eef:	50                   	push   %eax
 8054ef0:	e8 7c fe ff ff       	call   8054d71 <hash_pjw>
 8054ef5:	83 c4 04             	add    $0x4,%esp
 8054ef8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8054efb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054efe:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 8054f05:	85 c0                	test   %eax,%eax
 8054f07:	75 0f                	jne    8054f18 <insertTable+0x4f>
 8054f09:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054f0c:	8b 55 08             	mov    0x8(%ebp),%edx
 8054f0f:	89 14 85 a0 b7 05 08 	mov    %edx,0x805b7a0(,%eax,4)
 8054f16:	eb 52                	jmp    8054f6a <insertTable+0xa1>
 8054f18:	8b 45 08             	mov    0x8(%ebp),%eax
 8054f1b:	8b 40 04             	mov    0x4(%eax),%eax
 8054f1e:	83 ec 0c             	sub    $0xc,%esp
 8054f21:	50                   	push   %eax
 8054f22:	e8 2a ff ff ff       	call   8054e51 <searchTable>
 8054f27:	83 c4 10             	add    $0x10,%esp
 8054f2a:	85 c0                	test   %eax,%eax
 8054f2c:	74 07                	je     8054f35 <insertTable+0x6c>
 8054f2e:	b8 01 00 00 00       	mov    $0x1,%eax
 8054f33:	eb 3a                	jmp    8054f6f <insertTable+0xa6>
 8054f35:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8054f38:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 8054f3f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8054f42:	eb 09                	jmp    8054f4d <insertTable+0x84>
 8054f44:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054f47:	8b 40 10             	mov    0x10(%eax),%eax
 8054f4a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8054f4d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054f50:	8b 40 10             	mov    0x10(%eax),%eax
 8054f53:	85 c0                	test   %eax,%eax
 8054f55:	75 ed                	jne    8054f44 <insertTable+0x7b>
 8054f57:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8054f5a:	8b 55 08             	mov    0x8(%ebp),%edx
 8054f5d:	89 50 10             	mov    %edx,0x10(%eax)
 8054f60:	8b 45 08             	mov    0x8(%ebp),%eax
 8054f63:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 8054f6a:	b8 00 00 00 00       	mov    $0x0,%eax
 8054f6f:	c9                   	leave  
 8054f70:	c3                   	ret    

08054f71 <preprocessTable>:
 8054f71:	55                   	push   %ebp
 8054f72:	89 e5                	mov    %esp,%ebp
 8054f74:	53                   	push   %ebx
 8054f75:	83 ec 14             	sub    $0x14,%esp
 8054f78:	83 ec 0c             	sub    $0xc,%esp
 8054f7b:	6a 0c                	push   $0xc
 8054f7d:	e8 1e 39 ff ff       	call   80488a0 <malloc@plt>
 8054f82:	83 c4 10             	add    $0x10,%esp
 8054f85:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8054f88:	83 ec 0c             	sub    $0xc,%esp
 8054f8b:	6a 0c                	push   $0xc
 8054f8d:	e8 0e 39 ff ff       	call   80488a0 <malloc@plt>
 8054f92:	83 c4 10             	add    $0x10,%esp
 8054f95:	89 c2                	mov    %eax,%edx
 8054f97:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8054f9a:	89 10                	mov    %edx,(%eax)
 8054f9c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8054f9f:	8b 00                	mov    (%eax),%eax
 8054fa1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8054fa7:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8054faa:	8b 00                	mov    (%eax),%eax
 8054fac:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8054fb3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8054fb6:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8054fbd:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8054fc0:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 8054fc7:	83 ec 04             	sub    $0x4,%esp
 8054fca:	ff 75 e8             	pushl  -0x18(%ebp)
 8054fcd:	68 80 7b 05 08       	push   $0x8057b80
 8054fd2:	6a 01                	push   $0x1
 8054fd4:	e8 22 fd ff ff       	call   8054cfb <newFuncSymbol>
 8054fd9:	83 c4 10             	add    $0x10,%esp
 8054fdc:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8054fdf:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8054fe2:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8054fe9:	83 ec 0c             	sub    $0xc,%esp
 8054fec:	ff 75 ec             	pushl  -0x14(%ebp)
 8054fef:	e8 d5 fe ff ff       	call   8054ec9 <insertTable>
 8054ff4:	83 c4 10             	add    $0x10,%esp
 8054ff7:	83 ec 0c             	sub    $0xc,%esp
 8054ffa:	6a 0c                	push   $0xc
 8054ffc:	e8 9f 38 ff ff       	call   80488a0 <malloc@plt>
 8055001:	83 c4 10             	add    $0x10,%esp
 8055004:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8055007:	83 ec 0c             	sub    $0xc,%esp
 805500a:	6a 0c                	push   $0xc
 805500c:	e8 8f 38 ff ff       	call   80488a0 <malloc@plt>
 8055011:	83 c4 10             	add    $0x10,%esp
 8055014:	89 c2                	mov    %eax,%edx
 8055016:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8055019:	89 10                	mov    %edx,(%eax)
 805501b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805501e:	8b 00                	mov    (%eax),%eax
 8055020:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8055026:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8055029:	8b 00                	mov    (%eax),%eax
 805502b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8055032:	83 ec 0c             	sub    $0xc,%esp
 8055035:	6a 0c                	push   $0xc
 8055037:	e8 64 38 ff ff       	call   80488a0 <malloc@plt>
 805503c:	83 c4 10             	add    $0x10,%esp
 805503f:	89 c2                	mov    %eax,%edx
 8055041:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8055044:	89 50 04             	mov    %edx,0x4(%eax)
 8055047:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805504a:	8b 40 04             	mov    0x4(%eax),%eax
 805504d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8055053:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8055056:	8b 40 04             	mov    0x4(%eax),%eax
 8055059:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8055060:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8055063:	8b 58 04             	mov    0x4(%eax),%ebx
 8055066:	83 ec 0c             	sub    $0xc,%esp
 8055069:	6a 0c                	push   $0xc
 805506b:	e8 30 38 ff ff       	call   80488a0 <malloc@plt>
 8055070:	83 c4 10             	add    $0x10,%esp
 8055073:	89 43 04             	mov    %eax,0x4(%ebx)
 8055076:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8055079:	8b 40 04             	mov    0x4(%eax),%eax
 805507c:	8b 40 04             	mov    0x4(%eax),%eax
 805507f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8055085:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8055088:	8b 40 04             	mov    0x4(%eax),%eax
 805508b:	8b 40 04             	mov    0x4(%eax),%eax
 805508e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8055095:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8055098:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
 805509f:	83 ec 04             	sub    $0x4,%esp
 80550a2:	ff 75 f0             	pushl  -0x10(%ebp)
 80550a5:	68 85 7b 05 08       	push   $0x8057b85
 80550aa:	6a 01                	push   $0x1
 80550ac:	e8 4a fc ff ff       	call   8054cfb <newFuncSymbol>
 80550b1:	83 c4 10             	add    $0x10,%esp
 80550b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80550b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80550ba:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 80550c1:	83 ec 0c             	sub    $0xc,%esp
 80550c4:	ff 75 f4             	pushl  -0xc(%ebp)
 80550c7:	e8 fd fd ff ff       	call   8054ec9 <insertTable>
 80550cc:	83 c4 10             	add    $0x10,%esp
 80550cf:	90                   	nop
 80550d0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80550d3:	c9                   	leave  
 80550d4:	c3                   	ret    

080550d5 <typeSize>:
 80550d5:	55                   	push   %ebp
 80550d6:	89 e5                	mov    %esp,%ebp
 80550d8:	83 ec 18             	sub    $0x18,%esp
 80550db:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80550e2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80550e6:	75 08                	jne    80550f0 <typeSize+0x1b>
 80550e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80550eb:	e9 8e 00 00 00       	jmp    805517e <typeSize+0xa9>
 80550f0:	8b 45 08             	mov    0x8(%ebp),%eax
 80550f3:	8b 00                	mov    (%eax),%eax
 80550f5:	83 f8 01             	cmp    $0x1,%eax
 80550f8:	74 15                	je     805510f <typeSize+0x3a>
 80550fa:	83 f8 01             	cmp    $0x1,%eax
 80550fd:	72 07                	jb     8055106 <typeSize+0x31>
 80550ff:	83 f8 02             	cmp    $0x2,%eax
 8055102:	74 2d                	je     8055131 <typeSize+0x5c>
 8055104:	eb 5c                	jmp    8055162 <typeSize+0x8d>
 8055106:	c7 45 f0 04 00 00 00 	movl   $0x4,-0x10(%ebp)
 805510d:	eb 6c                	jmp    805517b <typeSize+0xa6>
 805510f:	8b 45 08             	mov    0x8(%ebp),%eax
 8055112:	8b 40 04             	mov    0x4(%eax),%eax
 8055115:	83 ec 0c             	sub    $0xc,%esp
 8055118:	50                   	push   %eax
 8055119:	e8 b7 ff ff ff       	call   80550d5 <typeSize>
 805511e:	83 c4 10             	add    $0x10,%esp
 8055121:	89 c2                	mov    %eax,%edx
 8055123:	8b 45 08             	mov    0x8(%ebp),%eax
 8055126:	8b 40 08             	mov    0x8(%eax),%eax
 8055129:	0f af c2             	imul   %edx,%eax
 805512c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 805512f:	eb 4a                	jmp    805517b <typeSize+0xa6>
 8055131:	8b 45 08             	mov    0x8(%ebp),%eax
 8055134:	8b 40 04             	mov    0x4(%eax),%eax
 8055137:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805513a:	eb 1e                	jmp    805515a <typeSize+0x85>
 805513c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805513f:	8b 40 04             	mov    0x4(%eax),%eax
 8055142:	83 ec 0c             	sub    $0xc,%esp
 8055145:	50                   	push   %eax
 8055146:	e8 8a ff ff ff       	call   80550d5 <typeSize>
 805514b:	83 c4 10             	add    $0x10,%esp
 805514e:	01 45 f0             	add    %eax,-0x10(%ebp)
 8055151:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8055154:	8b 40 08             	mov    0x8(%eax),%eax
 8055157:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805515a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 805515e:	75 dc                	jne    805513c <typeSize+0x67>
 8055160:	eb 19                	jmp    805517b <typeSize+0xa6>
 8055162:	68 f4 7b 05 08       	push   $0x8057bf4
 8055167:	68 9d 00 00 00       	push   $0x9d
 805516c:	68 8b 7b 05 08       	push   $0x8057b8b
 8055171:	68 97 7b 05 08       	push   $0x8057b97
 8055176:	e8 75 38 ff ff       	call   80489f0 <__assert_fail@plt>
 805517b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 805517e:	c9                   	leave  
 805517f:	c3                   	ret    

08055180 <structureField>:
 8055180:	55                   	push   %ebp
 8055181:	89 e5                	mov    %esp,%ebp
 8055183:	83 ec 08             	sub    $0x8,%esp
 8055186:	eb 29                	jmp    80551b1 <structureField+0x31>
 8055188:	8b 45 08             	mov    0x8(%ebp),%eax
 805518b:	8b 00                	mov    (%eax),%eax
 805518d:	83 ec 08             	sub    $0x8,%esp
 8055190:	ff 75 0c             	pushl  0xc(%ebp)
 8055193:	50                   	push   %eax
 8055194:	e8 79 05 00 00       	call   8055712 <safe_strcmp>
 8055199:	83 c4 10             	add    $0x10,%esp
 805519c:	85 c0                	test   %eax,%eax
 805519e:	75 08                	jne    80551a8 <structureField+0x28>
 80551a0:	8b 45 08             	mov    0x8(%ebp),%eax
 80551a3:	8b 40 04             	mov    0x4(%eax),%eax
 80551a6:	eb 14                	jmp    80551bc <structureField+0x3c>
 80551a8:	8b 45 08             	mov    0x8(%ebp),%eax
 80551ab:	8b 40 08             	mov    0x8(%eax),%eax
 80551ae:	89 45 08             	mov    %eax,0x8(%ebp)
 80551b1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80551b5:	75 d1                	jne    8055188 <structureField+0x8>
 80551b7:	b8 00 00 00 00       	mov    $0x0,%eax
 80551bc:	c9                   	leave  
 80551bd:	c3                   	ret    

080551be <compareType>:
 80551be:	55                   	push   %ebp
 80551bf:	89 e5                	mov    %esp,%ebp
 80551c1:	83 ec 08             	sub    $0x8,%esp
 80551c4:	8b 45 08             	mov    0x8(%ebp),%eax
 80551c7:	3b 45 0c             	cmp    0xc(%ebp),%eax
 80551ca:	75 0a                	jne    80551d6 <compareType+0x18>
 80551cc:	b8 01 00 00 00       	mov    $0x1,%eax
 80551d1:	e9 a1 00 00 00       	jmp    8055277 <compareType+0xb9>
 80551d6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80551da:	74 06                	je     80551e2 <compareType+0x24>
 80551dc:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 80551e0:	75 0a                	jne    80551ec <compareType+0x2e>
 80551e2:	b8 00 00 00 00       	mov    $0x0,%eax
 80551e7:	e9 8b 00 00 00       	jmp    8055277 <compareType+0xb9>
 80551ec:	8b 45 08             	mov    0x8(%ebp),%eax
 80551ef:	8b 10                	mov    (%eax),%edx
 80551f1:	8b 45 0c             	mov    0xc(%ebp),%eax
 80551f4:	8b 00                	mov    (%eax),%eax
 80551f6:	39 c2                	cmp    %eax,%edx
 80551f8:	74 07                	je     8055201 <compareType+0x43>
 80551fa:	b8 00 00 00 00       	mov    $0x0,%eax
 80551ff:	eb 76                	jmp    8055277 <compareType+0xb9>
 8055201:	8b 45 08             	mov    0x8(%ebp),%eax
 8055204:	8b 00                	mov    (%eax),%eax
 8055206:	85 c0                	test   %eax,%eax
 8055208:	75 1e                	jne    8055228 <compareType+0x6a>
 805520a:	8b 45 08             	mov    0x8(%ebp),%eax
 805520d:	8b 50 04             	mov    0x4(%eax),%edx
 8055210:	8b 45 0c             	mov    0xc(%ebp),%eax
 8055213:	8b 40 04             	mov    0x4(%eax),%eax
 8055216:	39 c2                	cmp    %eax,%edx
 8055218:	75 07                	jne    8055221 <compareType+0x63>
 805521a:	b8 01 00 00 00       	mov    $0x1,%eax
 805521f:	eb 56                	jmp    8055277 <compareType+0xb9>
 8055221:	b8 00 00 00 00       	mov    $0x0,%eax
 8055226:	eb 4f                	jmp    8055277 <compareType+0xb9>
 8055228:	8b 45 08             	mov    0x8(%ebp),%eax
 805522b:	8b 00                	mov    (%eax),%eax
 805522d:	83 f8 01             	cmp    $0x1,%eax
 8055230:	75 1b                	jne    805524d <compareType+0x8f>
 8055232:	8b 45 0c             	mov    0xc(%ebp),%eax
 8055235:	8b 50 04             	mov    0x4(%eax),%edx
 8055238:	8b 45 08             	mov    0x8(%ebp),%eax
 805523b:	8b 40 04             	mov    0x4(%eax),%eax
 805523e:	83 ec 08             	sub    $0x8,%esp
 8055241:	52                   	push   %edx
 8055242:	50                   	push   %eax
 8055243:	e8 76 ff ff ff       	call   80551be <compareType>
 8055248:	83 c4 10             	add    $0x10,%esp
 805524b:	eb 2a                	jmp    8055277 <compareType+0xb9>
 805524d:	8b 45 08             	mov    0x8(%ebp),%eax
 8055250:	8b 00                	mov    (%eax),%eax
 8055252:	83 f8 02             	cmp    $0x2,%eax
 8055255:	75 1b                	jne    8055272 <compareType+0xb4>
 8055257:	8b 45 0c             	mov    0xc(%ebp),%eax
 805525a:	8b 50 04             	mov    0x4(%eax),%edx
 805525d:	8b 45 08             	mov    0x8(%ebp),%eax
 8055260:	8b 40 04             	mov    0x4(%eax),%eax
 8055263:	83 ec 08             	sub    $0x8,%esp
 8055266:	52                   	push   %edx
 8055267:	50                   	push   %eax
 8055268:	e8 0c 00 00 00       	call   8055279 <compareStructure>
 805526d:	83 c4 10             	add    $0x10,%esp
 8055270:	eb 05                	jmp    8055277 <compareType+0xb9>
 8055272:	b8 00 00 00 00       	mov    $0x0,%eax
 8055277:	c9                   	leave  
 8055278:	c3                   	ret    

08055279 <compareStructure>:
 8055279:	55                   	push   %ebp
 805527a:	89 e5                	mov    %esp,%ebp
 805527c:	83 ec 08             	sub    $0x8,%esp
 805527f:	8b 45 08             	mov    0x8(%ebp),%eax
 8055282:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8055285:	75 07                	jne    805528e <compareStructure+0x15>
 8055287:	b8 01 00 00 00       	mov    $0x1,%eax
 805528c:	eb 3a                	jmp    80552c8 <compareStructure+0x4f>
 805528e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8055292:	74 06                	je     805529a <compareStructure+0x21>
 8055294:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8055298:	75 07                	jne    80552a1 <compareStructure+0x28>
 805529a:	b8 00 00 00 00       	mov    $0x0,%eax
 805529f:	eb 27                	jmp    80552c8 <compareStructure+0x4f>
 80552a1:	8b 45 0c             	mov    0xc(%ebp),%eax
 80552a4:	8b 10                	mov    (%eax),%edx
 80552a6:	8b 45 08             	mov    0x8(%ebp),%eax
 80552a9:	8b 00                	mov    (%eax),%eax
 80552ab:	83 ec 08             	sub    $0x8,%esp
 80552ae:	52                   	push   %edx
 80552af:	50                   	push   %eax
 80552b0:	e8 1b 35 ff ff       	call   80487d0 <strcmp@plt>
 80552b5:	83 c4 10             	add    $0x10,%esp
 80552b8:	85 c0                	test   %eax,%eax
 80552ba:	75 07                	jne    80552c3 <compareStructure+0x4a>
 80552bc:	b8 01 00 00 00       	mov    $0x1,%eax
 80552c1:	eb 05                	jmp    80552c8 <compareStructure+0x4f>
 80552c3:	b8 00 00 00 00       	mov    $0x0,%eax
 80552c8:	c9                   	leave  
 80552c9:	c3                   	ret    

080552ca <compareArgs>:
 80552ca:	55                   	push   %ebp
 80552cb:	89 e5                	mov    %esp,%ebp
 80552cd:	83 ec 08             	sub    $0x8,%esp
 80552d0:	8b 45 08             	mov    0x8(%ebp),%eax
 80552d3:	3b 45 0c             	cmp    0xc(%ebp),%eax
 80552d6:	75 07                	jne    80552df <compareArgs+0x15>
 80552d8:	b8 01 00 00 00       	mov    $0x1,%eax
 80552dd:	eb 50                	jmp    805532f <compareArgs+0x65>
 80552df:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80552e3:	74 06                	je     80552eb <compareArgs+0x21>
 80552e5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 80552e9:	75 07                	jne    80552f2 <compareArgs+0x28>
 80552eb:	b8 00 00 00 00       	mov    $0x0,%eax
 80552f0:	eb 3d                	jmp    805532f <compareArgs+0x65>
 80552f2:	8b 45 0c             	mov    0xc(%ebp),%eax
 80552f5:	8b 50 04             	mov    0x4(%eax),%edx
 80552f8:	8b 45 08             	mov    0x8(%ebp),%eax
 80552fb:	8b 40 04             	mov    0x4(%eax),%eax
 80552fe:	83 ec 08             	sub    $0x8,%esp
 8055301:	52                   	push   %edx
 8055302:	50                   	push   %eax
 8055303:	e8 b6 fe ff ff       	call   80551be <compareType>
 8055308:	83 c4 10             	add    $0x10,%esp
 805530b:	85 c0                	test   %eax,%eax
 805530d:	75 07                	jne    8055316 <compareArgs+0x4c>
 805530f:	b8 00 00 00 00       	mov    $0x0,%eax
 8055314:	eb 19                	jmp    805532f <compareArgs+0x65>
 8055316:	8b 45 0c             	mov    0xc(%ebp),%eax
 8055319:	8b 50 08             	mov    0x8(%eax),%edx
 805531c:	8b 45 08             	mov    0x8(%ebp),%eax
 805531f:	8b 40 08             	mov    0x8(%eax),%eax
 8055322:	83 ec 08             	sub    $0x8,%esp
 8055325:	52                   	push   %edx
 8055326:	50                   	push   %eax
 8055327:	e8 9e ff ff ff       	call   80552ca <compareArgs>
 805532c:	83 c4 10             	add    $0x10,%esp
 805532f:	c9                   	leave  
 8055330:	c3                   	ret    

08055331 <compareFunction>:
 8055331:	55                   	push   %ebp
 8055332:	89 e5                	mov    %esp,%ebp
 8055334:	83 ec 08             	sub    $0x8,%esp
 8055337:	8b 45 08             	mov    0x8(%ebp),%eax
 805533a:	3b 45 0c             	cmp    0xc(%ebp),%eax
 805533d:	75 07                	jne    8055346 <compareFunction+0x15>
 805533f:	b8 01 00 00 00       	mov    $0x1,%eax
 8055344:	eb 75                	jmp    80553bb <compareFunction+0x8a>
 8055346:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 805534a:	74 06                	je     8055352 <compareFunction+0x21>
 805534c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8055350:	75 07                	jne    8055359 <compareFunction+0x28>
 8055352:	b8 00 00 00 00       	mov    $0x0,%eax
 8055357:	eb 62                	jmp    80553bb <compareFunction+0x8a>
 8055359:	8b 45 08             	mov    0x8(%ebp),%eax
 805535c:	8b 00                	mov    (%eax),%eax
 805535e:	83 f8 01             	cmp    $0x1,%eax
 8055361:	75 0a                	jne    805536d <compareFunction+0x3c>
 8055363:	8b 45 0c             	mov    0xc(%ebp),%eax
 8055366:	8b 00                	mov    (%eax),%eax
 8055368:	83 f8 01             	cmp    $0x1,%eax
 805536b:	74 07                	je     8055374 <compareFunction+0x43>
 805536d:	b8 00 00 00 00       	mov    $0x0,%eax
 8055372:	eb 47                	jmp    80553bb <compareFunction+0x8a>
 8055374:	8b 45 0c             	mov    0xc(%ebp),%eax
 8055377:	8b 40 0c             	mov    0xc(%eax),%eax
 805537a:	8b 10                	mov    (%eax),%edx
 805537c:	8b 45 08             	mov    0x8(%ebp),%eax
 805537f:	8b 40 0c             	mov    0xc(%eax),%eax
 8055382:	8b 00                	mov    (%eax),%eax
 8055384:	83 ec 08             	sub    $0x8,%esp
 8055387:	52                   	push   %edx
 8055388:	50                   	push   %eax
 8055389:	e8 30 fe ff ff       	call   80551be <compareType>
 805538e:	83 c4 10             	add    $0x10,%esp
 8055391:	85 c0                	test   %eax,%eax
 8055393:	75 07                	jne    805539c <compareFunction+0x6b>
 8055395:	b8 00 00 00 00       	mov    $0x0,%eax
 805539a:	eb 1f                	jmp    80553bb <compareFunction+0x8a>
 805539c:	8b 45 0c             	mov    0xc(%ebp),%eax
 805539f:	8b 40 0c             	mov    0xc(%eax),%eax
 80553a2:	8b 50 04             	mov    0x4(%eax),%edx
 80553a5:	8b 45 08             	mov    0x8(%ebp),%eax
 80553a8:	8b 40 0c             	mov    0xc(%eax),%eax
 80553ab:	8b 40 04             	mov    0x4(%eax),%eax
 80553ae:	83 ec 08             	sub    $0x8,%esp
 80553b1:	52                   	push   %edx
 80553b2:	50                   	push   %eax
 80553b3:	e8 12 ff ff ff       	call   80552ca <compareArgs>
 80553b8:	83 c4 10             	add    $0x10,%esp
 80553bb:	c9                   	leave  
 80553bc:	c3                   	ret    

080553bd <printFieldList>:
 80553bd:	55                   	push   %ebp
 80553be:	89 e5                	mov    %esp,%ebp
 80553c0:	83 ec 08             	sub    $0x8,%esp
 80553c3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80553c7:	0f 84 89 00 00 00    	je     8055456 <printFieldList+0x99>
 80553cd:	eb 4a                	jmp    8055419 <printFieldList+0x5c>
 80553cf:	8b 45 08             	mov    0x8(%ebp),%eax
 80553d2:	8b 40 04             	mov    0x4(%eax),%eax
 80553d5:	83 ec 0c             	sub    $0xc,%esp
 80553d8:	50                   	push   %eax
 80553d9:	e8 7b 00 00 00       	call   8055459 <printType>
 80553de:	83 c4 10             	add    $0x10,%esp
 80553e1:	8b 45 08             	mov    0x8(%ebp),%eax
 80553e4:	8b 00                	mov    (%eax),%eax
 80553e6:	85 c0                	test   %eax,%eax
 80553e8:	74 16                	je     8055400 <printFieldList+0x43>
 80553ea:	8b 45 08             	mov    0x8(%ebp),%eax
 80553ed:	8b 00                	mov    (%eax),%eax
 80553ef:	83 ec 08             	sub    $0x8,%esp
 80553f2:	50                   	push   %eax
 80553f3:	68 99 7b 05 08       	push   $0x8057b99
 80553f8:	e8 e3 33 ff ff       	call   80487e0 <printf@plt>
 80553fd:	83 c4 10             	add    $0x10,%esp
 8055400:	83 ec 0c             	sub    $0xc,%esp
 8055403:	68 9d 7b 05 08       	push   $0x8057b9d
 8055408:	e8 d3 33 ff ff       	call   80487e0 <printf@plt>
 805540d:	83 c4 10             	add    $0x10,%esp
 8055410:	8b 45 08             	mov    0x8(%ebp),%eax
 8055413:	8b 40 08             	mov    0x8(%eax),%eax
 8055416:	89 45 08             	mov    %eax,0x8(%ebp)
 8055419:	8b 45 08             	mov    0x8(%ebp),%eax
 805541c:	8b 40 08             	mov    0x8(%eax),%eax
 805541f:	85 c0                	test   %eax,%eax
 8055421:	75 ac                	jne    80553cf <printFieldList+0x12>
 8055423:	8b 45 08             	mov    0x8(%ebp),%eax
 8055426:	8b 40 04             	mov    0x4(%eax),%eax
 8055429:	83 ec 0c             	sub    $0xc,%esp
 805542c:	50                   	push   %eax
 805542d:	e8 27 00 00 00       	call   8055459 <printType>
 8055432:	83 c4 10             	add    $0x10,%esp
 8055435:	8b 45 08             	mov    0x8(%ebp),%eax
 8055438:	8b 00                	mov    (%eax),%eax
 805543a:	85 c0                	test   %eax,%eax
 805543c:	74 19                	je     8055457 <printFieldList+0x9a>
 805543e:	8b 45 08             	mov    0x8(%ebp),%eax
 8055441:	8b 00                	mov    (%eax),%eax
 8055443:	83 ec 08             	sub    $0x8,%esp
 8055446:	50                   	push   %eax
 8055447:	68 99 7b 05 08       	push   $0x8057b99
 805544c:	e8 8f 33 ff ff       	call   80487e0 <printf@plt>
 8055451:	83 c4 10             	add    $0x10,%esp
 8055454:	eb 01                	jmp    8055457 <printFieldList+0x9a>
 8055456:	90                   	nop
 8055457:	c9                   	leave  
 8055458:	c3                   	ret    

08055459 <printType>:
 8055459:	55                   	push   %ebp
 805545a:	89 e5                	mov    %esp,%ebp
 805545c:	83 ec 08             	sub    $0x8,%esp
 805545f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8055463:	0f 84 84 00 00 00    	je     80554ed <printType+0x94>
 8055469:	8b 45 08             	mov    0x8(%ebp),%eax
 805546c:	8b 00                	mov    (%eax),%eax
 805546e:	83 f8 01             	cmp    $0x1,%eax
 8055471:	74 3a                	je     80554ad <printType+0x54>
 8055473:	83 f8 01             	cmp    $0x1,%eax
 8055476:	72 07                	jb     805547f <printType+0x26>
 8055478:	83 f8 02             	cmp    $0x2,%eax
 805547b:	74 5b                	je     80554d8 <printType+0x7f>
 805547d:	eb 6f                	jmp    80554ee <printType+0x95>
 805547f:	8b 45 08             	mov    0x8(%ebp),%eax
 8055482:	8b 40 04             	mov    0x4(%eax),%eax
 8055485:	85 c0                	test   %eax,%eax
 8055487:	75 12                	jne    805549b <printType+0x42>
 8055489:	83 ec 0c             	sub    $0xc,%esp
 805548c:	68 a0 7b 05 08       	push   $0x8057ba0
 8055491:	e8 4a 33 ff ff       	call   80487e0 <printf@plt>
 8055496:	83 c4 10             	add    $0x10,%esp
 8055499:	eb 53                	jmp    80554ee <printType+0x95>
 805549b:	83 ec 0c             	sub    $0xc,%esp
 805549e:	68 a4 7b 05 08       	push   $0x8057ba4
 80554a3:	e8 38 33 ff ff       	call   80487e0 <printf@plt>
 80554a8:	83 c4 10             	add    $0x10,%esp
 80554ab:	eb 41                	jmp    80554ee <printType+0x95>
 80554ad:	8b 45 08             	mov    0x8(%ebp),%eax
 80554b0:	8b 40 08             	mov    0x8(%eax),%eax
 80554b3:	83 ec 08             	sub    $0x8,%esp
 80554b6:	50                   	push   %eax
 80554b7:	68 aa 7b 05 08       	push   $0x8057baa
 80554bc:	e8 1f 33 ff ff       	call   80487e0 <printf@plt>
 80554c1:	83 c4 10             	add    $0x10,%esp
 80554c4:	8b 45 08             	mov    0x8(%ebp),%eax
 80554c7:	8b 40 04             	mov    0x4(%eax),%eax
 80554ca:	83 ec 0c             	sub    $0xc,%esp
 80554cd:	50                   	push   %eax
 80554ce:	e8 86 ff ff ff       	call   8055459 <printType>
 80554d3:	83 c4 10             	add    $0x10,%esp
 80554d6:	eb 16                	jmp    80554ee <printType+0x95>
 80554d8:	8b 45 08             	mov    0x8(%ebp),%eax
 80554db:	8b 40 04             	mov    0x4(%eax),%eax
 80554de:	83 ec 0c             	sub    $0xc,%esp
 80554e1:	50                   	push   %eax
 80554e2:	e8 d6 fe ff ff       	call   80553bd <printFieldList>
 80554e7:	83 c4 10             	add    $0x10,%esp
 80554ea:	90                   	nop
 80554eb:	eb 01                	jmp    80554ee <printType+0x95>
 80554ed:	90                   	nop
 80554ee:	c9                   	leave  
 80554ef:	c3                   	ret    

080554f0 <printFunc>:
 80554f0:	55                   	push   %ebp
 80554f1:	89 e5                	mov    %esp,%ebp
 80554f3:	83 ec 08             	sub    $0x8,%esp
 80554f6:	8b 45 08             	mov    0x8(%ebp),%eax
 80554f9:	8b 00                	mov    (%eax),%eax
 80554fb:	83 ec 0c             	sub    $0xc,%esp
 80554fe:	50                   	push   %eax
 80554ff:	e8 55 ff ff ff       	call   8055459 <printType>
 8055504:	83 c4 10             	add    $0x10,%esp
 8055507:	83 ec 0c             	sub    $0xc,%esp
 805550a:	68 af 7b 05 08       	push   $0x8057baf
 805550f:	e8 cc 32 ff ff       	call   80487e0 <printf@plt>
 8055514:	83 c4 10             	add    $0x10,%esp
 8055517:	8b 45 08             	mov    0x8(%ebp),%eax
 805551a:	8b 40 04             	mov    0x4(%eax),%eax
 805551d:	83 ec 0c             	sub    $0xc,%esp
 8055520:	50                   	push   %eax
 8055521:	e8 97 fe ff ff       	call   80553bd <printFieldList>
 8055526:	83 c4 10             	add    $0x10,%esp
 8055529:	83 ec 0c             	sub    $0xc,%esp
 805552c:	6a 29                	push   $0x29
 805552e:	e8 fd 33 ff ff       	call   8048930 <putchar@plt>
 8055533:	83 c4 10             	add    $0x10,%esp
 8055536:	90                   	nop
 8055537:	c9                   	leave  
 8055538:	c3                   	ret    

08055539 <printFuncType>:
 8055539:	55                   	push   %ebp
 805553a:	89 e5                	mov    %esp,%ebp
 805553c:	83 ec 18             	sub    $0x18,%esp
 805553f:	8b 45 08             	mov    0x8(%ebp),%eax
 8055542:	8b 40 04             	mov    0x4(%eax),%eax
 8055545:	83 ec 08             	sub    $0x8,%esp
 8055548:	50                   	push   %eax
 8055549:	68 b2 7b 05 08       	push   $0x8057bb2
 805554e:	e8 8d 32 ff ff       	call   80487e0 <printf@plt>
 8055553:	83 c4 10             	add    $0x10,%esp
 8055556:	83 ec 0c             	sub    $0xc,%esp
 8055559:	6a 28                	push   $0x28
 805555b:	e8 d0 33 ff ff       	call   8048930 <putchar@plt>
 8055560:	83 c4 10             	add    $0x10,%esp
 8055563:	8b 45 08             	mov    0x8(%ebp),%eax
 8055566:	8b 40 0c             	mov    0xc(%eax),%eax
 8055569:	8b 40 04             	mov    0x4(%eax),%eax
 805556c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805556f:	eb 28                	jmp    8055599 <printFuncType+0x60>
 8055571:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8055574:	8b 40 04             	mov    0x4(%eax),%eax
 8055577:	83 ec 0c             	sub    $0xc,%esp
 805557a:	50                   	push   %eax
 805557b:	e8 d9 fe ff ff       	call   8055459 <printType>
 8055580:	83 c4 10             	add    $0x10,%esp
 8055583:	83 ec 0c             	sub    $0xc,%esp
 8055586:	6a 2c                	push   $0x2c
 8055588:	e8 a3 33 ff ff       	call   8048930 <putchar@plt>
 805558d:	83 c4 10             	add    $0x10,%esp
 8055590:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8055593:	8b 40 08             	mov    0x8(%eax),%eax
 8055596:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8055599:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 805559d:	74 0a                	je     80555a9 <printFuncType+0x70>
 805559f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80555a2:	8b 40 08             	mov    0x8(%eax),%eax
 80555a5:	85 c0                	test   %eax,%eax
 80555a7:	75 c8                	jne    8055571 <printFuncType+0x38>
 80555a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80555ac:	8b 40 04             	mov    0x4(%eax),%eax
 80555af:	83 ec 0c             	sub    $0xc,%esp
 80555b2:	50                   	push   %eax
 80555b3:	e8 a1 fe ff ff       	call   8055459 <printType>
 80555b8:	83 c4 10             	add    $0x10,%esp
 80555bb:	83 ec 0c             	sub    $0xc,%esp
 80555be:	6a 29                	push   $0x29
 80555c0:	e8 6b 33 ff ff       	call   8048930 <putchar@plt>
 80555c5:	83 c4 10             	add    $0x10,%esp
 80555c8:	90                   	nop
 80555c9:	c9                   	leave  
 80555ca:	c3                   	ret    

080555cb <printSymbol>:
 80555cb:	55                   	push   %ebp
 80555cc:	89 e5                	mov    %esp,%ebp
 80555ce:	83 ec 08             	sub    $0x8,%esp
 80555d1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80555d5:	0f 84 d1 00 00 00    	je     80556ac <printSymbol+0xe1>
 80555db:	8b 45 08             	mov    0x8(%ebp),%eax
 80555de:	8b 00                	mov    (%eax),%eax
 80555e0:	85 c0                	test   %eax,%eax
 80555e2:	75 3e                	jne    8055622 <printSymbol+0x57>
 80555e4:	83 ec 0c             	sub    $0xc,%esp
 80555e7:	68 b5 7b 05 08       	push   $0x8057bb5
 80555ec:	e8 ef 31 ff ff       	call   80487e0 <printf@plt>
 80555f1:	83 c4 10             	add    $0x10,%esp
 80555f4:	8b 45 08             	mov    0x8(%ebp),%eax
 80555f7:	8b 40 04             	mov    0x4(%eax),%eax
 80555fa:	83 ec 08             	sub    $0x8,%esp
 80555fd:	50                   	push   %eax
 80555fe:	68 ba 7b 05 08       	push   $0x8057bba
 8055603:	e8 d8 31 ff ff       	call   80487e0 <printf@plt>
 8055608:	83 c4 10             	add    $0x10,%esp
 805560b:	8b 45 08             	mov    0x8(%ebp),%eax
 805560e:	8b 40 0c             	mov    0xc(%eax),%eax
 8055611:	83 ec 0c             	sub    $0xc,%esp
 8055614:	50                   	push   %eax
 8055615:	e8 3f fe ff ff       	call   8055459 <printType>
 805561a:	83 c4 10             	add    $0x10,%esp
 805561d:	e9 8b 00 00 00       	jmp    80556ad <printSymbol+0xe2>
 8055622:	8b 45 08             	mov    0x8(%ebp),%eax
 8055625:	8b 00                	mov    (%eax),%eax
 8055627:	83 f8 01             	cmp    $0x1,%eax
 805562a:	75 3b                	jne    8055667 <printSymbol+0x9c>
 805562c:	83 ec 0c             	sub    $0xc,%esp
 805562f:	68 bf 7b 05 08       	push   $0x8057bbf
 8055634:	e8 a7 31 ff ff       	call   80487e0 <printf@plt>
 8055639:	83 c4 10             	add    $0x10,%esp
 805563c:	8b 45 08             	mov    0x8(%ebp),%eax
 805563f:	8b 40 04             	mov    0x4(%eax),%eax
 8055642:	83 ec 08             	sub    $0x8,%esp
 8055645:	50                   	push   %eax
 8055646:	68 ba 7b 05 08       	push   $0x8057bba
 805564b:	e8 90 31 ff ff       	call   80487e0 <printf@plt>
 8055650:	83 c4 10             	add    $0x10,%esp
 8055653:	8b 45 08             	mov    0x8(%ebp),%eax
 8055656:	8b 40 0c             	mov    0xc(%eax),%eax
 8055659:	83 ec 0c             	sub    $0xc,%esp
 805565c:	50                   	push   %eax
 805565d:	e8 8e fe ff ff       	call   80554f0 <printFunc>
 8055662:	83 c4 10             	add    $0x10,%esp
 8055665:	eb 46                	jmp    80556ad <printSymbol+0xe2>
 8055667:	8b 45 08             	mov    0x8(%ebp),%eax
 805566a:	8b 00                	mov    (%eax),%eax
 805566c:	83 f8 02             	cmp    $0x2,%eax
 805566f:	75 3c                	jne    80556ad <printSymbol+0xe2>
 8055671:	83 ec 0c             	sub    $0xc,%esp
 8055674:	68 c5 7b 05 08       	push   $0x8057bc5
 8055679:	e8 62 31 ff ff       	call   80487e0 <printf@plt>
 805567e:	83 c4 10             	add    $0x10,%esp
 8055681:	8b 45 08             	mov    0x8(%ebp),%eax
 8055684:	8b 40 04             	mov    0x4(%eax),%eax
 8055687:	83 ec 08             	sub    $0x8,%esp
 805568a:	50                   	push   %eax
 805568b:	68 ba 7b 05 08       	push   $0x8057bba
 8055690:	e8 4b 31 ff ff       	call   80487e0 <printf@plt>
 8055695:	83 c4 10             	add    $0x10,%esp
 8055698:	8b 45 08             	mov    0x8(%ebp),%eax
 805569b:	8b 40 0c             	mov    0xc(%eax),%eax
 805569e:	83 ec 0c             	sub    $0xc,%esp
 80556a1:	50                   	push   %eax
 80556a2:	e8 b2 fd ff ff       	call   8055459 <printType>
 80556a7:	83 c4 10             	add    $0x10,%esp
 80556aa:	eb 01                	jmp    80556ad <printSymbol+0xe2>
 80556ac:	90                   	nop
 80556ad:	c9                   	leave  
 80556ae:	c3                   	ret    

080556af <printTable>:
 80556af:	55                   	push   %ebp
 80556b0:	89 e5                	mov    %esp,%ebp
 80556b2:	83 ec 18             	sub    $0x18,%esp
 80556b5:	83 ec 0c             	sub    $0xc,%esp
 80556b8:	68 d0 7b 05 08       	push   $0x8057bd0
 80556bd:	e8 ee 31 ff ff       	call   80488b0 <puts@plt>
 80556c2:	83 c4 10             	add    $0x10,%esp
 80556c5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80556cc:	eb 38                	jmp    8055706 <printTable+0x57>
 80556ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80556d1:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 80556d8:	85 c0                	test   %eax,%eax
 80556da:	74 26                	je     8055702 <printTable+0x53>
 80556dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80556df:	8b 04 85 a0 b7 05 08 	mov    0x805b7a0(,%eax,4),%eax
 80556e6:	83 ec 0c             	sub    $0xc,%esp
 80556e9:	50                   	push   %eax
 80556ea:	e8 dc fe ff ff       	call   80555cb <printSymbol>
 80556ef:	83 c4 10             	add    $0x10,%esp
 80556f2:	83 ec 0c             	sub    $0xc,%esp
 80556f5:	68 d0 7b 05 08       	push   $0x8057bd0
 80556fa:	e8 b1 31 ff ff       	call   80488b0 <puts@plt>
 80556ff:	83 c4 10             	add    $0x10,%esp
 8055702:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8055706:	81 7d f4 fe 3f 00 00 	cmpl   $0x3ffe,-0xc(%ebp)
 805570d:	7e bf                	jle    80556ce <printTable+0x1f>
 805570f:	90                   	nop
 8055710:	c9                   	leave  
 8055711:	c3                   	ret    

08055712 <safe_strcmp>:
 8055712:	55                   	push   %ebp
 8055713:	89 e5                	mov    %esp,%ebp
 8055715:	83 ec 08             	sub    $0x8,%esp
 8055718:	8b 45 08             	mov    0x8(%ebp),%eax
 805571b:	3b 45 0c             	cmp    0xc(%ebp),%eax
 805571e:	75 07                	jne    8055727 <safe_strcmp+0x15>
 8055720:	b8 00 00 00 00       	mov    $0x0,%eax
 8055725:	eb 24                	jmp    805574b <safe_strcmp+0x39>
 8055727:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 805572b:	74 06                	je     8055733 <safe_strcmp+0x21>
 805572d:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8055731:	75 07                	jne    805573a <safe_strcmp+0x28>
 8055733:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8055738:	eb 11                	jmp    805574b <safe_strcmp+0x39>
 805573a:	83 ec 08             	sub    $0x8,%esp
 805573d:	ff 75 0c             	pushl  0xc(%ebp)
 8055740:	ff 75 08             	pushl  0x8(%ebp)
 8055743:	e8 88 30 ff ff       	call   80487d0 <strcmp@plt>
 8055748:	83 c4 10             	add    $0x10,%esp
 805574b:	c9                   	leave  
 805574c:	c3                   	ret    
 805574d:	66 90                	xchg   %ax,%ax
 805574f:	90                   	nop

08055750 <yywrap>:
 8055750:	b8 01 00 00 00       	mov    $0x1,%eax
 8055755:	c3                   	ret    
 8055756:	66 90                	xchg   %ax,%ax
 8055758:	66 90                	xchg   %ax,%ax
 805575a:	66 90                	xchg   %ax,%ax
 805575c:	66 90                	xchg   %ax,%ax
 805575e:	66 90                	xchg   %ax,%ax

08055760 <__libc_csu_init>:
 8055760:	55                   	push   %ebp
 8055761:	57                   	push   %edi
 8055762:	56                   	push   %esi
 8055763:	53                   	push   %ebx
 8055764:	e8 d7 32 ff ff       	call   8048a40 <__x86.get_pc_thunk.bx>
 8055769:	81 c3 97 58 00 00    	add    $0x5897,%ebx
 805576f:	83 ec 0c             	sub    $0xc,%esp
 8055772:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8055776:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 805577c:	e8 17 30 ff ff       	call   8048798 <_init>
 8055781:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8055787:	29 c6                	sub    %eax,%esi
 8055789:	c1 fe 02             	sar    $0x2,%esi
 805578c:	85 f6                	test   %esi,%esi
 805578e:	74 25                	je     80557b5 <__libc_csu_init+0x55>
 8055790:	31 ff                	xor    %edi,%edi
 8055792:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8055798:	83 ec 04             	sub    $0x4,%esp
 805579b:	ff 74 24 2c          	pushl  0x2c(%esp)
 805579f:	ff 74 24 2c          	pushl  0x2c(%esp)
 80557a3:	55                   	push   %ebp
 80557a4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80557ab:	83 c7 01             	add    $0x1,%edi
 80557ae:	83 c4 10             	add    $0x10,%esp
 80557b1:	39 f7                	cmp    %esi,%edi
 80557b3:	75 e3                	jne    8055798 <__libc_csu_init+0x38>
 80557b5:	83 c4 0c             	add    $0xc,%esp
 80557b8:	5b                   	pop    %ebx
 80557b9:	5e                   	pop    %esi
 80557ba:	5f                   	pop    %edi
 80557bb:	5d                   	pop    %ebp
 80557bc:	c3                   	ret    
 80557bd:	8d 76 00             	lea    0x0(%esi),%esi

080557c0 <__libc_csu_fini>:
 80557c0:	f3 c3                	repz ret 

Disassembly of section .fini:

080557c4 <_fini>:
 80557c4:	53                   	push   %ebx
 80557c5:	83 ec 08             	sub    $0x8,%esp
 80557c8:	e8 73 32 ff ff       	call   8048a40 <__x86.get_pc_thunk.bx>
 80557cd:	81 c3 33 58 00 00    	add    $0x5833,%ebx
 80557d3:	83 c4 08             	add    $0x8,%esp
 80557d6:	5b                   	pop    %ebx
 80557d7:	c3                   	ret    
