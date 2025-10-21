; **************************************************************************************************
;
;
;
;	Final Fantasy III (US) German fan translation by Ramsis/ManuLöwe
;
;
;
; **************************************************************************************************



; DEFINES
; --------------------------------------------------------------------------------------------------

.DEFINE FF3USROM	"original/final_fantasy_3_v1.1.sfc"		; non-headered original US ROM used as .BACKGROUND
.DEFINE FF6JapROM	"original/final_fantasy_6_jap.sfc"		; non-headered original Japanese ROM (some data will be pulled from here)
;.DEFINE MakeGamePAL
.DEFINE UseDecompressedCinematics
.DEFINE UseFF6TitleScreen
;.DEFINE UseDTE								; not using DTE for now, instead we want to keep the original English dialogue present in the ROM

; Stuff to modify/overwrite (for now) in original ROM space
.DEFINE kSelectDialoguePtr	$C0D900					; unused space, CHECKME or CHANGEME for compatibility with e.g. bugfix patches
.DEFINE kDTE_Table		$C0DFA0
.DEFINE kDialoguePointers	$CCE600
.DEFINE kMonsterDialoguePointers	$CFDFE0
.DEFINE kBattleDialoguePointers	$D0D000
.DEFINE kAttackMessagePointers	$D1F7A0
.DEFINE kItemSymbolNames	$D26F00
.DEFINE kItemNames		$D2B300

; Stuff to put in expanded ROM space
.DEFINE kASCIIDisclaimer	$F00000
.DEFINE kDialogueBank1		$F10000					; \
.DEFINE kDialogueBank2		$F20000					; | 3 banks of dialogue, they *must* have consecutive numbers
.DEFINE kDialogueBank3		$F30000					; /
.DEFINE kBattleDialogue		$F40000
.DEFINE kMonsterDialogue	$F43000
.DEFINE kAttackMessages		$F44800
.DEFINE kDecompressedCinematics	$F80000

; Misc. constants
.DEFINE kStringCountBank1	1024					; total number of strings per dialogue bank
.DEFINE kStringCountBank2	1038
.DEFINE kStringCountBank3	1021



; ROM MAKEUP
; --------------------------------------------------------------------------------------------------

.MEMORYMAP
	SLOTSIZE $10000
	DEFAULTSLOT 0
	SLOT 0 $0000
.ENDME

.ROMBANKSIZE	$10000							; 64K ROM banks
.ROMBANKS	64							; expand ROM to 32 Mbit
.BACKGROUND	FF3USROM
.EMPTYFILL	$FF
.BASE		$C0							; for HiROM mapping



; STRINGMAPS
; --------------------------------------------------------------------------------------------------

; TODO FIXME: Fix table mess (sort out tables, clean up/complete individual tables)

.STRINGMAPTABLE battle_dialogue	"tbl_battle_dialogue.tbl"
;.STRINGMAPTABLE battle_dialogue1	"tbl_battle_dialogue_FF6dt.tbl"

.IFDEF UseDTE

.STRINGMAPTABLE dialogue	"tbl_dialogue_withDTE.tbl"
.STRINGMAPTABLE DTE		"tbl_DTE.tbl"

.ELSE

.STRINGMAPTABLE dialogue	"tbl_dialogue_noDTE.tbl"

.ENDIF



; INCLUDES
; --------------------------------------------------------------------------------------------------

.INCLUDE "macros.inc.asm"						; this needs to come first as some macros are used in other .INCLUDEd files

;.IFDEF MakeGamePAL

.INCLUDE "d4s_ff3_palfix_wladx.inc.asm"

;.ENDIF ; MakeGamePAL

.INCLUDE "data_pointers.inc.asm"
.INCLUDE "text_battle_dialogue.inc.asm"
.INCLUDE "text_dialogue.inc.asm"
.INCLUDE "text_items.inc.asm"



; MAIN DIALOGUE POINTER SELECTION
; --------------------------------------------------------------------------------------------------

