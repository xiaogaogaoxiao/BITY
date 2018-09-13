;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-B611-7234-BB			    |
; |		Doskey Lee, Kingsoft Internet Security Software		    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	C584623BFF5A26506F9E636C87D3E90C
; Input	CRC32 :	536AD0ED

; File Name   :	D:\coreutils-o\groups.o
; Format      :	ELF for	Intel 386 (Relocatable)
;
; Source File :	'groups.c'

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
emit_ancillary_info proc near		; CODE XREF: usage+C9p

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
usage		proc near		; CODE XREF: main+ACp main+EEp

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
		jmp	loc_80001EA
; ---------------------------------------------------------------------------

loc_8000159:				; CODE XREF: usage+Bj
		mov	ebx, ds:program_name
		sub	esp, 0Ch
		push	offset aUsageSOption__ ; "Usage: %s [OPTION]...	[USERNAME]...\n"
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax		; format
		call	printf
		add	esp, 10h
		mov	ebx, ds:stdout
		sub	esp, 0Ch
		push	offset aPrintGroupMemb ; "Print	group memberships for each USERNA"...
		call	gettext
		add	esp, 10h
		sub	esp, 8
		push	ebx
		push	eax
		call	fputs_unlocked
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
		call	emit_ancillary_info

loc_80001EA:				; CODE XREF: usage+38j
		sub	esp, 0Ch
		push	[ebp+status]	; status
		call	exit
usage		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn bp-based	frame

; int __cdecl main(int argc, const char	**argv,	const char **envp)
		public main
main		proc near

ok		= byte ptr -2Dh
optc		= dword	ptr -2Ch
ruid		= dword	ptr -28h
egid		= dword	ptr -24h
rgid		= dword	ptr -20h
pwd		= dword	ptr -1Ch
argc		= dword	ptr  0Ch
argv		= dword	ptr  10h
envp		= dword	ptr  14h

		lea	ecx, [esp+4]
		and	esp, 0FFFFFFF0h
		push	dword ptr [ecx-4]
		push	ebp
		mov	ebp, esp
		push	esi
		push	ebx
		push	ecx
		sub	esp, 2Ch
		mov	ebx, ecx
		mov	[ebp+ok], 1
		mov	eax, [ebx+4]
		mov	eax, [eax]
		sub	esp, 0Ch
		push	eax
		call	set_program_name
		add	esp, 10h
		sub	esp, 8
		push	offset shortopts ; locale
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
		sub	esp, 0Ch
		push	0		; longind
		push	offset longopts	; longopts
		push	offset shortopts ; shortopts
		push	dword ptr [ebx+4] ; argv
		push	dword ptr [ebx]	; argc
		call	getopt_long
		add	esp, 20h
		mov	[ebp+optc], eax
		cmp	[ebp+optc], 0FFFFFFFFh
		jz	short loc_80002E8
		mov	eax, [ebp+optc]
		cmp	eax, 0FFFFFF7Dh
		jz	short loc_80002A6
		cmp	eax, 0FFFFFF7Eh
		jnz	short loc_80002DE
		sub	esp, 0Ch
		push	0		; status
		call	usage
; ---------------------------------------------------------------------------

loc_80002A6:				; CODE XREF: main+9Ej
		mov	edx, ds:Version
		mov	eax, ds:stdout
		sub	esp, 4
		push	0
		push	offset aJamesYoungman ;	"James Youngman"
		push	offset aDavidMackenzie ; "David	MacKenzie"
		push	edx
		push	offset aGnuCoreutils ; "GNU coreutils"
		push	offset aGroups	; "groups"
		push	eax
		call	version_etc
		add	esp, 20h
		sub	esp, 0Ch
		push	0		; status
		call	exit
; ---------------------------------------------------------------------------

loc_80002DE:				; CODE XREF: main+A5j
		sub	esp, 0Ch
		push	1		; status
		call	usage
; ---------------------------------------------------------------------------

loc_80002E8:				; CODE XREF: main+94j
		mov	eax, ds:optind
		cmp	eax, [ebx]
		jnz	loc_8000422
		call	getuid
		mov	[ebp+ruid], eax
		call	getegid
		mov	[ebp+egid], eax
		call	getgid
		mov	[ebp+rgid], eax
		sub	esp, 0Ch
		push	1
		push	[ebp+egid]
		push	[ebp+rgid]
		push	[ebp+ruid]
		push	0
		call	print_group_list
		add	esp, 20h
		xor	eax, 1
		test	al, al
		jz	short loc_8000330
		mov	[ebp+ok], 0

