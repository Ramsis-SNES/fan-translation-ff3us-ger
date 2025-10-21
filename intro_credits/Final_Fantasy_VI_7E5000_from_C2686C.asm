; Fully reassembleable, relocatable code for Final Fantasy 3 (a.k.a. the North American SNES release of the Japanese Final Fantasy VI). This section of code is identical in both the 1.0 and 1.1 ROM versions and differs slightly from the Japanese release.
; $7e5000 - $7e7c62 is decompressed from $c2686c - $c28a60 and used by 4 different cinematics: the title screen, the opening credits, the floating island rising into the sky, and the world tearing apart.
; At time of writing, commentary on the code can be found at http://datacrystal.romhacking.net/wiki/Final_Fantasy_VI:7E5000_from_C2686C.
;
; abw, 2015-10-17

; Some labels/comments and Japanese intro code snippets taken from https://github.com/everything8215/ff6/blob/main/src/cutscene/cutscene.asm, opening.asm and title.asm by Ramsis
; CHECKME: Is the uncompressed chunk too big for the RAM slot mentioned above (>$2C62)? (If so, possibly remove unused 7e57d7 bytes ...)
; TODO: Maybe tell abw about incorrectly/inadvertently hardcoded stuff (data_7e5746), code cleanup & proper label replacement ...

; This code is intended to be assembled first and then compressed before being inserted into a ROM, so we'll instruct the assembler to start writing at the start of the file but pretend that the code is located at $7e5000. As such, you'll generally want to truncate the output file before assembly.
norom
org $0
base $7e5000
;!LANG_EN = "1"								; added in by Ramsis for Japanese intro (activate to get the original FF3 US intro) // TODO: Add new definition for having the Japanese intro along with translator credits in the final product)

; Text in the opening credits comes in 8x8 and 16x8 fonts but is uppercase in both variants; this code and the included table file use lowercase for the 8x8 font and uppercase for the 16x8 font.
;table FF3OpeningCredits.tbl,rtl

; YARC (Yet Another Ramsis Change): Instead of a separate table file, we include the table here (this is the newer method used by Asar v2.0 and also avoids a warning message in earlier versions)
' ' = $01
'A' = $02
'B' = $03
'C' = $04
'D' = $05
'E' = $06
'F' = $07
'G' = $08
'H' = $09
'I' = $0A
'J' = $0B
'K' = $0C
'L' = $0D
'M' = $0E
'N' = $0F
'O' = $10
'P' = $11
'Q' = $12
'R' = $13
'S' = $14
'T' = $15
'U' = $16
'V' = $17
'W' = $18
'X' = $19
'Y' = $1A
'Z' = $1B
;'?' = $1C
'a' = $1D
'b' = $1E
'c' = $1F
'd' = $20
'e' = $21
'f' = $22
'g' = $23
'h' = $24
'i' = $25
'j' = $26
'k' = $27
'l' = $28
'm' = $29
'n' = $2A
'o' = $2B
'p' = $2C
'q' = $2D
'r' = $2E
's' = $2F
't' = $30
'u' = $31
'v' = $32
'w' = $33
'x' = $34
'y' = $35
'z' = $36

sub_7e5000: {
	jmp sub_7e500c	; TitleMain
}

sub_7e5003: {
	jmp sub_7e57f3	; OpeningMain
}

sub_7e5006: {
	jmp sub_7e69c4	; FloatingContMain
}

sub_7e5009: {
	jmp sub_7e6cf2	; WorldOfRuinMain
}

sub_7e500c: {
	php
	rep #$30
	pha
	phx
	phy
	phb
	phd
	jsr sub_7e502f	; InitCutscene
	jsr sub_7e507f	; InitTitle
if defined("LANG_EN")
	jsr sub_7e50f7  ; SplashLoop
endif
	jsr sub_7e50a8  ; TitleLoop
	jsr sub_7e5043	; SoundOff
	jsr sub_7e504e	; DisableInterrupts
	rep #$30
	pld
	plb
	ply
	plx
	pla
	plp
	rtl
}

sub_7e502f: {
	sep #$20
	lda #$7e
	pha
	plb
	ldx #$0000
	phx
	pld
	ldx #$0000	
	stx $00
	jsr sub_7e5062	
	rts
}

sub_7e5043: {
	lda #$f0
	sta $001300	
	jsl $c50004
	rts
}

sub_7e504e: {
	lda #$8f
	sta $002100	
	tdc
	sta $004200	
	sta $00420b	
	sta $00420c	
	rts
}

sub_7e5062: {
	lda #$5c	
	sta $1500	
	sta $1504	
	ldx #sub_7e7233	
	stx $1501
	ldx #sub_7e7264	
	stx $1505
	lda #$7e
	sta $1503
	sta $1507
	rts
}

sub_7e507f: {
	jsr sub_7e7711	
	tdc
	jsr sub_7e5093	
	jsr sub_7e7815	
	jsr sub_7e784f	
	jsr sub_7e7485	
	jsr sub_7e78fa
	rts
}

sub_7e5093: {
	sta $001302	
	lda #$10
	sta $001300	
	lda #$02
	sta $001301	
	jsl $c50004
	rts
}

sub_7e50a8: {
label_7e50a8:
	tdc
	lda $19	
	bmi label_7e50c5	
	asl a	
	tax
	jsr (jump_table_7e50df,x) ; TitleStateTbl
	lda $06	
	bit #$80	
	bne label_7e50c0	
	jsr sub_7e750f	
	jsr sub_7e71fd	
	bra label_7e50a8
label_7e50c0:
	lda #$ff
	sta $0200
label_7e50c5:
	ldy #$000f
	sty $15
	lda #$00
	ldy #sub_7e55a0
	jsr sub_7e74dc	; CreateTask
label_7e50d2:
	ldy $15
	beq label_7e50de
	jsr sub_7e750f	; ExecTasks
	jsr sub_7e71fd	; WaitVBlank
	bra label_7e50d2
label_7e50de:
	rts
}

jump_table_7e50df: {
	dw sub_7e51ae ;TitleState_00...0b
	dw sub_7e5280
	dw sub_7e5297
	dw sub_7e52a6
	dw sub_7e52e0
	dw sub_7e52ec
	dw sub_7e533f
	dw sub_7e5377
	dw sub_7e538a
	dw sub_7e539c
	dw sub_7e53b5
	dw sub_7e53bc
}

if defined("LANG_EN")

; [ splash screen main loop ]

sub_7e50f7: {
label_7e50f7:
	tdc
	lda $19	
	bmi label_7e5109	
	asl a	
	tax
	jsr (jump_table_7e5131,x)
	jsr sub_7e750f	
	jsr sub_7e71fd	
	bra label_7e50f7
label_7e5109:
	ldy #$000f
	sty $15
	lda #$00
	ldy #sub_7e55a0
	jsr sub_7e74dc	
label_7e5116:
	ldy $15
	beq label_7e5122
	jsr sub_7e750f	; ExecTasks
	jsr sub_7e71fd	; WaitVBlank
	bra label_7e5116
label_7e5122:
	tdc
	tay
	sta $19	
	sty $25
	sty $27
	jsr sub_7e7485	; ResetTasks
	jsr sub_7e504e	; DisableInterrupts
	rts
}