/*

; Original pointer selection routine

c07fbf lda #$cd                A:0000 X:002c Y:0000 S:15fb D:0000 DB:00 ..M...Z. V:260 H:335 F:50
c07fc1 sta $cb        [0000cb] A:00cd X:002c Y:0000 S:15fb D:0000 DB:00 N.M..... V:260 H:338 F:50
c07fc3 rep #$20                A:00cd X:002c Y:0000 S:15fb D:0000 DB:00 N.M..... V:261 H:  3 F:50
c07fc5 lda $d0        [0000d0] A:00cd X:002c Y:0000 S:15fb D:0000 DB:00 N....... V:261 H:  7 F:50
c07fc7 asl                     A:000c X:002c Y:0000 S:15fb D:0000 DB:00 ........ V:261 H: 14 F:50
c07fc8 tax                     A:0018 X:002c Y:0000 S:15fb D:0000 DB:00 ........ V:261 H: 17 F:50
c07fc9 lda $cce602,x  [cce61a] A:0018 X:0018 Y:0000 S:15fb D:0000 DB:00 ........ V:261 H: 20 F:50
c07fcd sta $c9        [0000c9] A:031b X:0018 Y:0000 S:15fb D:0000 DB:00 ........ V:261 H: 29 F:50
c07fcf lda $d0        [0000d0] A:031b X:0018 Y:0000 S:15fb D:0000 DB:00 ........ V:261 H: 36 F:50
c07fd1 cmp $cce600    [cce600] A:000c X:0018 Y:0000 S:15fb D:0000 DB:00 ........ V:261 H: 43 F:50
c07fd5 bcc $7fdc      [c07fdc] A:000c X:0018 Y:0000 S:15fb D:0000 DB:00 N....... V:261 H: 52 F:50
c07fd7 tdc                     A:000c X:0018 Y:0000 S:15fb D:0000 DB:00 N....... V:261 H: 26 F:47
c07fd8 sep #$20                A:0000 X:0018 Y:0000 S:15fb D:0000 DB:00 ......Z. V:261 H: 29 F:47
c07fda inc $cb        [0000cb] A:0000 X:0018 Y:0000 S:15fb D:0000 DB:00 ..M...Z. V:261 H: 34 F:47
c07fdc tdc                     A:000c X:0018 Y:0000 S:15fb D:0000 DB:00 N....... V:261 H: 57 F:50
c07fdd sep #$20                A:0000 X:0018 Y:0000 S:15fb D:0000 DB:00 ......Z. V:261 H: 60 F:50
c07fdf lda #$01                A:0000 X:0018 Y:0000 S:15fb D:0000 DB:00 ..M...Z. V:261 H: 64 F:50
c07fe1 sta $0568      [000568] A:0001 X:0018 Y:0000 S:15fb D:0000 DB:00 ..M..... V:261 H: 67 F:50
c07fe4 rts                     A:0001 X:0018 Y:0000 S:15fb D:0000 DB:00 ..M..... V:261 H: 74 F:50

; $(C)CE600-$(C)CE601 holds the number of dialogue pointers in first pointer bank (16-bit value)

*/

.BANK $00 SLOT 0
.ORG $A49A

.SECTION "JSR to dialogue pointer selection subroutine (intro)" OVERWRITE

;c0a49a jsr $7fbf      [c07fbf] A:0001 X:0026 Y:0000 S:15fd D:0000 DB:00 ..M..... V:  0 H:161 F:48

	jsr	SelectDialoguePtr

.ENDS



.BANK $00 SLOT 0
.ORG $A4E1

.SECTION "JSR to dialogue pointer selection subroutine (regular dialogue)" OVERWRITE

; c0a4e1 jsr $7fbf      [c07fbf] A:0000 X:002c Y:0000 S:15fd D:0000 DB:00 ..M...Z. V:260 H:325 F:50

	jsr	SelectDialoguePtr

.ENDS



.BANK bankbyte(kSelectDialoguePtr) & $3F SLOT 0
.ORG loword(kSelectDialoguePtr)

.SECTION "New dialogue pointer selection subroutine" OVERWRITE

.ACCU 8
.INDEX 16

SelectDialoguePtr:
	lda	#bankbyte(DialogueString0000)				; load bank byte of first dialogue string
	sta	$CB							; store to some DP variable
	rep	#$20
	lda	$D0							; load string no.
	asl
	tax								; use string no. as index into pointer table
	lda.l	DialoguePointers, x					; look up string pointer
	sta	$C9							; store to some DP variable
	lda	$D0							; load string no. again
	cmp.w	#(DialoguePointers@Block3 - DialoguePointersSize1) / 2	; check if it exceeds no. of last pointer in pointer block 2
	bcc	+
	tdc
	sep	#$20
	inc	$CB							; yes (current pointer is in block 3), increase dialogue string bank twice
	inc	$CB
	lda	#$01
	sta	$0568
	rts								; this new routine has multiple endings, just like Romancing SaGa :p

