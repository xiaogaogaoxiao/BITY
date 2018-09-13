;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-B611-7234-BB			    |
; |		Doskey Lee, Kingsoft Internet Security Software		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	991C8ACBB5012F47B6EFD48F371AE306
; Input	CRC32 :	C5690C67

; File Name   :	D:\coreutils-o\nice.o
; Format      :	ELF for	Intel 386 (Relocatable)
;
; Source File :	'nice.c'

		.686p
		.mmx
		.model flat
.intel_syntax noprefix

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	byte public 'CODE' use32
		assume cs:_text
		;org 8000000h
		assume es:nothing, ss:nothing, ds:_text, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: static bp-based frame

; void __cdecl initialize_exit_failure(int status)
initialize_exit_failure	proc near	; CODE XREF: main+81p

status		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		cmp	[ebp+status], 1
		jz	short loc_8000011
		mov	eax, [ebp+status]
		mov	ds:exit_failure, eax

loc_8000011:				; CODE XREF: initialize_exit_failure+7j
		nop
		pop	ebp
		retn
initialize_exit_failure	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: static bp-based frame

; void emit_ancillary_info()
emit_ancillary_info proc near		; CODE XREF: usage+E7p

lc_messages	= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	ebx
		sub	esp, 14h
		mov	eax, ds:program_name
		sub	esp, 0Ch
		push	eax
		call	last_component
		add	esp, 10h
		mov	ebx, eax
		sub	esp, 0Ch
		push	offset msgid	; "\nReport %s bugs to %s\n"
		call	gettext
		add	esp, 10h
		sub	esp, 4
		push	offset aBugCoreutils@g ; "bug-coreutils@gnu.org"
		push	ebx
		push	eax		; format
		call	printf
		add	esp, 10h
		sub	esp, 0Ch
		push	offset aSHomePageHttpW ; "%s home page:	<http://www.gnu.org/softw"...
		call	gettext
		add	esp, 10h
		sub	esp, 4
		push	offset domainname ; "coreutils"
		push	offset aGnuCoreutils ; "GNU coreutils"
		push	eax		; format
		call	printf
		add	esp, 10h
		mov	ebx, ds:stdout
		sub	esp, 0Ch
		push	offset aGeneralHelpUsi ; "General help using GNU software: <http:"...
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax
		call	fputs_unlocked
		add	esp, 10h
		sub	esp, 8
		push	0		; locale
		push	5		; category
		call	setlocale
		add	esp, 10h
		mov	[ebp+lc_messages], eax
		cmp	[ebp+lc_messages], 0
		jz	short loc_80000FA
		sub	esp, 4
		push	3		; n
		push	offset s2	; "en_"
		push	[ebp+lc_messages] ; s1
		call	strncmp
		add	esp, 10h
		test	eax, eax
		jz	short loc_80000FA
		mov	eax, ds:program_name
		sub	esp, 0Ch
		push	eax
		call	last_component
		add	esp, 10h
		mov	ebx, eax
		sub	esp, 0Ch
		push	offset aReportSTransla ; "Report %s translation	bugs to	<http://t"...
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax		; format
		call	printf
		add	esp, 10h

loc_80000FA:				; CODE XREF: emit_ancillary_info+9Bj
					; emit_ancillary_info+B4j
		mov	eax, ds:program_name
		sub	esp, 0Ch
		push	eax
		call	last_component
		add	esp, 10h
		mov	ebx, eax
		sub	esp, 0Ch
		push	offset aForCompleteDoc ; "For complete documentation, run: info	c"...
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax		; format
		call	printf
		add	esp, 10h
		nop
		mov	ebx, [ebp+var_4]
		leave
		retn
emit_ancillary_info endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn bp-based	frame

; void __cdecl usage(int status)
		public usage
usage		proc near		; CODE XREF: main+1AAp	main+27Dp
					; DATA XREF: ...

status		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ebx
		sub	esp, 4
		cmp	[ebp+status], 0
		jz	short loc_800016D
		mov	ebx, ds:program_name
		sub	esp, 0Ch
		push	offset aTrySHelpForMor ; "Try `%s --help' for more information.\n"
		call	gettext
		add	esp, 10h
		mov	edx, eax
		mov	eax, ds:stderr
		sub	esp, 4
		push	ebx
		push	edx		; format
		push	eax		; stream
		call	fprintf
		add	esp, 10h
		jmp	loc_800021C
