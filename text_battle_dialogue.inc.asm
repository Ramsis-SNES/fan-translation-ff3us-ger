; TODO: work out correct table files

.BANK bankbyte(kAttackMessages) & $3F SLOT 0
.ORG loword(kAttackMessages)

.SECTION "1-line attack messages" OVERWRITE

; TODO: see above, then rewrite .DB directives & use macro "a_string"

AttackMessageString000:
	.STRINGMAP battle_dialogue, "Daneben!(END)"

AttackMessageString001:
	.STRINGMAP battle_dialogue, "Er hat nichts.(END)"

AttackMessageString002:
	.STRINGMAP battle_dialogue, "Nicht geklappt!(END)"

AttackMessageString003:
;	.STRINGMAP battle_dialogue, ">H<12(ABS) (mal) 1 geklaut!(END)" ; FIXME (16-bit hex variable)
	.DB $12, $01
	.STRINGMAP battle_dialogue, " (mal) 1 geklaut!(END)"

AttackMessageString004:
	.STRINGMAP battle_dialogue, "Kontrolle nicht möglich!(END)"

AttackMessageString005:
	.STRINGMAP battle_dialogue, "Geht nicht!(END)"

AttackMessageString006:
	.STRINGMAP battle_dialogue, "Gestolpert!(END)"

AttackMessageString007:
	.STRINGMAP battle_dialogue, "Mugu mugu?(END)"

AttackMessageString008:
	.STRINGMAP battle_dialogue, "Kein Geld!(END)"

AttackMessageString009:
	.STRINGMAP battle_dialogue, "Kein Entkommen!!(END)"

AttackMessageString010:
	.STRINGMAP battle_dialogue, "Kein Entkommen(END)"

AttackMessageString011:
	.STRINGMAP battle_dialogue, "Schwach gegen Feuer!(END)"

AttackMessageString012:
	.STRINGMAP battle_dialogue, "Schwach gegen Eis!(END)"

AttackMessageString013:
	.STRINGMAP battle_dialogue, "Schwach gegen Donner!(END)"

AttackMessageString014:
	.STRINGMAP battle_dialogue, "Schwach gegen Gift!(END)"

AttackMessageString015:
	.STRINGMAP battle_dialogue, "Schwach gegen Wind!(END)"

AttackMessageString016:
	.STRINGMAP battle_dialogue, "Schwach gegen Heilig!(END)"

AttackMessageString017:
	.STRINGMAP battle_dialogue, "Schwach gegen Erde!(END)"

AttackMessageString018:
	.STRINGMAP battle_dialogue, "Schwach gegen Wasser!(END)"

AttackMessageString019:
	.STRINGMAP battle_dialogue, "Gleich bist du Staub!!!(END)"

AttackMessageString020:
	.STRINGMAP battle_dialogue, "Besitzen nicht möglich!(END)"

AttackMessageString021:
	.STRINGMAP battle_dialogue, "Schwach gegen Feuer!(END)"

AttackMessageString022:
	.STRINGMAP battle_dialogue, "Schwach gegen Eis!(END)"

AttackMessageString023:
	.STRINGMAP battle_dialogue, "Schwach gegen Donner!(END)"

AttackMessageString024:
	.STRINGMAP battle_dialogue, "Schwach gegen Gift!(END)"

AttackMessageString025:
	.STRINGMAP battle_dialogue, "Schwach gegen Wind!(END)"

AttackMessageString026:
	.STRINGMAP battle_dialogue, "Schwach gegen Heilig!(END)"

AttackMessageString027:
	.STRINGMAP battle_dialogue, "Schwach gegen Erde!(END)"

AttackMessageString028:
	.STRINGMAP battle_dialogue, "Schwach gegen Wasser!(END)"

AttackMessageString029:
;	.STRINGMAP battle_dialogue, "Nimm >H<12(ABS) lieber weg!(END)" ; FIXME (16-bit hex variable)
	.STRINGMAP battle_dialogue, "Nimm "
	.DB $12, $01
	.STRINGMAP battle_dialogue, " lieber weg!(END)"

AttackMessageString030:
;	.STRINGMAP battle_dialogue, ">H<12(ABS) zerquetscht!(END)" ; FIXME (16-bit hex variable)
	.DB $12, $01
	.STRINGMAP battle_dialogue, " zerquetscht!(END)"

AttackMessageString031:
	.STRINGMAP battle_dialogue, "Klappt nicht!(END)"

AttackMessageString032:
;	.STRINGMAP battle_dialogue, ">H<12(ABS) (mal) 1 erhalten (WAIT)(END)" ; FIXME (16-bit hex variable)
	.DB $12, $01
	.STRINGMAP battle_dialogue, " (mal) 1 erhalten (WAIT)(END)"

AttackMessageString033:
;	.STRINGMAP battle_dialogue, ">H<12(ABS) (mal) 1 erhalten(WAIT)(END)" ; FIXME (16-bit hex variable)
	.DB $12, $01
	.STRINGMAP battle_dialogue, " (mal) 1 erhalten(WAIT)(END)"

AttackMessageString034:
	.STRINGMAP battle_dialogue, "Frontalangriff(END)"

AttackMessageString035:
	.STRINGMAP battle_dialogue, "Hinterhalt(END)"

AttackMessageString036:
	.STRINGMAP battle_dialogue, "Seitenangriff(END)"

AttackMessageString037:
	.STRINGMAP battle_dialogue, "Umzingelt(END)"

AttackMessageString038:
;	.STRINGMAP battle_dialogue, ">H<11 GS erhalten(END)" ; FIXME (8-bit hex variable)
	.DB $11
	.STRINGMAP battle_dialogue, " GS erhalten(END)"

AttackMessageString039:
;	.STRINGMAP battle_dialogue, ">H<10 Erfahrungspunkt(e)(WAIT)(END)" ; FIXME (8-bit hex variable)
	.DB $10
	.STRINGMAP battle_dialogue, " Erfahrungspunkt(e)(WAIT)(END)"

AttackMessageString040:
	.STRINGMAP battle_dialogue, "MP leer(END)"

AttackMessageString041:
	.STRINGMAP battle_dialogue, "Besiegt...(WAIT)(END)"

AttackMessageString042:
	.STRINGMAP battle_dialogue, "Zorn des Schildes verraucht!(WAIT)(END)"

AttackMessageString043:
	.STRINGMAP battle_dialogue, "Level halbiert!(END)"

AttackMessageString044:
	.STRINGMAP battle_dialogue, "Gegner nicht scanbar!(END)"

AttackMessageString045:
;	.STRINGMAP battle_dialogue, ">H<1202 gelernt (WAIT)(END)" ; FIXME (16-bit hex variable)
	.DB $12, $02
	.STRINGMAP battle_dialogue, " gelernt (WAIT)(END)"

AttackMessageString046:
;	.STRINGMAP battle_dialogue, ">H<12(END) bekam Level-up(WAIT)(END)" ; FIXME (16-bit hex variable)
	.DB $12, $00
	.STRINGMAP battle_dialogue, " bekam Level-up(WAIT)(END)"

AttackMessageString047:
	.STRINGMAP battle_dialogue, "Kein Schwachpunkt(END)"

AttackMessageString048:
;	.STRINGMAP battle_dialogue, "HP >H<10/>H<11(END)" ; FIXME (8-bit hex variables)
	.STRINGMAP battle_dialogue, "HP "
	.DB $10
	.STRINGMAP battle_dialogue, "/"
	.DB $11, $00

AttackMessageString049:
;	.STRINGMAP battle_dialogue, "MP >H<10/>H<11(END)" ; FIXME (8-bit hex variables)
	.STRINGMAP battle_dialogue, "MP "
	.DB $10
	.STRINGMAP battle_dialogue, "/"
	.DB $11, $00

AttackMessageString050:
;	.STRINGMAP battle_dialogue, ">H<12(END) lernte >H<12Strago(END)" ; FIXME (16-bit hex variables)
	.DB $12, $00
	.STRINGMAP battle_dialogue, " lernte "
	.DB $12, $09, $00 ; CHECKME Strago hex value $09?