loc_8000330:				; CODE XREF: main+135j
		sub	esp, 0Ch
		push	0Ah		; c
		call	putchar_unlocked
		add	esp, 10h
		jmp	loc_800042F
; ---------------------------------------------------------------------------

loc_8000342:				; CODE XREF: main+234j
		mov	eax, ds:optind
		lea	edx, ds:0[eax*4]
		mov	eax, [ebx+4]
		add	eax, edx
		mov	eax, [eax]
		sub	esp, 0Ch
		push	eax		; name
		call	getpwnam
		add	esp, 10h
		mov	[ebp+pwd], eax
		cmp	[ebp+pwd], 0
		jnz	short loc_800039B
		mov	eax, ds:optind
		lea	edx, ds:0[eax*4]
		mov	eax, [ebx+4]
		add	eax, edx
		mov	esi, [eax]
		sub	esp, 0Ch
		push	offset aSNoSuchUser ; "%s: No such user"
		call	gettext
		add	esp, 10h
		push	esi
		push	eax		; format
		push	0		; errnum
		push	1		; status
		call	error
		add	esp, 10h

loc_800039B:				; CODE XREF: main+173j
		mov	eax, [ebp+pwd]
		mov	eax, [eax+8]
		mov	[ebp+ruid], eax
		mov	eax, [ebp+pwd]
		mov	eax, [eax+0Ch]
		mov	[ebp+egid], eax
		mov	eax, [ebp+egid]
		mov	[ebp+rgid], eax
		mov	eax, ds:optind
		lea	edx, ds:0[eax*4]
		mov	eax, [ebx+4]
		add	eax, edx
		mov	eax, [eax]
		sub	esp, 8
		push	eax
		push	offset format	; "%s :	"
		call	printf
		add	esp, 10h
		mov	eax, ds:optind
		lea	edx, [eax+1]
		mov	ds:optind, edx
		lea	edx, ds:0[eax*4]
		mov	eax, [ebx+4]
		add	eax, edx
		mov	eax, [eax]
		sub	esp, 0Ch
		push	1
		push	[ebp+egid]
		push	[ebp+rgid]
		push	[ebp+ruid]
		push	eax
		call	print_group_list
		add	esp, 20h
		xor	eax, 1
		test	al, al
		jz	short loc_8000415
		mov	[ebp+ok], 0

loc_8000415:				; CODE XREF: main+21Aj
		sub	esp, 0Ch
		push	0Ah		; c
		call	putchar_unlocked
		add	esp, 10h

loc_8000422:				; CODE XREF: main+FAj
		mov	eax, ds:optind
		cmp	eax, [ebx]
		jl	loc_8000342

loc_800042F:				; CODE XREF: main+148j
		cmp	[ebp+ok], 0
		jz	short loc_800043C
		mov	eax, 0
		jmp	short loc_8000441
; ---------------------------------------------------------------------------

loc_800043C:				; CODE XREF: main+23Ej
		mov	eax, 1

loc_8000441:				; CODE XREF: main+245j
		sub	esp, 0Ch
		push	eax		; status

loc_8000445:				; DATA XREF: .eh_frame:080007B8o
					; .eh_frame:080007DCo ...
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
		;org 8000460h
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
					; main+44o ...
aGnuCoreutils	db 'GNU coreutils',0    ; DATA XREF: emit_ancillary_info+54o
					; main+CCo
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
aHelp		db 'help',0             ; DATA XREF: .rodata:longoptso
aVersion	db 'version',0          ; DATA XREF: .rodata:longoptso
		align 10h
; const	option longopts[3]
longopts	option <offset aHelp, 0, 0, 0FFFFFF7Eh>	; DATA XREF: main+76o
		option <offset aVersion, 0, 0, 0FFFFFF7Dh> ; "help"
		option	<0>
; char aTrySHelpForMor[]
aTrySHelpForMor	db 'Try `%s --help',27h,' for more information.',0Ah,0
					; DATA XREF: usage+16o
		align 4
; char aUsageSOption__[]
aUsageSOption__	db 'Usage: %s [OPTION]... [USERNAME]...',0Ah,0 ; DATA XREF: usage+46o
		align 10h