; splash screen jump table
jump_table_7e5131: {
	dw sub_7e5155 ; SplashState_00
	dw sub_7e51a5 ; SplashState_01

; splash screen color palettes
data_7e5135: {
	dw $0000
	dw $1063
	dw $77BD
	dw $0000
	dw $7FFF
	dw $7FFF
	dw $7FFF
	dw $7FFF
	dw $7FFF
	dw $7FFF
	dw $7FFF
	dw $7FFF
	dw $7FFF
	dw $7FFF
	dw $7FFF
	dw $7FFF
}

; [ splash screen $00: init ]

sub_7e5155: {
	jsr sub_7e5306
	ldx #$3000
	ldy #data_7e7465
	jsr sub_7e7324	; LoadPal
	ldx #$3020
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3120
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3120
	ldy #data_7e7b43
	lda #$01
	jsr sub_7e733a	
	ldx #$3000
	ldy #data_7e7445
	lda #$01
	jsr sub_7e733a	
	ldx #$3020
	ldy #data_7e5135
	lda #$01
	jsr sub_7e733a	
	ldy #$0100
	sty $25
	ldy #$012c
	sty $15
	inc $19	
	lda #$0f
	sta $32	
	rts
}

; [ splash screen $01: wait ]

sub_7e51a5: {
	ldy $15
	bne label_7e51ad
	lda #$ff
	sta $19	
label_7e51ad:
	rts
}

endif

sub_7e51ae: {
if not(defined("LANG_EN"))
        ldx     #$3100
        ldy     #$73D1
        jsr     sub_7e7324	; LoadPal
endif
	ldx #$3120
	ldy #data_7e7b63
	jsr sub_7e7324	
	ldx #$3140
	ldy #data_7e7b43
	jsr sub_7e7324	
	ldx #$3000
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3020
	ldy #data_7e7bc3
	jsr sub_7e7324	
	ldx #$30c0
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3040
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3060
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$30e0
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$30a0
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$30c0
	ldy #data_7e7c03
	lda #$04
	jsr sub_7e733a	
	ldx #$3040
	ldy #data_7e7c23
	lda #$04
	jsr sub_7e733a	
	ldx #$3060
	ldy #data_7e7c23
	lda #$04
	jsr sub_7e733a	
	ldx #$30e0
	ldy #data_7e7c43
	lda #$04
	jsr sub_7e733a	
	ldx #$30a0
	ldy #data_7e7be3
	lda #$04
	jsr sub_7e733a	
	lda #$01
	ldy #sub_7e5539
	jsr sub_7e74dc	
	ldy #$003c
	sty $15
	inc $19	
	lda #$0f
	sta $32	
	lda #$01
	ldy #sub_7e55c8
	jsr sub_7e74dc	
	rep #$20
	lda #$3040
	sta $3701,x
	sep #$20
	lda #$01
	ldy #sub_7e55c8
	jsr sub_7e74dc	
	rep #$20
	lda #$3060
	sta $3701,x
	sep #$20
	lda #$01
	ldy #sub_7e55c8
	jsr sub_7e74dc	
	rep #$20
	lda #$30c0
	sta $3701,x
	sep #$20
	rts
}

sub_7e5280: {
	ldy $15
	bne label_7e5296
	inc $19	
	ldy #$0443
	sty $15
	lda #$ff
	sta $001305
	lda #$ff
	jsr sub_7e5093	
label_7e5296:
	rts
}

sub_7e5297: {
	ldy $15
	bne label_7e52a5
	jsr sub_7e7897
if not(defined("LANG_EN"))
        lda     #0
        ldy     #_7e5323
        jsr     sub_7e74dc	; CreateTask
endif
	ldy #$001e
	sty $15
	inc $19	
label_7e52a5:
	rts
}

sub_7e52a6: {
	ldy $15
	bne label_7e52df
	lda #$00
	ldy #sub_7e53c5
	jsr sub_7e74dc	
	lda #$00
	ldy #sub_7e5431
	jsr sub_7e74dc	
	lda #$00
	ldy #sub_7e54af
	jsr sub_7e74dc	
	ldx #$3000
	ldy #data_7e7b83
	lda #$02
	jsr sub_7e733a	
	ldx #$3020
	ldy #data_7e7ba3
	lda #$01
	jsr sub_7e733a	
	ldy #$014a
	sty $15
	inc $19	
label_7e52df:
	rts
}

sub_7e52e0: {
	ldy $15
	bne label_7e52eb
	inc $19	
	ldy #$00f0
	sty $15
if not(defined("LANG_EN"))
        lda     #0
        ldy     #sub_7e76db ; DefaultAnimTask
        jsr     sub_7e74dc	; CreateTask
        rep #$20 ;longa
        lda     #$79f6
        sta     $3500,x
        sep #$20 ;shorta
        lda     #$38
        sta     $3301,x
        lda     #$1f
        sta     $3401,x
        ldx     #$3100
        ldy     #s7ae5 ; #$7ae5
        lda     #$08
        jsr     sub_7e733a	; CreateFadePalTask
endif
label_7e52eb:
	rts
}

sub_7e52ec: {
	ldy $15
	bne label_7e5305
	inc $19	
	ldy #$03c0
	sty $15
if defined("LANG_EN")
	jsr sub_7e5306
else
        lda     #0
        ldy     #sub_7e76db ; DefaultAnimTask
        jsr     sub_7e74dc	; CreateTask
        rep #$20 ;longa
        lda     #$79f9
        sta     $3500,x
        sep #$20 ;shorta
        lda     #$48
        sta     $3301,x
        lda     #$a8
        sta     $3401,x
endif
	ldx #$3120
	ldy #data_7e7b43
	lda #$04
	jsr sub_7e733a	; CreateFadePalTask
label_7e5305:
	rts
}

if defined("LANG_EN")

sub_7e5306: {
	lda #$00
	ldy #sub_7e76db ; DefaultAnimTask
	jsr sub_7e74dc	
	rep #$20
	lda #data_7e7a5c ; TitleTextAnim1
	sta $3500,x
	sep #$20
	lda #$40
	sta $3301,x
	lda #$a0
	sta $3401,x
	lda #$00
	ldy #sub_7e76db ; DefaultAnimTask
	jsr sub_7e74dc	
	rep #$20
	lda #data_7e7a5f ; TitleTextAnim2
	sta $3500,x
	sep #$20
	lda #$90
	sta $3301,x
	lda #$a0
	sta $3401,x
	rts
}

endif

sub_7e533f: {
	ldy $15
	bne label_7e5376
	inc $19	
	ldy #$0100
	sty $15
	ldx #$3100
	ldy #data_7e7b63
	lda #$02
	jsr sub_7e733a	; CreateFadePalTask
	ldx #$3120
	ldy #data_7e7b63
	lda #$04
	jsr sub_7e733a	
	ldx #$3000
	ldy #data_7e7b63
	lda #$08
	jsr sub_7e733a	
	ldx #$3020
	ldy #data_7e7b63
	lda #$08
	jsr sub_7e733a	
label_7e5376:
	rts
}

sub_7e5377: {
	ldy $15
	bne label_7e5389
	lda #$40
	tsb $33
	inc $19	
	ldy #$0001
	sty $15
	jsr sub_7e5cbd	
label_7e5389:
	rts
}

sub_7e538a: {
	ldy $15
	bne label_7e539b
	inc $19	
	stz $31	
	lda #$80
	sta $33
	ldy #$03a0
	sty $15
label_7e539b:
	rts
}

sub_7e539c: {
	ldy $15
	bne label_7e53a8
	ldy #$01e0
	sty $15
	inc $19	
	rts
label_7e53a8:
	lda $18	
	and #$03
	bne label_7e53b4
	rep #$20
	inc $27
	sep #$20
label_7e53b4:
	rts
}

sub_7e53b5: {
	ldy $15
	bne label_7e53bb
	inc $19	
label_7e53bb:
	rts
}

sub_7e53bc: {
	lda #$ff
	sta $19	
	tdc
	sta $0200
	rts
}

; ------------------------------------------------------------------------------

if not(defined("LANG_EN"))

_7e5323:
s5323:  tax
        jmp     (s5327,x)

s5327:  dw   s532b,s535d

s532b:  ldx     $1d
        inc     $3a00,x
        rep #$20 ;longa
        tdc ; clr_ax macro
        tax ; clr_ax macro
s5334:  lda     $7f8ca0,x
        adc     #$0780
        sta     $4780,x
        inx
        inx
        cpx     #$0040
        bne     s5334
        ldx     $1d
        lda     #$0002
        sta     $3900,x
        sep #$20 ;shorta
        ldy     #$05a0
        sty     $10
        lda     #$7e
        sta     $14
        ldy     #$4780
        sty     $12

s535d:  ldx     $1d
        rep #$20 ;longa
        lda     $3900,x
        cmp     #$0040
        beq     s5375
        sta     $0e
        inc     $3900,x
        inc     $3900,x
        sep #$20 ;shorta
        sec
        rts
s5375:  sep #$20 ;shorta
        clc
        rts

endif

; ------------------------------------------------------------------------------

sub_7e53c5: {
	tax
	jmp (jump_table_7e53c9,x)
}

jump_table_7e53c9: {
	dw sub_7e53cd
	dw sub_7e53d5
}

sub_7e53cd: {
	ldx $1d
	inc $3a00,x
	stz $3701,x
sub_7e53d5:
	lda $33
	bmi label_7e542f
	ldx $1d
	tdc
	tay
	stz $3801,x
label_7e53e0:
	ldx $1d
	lda $3701,x
	clc
	adc $3801,x
	jsr sub_7e54a5
	pha
label_7e53ed:
	lda $004212	
	and #$40
	beq label_7e53ed	
	lda #$08
	sta $00211b	
	tdc
	sta $00211b	
	pla
	sta $00211c	
	sta $00211c	
	ldx $1d
	rep #$20
	lda $002135	
	sta $4180,y
	sep #$20
	ldx $1d
	lda $3801,x
	clc
	adc #$04
	sta $3801,x
	iny
	iny
	iny
	iny
	cpy #$00c0
	bne label_7e53e0
	inc $3701,x
	sec
	rts
label_7e542f:
	clc
	rts
}

sub_7e5431: {
	tax
	jmp (jump_table_7e5435,x)
}

jump_table_7e5435: {
	dw sub_7e5439
	dw sub_7e5441
}

sub_7e5439: {
	ldx $1d
	inc $3a00,x
	stz $3900,x
sub_7e5441:
	lda $33
	bmi label_7e54a0
	ldx $1d
	tdc
	tay
	lda #$10
	sta $3801,x
label_7e544e:
	ldx $1d
	lda $3701,x
	clc
	adc $3801,x
	jsr sub_7e54a5
	pha
label_7e545b:
	lda $004212	
	and #$40
	beq label_7e545b	
	lda #$0a
	sta $00211b	
	tdc
	sta $00211b	
	pla
	sta $00211c	
	sta $00211c	
	ldx $1d
	rep #$20
	lda $002135	
	sta $4500,y
	sta $4502,y
	sep #$20
	ldx $1d
	lda $3801,x
	clc
	adc #$04
	sta $3801,x
	iny
	iny
	iny
	iny
	cpy #$00c0
	bne label_7e544e
	inc $3701,x
	sec
	rts
label_7e54a0:
	clc
	rts
}

	clc
	adc #$40

sub_7e54a5: {
	xba
	lda $00
	xba
	tax
	lda $c2fe6d,x
	rts
}

sub_7e54af: {
	tax
	jmp (jump_table_7e54b3,x)
}

jump_table_7e54b3: {
	dw sub_7e54b7
	dw sub_7e54c1
}

sub_7e54b7: {
	ldx $1d
	inc $3a00,x
	lda #$01
	sta $3900,x
sub_7e54c1:
	lda $18	
	and #$01
	beq label_7e54d6
	ldx $1d
	lda $3900,x
if defined("LANG_EN")
	cmp #$40
else
        cmp     #$2a
endif
	beq label_7e54d8
	jsr sub_7e54da
	inc $3900,x
label_7e54d6:
	sec
	rts
label_7e54d8:
	clc
	rts
}

sub_7e54da: {
if defined("LANG_EN")
	lda #$40
else
        lda     #$2a
endif
	sta $004205	
	tdc
	sta $004204	
	lda $3900,x
	sta $004206	
	nop	
	nop
	nop
	nop
	nop
	stz $f2
if defined("LANG_EN")
	ldy #$00fc
else
        ldy     #$00a0
endif
	stz $e2
	stz $e9
	stz $ea
	lda $004215	
	sta $e8
	lda $004214	
	sta $e7
label_7e5508:
	lda $3900,x
	cmp $e2
	bcc label_7e5511
	bra label_7e5518
label_7e5511:
	rep #$20
	lda #$0100
	bra label_7e5524
label_7e5518:
	tdc
	lda $ea
	sec
	sbc $e2
	rep #$20
	eor #$ffff
	inc a
label_7e5524:
	sta $3dfa,y
	lda $e7
	clc
	adc $e9
	sta $e9
	sep #$20
	inc $e2
	dey
	dey
	dey
	dey
	bne label_7e5508
	rts
}

sub_7e5539: {
	tax
	jmp (jump_table_7e553d,x)
}

jump_table_7e553d: {
	dw sub_7e5541
	dw sub_7e5559
}

sub_7e5541: {
	ldy #$ffff
	sty $10	
	ldy #$0040
	sty $0e	
	lda #$7f
	sta $14	
	ldy #$0001
	sty $27
	ldx $1d
	inc $3a00,x
sub_7e5559:
	lda $18	
	and #$03
	bne label_7e5595
	rep #$20
	lda $27
	cmp #$011f
	beq label_7e5597
	cmp #$0100
	bcs label_7e5591
	and #$0007
	bne label_7e5591
	lda $27
	sec
	sbc #$0008
	and #$fff8
	asl a
	asl a
	asl a
	clc
	adc #$23c0
	sta $12	
	lda $27
	sec
	sbc #$0008
	and #$fff8
	asl a
	asl a
	sta $10	
label_7e5591:
	inc $27
	sep #$20
label_7e5595:
	sec
	rts
label_7e5597:
	sep #$20
	ldy #$ffff
	sty $10	
	clc
	rts
}

sub_7e55a0: {
	tax
	jmp (jump_table_7e55a4,x)
}

jump_table_7e55a4: {
	dw sub_7e55a8
	dw sub_7e55b2
}

sub_7e55a8: {
	ldx $1d	
	inc $3a00,x
	lda #$0f
	sta $3301,x
sub_7e55b2:
	ldy $15
	beq label_7e55c2
	ldx $1d	
	lda $3301,x
	sta $32	
	dec $3301,x
	sec
	rts
label_7e55c2:
	lda #$80
	sta $32	
	clc
	rts
}

sub_7e55c8: {
	tax
	jmp (jump_table_7e55cc,x)
}

jump_table_7e55cc: {
	dw sub_7e55d2
	dw sub_7e55eb
	dw sub_7e5620
}

sub_7e55d2: {
	ldx $1d
	inc $3a00,x
	lda #$80
	sta $3600,x
sub_7e55dc:
	rep #$20
	lda #data_7e563e
	sta $3500,x
	sep #$20
	jsr sub_7e755f	; InitAnimTask
	sec
	rts
}

sub_7e55eb: {
	ldx $1d
	lda $3600,x
	beq label_7e5609
	cmp #$01
	beq label_7e55fd
label_7e55f6:
	ldx $1d
	dec $3600,x
	sec
	rts
label_7e55fd:
	lda #$02
	ldy #sub_7e56f9
	jsr sub_7e74dc	
	inc $36
	bra label_7e55f6
label_7e5609:
	lda $3b01,x
	cmp #$fe
	bne label_7e5613
	inc $3a00,x
label_7e5613:
	rep #$20
	lda $3701,x
	tax
	sep #$20
	jsr sub_7e7575
	sec
	rts
}

sub_7e5620: {
	jsr sub_7e5630
	ldx $1d
	sta $3600,x
	lda #$01
	sta $3a00,x
	jmp sub_7e55dc
}

sub_7e5630: {
	tdc
	inc $34
	lda $18	
	clc
	adc $34
	tax
	lda $c0fd00,x
	rts
}

data_7e563e: {
	dw data_7e7c23 : db $01
	dw data_7e5659 : db $02
	dw data_7e56d9 : db $01
	dw data_7e5659 : db $02
	dw data_7e56d9 : db $01
	dw data_7e5679 : db $02
	dw data_7e5699 : db $03
	dw data_7e56b9 : db $04
	dw data_7e56d9 : db $fe
}

data_7e5659: {
	dw $1063
	dw $66de
	dw $565b
	dw $45b4
	dw $352e
	dw $3108
	dw $2ce8
	dw $28c7
	dw $24a6
	dw $1ca5
	dw $1884
	dw $1464
	dw $1063
	dw $21bb
	dw $1136
	dw $737f
}

data_7e5679: {
	dw $0000
	dw $5239
	dw $45d7
	dw $3951
	dw $2cec
	dw $2ce7
	dw $28c7
	dw $24a6
	dw $2085
	dw $1884
	dw $1484
	dw $1464
	dw $1063
	dw $21bb
	dw $1136
	dw $5a7b
}

data_7e5699: {
	dw $0000
	dw $3d94
	dw $3553
	dw $2cee
	dw $24aa
	dw $24a5
	dw $2085
	dw $1c64
	dw $1464
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $21bb
	dw $1136
	dw $45d6
}

data_7e56b9: {
	dw $0000
	dw $20aa
	dw $20a7
	dw $1c85
	dw $1843
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $21bb
	dw $1136
	dw $24cc
}

data_7e56d9: {
	dw $0000
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $21bb
	dw $1136
	dw $1063
}

sub_7e56f9: {
	tax
	jmp (jump_table_7e56fd,x)
}

jump_table_7e56fd: {
	dw sub_7e5701
	dw sub_7e5736
}

sub_7e5701: {
	ldx $1d
	inc $3a00,x
	jsr sub_7e5630
	and #$03
	beq label_7e5744
	asl a
	tax
	rep #$20
	lda data_7e5746,x
	ldx $1d
	sta $3500,x
	sep #$20
	sep #$20	
	phx
	jsr sub_7e5630
	plx
	sta $3301,x
	phx
	jsr sub_7e5630
	plx
	and #$7f
	adc #$10
	sta $3401,x
	ldx $1d
	jsr sub_7e755f	; InitAnimTask
sub_7e5736:
	ldx $1d
	lda $3b01,x
	cmp #$fe
	beq label_7e5744
	jsr sub_7e758d  ; UpdateAnimTask
	sec
	rts
label_7e5744:
	clc
	rts
}

data_7e5746: {								; Aaargh! Poor Ramsis, spending hours debugging the messed-up Japanese intro until finally discovering these ... effin' leftover hardcoded addresses!
	dw $0000
	dw data_7e574e ;$574e
	dw data_7e5766 ;$5766
	dw data_7e574e ;$574e
}

data_7e574e: {
	dw data_7e577f : db $01
	dw data_7e577e : db $01
	dw data_7e5784 : db $01
	dw data_7e577e : db $01
	dw data_7e5791 : db $01
	dw data_7e577e : db $01
	dw data_7e579e : db $01
	dw data_7e577e : db $fe
}

data_7e5766: {
	dw data_7e57ab : db $01
	dw data_7e577e : db $01
	dw data_7e57b0 : db $01
	dw data_7e577e : db $01
	dw data_7e57bd : db $01
	dw data_7e577e : db $01
	dw data_7e57ca : db $01
	dw data_7e577e : db $fe
}

data_7e577e: {
	db $00
}

data_7e577f: {
	db $01
	db $08,$00,$4c,$35
}

data_7e5784: {
	db $03
	db $00,$00,$4e,$35
	db $10,$00,$60,$35
	db $08,$10,$62,$35
}

data_7e5791: {
	db $03
	db $08,$00,$64,$35
	db $08,$10,$66,$35
	db $08,$20,$68,$35
}

data_7e579e: {
	db $03
	db $08,$00,$6a,$35
	db $08,$10,$6c,$35
	db $08,$20,$6e,$35
}

data_7e57ab: {
	db $01
	db $08,$00,$4c,$75
}

data_7e57b0: {
	db $03
	db $10,$00,$4e,$75
	db $08,$00,$60,$75
	db $08,$10,$62,$75
}

data_7e57bd: {
	db $03
	db $08,$00,$64,$75
	db $08,$10,$66,$75
	db $08,$20,$68,$75
}

data_7e57ca: {
	db $03
	db $08,$00,$6a,$75
	db $08,$10,$6c,$75
	db $08,$20,$6e,$75
}

;7e57d7 - probably unused data
	db $40
	db $a8
	db $40
	db $70
	db $b0
	db $48
	db $68
	db $a8
	db $70
	db $68
	db $60
	db $a8
	db $80
	db $d0
	db $88
	db $58
	db $90
	db $a8
	db $98
	db $88
	db $50
	db $58
	db $70
	db $60
	db $90
	db $60
	db $10
	db $78

sub_7e57f3: {
	php
	rep #$30
	pha
	phx
	phy
	phb
	phd
	jsr sub_7e502f	
	jsr sub_7e5813	
	jsr sub_7e5872	
	jsr sub_7e5043	
	jsr sub_7e504e	
	rep #$30
	pld
	plb
	ply
	plx
	pla
	plp
	rtl
}

sub_7e5813: {
	jsr sub_7e7711	
	jsr sub_7e583c	
	lda #$ff
	sta $001302	
	lda #$10
	sta $001300	
	lda #$04
	sta $001301	
	jsl $c50004
	jsr sub_7e7815	
	jsr sub_7e784f	
	jsr sub_7e7485	
	jsr sub_7e61ff	
	rts
}

sub_7e583c: {
	phb
	lda #$00
	pha
	plb
	lda #$03
	sta $2101	
	ldx $00
	stx $2102	
	lda #$07
	sta $2105	
	lda #$78
	sta $2107	
	lda #$7c
	sta $2108	
	lda #$74
	sta $2109	
	sta $210a	
	lda #$22
	sta $210b	
	lda #$77
	sta $210c	
	tdc
	sta $211a	
	plb
	rts
}

sub_7e5872: {
label_7e5872:
	tdc
	lda $19	
	bmi label_7e588f	
	asl a	
	tax
	jsr (jump_table_7e58ad,x)
	lda $06	
	bit #$80	
	bne label_7e588a	
	jsr sub_7e750f	
	jsr sub_7e71fd	
	bra label_7e5872
	
label_7e588a:
	lda #$ff
	sta $0200
	
label_7e588f:
	ldy #$000f
	sty $15
	lda #$00
	ldy #sub_7e55a0
	jsr sub_7e74dc	
label_7e589c:
	ldy $15
	beq label_7e58a8
	jsr sub_7e750f	
	jsr sub_7e71fd	
	bra label_7e589c
label_7e58a8:
	jsl $ee000c
	rts
}

jump_table_7e58ad: {
	dw sub_7e58b5
	dw sub_7e5a4c
	dw sub_7e5a66
	dw sub_7e5a70
}

sub_7e58b5: {
	jsr sub_7e5c70
	jsr sub_7e5b5d
	phb
	lda #$00
	pha
	plb
	jsl $ee0009
	jsl $ee0003
	plb
	jsr sub_7e5c45
	jsr sub_7e7485	
	ldx #$3100
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3120
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3160
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3180
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$31a0
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3000
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3020
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3040
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3060
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$30e0
	ldy #data_7e7465
	jsr sub_7e7324	
	lda #$68
	sta $39
	lda #$48
	sta $3a
	lda #$78
	sta $3b
	lda #$c0
	sta $3c
	lda #$80
	sta $3d
	lda #$90
	sta $3e
	stz $29	
	stz $2a
	ldy #$0038
	sty $2b	
	stz $37
	stz $38
	lda #$00
	ldy #sub_7e5fc0
	jsr sub_7e74dc	
	tdc
	jsr sub_7e5b08
	lda #$01
	jsr sub_7e5b08
	lda #$02
	jsr sub_7e5b08
	ldx #$3120
	ldy #data_7e6490
	lda #$01
	jsr sub_7e733a	
	ldx #$3160
	ldy #data_7e6490
	lda #$02
	jsr sub_7e733a	
	ldx #$3180
	ldy #data_7e6490
	lda #$04
	jsr sub_7e733a	
	ldx #$31a0
	ldy #data_7e6490
	lda #$06
	jsr sub_7e733a	
	ldx #$3100
	ldy #data_7e6470
	lda #$03
	jsr sub_7e733a	
	ldx #$3020
	ldy #data_7e6410
	lda #$02
	jsr sub_7e733a	
	ldx #$3040
	ldy #data_7e6430
	lda #$02
	jsr sub_7e733a	
	ldx #$3060
	ldy #data_7e6450
	lda #$02
	jsr sub_7e733a	
	ldx #$30e0
	ldy #data_7e7c43
	lda #$04
	jsr sub_7e733a	
	lda #$00
	ldy #sub_7e5f27
	jsr sub_7e74dc	
	lda #$00
	ldy #sub_7e5aed
	jsr sub_7e74dc	
	lda #$00
	ldy #sub_7e5a92
	jsr sub_7e74dc	
	tdc
	sta $3901,x
	lda #$01
	sta $3600,x
	lda #$5a
	sta $3900,x
	rep #$20
	lda #$ffa0
	sta $3800,x
	sep #$20
	lda #$00
	ldy #sub_7e5a92
	jsr sub_7e74dc	
	lda #$01
	sta $3901,x
	lda #$0a
	sta $3600,x
	lda #$28
	sta $3900,x
	rep #$20
	lda #$ff60
	sta $3800,x
	sep #$20
	lda #$00
	ldy #sub_7e5a92
	jsr sub_7e74dc	
	lda #$02
	sta $3901,x
	lda #$07
	sta $3600,x
	lda #$2d
	sta $3900,x
	rep #$20
	lda #$ff80
	sta $3800,x
	sep #$20
	inc $19	
	lda #$01
	sta $32	
	jsr sub_7e71fd	; WaitVBlank
;	ldy #$00ca
if defined("LANG_EN")
        ldy.w   #202							; CAUTION: Asar will assemble "ldy #202" to an instruction with an 8-bit operand, so we need to specify operand size in this case
else
        ldy     #322
endif
	sty $15
	lda #$0f
	sta $32	
	rts
}

; ------------------------------------------------------------------------------

; [ magitek march $01:  ]

;OpeningState_01:
sub_7e5a4c: {
	ldy $15
	bne label_7e5a62	
	inc $19	
;	ldy #$0ce4
if defined("LANG_EN")
        ldy     #3300
else
        ldy     #3060
endif
	sty $15
	lda #$00
	ldy #sub_7e5ce2
	jsr sub_7e74dc	
	jsr sub_7e5cbd	
label_7e5a62:
	jsr sub_7e5a79	
	rts
}

sub_7e5a66: {
	ldy $15
	bne label_7e5a6c	
	inc $19	
label_7e5a6c:
	jsr sub_7e5a79	
	rts
}

sub_7e5a70: {
	lda #$ff
	sta $19	
	tdc
	sta $0200
	rts
}

sub_7e5a79: {
	lda $3f
	sta $00211f	
	lda $40
	sta $00211f	
	lda $41
	sta $002120	
	lda $42
	sta $002120	
	rts
}

sub_7e5a92: {
	tax
	jmp (jump_table_7e5a96,x)
}

jump_table_7e5a96: {
	dw sub_7e5a9c
	dw sub_7e5aaf
	dw sub_7e5ac6
}

sub_7e5a9c: {
	ldx $1d	
	inc $3a00,x
	tdc
	lda $3901,x
	tay
	lda $003c,y
	sta $3401,x
	stz $3400,x
sub_7e5aaf:
	ldx $1d	
	lda $3600,x
	bne label_7e5ac1
	inc $3a00,x
	lda $3900,x
	sta $3600,x
	sec
	rts
label_7e5ac1:
	dec $3600,x
	sec
	rts
}

sub_7e5ac6: {
	ldx $1d	
	lda $3600,x
	beq label_7e5aeb
	rep #$20
	lda $3400,x
	clc
	adc $3800,x
	sta $3400,x
	sep #$20
	tdc
	lda $3901,x
	tay
	lda $3401,x
	sta $003c,y
	dec $3600,x
	sec
	rts
label_7e5aeb:
	clc
	rts
}

sub_7e5aed: {
	lda $18	
	and #$03
	bne label_7e5afb
	
	rep #$20
	dec $41
	dec $27	
	sep #$20
label_7e5afb:
	lda $18	
	and #$3f
	bne label_7e5b06
	ldy $2b	
	iny
	sty $2b	
label_7e5b06:
	sec
	rts
}

sub_7e5b08: {
	sta $f4
	asl a
	asl a
	asl a
	sta $f3
	ldy $00
label_7e5b11:
	phy
	lda #$02
	ldy #sub_7e5f7e
	jsr sub_7e74dc	
	lda $f4
	sta $3900,x
	lda $f3
	sta $3901,x
	ply
	rep #$20
	lda data_7e5b45,y
	sta $3500,x
	sep #$20
	iny
	iny
	lda data_7e5b45,y
	sta $3701,x
	iny
	lda data_7e5b45,y
	sta $3801,x
	iny
	cpy #$0018
	bne label_7e5b11
	rts
}

data_7e5b45: {
	dw data_7e6031 : db $04 : db $f8
	dw data_7e6054 : db $00 : db $00
	dw data_7e6121 : db $fd : db $e0
	dw data_7e6190 : db $fb : db $e0
	dw data_7e607f : db $04 : db $08
	dw data_7e60d0 : db $04 : db $08
}

sub_7e5b5d: {
	phb
	lda #$00
	pha
	plb
	lda #$17
	sta $212c	
	lda #$02
	sta $212d	
	lda #$e0
	sta $2132	
	stz $4320	
	lda #$32
	sta $4321	
	ldy #data_7e5c23
	sty $4322	
	lda #$7e
	sta $4324	
	sta $4327	
	stz $4330	
	lda #$05
	sta $4331	
	ldy #data_7e5c40
	sty $4332	
	lda #$7e
	sta $4334	
	sta $4337	
	lda #$01
	sta $4340	
	lda #$30
	sta $4341	
	ldy #data_7e5c0e
	sty $4342	
	lda #$7e
	sta $4344	
	sta $4347	
	sta $4354	
	sta $4357	
	lda #$02
	sta $4350	
	lda #$11
	sta $4351	
	ldy #data_7e5c01
	sty $4352	
	lda #$43
	sta $4360	
	lda #$1b
	sta $4361	
	ldy #data_7e5c15
	sty $4362	
	lda #$7e
	sta $4364	
	sta $4367	
	lda #$43
	sta $4370	
	lda #$1d
	sta $4371	
	ldy #data_7e5c1c
	sty $4372	
	lda #$7e
	sta $4374	
	sta $4377	
	lda #$fc
	tsb $31	
	plb
	rts
}

; bg3 scroll
;OpeningBG3ScrollHDMATbl:
if defined("LANG_EN")
data_7e5c01: {
	db $27
data_7e5c02:
	db $00
	db $00
	db $10
data_7e5c05:
	db $00
	db $00
	db $10
data_7e5c08:
	db $00
	db $00
	db $10
data_7e5c0b:
	db $00
	db $00
	db $00
}
else
data_7e5c01: {
	db $27
data_7e5c02:
	db $ff
	db $00
	db $10
data_7e5c05:
	db $ff
	db $00
	db $10
data_7e5c08:
	db $ff
	db $00
	db $10
data_7e5c0b:
	db $ff
	db $00
	db $00
}
endif

data_7e5c0e: {
	db $54
	db $82
	db $04
	db $01
	db $80
	db $81
	db $00
}

data_7e5c15: {
	db $e4
	db $a0
	db $3c
	db $fb
	db $30
	db $3e
	db $00
}

data_7e5c1c: {
	db $e4
	db $20
	db $40
	db $fb
	db $b0
	db $41
	db $00
}

data_7e5c23: {
	db $54
	db $e0
	db $01
	db $ed
	db $01
	db $eb
	db $01
	db $ea
	db $02
	db $e9
	db $03
	db $e8
	db $04
	db $e7
	db $05
	db $e6
	db $06
	db $e5
	db $07
	db $e4
	db $08
	db $e3
	db $0c
	db $e2
	db $0f
	db $e1
	db $1e
	db $e0
	db $00
}

data_7e5c40: {
	db $54
	db $09
	db $01
	db $07
	db $00
}

sub_7e5c45: {
	tdc
	tax
	tay
	rep #$20
label_7e5c4a:
	lda $0300,x
	sta $3d00,y
	lda $0680,x
	sta $4080,y
	iny
	iny
	lda $04c0,x
	sta $3d00,y
	lda $0840,x
	sta $4080,y
	iny
	iny
	inx
	inx
	cpx #$01c0
	bne label_7e5c4a
	sep #$20
	rts
}

sub_7e5c70: {
	ldy #$0100
	sty $3f
	ldy #$0080
	sty $41
	sty $25	
	tdc
	tay
	sty $27	
	stz $72
	stz $73
	stz $74
	ldy #$00e0
	sty $87
	ldy #$4000
	sty $8b
	ldy #$0000
	sty $8d
	ldy #$ffff
	sty $8f
	jsr sub_7e5cb1	
	ldy #$7440
	sty $10	
	ldy #$4400
	sty $12	
	lda #$7e
	sta $14	
	ldy #$0280
	sty $0e	
	rts
}

sub_7e5cb1: {
	tdc
	tax
label_7e5cb3:
	stz $4400,x
	inx
	cpx #$0280
	bne label_7e5cb3
	rts
}

sub_7e5cbd: {
	lda #$00
	ldy #sub_7e5cc6
	jsr sub_7e74dc	
	rts
}

sub_7e5cc6: {
	lda $18	
	and #$01	
	bne label_7e5cd7	
	ldx #$30e0	
	ldy #data_7e7c43
	jsr sub_7e7324	
	bra label_7e5ce0
	
label_7e5cd7:
	ldx #$30e0	
	ldy #data_7e6498
	jsr sub_7e7324	
label_7e5ce0:
	sec
	rts
}

sub_7e5ce2: {
	tax
	jmp (jump_table_7e5ce6,x)
}

jump_table_7e5ce6: {
	dw sub_7e5cea
	dw sub_7e5cfc
}

sub_7e5cea: {
	ldx $1d	
	inc $3a00,x	
	rep #$20
	lda #data_7e5d47	
	sta $3500,x
	sep #$20
	jsr sub_7e755f	
sub_7e5cfc:
	ldx $1d	
	lda $3b01,x	
	cmp #$01
	bne label_7e5d10	
	ldx #$3000
	ldy #data_7e6400
	lda #$01
	jsr sub_7e733a	
label_7e5d10:
	ldx $1d	
	lda $3b01,x	
	cmp #$20
	bne label_7e5d24	
	ldx #$3000
	ldy #data_7e7465
	lda #$01
	jsr sub_7e733a	
label_7e5d24:
	ldx $1d	
	lda $3b01,x	
	cmp #$fe
	beq label_7e5d45	
	jsr sub_7e7593
	sep #$10
	lda $3b00,x	
	tay
	rep #$20
	lda ($eb),y	
	sta $e7
	rep #$10
	sep #$20
	jsr sub_7e5e8b	
	sec
	rts
label_7e5d45:
	clc
	rts
}

data_7e5d47: {
	dw data_7e6598 : db $01	
	dw data_7e65a5 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e65bc : db $01	
	dw data_7e65c9 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e65ed : db $01	
	dw data_7e6601 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e6621 : db $01	
	dw data_7e6636 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e6621 : db $01	
	dw data_7e665d : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e667e : db $01	
	dw data_7e6688 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e669a : db $01	
	dw data_7e66ad : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e66c1 : db $01	
	dw data_7e66d4 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e66f7 : db $01	
	dw data_7e6709 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e66f7 : db $01	
	dw data_7e672e : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e6754 : db $01	
	dw data_7e6766 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e678d : db $01	
	dw data_7e67a3 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e67c4 : db $01	
	dw data_7e67da : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e67f0 : db $01	
	dw data_7e6805 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e6815 : db $01	
	dw data_7e6831 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e6846 : db $01	
	dw data_7e6861 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e6846 : db $01	
	dw data_7e6894 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e6846 : db $01	
	dw data_7e68ca : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e68f5 : db $01	
	dw data_7e6912 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e6925 : db $01	
	dw data_7e6941 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e6955 : db $01	
	dw data_7e6968 : db $8b	
	dw data_7e5e19 : db $01	
	dw data_7e697a : db $01	
	dw data_7e698d : db $8b	
	dw data_7e5e19 : db $01	
if defined("LANG_EN")							; CHECKME shifted 1 byte down (cf. opening.asm)
	dw data_7e69a5 : db $01	
	dw data_7e69b4 : db $8b	
	dw data_7e5e19 : db $01	
endif
	dw data_7e5e19 : db $fe	
}
data_7e5e19: {
	
	db $46,$44,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$FE,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$FE,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$FE,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00
}

sub_7e5e8b: {
	ldx $00
	txy
	rep #$20
	lda ($e7)	
	sta $eb
	inc $e7
	inc $e7
	sep #$20
	lda ($e7),y	
	sta $43
	iny
	tdc
	lda ($e7),y	
	iny
	jsr sub_7e5edf	
label_7e5ea6:
	lda ($e7),y	
	beq label_7e5ec1	
	cmp #$fe	
	beq label_7e5ec2	
	cmp #$ff	
	beq label_7e5ecb	
	phy
	txy
	sta ($eb),y	
	inx
	txy
	lda $43	
	sta ($eb),y	
	inx
	ply
	iny	
	bra label_7e5ea6
label_7e5ec1:
	rts
label_7e5ec2:
	
	rep #$21
	lda #$0080
	sta $e0
	bra label_7e5ed2
label_7e5ecb:
	
	rep #$21
	lda #$0040
	sta $e0
label_7e5ed2:
	
	lda $eb
	adc $e0
	sta $eb
	sep #$20
	tdc
	tax
	iny	
	bra label_7e5ea6
}

sub_7e5edf: {
	phx
	phy	
	asl a	
	asl a
	tax
	lda data_7e5f07,x
	eor #$ff
	sta data_7e5c02
	lda data_7e5f08,x
	eor #$ff
	sta data_7e5c05
	lda data_7e5f09,x
	eor #$ff
	sta data_7e5c08
	lda data_7e5f0a,x
	eor #$ff
	sta data_7e5c0b
	ply	
	plx
	rts
}

data_7e5f07: {
	db $00
data_7e5f08:
	db $00
data_7e5f09:
	db $00
data_7e5f0a:
	db $00
	db $00,$00,$04,$00
	db $04,$00,$00,$00
	db $00,$04,$00,$00
	db $00,$04,$04,$00
	db $04,$04,$00,$00
	db $04,$00,$04,$00
	db $00,$04,$00,$04
}
sub_7e5f27: {
	lda $1f
	cmp #$77
	bcs label_7e5f6c
	lda #$40
	trb $33
	lda #$00
	ldy #sub_7e76db
	jsr sub_7e74dc	
	tdc
	lda $18	
	and #$07
	asl a
	tay
	rep #$20
	lda data_7e5f6e,y
	sta $3500,x
	sep #$20
	phx
	jsr sub_7e5630
	plx
	sta $3301,x
	and #$0f
	inc
	sta $3801,x
	phx
	jsr sub_7e5630
	plx
	sta $3401,x
	sta $3800,x
	and #$03
	inc
	sta $3701,x
	sta $3700,x
label_7e5f6c:
	sec
	rts
}

data_7e5f6e: {
	dw data_7e63b4
	dw data_7e63b7
	dw data_7e63ba
	dw data_7e63bd
	dw data_7e63c0
	dw data_7e63c3
	dw data_7e63c6
	dw data_7e63ba
}

sub_7e5f7e: {
	tax
	jmp (jump_table_7e5f82,x)
}

jump_table_7e5f82: {
	dw sub_7e5f86
	dw sub_7e5f98
}

sub_7e5f86: {
	ldx $1d	
	inc $3a00,x
	jsr sub_7e755f	
	lda $3901,x
	clc
	adc $3b01,x
	sta $3b01,x
sub_7e5f98:
	ldx $1d	
	tdc
	lda $3900,x
	tay
	lda $37
	clc
	adc $3701,x
	tyx
	adc $39,x
	ldx $1d	
	sta $3301,x
	lda $38
	clc
	adc $3801,x
	tyx
	adc $3c,x
	ldx $1d	
	sta $3401,x
	jsr sub_7e758d
	sec
	rts
}

sub_7e5fc0: {
	tax
	jmp (jump_table_7e5fc4,x)
}

jump_table_7e5fc4: {
	dw sub_7e5fc8
	dw sub_7e5fdf
}

sub_7e5fc8: {
	ldx $1d	
	inc $3a00,x
	rep #$20
	lda #data_7e6027
	sta $3500,x
	sep #$20
	lda #$08
	sta $3b01,x
	stz $3b00,x
sub_7e5fdf:
	ldx $1d	
	jsr sub_7e5fef
	tdc
	lda $3b00,x	
	tay
	lda ($eb),y
	sta $38
	sec
	rts
}

sub_7e5fef: {
	rep #$20
	lda $3500,x
	sta $eb
	sep #$20
label_7e5ff8:
	lda $3b01,x
	cmp #$ff
	bne label_7e6007
	stz $3b00,x	
	jsr sub_7e601b
	bra label_7e5ff8
label_7e6007:
	lda $3b01,x
	bne label_7e6017
	inc $3b00,x	
	inc $3b00,x	
	jsr sub_7e601b
	bra label_7e5ff8
label_7e6017:
	dec $3b01,x
	rts
}

sub_7e601b: {
	tdc
	lda $3b00,x	
	tay
	iny
	lda ($eb),y
	sta $3b01,x
	rts
}

data_7e6027: {
	dw $0401
	dw $0802
	dw $0401
	dw $0400
	dw $ff00
}

data_7e6031: {
	dw data_7e6040 : db $04
	dw data_7e6045 : db $10
	dw data_7e604a : db $04
	dw data_7e604f : db $10
	dw data_7e604a : db $ff
}

data_7e6040: {
	db $01
	db $90,$27,$84,$30
}

data_7e6045: {
	db $01
	db $90,$26,$84,$30
}

data_7e604a: {
	db $01
	db $90,$27,$84,$70
}

data_7e604f: {
	db $01
	db $90,$26,$84,$70
}

data_7e6054: {
	dw data_7e605d : db $14
	dw data_7e606e : db $14
	dw data_7e606e : db $ff
}

data_7e605d: {
	db $04
	db $90,$08,$6c,$30
	db $a0,$08,$6e,$30
	db $90,$18,$80,$30
	db $a0,$18,$82,$30
}

data_7e606e: {
	db $04
	db $98,$08,$6c,$70
	db $88,$08,$6e,$70
	db $98,$18,$80,$70
	db $88,$18,$82,$70
}

data_7e607f: {
	dw data_7e609a : db $08
	dw data_7e60a3 : db $04
	dw data_7e60ac : db $04
	dw data_7e60b5 : db $04
	dw data_7e60be : db $08
	dw data_7e60c7 : db $04
	dw data_7e60ac : db $04
	dw data_7e60b5 : db $04
	dw data_7e60b5 : db $ff
}

data_7e609a: {
	db $02
	db $80,$08,$60,$30
	db $80,$18,$62,$30
}

data_7e60a3: {
	db $02
	db $80,$09,$60,$30
	db $80,$19,$62,$30
}

data_7e60ac: {
	db $02
	db $80,$09,$64,$30
	db $80,$19,$66,$30
}

data_7e60b5: {
	db $02
	db $80,$08,$64,$30
	db $80,$18,$66,$30
}

data_7e60be: {
	db $02
	db $80,$08,$68,$30
	db $80,$18,$6a,$30
}

data_7e60c7: {
	db $02
	db $80,$09,$68,$30
	db $80,$19,$6a,$30
}

data_7e60d0: {
	dw data_7e610f : db $08
	dw data_7e6118 : db $04
	dw data_7e60fd : db $04
	dw data_7e6106 : db $04
	dw data_7e60eb : db $08
	dw data_7e60f4 : db $04
	dw data_7e60fd : db $04
	dw data_7e6106 : db $04
	dw data_7e6106 : db $ff
}

data_7e60eb: {
	db $02
	db $a0,$08,$60,$70
	db $a0,$18,$62,$70
}

data_7e60f4: {
	db $02
	db $a0,$09,$60,$70
	db $a0,$19,$62,$70
}

data_7e60fd: {
	db $02
	db $a0,$09,$64,$70
	db $a0,$19,$66,$70
}

data_7e6106: {
	db $02
	db $a0,$08,$64,$70
	db $a0,$18,$66,$70
}

data_7e610f: {
	db $02
	db $a0,$08,$68,$70
	db $a0,$18,$6a,$70
}

data_7e6118: {
	db $02
	db $a0,$09,$68,$70
	db $a0,$19,$6a,$70
}

data_7e6121: {
	dw data_7e613f : db $04
	dw data_7e6148 : db $04
	dw data_7e6151 : db $04
	dw data_7e615a : db $04
	dw data_7e6163 : db $04
	dw data_7e616c : db $08
	dw data_7e6175 : db $04
	dw data_7e617e : db $04
	dw data_7e6187 : db $04
	dw data_7e6187 : db $ff
}

data_7e613f: {
	db $02
	db $90,$3f,$40,$30
	db $90,$4f,$42,$30
}

data_7e6148: {
	db $02
	db $90,$3d,$40,$30
	db $90,$4d,$42,$30
}

data_7e6151: {
	db $02
	db $90,$3f,$44,$30
	db $90,$4f,$46,$30
}

data_7e615a: {
	db $02
	db $90,$3e,$44,$30
	db $90,$4e,$46,$30
}

data_7e6163: {
	db $02
	db $90,$3d,$48,$30
	db $90,$4d,$4a,$30
}

data_7e616c: {
	db $02
	db $90,$3e,$48,$30
	db $90,$4e,$4a,$30
}

data_7e6175: {
	db $02
	db $90,$3d,$4c,$30
	db $90,$4d,$4e,$30
}

data_7e617e: {
	db $02
	db $90,$3f,$4c,$30
	db $90,$4f,$4e,$30
}

data_7e6187: {
	db $02
	db $90,$41,$4c,$30
	db $90,$51,$4e,$30
}

data_7e6190: {
	dw data_7e61ae : db $08
	dw data_7e61b7 : db $04
	dw data_7e61c0 : db $04
	dw data_7e61c9 : db $04
	dw data_7e61d2 : db $04
	dw data_7e61db : db $04
	dw data_7e61e4 : db $04
	dw data_7e61ed : db $04
	dw data_7e61f6 : db $04
	dw data_7e61f6 : db $ff
}

data_7e61ae: {
	db $02
	db $a0,$3e,$48,$70
	db $a0,$4e,$4a,$70
}

data_7e61b7: {
	db $02
	db $a0,$3d,$4c,$70
	db $a0,$4d,$4e,$70
}

data_7e61c0: {
	db $02
	db $a0,$3f,$4c,$70
	db $a0,$4f,$4e,$70
}

data_7e61c9: {
	db $02
	db $a0,$41,$4c,$70
	db $a0,$51,$4e,$70
}

data_7e61d2: {
	db $02
	db $a0,$3f,$40,$70
	db $a0,$4f,$42,$70
}

data_7e61db: {
	db $02
	db $a0,$3d,$40,$70
	db $a0,$4d,$42,$70
}

data_7e61e4: {
	db $02
	db $a0,$3f,$44,$70
	db $a0,$4f,$46,$70
}

data_7e61ed: {
	db $02
	db $a0,$3e,$44,$70
	db $a0,$4e,$46,$70
}

data_7e61f6: {
	db $02
	db $a0,$3d,$48,$70
	db $a0,$4d,$4a,$70
}

sub_7e61ff: {
	jsr sub_7e7aa8	
	rep #$21
	lda $dfda66
	adc #$db00
	sta $e7
	sep #$20
	lda $dfda68
	adc #$df
	sta $e9
	ldy #$9800
	sty $eb
	lda #$7f
	sta $ed
	ldy #$0800
	sty $ef
	jsr sub_7e62cc	
	rep #$21
	lda $dfda5d
	adc #$e300
	sta $e7
	sep #$20
	lda $dfda5f
	adc #$df
	sta $e9
	ldy #$a000
	sty $eb
	lda #$7f
	sta $ed
	ldy #$0800
	sty $ef
	jsr sub_7e62cc	
	rep #$21
	lda $dfda60
	adc #$db00
	sta $e7
	sep #$20
	lda $dfda62
	adc #$df
	sta $e9
	ldy #$a800
	sty $eb
	lda #$7f
	sta $ed
	ldy #$0800
	sty $ef
	jsr sub_7e62cc	
	stz $e4
	stz $e5
	lda #$80
	sta $ed
	ldx #$9800
	lda #$7f
	jsr sub_7e6348
	jsr sub_7e62dd
	ldy #$b800
	sty $e7
	lda #$7f
	sta $e9
	stz $ed
	stz $ee
	ldy #$4000
	sty $eb
	ldy #$0000
	jsr sub_7e7a18	
	ldx #$0080
	stx $e4
	lda #$80
	sta $ed
	ldx #$a800
	lda #$7f
	jsr sub_7e6348
	jsr sub_7e62dd
	ldy #$b800
	sty $e7
	lda #$7f
	sta $e9
	stz $ed
	stz $ee
	ldy #$4000
	sty $eb
	ldy #$2000
	jsr sub_7e7a18	
	rts
}

sub_7e62cc: {
	rep #$20
	ldy $00
label_7e62d0:
	lda [$e7],y
	sta [$eb],y
	iny
	iny
	cpy $ef
	bne label_7e62d0
	sep #$20
	rts
}

sub_7e62dd: {
	tdc
	tax
label_7e62df:
	rep #$20
	lda data_7e62fb,x
	tay
	inx
	inx
	lda data_7e62fb,x
	sta $e7
	inx
	inx
	sep #$20
	phx
	jsr sub_7e631b	
	plx
	cpx #$0020
	bne label_7e62df
	rts
}

data_7e62fb: {
	dw $0000,$0000
	dw $0400,$0040
	dw $0000,$0080
	dw $0400,$00c0
	dw $0800,$2000
	dw $0c00,$2040
	dw $0800,$2080
	dw $0c00,$20c0
}

sub_7e631b: {
	phb
	lda #$7f
	pha
	plb
	lda #$20
	sta $e0
label_7e6324:
	
	lda #$20
	sta $e1
	ldx $e7
label_7e632a:
	
	lda $0bc0,y
	sta $b800,x
	iny
	inx
	inx
	dec $e1
	bne label_7e632a
	rep #$21
	lda $e7
	adc #$0100
	sta $e7
	sep #$20
	dec $e0
	bne label_7e6324
	plb
	rts
}

sub_7e6348: {
	sta $e9
	stx $e7
	phb
	lda #$7f
	pha
	plb
	tdc
	tax
label_7e6353:
	lda #$08
	sta $e6
label_7e6357:
	rep #$20
	ldy #$0010
	lda [$e7]
	sta $f1
	lda [$e7],y
	sta $ef
	tdc
	sep #$20
	ldy #$0008
label_7e636a:
	tdc
	asl $f0
	rol a
	asl $ef
	rol a
	asl $f2
	rol a
	asl $f1
	rol a
	and #$0f
	beq label_7e638d
	sta $e0
	phx
	ldx $e4
	lda.l data_7e64b8,x	
	plx
	asl a
	asl a
	asl a
	asl a
	and #$30
	ora $e0
label_7e638d:
	sta $b801,x
	inx
	inx
	dey
	bne label_7e636a
	ldy $e7
	iny
	iny
	sty $e7
	dec $e6
	bne label_7e6357
	rep #$20
	inc $e4
	lda $e7
	clc
	adc #$0010
	sta $e7
	tdc
	sep #$20
	dec $ed
	bne label_7e6353
	plb
	rts
}

data_7e63b4: {
	dw data_7e63c9 : db $fe
}

data_7e63b7: {
	dw data_7e63ce : db $fe
}

data_7e63ba: {
	dw data_7e63d3 : db $fe
}

data_7e63bd: {
	dw data_7e63d8 : db $fe
}

data_7e63c0: {
	dw data_7e63dd : db $fe
}

data_7e63c3: {
	dw data_7e63ee : db $fe
}

data_7e63c6: {
	dw data_7e63f7 : db $fe
}


data_7e63c9: {
	db $01
	db $00,$00,$86,$72
}

data_7e63ce: {
	db $01
	db $00,$00,$87,$76
}

data_7e63d3: {
	db $01
	db $00,$00,$88,$78
}

data_7e63d8: {
	db $01
	db $00,$00,$89,$7A
}

data_7e63dd: {
	db $04
	db $08,$08,$87,$72
	db $00,$00,$86,$36
	db $00,$10,$86,$78
	db $20,$00,$86,$32
}

data_7e63ee: {
	db $02
	db $00,$00,$89,$76
	db $10,$08,$89,$76
}

data_7e63f7: {
	db $02
	db $00,$00,$86,$7A
	db $30,$08,$86,$38
}

data_7e6400: {
	dw $0000
	dw $7fff
	dw $62f6
	dw $20e6
	dw $0000
	dw $739c
	dw $4e51
	dw $1483
}

data_7e6410: {
	dw $0000
	dw $460b
	dw $3dca
	dw $2948
	dw $2d69
	dw $2949
	dw $356a
	dw $2008
}

data_7e6420: {
	dw $2008
	dw $2008
	dw $2008
	dw $35cd
	dw $31ab
	dw $5670
	dw $566f
	dw $524e
}

data_7e6430: {
	dw $0000
	dw $460b
	dw $3dca
	dw $2527
	dw $14c6
	dw $4a0d
	dw $1ce7
	dw $5670
	dw $566f
	dw $524e
	dw $39ac
	dw $2d69
	dw $2527
	dw $5670
	dw $566f
	dw $524e
}

data_7e6450: {
	dw $0000
	dw $358a
	dw $316a
	dw $2d69
	dw $2948
	dw $2949
	dw $2d69
	dw $4a0d
	dw $2008
	dw $2008
	dw $2008
	dw $2008
	dw $2008
	dw $2008
	dw $566f
	dw $566f
}

data_7e6470: {
	dw $0000
	dw $41ef
	dw $318c
	dw $2d28
	dw $2507
	dw $1ce7
	dw $18c6
	dw $418b
	dw $3969
	dw $2d06
	dw $24c5
	dw $3d8a
	dw $3126
	dw $2008
	dw $2008
	dw $2008
}

data_7e6490: {
	dw $0000
	dw $62d2
	dw $5a90
	dw $524e
}

data_7e6498: {
	dw $0000
	dw $1576
	dw $002e
	dw $0c42
	dw $0841
	dw $45cd
	dw $3d6a
	dw $3528
	dw $2528
	dw $2ce7
	dw $24e6
	dw $20c5
	dw $18c5
	dw $18a3
	dw $1483
	dw $1063
}

data_7e64b8: {
	db $00,$01,$02,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$03,$02,$03,$03,$02,$02,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$05,$05,$05,$05,$05,$05,$05,$05,$03,$03,$03,$05,$05,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$02,$02,$05,$05,$05,$05,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$02,$02,$03,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$03,$03,$02,$02,$03,$02,$02,$02,$03,$03,$02,$03,$03,$03,$03,$03,$04,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$02,$02,$02
}

data_7e6598: {
	dw $4458 : db $24,$00,"producer",$00
}

data_7e65a5: {
	dw $44ce : db $20,$00,"HIRONOBU SAKAGUCHI",$00
}

data_7e65bc: {
	dw $4458 : db $24,$01,"director",$00
}

}

