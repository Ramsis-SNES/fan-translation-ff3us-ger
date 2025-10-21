; Reminder (these are .DEFINEd in the base ASM file, we just follow their order in the ROM here)
;
; kDialoguePointers		$CCE600
; kMonsterDialoguePointers	$CFDFE0
; kBattleDialoguePointers	$D0D000
; kAttackMessagePointers	$D1F7A0
;
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



.BANK bankbyte(kMonsterDialoguePointers) & $3F SLOT 0
.ORG loword(kMonsterDialoguePointers)

.SECTION "1-line battle dialogue aka monster dialogue pointers" OVERWRITE

MonsterDialoguePointers:

.REPEAT 141 INDEX COUNT

	.DW MonsterDialogueString{%.3d{COUNT}}				; create pointers for monster dialogue strings

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
