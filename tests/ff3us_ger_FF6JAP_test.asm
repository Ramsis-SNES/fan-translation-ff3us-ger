;***********************************************************************************
; Final Fantasy III US German v1.50
;***********************************************************************************



.DEFINE	FF3USROM	"original/final_fantasy_3_v1.1.sfc"		; path and file name of original US ROM
.DEFINE	FF6JapROM	"original/final_fantasy_6_jap.sfc"		; path and file name of original Japanese ROM
.DEFINE	Test

.MEMORYMAP
	SLOTSIZE $10000
	DEFAULTSLOT 0
	SLOT 0 $0000
.ENDME

.ROMBANKSIZE	$10000						; 64K ROM banks
.ROMBANKS	64						; expand ROM to 32 Mbit
.BACKGROUND	FF6JapROM
.EMPTYFILL	$FF
.BASE		$C0

.IFDEF Test

.BANK $02 SLOT 0
.ORG $686C

.SECTION "test" OVERWRITE
	.INCBIN "intro credits/test.bin"
.ENDS

/*
.FOPEN FF6JapROM FF6JapROMFile

.REDEFINE Offset $18F000
.REDEFINE Size $1000

.BANK $18 SLOT 0
.ORG $F000

.SECTION "FF6 title screen patch 07" OVERWRITE

.FSEEK FF6JapROMFile Offset START
.REPEAT Size
	.FREAD FF6JapROMFile Byte
	.DB Byte
.ENDR

.ENDS

.REDEFINE Offset $190000
.REDEFINE Size $4E95

.BANK $19 SLOT 0
.ORG $0000

.SECTION "FF6 title screen patch 08" OVERWRITE

.FSEEK FF6JapROMFile Offset START
.REPEAT Size
	.FREAD FF6JapROMFile Byte
	.DB Byte
.ENDR

.ENDS

.FCLOSE FF6JapROMFile
.UNDEFINE Offset, Size, Byte
*/

.ENDIF