.ACCU 16

+	cmp.l	DialoguePointersSize1					; check if it exceeds no. of last pointer in pointer block 1
	bcc	+
	tdc
	sep	#$20
	inc	$CB							; yes (current pointer is in block 2), increase dialogue string bank once
	lda	#$01
	sta	$0568
	rts

.ACCU 16

+	tdc								; no (current pointer is in block 1)
	sep	#$20
	lda	#$01
	sta	$0568
	rts

.ENDS



; GERMAN DTE TABLE
; --------------------------------------------------------------------------------------------------

.IFDEF UseDTE

.BANK bankbyte(kDTE_Table) & $3F SLOT 0
.ORG loword(kDTE_Table)

.SECTION "DTE table" OVERWRITE

; German DTE table as used in v1.40

	.STRINGMAP DTE, "e  t: iet hes er areindid  w sanna hzur n atfu i, mmngha mdastonDe bmet…enitarllicIced feuveisesorl  cne'sndlesenka te lpeasuru alumg om df  gwursberousriwaweDaet rntm maeilihooffeh  naudesodtcaratttautel! ehtiWeloe!ldnockahk  ulakescw !!agilnnco. chgogee…"
;			 1212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212121212

.ENDS

.ENDIF ; UseDTE



; SET PAL REGION
; --------------------------------------------------------------------------------------------------

.IFDEF MakeGamePAL

.BANK $00 SLOT 0
.ORG $FFD9

.SECTION "PAL country code" OVERWRITE

	.DB $02

.ENDS

.ENDIF ; MakeGamePAL



; LOAD 4-LINE BATTLE DIALOGUE
; --------------------------------------------------------------------------------------------------

/*

c196c7 jsr $9817      [c19817] A:0081 X:5800 Y:00c0 S:15e3 D:0000 DB:7e ..M..I.C V:106 H: 42 F: 5
c19817 lda #$d0                A:0081 X:5800 Y:00c0 S:15e1 D:0000 DB:7e ..M..I.C V:106 H: 52 F: 5 ; load bank
c19819 sta $88d9      [7e88d9] A:00d0 X:5800 Y:00c0 S:15e1 D:0000 DB:7e N.M..I.C V:106 H: 55 F: 5
c1981c ldy #$0001              A:00d0 X:5800 Y:00c0 S:15e1 D:0000 DB:7e N.M..I.C V:106 H: 62 F: 5
c1981f lda [$8f],y    [d09e7f] A:00d0 X:5800 Y:0001 S:15e1 D:0000 DB:7e ..M..I.C V:106 H: 66 F: 5
c19821 rep #$20                A:0006 X:5800 Y:0001 S:15e1 D:0000 DB:7e ..M..I.C V:106 H: 77 F: 5
c19823 asl                     A:0006 X:5800 Y:0001 S:15e1 D:0000 DB:7e .....I.C V:106 H: 81 F: 5
c19824 tax                     A:000c X:5800 Y:0001 S:15e1 D:0000 DB:7e .....I.. V:106 H: 84 F: 5
c19825 lda $d0d000,x  [d0d00c] A:000c X:000c Y:0001 S:15e1 D:0000 DB:7e .....I.. V:106 H: 87 F: 5 ; load pointer
c19829 sta $88d7      [7e88d7] A:d306 X:000c Y:0001 S:15e1 D:0000 DB:7e N....I.. V:106 H: 96 F: 5
c1982c inc $8f        [00008f] A:d306 X:000c Y:0001 S:15e1 D:0000 DB:7e N....I.. V:106 H:105 F: 5
c1982e tdc                     A:d306 X:000c Y:0001 S:15e1 D:0000 DB:7e N....I.. V:106 H:117 F: 5
c1982f sep #$20                A:0000 X:000c Y:0001 S:15e1 D:0000 DB:7e .....IZ. V:106 H:120 F: 5
c19831 rts                     A:0000 X:000c Y:0001 S:15e1 D:0000 DB:7e ..M..IZ. V:106 H:125 F: 5

*/

.BANK $01 SLOT 0
.ORG $9817

.SECTION "Load 4-line battle dialogue" OVERWRITE

.ACCU 8

	lda	#bankbyte(kBattleDialogue)

.ENDS