data_7e65c9: {
	dw $44d0 : db $20,$01,"YOSHINORI KITASE",$fe," HIROYUKI ITOU",$00
}

data_7e65ed: {
	dw $4450 : db $24,$02,"main programmer",$00
}

data_7e6601: {
	dw $44d2 : db $20,$02,"  KEN NARITA",$fe,"KIYOSHI YOSHII",$00
}

data_7e6621: {
	dw $4450 : db $24,$03,"graphic director",$00
}

data_7e6636: {
	dw $44ce : db $20,$03,"TETSUYA TAKAHASHI",$fe,"  KAZUKO SHIBUYA",$00
}

data_7e665d: {
	dw $44d2 : db $20,$00," HIDEO MINABA",$fe,"TETSUYA NOMURA",$00
}

data_7e667e: {
	dw $445a : db $24,$00,"music",$00
}

data_7e6688: {
	dw $44d2 : db $20,$00,"NOBUO UEMATSU",$00
}

data_7e669a: {
	dw $4452 : db $24,$03,"image designer",$00
}

data_7e66ad: {
	dw $44d0 : db $20,$03,"YOSHITAKA AMANO",$00
}

data_7e66c1: {
	dw $4452 : db $24,$04,"battle planner",$00
}

data_7e66d4: {
	dw $44d0 : db $20,$04,"YASUYUKI HASEBE",$fe," AKIYOSHI OOTA",$00
}

