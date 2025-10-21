; X_string macro collection (where X can be a, b1, b4, or d)
; --------------------------------------------------------------------------------------------------
;
; Author: Ramsis
; Usage: see examples
; Effect: maps dialogue/text string, and adds appropriate string label
;
; Examples:
;	b4_string "Hello!"						; create battle dialogue string label and map battle dialogue string
;	d_string "Goodbye!"						; create dialogue string label and map dialogue string

.MACRO a_string ARGS String

.IF NARGS != 1 | \?1 != ARG_STRING

.FAIL "The '\.' macro takes a string as an argument."

.ENDIF

AttackMessageString{%.3d{COUNT}}:					; create label for current AttackMessageString
	.STRINGMAP battle_dialogue, String

	incr	&COUNT							; increment string number for next label

.ENDM



.MACRO b1_string ARGS String

.IF NARGS != 1 | \?1 != ARG_STRING

.FAIL "The '\.' macro takes a string as an argument."

.ENDIF

MonsterDialogueString{%.3d{COUNT}}:					; create label for current MonsterDialogueString
	.STRINGMAP battle_dialogue, String

	incr	&COUNT							; increment string number for next label

.ENDM



.MACRO b4_string ARGS String

.IF NARGS != 1 | \?1 != ARG_STRING

.FAIL "The '\.' macro takes a string as an argument."

.ENDIF

BattleDialogueString{%.3d{COUNT}}:					; create label for current BattleDialogueString
	.STRINGMAP battle_dialogue, String

	incr	&COUNT							; increment string number for next label

.ENDM



.MACRO d_string ARGS String

.IF NARGS != 1 | \?1 != ARG_STRING

.FAIL "The '\.' macro takes a string as an argument."

.ENDIF

DialogueString{%.4d{COUNT}}:						; create label for current DialogueString
	.STRINGMAP dialogue, String

	incr	&COUNT							; increment string number for next label

.ENDM



; incr
; --------------------------------------------------------------------------------------------------
;
; Author: Ramsis (based on the WLA DX documentation by Ville Helin)
; Usage: incr &<definition>
; Effect: increments .DEFINEd number

.MACRO incr ARGS Definition

.IF NARGS != 1 | \?1 != ARG_LABEL

.FAIL "The '\.' macro takes a .DEFINEd number as an argument."

.ENDIF

.REDEFINE \1 = ?1 + 1
;.REDEFINE Definition = ?Definition + 1					; no work :-(

.ENDM