; LOAD 1-LINE BATTLE DIALOGUE (MONSTER DIALOGUE)
; --------------------------------------------------------------------------------------------------

/*

c19835 lda #$cf                A:0000 X:7fff Y:5440 S:15e5 D:0000 DB:7e ..M..IZ. V:113 H:329 F:39 ; load bank
c19837 sta $88d9      [7e88d9] A:00cf X:7fff Y:5440 S:15e5 D:0000 DB:7e N.M..I.. V:113 H:332 F:39
c1983a ldy #$0001              A:00cf X:7fff Y:5440 S:15e5 D:0000 DB:7e N.M..I.. V:113 H:339 F:39
c1983d rep #$20                A:00cf X:7fff Y:0001 S:15e5 D:0000 DB:7e ..M..I.. V:114 H:  3 F:39
c1983f lda ($76),y    [7e2d6f] A:00cf X:7fff Y:0001 S:15e5 D:0000 DB:7e .....I.. V:114 H:  8 F:39
c19841 asl                     A:0005 X:7fff Y:0001 S:15e5 D:0000 DB:7e .....I.. V:114 H: 20 F:39
c19842 tax                     A:000a X:7fff Y:0001 S:15e5 D:0000 DB:7e .....I.. V:114 H: 23 F:39
c19843 lda $cfdfe0,x  [cfdfea] A:000a X:000a Y:0001 S:15e5 D:0000 DB:7e .....I.. V:114 H: 26 F:39 ; load pointer
c19847 sta $88d7      [7e88d7] A:e28f X:000a Y:0001 S:15e5 D:0000 DB:7e N....I.. V:114 H: 35 F:39
c1984a tdc                     A:e28f X:000a Y:0001 S:15e5 D:0000 DB:7e N....I.. V:114 H: 44 F:39
c1984b sep #$20                A:0000 X:000a Y:0001 S:15e5 D:0000 DB:7e .....IZ. V:114 H: 47 F:39
c1984d stz $62ac      [7e62ac] A:0000 X:000a Y:0001 S:15e5 D:0000 DB:7e ..M..IZ. V:114 H: 51 F:39
c19850 bra $9877      [c19877] A:0000 X:000a Y:0001 S:15e5 D:0000 DB:7e ..M..IZ. V:114 H: 58 F:39

*/

.BANK $01 SLOT 0
.ORG $9835

.SECTION "Load 1-line battle dialogue" OVERWRITE

.ACCU 8

	lda	#bankbyte(kMonsterDialogue)

.ENDS



; LOAD 1-LINE ATTACK MESSAGES
; --------------------------------------------------------------------------------------------------

/*

c1985e jsr $98fb      [c198fb] A:0000 X:7fff Y:5440 S:15e6 D:0000 DB:7e ..M..IZ. V:120 H:198 F:43
c198fb lda #$d1                A:0000 X:7fff Y:5440 S:15e4 D:0000 DB:7e ..M..IZ. V:120 H:208 F:43 ; load bank
c198fd sta $88d9      [7e88d9] A:00d1 X:7fff Y:5440 S:15e4 D:0000 DB:7e N.M..I.. V:120 H:211 F:43
c19900 ldy #$0001              A:00d1 X:7fff Y:5440 S:15e4 D:0000 DB:7e N.M..I.. V:120 H:218 F:43
c19903 lda ($76),y    [7e2d6f] A:00d1 X:7fff Y:0001 S:15e4 D:0000 DB:7e ..M..I.. V:120 H:222 F:43
c19905 rep #$20                A:0022 X:7fff Y:0001 S:15e4 D:0000 DB:7e ..M..I.. V:120 H:233 F:43
c19907 asl                     A:0022 X:7fff Y:0001 S:15e4 D:0000 DB:7e .....I.. V:120 H:237 F:43
c19908 tax                     A:0044 X:7fff Y:0001 S:15e4 D:0000 DB:7e .....I.. V:120 H:240 F:43
c19909 lda $d1f7a0,x  [d1f7e4] A:0044 X:0044 Y:0001 S:15e4 D:0000 DB:7e .....I.. V:120 H:243 F:43 ; load pointer
c1990d sta $88d7      [7e88d7] A:4a70 X:0044 Y:0001 S:15e4 D:0000 DB:7e .....I.. V:120 H:252 F:43
c19910 tdc                     A:4a70 X:0044 Y:0001 S:15e4 D:0000 DB:7e .....I.. V:120 H:261 F:43
c19911 sep #$20                A:0000 X:0044 Y:0001 S:15e4 D:0000 DB:7e .....IZ. V:120 H:264 F:43
c19913 rts                     A:0000 X:0044 Y:0001 S:15e4 D:0000 DB:7e ..M..IZ. V:120 H:268 F:43

*/