; ---------------------------------------------------------------------------

loc_800016D:				; CODE XREF: usage+Bj
		mov	ebx, ds:program_name
		sub	esp, 0Ch
		push	offset aUsageSOptionCo ; "Usage: %s [OPTION] [COMMAND [ARG]...]\n"
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax		; format
		call	printf
		add	esp, 10h
		sub	esp, 0Ch
		push	offset aRunCommandWith ; "Run COMMAND with an adjusted niceness, "...
		call	gettext
		add	esp, 10h
		sub	esp, 4
		push	13h
		push	0FFFFFFECh
		push	eax		; format
		call	printf
		add	esp, 10h
		mov	ebx, ds:stdout
		sub	esp, 0Ch
		push	offset aHelpDisplayThi ; "	--help	   display this	help and "...
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax
		call	fputs_unlocked
		add	esp, 10h
		mov	ebx, ds:stdout
		sub	esp, 0Ch
		push	offset aVersionOutputV ; "	--version  output version informa"...
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax
		call	fputs_unlocked
		add	esp, 10h
		sub	esp, 0Ch
		push	offset aNoteYourShellM ; "\nNOTE: your shell may have its own ver"...
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	offset aNice	; "nice"
		push	eax		; format
		call	printf
		add	esp, 10h
		call	emit_ancillary_info

loc_800021C:				; CODE XREF: usage+38j
		sub	esp, 0Ch
		push	[ebp+status]	; status
		call	exit
usage		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: static bp-based frame

; _Bool	__cdecl	perm_related_errno(int err)
perm_related_errno proc	near		; CODE XREF: main+39Ap

err		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		cmp	[ebp+err], 0Dh
		jz	short loc_8000236
		cmp	[ebp+err], 1
		jnz	short loc_800023D

loc_8000236:				; CODE XREF: perm_related_errno+7j
		mov	eax, 1
		jmp	short loc_8000242
; ---------------------------------------------------------------------------

loc_800023D:				; CODE XREF: perm_related_errno+Dj
		mov	eax, 0

loc_8000242:				; CODE XREF: perm_related_errno+14j
		and	eax, 1
		pop	ebp
		retn
perm_related_errno endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn bp-based	frame

; int __cdecl main(int argc, const char	**argv,	const char **envp)
		public main
main		proc near

argv		= dword	ptr -4Ch
ok		= byte ptr -45h
tmp		= dword	ptr -44h
adjustment	= dword	ptr -40h
adjustment_given= dword	ptr -3Ch
i		= dword	ptr -38h
s		= dword	ptr -34h
fake_argc	= dword	ptr -30h
fake_argv	= dword	ptr -2Ch
optc		= dword	ptr -28h
current_niceness= dword	ptr -24h
exit_status	= dword	ptr -20h
var_1C		= dword	ptr -1Ch
argc		= dword	ptr  0Ch
envp		= dword	ptr  14h

		lea	ecx, [esp+4]
		and	esp, 0FFFFFFF0h
		push	dword ptr [ecx-4]
		push	ebp
		mov	ebp, esp
		push	esi
		push	ebx
		push	ecx
		sub	esp, 4Ch
		mov	ebx, ecx
		mov	eax, [ebx+4]
		mov	[ebp+argv], eax
		mov	eax, large gs:14h
		mov	[ebp+var_1C], eax
		xor	eax, eax
		mov	[ebp+adjustment], 0Ah
		mov	[ebp+adjustment_given],	0
		mov	eax, [ebp+argv]
		mov	eax, [eax]
		sub	esp, 0Ch
		push	eax
		call	set_program_name
		add	esp, 10h
		sub	esp, 8
		push	offset locale	; locale
		push	6		; category
		call	setlocale
		add	esp, 10h
		sub	esp, 8
		push	offset dirname	; "/usr/local/share/locale"
		push	offset domainname ; "coreutils"
		call	bindtextdomain
		add	esp, 10h
		sub	esp, 0Ch
		push	offset domainname ; "coreutils"
		call	textdomain
		add	esp, 10h
		sub	esp, 0Ch
		push	7Dh		; status
		call	initialize_exit_failure
		add	esp, 10h
		sub	esp, 0Ch
		push	offset close_stdout ; func
		call	atexit
		add	esp, 10h
		mov	eax, ds:Version
		push	0
		push	offset aDavidMackenzie ; "David	MacKenzie"
		push	offset usage
		push	eax
		push	offset aGnuCoreutils ; "GNU coreutils"
		push	offset aNice	; "nice"
		push	[ebp+argv]
		push	dword ptr [ebx]
		call	parse_long_options
		add	esp, 20h
		mov	[ebp+i], 1
		jmp	loc_8000404
