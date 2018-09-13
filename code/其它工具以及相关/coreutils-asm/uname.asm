;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-B611-7234-BB			    |
; |		Doskey Lee, Kingsoft Internet Security Software		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	4E79EF3F3573BBD7745542C23BC88ECA
; Input	CRC32 :	4CEC7C78

; File Name   :	D:\coreutils-o\uname.o
; Format      :	ELF for	Intel 386 (Relocatable)
;
; Source File :	'uname.c'

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

; void emit_ancillary_info()
emit_ancillary_info proc near		; CODE XREF: usage+11Bp

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
		jz	short loc_80000E6
		sub	esp, 4
		push	3		; n
		push	offset s2	; "en_"
		push	[ebp+lc_messages] ; s1
		call	strncmp
		add	esp, 10h
		test	eax, eax
		jz	short loc_80000E6
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

loc_80000E6:				; CODE XREF: emit_ancillary_info+9Bj
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
usage		proc near		; CODE XREF: decode_switches+58p
					; decode_switches+ACp ...

status		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ebx
		sub	esp, 4
		cmp	[ebp+status], 0
		jz	short loc_8000159
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
		jmp	loc_800023C
; ---------------------------------------------------------------------------

loc_8000159:				; CODE XREF: usage+Bj
		mov	ebx, ds:program_name
		sub	esp, 0Ch
		push	offset aUsageSOption__ ; "Usage: %s [OPTION]...\n"
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax		; format
		call	printf
		add	esp, 10h
		mov	eax, ds:uname_mode
		cmp	eax, 1
		jnz	short loc_80001CE
		mov	ebx, ds:stdout
		sub	esp, 0Ch
		push	offset aPrintCertainSy ; "Print	certain	system information.  With"...
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax
		call	fputs_unlocked
		add	esp, 10h
		mov	ebx, ds:stdout
		sub	esp, 0Ch
		push	offset aVKernelVersion ; "  -v,	--kernel-version     print the ke"...
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax
		call	fputs_unlocked
		add	esp, 10h
		jmp	short loc_80001F1
; ---------------------------------------------------------------------------

loc_80001CE:				; CODE XREF: usage+68j
		mov	ebx, ds:stdout
		sub	esp, 0Ch
		push	offset aPrintMachineAr ; "Print	machine	architecture.\n\n"
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax
		call	fputs_unlocked
		add	esp, 10h

loc_80001F1:				; CODE XREF: usage+B0j
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
		call	emit_ancillary_info

loc_800023C:				; CODE XREF: usage+38j
		sub	esp, 0Ch
		push	[ebp+status]	; status
		call	exit
usage		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: static bp-based frame

; void __cdecl print_element(const char	*element)
print_element	proc near		; CODE XREF: main+123p	main+145p ...

element		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		movzx	eax, ds:printed_5797
		test	al, al
		jz	short loc_8000265
		sub	esp, 0Ch
		push	20h		; c
		call	putchar_unlocked
		add	esp, 10h

loc_8000265:				; CODE XREF: print_element+Fj
		mov	ds:printed_5797, 1
		mov	eax, ds:stdout
		sub	esp, 8
		push	eax
		push	[ebp+element]
		call	fputs_unlocked
		add	esp, 10h
		nop
		leave
		retn
print_element	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: static bp-based frame

; int __cdecl decode_switches(int argc,	char **argv)
decode_switches	proc near		; CODE XREF: main+9Bp

toprint		= dword	ptr -10h
c		= dword	ptr -0Ch
var_4		= dword	ptr -4
argc		= dword	ptr  8
argv		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	ebx
		sub	esp, 14h
		mov	[ebp+toprint], 0
		mov	eax, ds:uname_mode
		cmp	eax, 2
		jnz	loc_8000447
		sub	esp, 0Ch
		push	0		; longind
		push	offset arch_long_options ; longopts
		push	offset locale	; shortopts
		push	[ebp+argv]	; argv
		push	[ebp+argc]	; argc
		call	getopt_long
		add	esp, 20h
		mov	[ebp+c], eax
		cmp	[ebp+c], 0FFFFFFFFh
		jz	short loc_8000334
		mov	eax, [ebp+c]
		cmp	eax, 0FFFFFF7Dh
		jz	short loc_80002E0
		cmp	eax, 0FFFFFF7Eh
		jnz	short loc_800032A
		sub	esp, 0Ch
		push	0		; status
		call	usage