data_7e66f7: {
	dw $4452 : db $24,$05,"field planner",$00
}

data_7e6709: {
	dw $44ce : db $20,$05,"YOSHIHIKO MAEKAWA",$fe,"    KEITA ETOH",$00
}

data_7e672e: {
	dw $44ce : db $20,$02,"   SATORU TSUJI",$fe," HIDETOSHI KEZUKA",$00
}

data_7e6754: {
	dw $4452 : db $24,$06,"event planner",$00
}

data_7e6766: {
	dw $44ce : db $20,$06,"  TSUKASA FUJITA",$fe,"KEISUKE MATSUHARA",$00
}

data_7e678d: {
	dw $444e : db $24,$06,"effect programmer",$00
}

data_7e67a3: {
	dw $44d2 : db $20,$06,"HIROSHI HARATA",$fe,"SATOSHI OGATA",$00
}

data_7e67c4: {
	dw $444e : db $24,$05,"battle programmer",$00
}

data_7e67da: {
	dw $44ce : db $20,$05,"AKIHIRO YAMAGUCHI",$00
}

data_7e67f0: {
	dw $4450 : db $24,$03,"sound programmer",$00
}

data_7e6805: {
	dw $44d4 : db $20,$03,"MINORU AKAO",$00
}

data_7e6815: {
	dw $4448 : db $24,$02,"effect graphic designer",$00
}