; ---------------------------------------------------------------------------

loc_8000315:				; CODE XREF: main+1C2j
		mov	eax, [ebp+i]
		lea	edx, ds:0[eax*4]
		mov	eax, [ebp+argv]
		add	eax, edx
		mov	eax, [eax]
		mov	[ebp+s], eax
		mov	eax, [ebp+s]
		movzx	eax, byte ptr [eax]
		cmp	al, 2Dh
		jnz	short loc_8000383
		mov	eax, [ebp+s]
		add	eax, 1
		movzx	eax, byte ptr [eax]
		cmp	al, 2Dh
		jz	short loc_800034D
		mov	eax, [ebp+s]
		add	eax, 1
		movzx	eax, byte ptr [eax]
		cmp	al, 2Bh
		jnz	short loc_8000354

loc_800034D:				; CODE XREF: main+F7j
		mov	eax, 1
		jmp	short loc_8000359
; ---------------------------------------------------------------------------

loc_8000354:				; CODE XREF: main+104j
		mov	eax, 0

loc_8000359:				; CODE XREF: main+10Bj
		add	eax, 1
		mov	edx, eax
		mov	eax, [ebp+s]
		add	eax, edx
		movzx	eax, byte ptr [eax]
		movsx	eax, al
		sub	eax, 30h
		cmp	eax, 9
		ja	short loc_8000383
		mov	eax, [ebp+s]
		add	eax, 1
		mov	[ebp+adjustment_given],	eax
		add	[ebp+i], 1
		jmp	loc_8000404
; ---------------------------------------------------------------------------

loc_8000383:				; CODE XREF: main+EAj main+128j
		mov	eax, [ebp+i]
		lea	edx, [eax-1]
		mov	eax, [ebx]
		sub	eax, edx
		mov	[ebp+fake_argc], eax
		mov	eax, [ebp+i]
		add	eax, 3FFFFFFFh
		lea	edx, ds:0[eax*4]
		mov	eax, [ebp+argv]
		add	eax, edx
		mov	[ebp+fake_argv], eax
		mov	eax, [ebp+argv]
		mov	edx, [eax]
		mov	eax, [ebp+fake_argv]
		mov	[eax], edx
		mov	ds:optind, 0
		sub	esp, 0Ch
		push	0		; longind
		push	offset longopts	; longopts
		push	offset shortopts ; "+n:"
		push	[ebp+fake_argv]	; argv
		push	[ebp+fake_argc]	; argc
		call	getopt_long
		add	esp, 20h
		mov	[ebp+optc], eax
		mov	eax, ds:optind
		sub	eax, 1
		add	[ebp+i], eax
		cmp	[ebp+optc], 3Fh
		jnz	short loc_80003F6
		sub	esp, 0Ch
		push	7Dh		; status
		call	usage
; ---------------------------------------------------------------------------

loc_80003F6:				; CODE XREF: main+1A3j
		cmp	[ebp+optc], 6Eh
		jnz	short loc_8000411
		mov	eax, ds:optarg
		mov	[ebp+adjustment_given],	eax

loc_8000404:				; CODE XREF: main+C9j main+137j
		mov	eax, [ebp+i]
		cmp	eax, [ebx]
		jl	loc_8000315
		jmp	short loc_8000412
; ---------------------------------------------------------------------------

loc_8000411:				; CODE XREF: main+1B3j
		nop