; ---------------------------------------------------------------------------

loc_80002E0:				; CODE XREF: decode_switches+4Aj
		mov	edx, ds:Version
		mov	eax, ds:uname_mode
		cmp	eax, 1
		jnz	short loc_80002F7
		mov	ecx, offset aUname ; "uname"
		jmp	short loc_80002FC
; ---------------------------------------------------------------------------

loc_80002F7:				; CODE XREF: decode_switches+6Bj
		mov	ecx, offset aArch ; "arch"

loc_80002FC:				; CODE XREF: decode_switches+72j
		mov	eax, ds:stdout
		sub	esp, 4
		push	0
		push	offset aKarelZak ; "Karel Zak"
		push	offset aDavidMackenzie ; "David	MacKenzie"
		push	edx
		push	offset aGnuCoreutils ; "GNU coreutils"
		push	ecx
		push	eax
		call	version_etc
		add	esp, 20h
		sub	esp, 0Ch
		push	0		; status
		call	exit
; ---------------------------------------------------------------------------

loc_800032A:				; CODE XREF: decode_switches+51j
		sub	esp, 0Ch
		push	1		; status
		call	usage
; ---------------------------------------------------------------------------

loc_8000334:				; CODE XREF: decode_switches+40j
		mov	[ebp+toprint], 10h
		jmp	loc_8000471
; ---------------------------------------------------------------------------

loc_8000340:				; CODE XREF: decode_switches+1E8j
		mov	eax, [ebp+c]
		cmp	eax, 6Eh
		jz	short loc_80003BE
		cmp	eax, 6Eh
		jg	short loc_8000381
		cmp	eax, 61h
		jz	short loc_80003A9
		cmp	eax, 61h
		jg	short loc_8000372
		cmp	eax, 0FFFFFF7Dh
		jz	loc_80003F8
		cmp	eax, 0FFFFFF7Eh
		jz	loc_80003EE
		jmp	loc_800043D
; ---------------------------------------------------------------------------

loc_8000372:				; CODE XREF: decode_switches+D2j
		cmp	eax, 69h
		jz	short loc_80003DF
		cmp	eax, 6Dh
		jz	short loc_80003D3
		jmp	loc_800043D
; ---------------------------------------------------------------------------

loc_8000381:				; CODE XREF: decode_switches+C8j
		cmp	eax, 72h
		jz	short loc_80003C7
		cmp	eax, 72h
		jg	short loc_800039A
		cmp	eax, 6Fh
		jz	short loc_80003E5
		cmp	eax, 70h
		jz	short loc_80003D9
		jmp	loc_800043D
; ---------------------------------------------------------------------------

loc_800039A:				; CODE XREF: decode_switches+106j
		cmp	eax, 73h
		jz	short loc_80003B5
		cmp	eax, 76h
		jz	short loc_80003CD
		jmp	loc_800043D
; ---------------------------------------------------------------------------

loc_80003A9:				; CODE XREF: decode_switches+CDj
		mov	[ebp+toprint], 0FFFFFFFFh
		jmp	loc_8000447
; ---------------------------------------------------------------------------

loc_80003B5:				; CODE XREF: decode_switches+11Aj
		or	[ebp+toprint], 1
		jmp	loc_8000447
; ---------------------------------------------------------------------------

loc_80003BE:				; CODE XREF: decode_switches+C3j
		or	[ebp+toprint], 2
		jmp	loc_8000447
; ---------------------------------------------------------------------------