data_7e6831: {
	dw $44d0 : db $20,$02,"HIROKATSU SASAKI",$00
}

data_7e6846: {
	dw $444a : db $24,$04,"field graphic designer",$00
}

data_7e6861: {
	dw $44d0 : db $20,$03,"TAKAHARU MATSUO",$fe,"  YUSUKE NAORA",$fe," NOBUYUKI IKEDA",$00
}

data_7e6894: {
	dw $44ce : db $20,$07,"  TOMOE INAZAWA",$fe,"   KAORI TANAKA",$fe,"TAKAMICHI SHIBUYA",$00
}

data_7e68ca: {
	dw $44cc : db $20,$01,"SHINICHIROU HAMASAKA",$fe,"  AKIYOSHI MASUDA",$00
}

data_7e68f5: {
	dw $4448 : db $24,$00,"monster graphic designer",$00
}

data_7e6912: {
	dw $44d2 : db $20,$00,"HITOSHI SASAKI",$00
}

data_7e6925: {
	dw $4446 : db $24,$05,"object graphic designer",$00
}

data_7e6941: {
	dw $44ce : db $20,$05,"KAZUHIRO OHKAWA",$00
}

data_7e6955: {
	dw $4452 : db $24,$03,"sound engineer",$00
}

data_7e6968: {
	dw $44d2 : db $20,$03,"EIJI NAKAMURA",$00
}

data_7e697a: {
	dw $4452 : db $24,$03,"remake planner",$00
}

data_7e698d: {
	dw $44d6 : db $20,$03,"WEIMIN LI",$fe," AIKO ITO",$00
}

if defined("LANG_EN")

data_7e69a5: {
;	dw $4458 : db $24,$03,"translator",$00
	dw $4456 : db $24,$03,"translator",$00				; BUGFIX: move this a bit to the left (value of first word)
}

data_7e69b4: {
;	dw $44d6 : db $20,$03,"TED WOOLSEY",$00
;	dw $44d8 : db $20,$03,"MANULOEWE",$00
	dw $44d4 : db $20,$03,"TED WOOLSEY",$fe," MANULOEWE ",$00	; BUGFIX: move this a bit to the left as well, plus add yours truly out of boundless vanity :p FIXME, no correct centering possible?!
}

endif

sub_7e69c4: {
	php
	rep #$30
	pha
	phx
	phy
	phb
	phd
	jsr sub_7e502f	
	jsr sub_7e69e1
	jsr sub_7e6a10
	jsr sub_7e504e	
	rep #$30
	pld
	plb
	ply
	plx
	pla
	plp
	rtl
}

sub_7e69e1: {
	jsr sub_7e7711	
	jsr sub_7e69f4	
	jsr sub_7e7815	
	jsr sub_7e784f	
	jsr sub_7e7485	
	jsr sub_7e6be5
	rts
}

sub_7e69f4: {
	phb
	lda #$00
	pha
	plb
	lda #$03
	sta $2101	
	ldx $00
	stx $2102	
	lda #$07
	sta $2105	
	tdc
	lda #$80
	sta $211a	
	plb
	rts
}

sub_7e6a10: {
label_7e6a10:
	tdc
	lda $19	
	bmi label_7e6a22
	asl a
	tax
	jsr (jump_table_7e6a3c,x)
	jsr sub_7e750f	
	jsr sub_7e71fd	
	bra label_7e6a10
label_7e6a22:
	ldy #$000f
	sty $15
	lda #$00
	ldy #sub_7e55a0
	jsr sub_7e74dc	
label_7e6a2f:
	ldy $15
	beq label_7e6a3b
	jsr sub_7e750f	
	jsr sub_7e71fd	
	bra label_7e6a2f
label_7e6a3b:
	rts
}

jump_table_7e6a3c: {
	dw sub_7e6a48
	dw sub_7e6a87
	dw sub_7e6a9e
	dw sub_7e6aad
	dw sub_7e6abc
	dw sub_7e6ac6
}

sub_7e6a48: {
	jsr sub_7e6bc3
	ldx #$3100
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3000
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3100
	ldy #data_7e6cd2
	lda #$02
	jsr sub_7e733a	
	ldx #$3000
	ldy #data_7e6cd2
	lda #$02
	jsr sub_7e733a	
	lda #$00
	ldy #sub_7e6b8c
	jsr sub_7e74dc	
	inc $19	
	lda #$0f
	sta $32	
	ldy #$0010
	sty $15
	rts
}

sub_7e6a87: {
	ldy $15
	bne label_7e6a9a
	inc $19	
	ldy #$0258
	sty $15
	lda #$00
	ldy #sub_7e6b18
	jsr sub_7e74dc	
label_7e6a9a:
	jsr sub_7e6acf
	rts
}

sub_7e6a9e: {
	ldy $15
	bne label_7e6aa9
	inc $19	
	ldy #$003c
	sty $15
label_7e6aa9:
	jsr sub_7e6acf
	rts
}

sub_7e6aad: {
	ldy $15
	bne label_7e6ab8
	inc $19	
	ldy #$0001
	sty $15
label_7e6ab8:
	jsr sub_7e6acf
	rts
}

sub_7e6abc: {
	ldy $15
	bne label_7e6ac2
	inc $19	
label_7e6ac2:
	jsr sub_7e6acf
	rts
}

sub_7e6ac6: {
	lda #$ff
	sta $19	
	tdc
	sta $0200
	rts
}

sub_7e6acf: {
	lda $3f
	sta $00211f	
	lda $40
	sta $00211f	
	lda $41
	sta $002120	
	lda $42
	sta $002120	
	lda $44
	sta $00211b	
	lda $45
	sta $00211b	
	lda $46
	sta $00211c	
	lda $47
	sta $00211c	
	lda $48
	sta $00211d	
	lda $49
	sta $00211d	
	lda $4a
	sta $00211e	
	lda $4b
	sta $00211e	
	rts
}

sub_7e6b18: {
	tax
	jmp (jump_table_7e6b1c,x)
}

jump_table_7e6b1c: {
	dw sub_7e6b20
	dw sub_7e6b51
}

sub_7e6b20: {
	ldx $1d
	inc $3a00,x
	lda #$80
	sta $002130	
	lda #$57
	sta $002131	
	lda #$17
	sta $00212c	
	lda #$17
	sta $00212d	
	lda #$88
	sta $3301,x
	lda #$20
	sta $3302,x
	lda #$42
	sta $3401,x
	lda #$20
	sta $3600,x
sub_7e6b51:
	ldx $1d
	lda $3600,x
	bne label_7e6b87
	lda $3301,x
	cmp #$97
	bcs label_7e6b66
	sta $002132	
	inc $3301,x
label_7e6b66:
	lda $3302,x
	cmp #$8f
	bcs label_7e6b74
	sta $002132	
	inc $3302,x
label_7e6b74:
	lda $3401,x
	cmp #$91
	bcs label_7e6b82
	sta $002132	
	inc $3401,x
label_7e6b82:
	lda #$20
	sta $3600,x
label_7e6b87:
	dec $3600,x
	sec
	rts
}

sub_7e6b8c: {
	jsr sub_7e6b9d
	lda $18	
	and #$07
	bne label_7e6b9b
	rep #$20
	inc $27
	sep #$20
label_7e6b9b:
	sec
	rts
}

sub_7e6b9d: {
	lda $19	
	cmp #$03
	beq label_7e6bad
	cmp #$04
	beq label_7e6bb6
	lda $18	
	and #$01
	bne label_7e6bb5
label_7e6bad:
	rep #$20
	inc $44
	inc $4a
	sep #$20
label_7e6bb5:
	rts
label_7e6bb6:
	rep #$20
	inc $44
	inc $44
	inc $4a
	inc $4a
	sep #$20
	rts
}

sub_7e6bc3: {
	ldy #$0040
	sty $3f
	ldy #$0020
	sty $41
	ldy #$ffa0
	sty $25
	ldy #$ffc0
	sty $27
	tdc
	tay
	sty $46
	sty $48
	ldy #$0001
	sty $44
	sty $4a
	rts
}

sub_7e6be5: {
	ldy #$4e96
	sty $f3
	lda #$d9
	sta $f5
	ldy #$0000
	sty $f6
	lda #$7f
	sta $f8
	jsl $c2ff6d
	ldy #$0000
	sty $e7
	lda #$7f
	sta $e9
	ldy #$9800
	sty $eb
	lda #$7f
	sta $ed
	ldy #$07c0
	sty $ef
	jsr sub_7e62cc	
	lda #$40
	sta $ed
	ldx #$9800
	lda #$7f
	jsr sub_7e6c7a
	jsr sub_7e6c3d
	ldy #$b800
	sty $e7
	lda #$7f
	sta $e9
	stz $ed
	stz $ee
	ldy #$2000
	sty $eb
	ldy #$0000
	jsr sub_7e7a18	
	rts
}