loc_8000412:				; CODE XREF: main+1C8j
		cmp	[ebp+adjustment_given],	0
		jz	short loc_800048E
		sub	esp, 0Ch
		push	offset locale
		lea	eax, [ebp+tmp]
		push	eax
		push	0Ah
		push	0
		push	[ebp+adjustment_given]
		call	xstrtol
		add	esp, 20h
		cmp	eax, 1
		jbe	short loc_8000466
		sub	esp, 0Ch
		push	[ebp+adjustment_given]
		call	quote
		add	esp, 10h
		mov	esi, eax
		sub	esp, 0Ch
		push	offset aInvalidAdjustm ; "invalid adjustment %s"
		call	gettext
		add	esp, 10h
		push	esi
		push	eax		; format
		push	0		; errnum
		push	7Dh		; status
		call	error
		add	esp, 10h

loc_8000466:				; CODE XREF: main+1EFj
		mov	eax, [ebp+tmp]
		cmp	eax, 0FFFFFFD9h
		jz	short loc_8000476
		mov	eax, [ebp+tmp]
		cmp	eax, 0FFFFFFDAh
		jl	short loc_8000486

loc_8000476:				; CODE XREF: main+225j
		mov	eax, [ebp+tmp]
		mov	edx, 27h
		cmp	eax, 27h
		cmovg	eax, edx
		jmp	short loc_800048B
; ---------------------------------------------------------------------------

loc_8000486:				; CODE XREF: main+22Dj
		mov	eax, 0FFFFFFD9h

loc_800048B:				; CODE XREF: main+23Dj
		mov	[ebp+adjustment], eax

loc_800048E:				; CODE XREF: main+1CFj
		mov	eax, [ebp+i]
		cmp	eax, [ebx]
		jnz	loc_800053C
		cmp	[ebp+adjustment_given],	0
		jz	short loc_80004C9
		sub	esp, 0Ch
		push	offset aACommandMustBe ; "a command must be given with an adjustm"...
		call	gettext
		add	esp, 10h
		sub	esp, 4
		push	eax		; format
		push	0		; errnum
		push	0		; status
		call	error
		add	esp, 10h
		sub	esp, 0Ch
		push	7Dh		; status
		call	usage
; ---------------------------------------------------------------------------

loc_80004C9:				; CODE XREF: main+256j
		call	__errno_location
		mov	dword ptr [eax], 0
		sub	esp, 8
		push	0		; who
		push	0		; which
		call	getpriority
		add	esp, 10h
		mov	[ebp+current_niceness],	eax
		cmp	[ebp+current_niceness],	0FFFFFFFFh
		jnz	short loc_800051F
		call	__errno_location
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_800051F
		sub	esp, 0Ch
		push	offset aCannotGetNicen ; "cannot get niceness"
		call	gettext
		add	esp, 10h
		mov	ebx, eax
		call	__errno_location
		mov	eax, [eax]
		sub	esp, 4
		push	ebx		; format
		push	eax		; errnum
		push	7Dh		; status
		call	error
		add	esp, 10h

loc_800051F:				; CODE XREF: main+2A3j	main+2AEj
		sub	esp, 8
		push	[ebp+current_niceness]
		push	offset format	; "%d\n"
		call	printf
		add	esp, 10h
		sub	esp, 0Ch
		push	0		; status
		call	exit
; ---------------------------------------------------------------------------

loc_800053C:				; CODE XREF: main+24Cj
		call	__errno_location
		mov	dword ptr [eax], 0
		sub	esp, 8
		push	0		; who
		push	0		; which
		call	getpriority
		add	esp, 10h
		mov	[ebp+current_niceness],	eax
		cmp	[ebp+current_niceness],	0FFFFFFFFh
		jnz	short loc_8000592
		call	__errno_location
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_8000592
		sub	esp, 0Ch
		push	offset aCannotGetNicen ; "cannot get niceness"
		call	gettext
		add	esp, 10h
		mov	ebx, eax
		call	__errno_location
		mov	eax, [eax]
		sub	esp, 4
		push	ebx		; format
		push	eax		; errnum
		push	7Dh		; status
		call	error
		add	esp, 10h