loc_80003C7:				; CODE XREF: decode_switches+101j
		or	[ebp+toprint], 4
		jmp	short loc_8000447
; ---------------------------------------------------------------------------

loc_80003CD:				; CODE XREF: decode_switches+11Fj
		or	[ebp+toprint], 8
		jmp	short loc_8000447
; ---------------------------------------------------------------------------

loc_80003D3:				; CODE XREF: decode_switches+F7j
		or	[ebp+toprint], 10h
		jmp	short loc_8000447
; ---------------------------------------------------------------------------

loc_80003D9:				; CODE XREF: decode_switches+110j
		or	[ebp+toprint], 20h
		jmp	short loc_8000447
; ---------------------------------------------------------------------------

loc_80003DF:				; CODE XREF: decode_switches+F2j
		or	[ebp+toprint], 40h
		jmp	short loc_8000447
; ---------------------------------------------------------------------------

loc_80003E5:				; CODE XREF: decode_switches+10Bj
		or	[ebp+toprint], 80h
		jmp	short loc_8000447
; ---------------------------------------------------------------------------

loc_80003EE:				; CODE XREF: decode_switches+E4j
		sub	esp, 0Ch
		push	0		; status
		call	usage
; ---------------------------------------------------------------------------

loc_80003F8:				; CODE XREF: decode_switches+D9j
		mov	edx, ds:Version
		mov	eax, ds:uname_mode
		cmp	eax, 1
		jnz	short loc_800040F
		mov	ecx, offset aUname ; "uname"
		jmp	short loc_8000414
; ---------------------------------------------------------------------------

loc_800040F:				; CODE XREF: decode_switches+183j
		mov	ecx, offset aArch ; "arch"

loc_8000414:				; CODE XREF: decode_switches+18Aj
		mov	eax, ds:stdout
		sub	esp, 8
		push	0
		push	offset aDavidMackenzie ; "David	MacKenzie"
		push	edx
		push	offset aGnuCoreutils ; "GNU coreutils"
		push	ecx
		push	eax
		call	version_etc
		add	esp, 20h
		sub	esp, 0Ch
		push	0		; status
		call	exit
; ---------------------------------------------------------------------------

loc_800043D:				; CODE XREF: decode_switches+EAj
					; decode_switches+F9j ...
		sub	esp, 0Ch
		push	1		; status
		call	usage
; ---------------------------------------------------------------------------

loc_8000447:				; CODE XREF: decode_switches+16j
					; decode_switches+12Dj	...
		sub	esp, 0Ch
		push	0		; longind
		push	offset uname_long_options ; longopts
		push	offset shortopts ; "asnrvmpio"
		push	[ebp+argv]	; argv
		push	[ebp+argc]	; argc
		call	getopt_long
		add	esp, 20h
		mov	[ebp+c], eax
		cmp	[ebp+c], 0FFFFFFFFh
		jnz	loc_8000340

loc_8000471:				; CODE XREF: decode_switches+B8j
		mov	eax, ds:optind
		cmp	[ebp+argc], eax
		jz	short loc_80004C4
		mov	eax, ds:optind
		lea	edx, ds:0[eax*4]
		mov	eax, [ebp+argv]
		add	eax, edx
		mov	eax, [eax]
		sub	esp, 0Ch
		push	eax
		call	quote
		add	esp, 10h
		mov	ebx, eax
		sub	esp, 0Ch
		push	offset aExtraOperandS ;	"extra operand %s"
		call	gettext
		add	esp, 10h
		push	ebx
		push	eax		; format
		push	0		; errnum
		push	0		; status
		call	error
		add	esp, 10h
		sub	esp, 0Ch
		push	1		; status
		call	usage
; ---------------------------------------------------------------------------

loc_80004C4:				; CODE XREF: decode_switches+1F6j
		mov	eax, [ebp+toprint]
		mov	ebx, [ebp+var_4]
		leave
		retn
decode_switches	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn bp-based	frame

; int __cdecl main(int argc, const char	**argv,	const char **envp)
		public main