;	.DB $12, $02, $07, $00 ; CHECKME Strago hex value $0207?

AttackMessageString051:
	.STRINGMAP battle_dialogue, "Neuen Blitz erdacht!(WAIT)(END)"

AttackMessageString052:
;	.STRINGMAP battle_dialogue, "Level >H<10(END)" ; FIXME (8-bit hex variable)
	.STRINGMAP battle_dialogue, "Level "
	.DB $10, $00

AttackMessageString053:
;	.STRINGMAP battle_dialogue, ">H<10 Magiepunkt(e)(WAIT)(END)" ; FIXME (8-bit hex variable)
	.DB $10
	.STRINGMAP battle_dialogue, " Magiepunkt(e)(WAIT)(END)"

AttackMessageString054:
	.STRINGMAP battle_dialogue, "Banon fiel...(END)"

AttackMessageString055:
	.STRINGMAP battle_dialogue, "Element Feuer ineffektiv(END)"

AttackMessageString056:
	.STRINGMAP battle_dialogue, "Element Eis ineffektiv (END)"

AttackMessageString057:
	.STRINGMAP battle_dialogue, "Element Gewitter ineffektiv  (END)"

AttackMessageString058:
	.STRINGMAP battle_dialogue, "Element Gift ineffektiv   (END)"

AttackMessageString059:
	.STRINGMAP battle_dialogue, "Element Wind ineffektiv (END)"

AttackMessageString060:
	.STRINGMAP battle_dialogue, "Element Heilig ineffektiv(END)"

AttackMessageString061:
	.STRINGMAP battle_dialogue, "Element Erde ineffektiv (END)"

AttackMessageString062:
	.STRINGMAP battle_dialogue, "Element Wasser ineffektiv (END)"

AttackMessageString063:
;	.STRINGMAP battle_dialogue, ">H<11 GS gestohlen!! (END)" ; FIXME (8-bit hex variable)
	.DB $11
	.STRINGMAP battle_dialogue, " GS gestohlen!! (END)"

AttackMessageString064:
	.STRINGMAP battle_dialogue, "Neuen Tanz erlernt!  (WAIT)(END)"

AttackMessageString065:
	.STRINGMAP battle_dialogue, "Geht nicht!! (END)"

AttackMessageString066:
	.STRINGMAP battle_dialogue, "Neue Technik erlernt! (WAIT)(END)"

AttackMessageString067:
	.STRINGMAP battle_dialogue, "Falsche Blitz-Eingabe!(END)"

AttackMessageString068:
	.STRINGMAP battle_dialogue, "“Ogerkeule” zerbrochen!(END)"

AttackMessageString069:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString070:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString071:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString072:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString073:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString074:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString075:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString076:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString077:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString078:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString079:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString080:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString081:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString082:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString083:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString084:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString085:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString086:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString087:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString088:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString089:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString090:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString091:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString092:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString093:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString094:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString095:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString096:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString097:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString098:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString099:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString100:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString101:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString102:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString103:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString104:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString105:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString106:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString107:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString108:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString109:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString110:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString111:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString112:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString113:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString114:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString115:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString116:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString117:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString118:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString119:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString120:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString121:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString122:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString123:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString124:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString125:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString126:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString127:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString128:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString129:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString130:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString131:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString132:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString133:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString134:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString135:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString136:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString137:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString138:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString139:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString140:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString141:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString142:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString143:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString144:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString145:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString146:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString147:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString148:
	.STRINGMAP battle_dialogue, "“Fluch” auf 5er-Level-Personen(END)"

AttackMessageString149:
	.STRINGMAP battle_dialogue, "“Lodern” auf 4er-Level-Personen(END)"

AttackMessageString150:
	.STRINGMAP battle_dialogue, "“Wirren” auf 3er-Level-Personen(END)"

AttackMessageString151:
	.STRINGMAP battle_dialogue, "??? auf magiereflekt. Pers.(END)"

AttackMessageString152:
	.STRINGMAP battle_dialogue, "Magie Heilig auf ?er-Level-Pers. (END)"

AttackMessageString153:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString154:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString155:
	.STRINGMAP battle_dialogue, "Level halbiert (END)"

AttackMessageString156:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString157:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString158:
	.STRINGMAP battle_dialogue, "Status-Tausch  (END)"

AttackMessageString159:
	.STRINGMAP battle_dialogue, "Verwirrung!!(END)"

AttackMessageString160:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString161:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString162:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString163:
	.STRINGMAP battle_dialogue, "Imp...ppp...IMP!!(END)"

AttackMessageString164:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString165:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString166:
	.STRINGMAP battle_dialogue, "Als Zombie zurück! (END)"

AttackMessageString167:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString168:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString169:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString170:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString171:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString172:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString173:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString174:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString175:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString176:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString177:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString178:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString179:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString180:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString181:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString182:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString183:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString184:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString185:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString186:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString187:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString188:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString189:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString190:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString191:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString192:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString193:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString194:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString195:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString196:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString197:
	.STRINGMAP battle_dialogue, "Am besten...gefroren!  (END)"

AttackMessageString198:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString199:
	.STRINGMAP battle_dialogue, "Hilf mir!  (END)"

AttackMessageString200:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString201:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString202:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString203:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString204:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString205:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString206:
	.STRINGMAP battle_dialogue, "Freunde bekämpfen Freunde! Hihi! (END)"

AttackMessageString207:
	.STRINGMAP battle_dialogue, "Am besten...gefroren!  (END)"

AttackMessageString208:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString209:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString210:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString211:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString212:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString213:
	.STRINGMAP battle_dialogue, "Mmmm...mampf, mampf!(END)"

AttackMessageString214:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString215:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString216:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString217:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString218:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString219:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString220:
	.STRINGMAP battle_dialogue, "Ein Fluch, der nie mehr vergeht! (END)"

AttackMessageString221:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString222:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString223:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString224:
	.STRINGMAP battle_dialogue, "ww(END)"

AttackMessageString225:
	.STRINGMAP battle_dialogue, "Führt eure Energie ab, bis......  (END)"

AttackMessageString226:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString227:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString228:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString229:
	.STRINGMAP battle_dialogue, "Am besten...ein Zombie!  (END)"

AttackMessageString230:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString231:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString232:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString233:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString234:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString235:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString236:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString237:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString238:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString239:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString240:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString241:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString242:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString243:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString244:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString245:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString246:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString247:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString248:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString249:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString250:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString251:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString252:
	.STRINGMAP battle_dialogue, "(END)"

AttackMessageString253:
	.STRINGMAP battle_dialogue, "(END)"

.ENDS



.BANK bankbyte(kBattleDialogue) & $3F SLOT 0
.ORG loword(kBattleDialogue)

.SECTION "4-line battle dialogue" OVERWRITE