loc_8000592:				; CODE XREF: main+316j	main+321j
		mov	edx, [ebp+current_niceness]
		mov	eax, [ebp+adjustment]
		add	eax, edx
		sub	esp, 4
		push	eax		; prio
		push	0		; who
		push	0		; which
		call	setpriority
		add	esp, 10h
		test	eax, eax
		setz	al
		mov	[ebp+ok], al
		movzx	eax, [ebp+ok]
		xor	eax, 1
		test	al, al
		jz	short loc_8000626
		sub	esp, 0Ch
		push	offset aCannotSetNicen ; "cannot set niceness"
		call	gettext
		add	esp, 10h
		mov	esi, eax
		call	__errno_location
		mov	ebx, [eax]
		call	__errno_location
		mov	eax, [eax]
		sub	esp, 0Ch
		push	eax		; err
		call	perm_related_errno
		add	esp, 10h
		test	al, al
		jz	short loc_80005F4
		mov	eax, 0
		jmp	short loc_80005F9
; ---------------------------------------------------------------------------

loc_80005F4:				; CODE XREF: main+3A4j
		mov	eax, 7Dh

loc_80005F9:				; CODE XREF: main+3ABj
		sub	esp, 4
		push	esi		; format
		push	ebx		; errnum
		push	eax		; status
		call	error
		add	esp, 10h
		mov	eax, ds:stderr
		sub	esp, 0Ch
		push	eax		; stream
		call	ferror_unlocked
		add	esp, 10h
		test	eax, eax
		jz	short loc_8000626
		sub	esp, 0Ch
		push	7Dh		; status
		call	exit
; ---------------------------------------------------------------------------

loc_8000626:				; CODE XREF: main+374j	main+3D3j
		mov	eax, [ebp+i]
		lea	edx, ds:0[eax*4]
		mov	eax, [ebp+argv]
		add	edx, eax
		mov	eax, [ebp+i]
		lea	ecx, ds:0[eax*4]
		mov	eax, [ebp+argv]
		add	eax, ecx
		mov	eax, [eax]
		sub	esp, 8
		push	edx		; argv
		push	eax		; file
		call	execvp
		add	esp, 10h
		call	__errno_location
		mov	eax, [eax]
		cmp	eax, 2
		jnz	short loc_8000666
		mov	eax, 7Fh
		jmp	short loc_800066B
; ---------------------------------------------------------------------------

loc_8000666:				; CODE XREF: main+416j
		mov	eax, 7Eh

loc_800066B:				; CODE XREF: main+41Dj
		mov	[ebp+exit_status], eax
		mov	eax, [ebp+i]
		lea	edx, ds:0[eax*4]
		mov	eax, [ebp+argv]
		add	eax, edx
		mov	ebx, [eax]
		call	__errno_location
		mov	eax, [eax]
		push	ebx
		push	offset aS	; "%s"
		push	eax		; errnum
		push	0		; status
		call	error
		add	esp, 10h
		sub	esp, 0Ch
		push	[ebp+exit_status] ; status

loc_800069D:				; DATA XREF: .eh_frame:08000B88o
					; .eh_frame:08000BA8o ...
		call	exit
main		endp

_text		ends

; ===========================================================================

; Segment type:	Zero-length
; Segment permissions: Read/Write
_data		segment	byte public 'DATA' use32
_data		ends

; ===========================================================================

; Segment type:	Zero-length
; Segment permissions: Read/Write
_bss		segment	byte public 'BSS' use32
_bss		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
; Segment alignment '32byte' can not be represented in assembly
_rodata		segment	para public 'CONST' use32
		assume cs:_rodata
		;org 80006C0h
; char msgid[]
msgid		db 0Ah			; DATA XREF: emit_ancillary_info+1Do
		db 'Report %s bugs to %s',0Ah,0
aBugCoreutils@g	db 'bug-coreutils@gnu.org',0 ; DATA XREF: emit_ancillary_info+2Do
		align 10h
; char aSHomePageHttpW[]
aSHomePageHttpW	db '%s home page: <http://www.gnu.org/software/%s/>',0Ah,0
					; DATA XREF: emit_ancillary_info+3Fo
; char domainname[]
domainname	db 'coreutils',0        ; DATA XREF: emit_ancillary_info+4Fo
					; main+5Fo ...
aGnuCoreutils	db 'GNU coreutils',0    ; DATA XREF: emit_ancillary_info+54o
					; main+ABo
		align 4