sub_7e6c3d: {
	phb
	lda #$7f
	pha
	plb
	tdc
	tax
label_7e6c44:
	sta $b800,x
	inx
	inx
	cpx #$2000
	bne label_7e6c44
	tdc
	tay
	sty $e7
	lda #$0a
	sta $e0
label_7e6c56:
	lda #$20
	sta $e1
	ldx $e7
label_7e6c5c:
	lda $07c0,y
	sta $b800,x
	iny
	inx
	inx
	dec $e1
	bne label_7e6c5c
	rep #$21
	lda $e7
	adc #$0100
	sta $e7
	sep #$20
	dec $e0
	bne label_7e6c56
	plb
	rts
}

sub_7e6c7a: {
	sta $e9
	stx $e7
	phb
	lda #$7f
	pha
	plb
	tdc
	tax
label_7e6c85:
	lda #$08
	sta $e6
label_7e6c89:
	rep #$20
	ldy #$0010
	lda [$e7]
	sta $f1
	lda [$e7],y
	sta $ef
	tdc
	sep #$20
	ldy #$0008
label_7e6c9c:
	tdc
	asl $f0
	rol a
	asl $ef
	rol a
	asl $f2
	rol a
	asl $f1
	rol a
	and #$0f
	beq label_7e6cad	
label_7e6cad:
	sta $b801,x
	inx
	inx
	dey
	bne label_7e6c9c
	ldy $e7
	iny
	iny
	sty $e7
	dec $e6
	bne label_7e6c89
	rep #$20
	lda $e7
	clc
	adc #$0010
	sta $e7
	tdc
	sep #$20
	dec $ed
	bne label_7e6c85
	plb
	rts
}

data_7e6cd2: {
	dw $5e2f
	dw $3e76
	dw $298e
	dw $210a
	dw $1cc8
	dw $1486
	dw $1464
	dw $1043
	dw $0c23
	dw $0422
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $18a4
}

sub_7e6cf2: {
	php
	rep #$30
	pha
	phx
	phy
	phb
	phd
	jsr sub_7e502f	
	jsr sub_7e6d0f
	jsr sub_7e6d47
	jsr sub_7e504e	
	rep #$30
	pld
	plb
	ply
	plx
	pla
	plp
	rtl
}

sub_7e6d0f: {
	jsr sub_7e7711	
	jsr sub_7e6d22	
	jsr sub_7e7815	
	jsr sub_7e784f	
	jsr sub_7e7485	
	jsr sub_7e6ffb
	rts
}

sub_7e6d22: {
	phb
	lda #$00
	pha
	plb
	lda #$03
	sta $2101	
	lda #$82
	sta $2130	
	lda #$50
	sta $2131	
	lda #$17
	sta $212c	
	lda #$01
	sta $212d	
	lda #$e0
	sta $2132	
	plb
	rts
}

sub_7e6d47: {
label_7e6d47:
	tdc
	lda $19	
	bmi label_7e6d59
	asl a
	tax
	jsr (jump_table_7e6d73,x)
	jsr sub_7e750f	
	jsr sub_7e71fd	
	bra label_7e6d47
label_7e6d59:
	ldy #$000f
	sty $15
	lda #$00
	ldy #sub_7e55a0
	jsr sub_7e74dc	
label_7e6d66:
	ldy $15
	beq label_7e6d72
	jsr sub_7e750f	
	jsr sub_7e71fd	
	bra label_7e6d66
label_7e6d72:
	rts
}

jump_table_7e6d73: {
	dw sub_7e6d7d
	dw sub_7e6e27
	dw sub_7e6e41
	dw sub_7e6e74
	dw sub_7e6e81
}

sub_7e6d7d: {
	stz $34
	lda #$80
	sta $35
	ldx #$3000
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3180
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$31a0
	ldy #data_7e7465
	jsr sub_7e7324	
	ldx #$3000
	ldy #data_7e717d
	lda #$04
	jsr sub_7e733a	
	ldx #$3180
	ldy #data_7e71bd
	lda #$04
	jsr sub_7e733a	
	ldx #$31a0
	ldy #data_7e71dd
	lda #$04
	jsr sub_7e733a	
	lda #$02
	ldy #sub_7e6efd
	jsr sub_7e74dc	
	rep #$20
	lda #data_7e707a
	sta $3500,x
	lda #$fffc
	sta $3800,x
	lda #$0004
	sta $3700,x
	lda #$0168
	sta $3600,x
	sep #$20
	lda #$72
	sta $3301,x
	lda #$80
	sta $3401,x
	lda #$02
	ldy #sub_7e6efd
	jsr sub_7e74dc	
	rep #$20
	lda #data_7e70a6
	sta $3500,x
	lda #$0004
	sta $3800,x
	lda #$fffe
	sta $3700,x
	lda #$0168
	sta $3600,x
	sep #$20
	lda #$50
	sta $3301,x
	lda #$a0
	sta $3401,x
	inc $19	
	lda #$0f
	sta $32	
	ldy #$00b4
	sty $15
	rts
}

sub_7e6e27: {
	ldy $15
	bne label_7e6e3a
	inc $19	
	ldy #$0438
	sty $15
	lda #$00
	ldy #sub_7e6e8a
	jsr sub_7e74dc	
label_7e6e3a:
	jsr sub_7e6f97
	jsr sub_7e6f4c
	rts
}

sub_7e6e41: {
	ldy $15
	bne label_7e6e6d
	inc $19	
	ldy #$00b4
	sty $15
	ldx #$3000
	ldy #data_7e7465
	lda #$08
	jsr sub_7e733a	
	ldx #$3180
	ldy #data_7e7465
	lda #$08
	jsr sub_7e733a	
	ldx #$31a0
	ldy #data_7e7465
	lda #$08
	jsr sub_7e733a	
label_7e6e6d:
	jsr sub_7e6f97
	jsr sub_7e6f4c
	rts
}

sub_7e6e74: {
	ldy $15
	bne label_7e6e7a
	inc $19	
label_7e6e7a:
	jsr sub_7e6f97
	jsr sub_7e6f4c
	rts
}

sub_7e6e81: {
	lda #$ff
	sta $19	
	tdc
	sta $0200
	rts
}

sub_7e6e8a: {
	tax
	jmp (jump_table_7e6e8e,x)
}

jump_table_7e6e8e: {
	dw sub_7e6e92
	dw sub_7e6e97
}

sub_7e6e92: {
	ldx $1d
	inc $3a00,x
sub_7e6e97:
	ldx $1d
	lda $3600,x
	bne label_7e6ed7
	ldy $3900,x
	phy
	lda #$00
	ldy #sub_7e76db
	jsr sub_7e74dc	
	ply
	rep #$20
	lda #data_7e7119
	sta $3500,x
	sep #$20
	lda data_7e6ee9,y
	sta $3301,x
	iny
	lda data_7e6ee9,y
	sta $3401,x
	iny
	cpy #$0014
	beq label_7e6ede
	ldx $1d
	rep #$20
	tya
	sta $3900,x
	sep #$20
	lda #$10
	sta $3600,x
label_7e6ed7:
	ldx $1d
	dec $3600,x
	sec
	rts
label_7e6ede:
	ldx #$3180
	ldy #data_7e719d
	jsr sub_7e7324	
	clc
	rts
}

data_7e6ee9: {
	db $70,$9d
	db $74,$a0
	db $78,$9e
	db $7c,$9d
	db $80,$9c
	db $84,$9f
	db $88,$a0
	db $8c,$9f
	db $90,$a4
	db $94,$a5
}

sub_7e6efd: {
	tax
	jmp (jump_table_7e6f01,x)
}

jump_table_7e6f01: {
	dw sub_7e6f05
	dw sub_7e6f15
}

sub_7e6f05: {
	ldx $1d
	inc $3a00,x
	jsr sub_7e755f	
	rep #$20
	lda #$0294
	sta $3900,x
sub_7e6f15:
	ldx $1d
	ldy $3900,x
	beq label_7e6f47
	ldy $3600,x
	bne label_7e6f38
	rep #$21
	lda $3300,x
	adc $3700,x
	sta $3300,x
	lda $3400,x
	clc
	adc $3800,x
	sta $3400,x
	sep #$20
label_7e6f38:
	rep #$20
	dec $3900,x
	lda $3600,x
	beq label_7e6f45
	dec $3600,x
label_7e6f45:
	sep #$20
label_7e6f47:
	jsr sub_7e758d
	sec
	rts
}

sub_7e6f4c: {
	jsr sub_7e6f83
	and #$1f
	bne label_7e6f7a
	lda #$00
	ldy #sub_7e705a
	jsr sub_7e74dc	
	rep #$20
	lda #data_7e70f6
	sta $3500,x
	sep #$20
	phx
	jsr sub_7e6f83
	and #$03
	asl a
	tay
	plx
	lda data_7e6f7b,y
	sta $3301,x
	lda data_7e6f7c,y
	sta $3401,x
label_7e6f7a:
	rts
}

data_7e6f7b: {
	db $72
data_7e6f7c:
	db $9a
	db $7a,$92
	db $62,$aa
	db $52,$ba
}

sub_7e6f83: {
	tdc
	inc $34
	lda $34
	tax
	lda $c0fd00,x
	sta $35
	tax
	lda $c0fd00,x
	adc $35
	rts
}

sub_7e6f97: {
	jsr sub_7e6f83
	and #$07
	bne label_7e6fc8
	lda #$00
	ldy #sub_7e705a
	jsr sub_7e74dc	
	rep #$20
	lda #data_7e70da
	sta $3500,x
	sep #$20
	phx
	jsr sub_7e6f83
	plx
	and #$3f
	adc #$68
	sta $3301,x
	phx
	jsr sub_7e6f83
	plx
	and #$3f
	adc #$98
	sta $3401,x
label_7e6fc8:
	rts
}

sub_7e6fc9: {
	jsr sub_7e6f83
	and #$0f
	bne label_7e6ffa
	lda #$00
	ldy #sub_7e705a
	jsr sub_7e74dc	
	rep #$20
	lda #data_7e7142
	sta $3500,x
	sep #$20
	phx
	jsr sub_7e6f83
	plx
	and #$1f
	adc #$68
	sta $3301,x
	phx
	jsr sub_7e6f83
	plx
	and #$1f
	adc #$98
	sta $3401,x
label_7e6ffa:
	rts
}

sub_7e6ffb: {
	ldy #$e900
	sty $f3
	lda #$ec
	sta $f5
	ldy #$0000
	sty $f6
	lda #$7f
	sta $f8
	jsl $c2ff6d
	ldy #$0000
	sty $e7
	lda #$7f
	sta $e9
	stz $ed
	stz $ee
	ldy #$0fe0
	sty $eb
	ldy #$3000
	jsr sub_7e7a18	
	ldy #$0fe0
	sty $e7
	lda #$7f
	sta $e9
	stz $ed
	stz $ee
	ldy #$0700
	sty $eb
	ldy #$0000
	jsr sub_7e7a18	
	ldy #$16e0
	sty $e7
	lda #$7f
	sta $e9
	stz $ed
	stz $ee
	ldy #$0de0
	sty $eb
	ldy #$6000
	jsr sub_7e7a18	
	rts
}

sub_7e705a: {
	tax
	jmp (jump_table_7e705e,x)
}

jump_table_7e705e: {
	dw sub_7e7062
	dw sub_7e706a
}

sub_7e7062: {
	ldx $1d
	inc $3a00,x
	jsr sub_7e755f	
sub_7e706a:
	ldx $1d
	lda $3b01,x
	cmp #$fe
	beq label_7e7078
	jsr sub_7e758d
	sec
	rts
label_7e7078:
	clc
	rts
}

data_7e707a: {
	dw data_7e707d : db $fe
}

data_7e707d: {
	db $0a,$90,$00,$12,$38,$a0,$00,$14,$38,$b0,$00,$16,$38,$80,$10,$30,$38,$90,$10,$32,$38,$a0,$10,$34,$38,$b0,$10,$36,$38,$80,$20,$50,$38,$90,$20,$52,$38,$a0,$20,$54,$38
}

data_7e70a6: {
	dw data_7e70a9 : db $fe
}

data_7e70a9: {
	db $0c,$80,$18,$10,$38,$90,$00,$18,$38,$a0,$00,$1a,$38,$b0,$00,$1c,$38,$c0,$00,$1e,$38,$90,$10,$38,$38,$a0,$10,$3a,$38,$b0,$10,$3c,$38,$c0,$10,$3e,$38,$a0,$20,$5a,$38,$b0,$20,$5c,$38,$c0,$20,$5e,$38
}

data_7e70da: {
	dw data_7e70e7 : db $08
	dw data_7e70ec : db $08
	dw data_7e70f1 : db $08
	dw data_7e70e6 : db $fe
}

data_7e70e6: {
	db $00
}

data_7e70e7: {
	db $01
	db $00,$00,$00,$3a
}

data_7e70ec: {
	db $01
	db $00,$00,$01,$3a
}

data_7e70f1: {
	db $01
	db $00,$00,$02,$3a
}

data_7e70f6: {
	dw data_7e7102 : db $08
	dw data_7e7107 : db $08
	dw data_7e710c : db $08
	dw data_7e710c : db $fe
}

data_7e7102: {
	db $01
	db $04,$04,$03,$3a
}

data_7e7107: {
	db $01
	db $02,$02,$04,$3a
}

data_7e710c: {
	db $03
	db $00,$00,$05,$3a
	db $08,$00,$06,$3a
	db $00,$08,$07,$3a
}

data_7e7119: {
	dw data_7e712e : db $08
	dw data_7e7133 : db $08
	dw data_7e7138 : db $08
	dw data_7e713d : db $08
	dw data_7e7138 : db $08
	dw data_7e7133 : db $08
	dw data_7e712e : db $ff
}

data_7e712e: {
	db $01
	db $00,$00,$08,$3a
}

data_7e7133: {
	db $01
	db $00,$00,$09,$3a
}

data_7e7138: {
	db $01
	db $00,$00,$0a,$3a
}

data_7e713d: {
	db $01
	db $00,$00,$0b,$3a
}

data_7e7142: {
	dw data_7e7151 : db $08
	dw data_7e7156 : db $08
	dw data_7e715f : db $08
	dw data_7e716c : db $08
	dw data_7e716c : db $fe
}

data_7e7151: {
	db $01
	db $00,$00,$0c,$3a
}

data_7e7156: {
	db $02
	db $00,$00,$0c,$3a
	db $08,$00,$0d,$3a
}

data_7e715f: {
	db $03
	db $00,$00,$0c,$3a
	db $08,$00,$0d,$3a
	db $10,$00,$0e,$3a
}

data_7e716c: {
	db $03
	db $00,$00,$0c,$3a
	db $08,$00,$0d,$3a
	db $10,$00,$0e,$3a
}

data_7e7179: {
	db $18,$00,$0f,$3a
}

data_7e717d: {
	dw $1ce7
	dw $7bbd
	dw $777a
	dw $7758
	dw $7317
	dw $6ed4
	dw $668f
	dw $624d
	dw $59e8
	dw $4d86
	dw $3d25
	dw $30e3
	dw $24a3
	dw $1c82
	dw $1862
	dw $1042
}