main		proc near

argv		= dword	ptr -1ACh
toprint		= dword	ptr -1A0h
element		= dword	ptr -19Ch
element_0	= dword	ptr -198h
name		= utsname ptr -192h
var_C		= dword	ptr -0Ch
argc		= dword	ptr  0Ch
envp		= dword	ptr  14h

		lea	ecx, [esp+4]
		and	esp, 0FFFFFFF0h
		push	dword ptr [ecx-4]
		push	ebp
		mov	ebp, esp
		push	ebx
		push	ecx
		sub	esp, 1B0h
		mov	ebx, ecx
		mov	eax, [ebx+4]
		mov	[ebp+argv], eax
		mov	eax, large gs:14h
		mov	[ebp+var_C], eax
		xor	eax, eax
		mov	[ebp+toprint], 0
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
		push	offset close_stdout ; func
		call	atexit
		add	esp, 10h
		sub	esp, 8
		push	[ebp+argv]	; argv
		push	dword ptr [ebx]	; argc
		call	decode_switches
		add	esp, 10h
		mov	[ebp+toprint], eax
		cmp	[ebp+toprint], 0
		jnz	short loc_8000588
		mov	[ebp+toprint], 1

loc_8000588:				; CODE XREF: main+B0j
		mov	eax, [ebp+toprint]
		and	eax, 1Fh
		test	eax, eax
		jz	loc_8000685
		sub	esp, 0Ch
		lea	eax, [ebp+name]
		push	eax		; name
		call	uname
		add	esp, 10h
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_80005D8
		sub	esp, 0Ch
		push	offset aCannotGetSyste ; "cannot get system name"
		call	gettext
		add	esp, 10h
		mov	ebx, eax
		call	__errno_location
		mov	eax, [eax]
		sub	esp, 4
		push	ebx		; format
		push	eax		; errnum
		push	1		; status
		call	error
		add	esp, 10h

loc_80005D8:				; CODE XREF: main+E2j
		mov	eax, [ebp+toprint]
		and	eax, 1
		test	eax, eax
		jz	short loc_80005F7
		sub	esp, 0Ch
		lea	eax, [ebp+name]
		push	eax		; element
		call	print_element
		add	esp, 10h

loc_80005F7:				; CODE XREF: main+117j
		mov	eax, [ebp+toprint]
		and	eax, 2
		test	eax, eax
		jz	short loc_8000619
		sub	esp, 0Ch
		lea	eax, [ebp+name]
		add	eax, 41h
		push	eax		; element
		call	print_element
		add	esp, 10h

loc_8000619:				; CODE XREF: main+136j
		mov	eax, [ebp+toprint]
		and	eax, 4
		test	eax, eax
		jz	short loc_800063D
		sub	esp, 0Ch
		lea	eax, [ebp+name]
		add	eax, 82h
		push	eax		; element
		call	print_element
		add	esp, 10h

loc_800063D:				; CODE XREF: main+158j
		mov	eax, [ebp+toprint]
		and	eax, 8
		test	eax, eax
		jz	short loc_8000661
		sub	esp, 0Ch
		lea	eax, [ebp+name]
		add	eax, 0C3h
		push	eax		; element
		call	print_element
		add	esp, 10h

loc_8000661:				; CODE XREF: main+17Cj
		mov	eax, [ebp+toprint]
		and	eax, 10h
		test	eax, eax
		jz	short loc_8000685
		sub	esp, 0Ch
		lea	eax, [ebp+name]
		add	eax, 104h
		push	eax		; element
		call	print_element
		add	esp, 10h

loc_8000685:				; CODE XREF: main+C7j main+1A0j
		mov	eax, [ebp+toprint]
		and	eax, 20h
		test	eax, eax
		jz	short loc_80006C2
		mov	[ebp+element], offset unknown_5830 ; "unknown"
		cmp	[ebp+toprint], 0FFFFFFFFh
		jnz	short loc_80006B1
		cmp	[ebp+element], offset unknown_5830 ; "unknown"
		jz	short loc_80006C2