; char aPrintGroupMemb[]
aPrintGroupMemb	db 'Print group memberships for each USERNAME or, if no USERNAME is s'
					; DATA XREF: usage+69o
		db 'pecified, for',0Ah
		db 'the current process (which may differ if the groups database has '
		db 'changed).',0Ah,0
		align 4
; char aHelpDisplayThi[]
aHelpDisplayThi	db '      --help     display this help and exit',0Ah,0
					; DATA XREF: usage+8Co
		align 4
; char aVersionOutputV[]
aVersionOutputV	db '      --version  output version information and exit',0Ah,0
					; DATA XREF: usage+AFo
; char shortopts
shortopts	db 0			; DATA XREF: main+2Do main+7Bo
; char dirname[]
dirname		db '/usr/local/share/locale',0 ; DATA XREF: main+3Fo
aJamesYoungman	db 'James Youngman',0   ; DATA XREF: main+C1o
aDavidMackenzie	db 'David MacKenzie',0  ; DATA XREF: main+C6o
aGroups		db 'groups',0           ; DATA XREF: main+D1o
; char aSNoSuchUser[]
aSNoSuchUser	db '%s: No such user',0 ; DATA XREF: main+18Bo
; char format[]
format		db '%s : ',0            ; DATA XREF: main+1D5o
_rodata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_eh_frame	segment	dword public 'CONST' use32
		assume cs:_eh_frame
		;org 8000798h
		dd 14h,	0
		dd 527A01h, 1087C01h, 4040C1Bh,	188h, 20h, 1Ch
		dd offset loc_8000445-8000BFDh
		dd 11Ch, 80E4100h, 0D420285h, 3834405h,	0C5011403h, 4040CC3h
		dd 18h,	40h
		dd offset loc_8000445-8000B05h
		dd 0D9h, 80E4100h, 0D420285h, 3834405h,	28h, 5Ch
		dd offset loc_8000445-8000A48h
		dd 255h, 10C4400h, 5104700h, 45007502h,	7475030Fh, 2061006h
		dd 3107C75h, 787502h
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
					; usage+60r ...
		extrn fputs_unlocked:near ; CODE XREF: emit_ancillary_info+7Dp
					; usage+7Bp ...
; char *setlocale(int category,	const char *locale)
		extrn setlocale:near	; CODE XREF: emit_ancillary_info+8Cp
					; main+34p
; int strncmp(const char *s1, const char *s2, size_t n)
		extrn strncmp:near	; CODE XREF: emit_ancillary_info+AAp
; struct _IO_FILE *stderr
		extrn stderr:dword	; DATA XREF: usage+25r
; int fprintf(FILE *stream, const char *format,	...)
		extrn fprintf:near	; CODE XREF: usage+30p
; void exit(int	status)
		extrn exit:near		; CODE XREF: usage+D4p	main+E4p ...
		extrn set_program_name:near ; CODE XREF: main+22p
; char *bindtextdomain(const char *domainname, const char *dirname)
		extrn bindtextdomain:near ; CODE XREF: main+49p
; char *textdomain(const char *domainname)
		extrn textdomain:near	; CODE XREF: main+59p
; void close_stdout(void)
		extrn close_stdout	; DATA XREF: main+64o
; int atexit(void (*func)(void))
		extrn atexit:near	; CODE XREF: main+69p
; int getopt_long(int argc, char *const	*argv, const char *shortopts, const struct option *longopts, int *longind)
		extrn getopt_long:near	; CODE XREF: main+85p
		extrn Version:dword	; DATA XREF: main:loc_80002A6r
		extrn version_etc:near	; CODE XREF: main+D7p
; int optind
		extrn optind:dword	; DATA XREF: main:loc_80002E8r
					; main:loc_8000342r ...
; __uid_t getuid(void)
		extrn getuid:near	; CODE XREF: main+100p
; __gid_t getegid(void)
		extrn getegid:near	; CODE XREF: main+108p
; __gid_t getgid(void)
		extrn getgid:near	; CODE XREF: main+110p
		extrn print_group_list:near ; CODE XREF: main+128p main+20Dp
; int putchar_unlocked(int c)
		extrn putchar_unlocked:near ; CODE XREF: main+140p main+225p
; struct passwd	*getpwnam(const	char *name)
		extrn getpwnam:near	; CODE XREF: main+164p
; void error(int status, int errnum, const char	*format, ...)
		extrn error:near	; CODE XREF: main+19Ep


		end