data_7e719d: {
	db $00,$00,$BF,$26,$FF,$01,$95,$42,$32,$36,$11,$32,$F0,$2D,$CF,$29,$AE,$21,$8D,$1D,$4B,$19,$09,$15,$C8,$10,$A6,$0C,$59,$01,$B2,$00
}

data_7e71bd: {
	dw $0000
	dw $29cf
	dw $21ae
	dw $4295
	dw $3632
	dw $3211
	dw $2df0
	dw $29cf
	dw $21ae
	dw $1d8d
	dw $194b
	dw $1509
	dw $10c8
	dw $0ca6
	dw $29cf
	dw $21ae
}

data_7e71dd: {
	dw $0000
	dw $477f
	dw $26bf
	dw $01ff
	dw $0159
	dw $00b2
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
}

sub_7e71fd: {
	lda #$81
	sta $004200	
	sta $17	
	cli	
label_7e7206:
	lda $17	
	bne label_7e7206	
	sei	
	lda $32	
	sta $002100	
	lda $31	
	sta $00420c	
	jsr sub_7e721b	
	rts
}

sub_7e721b: {
	rep #$20
	lda $08	
	eor #$ffff	
	and $04	
	sta $06	
	ldy $04	
	sty $08	
	lda $004218	
	sta $04	
	sep #$20
	rts
}

sub_7e7233: {
	php
	rep #$30
	pha
	phx
	phy
	phb
	phd
	sep #$20
	lda $4210	
	lda #$00
	pha
	plb
	ldx #$0000
	phx
	pld
	lda $17	
	beq label_7e7259
	jsr sub_7e7265	
	ldy $15	
	beq label_7e7257
	dey
	sty $15
label_7e7257:
	inc $18	
label_7e7259:
	stz $17	
	rep #$30
	pld
	plb
	ply
	plx
	pla
	plp
	rti
}

sub_7e7264: {
	rti
}

sub_7e7265: {
	stz $420c	
	stz $420b	
	lda $25	
	sta $210d
	lda $26	
	sta $210d
	lda $27	
	sta $210e
	lda $28	
	sta $210e
	lda $29	
	sta $210f
	lda $2a	
	sta $210f
	lda $2b	
	sta $2110
	lda $2c	
	sta $2110
	lda $2d	
	sta $2111
	lda $2e	
	sta $2111
	lda $2f	
	sta $2112
	lda $30	
	sta $2112
	jsr sub_7e72b0	
	jsr sub_7e72fe	
	jmp sub_7e72d5	
}

sub_7e72b0: {
	ldx $00
	stx $2102	
	txa
	sta $4304	
	lda #$02
	sta $4300	
	lda #$04
	sta $4301	
	ldy #$0300
	sty $4302	
	ldy #$0220
	sty $4305	
	lda #$01
	sta $420b	
	rts
}

sub_7e72d5: {
	ldy $10	
	cpy #$ffff	
	beq label_7e72fd
	sty $2116	
	lda #$01
	sta $4300	
	lda #$18
	sta $4301	
	ldy $12
	sty $4302	
	lda $14
	sta $4304	
	ldy $0e
	sty $4305	
	lda #$01
	sta $420b	
label_7e72fd:
	rts
}

sub_7e72fe: {
	lda $00
	sta $2121	
	lda #$02
	sta $4300	
	lda #$22
	sta $4301	
	ldy #$3000
	sty $4302	
	lda #$7e
	sta $4304	
	ldy #$0200
	sty $4305	
	lda #$01
	sta $420b	
	rts
}

sub_7e7324: {
	stx $e7
	sty $eb
	ldy $00
	rep #$20	
label_7e732c:
	lda ($eb),y
	sta ($e7),y
	iny
	iny
	cpy #$0020
	bne label_7e732c
	sep #$20	
	rts
}

sub_7e733a: {
	pha
	stx $e7
	sty $eb
	lda #$00
	ldy #sub_7e735a
	jsr sub_7e74dc	
	pla
	sta $3901,x
	rep #$20
	lda $e7
	sta $3300,x
	lda $eb
	sta $3400,x
	sep #$20
	rts
}

sub_7e735a: {
	tax
	jmp (jump_table_7e735e,x)
}

jump_table_7e735e: {
	dw sub_7e7362
	dw sub_7e7371
}

sub_7e7362: {
	ldx $1d	
	lda #$1f
	sta $3600,x
	stz $3601,x
	inc $3a00,x	
	sec
	rts
}

sub_7e7371: {
	ldx $1d	
	lda $3900,x
	bne label_7e73a3
	lda $3901,x
	sta $3900,x
	rep #$20	
	lda $3300,x
	sta $e0
	lda $3400,x
	sta $e3
	lda $3600,x
	sta $f1
	jsr sub_7e73a8
	sep #$20	
	ldx $001d	
	lda $3600,x
	beq label_7e73a1
	dec $3600,x
	bne label_7e73a3
label_7e73a1:
	clc
	rts
label_7e73a3:
	dec $3900,x
	sec
	rts
}

sub_7e73a8: {
	ldx #$0010
	ldy $00
label_7e73ad:
	lda ($e0),y
	sta $e7
	lda ($e3),y
	sta $e9
	jsr sub_7e73c2
	lda $e7
	sta ($e0),y
	iny
	iny
	dex
	bne label_7e73ad
	rts
}

sub_7e73c2: {
	lda $e7
	and #$001f
	sta $eb
	lda $e9
	and #$001f
	sec
	sbc $eb
	beq label_7e73df
	bcc label_7e73dd
	cmp $f1
	bcc label_7e73df
	inc $eb
	bra label_7e73df
label_7e73dd:
	dec $eb
label_7e73df:
	lda $e7
	and #$03e0
	sta $ed
	lda $e9
	and #$03e0
	sec
	sbc $ed
	beq label_7e740c
	bcc label_7e7404
	asl a
	asl a
	asl a
	xba
	cmp $f1
	bcc label_7e740c
	clc
	lda $ed
	adc #$0020
	sta $ed
	bra label_7e740c
label_7e7404:
	lda $ed
	sec
	sbc #$0020
	sta $ed
label_7e740c:
	lda $e7
	and #$7c00
	sta $ef
	lda $e9
	and #$7c00
	sec
	sbc $ef
	beq label_7e743c
	bcc label_7e7434
	sep #$20
	xba
	lsr a
	lsr a
	rep #$20
	cmp $f1
	bcc label_7e743c
	clc
	lda $ef
	adc #$0400
	sta $ef
	bra label_7e743c
label_7e7434:
	lda $ef
	sec
	sbc #$0400
	sta $ef
label_7e743c:
	lda $eb
	ora $ed
	ora $ef
	sta $e7
	rts
}

data_7e7445: {
	dw $0000
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
	dw $7fff
}

data_7e7465: {
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
}

sub_7e7485: {
	ldx $00
	stx $1d
	stx $1f
	rep #$20
	jsr sub_7e74b7	
	sep #$10
	tdc
	tax
label_7e7494:
	stz $3200,x
	stz $3a00,x
	stz $3c00,x
	stz $3300,x
	stz $3400,x
	stz $3700,x
	stz $3800,x
	stz $3900,x
	inx
	inx
	cpx #$00
	bne label_7e7494
	sep #$20
	rep #$10
	rts
}

sub_7e74b7: {
	tdc
	tax
label_7e74b9:
	lda #$e001
	sta $0300,x
	inx
	inx
	lda #$0001
	sta $0300,x
	inx
	inx
	cpx #$0200
	bne label_7e74b9
	ldy $00
	tya
label_7e74d1:
	sta $0500,y
	iny
	iny
	cpy #$0020
	bne label_7e74d1
	rts
}

;CreateTask:
sub_7e74dc: {
	jsr sub_7e74e9	
	sep #$20	
	lda $1d	
	sta $3c01,x
	inc $1f	
	rts
}

sub_7e74e9: {
	xba
	lda #$00
	xba	
	asl a
	asl a
	asl a
	asl a
	asl a
	rep #$20	
	tax
label_7e74f5:
	lda $3200,x	
	bne label_7e74ff
	tya
	sta $3200,x
	rts
label_7e74ff:
	inx
	inx
	cpx #$0100	
	bne label_7e74f5	
	dex
	dex
	tya
	sta $3200,x
label_7e750c:
	bra label_7e750c	
	rts
}

sub_7e750f: {
	ldx #$0300
	stx $0a
	ldx #$0500
	stx $0c
	lda #$03
	sta $23
	stz $24
	ldx #$0080
	stx $21
	ldx $00
	rep #$20
label_7e7528:
	lda $3200,x	
	beq label_7e754f	
	stx $1d	
	phx	
	sta $1b	
	sep #$20	
	tdc	
	lda $3a00,x	
	asl a	
	jsr sub_7e755c	
	rep #$20	
	plx	
	bcs label_7e754f	
	stz $3200,x	
	stz $3a00,x	
	stz $3c00,x	
	stz $3900,x	
	dec $1f	
label_7e754f:
	inx	
	inx
	cpx #$0100	
	bne label_7e7528	
	jsr sub_7e768f	
	sep #$20
	rts
}

sub_7e755c: {
	jmp ($001b)	
}

sub_7e755f: {
	tdc
	sta $3b00,x	
	rep #$20
	lda $3500,x
	sta $eb
	sep #$20
	ldy #$0002
	lda ($eb),y
	sta $3b01,x
	rts
}

sub_7e7575: {
	phx
	jsr sub_7e7593
	sep #$10
	lda $3b00,x
	tay
	rep #$20
	lda ($eb),y
	rep #$10
	tay
	sep #$20
	plx
	jsr sub_7e7324	
	rts
}

sub_7e758d: {
	jsr sub_7e7593
	jmp sub_7e75da
}

sub_7e7593: {
	ldx $1d	
	ldy $00
	rep #$20
	lda $3500,x	
	sta $eb
	sep #$20
label_7e75a0:
	lda $3b01,x	
	cmp #$fe
	beq label_7e75c9	
	cmp #$ff
	bne label_7e75b3	
	stz $3b00,x	
	jsr sub_7e75ca
	bra label_7e75a0
label_7e75b3:
	lda $3b01,x	
	bne label_7e75c6	
	lda $3b00,x	
	clc
	adc #$03	
	sta $3b00,x	
	jsr sub_7e75ca
	bra label_7e75a0
label_7e75c6:
	dec $3b01,x	
label_7e75c9:
	rts
}

sub_7e75ca: {
	sep #$10
	lda $3b00,x	
	tay
	iny
	iny
	lda ($eb),y
	sta $3b01,x
	rep #$10
	rts
}

sub_7e75da: {
	sep #$10
	lda $3b00,x	
	tay
	rep #$20
	lda ($eb),y
	sta $e7
	iny
	iny
	sep #$20
	rep #$10
	ldy $00
	lda $21
	beq label_7e765c
	lda ($e7),y
	sta $e6
	beq label_7e765c
	iny
label_7e75f9:
	lda ($e7),y
	sta $e0
	bpl label_7e7611
	tdc
	lda $23
	tax
	lda data_7e768b,x
	clc
	adc $24
	sta $24
	sta ($0c)
	ldx $1d	
	bra label_7e7615
label_7e7611:
	lda $24
	sta ($0c)
label_7e7615:
	lda $e0
	and #$7f
	sta $e0
	lda $3a01,x
	bit #$01
	beq label_7e762f
	stz $e1
	rep #$20
	lda $e0
	sec
	sbc $25
	sta $e0
	sep #$20
label_7e762f:
	jsr sub_7e765d
	dec $23
	bpl label_7e7640
	lda #$03
	sta $23
	stz $24
	rep #$20
	inc $0c
label_7e7640:
	rep #$20
	lda $e0
	sta ($0a)
	inc $0a
	inc $0a
	lda $e2
	sta ($0a)
	inc $0a
	inc $0a
	sep #$20
	dec $21
	beq label_7e765c
	dec $e6
	bne label_7e75f9
label_7e765c:
	rts
}

sub_7e765d: {
	lda $e0
	clc
	adc $3301,x
	sta $e0
	iny
	lda ($e7),y
	clc
	adc $3401,x
	sta $e1
	iny
	lda ($e7),y
	sta $e2
	iny
	lda $3a01,x
	bit #$02
	beq label_7e7681
	lda ($e7),y
	ora #$40
	bra label_7e7683
label_7e7681:
	lda ($e7),y
label_7e7683:
	clc
	adc $3c00,x
	sta $e3
	iny
	rts
}

data_7e768b: {
	db $80
	db $20
	db $08
	db $02
}
sub_7e768f: {
	ldy $21
	beq label_7e76a3	
	ldx #$01fc
	lda #$e001
label_7e7699:
	sta $0300,x
	dex
	dex
	dex
	dex
	dey
	bne label_7e7699
label_7e76a3:
	rts
}

sub_7e76a4: {
	ldx $1d
	ldy $00
	rep #$20
	lda $3500,x
	sta $eb
	sep #$20
label_7e76b1:
	lda $3b01,x
	cmp #$fe
	beq label_7e76da
	cmp #$ff
	bne label_7e76c4
	stz $3b00,x
	jsr sub_7e75ca
	bra label_7e76b1
label_7e76c4:
	lda $3b01,x
	bne label_7e76d7
	lda $3b00,x
	clc 
	adc #$03
	sta $3b00,x
	jsr sub_7e75ca
	bra label_7e76b1
label_7e76d7:
	dec $3b01,x
label_7e76da:
	rts
} 

sub_7e76db: {
	tax
	jmp (jump_table_7e76df,x)
}

jump_table_7e76df: {
	dw sub_7e76e3
	dw sub_7e76eb
}

sub_7e76e3: {
	ldx $1d	
	inc $3a00,x
	jsr sub_7e755f	
sub_7e76eb:
	lda $33
	bit #$40
	bne label_7e770f
	ldx $1d	
	rep #$21
	lda $3300,x
	adc $3700,x
	sta $3300,x
	lda $3400,x
	clc
	adc $3800,x
	sta $3400,x
	sep #$20
	jsr sub_7e758d
	sec
	rts
label_7e770f:
	clc
	rts
}

sub_7e7711: {
	phb
	lda #$00
	pha
	plb
	tdc
	tay
	sty $2181	
	sty $2102	
	sta $2104	
	sta $2104	
	sta $2106	
	sta $420c	
	sta $420b	
	sta $210d	
	sta $210d	
	sta $210e	
	sta $210e	
	sta $210f	
	sta $210f	
	sta $2110	
	sta $2110	
	sta $2111	
	sta $2111	
	sta $2112	
	sta $2112	
	sta $2113	
	sta $2113	
	sta $2114	
	sta $2114	
	sty $2116	
	sty $2118	
	sta $211a	
	sta $2121	
	sta $2122	
	sta $2122	
	sta $2123	
	sta $2124	
	sta $2125	
	sta $2126	
	sta $2128	
	sta $2127	
	sta $2129	
	sta $212a	
	sta $212b	
	sta $212e	
	sta $212f	
	sta $2133	
	sta $4200	
	sta $4202	
	sta $4203	
	sta $4204	
	sta $4204	
	sta $4205	
	sta $4206	
	sta $4207	
	sta $4207	
	sta $4208	
	sta $4209	
	sta $4209	
	sta $420a	
	sta $420b	
	sta $420c	
	lda #$63
	sta $2101	
	ldx $00
	stx $2102	
	lda #$01
	sta $2105	
	lda #$03
	sta $2107	
	lda #$11
	sta $2108	
	lda #$19
	sta $2109	
	sta $210a	
	lda #$23
	sta $210b	
	lda #$22
	sta $210c	
	lda #$80
	sta $2115	
	lda #$ff
	sta $4201	
	lda #$7e
	sta $2183	
	lda #$1f
	sta $212c	
	lda #$04
	sta $212d	
	lda #$02
	sta $2130	
	lda #$42
	sta $2131	
	lda #$e0
	sta $2132	
	plb
	rts
}