loc_80006B1:				; CODE XREF: main+1D7j
		sub	esp, 0Ch
		push	[ebp+element]	; element
		call	print_element
		add	esp, 10h

loc_80006C2:				; CODE XREF: main+1C4j	main+1E3j
		mov	eax, [ebp+toprint]
		and	eax, 40h
		test	eax, eax
		jz	short loc_80006FF
		mov	[ebp+element_0], offset	unknown_5830 ; "unknown"
		cmp	[ebp+toprint], 0FFFFFFFFh
		jnz	short loc_80006EE
		cmp	[ebp+element_0], offset	unknown_5830 ; "unknown"
		jz	short loc_80006FF

loc_80006EE:				; CODE XREF: main+214j
		sub	esp, 0Ch
		push	[ebp+element_0]	; element
		call	print_element
		add	esp, 10h

loc_80006FF:				; CODE XREF: main+201j	main+220j
		mov	eax, [ebp+toprint]
		and	eax, 80h
		test	eax, eax
		jz	short loc_800071E
		sub	esp, 0Ch
		push	offset element	; "GNU/Linux"
		call	print_element
		add	esp, 10h

loc_800071E:				; CODE XREF: main+240j
		sub	esp, 0Ch
		push	0Ah		; c
		call	putchar_unlocked
		add	esp, 10h
		sub	esp, 0Ch
		push	0		; status

loc_8000730:				; DATA XREF: .eh_frame:08000E30o
					; .eh_frame:08000E54o ...
		call	exit
main		endp

_text		ends

; ===========================================================================

; Segment type:	Zero-length
; Segment permissions: Read/Write
_data		segment	byte public 'DATA' use32
_data		ends

; Function-local static	variable
; ===========================================================================

; Segment type:	Uninitialized
; Segment permissions: Read/Write
_bss		segment	byte public 'BSS' use32
		assume cs:_bss
		;org 8000736h
		assume es:nothing, ss:nothing, ds:_text, fs:nothing, gs:nothing
; _Bool	printed_5797
printed_5797	db ?			; DATA XREF: print_element+6r
					; print_element:loc_8000265w
_bss		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
; Segment alignment '32byte' can not be represented in assembly
_rodata		segment	para public 'CONST' use32
		assume cs:_rodata
		;org 8000740h
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
					; main+63o ...
aGnuCoreutils	db 'GNU coreutils',0    ; DATA XREF: emit_ancillary_info+54o
					; decode_switches+8Eo ...
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
aAll		db 'all',0              ; DATA XREF: .rodata:uname_long_optionso
aKernelName	db 'kernel-name',0      ; DATA XREF: .rodata:uname_long_optionso
aSysname	db 'sysname',0          ; DATA XREF: .rodata:uname_long_optionso
aNodename	db 'nodename',0         ; DATA XREF: .rodata:uname_long_optionso
aKernelRelease	db 'kernel-release',0   ; DATA XREF: .rodata:uname_long_optionso
aRelease	db 'release',0          ; DATA XREF: .rodata:uname_long_optionso
aKernelVersion	db 'kernel-version',0   ; DATA XREF: .rodata:uname_long_optionso
aMachine	db 'machine',0          ; DATA XREF: .rodata:uname_long_optionso
aProcessor	db 'processor',0        ; DATA XREF: .rodata:uname_long_optionso
aHardwarePlatfo	db 'hardware-platform',0 ; DATA XREF: .rodata:uname_long_optionso
aOperatingSyste	db 'operating-system',0 ; DATA XREF: .rodata:uname_long_optionso
aHelp		db 'help',0             ; DATA XREF: .rodata:uname_long_optionso
					; .rodata:arch_long_optionso
aVersion	db 'version',0          ; DATA XREF: .rodata:uname_long_optionso
					; .rodata:arch_long_optionso
		align 10h