.BANK $01 SLOT 0
.ORG $98FB

.SECTION "Load 1-line attack messages" OVERWRITE

.ACCU 8

	lda	#bankbyte(kAttackMessages)

.ENDS



; LOAD DECOMPRESSED CINEMATICS
; --------------------------------------------------------------------------------------------------

/*

c0b969 jsr $0374      [c00374] A:0000 X:0100 Y:0000 S:15fd D:0000 DB:00 .VM...ZC V: 28 H:114 F:48
c0b96c jsl $c26803    [c26803] A:0000 X:0100 Y:0000 S:15fd D:0000 DB:00 .VM..IZC V: 28 H:177 F:48
c26803 jmp $680c      [c2680c] A:0000 X:0100 Y:0000 S:15fa D:0000 DB:00 .VM..IZC V: 28 H:190 F:48
c2680c jsr $6828      [c26828] A:0000 X:0100 Y:0000 S:15fa D:0000 DB:00 .VM..IZC V: 28 H:195 F:48 ; set up decompression parameters
c26828 php                     A:0000 X:0100 Y:0000 S:15f8 D:0000 DB:00 .VM..IZC V: 28 H:205 F:48 ; here we go (literally)
c26829 rep #$30                A:0000 X:0100 Y:0000 S:15f7 D:0000 DB:00 .VM..IZC V: 28 H:210 F:48
c2682b pha                     A:0000 X:0100 Y:0000 S:15f7 D:0000 DB:00 .V...IZC V: 28 H:214 F:48
c2682c phx                     A:0000 X:0100 Y:0000 S:15f5 D:0000 DB:00 .V...IZC V: 28 H:221 F:48
c2682d phy                     A:0000 X:0100 Y:0000 S:15f3 D:0000 DB:00 .V...IZC V: 28 H:228 F:48
c2682e phb                     A:0000 X:0100 Y:0000 S:15f1 D:0000 DB:00 .V...IZC V: 28 H:235 F:48
c2682f phd                     A:0000 X:0100 Y:0000 S:15f0 D:0000 DB:00 .V...IZC V: 28 H:240 F:48
c26830 rep #$10                A:0000 X:0100 Y:0000 S:15ee D:0000 DB:00 .V...IZC V: 28 H:247 F:48
c26832 sep #$20                A:0000 X:0100 Y:0000 S:15ee D:0000 DB:00 .V...IZC V: 28 H:252 F:48
c26834 lda #$00                A:0000 X:0100 Y:0000 S:15ee D:0000 DB:00 .VM..IZC V: 28 H:256 F:48
c26836 pha                     A:0000 X:0100 Y:0000 S:15ee D:0000 DB:00 .VM..IZC V: 28 H:259 F:48
c26837 plb                     A:0000 X:0100 Y:0000 S:15ed D:0000 DB:00 .VM..IZC V: 28 H:264 F:48
c26838 ldx #$0000              A:0000 X:0100 Y:0000 S:15ee D:0000 DB:00 .VM..IZC V: 28 H:271 F:48
c2683b phx                     A:0000 X:0000 Y:0000 S:15ee D:0000 DB:00 .VM..IZC V: 28 H:275 F:48
c2683c pld                     A:0000 X:0000 Y:0000 S:15ec D:0000 DB:00 .VM..IZC V: 28 H:282 F:48
c2683d ldx #$0000              A:0000 X:0000 Y:0000 S:15ee D:0000 DB:00 .VM..IZC V: 28 H:291 F:48
c26840 stx $00        [000000] A:0000 X:0000 Y:0000 S:15ee D:0000 DB:00 .VM..IZC V: 28 H:295 F:48
c26842 lda #$7e                A:0000 X:0000 Y:0000 S:15ee D:0000 DB:00 .VM..IZC V: 28 H:302 F:48
c26844 sta $2183      [002183] A:007e X:0000 Y:0000 S:15ee D:0000 DB:00 .VM..I.C V: 28 H:305 F:48
c26847 ldy #$686c              A:007e X:0000 Y:0000 S:15ee D:0000 DB:00 .VM..I.C V: 28 H:311 F:48
c2684a sty $f3        [0000f3] A:007e X:0000 Y:686c S:15ee D:0000 DB:00 .VM..I.C V: 28 H:316 F:48
c2684c lda #$c2                A:007e X:0000 Y:686c S:15ee D:0000 DB:00 .VM..I.C V: 28 H:323 F:48
c2684e sta $f5        [0000f5] A:00c2 X:0000 Y:686c S:15ee D:0000 DB:00 NVM..I.C V: 28 H:325 F:48
c26850 ldy #$5000              A:00c2 X:0000 Y:686c S:15ee D:0000 DB:00 NVM..I.C V: 28 H:330 F:48
c26853 sty $f6        [0000f6] A:00c2 X:0000 Y:5000 S:15ee D:0000 DB:00 .VM..I.C V: 28 H:334 F:48
c26855 lda #$7e                A:00c2 X:0000 Y:5000 S:15ee D:0000 DB:00 .VM..I.C V: 29 H:  1 F:48
c26857 sta $f8        [0000f8] A:007e X:0000 Y:5000 S:15ee D:0000 DB:00 .VM..I.C V: 29 H:  4 F:48
c26859 phb                     A:007e X:0000 Y:5000 S:15ee D:0000 DB:00 .VM..I.C V: 29 H:  9 F:48
c2685a lda #$7e                A:007e X:0000 Y:5000 S:15ed D:0000 DB:00 .VM..I.C V: 29 H: 14 F:48
c2685c pha                     A:007e X:0000 Y:5000 S:15ed D:0000 DB:00 .VM..I.C V: 29 H: 17 F:48
c2685d plb                     A:007e X:0000 Y:5000 S:15ec D:0000 DB:00 .VM..I.C V: 29 H: 22 F:48
c2685e jsl $c2ff6d    [c2ff6d] A:007e X:0000 Y:5000 S:15ed D:0000 DB:7e .VM..I.C V: 29 H: 29 F:48
; (actual LZ77 decompression routine omitted here)
c26862 plb                     A:0000 X:fc4e Y:21ee S:15ed D:0000 DB:7e ..M..I.C V:101 H:225 F:58
c26863 rep #$30                A:0000 X:fc4e Y:21ee S:15ee D:0000 DB:00 ..M..IZC V:101 H:231 F:58
c26865 pld                     A:0000 X:fc4e Y:21ee S:15ee D:0000 DB:00 .....IZC V:101 H:236 F:58
c26866 plb                     A:0000 X:fc4e Y:21ee S:15f0 D:0000 DB:00 .....IZC V:101 H:244 F:58
c26867 ply                     A:0000 X:fc4e Y:21ee S:15f1 D:0000 DB:00 .....IZC V:101 H:251 F:58
c26868 plx                     A:0000 X:fc4e Y:0000 S:15f3 D:0000 DB:00 .....IZC V:101 H:259 F:58
c26869 pla                     A:0000 X:0100 Y:0000 S:15f5 D:0000 DB:00 .....I.C V:101 H:268 F:58
c2686a plp                     A:0000 X:0100 Y:0000 S:15f7 D:0000 DB:00 .....IZC V:101 H:276 F:58
c2686b rts                     A:0000 X:0100 Y:0000 S:15f8 D:0000 DB:00 .VM..IZC V:101 H:283 F:58
c2680f jml $7e5000    [7e5000] A:0000 X:0100 Y:0000 S:15fa D:0000 DB:00 .VM..IZC V:101 H:293 F:58

*/