; char aGeneralHelpUsi[]
aGeneralHelpUsi	db 'General help using GNU software: <http://www.gnu.org/gethelp/>',0Ah,0
					; DATA XREF: emit_ancillary_info+6Bo
; char s2[]
s2		db 'en_',0              ; DATA XREF: emit_ancillary_info+A2o
; char aReportSTransla[]
aReportSTransla	db 'Report %s translation bugs to <http://translationproject.org/team'
					; DATA XREF: emit_ancillary_info+CCo
		db '/>',0Ah,0
		align 4
; char aForCompleteDoc[]
aForCompleteDoc	db 'For complete documentation, run: info coreutils ',27h,'%s invocation'
					; DATA XREF: emit_ancillary_info+FCo
		db 27h,0Ah,0
aAdjustment	db 'adjustment',0       ; DATA XREF: .rodata:longoptso
		align 10h
; const	option longopts[2]
longopts	option <offset aAdjustment, 1, 0, 6Eh> ; DATA XREF: main+179o
		option	<0>		; "adjustment"
; char aTrySHelpForMor[]
aTrySHelpForMor	db 'Try `%s --help',27h,' for more information.',0Ah,0
					; DATA XREF: usage+16o
		align 4
; char aUsageSOptionCo[]
aUsageSOptionCo	db 'Usage: %s [OPTION] [COMMAND [ARG]...]',0Ah,0 ; DATA XREF: usage+46o
		align 10h
; char aRunCommandWith[]
aRunCommandWith	db 'Run COMMAND with an adjusted niceness, which affects process sche'
					; DATA XREF: usage+63o
		db 'duling.',0Ah
		db 'With no COMMAND, print the current niceness.  Nicenesses range fr'
		db 'om',0Ah
		db '%d (most favorable scheduling) to %d (least favorable).',0Ah
		db 0Ah
		db '  -n, --adjustment=N   add integer N to the niceness (default 10)'
		db 0Ah,0
		align 4
; char aHelpDisplayThi[]
aHelpDisplayThi	db '      --help     display this help and exit',0Ah,0
					; DATA XREF: usage+89o
		align 4
; char aVersionOutputV[]
aVersionOutputV	db '      --version  output version information and exit',0Ah,0
					; DATA XREF: usage+ACo
		align 4
; char aNoteYourShellM[]
aNoteYourShellM	db 0Ah			; DATA XREF: usage+C9o
		db 'NOTE: your shell may have its own version of %s, which usually su'
		db 'persedes',0Ah
		db 'the version described here.  Please refer to your shell',27h,'s docu'
		db 'mentation',0Ah
		db 'for details about the options it supports.',0Ah,0
aNice		db 'nice',0             ; DATA XREF: usage+D9o main+B0o
; char locale
locale		db 0			; DATA XREF: main+48o main+1D4o
; char dirname[]
dirname		db '/usr/local/share/locale',0 ; DATA XREF: main+5Ao
aDavidMackenzie	db 'David MacKenzie',0  ; DATA XREF: main+A0o
; char shortopts[]
shortopts	db '+n:',0              ; DATA XREF: main+17Eo
; char aInvalidAdjustm[]
aInvalidAdjustm	db 'invalid adjustment %s',0 ; DATA XREF: main+204o
		align 4
; char aACommandMustBe[]
aACommandMustBe	db 'a command must be given with an adjustment',0 ; DATA XREF: main+25Bo
; char aCannotGetNicen[]
aCannotGetNicen	db 'cannot get niceness',0 ; DATA XREF: main+2B3o main+326o
; char format[]
format		db '%d',0Ah,0           ; DATA XREF: main+2DEo
; char aCannotSetNicen[]
aCannotSetNicen	db 'cannot set niceness',0 ; DATA XREF: main+379o
; char aS[]
aS		db '%s',0               ; DATA XREF: main+440o
_rodata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_eh_frame	segment	dword public 'CONST' use32
		assume cs:_eh_frame
		;org 8000B68h
		dd 14h,	0
		dd 527A01h, 1087C01h, 4040C1Bh,	188h, 2	dup(1Ch)
		dd offset loc_800069D-8001225h
		dd 14h,	80E4100h, 0D420285h, 0CC55005h,	404h, 20h, 3Ch
		dd offset loc_800069D-8001231h
		dd 11Ch, 80E4100h, 0D420285h, 3834405h,	0C5011403h, 4040CC3h
		dd 18h,	60h
		dd offset loc_800069D-8001139h
		dd 0F7h, 80E4100h, 0D420285h, 3834405h,	1Ch, 7Ch
		dd offset loc_800069D-800105Eh
		dd 20h,	80E4100h, 0D420285h, 0CC55C05h,	404h, 28h, 9Ch
		dd offset loc_800069D-800105Eh
		dd 45Bh, 10C4400h, 5104700h, 45007502h,	7475030Fh, 2061006h
		dd 3107C75h, 787502h