; const	option uname_long_options[14]
uname_long_options option <offset aAll,	0, 0, 61h> ; DATA XREF:	decode_switches+1C9o
		option <offset aKernelName, 0, 0, 73h> ; "all"
		option <offset aSysname, 0, 0, 73h>
		option <offset aNodename, 0, 0,	6Eh>
		option <offset aKernelRelease, 0, 0, 72h>
		option <offset aRelease, 0, 0, 72h>
		option <offset aKernelVersion, 0, 0, 76h>
		option <offset aMachine, 0, 0, 6Dh>
		option <offset aProcessor, 0, 0, 70h>
		option <offset aHardwarePlatfo,	0, 0, 69h>
		option <offset aOperatingSyste,	0, 0, 6Fh>
		option <offset aHelp, 0, 0, 0FFFFFF7Eh>
		option <offset aVersion, 0, 0, 0FFFFFF7Dh>
		option	<0>
; const	option arch_long_options[3]
arch_long_options option <offset aHelp,	0, 0, 0FFFFFF7Eh> ; DATA XREF: decode_switches+21o
		option <offset aVersion, 0, 0, 0FFFFFF7Dh> ; "help"
		option	<0>
; char aTrySHelpForMor[]
aTrySHelpForMor	db 'Try `%s --help',27h,' for more information.',0Ah,0
					; DATA XREF: usage+16o
; char aUsageSOption__[]
aUsageSOption__	db 'Usage: %s [OPTION]...',0Ah,0 ; DATA XREF: usage+46o
		align 10h
; char aPrintCertainSy[]
aPrintCertainSy	db 'Print certain system information.  With no OPTION, same as -s.',0Ah
					; DATA XREF: usage+73o
		db 0Ah
		db '  -a, --all                print all information, in the followin'
		db 'g order,',0Ah
		db '                             except omit -p and -i if unknown:',0Ah
		db '  -s, --kernel-name        print the kernel name',0Ah
		db '  -n, --nodename           print the network node hostname',0Ah
		db '  -r, --kernel-release     print the kernel release',0Ah,0
		align 4
; char aVKernelVersion[]
aVKernelVersion	db '  -v, --kernel-version     print the kernel version',0Ah
					; DATA XREF: usage+96o
		db '  -m, --machine            print the machine hardware name',0Ah
		db '  -p, --processor          print the processor type or "unknown"',0Ah
		db '  -i, --hardware-platform  print the hardware platform or "unknow'
		db 'n"',0Ah
		db '  -o, --operating-system   print the operating system',0Ah,0
; char aPrintMachineAr[]
aPrintMachineAr	db 'Print machine architecture.',0Ah ; DATA XREF: usage+BBo
		db 0Ah,0
		align 4
; char aHelpDisplayThi[]
aHelpDisplayThi	db '      --help     display this help and exit',0Ah,0
					; DATA XREF: usage+DEo
		align 4
; char aVersionOutputV[]
aVersionOutputV	db '      --version  output version information and exit',0Ah,0
					; DATA XREF: usage+101o
; char locale
locale		db 0			; DATA XREF: decode_switches+26o
					; main+4Co
aUname		db 'uname',0            ; DATA XREF: decode_switches+6Do
					; decode_switches+185o
aArch		db 'arch',0             ; DATA XREF: decode_switches:loc_80002F7o
					; decode_switches:loc_800040Fo
aKarelZak	db 'Karel Zak',0        ; DATA XREF: decode_switches+83o
aDavidMackenzie	db 'David MacKenzie',0  ; DATA XREF: decode_switches+88o
					; decode_switches+19Bo