.IFDEF UseDecompressedCinematics

.BANK $02 SLOT 0
.ORG $6828								; replace original routine in cinematic loader (called multiple times during the course of the game)

.SECTION "DMA decompressed cinematics" OVERWRITE

.ACCU 8
.INDEX 16

; The following routine is 1 byte smaller than the original decompression setup routine.
; We do perform a safety check, but that must happen after the routine itself or else .IF will
; complain about wrong data supplied (see below).

DecompCinematicsDMA:
	php
	rep	#$30
	pha								; preserve registers (cf. original routine)
	phx
	phy
	phb
	phd
;	rep	#$10							; unnecessary even in original routine
	sep	#$20
	lda	#$00							; data bank = $00
	pha
	plb
	ldx	#$0000							; DP = $0000
	phx
	pld

; NMI/IRQ/DMA/HDMA is disabled at this point, so it should be safe to perform our own DMA

	ldx	#$5000							; set WRAM port address to $7E5000
	stx	$2181
	stz	$2183
	stz	$4300							; DMA 1 byte at a time, direction: A:CPU --> B:I/O, increment A bus address
	lda	#$80							; B bus address: WRAM port ($2180)
	sta	$4301
	ldx	#loword(Decompressed_C2686C)				; source data
	stx	$4302
	lda	#bankbyte(Decompressed_C2686C)
	sta	$4304
	ldx	#_sizeof_Decompressed_C2686C
	stx	$4305
	lda	#$01
	sta	$420B

	rep	#$30
	pld								; restore registers (cf. original routine)
	plb
	ply
	plx
	pla
	plp
	rts