.REDEFINE COUNT = 0

	b4_string "WEDGE:(ABS)Oh nein!(WAIT)(ABS)Die Sklavenkrone hat eine(ABS)Fehlfunktion…!(WAIT)(END)"
	b4_string "MÄDCHEN:(ABS)…(WAIT)(END)"
	b4_string "WEDGE:(ABS)Dieses Gleißen…!? Ich(ABS)sehe nichts mehr! (WAIT)Uaaaaaahh!!!(WAIT)(END)"
	b4_string "WEDGE:(ABS)Vollausschlag am Bio-Radar…(WAIT)(ABS)Der Esper ist hochgradig(ABS)magioaktiv!(WAIT)(END)"
	b4_string "MÄDCHEN:(ABS)… (WAIT)… (WAIT)… (WAIT)(END)"
	b4_string "BIGGS:(ABS)H…hey!(WAIT)(ABS)Wedge……(ABS)L…laß mich nich' allein!(WAIT)(ABS)W…was is' hier bloß(ABS)los!?(WAIT)(END)"
	b4_string "BIGGS:(ABS)Moment mal!(WAIT)(ABS)Wir sin' doch extra(ABS)instruiert worden……(WAIT)(END)"
	b4_string "WEDGE:(ABS)Stimmt! Und?(WAIT)(END)"
	b4_string "BIGGS:(ABS)(WAIT)Da war doch was mit(ABS)'nem Monster, das Blitze(ABS)frißt…(WAIT)(END)"
	b4_string "WEDGE:(ABS)…und in seinem(ABS)Schneckenhaus speichert!(WAIT)(END)"
	b4_string "BIGGS:(ABS)So is' es. Also vergiß nich':(ABS)(WAIT)Nie das Haus angreifen, (WAIT)okay?(WAIT)(END)"
	b4_string "WEDGE:(ABS)Brauchst du mir nicht zu(ABS)sagen!(WAIT)(END)"
	b4_string "Die sind ein wenig klein,(WAIT)(ABS)aber der Preis war fein.(WAIT)(END)"
	b4_string "Die sind ein wenig zu groß,(WAIT)(ABS)aber es geht.(WAIT)(END)"
	b4_string "LOCKE:(ABS)Also los!(WAIT)(END)"
	b4_string "Seine Kleider gestohlen!(WAIT)(END)"
	b4_string "Gib auf, Vargas!(WAIT)(END)"
	b4_string "VARGAS:(ABS)Bist da das, SABIN!?(WAIT)(END)"
	b4_string "SABIN:(ABS)Vargas, warum hast du das(ABS)getan?(WAIT)(ABS)Wie konntest du deinen(ABS)eigenen Vater töten!?(WAIT)(END)"
	b4_string "VARGAS:(ABS)Ha! Er beging den Fehler,(ABS)DICH zu seinem Nachfolger(ABS)zu machen(WAIT) statt mich,(WAIT)(ABS)seinen Sohn!!(WAIT)(END)"
	b4_string "SABIN:(ABS)Aber…(WAIT)(ABS)…er wählte doch dich!(WAIT)(END)"
	b4_string "VARGAS:(ABS)Du bist ein Lügner!(WAIT)(END)"
	b4_string "SABIN:(ABS)Duncan wollte, daß DU sein(ABS)Nachfolger wirst, nicht ich.(WAIT)(ABS)Er schätzte deine Gesinnung…(WAIT)(END)"
	b4_string "VARGAS:(ABS)Genug gelogen!(ABS)(WAIT)Jetzt wirst du meine(ABS)überlegene Technik(ABS)kosten!(WAIT)(END)"
	b4_string "Todesangriff! Sturmesfaust!!!(WAIT)(END)"
	b4_string "VARGAS:(ABS)Ah, SABIN!(WAIT)(ABS)Duncan hat dich viel(ABS)gelehrt!(WAIT)(END)"
	b4_string "SABIN:(ABS)Es geht wohl nicht(ABS)anders…!(WAIT)(END)"
	b4_string "VARGAS:(ABS)Ironie des Schicksals -(WAIT)(ABS)wir lernten zusammen,(WAIT)(ABS)und ich töte dich!(WAIT)(END)"
	b4_string "VARGAS:(ABS)W……was zum……!? Er……(WAIT)(ABS)lehrte dich bereits DIES!?(WAIT)(END)"
	b4_string "SABIN:(ABS)Wenn du nicht so macht-(ABS)hungrig gewesen wärst…(WAIT)…(WAIT)(END)"
	b4_string "(END)"
	b4_string "KEFKA:(ABS)Chi, hi, hi! Sehr gut!(KNOPF)(WAIT)(ABS)Fackel sie alle ab!(KNOPF)(KNOPF)(END)"
	b4_string "SABIN:(ABS)Wir haben's vernichtet.(WAIT)(END)"
	b4_string "EDGAR:(ABS)Wohl kaum……(WAIT)(ABS)Es versteckt sich bloß(ABS)vor uns……!(WAIT)(END)"
	b4_string "TERRA:(ABS)Aaaaaahh!!!(ABS)(WAIT)Es ist an meinem Bein!(WAIT)(END)"
	b4_string "EDGAR:(ABS)TERRA! Komm her!(WAIT)(END)"
	b4_string "BANON:(ABS)Alles in Ordnung.(WAIT)(END)"
	b4_string "SABIN:(ABS)Schaut her!!(WAIT)(ABS)Ich werd's mit einem(ABS)“Blitz” töten!(WAIT)(END)"
	b4_string "EDGAR:(ABS)SABIN! Warte!(WAIT)(END)"
	b4_string "SABIN:(ABS)Lenk mich nicht ab, Bruder!!(WAIT)(END)"
	b4_string "EDGAR:(ABS)Er war schon immer(ABS)ein Hitzkopf……(WAIT)(END)"
	b4_string "TERRA:(ABS)SABIN!!!(WAIT)(END)"
	b4_string "BANON:(ABS)Sorgt euch nicht um ihn!(WAIT)(END)"
	b4_string "EDGAR:(ABS)Meinst du, er hat's(ABS)geschafft?(WAIT)(END)"
	b4_string "BANON:(ABS)Das solltest DU am besten(ABS)wissen!(WAIT)(ABS)Jeden Moment springt er(ABS)auf das Floß zurück!(WAIT)(END)"
	b4_string "(END)"
	b4_string "(END)"
	b4_string "KEFKA:(ABS)Autsch!!(WAIT)(END)"
	b4_string "SABIN:(ABS)Kefka! (WAIT)Stop!!!(WAIT)(END)"
	b4_string "KEFKA:(ABS)“Stop”, sagt er……(WAIT)(ABS)Wie die Verkehrspolizei!(WAIT)(END)"
	b4_string "LOCKE:(ABS)Sie sind zornig…auf uns?(WAIT)(END)"
	b4_string "SETZER:(ABS)Was soll's!(ABS)Aber dieses Vibrieren…!?(WAIT)(ABS)Sind das etwa die Esper?(WAIT)(END)"
	b4_string "SABIN:(ABS)Was zum…!?(KNOPF)(END)"
	b4_string "BANON:(ABS)……(WAIT) ……(WAIT)(END)"
	b4_string "EDGAR:(ABS)Was für ein Draufgänger……(WAIT)(ABS)Ha…!(WAIT)(END)"
	b4_string "TERRA:(ABS)SABIN!!!!!(WAIT)(END)"
	b4_string "EDGAR:(ABS)SABIN!!!!(WAIT)(ABS)Paß auf dich auf, ja!?(WAIT)(END)"
	b4_string "GAU:(ABS)Uwauu!! (WAIT)Wauuh……uh~!(WAIT)(ABS)Ihr……Fremde… (WAIT)Weggehen!(WAIT)(ABS)Tieren Angst gemacht!(WAIT)(END)"
	b4_string "SABIN:(ABS)Was zum……(WAIT)(END)"
	b4_string "CYAN:(ABS)Ich bin CYAN,(ABS)er ist SABIN.(WAIT)(END)"
	b4_string "GAU:(ABS)Du SABIN… Du CYAN,(WAIT)(ABS)GAU mehr Essen!!(WAIT)(END)"
	b4_string "SABIN:(ABS)Nix da!(ABS)Fressi alle!(WAIT)(END)"
	b4_string "GAU:(ABS)Du gehen…mir mehr(ABS)holen!(WAIT)(END)"
	b4_string "SABIN:(ABS)Soweit kommt's noch,(ABS)du Vielfraß!(ABS)(WAIT)Mach schön sitz!(WAIT)(END)"
	b4_string "SABIN:(ABS)Sag bloß, du kannst(ABS)Kung Fu?(WAIT)(END)"
	b4_string "GAU:(ABS)GAU eher so(ABS)Schlammcatcher…(WAIT)(END)"
	b4_string "SABIN:(ABS)Starr mich nicht so an!(WAIT)(END)"
	b4_string "GAU:(ABS)Genau wie Regentanz!(WAIT)(ABS)Du echt Talent!(WAIT)(END)"
	b4_string "SABIN:(ABS)Klappe!!(WAIT)(END)"
	b4_string "CYAN:(ABS)Beruhigt Euch, Sirs!(WAIT)(ABS)Sagt an, junger Wilder…(ABS)Wer seid Ihr, Sir?(WAIT)(END)"
	b4_string "GAU:(ABS)Sir?(WAIT)(END)"
	b4_string "GAU:(ABS)Sir! Sir!(WAIT)(END)"
	b4_string "GAU:(ABS)Du böse?(WAIT)(END)"
	b4_string "GAU:(ABS)CYAN!(WAIT)(ABS)Ich…nur Spaß gemacht.(WAIT)(END)"
	b4_string "SABIN:(ABS)Weißt du, seine Familie…(ABS)Er trauert…(WAIT)(END)"
	b4_string "GAU:(ABS)GAU verstehen……(WAIT)(ABS)Leid tun…!(WAIT)(END)"
	b4_string "CYAN:(ABS)Ihr seid seltsam…(WAIT)(END)"
	b4_string "SABIN:(ABS)Keuch…schnauf…!(ABS)Mann, bist du zäh!(WAIT)(END)"
	b4_string "Etwas Glänzendes…?(WAIT)(ABS)Da wird LOCKE aber staunen,(ABS)wenn wir ihm davon(ABS)erzählen, nicht?(WAIT)(END)"
	b4_string "(END)"
	b4_string "(END)"
	b4_string "(END)"
	b4_string "VARGAS:(ABS)Wir sollten das beenden!(WAIT)(END)"
	b4_string "SABIN:(ABS)Die Lehren des Meisters…(WAIT)(ABS)Zeit für einen “Blitz”……(WAIT)(END)"
	b4_string "Wähle “Blitz” und drücke(WAIT)(ABS)links, (WAIT)rechts, (WAIT)links(WAIT) auf(ABS)dem Steuerkreuz,(WAIT)(ABS)dann Knopf A!(WAIT)(END)"
	b4_string "“Blitz” geht so:(WAIT)(END)"
	b4_string "SABIN:(ABS)Wähle Blitz und drücke(WAIT)(ABS)links, (WAIT)rechts, (WAIT)links(WAIT)(ABS)auf dem Steuerkreuz!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Es ist offen!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Ein Erdbeben……?(WAIT)(END)"
	b4_string "TERRA!!!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Ich, (WAIT)ich, (WAIT)ich bin aufgeregt.(WAIT)(END)"
	b4_string "Da kommt etwas!!!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Furchtbare Energie!!!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Uaaah!(KNOPF)(END)"
	b4_string "TERRA:(ABS)……(WAIT)(END)"
	b4_string "“K…Kefka!!!(WAIT)(ABS)Du bist uns gefolgt!”(WAIT)(END)"
	b4_string "KEFKA:(ABS)Jahahihihihi!!!(WAIT)(ABS)Der Imperator hatte recht!(WAIT)(ABS)TERRA brauchte nur(ABS)in eure Hände fallen,(WAIT)(ABS)und ihr würdet das Tor(ABS)für uns öffnen!(WAIT)(END)"
	b4_string "……!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Ihr habt also für uns(ABS)gearbeitet!!!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Aber ich fürchte, jetzt(ABS)habt ihr euch überlebt…(WAIT)(END)"
	b4_string "“Denk lieber nochmal nach,(ABS)Kefka!”(WAIT)(END)"
	b4_string "KEFKA:(ABS)Oje……(WAIT)(ABS)Ihr wollt kämpfen!?(WAIT)(ABS)Das ist ja furchtbar!(WAIT)(END)"
	b4_string "Halte Kefka in Schach,(WAIT)(ABS)bis TERRA durch das Tor(ABS)geflohen ist!(WAIT)(END)"
	b4_string "LOCKE:(ABS)Was ist, TERRA?(WAIT)(END)"
	b4_string "TERRA:(ABS)Ich fühle es…(WAIT)(ABS)Es kommt näher und näher…(WAIT)(END)"
	b4_string "LOCKE:(ABS)Was meinst du,(ABS)du “fühlst es”?(WAIT)(END)"
	b4_string "TERRA:(ABS)Es glüht…!(WAIT)(END)"
	b4_string "LOCKE:(ABS)Aber was ist es?(WAIT)(END)"
	b4_string "LOCKE:(ABS)Das kann nicht sein……!(WAIT)(ABS)Ein Esper???(WAIT)(END)"
	b4_string "LOCKE:(ABS)Er kommt!!!(WAIT)(ABS)Paß auf, TERRA!!(WAIT)(END)"
	b4_string "SETZER:(ABS)Was war das!?(WAIT)(END)"
	b4_string "LOCKE:(ABS)SETZER, duck dich!!(WAIT)(END)"
	b4_string "SETZER:(ABS)Huch……Esper……?(WAIT)(END)"
	b4_string "LOCKE:(ABS)Wohin gehen sie denn?(WAIT)(END)"
	b4_string "TERRA:(ABS)Sie sind wütend…(WAIT)(END)"
	b4_string "TERRA:(ABS)Nein…!(WAIT) Bitte, (WAIT)bleibt hier!!!(WAIT)(END)"
	b4_string "EDGAR:(ABS)Äh……SETZER…!?(WAIT)(END)"
	b4_string "(WAIT)DAS RUDER KLEMMT!!!(WAIT)(END)"
	b4_string "RELM:(ABS)Opa!(WAIT)(ABS)Ich bin hier…!(WAIT)(END)"
	b4_string "STRAGO:(ABS)RELM!(WAIT)(ABS)Du solltest doch zu Hause(ABS)bleiben!(WAIT)(END)"
	b4_string "RELM:(ABS)Aber ich mußte doch(ABS)Malen üben!(WAIT)(END)"
	b4_string "Sag, Schätzchen,(ABS)wer bist du?(WAIT)(END)"
	b4_string "ULTROS:(ABS)Du wagst es!(WAIT)(ABS)Ich bin Ultros!!!(WAIT)(END)"
	b4_string "LOCKE:(ABS)RELM und Ultros……(WAIT)(ABS)Was tut ihr da……?(WAIT)(END)"
	b4_string "RELM:(ABS)Hör zu, Ulti……(WAIT)(ABS)Warum stehst du(ABS)nicht mal Modell?(WAIT)(END)"
	b4_string "ULTROS:(ABS)Ich bin keiner deiner(ABS)kindischen Freunde!(WAIT)(ABS)Also rede nicht so(ABS)mit mir!(WAIT)(ABS)Ich will kein Porträt!(WAIT)(END)"
	b4_string "RELM:(ABS)Vergiß es!(WAIT)(ABS)Jetzt will ich's auch(ABS)nicht mehr!(WAIT)(END)"
	b4_string "RELM:(ABS)Also gut……(WAIT)(ABS)Ich spring' einfach(ABS)hier runter.(KNOPF)(END)"
	b4_string "TERRA:(ABS)NEIN!!!(ABS)Das darfst du nicht!(WAIT)(END)"
	b4_string "Flüsterflüster…(WAIT)(END)"
	b4_string "TERRA:(ABS)Du wagst es,(WAIT)(ABS)dieses kleine Mädchen(ABS)zu ängstigen!(WAIT)(ABS)Wenn du ihr wehtust,(ABS)dann…!!!(WAIT)(END)"
	b4_string "ULTROS:(ABS)Aber was soll ich(ABS)denn tun?(WAIT)(END)"
	b4_string "LOCKE:(ABS)Frag sie, ob sie dein(ABS)Porträt malen könnte.(WAIT)(ABS)Darin ist sie wirklich(ABS)sehr begabt!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Ah…Leo…immer der(ABS)vollkommene Soldat…(WAIT)(END)"
	b4_string "LEO:(ABS)Wo bist du, Kefka…?(WAIT)(ABS)Zeig dich!!!(WAIT)(END)"
	b4_string "KEFKA:(ABS)I(WAIT)M(WAIT)P(WAIT)E(WAIT)R(WAIT)A(WAIT)T(WAIT)O(WAIT)R (WAIT)G(WAIT)E(WAIT)S(WAIT)T(WAIT)A(WAIT)H(WAIT)L……(ABS)(WAIT)Ich brauche Euch hier…(WAIT)(END)"
	b4_string "IMPERATOR GESTAHL:(ABS)Leo…(WAIT)(END)"
	b4_string "LEO:(ABS)Majestät!(WAIT)(END)"
	b4_string "Verzeiht, daß ich sogar Euch(ABS)getäuscht habe, Leo.(ABS)(WAIT)Ich mußte Magizit sammeln(ABS)und Macht gewinnen…(ABS)(WAIT)Bitte versteht das…(WAIT)(END)"
	b4_string "LEO:(ABS)Aber Imperator…!(WAIT)(END)"
	b4_string "GESTAHL:(ABS)Sagt nichts.(WAIT)(ABS)Ich verstehe Eure Gefühle.(WAIT)(END)"
	b4_string "KEFKA:(ABS)Chi, hi, hi……(WAIT)(ABS)Das ist wahr!(ABS)(WAIT)Was wir jetzt tun müssen,(ABS)ist Magizit sammeln!(WAIT)(END)"
	b4_string "LEO:(ABS)Aber Majestät……(ABS)Wofür habe ich gekämpft…?(WAIT)(END)"
	b4_string "GESTAHL:(ABS)Leo, ich möchte, daß Ihr(ABS)lange und gut schlaft…!(WAIT)(ABS)SEHR lange! Uahahahaha!(WAIT)(END)"
	b4_string "LEO:(ABS)!!!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Du dachtest…daß du mich(ABS)getroffen hast!?(WAIT)(ABS)Das war mein Schatten!(WAIT)(ABS)Und wie war mein(ABS)Gestahl?(WAIT)(ABS)Ich sollte zum Theater(ABS)gehen!!(ABS)(WAIT)Tja, General……(WAIT)(END)"
	b4_string "Du bist so ein prima Kerl!(WAIT)(END)"
	b4_string "LEO:(ABS)Halt den Mund, Kefka!(WAIT)(ABS)Ich werde……(WAIT)(END)"
	b4_string "KEFKA:(ABS)Oh!(ABS)Du drohst mir?(WAIT)(ABS)Du bist ja brutaler als(ABS)ich dachte!(ABS)(WAIT)Ich werde “Majestät”(ABS)erzählen, daß ein Verräter(ABS)sterben mußte!(WAIT)(END)"
	b4_string "KEFKA:(ABS)HASS…!!(WAIT)(END)"
	b4_string "(END)"
	b4_string "TERRA:(ABS)Was!? (WAIT)Was fühle ich da!?!(WAIT)(END)"
	b4_string "TERRA:(ABS)Huch? (WAIT)W…was passiert mir…?(WAIT)(END)"
	b4_string "TERRA:(ABS)Bitte…sag es mir!(WAIT)(ABS)WER BIN ICH!?!?(WAIT)(END)"
	b4_string "LOCKE:(ABS)TERRA!(WAIT)(END)"
	b4_string "CELES:(ABS)Ein Esper…(WAIT)(ABS)Ich kann seinen Geist fühlen……(WAIT)(END)"
	b4_string "EDGAR:(ABS)TERRA……(WAIT)(ABS)Geh weg von dem Esper……!(WAIT)(END)"
	b4_string "Und nun setze Deine Reise(ABS)bitte fort!(WAIT)(END)"
	b4_string "CYAN:(ABS)Sirs! Es kommt ja doch(ABS)kein Regen!(WAIT)(ABS)Sir GAU, Ihr scheint(ABS)ein ehrbarer Mann zu sein.(WAIT)(ABS)Warum kommt Ihr nicht mit?(WAIT)(END)"
	b4_string "GAU:(ABS)Ah! Euch was schenken!(WAIT)(ABS)GAU hat schönes Geschenk(ABS)für CYAN und SABIN,(ABS)zum Dank für Essen!(WAIT)(END)"
  	b4_string "SABIN:(ABS)Was für einen Müll will(ABS)er uns andrehen…?(WAIT)(END)"
	b4_string "GAU:(ABS)GAU's Schatz……(ABS)…glänzt, glänzt!(WAIT)(ABS)Glänzt, glänzt!!!(WAIT)(END)"
	b4_string "SABIN:(ABS)Das Teil glänzt vor allem(ABS)durch Abwesenheit…!(WAIT)(END)"
	b4_string "GAU:(ABS)Mag Mr. Sir alles,(ABS)was glänzt?(WAIT)(END)"
	b4_string "SABIN:(ABS)Mr. Sir ist der da,(ABS)da DRÜBEN!!(WAIT)(END)"
	b4_string "GAU:(ABS)Wer LOCKE?(ABS)Böser Mann?(WAIT) Er vielleicht(ABS)meinen Schatz stehlen!(WAIT)(END)"
	b4_string "SABIN:(ABS)LOCKE?(ABS)Der ist…(WAIT)(END)"
	b4_string "SABIN:(ABS)Hör gefälligst zu, wenn(ABS)ich mit dir spreche!(WAIT)(END)"
	b4_string "CYAN:(ABS)Ich glaube, er will uns etwas(ABS)sagen!(WAIT)(END)"
	b4_string "SABIN:(ABS)So…?(ABS)Na dann…(WAIT)(ABS)Ich bin ganz Ohr.(WAIT)(END)"
	b4_string "GAU:(ABS)Hier! Hier!(WAIT)(ABS)Ding, das glänzt!(WAIT)(END)"
	b4_string "GAU:(ABS)SABIN,(WAIT)(ABS)Dorf, wo du Essen kaufen…(ABS)…heißen Mobliz!(WAIT)(END)"
	b4_string "GAU:(ABS)CYAN,(WAIT)(ABS)Stelle, wo du geschlafen……(ABS)Fluß dich hingebracht……(WAIT)(END)"
	b4_string "Wir zum Sichelberg(ABS)gehen!(WAIT)(ABS)Wegen Ding, das glänzt!(WAIT)(END)"
	b4_string "CYAN:(ABS)(WAIT)Gehen wir mit ihm(ABS)zu diesem Sichelberg.(WAIT)(END)"
	b4_string "SABIN:(ABS)Äh……(WAIT)und warum genau(ABS)nehmen wir ihn mit?(WAIT)(END)"
	b4_string "GAU:(ABS)Mr. Sir! Beeilung!(WAIT)(ABS)Wir gehen!!(WAIT)(END)"
	b4_string "SABIN:(ABS)Hey! Merk dir eins,(WAIT)(ABS)ich bin NICHT Mr. Sir!!!(WAIT)(END)"

  	b4_string "1. Wähle “Lernen”, ein(ABS)Befehl, der nur draußen(ABS)im Veldt erscheint.(WAIT)(END)"
	b4_string "2. Kämpfe so lange weiter, bis(ABS)GAU wieder auftaucht.(ABS)Er wird die Angriffe…(WAIT)(END)"
	b4_string "3. …der Gegner gelernt haben,(ABS)die Du ihn zuvor hast(ABS)“verfolgen” lassen!(WAIT)(END)"
	b4_string "Uwauuh~!(WAIT)(END)"
	b4_string "4. Wähle den Befehl “Wüten”,(ABS)und Du kannst die gelernten(ABS)Angriffe einsetzen.(WAIT)(END)"
	b4_string "KAPPA:(ABS)So werden GAU's(ABS)Fähigkeiten genutzt…(WAIT)(END)"
	b4_string "LOCKE:(ABS)EDGAR, was ist los?(ABS)Du siehst aus wie(ABS)kurz vor der Einweisung!(WAIT)(END)"
	b4_string "EDGAR:(ABS)H-h-h-hast du das gerade(ABS)gesehen…!?(WAIT)(END)"
	b4_string "LOCKE:(ABS)Ja… Das Mädel scheint(ABS)übersinnliche…(WAIT)(END)"
	b4_string "EDGAR:(ABS)Sie ist SUPER!(WAIT)(ABS)Das war Magie!! (WAIT)M(WAIT)A(WAIT)G(WAIT)I(WAIT)E!(WAIT)(END)"
	b4_string "LOCKE:(ABS)M(WAIT)(ABS)M(ABS)M(ABS)M(ABS)M(ABS)M(ABS)M(ABS)MAGIE!?(WAIT)(ABS)Sie benutzt M…?(WAIT)(END)"
	b4_string "EDGAR/LOCKE:(ABS)Pswswswsw!(WAIT)(ABS)pswswswsw!!!(WAIT)(END)"
	b4_string "EDGAR:(ABS)TERRA…! Wo bei der(ABS)heiligen Triode hast du(ABS)DAS gelernt?(WAIT)(END)"
	b4_string "TERRA:(ABS)………(WAIT)(ABS)Ich…äh…oh…(WAIT)(ABS)Hm……(WAIT)(END)"
	b4_string "LOCKE:(ABS)He, ich wollte dich nicht(ABS)in Verlegenheit bringen……(WAIT)(END)"
	b4_string "EDGAR:(ABS)Ich auch nicht… (WAIT)Aber ich(ABS)habe Magie noch nie zuvor(ABS)GESEHEN!(WAIT)(ABS)Woher kannst du…?(WAIT)(END)"
	b4_string "TERRA:(ABS)……(WAIT)(END)"
	b4_string "LOCKE:(ABS)EDGAR, TERRA kann(ABS)Magie benutzen, wir nicht.(WAIT)(ABS)Nur DAS unterscheidet uns.(WAIT)(ABS)Tatsache ist, wir könnten(ABS)ihre Hilfe brauchen…(WAIT)(END)"
	b4_string "TERRA:(ABS)Danke, LOCKE!(WAIT)(END)"
	b4_string "TERRA:(ABS)Danke, EDGAR!(WAIT)(END)"
	b4_string "Nicht ohnmächtig werden!(KNOPF)(END)"
	b4_string "EDGAR:(ABS)……!(WAIT)(END)"
	b4_string "CELES:(ABS)TunnelPanzer!!(WAIT)(ABS)Hab keine Angst.(WAIT)(ABS)Wozu beherrsche ich(ABS)MAGIE!?(WAIT)(END)"
	b4_string "LOCKE:(ABS)Äh!?!(WAIT)(END)"
	b4_string "CELES:(ABS)Meine Runen-Klinge(ABS)absorbiert seine Magie!(WAIT)(END)"
	b4_string "LOCKE:(ABS)Bist du sicher!?(WAIT)(END)"
	b4_string "CELES:(ABS)Sieh selber!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Daß du überhaupt daran(ABS)denkst, (WAIT)mich besiegen(ABS)zu können!(WAIT)(ABS)Hihihaha!!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Und jetzt, meine lieben(ABS)Magizitsternchen……(WAIT)(ABS)Kommt und helft mir,(ABS)mein magisches Imperium(ABS)aufzubauen!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Hohoho…(WAIT)(ABS)Ich hab euch zum(ABS)Fressen gern!(WAIT) Ihr Süßen!(WAIT)(END)"
	b4_string "Wartet! Wir helfen Euch!(KNOPF)(END)"
	b4_string "Los!(KNOPF)(END)"
	b4_string "Beeilung!(KNOPF)(END)"
	b4_string "Keine Zeit zu verlieren!(KNOPF)(END)"
	b4_string "1. Wähle “Blitz” und drücke(ABS)den A-Knopf.(WAIT)(END)"
	b4_string "2. Wenn die Hand erscheint,(ABS)gib die Technik ein.(WAIT)(END)"
	b4_string "3. Auf dem Steuerkreuz links,(ABS)rechts und links drücken.(WAIT)(END)"
	b4_string "4. Zum Schluß den A-Knopf(ABS)zur Bestätigung drücken.(WAIT)(END)"
	b4_string "5. Wenn Du einen Fehler(ABS)machst, passiert gar nichts.(ABS)Und: Mit Ruhe geht alles!(WAIT)(END)"
	b4_string "GESTAHL:(ABS)Kefka! Spinnst du!?(WAIT)(END)"
	b4_string "KEFKA:(ABS)Spinnen!? (WAIT)Imperator!(ABS)Halt mich nicht ab!(WAIT)(ABS)Ich zeige ihnen die(ABS)Bedeutung von Macht!(WAIT)(END)"
	b4_string "GESTAHL:(ABS)Wohl eher nicht, mein Freund.(WAIT)(ABS)Du bist gefeuert.(WAIT)(END)"
	b4_string "GESTAHL:(ABS)Entspann dich…(WAIT)(ABS)Du wirst jetzt schlafen.(WAIT)(ABS)Und zwar dank der Kraft,(ABS)die du heraufbeschworen(ABS)hast…(WAIT)(END)"
	b4_string "GESTAHL:(ABS)Was ist so lustig?(WAIT)(END)"
	b4_string "GESTAHL:(ABS)Gut. (WAIT)Es paßt zu dir,(ABS)daß du lachend abtrittst.(WAIT)(END)"
	b4_string "Feuer3!!!(KNOPF)(END)"
	b4_string "Lodern!!!(KNOPF)(END)"
	b4_string "GESTAHL:(ABS)N…nein!!!(WAIT)(ABS)Warum versagt meine Magie!?(WAIT)(END)"
	b4_string "Merton!!!(KNOPF)(END)"
	b4_string "GESTAHL:(ABS)K…Kefka!!!!!(WAIT)(ABS)W…wie…!?(WAIT)(END)"
	b4_string "GESTAHL:(ABS)Wie machst du das!?(WAIT)(END)"
	b4_string "KEFKA:(ABS)Wie!? (WAIT)Ganz einfach!(WAIT)(ABS)Ich stehe im Feld der(ABS)Statuen!(WAIT)(ABS)Dieses Feld absorbiert(ABS)sämtliche Magie!(WAIT)(ABS)Hast du das noch nicht(ABS)gemerkt!?(WAIT)(END)"
  	b4_string "GESTAHL:(ABS)…………!!!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Und jetzt, Statuen!(ABS)Ihr habt mir ein Zeichen(ABS)gegeben!(WAIT)(ABS)Zeigt auch dem alten(ABS)Herrn Eure wahre Macht!(WAIT)(END)"
	b4_string "GESTAHL:(ABS)Nein! Kefka!(WAIT)(ABS)Tu nichts Unüberlegtes…(WAIT)(END)"
	b4_string "KEFKA:(ABS)Ich befehle es Euch,(ABS)Statuen!!!(KNOPF)(END)"
	b4_string "KEFKA:(ABS)U…unglaublich!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Total daneben!!!(WAIT)(ABS)Nochmal, los!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Fast!(ABS)Weiter nach rechts!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Lauf! Lauf!(WAIT)(ABS)Sonst wirst du gegrillt…!(WAIT)(END)"
	b4_string "KEFKA:(ABS)JAWOLL!!!(KNOPF)(END)"
	b4_string "KEFKA:(ABS)Alter Depp…(WAIT)(ABS)Der Imperator ist(ABS)abgesetzt!!!(WAIT)(END)"
	b4_string "LOCKE:(ABS)Sei doch nicht so herzlos!(WAIT)(END)"
	b4_string "ULTROS:(ABS)………(WAIT)(ABS)………(WAIT)(ABS)………(WAIT)(ABS)………(WAIT)(ABS)………(WAIT)(ABS)………(WAIT)(ABS)………(WAIT)(ABS)………(WAIT)(ABS)Also gut, Onkel Ulti möchte(ABS)SOOOO gerne ein Porträt(ABS)von dir gemalt kriegen!(WAIT)(END)"
	b4_string "RELM:(ABS)Tihihi…(WAIT)(ABS)Es wird dir gefallen!(WAIT)(END)"
	b4_string "STRAGO:(ABS)Wie auch immer, komm her!(WAIT)(END)"
	b4_string "WRACKSEELE:(ABS)Dein Körper gehört mir!(WAIT)(ABS)In dieser Form werde ich(ABS)erst wieder erscheinen,(ABS)wenn du stirbst!(WAIT)(END)"
	b4_string "KEFKA:(ABS)Leben… (KNOPF)Träume… (KNOPF)Hoffnung… (KNOPF)(KNOPF)(END)"
	b4_string "Woher kommen sie?(KNOPF)(ABS)Und wohin gehen sie…?(KNOPF)(KNOPF)(KNOPF)(END)"
	b4_string "Ich werde diese Dinge…(KNOPF)(KNOPF)(ABS)…alle vernichten!!!(KNOPF)(END)"
	b4_string "GAU:(ABS)Und du…vor mir Angst!(WAIT)(END)"
	b4_string "GAU:(ABS)Uah, ha!(WAIT)(ABS)Das lustig! Du stark!(WAIT)(END)"
	b4_string "(END)"
	b4_string "SHADOW:(ABS)Ich bin fertig.(WAIT)(ABS)Damit sind wir quitt!(WAIT)(END)"
	b4_string "SHADOW:(ABS)Ta-ta……!(WAIT)(END)"
	b4_string "(END)"
	b4_string "GAU:(ABS)Uwauuh~!(WAIT)(END)"
	b4_string "(END)"