; char shortopts[]
shortopts	db 'asnrvmpio',0        ; DATA XREF: decode_switches+1CEo
; char aExtraOperandS[]
aExtraOperandS	db 'extra operand %s',0 ; DATA XREF: decode_switches+21Co
; char dirname[]
dirname		db '/usr/local/share/locale',0 ; DATA XREF: main+5Eo
; char aCannotGetSyste[]
aCannotGetSyste	db 'cannot get system name',0 ; DATA XREF: main+E7o
; char element[]
element		db 'GNU/Linux',0        ; DATA XREF: main+245o
; Function-local static	variable
; const	char unknown_5830[8]
unknown_5830	db 'unknown',0          ; DATA XREF: main+1C6o main+1D9o ...
_rodata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_eh_frame	segment	dword public 'CONST' use32
		assume cs:_eh_frame
		;org 8000E10h
		dd 14h,	0
		dd 527A01h, 1087C01h, 4040C1Bh,	188h, 20h, 1Ch
		dd offset loc_8000730-8001560h
		dd 11Ch, 80E4100h, 0D420285h, 3834405h,	0C5011403h, 4040CC3h
		dd 18h,	40h
		dd offset loc_8000730-8001468h
		dd 12Bh, 80E4100h, 0D420285h, 3834405h,	1Ch, 5Ch
		dd offset loc_8000730-8001359h
		dd 3Ch,	80E4100h, 0D420285h, 0CC57805h,	404h, 20h, 7Ch
		dd offset loc_8000730-800133Dh
		dd 249h, 80E4100h, 0D420285h, 3834405h,	0C5024103h, 4040CC3h
		dd 24h,	0A0h
		dd offset loc_8000730-8001118h
		dd 269h, 10C4400h, 5104700h, 44007502h,	7875030Fh, 2031006h
		dd 7C75h
_eh_frame	ends

; ===========================================================================

; Segment type:	Externs
; extern
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
					; usage+6Ar ...
		extrn fputs_unlocked:near ; CODE XREF: emit_ancillary_info+7Dp
					; usage+85p ...
; char *setlocale(int category,	const char *locale)
		extrn setlocale:near	; CODE XREF: emit_ancillary_info+8Cp
					; main+53p
; int strncmp(const char *s1, const char *s2, size_t n)
		extrn strncmp:near	; CODE XREF: emit_ancillary_info+AAp
; struct _IO_FILE *stderr
		extrn stderr:dword	; DATA XREF: usage+25r
; int fprintf(FILE *stream, const char *format,	...)
		extrn fprintf:near	; CODE XREF: usage+30p
		extrn uname_mode:dword	; DATA XREF: usage+60r
					; decode_switches+Er ...
; void exit(int	status)
		extrn exit:near		; CODE XREF: usage+126p
					; decode_switches+A2p ...
; int putchar_unlocked(int c)
		extrn putchar_unlocked:near ; CODE XREF: print_element+16p
					; main+257p
; int getopt_long(int argc, char *const	*argv, const char *shortopts, const struct option *longopts, int *longind)
		extrn getopt_long:near	; CODE XREF: decode_switches+31p
					; decode_switches+1D9p
		extrn Version:dword	; DATA XREF: decode_switches:loc_80002E0r
					; decode_switches:loc_80003F8r
		extrn version_etc:near	; CODE XREF: decode_switches+95p
					; decode_switches+1A8p
; int optind
		extrn optind:dword	; DATA XREF: decode_switches:loc_8000471r
					; decode_switches+1F8r
		extrn quote:near	; CODE XREF: decode_switches+20Fp
; void error(int status, int errnum, const char	*format, ...)
		extrn error:near	; CODE XREF: decode_switches+22Fp
					; main+104p
		extrn set_program_name:near ; CODE XREF: main+41p
; char *bindtextdomain(const char *domainname, const char *dirname)
		extrn bindtextdomain:near ; CODE XREF: main+68p
; char *textdomain(const char *domainname)
		extrn textdomain:near	; CODE XREF: main+78p
; void close_stdout(void)
		extrn close_stdout	; DATA XREF: main+83o
; int atexit(void (*func)(void))
		extrn atexit:near	; CODE XREF: main+88p
; int uname(struct utsname *name)
		extrn uname:near	; CODE XREF: main+D7p
; int *_errno_location(void)
		extrn __errno_location:near ; CODE XREF: main+F6p


		end