DecompCinematicsDMA_END:

.IF DecompCinematicsDMA_END - DecompCinematicsDMA > 68			; check for routine size (68 bytes max.), _sizeof_ won't work in this case

.FAIL "Routine 'DecompCinematicsDMA' is too large."

.ENDIF ; (routine size check)

.ENDS

.ENDIF ; UseDecompressedCinematics



; NEW COMPRESSED CINEMATICS
; --------------------------------------------------------------------------------------------------

.IFNDEF UseDecompressedCinematics

.BANK $02 SLOT 0
.ORG $686C

.SECTION "C2686C compressed cinematics" OVERWRITE

	.INCBIN "intro_credits/C2686C_compressed.bin"			; max. $2204 = 8,708 bytes / uses $21F4 = 8,692 bytes in original game followed by 16 filler bytes ($FF)

.ENDS

.ENDIF ; (NOT) UseDecompressedCinematics



; FF6 TITLE SCREEN GRAPHICS
; --------------------------------------------------------------------------------------------------

; From rom-map.txt:
; D8F000-D94E95   Title/Intro Graphics (compressed)

.IFDEF UseFF6TitleScreen

.FOPEN FF6JapROM FF6JapROMFile

.REDEFINE Offset $18F000
.REDEFINE Size $1000

.BANK $18 SLOT 0
.ORG $F000

.SECTION "FF6 title screen gfx 1" OVERWRITE

.FSEEK FF6JapROMFile Offset START

.REPEAT Size

	.FREAD FF6JapROMFile Byte
	.DB Byte

.ENDR

.ENDS



.REDEFINE Offset $190000
.REDEFINE Size $4E96

.BANK $19 SLOT 0
.ORG $0000

.SECTION "FF6 title screen gfx 2" OVERWRITE

.FSEEK FF6JapROMFile Offset START

.REPEAT Size

	.FREAD FF6JapROMFile Byte
	.DB Byte

.ENDR

.ENDS

.FCLOSE FF6JapROMFile

.UNDEFINE Offset, Size, Byte

.ENDIF ; UseFF6TitleScreen



; IN-ROM ASCII DISCLAIMER
; --------------------------------------------------------------------------------------------------

.BANK bankbyte(kASCIIDisclaimer) & $3F SLOT 0
.ORG loword(kASCIIDisclaimer)

.SECTION "Disclaimer" FORCE

	.DB "Final Fantasy III (US) German fan translation v1.50 by Ramsis/ManuLoewe, (c) "
	.DB "2002/2025. Assembled ", WLA_TIME, ". This patch is freeware. It is provided "
	.DB "\"as is\" and without express or implied warranty of any kind. Ramsis/ManuLoewe will "
	.DB "not be held liable or responsible for any losses, damages, injuries, and/or legal "
	.DB "consequences due to the use, misuse and/or illegal use of this translation patch."

.ENDS



; NEW DECOMPRESSED CINEMATICS
; --------------------------------------------------------------------------------------------------

.IFDEF UseDecompressedCinematics

.BANK bankbyte(kDecompressedCinematics) & $3F SLOT 0
.ORG loword(kDecompressedCinematics)

.SECTION "Final_Fantasy_VI_7E5000_from_C2686C decompressed" SEMIFREE

Decompressed_C2686C:
	.INCBIN "intro_credits/Final_Fantasy_VI_7E5000_from_C2686C.sfc"	; max. $2C62 = 11,362 bytes according to Final_Fantasy_VI_7E5000_from_C2686C.asm

Decompressed_C2686C_END:

.ENDS

.ENDIF ; UseDecompressedCinematics
