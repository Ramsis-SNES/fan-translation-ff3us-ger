; CHANGEME Maybe put pointer sections before respective text blocks (logical vs. ROM-based data organization)?

.BANK bankbyte(kDialoguePointers) & $3F SLOT 0
.ORG loword(kDialoguePointers)

.SECTION "Dialogue pointers" OVERWRITE

DialoguePointersSize1:
	.DW (DialoguePointers@Block2 - DialoguePointersSize1) / 2	; hardcode no. of pointers in pointer block 1 (as in the original game)

DialoguePointers:
	.DW $0000							; as in the original game (don't remove, needed for correct pointer-to-string relation)

@Block1:

.REPEAT kStringCountBank1 INDEX COUNT

	.DW DialogueString{%.4d{COUNT}}					; create pointers for dialogue strings in bank 1

.ENDR

@Block2:

.REPEAT kStringCountBank2 START kStringCountBank1 INDEX COUNT

	.DW DialogueString{%.4d{COUNT}}					; create pointers for dialogue strings in bank 2

.ENDR

@Block3:

.REPEAT kStringCountBank3 START kStringCountBank2 + kStringCountBank1 INDEX COUNT

	.DW DialogueString{%.4d{COUNT}}					; create pointers for dialogue strings in bank 3

.ENDR

;DialoguePointers_END:

.ENDS



.BANK bankbyte(kRareItemDescPointers) & $3F SLOT 0
.ORG loword(kRareItemDescPointers)

.SECTION "Rare Item description pointers" OVERWRITE

.REPEAT 20 INDEX COUNT

	.DW RareItemDescString{%.2d{COUNT}} - loword(kRareItemDescriptions)	; create pointers for Rare Item descriptions, subtract offset to account for zero-based access

.ENDR

.ENDS



.BANK bankbyte(kMonsterDialoguePointers) & $3F SLOT 0
.ORG loword(kMonsterDialoguePointers)

.SECTION "1-line battle dialogue aka monster dialogue pointers" OVERWRITE

MonsterDialoguePointers:

.REPEAT 141 INDEX COUNT

	.DW MonsterDialogueString{%.3d{COUNT}}				; create pointers for monster dialogue strings

.ENDR

.ENDS



.BANK bankbyte(kEsperAttDescPointers) & $3F SLOT 0
.ORG loword(kEsperAttDescPointers)

.SECTION "Esper attack description pointers" OVERWRITE

EsperAttDescPointers:

.REPEAT 27 INDEX COUNT

	.DW EsperAttackDescString{%.2d{COUNT}} - loword(kEsperAttDescriptions)	; create pointers for Esper attack descriptions, subtract offset to account for zero-based access

.ENDR

.ENDS



.BANK bankbyte(kBlitzDescPointers) & $3F SLOT 0
.ORG loword(kBlitzDescPointers)

.SECTION "Blitz description pointers" OVERWRITE

BlitzDescPointers:

.REPEAT 8 INDEX COUNT

	.DW BlitzDescString{%.2d{COUNT}} - loword(kBlitzDescriptions)	; create pointers for Blitz descriptions, subtract offset to account for zero-based access

.ENDR

.ENDS



.BANK bankbyte(kSwdTechDescPointers) & $3F SLOT 0
.ORG loword(kSwdTechDescPointers)

.SECTION "SwdTech description pointers" OVERWRITE

SwdTechDescPointers:

.REPEAT 8 INDEX COUNT

	.DW SwdTechDescString{%.2d{COUNT}} - loword(kSwdTechDescriptions)	; create pointers for SwdTech descriptions, subtract offset to account for zero-based access

.ENDR

.ENDS



.BANK bankbyte(kBattleDialoguePointers) & $3F SLOT 0
.ORG loword(kBattleDialoguePointers)

.SECTION "4-line battle dialogue pointers" OVERWRITE

BattleDialoguePointers:

.REPEAT 256 INDEX COUNT

	.DW BattleDialogueString{%.3d{COUNT}}				; create pointers for battle dialogue strings

.ENDR

.ENDS



.BANK bankbyte(kAttackMessagePointers) & $3F SLOT 0
.ORG loword(kAttackMessagePointers)

.SECTION "1-line attack message pointers" OVERWRITE

AttackMessagePointers:

.REPEAT 254 INDEX COUNT

	.DW AttackMessageString{%.3d{COUNT}}				; create pointers for attack message strings

.ENDR

.ENDS



.BANK bankbyte(kSpellDescPointers) & $3F SLOT 0
.ORG loword(kSpellDescPointers)

.SECTION "Spell description pointers" OVERWRITE

SpellDescPointers:

.REPEAT 54 INDEX COUNT

	.DW SpellDescString{%.2d{COUNT}} - loword(kSpellDescriptions)	; create pointers for Spell descriptions, subtract offset to account for zero-based access

.ENDR

.ENDS



.BANK bankbyte(kMapNamePointers) & $3F SLOT 0
.ORG loword(kMapNamePointers)

.SECTION "Map (location) name pointers" OVERWRITE

MapNamePointers:

.REPEAT 73 START kMapNamePointerStart INDEX COUNT

	.DW DialogueString{%.4d{COUNT}} - loword(kMapNames)		; create pointers for map name strings, subtract offset to account for zero-based access

.ENDR

.ENDS



.BANK bankbyte(kLoreDescPointers) & $3F SLOT 0
.ORG loword(kLoreDescPointers)

.SECTION "Lore description pointers" OVERWRITE

LoreDescPointers:

.REPEAT 24 INDEX COUNT

	.DW LoreDescString{%.2d{COUNT}} - loword(kLoreDescriptions)	; create pointers for Lore description strings, subtract offset to account for zero-based access

.ENDR

.ENDS



.BANK bankbyte(kItemDescPointers) & $3F SLOT 0
.ORG loword(kItemDescPointers)

.SECTION "Item description pointers" OVERWRITE

ItemDescPointers:

.REPEAT 255 INDEX COUNT							; apparently not 256 (but last pointer has value $1386 in original ROM??)

	.DW ItemDescString{%.3d{COUNT}} - loword(kItemDescriptions)	; create pointers for Item description strings, subtract offset to account for zero-based access

.ENDR

.ENDS



.BANK bankbyte(kEsperBonusDescPointers) & $3F SLOT 0
.ORG loword(kEsperBonusDescPointers)

.SECTION "Esper bonus description pointers" OVERWRITE

EsperBonusDescPointers:

.REPEAT 17 INDEX COUNT

	.DW EsperBonusDescString{%.2d{COUNT}} - loword(kEsperBonusDescriptions)	; create pointers for Esper bonus description strings, subtract offset to account for zero-based access

.ENDR

.ENDS