sub_7e7815: {
	tdc
	tay
	sty $25	
	sty $27	
	sty $29	
	sty $2b	
	sty $2d	
	sty $2f	
	sty $15
	sty $04	
	sty $06	
	sty $08	
	sta $33
	sta $18	
	sta $19	
	sta $1a
	sta $17	
	sta $31	
	sta $32	
	sta $36
	sty $12	
	sty $0e	
	lda #$7e
	sta $14	
	ldy #$ffff
	sty $10	
	jsr sub_7e7864	
	jsr sub_7e7870	
	rts
}

sub_7e784f: {
	rep #$20
	tdc
	sta $002116	
	tay
label_7e7857:
	sta $002118	
	iny
	cpy #$8000
	bne label_7e7857
	sep #$20
	rts
}

sub_7e7864: {
	tdc
	tax
label_7e7866:
	stz $3d00,x
	inx
	cpx #$0a80
	bne label_7e7866
	rts
}

sub_7e7870: {
	rep #$20
	tdc
	tax
	lda #$011f
label_7e7877:
	sta $3d02,x
	inx
	inx
	inx
	inx
	cpx #$0380
	bne label_7e7877
if not(defined("LANG_EN"))
;        clr_ax
	tdc
	tax
s7811:  sta     $3ea2,x
        inx
	inx
	inx
	inx
        cpx.w     #$0020
        bne     s7811
endif
	tdc
	tax
	lda #$0100
label_7e7888:
	sta $3dfc,x
	inx
	inx
	inx
	inx
if defined("LANG_EN")
	cpx #$0104
else
        cpx.w     #$00c4
endif
	bne label_7e7888
	sep #$20
	rts
}

sub_7e7897: {
	phb
	lda #$00
	pha
	plb
	lda #$43
	sta $4320	
	sta $4330	
	sta $4340	
	lda #$7e
	sta $4324	
	sta $4334	
	sta $4344	
	lda #$7e
	sta $4327	
	sta $4337	
	sta $4347	
	lda #$0d
	sta $4321	
	ldy #data_7e78e4
	sty $4322	
	lda #$0f
	sta $4331	
	ldy #data_7e78eb
	sty $4332	
	lda #$11
	sta $4341	
	ldy #data_7e78f2
	sty $4342	
	lda #$1c
	tsb $31	
	plb
	rts
}

data_7e78e4: {
	db $e4,$00,$3d,$fb,$90,$3e,$00
}

data_7e78eb: {
	db $e4,$80,$40,$fb,$10,$42,$00
}

data_7e78f2: {
	db $e4,$00,$44,$fb,$90,$45,$00,$68
}

sub_7e78fa: {
	jsr sub_7e7a01	; DecodeTitleOpeningGfx
	ldy #$7930							; source = $7f7930 (flames tile layout, bg3)
	sty $e7
	lda #$7f
	sta $e9
;	ldy #$0200
if defined("LANG_EN")
        ldy     #$0200                  ; size = $0200
else
        ldy     #$01c0                  ; size = $01c0
endif
	sty $eb
	ldy #$1400
	sty $ed
	ldy #$1900
	jsr sub_7e7a18	; TfrVRAM
;	ldy #$7b30
if defined("LANG_EN")
        ldy     #$7b30                  ; source = $7f7b30 (flames graphics, bg3)
else
        ldy     #$7af0
endif
	sty $e7
	lda #$7f
	sta $e9
	ldy #$06b0
	sty $eb
	stz $ed
	stz $ee
	ldy #$2000
	jsr sub_7e7a18	
;	ldy #$81e0
if defined("LANG_EN")
        ldy     #$81e0                  ; source = $7f81e0 (flames tile layout, bg2)
else
        ldy     #$81a0
endif
	sty $e7
	lda #$7f
	sta $e9
;	ldy #$0200
if defined("LANG_EN")
        ldy     #$0200                  ; size = $0200
else
        ldy     #$01c0                  ; size = $01c0
endif
	sty $eb
	ldy #$0080
	sty $ed
	ldy #$1100
	jsr sub_7e7a18	
	ldy #$1bc0
	sty $e7
	lda #$7f
	sta $e9
	ldy #$1800
	sty $eb
	stz $ed
	stz $ee
	ldy #$0000
	jsr sub_7e7a18	
	ldy #$33c0
	sty $e7
	lda #$7f
	sta $e9
	ldy #$4200
	sty $eb
	stz $ed
	stz $ee
	ldy #$4000
	jsr sub_7e7a18	
	tdc
	tax
	rep #$20
	lda $dfdae1,x
	clc
	adc #$db00
	sta $e7
	inx
	inx
	sep #$20
	lda $dfdae1,x
	adc #$df
	sta $e9
	ldy #$2000
	sty $eb
	stz $ed
	stz $ee
	ldy #$3000
	jsr sub_7e7a18	
;	ldy #$83e0
if defined("LANG_EN")
        ldy     #$83e0                  ; source = $7f83e0 (flames graphics, 4bpp)
else
        ldy     #$8360
endif
	sty $e7
	lda #$7f
	sta $e9
	ldy #$0800
	sty $eb
	stz $ed
	stz $ee
	ldy #$2800
	jsr sub_7e7a18	
	jsr sub_7e7a33	
;	ldy #$8be0
if defined("LANG_EN")
        ldy     #$8be0                  ; source = $7f8be0
else
        ldy     #$8b60
endif
	sty $e7
	lda #$7f
	sta $e9
;	ldy #$0200
;	sty $eb
;	ldy #$0777
if defined("LANG_EN")
        ldy     #$0200                  ; size = $0200
        sty     $eb
        ldy     #$0777
else
        ldy     #$0140                  ; size = $0140
        sty     $eb
        ldy     #$0780
endif
	sty $ed
	ldy #$0500
	jsr sub_7e7a18	
;	ldy #$8de0
if defined("LANG_EN")
        ldy     #$8de0                  ; source = $7f8de0
else
        ldy     #$8ce0
endif
	sty $e7
	lda #$7f
	sta $e9
;	ldy #$1110
if defined("LANG_EN")
        ldy     #$1110                  ; size = $1110
else
        ldy     #$0c00
endif
	sty $eb
	stz $ed
	stz $ee
if defined("LANG_EN")
	ldy #$6770
else
        ldy     #$6800
endif
	jsr sub_7e7a18	
;	ldy #$9ef0
if defined("LANG_EN")
        ldy     #$9ef0                  ; source = $7f9ef0
else
        ldy     #$98e0
endif
	sty $e7
	lda #$7f
	sta $e9
;	ldy #$0fb8
if defined("LANG_EN")
        ldy     #$0fb8                  ; size = $0fb8
else
        ldy     #$1160
endif
	sty $eb
	ldy #$7000
	jsr sub_7e7a18	
	rts
}

sub_7e7a01: {
	ldy #$f000
	sty $f3
	lda #$d8
	sta $f5
	ldy #$0000
	sty $f6
	lda #$7f
	sta $f8
	jsl $c2ff6d
	rts
}

sub_7e7a18: {
	rep #$20
	tya
	sta $002116	
	tdc
	tay
label_7e7a21:
	lda [$e7],y
	clc
	adc $ed
	sta $002118	
	iny
	iny
	cpy $eb
	bne label_7e7a21
	sep #$20
	rts
}

sub_7e7a33: {
	rep #$20
	lda #$0400
	sta $002116	
	jsr sub_7e7a4c	
	lda #$0c00
	sta $002116	
	jsr sub_7e7a4c	
	sep #$20
	rts
}

sub_7e7a4c: {
	tdc
	tay
if defined("LANG_EN")
	lda #$0777
else
        lda     #$0787
endif
label_7e7a51:
	sta $002118	
	iny
	cpy #$0400
	bne label_7e7a51
	rts
}

; TitleTextAnim1
data_7e7a5c: {
;	dw data_7e7a62 : db $fe
	dw TitleTextSprite1 : db $fe
}

; TitleTextAnim2
data_7e7a5f: {
;	dw data_7e7a97 : db $fe
	dw TitleTextSprite2 : db $fe
}

if defined("LANG_EN")

;data_7e7a62: {
TitleTextSprite1: {
	db $0d								; "(c)1994 Square"
	db $00,$00,$00,$33
	db $10,$00,$02,$33
	db $20,$00,$04,$33
	db $30,$00,$06,$33
	db $40,$00,$08,$33
	db $58,$00,$2a,$33						; "Co.,Ltd"
	db $68,$00,$2c,$33
	db $78,$00,$2e,$33
	db $00,$10,$20,$33						; "LICENSED BY"
	db $10,$10,$22,$33
	db $20,$10,$24,$33
	db $30,$10,$26,$33
	db $40,$10,$28,$33
}

;data_7e7a97: {
TitleTextSprite2: {
	db $04								; "NINTENDO"
	db $00,$10,$40,$33
	db $10,$10,$42,$33
	db $20,$10,$44,$33
	db $30,$10,$46,$33
}

else

TitleTextSprite1: {
s79fc:  db   13
        db   $a8,$00,$00,$31
        db   $88,$20,$04,$31
        db   $a8,$20,$08,$31
        db   $48,$00,$0c,$31
        db   $58,$00,$0e,$31
        db   $48,$20,$2c,$31
        db   $48,$10,$2e,$31
        db   $00,$40,$40,$31
        db   $10,$40,$42,$31
        db   $20,$40,$44,$31
        db   $30,$40,$46,$31
        db   $40,$40,$48,$31
        db   $18,$10,$4a,$31
}

TitleTextSprite2: {
s7a31:  db   6
        db   $00,$00,$80,$33
        db   $10,$00,$82,$33
        db   $28,$00,$84,$33
        db   $38,$00,$86,$33
        db   $48,$00,$88,$33
        db   $58,$00,$8a,$33
}

endif

sub_7e7aa8: {
	jsr sub_7e7a01	
	ldy #$0940
	sty $e7
	lda #$7f
	sta $e9
	ldy #$b000
	sty $eb
	lda #$7f
	sta $ed
	ldy #$0400
	sty $ef
	jsr sub_7e62cc	
	ldy #$0000
	sty $e7
	lda #$7f
	sta $e9
	ldy #$0940
	sty $eb
	stz $ed
	stz $ee
	ldy #$6400
	jsr sub_7e7a18	
	ldy #$53c0
	sty $e7
	lda #$7f
	sta $e9	
	ldy #$2200
	sty $eb
	stz $ed
	stz $ee
	ldy #$4000
	jsr sub_7e7a18	
	ldy #$23c0
	sty $e7
	lda #$7f
	sta $e9	
	ldy #$0800
	sty $eb
	ldy #$2000
	sty $ed
	ldy #$7c00
	jsr sub_7e7a18	
	jsr sub_7e7b2a
	ldy #$75c0
	sty $e7
	lda #$7f
	sta $e9	
	ldy #$0370
	sty $eb
	stz $ed
	stz $ee
	ldy #$7000
	jsr sub_7e7a18	
	rts
}

sub_7e7b2a: {
	rep #$20
	lda #$7c00
	sta $002116	
	ldx #$0220
	lda #$3e87
label_7e7b39:
	sta $002118	
	dex
	bne label_7e7b39
	sep #$20
	rts
}

if not(defined("LANG_EN"))

s7ae5:  dw   $294A,$1448,$104A,$106A,$106C,$084E,$0451,$0453
        dw   $0056,$0078,$009A,$7C1F,$7C1F,$7C1F,$7C1F,$0821

endif

if defined("LANG_EN")

data_7e7b43: {
	dw $0000
	dw $0000
	dw $24e8
	dw $2086
	dw $1063
	dw $77bd
	dw $4b5c
	dw $2afa
	dw $0000
	dw $2676
	dw $21d4
	dw $15b2
	dw $0000
	dw $0ceb
	dw $1088
	dw $1063
}

else

data_7e7b43: {
s7b05:  dw   $0000,$6F5A,$5AB5,$4610,$39CD,$1CE7,$0453,$66DE
        dw   $565B,$45B4,$352E,$0000,$0000,$0000,$0000,$0000
}

endif

data_7e7b63: {
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
	dw $1063
}

data_7e7b83: {
	dw $1063
	dw $6f9f
	dw $575f
	dw $46ff
	dw $367e
	dw $261e
	dw $3219
	dw $21bb
	dw $159b
	dw $1d76
	dw $1136
	dw $10f1
	dw $08b0
	dw $08ad
	dw $088b
	dw $0050
}

if defined("LANG_EN")

data_7e7ba3: {
	dw $0000
	dw $1063
	dw $77bd
	dw $0000
	dw $0000
	dw $261e
	dw $159b
	dw $10f1
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
}

else

data_7e7ba3: {
        dw   $2108,$1063,$1063,$1063,$0000,$261e,$159b,$10f1
        dw   $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
}

endif

data_7e7bc3: {
	dw $2108
	dw $1063
	dw $1063
	dw $1063
	dw $0000
	dw $261e
	dw $159b
	dw $10f1
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
}

data_7e7be3: {
	dw $0000
	dw $1cc6
	dw $1ca5
	dw $1c85
	dw $1884
	dw $1464
	dw $1063
	dw $0000
	dw $1063
	dw $0000
	dw $261e
	dw $159b
	dw $10f1
	dw $565b
	dw $45b4
	dw $352e
}

data_7e7c03: {
	dw $0000
	dw $66de
	dw $565b
	dw $45b4
	dw $352e
	dw $3108
	dw $2ce8
	dw $28c7
	dw $24a6
	dw $1ca5
	dw $1884
	dw $1464
	dw $1063
	dw $21bb
	dw $1136
	dw $737f
}

data_7e7c23: {
	dw $0000
	dw $66de
	dw $565b
	dw $45b4
	dw $352e
	dw $3108
	dw $2ce8
	dw $28c7
	dw $24a6
	dw $1ca5
	dw $1884
	dw $1464
	dw $1063
	dw $737f
	dw $737f
	dw $737f
}

data_7e7c43: {								; narshe palette (lights on)
	dw $0000
	dw $367e
	dw $1136
	dw $0c42
	dw $0841
	dw $45cd
	dw $3d6a
	dw $3528
	dw $2528
	dw $2ce7
	dw $24e6
	dw $20c5
	dw $18c5
	dw $18a3
	dw $1483
	dw $1063
}