_eh_frame	ends

; ===========================================================================

; Segment type:	Externs
; extern
		extrn exit_failure:dword ; DATA	XREF: initialize_exit_failure+Cw
		extrn program_name:dword ; DATA	XREF: emit_ancillary_info+7r
					; emit_ancillary_info+B6r ...
		extrn last_component:near ; CODE XREF: emit_ancillary_info+10p
					; emit_ancillary_info+BFp ...
; char *gettext(const char *msgid)
		extrn gettext:near	; CODE XREF: emit_ancillary_info+22p
					; emit_ancillary_info+44p ...
; int printf(const char	*format, ...)
		extrn printf:near	; CODE XREF: emit_ancillary_info+34p
					; emit_ancillary_info+5Ap ...
; struct _IO_FILE *stdout
		extrn stdout:dword	; DATA XREF: emit_ancillary_info+62r
					; usage+80r ...
		extrn fputs_unlocked:near ; CODE XREF: emit_ancillary_info+7Dp
					; usage+9Bp ...
; char *setlocale(int category,	const char *locale)
		extrn setlocale:near	; CODE XREF: emit_ancillary_info+8Cp
					; main+4Fp
; int strncmp(const char *s1, const char *s2, size_t n)
		extrn strncmp:near	; CODE XREF: emit_ancillary_info+AAp
; struct _IO_FILE *stderr
		extrn stderr:dword	; DATA XREF: usage+25r	main+3C0r
; int fprintf(FILE *stream, const char *format,	...)
		extrn fprintf:near	; CODE XREF: usage+30p
; void exit(int	status)
		extrn exit:near		; CODE XREF: usage+F2p	main+2F0p ...
		extrn set_program_name:near ; CODE XREF: main+3Dp
; char *bindtextdomain(const char *domainname, const char *dirname)
		extrn bindtextdomain:near ; CODE XREF: main+64p
; char *textdomain(const char *domainname)
		extrn textdomain:near	; CODE XREF: main+74p
; void close_stdout(void)
		extrn close_stdout	; DATA XREF: main+8Co
; int atexit(void (*func)(void))
		extrn atexit:near	; CODE XREF: main+91p
		extrn Version:dword	; DATA XREF: main+99r
		extrn parse_long_options:near ;	CODE XREF: main+BAp
; int optind
		extrn optind:dword	; DATA XREF: main+16Aw	main+194r
; int getopt_long(int argc, char *const	*argv, const char *shortopts, const struct option *longopts, int *longind)
		extrn getopt_long:near	; CODE XREF: main+189p
; char *optarg
		extrn optarg:dword	; DATA XREF: main+1B5r
		extrn xstrtol:near	; CODE XREF: main+1E4p
		extrn quote:near	; CODE XREF: main+1F7p
; void error(int status, int errnum, const char	*format, ...)
		extrn error:near	; CODE XREF: main+217p	main+270p ...
; int *_errno_location(void)
		extrn __errno_location:near ; CODE XREF: main:loc_80004C9p
					; main+2A5p ...
; int getpriority(__priority_which_t which, id_t who)
		extrn getpriority:near	; CODE XREF: main+294p	main+307p
; int setpriority(__priority_which_t which, id_t who, int prio)
		extrn setpriority:near	; CODE XREF: main+35Bp
; int ferror_unlocked(FILE *stream)
		extrn ferror_unlocked:near ; CODE XREF:	main+3C9p
; int execvp(const char	*file, char *const *argv)
		extrn execvp:near	; CODE XREF: main+404p


		end