.ENDS



.BANK bankbyte(kMonsterDialogue) & $3F SLOT 0
.ORG loword(kMonsterDialogue)

.SECTION "1-line battle dialogue aka monster dialogue" OVERWRITE

.REDEFINE COUNT = 0

	b1_string "Systemfehler!(KNOPF)(END)"
	b1_string "Ultros wurde transformiert!(KNOPF)(ABS)Achtung: 3-Elemente-Angriff!!! (KNOPF)(END)"
	b1_string "Weg da!(KNOPF)(ABS)Ich zerstampf' euch! (KNOPF)(END)"
	b1_string "Gibt's das…?(KNOPF)(ABS)Ich bin…unbesiegbar!(KNOPF)(END)"
	b1_string "Was ein Unglückstag!(KNOPF)(ABS)Adios!(KNOPF)(END)"
	b1_string "Gruuu……(KNOPF)(END)"
	b1_string "Dadaluma pfeift!  (KNOPF)(END)"
	b1_string "Belebt…(KNOPF)(END)"
	b1_string "Oh…hohh!!(KNOPF)(END)"
	b1_string "Das ist alles, Freunde!(KNOPF)(END)"
	b1_string "Na los doch.(KNOPF)(ABS)Was ist denn? (KNOPF)(END)"
	b1_string "Jiauutsch!(KNOPF)(ABS)Muschelsuppe!(KNOPF)(END)"
	b1_string "Chi, hi, hi…!(KNOPF)(ABS)Ende der Fahrt!(KNOPF)(ABS)Nicht den Oktopus reizen!(KNOPF)(END)"
	b1_string "Ein Leckerbissen!(KNOPF)(ABS)Wo ist mein Latz!? (KNOPF)(END)"
	b1_string "Ich hasse Muskelhelden!(KNOPF)(END)"
	b1_string "Zyklon-Angriff(KNOPF)(END)"
	b1_string "Stiehlt GS!   (KNOPF)(END)"
	b1_string "Chuuhh……!(KNOPF)(END)"
	b1_string "Puh!…(KNOPF)(ABS)Das macht müde!(KNOPF)(END)"
	b1_string "Lange nicht gesehen!(KNOPF)(ABS)Ihr seid gewachsen!(KNOPF)(ABS)Süß!    (KNOPF)(END)"
	b1_string "Pa, (KNOPF)pai, (KNOPF)Autsch!(KNOPF)(END)"
	b1_string "Ihr habt nicht gewonnen.(KNOPF)(ABS)Bis bald!(KNOPF)(END)"
	b1_string "Hier! Hierher!  (KNOPF)(END)"
	b1_string "Spaßig?(KNOPF)(END)"
	b1_string "Habt ihr's gelesen? (KNOPF)(END)"
	b1_string "Ich bin kein…(KNOPF)(ABS)gewöhnlicher Oktopus!(KNOPF)(END)"
	b1_string "Wie süß er ist! (KNOPF)(END)"
	b1_string "Wer seid Ihr?(KNOPF)(END)"
	b1_string "Ich spüre Freundlichkeit…(KNOPF)(END)"
	b1_string "Ihr habt Ramas Kraft…!?(KNOPF)(ABS)Halt! Wir sind…Esper…  (KNOPF)(END)"
	b1_string "Ich kann noch nicht…    (KNOPF)(END)"
	b1_string "Kräne schütteln das Deck!(KNOPF)(END)"
	b1_string "Bugobo……(KNOPF)(ABS)Chuaah!!(KNOPF)(END)"
	b1_string "Chuuhh!!(KNOPF)(END)"
	b1_string "LuftWaffe benutzt Funken.(KNOPF)(ABS)Funke absorbiert Magie! (KNOPF)(END)"
	b1_string "Ooh…ich Hunger!(KNOPF)(END)"
	b1_string "Uwauh, ahu!(KNOPF) Ich Gau!(KNOPF)(ABS)Ich euer Freund!(KNOPF)(ABS)Ich euch begleiten!(KNOPF)(END)"
	b1_string "Von Hidon absorbiert!(KNOPF)(END)"
	b1_string "Elektr. Energie frei!     (KNOPF)(END)"
	b1_string "Du verdammter Dieb!(KNOPF)(ABS)Dir werde ich's zeigen!(KNOPF)(END)"
	b1_string "Chuuhh!!(KNOPF)(END)"
	b1_string "Gegner nutzt Kampftech. A(END)"
	b1_string "Gegner nutzt Kampftech. B(END)"
	b1_string "Gegner nutzt Kampftech. C (END)"
	b1_string "Elektrisiert LV 1(END)"
	b1_string "Elektrisiert LV 2(END)"
	b1_string "Nichts!(KNOPF)(END)"
	b1_string "Nichts!(KNOPF)(END)"
	b1_string "Kein Durchkommen!!!(KNOPF)(END)"
	b1_string "Elektrisiert LV 3(END)"
	b1_string "Wärmeenergie freigesetzt!(KNOPF)(END)"
	b1_string "Hitzequelle LV 1(END)"
	b1_string "Wellenkanone! Countdown!(KNOPF)(ABS)Läuft… 10(KNOPF)(END)"
	b1_string "Läuft… 9(KNOPF)(END)"
	b1_string "Läuft… 8(KNOPF)(END)"
	b1_string "Läuft… 7(KNOPF)(END)"
	b1_string "Läuft… 6(KNOPF)(END)"
	b1_string "Läuft… 5(KNOPF)(END)"
	b1_string "Läuft… 4(KNOPF)(END)"
	b1_string "Läuft… 3(KNOPF)(END)"
	b1_string "Läuft… 2(KNOPF)(END)"
	b1_string "Todesblick wurde geheilt! (KNOPF)(ABS)Eis-Angriff wurde wiederhergestellt!(KNOPF)(END)"
	b1_string "Chuuh!(END)"
	b1_string "Todesblick wurde blind!(KNOPF)(ABS)“Fluch” wirkt nicht!(KNOPF)(END)"
	b1_string "Todesblick wurde stumm!(KNOPF)(ABS)Kann Eis-Angriff nicht benutzen!(KNOPF)(END)"
	b1_string "Todesblick verlor Giftklaue!(KNOPF)(ABS)Kann “Gift” nicht benutzen!(KNOPF)(END)"
	b1_string "GENUG!!!(KNOPF)(ABS)Fort mit euch!!!(KNOPF)(END)"
	b1_string "Komm schon, Sabin!(KNOPF)(ABS)Kein Zurück mehr!! (KNOPF)(END)"
	b1_string "Alarm schrillt!!(KNOPF)(END)"
	b1_string "Läuft… 1(KNOPF)(END)"
	b1_string "Hitzequelle LV 2(END)"
	b1_string "Hitzequelle LV 3(END)"
	b1_string "Todesblick wurde geheilt!(KNOPF)(ABS)“Fluch” wiederhergestellt!(KNOPF)(END)"
	b1_string "A-Kraft (mal) 100! (KNOPF)(ABS)AVertd. (O) (KNOPF)(ABS)MVertd. (O) (KNOPF)(ABS)Tempo (O) (KNOPF)(ABS)Ausdauer (O) (KNOPF)(END)"
	b1_string "Hidonit wird zu Hidon.   (KNOPF)(END)"
	b1_string "Schaut!(KNOPF)(ABS)Das Tor öffnet sich!!!  (KNOPF)(END)"
	b1_string "Hua, ha ha…(KNOPF)(ABS)Menschen und ihre Wünsche!(KNOPF)(ABS)Endlich frei!!  (KNOPF)(ABS)Ich bringe Zerstörung…  (KNOPF)(ABS)Ich bringe Terror… (KNOPF)(ABS)Ich bin Drache Zar…(KNOPF)(ABS)Seid bereit!(KNOPF)(END)"
	b1_string "I…ich hab' Angst!(KNOPF)(END)"
	b1_string "Bin ich etwa eine Nervensäge?(KNOPF)(ABS)Chihihihi!(KNOPF) 'Tschuldigt!(KNOPF)(END)"
	b1_string "Hab gerade an euch gedacht! (KNOPF)(ABS)Ich habe mehr Leben als Arme!(KNOPF)(END)"
	b1_string "Wie kann das sein?(KNOPF)(ABS)Ich bin nur ein dummer… (KNOPF)(ABS)…Oktopus!(KNOPF)(END)"
	b1_string "Nein, wirklich,(KNOPF)(ABS)dies ist unser LETZTER Kampf!        (KNOPF)(END)"
	b1_string "Ultros:(KNOPF)(ABS)Reizt ihn lieber nicht! (KNOPF)(ABS)Sonst wird er nämlich(KNOPF)(ABS)hungrig…(KNOPF)(END)"
	b1_string "Ultros:(KNOPF)(ABS)Schon wieder verloren!(KNOPF)(ABS)Aber heute hilft mir jemand!(KNOPF)(ABS)Mr. Chupon! Komm runter!(KNOPF)(END)"
	b1_string "Ultros:(KNOPF)(ABS)Mr. Chupon ist schweigsam,(KNOPF)(ABS)aber furchtbar stark!(KNOPF)(END)"
	b1_string "Meine Mission…(END)"
	b1_string "Ultros:(KNOPF)(ABS)Ich habe gedöst,(KNOPF)(ABS)als Mr. Chupon an meinem(KNOPF)(ABS)Kopf nagte!(KNOPF)(ABS)Er brauchte etwas,(KNOPF)(ABS)um seine Zähne zu polieren!   (KNOPF)(END)"
	b1_string "Chupon:(KNOPF)(ABS)Fungahhh!(KNOPF)(END)"
	b1_string "Ein Reisegefährte!(KNOPF)(END)"
	b1_string "Jemand hat sich für mich(KNOPF)(ABS)ausgegeben und Schätze(KNOPF)(ABS)geraubt!(KNOPF)(ABS)Laßt Euch nicht hereinlegen!(KNOPF)(ABS)Selbstlose Leute(KNOPF)(ABS)sollen belohnt werden.(KNOPF)(ABS)Fangen wir an!(KNOPF)(END)"
	b1_string "Effekt “Rflekt” verschwunden(END)"
	b1_string "Moe ist geflohen.(KNOPF)(END)"
	b1_string "Solche…Kraft!(KNOPF) Cyan…(KNOPF)(ABS)Unfaßbar……(KNOPF)(END)"
	b1_string "Los,(KNOPF) ihr!(KNOPF)(ABS)"
	b1_string "Hahaha!!(KNOPF)(ABS)Gebt ihr auf?(KNOPF)(END)"
	b1_string "Dämon:(KNOPF)(ABS)Das Mädchen in dem Bild(KNOPF)(ABS)gehört mir! Nicht euch!!!   (KNOPF)(END)"
	b1_string "Was ist los? (KNOPF)(ABS)Du siehst krank aus.(KNOPF)(ABS)Soll ich helfen?(KNOPF)(END)"
	b1_string "Er kommt…(KNOPF)(ABS)…um uns zu kontrollieren!(KNOPF)(END)"
	b1_string "Imp! Kumpel!(KNOPF)(END)"
	b1_string "KatanaSeel hat mehr Kraft!(KNOPF)(END)"
	b1_string "Moe kam zurück. (KNOPF)(END)"
	b1_string "Gewaltige Energie gebündelt!(KNOPF)(END)"
	b1_string "Buahaha…(KNOPF) Kein Entkommen!(KNOPF)(END)"
	b1_string "Wellenkanone! Countdown!(KNOPF)(ABS)3!(KNOPF)(END)"
	b1_string "Basisprogramm gestartet!(KNOPF)(END)"
	b1_string "Gegn. Angriffe summieren sich! (KNOPF)(END)"
	b1_string "Eisdrache rief seinen Freund… (KNOPF)(ABS)Schädeldrache!(KNOPF)(END)"
	b1_string "Sturmdrache rief seinen Freund…(KNOPF)(ABS)Ekeldrache!(KNOPF)(END)"
	b1_string "Ekeldrache rief seinen Freund…(KNOPF)(ABS)Golddrache!    (KNOPF)(END)"
	b1_string "Golddrache rief seinen Freund…(KNOPF)(ABS)Strumdrache!    (KNOPF)(END)"
	b1_string "Schädeldrache rief seinen Freund…(KNOPF)(ABS)Blauer Drache! (KNOPF)(END)"
	b1_string "Blauer Drache rief seinen Freund…(KNOPF)(ABS)Ekeldrache!(KNOPF)(END)"
	b1_string "Roter Drache rief seinen Freund…(KNOPF)(ABS)Eisdrache!(KNOPF)(END)"
	b1_string "Weißer Drache rief seinen Freund…    (KNOPF)(ABS)Roter Drache!     (KNOPF)(END)"
	b1_string "Sturmdrache durchläuft Veränderung!  (KNOPF)(END)"
	b1_string "Golddrache speichert Energie!  (KNOPF)(END)"
	b1_string "Ekeldrache wurde wild!(KNOPF)(END)"
	b1_string "Schädeldrache lebt von MKraft!(KNOPF)(END)"
	b1_string "Entferne “Rflekt”…  (END)"
	b1_string "Ihh!(KNOPF)(END)"
	b1_string "Oje!(KNOPF) Mein Körper verschwindet!(KNOPF)(END)"
	b1_string "Sie ist…(KNOPF) mein……(KNOPF)(END)"
	b1_string "Ich…(KNOPF)(ABS)Es kann nicht sein…(KNOPF)(END)"
	b1_string "Vorsicht!…(KNOPF) Geh weg…! (KNOPF)(END)"
	b1_string "Gegner kommen von hinten!(KNOPF)(END)"
	b1_string "Noch ein Monster erschienen!(KNOPF)(END)"
	b1_string "Ultros' Kampfprog. gestartet!(KNOPF)(END)"
	b1_string "Kampfprog. gestartet!(KNOPF)(END)"
	b1_string "Kampfprog. der Luftwaffe gestartet!(KNOPF)(END)"
	b1_string "Atmans Kampfprog. gestartet!(KNOPF)(END)"
	b1_string "Kampfprog. einbezogen!(KNOPF)(END)"
	b1_string "Licht umgibt Atman!(KNOPF)(END)"
	b1_string "Atmans Kraft (O)(KNOPF)(END)"
	b1_string "Mein Name ist Atman…(KNOPF)(ABS)Ich bin reine Energie…(KNOPF)(ABS)…und so alt wie der Kosmos…(KNOPF)(ABS)Geht,(KNOPF) schwache Kreaturen!(KNOPF)(END)"
	b1_string "Rafft etwas zusammen(KNOPF)(END)"
	b1_string "Arbeitslast (mal) 10!(KNOPF)(END)"
	b1_string "Verderbens Aura zittert!(KNOPF)(END)"
	b1_string "Wächter rief seinen Freund!(KNOPF)(END)"
	b1_string "4 Angriffe!(END)"
	b1_string "Ich bin Atman…(KNOPF)(ABS)Seit meiner Geburt…(KNOPF)(ABS)…im Fluß der Zeit vergessen…(KNOPF)(ABS)Für ewig auf geistiger Suche(KNOPF)(ABS)nach dem Sinn…(KNOPF)(ABS)Ich habe eine Antwort…(KNOPF)(END)"
	b1_string "Das Ende kommt…(KNOPF)(ABS)…jenseits des Chaos.(KNOPF)(END)"

.ENDS
