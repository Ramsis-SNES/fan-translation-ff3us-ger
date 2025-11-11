.BANK bankbyte(kEndingCredits) & $3F SLOT 0
.ORG loword(kEndingCredits)

.SECTION "Ending Credits" OVERWRITE

EndingCredits:
	.STRINGMAP ending_credits, "producer(END)HIRONOBU(END)SAKAGUCHI(END)"
	.STRINGMAP ending_credits, "director(END)YOSHINORI(END)KITASE(END)HIROYUKI(END)ITOU(END)"
	.STRINGMAP ending_credits, "main(END)programmer(END)KEN(END)NARITA(END)KIYOSHI(END)YOSHII(END)"
	.STRINGMAP ending_credits, "graphic(END)director(END)TETSUYA(END)TAKAHASHI(END)KAZUKO(END)SHIBUYA(END)HIDEO(END)MINABA(END)NOMURA(END)"
	.STRINGMAP ending_credits, "music(END)NOBUO(END)UEMATSU(END)"
	.STRINGMAP ending_credits, "image(END)design(END)YOSHITAKA(END)AMANO(END)"
	.STRINGMAP ending_credits, "battle(END)planner(END)YASUYUKI(END)HASEBE(END)AKIYOSHI(END)OOTA(END)"
	.STRINGMAP ending_credits, "field(END)YOSHIHIKO(END)MAEKAWA(END)KEITA(END)ETOH(END)SATORU(END)TSUJI(END)"
	.STRINGMAP ending_credits, "event(END)TSUKASA(END)FUJITA(END)KEISUKE(END)MATSUHARA(END)"
	.STRINGMAP ending_credits, "effect(END)HIROSHI(END)HARATA(END)SATOSHI(END)OGATA(END)AKIHIRO(END)YAMAGUCHI(END)"
	.STRINGMAP ending_credits, "sound(END)MINORU(END)AKAO(END)"
	.STRINGMAP ending_credits, "designer(END)HIROKATSU(END)SASAKI(END)TAKAHARU(END)MATSUO(END)YUUSUKE(END)NAORA(END)NOBUYUKI(END)IKEDA(END)TOMOE(END)INAZAWA(END)KAORI(END)TANAKA(END)TAKAMICHI(END)SHIBUYA(END)SINITIROU(END)HAMASAKA(END)AKIYOSHI(END)MASUDA(END)HIDETOSHI(END)KEZUKA(END)"
	.STRINGMAP ending_credits, "monster(END)HITOSHI(END)"
	.STRINGMAP ending_credits, "object(END)KAZUHIRO(END)OHKAWA(END)"
	.STRINGMAP ending_credits, "engineer(END)EIJI(END)NAKAMURA(END)KAZUMI(END)MITOME(END)YOSHITAKA(END)HIROTA(END)YASUMASA(END)OKAMOTO(END)SHUN(END)OHKUBO(END)"
	.STRINGMAP ending_credits, "remake(END)WEIMIN(END)LI(END)AIKO(END)ITO(END)TED(END)WOOLSEY(END)"
;	.STRINGMAP ending_credits, "remake(END)WEIMIN(END)LI(END)AIKO(END)ITO(END) MANULOEWE(END)(END)" ; FIXME Don't use $C0 for space (see table file), this could break things
	.STRINGMAP ending_credits, "system(END)MASAHIRO(END)NAKAJIMA(END)MITSUO(END)OGURA(END)YASUNORI(END)ORIKASA(END)YUTAKA(END)OHDAIRA(END)"
	.STRINGMAP ending_credits, "executive(END)TETSUO(END)MIZUNO(END)HITOSHI(END)TAKEMURA(END)"
	.STRINGMAP ending_credits, "test(END)coordinator(END)s. kajitani(END)r. kouda(END)k. inagi(END)n. hanada(END)h. masuda(END)n. kanai(END)h. sakurai(END)h. suzuki(END)"
	.STRINGMAP ending_credits, "special(END)thanks(END)to(END)m. miyamoto(END)k. torishima(END)h. hashimoto(END)y. hirata(END)t. nomura(END)k. sousui(END)t. tsuruzono(END)y. ishida(END)m. okamiya(END)k. hirata(END)n. watanabe(END)k. maeda(END)k. tanikawa(END)j. saito(END)m. denno(END)s. hidaki(END)k. oogo(END)h. suzuki(END)h. yokota(END)k. yamashita(END)m. yumoto(END)n. ishikawa(END)h. kizuka(END)s. arai(END)m. kouno(END)r. tsukakoshi(END)k. kaneko(END)h. shimodaira(END)m. noumura(END)m. kaneshige(END)h. noguchi(END)m. horie(END)m. mori(END)t. ohno(END)m. someno(END)t. morita(END)y. suemitsu(END)w. sato(END)h. nakamura(END)s. aoyama(END)h. nagahara(END)k. adachi(END)y. uenishi(END)y. ohkawa(END)y. kuwahara(END)k. miyamoto(END)h. suzuki(END)a. kawazu(END)c. fujioka(END)h. kobayashi(END)h. tanaka(END)t. mikasa(END)h. nishida(END)t. takechi(END)rich silveira(END)toshi horii(END)j. yanagihara(END)nathan williams(END)james gillis(END)chris budd(END)mike markey(END)mirko freguia(END)doug smith(END)dalen abraham(END)rebecca coffman(END)brian fehdrau(END)jeff petkau(END)george sinfield(END)alan weiss(END)y. matsumura(END)a. ueda(END)"
	.STRINGMAP ending_credits, "translator(END)"

.ENDS



.BANK bankbyte(kStatusNames) & $3F SLOT 0
.ORG loword(kStatusNames)

.SECTION "Status names" OVERWRITE

StatusNames:
	.STRINGMAP battle_dialogue, "Gefallen  "
	.STRINGMAP battle_dialogue, "Steinern  "
	.STRINGMAP battle_dialogue, "Imp       "
	.STRINGMAP battle_dialogue, "Unsichtbar"
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "Vergiftet "
	.STRINGMAP battle_dialogue, "Zombie    "
	.STRINGMAP battle_dialogue, "Blind     "
	.STRINGMAP battle_dialogue, "Schlaf    "
	.STRINGMAP battle_dialogue, "Gepackt   "
	.STRINGMAP battle_dialogue, "Verwirrt  "
	.STRINGMAP battle_dialogue, "Toben     "
	.STRINGMAP battle_dialogue, "Stumm     "
	.STRINGMAP battle_dialogue, "Abbild    "
	.STRINGMAP battle_dialogue, "Halbtot   "
	.STRINGMAP battle_dialogue, "Verurteilt"
	.STRINGMAP battle_dialogue, "Reflekt   "
	.STRINGMAP battle_dialogue, "Att.Schutz"
	.STRINGMAP battle_dialogue, "Mag.Schutz"
	.STRINGMAP battle_dialogue, "Stop      "
	.STRINGMAP battle_dialogue, "Hast      "
	.STRINGMAP battle_dialogue, "Langsam   "
	.STRINGMAP battle_dialogue, "Regen     "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "Schwebe   "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "Leben_3   "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "

.ENDS



.BANK bankbyte(kCharacterNames) & $3F SLOT 0
.ORG loword(kCharacterNames)

.SECTION "Character names" OVERWRITE

CharacterNames:
	.STRINGMAP battle_dialogue, "Terra "				; FIXME change back to uppercase
	.STRINGMAP battle_dialogue, "Locke "
	.STRINGMAP battle_dialogue, "Cyan  "
	.STRINGMAP battle_dialogue, "Shadow"
	.STRINGMAP battle_dialogue, "Edgar "
	.STRINGMAP battle_dialogue, "Sabin "
	.STRINGMAP battle_dialogue, "Celes "
	.STRINGMAP battle_dialogue, "Strago"
	.STRINGMAP battle_dialogue, "Relm  "
	.STRINGMAP battle_dialogue, "Setzer"
	.STRINGMAP battle_dialogue, "Mog   "
	.STRINGMAP battle_dialogue, "Gau   "
	.STRINGMAP battle_dialogue, "Gogo  "
	.STRINGMAP battle_dialogue, "Umaro "
	.STRINGMAP battle_dialogue, "Banon "
	.STRINGMAP battle_dialogue, "Leo   "
	.STRINGMAP battle_dialogue, "????? "
	.STRINGMAP battle_dialogue, "????? "
	.STRINGMAP battle_dialogue, "Moglin"
	.STRINGMAP battle_dialogue, "Mogpu "
	.STRINGMAP battle_dialogue, "Mogchi"
	.STRINGMAP battle_dialogue, "Morl  "
	.STRINGMAP battle_dialogue, "Mogtan"
	.STRINGMAP battle_dialogue, "Mogul "
	.STRINGMAP battle_dialogue, "Mogshu"
	.STRINGMAP battle_dialogue, "Mogpon"
	.STRINGMAP battle_dialogue, "Mugmug"
	.STRINGMAP battle_dialogue, "Zumog "
	.STRINGMAP battle_dialogue, "Mog   "
	.STRINGMAP battle_dialogue, "????? "
	.STRINGMAP battle_dialogue, "MaelDn"
	.STRINGMAP battle_dialogue, "????? "
	.STRINGMAP battle_dialogue, "Wedge "
	.STRINGMAP battle_dialogue, "Biggs "
	.STRINGMAP battle_dialogue, "      "
	.STRINGMAP battle_dialogue, "      "
	.STRINGMAP battle_dialogue, "      "
	.STRINGMAP battle_dialogue, "      "
	.STRINGMAP battle_dialogue, "      "
	.STRINGMAP battle_dialogue, "      "
	.STRINGMAP battle_dialogue, "      "
	.STRINGMAP battle_dialogue, "Kefka "
	.STRINGMAP battle_dialogue, "Kefka "
	.STRINGMAP battle_dialogue, "Kefka "
	.STRINGMAP battle_dialogue, "Kefka "
	.STRINGMAP battle_dialogue, "Kefka "
	.STRINGMAP battle_dialogue, "Kefka "
	.STRINGMAP battle_dialogue, "Kefka "
	.STRINGMAP battle_dialogue, "Tork  "
	.STRINGMAP battle_dialogue, "Jade  "
	.STRINGMAP battle_dialogue, "Custer"
	.STRINGMAP battle_dialogue, "Fabian"
	.STRINGMAP battle_dialogue, "Drake "
	.STRINGMAP battle_dialogue, "Sara  "
	.STRINGMAP battle_dialogue, "Case  "
	.STRINGMAP battle_dialogue, "Siele "
	.STRINGMAP battle_dialogue, "Ray   "
	.STRINGMAP battle_dialogue, "Reiker"
	.STRINGMAP battle_dialogue, "Lance "
	.STRINGMAP battle_dialogue, "Bob   "
	.STRINGMAP battle_dialogue, "Pepper"
	.STRINGMAP battle_dialogue, "Tau   "
	.STRINGMAP battle_dialogue, "Victor"
	.STRINGMAP battle_dialogue, "Ho    "

.ENDS



.BANK bankbyte(kMapNames) & $3F SLOT 0
.ORG loword(kMapNames)

.SECTION "Map (location) names" OVERWRITE				; $500 = 1,280 bytes max. (DTEs allowed if needed)

.REDEFINE COUNT = kMapNamePointerStart

MapNames:
	d_string "(END)"
	d_string "Inn(END)"						; CHANGEME "Hotel"
	d_string "Waffenladen    (END)"
	d_string "Rüstungen    (END)"
	d_string "Arsenal   (END)"
	d_string "Relikte (END)"
	d_string "Diverse Items(END)"
	d_string "Cafe(END)"
  	d_string "Maschinenraum  (END)"
	d_string "Keller 1     (END)"
	d_string "Keller 2     (END)"
	d_string "Keller 3     (END)"
	d_string "Keller 4     (END)"
	d_string "1. Stock (END)"
	d_string "2. Stock (END)"
	d_string "3. Stock (END)"
	d_string "4. Stock (END)"
	d_string "5. Stock (END)"
	d_string "6. Stock (END)"
	d_string "7. Stock (END)"
	d_string "8. Stock (END)"
	d_string "9. Stock (END)"
	d_string "10. Stock (END)"
	d_string "Chocobo-Stall (END)"
 	d_string "Burg Figaro (END)"
 	d_string "Figaro Süd (END)"
 	d_string "Versteck der “Löwen”   (END)"
 	d_string "Haus des Ältesten  (END)"
	d_string "Duncans Haus     (END)"
	d_string "Berg Koltz(END)"
 	d_string "Thronsaal (END)"
	d_string "Moglie-Höhlen(END)"
	d_string "Narshe(END)"
	d_string "Auktionshaus (END)"
 	d_string "Geitz' Haus (END)"
 	d_string "Baren-Fälle (END)"
	d_string "Mobliz(END)"
	d_string "Nikeah (END)"
	d_string "Tzen(END)"
 	d_string "Versteck der “Löwen”   (END)"
	d_string "Fluß Lete  (END)"
 	d_string "Imperiales Lager (END)"
 	d_string "Burg Doma (END)"
 	d_string "Geisterforst (END)"
	d_string "Schlangengrube(END)"
	d_string "Kohlingen(END)"
	d_string "Zozo(END)"
	d_string "Jituur(END)"
   	d_string "Oper    (END)"
	d_string "Vector(END)"
	d_string "Imperiale Kampfburg (END)"
	d_string "MagiTek Forschungslabor     (END)"
	d_string "Maranda(END)"
	d_string "Alburg (END)"
	d_string "Imperiale Basis  (END)"
 	d_string "Versiegeltes Tor(END)"
	d_string "Thamasa(END)"
	d_string "Kolosseum(END)"
	d_string "Darills Grab / Keller 1(END)"
 	d_string "Fliegendes Land       (END)"
	d_string "Esperdorf   (END)"
	d_string "Berg Zozo(END)"
	d_string "MagiTek Forsch.labor (END)"				; FIXME
 	d_string "Sichelberg    (END)"
 	d_string "Schule  (END)"
 	d_string "Kefkas Turm (END)"
  	d_string "Kampf-Taktik 2     (END)"
	d_string "Kampf-Taktik 1  (END)"
	d_string "Wissenschaft (divers)        (END)"
  	d_string "Höhle zum versiegelten Tor    (END)"
	d_string "Gemischtwaren    (END)"
	d_string "Phönix-Höhle(END)"
 	d_string "Höhle im Veldt  (END)"

MapNames_END:

.IF MapNames_END - MapNames > $500

.FAIL "Text section 'MapNames' is too large."

.ENDIF ; (size check)

.ENDS



.BANK bankbyte(kRareItemNames) & $3F SLOT 0
.ORG loword(kRareItemNames)

.SECTION "Rare Item names" OVERWRITE

RareItemNames:
	.STRINGMAP battle_dialogue, "Schnaps      "
	.STRINGMAP battle_dialogue, "Schlüssel    "
	.STRINGMAP battle_dialogue, "Fisch        "
	.STRINGMAP battle_dialogue, "Fisch        "
	.STRINGMAP battle_dialogue, "Fisch        "
	.STRINGMAP battle_dialogue, "Fisch        "
	.STRINGMAP battle_dialogue, "Metallklumpen"			; CHANGEME "Metallklotz"
	.STRINGMAP battle_dialogue, "Lolas_Brief  "
	.STRINGMAP battle_dialogue, "Koralle      "
	.STRINGMAP battle_dialogue, "Bücher       "
	.STRINGMAP battle_dialogue, "Imper._Brief "
	.STRINGMAP battle_dialogue, "Anti-Rost    "
	.STRINGMAP battle_dialogue, "Autogramm    "
	.STRINGMAP battle_dialogue, "Maniküre     "
	.STRINGMAP battle_dialogue, "Schallplatte "
	.STRINGMAP battle_dialogue, "Lupe         "
	.STRINGMAP battle_dialogue, "Unheilsstein "
	.STRINGMAP battle_dialogue, "Kurioses_Bild"
	.STRINGMAP battle_dialogue, "Dröges_Bild  "
	.STRINGMAP battle_dialogue, "Amulett      "

.ENDS



.BANK bankbyte(kRareItemDescriptions) & $3F SLOT 0
.ORG loword(kRareItemDescriptions)

.SECTION "Rare Item Descriptions" OVERWRITE				; $350 = 848 bytes max.

RareItemDescString00:
	.STRINGMAP battle_dialogue, "Schnaps, von einem Händler(ABS)geklaut(END)"

RareItemDescString01:
	.STRINGMAP battle_dialogue, "Alter Uhrenschlüssel(ABS)von einem Soldaten(END)"

RareItemDescString02:
	.STRINGMAP battle_dialogue, "Ein saftiger Fisch(END)"

RareItemDescString03:
	.STRINGMAP battle_dialogue, "Nur ein Fisch(END)"

RareItemDescString04:
	.STRINGMAP battle_dialogue, "Faulender Fisch(END)"

RareItemDescString05:
	.STRINGMAP battle_dialogue, "Fisch(END)"

RareItemDescString06:
	.STRINGMAP battle_dialogue, "Schweres Gewicht.(ABS)Legt es in eine Truhe...(END)"

RareItemDescString07:
	.STRINGMAP battle_dialogue, "Danke für all die Blumen!(ABS)Ich bin so besorgt...(END)"

RareItemDescString08:
	.STRINGMAP battle_dialogue, "Stück Koralle aus der(ABS)Höhle beim Eboshi-Felsen(END)"

RareItemDescString09:
	.STRINGMAP battle_dialogue, "Buch über Maschinen...(ABS)Und “Buch der Geheimnisse”...(END)"

RareItemDescString10:
	.STRINGMAP battle_dialogue, "Bei einem sternenförmigen(ABS)Gebirge...(END)"

RareItemDescString11:
	.STRINGMAP battle_dialogue, "Löst Rost(END)"

RareItemDescString12:
	.STRINGMAP battle_dialogue, "Autogramm einer Sängerin(END)"

RareItemDescString13:
	.STRINGMAP battle_dialogue, "Schöne rote Maniküre(END)"

RareItemDescString14:
	.STRINGMAP battle_dialogue, "Mit kleinem Kratzer(END)"

RareItemDescString15:
	.STRINGMAP battle_dialogue, "Konvexe Linse(END)"

RareItemDescString16:
	.STRINGMAP battle_dialogue, "Unbekannter Stein(END)"

RareItemDescString17:
	.STRINGMAP battle_dialogue, "Sehr merkwürdiges Bild!(END)"

RareItemDescString18:
	.STRINGMAP battle_dialogue, "Ein gewöhnliches Bild...(END)"

RareItemDescString19:
	.STRINGMAP battle_dialogue, "Amulett der Frau, die die(ABS)MagiTek-Rüstung steuerte(END)"

RareItemDescriptions_END:

.IF RareItemDescriptions_END - RareItemDescString00 > $350

.FAIL "Text section 'RareItemDescriptions' is too large."

.ENDIF ; (size check)

.ENDS



.BANK bankbyte(kEsperAttDescriptions) & $3F SLOT 0
.ORG loword(kEsperAttDescriptions)

.SECTION "Esper attack descriptions" OVERWRITE					; $300 = 768 bytes max.

EsperAttackDescString00:
	.STRINGMAP battle_dialogue, "Angriffselement: Blitz    (END)"

EsperAttackDescString01:
	.STRINGMAP battle_dialogue, "Angriffselem.: Feuer (END)"

EsperAttackDescString02:
	.STRINGMAP battle_dialogue, "Angriffselement: Eis(END)"

EsperAttackDescString03:
	.STRINGMAP battle_dialogue, "Gegn. verstummen(END)"

EsperAttackDescString04:
	.STRINGMAP battle_dialogue, "Angriffselement: Erde (END)"

EsperAttackDescString05:
	.STRINGMAP battle_dialogue, "Lähmt Gegner     (END)"

EsperAttackDescString06:
	.STRINGMAP battle_dialogue, "Angr.-Elem. unbest. (END)"

EsperAttackDescString07:
	.STRINGMAP battle_dialogue, "Angriffselem.: Wasser (END)"

EsperAttackDescString08:
	.STRINGMAP battle_dialogue, "Verwirrt Gegner (END)"

EsperAttackDescString09:
	.STRINGMAP battle_dialogue, "Ermöglicht eine Sprung-(ABS)Attacke(END)"

EsperAttackDescString10:
	.STRINGMAP battle_dialogue, "Eis/Feuer/Blitz(ABS)3-Wege-Angriff (END)"

EsperAttackDescString11:
	.STRINGMAP battle_dialogue, "Zerteilt Gegner       (END)"

EsperAttackDescString12:
	.STRINGMAP battle_dialogue, "Zerteilt Gegner       (END)"

EsperAttackDescString13:
	.STRINGMAP battle_dialogue, "Durchbricht Magie-Abwehr   (END)"

EsperAttackDescString14:
	.STRINGMAP battle_dialogue, "Zauberischer Angriff(END)"

EsperAttackDescString15:
	.STRINGMAP battle_dialogue, "Schadet allen Beteiligten     (END)"

EsperAttackDescString16:
	.STRINGMAP battle_dialogue, "Verwandelt Gegn. in Item(END)"

EsperAttackDescString17:
	.STRINGMAP battle_dialogue, "Füllt HP schrittweise(END)"

EsperAttackDescString18:
	.STRINGMAP battle_dialogue, "“MSchutz”-Zauber    (END)"

EsperAttackDescString19:
	.STRINGMAP battle_dialogue, "“Rflekt”-Zauber       (END)"

EsperAttackDescString20:
	.STRINGMAP battle_dialogue, "Gruppe wird unsichtbar   (END)"

EsperAttackDescString21:
	.STRINGMAP battle_dialogue, "Füllt HP   (END)"

EsperAttackDescString22:
	.STRINGMAP battle_dialogue, "Schützt die Gruppe(END)"

EsperAttackDescString23:
	.STRINGMAP battle_dialogue, "“Heilen”-Zauber          (END)"

EsperAttackDescString24:
	.STRINGMAP battle_dialogue, "Erz. mehrere Abbilder(ABS)der Gruppe(END)"

EsperAttackDescString25:
	.STRINGMAP battle_dialogue, "Füllt HP   (END)"

EsperAttackDescString26:
	.STRINGMAP battle_dialogue, "Stellt Kampfstatus her(END)"

EsperAttackDescriptions_END:

.IF EsperAttackDescriptions_END - EsperAttackDescString00 > $300

;.FAIL "Text section '", get("section.name"), "' is too large."
.FAIL "Text section 'Esper attack descriptions' is too large."

.ENDIF ; (size check)

.ENDS



.BANK bankbyte(kSwdTechNames) & $3F SLOT 0
.ORG loword(kSwdTechNames)

.SECTION "SwdTech names" OVERWRITE

SwdTechNames:
	.STRINGMAP battle_dialogue, "Vernichten  "
	.STRINGMAP battle_dialogue, "Erwidern    "
	.STRINGMAP battle_dialogue, "Zerfetzen   "
	.STRINGMAP battle_dialogue, "Vierschlag  "
	.STRINGMAP battle_dialogue, "Bemächtigen "
	.STRINGMAP battle_dialogue, "Betäuben    "
	.STRINGMAP battle_dialogue, "Vierteilen  "
	.STRINGMAP battle_dialogue, "Spalten     "

.ENDS



.BANK bankbyte(kMonsterNames) & $3F SLOT 0
.ORG loword(kMonsterNames)

.SECTION "Monster names" OVERWRITE

MonsterNames:
	.STRINGMAP battle_dialogue, "Wache     "
	.STRINGMAP battle_dialogue, "Soldat    "
	.STRINGMAP battle_dialogue, "Templer   "
	.STRINGMAP battle_dialogue, "Ninja     "
	.STRINGMAP battle_dialogue, "Samurai   "
	.STRINGMAP battle_dialogue, "Orog      "
	.STRINGMAP battle_dialogue, "Mag_Roller"
	.STRINGMAP battle_dialogue, "Diener    "
	.STRINGMAP battle_dialogue, "Dunstig   "
	.STRINGMAP battle_dialogue, "Liebling  "
	.STRINGMAP battle_dialogue, "Regen-Mann"
	.STRINGMAP battle_dialogue, "Schläger  "
	.STRINGMAP battle_dialogue, "Apokryphus"
	.STRINGMAP battle_dialogue, "DunklMacht"
	.STRINGMAP battle_dialogue, "Flüsterer "
	.STRINGMAP battle_dialogue, "über-Sinn "
	.STRINGMAP battle_dialogue, "Osteosaur."
	.STRINGMAP battle_dialogue, "Kommandant"
	.STRINGMAP battle_dialogue, "Rhodox    "
	.STRINGMAP battle_dialogue, "Wer-Ratte "
	.STRINGMAP battle_dialogue, "Ursus     "
	.STRINGMAP battle_dialogue, "Rhinotaur."
	.STRINGMAP battle_dialogue, "Steroidit "
	.STRINGMAP battle_dialogue, "Laubkerl  "
	.STRINGMAP battle_dialogue, "Str._Katze"
	.STRINGMAP battle_dialogue, "Lobo      "
	.STRINGMAP battle_dialogue, "Dobermann "
	.STRINGMAP battle_dialogue, "Vomammut  "
	.STRINGMAP battle_dialogue, "Fidor     "
	.STRINGMAP battle_dialogue, "Baskervil "
	.STRINGMAP battle_dialogue, "Suriander "
	.STRINGMAP battle_dialogue, "Chimäre   "
	.STRINGMAP battle_dialogue, "Behemot   "
	.STRINGMAP battle_dialogue, "Mesosaurus"
	.STRINGMAP battle_dialogue, "Pterodon  "
	.STRINGMAP battle_dialogue, "Raubfossil"
	.STRINGMAP battle_dialogue, "WeißrDrche"
	.STRINGMAP battle_dialogue, "Todesdrche"
	.STRINGMAP battle_dialogue, "Brachosaur"
	.STRINGMAP battle_dialogue, "Tyranosrs."
	.STRINGMAP battle_dialogue, "Dunkelwind"
	.STRINGMAP battle_dialogue, "Schnäbler "
	.STRINGMAP battle_dialogue, "Geier     "
	.STRINGMAP battle_dialogue, "Harpyie   "
	.STRINGMAP battle_dialogue, "Eins.Krebs"
	.STRINGMAP battle_dialogue, "Trapper   "
	.STRINGMAP battle_dialogue, "Hornisse  "
	.STRINGMAP battle_dialogue, "Kraßhüpfer"
	.STRINGMAP battle_dialogue, "Deltakäfer"
	.STRINGMAP battle_dialogue, "Gilomantis"
	.STRINGMAP battle_dialogue, "Trillium  "
	.STRINGMAP battle_dialogue, "Nachtshttn"
	.STRINGMAP battle_dialogue, "Stppnläufr"
	.STRINGMAP battle_dialogue, "Blütnstiel"
	.STRINGMAP battle_dialogue, "Trilobit  "
	.STRINGMAP battle_dialogue, "Siegfried "
	.STRINGMAP battle_dialogue, "Nautiloid "
	.STRINGMAP battle_dialogue, "Exozit    "
	.STRINGMAP battle_dialogue, "Qualenform"
	.STRINGMAP battle_dialogue, "Laubfrosch"
	.STRINGMAP battle_dialogue, "Lizard    "
	.STRINGMAP battle_dialogue, "Schnabel  "
	.STRINGMAP battle_dialogue, "Sandsauger"
	.STRINGMAP battle_dialogue, "Reiter    "
	.STRINGMAP battle_dialogue, "Chupon    "
	.STRINGMAP battle_dialogue, "Quietsche "
	.STRINGMAP battle_dialogue, "M-TekRüstg"
	.STRINGMAP battle_dialogue, "LuftRüstng"
	.STRINGMAP battle_dialogue, "Telestar  "
	.STRINGMAP battle_dialogue, "Tödl.Waffe"
	.STRINGMAP battle_dialogue, "Verdunster"
	.STRINGMAP battle_dialogue, "Kuchen    "
	.STRINGMAP battle_dialogue, "Ing       "
	.STRINGMAP battle_dialogue, "Bückling  "
	.STRINGMAP battle_dialogue, "Hirnschale"
	.STRINGMAP battle_dialogue, "Krapfen   "
	.STRINGMAP battle_dialogue, "Kaktor    "
	.STRINGMAP battle_dialogue, "Repo-Mann "
	.STRINGMAP battle_dialogue, "Räuber    "
	.STRINGMAP battle_dialogue, "Bombe     "
	.STRINGMAP battle_dialogue, "Stilleben "
	.STRINGMAP battle_dialogue, "Kompakter "
	.STRINGMAP battle_dialogue, "SlamTänzer"
	.STRINGMAP battle_dialogue, "HadesGigas"
	.STRINGMAP battle_dialogue, "Tomberry  "
	.STRINGMAP battle_dialogue, "Zauberurne"
	.STRINGMAP battle_dialogue, "Packer    "
	.STRINGMAP battle_dialogue, "Figalix   "
	.STRINGMAP battle_dialogue, "Büffelochs"
	.STRINGMAP battle_dialogue, "Aspik     "
	.STRINGMAP battle_dialogue, "Geist     "
	.STRINGMAP battle_dialogue, "Krabbler  "
	.STRINGMAP battle_dialogue, "Sandrochen"
	.STRINGMAP battle_dialogue, "Arenaid   "
	.STRINGMAP battle_dialogue, "Aktaneon  "
	.STRINGMAP battle_dialogue, "Sandpferd "
	.STRINGMAP battle_dialogue, "DunklSeite"
	.STRINGMAP battle_dialogue, "WildrOskar"
	.STRINGMAP battle_dialogue, "Kriecher  "
	.STRINGMAP battle_dialogue, "TrübeTasse"
	.STRINGMAP battle_dialogue, "Marschall "
	.STRINGMAP battle_dialogue, "Kämpfer   "
	.STRINGMAP battle_dialogue, "General   "
	.STRINGMAP battle_dialogue, "Heimlich  "
	.STRINGMAP battle_dialogue, "Ogor      "
	.STRINGMAP battle_dialogue, "Hexer     "
	.STRINGMAP battle_dialogue, "Madame    "
	.STRINGMAP battle_dialogue, "Witzbold  "
	.STRINGMAP battle_dialogue, "Eisenfaust"
	.STRINGMAP battle_dialogue, "Kobold    "
	.STRINGMAP battle_dialogue, "Apparit   "
	.STRINGMAP battle_dialogue, "BöserDämon"
	.STRINGMAP battle_dialogue, "Anzeiger  "
	.STRINGMAP battle_dialogue, "Wachhund  "
	.STRINGMAP battle_dialogue, "Spitzel   "
	.STRINGMAP battle_dialogue, "Kanalratte"
	.STRINGMAP battle_dialogue, "Chaot     "
	.STRINGMAP battle_dialogue, "Rhinox    "
	.STRINGMAP battle_dialogue, "Rhobit    "
	.STRINGMAP battle_dialogue, "Wildkatze "
	.STRINGMAP battle_dialogue, "RoterHauer"
	.STRINGMAP battle_dialogue, "Großherzig"
	.STRINGMAP battle_dialogue, "Keiler    "
	.STRINGMAP battle_dialogue, "RächerRalf"
	.STRINGMAP battle_dialogue, "Chitonit  "
	.STRINGMAP battle_dialogue, "Warzenpuck"
	.STRINGMAP battle_dialogue, "Rhyos     "
	.STRINGMAP battle_dialogue, "SirBehemot"
	.STRINGMAP battle_dialogue, "Vectaurus "
	.STRINGMAP battle_dialogue, "Wivern    "
	.STRINGMAP battle_dialogue, "Knöchern  "
	.STRINGMAP battle_dialogue, "Drache    "
	.STRINGMAP battle_dialogue, "Brontaurus"
	.STRINGMAP battle_dialogue, "Allosaurus"
	.STRINGMAP battle_dialogue, "Zirpius   "
	.STRINGMAP battle_dialogue, "Sprinter  "
	.STRINGMAP battle_dialogue, "Truthahn  "
	.STRINGMAP battle_dialogue, "Harpiai   "
	.STRINGMAP battle_dialogue, "DüsterHaus"
	.STRINGMAP battle_dialogue, "Tropfen   "
	.STRINGMAP battle_dialogue, "SüßerSinn "
	.STRINGMAP battle_dialogue, "Halmkauer "
	.STRINGMAP battle_dialogue, "Luridan   "
	.STRINGMAP battle_dialogue, "Zehbeißer "
	.STRINGMAP battle_dialogue, "Miesepeter"
	.STRINGMAP battle_dialogue, "Exorochen "
	.STRINGMAP battle_dialogue, "Zerstörer "
	.STRINGMAP battle_dialogue, "Uroburos  "
	.STRINGMAP battle_dialogue, "Primordial"
	.STRINGMAP battle_dialogue, "Geschoß   "
	.STRINGMAP battle_dialogue, "Xephaler  "
	.STRINGMAP battle_dialogue, "Maliga    "
	.STRINGMAP battle_dialogue, "Gigakröte "
	.STRINGMAP battle_dialogue, "Geckorex  "
	.STRINGMAP battle_dialogue, "Gegacker  "
	.STRINGMAP battle_dialogue, "Landwurm  "
	.STRINGMAP battle_dialogue, "Testreiter"
	.STRINGMAP battle_dialogue, "PlutoRüstg"
	.STRINGMAP battle_dialogue, "Grabkobold"
	.STRINGMAP battle_dialogue, "SchwerRüst"
	.STRINGMAP battle_dialogue, "Jäger     "
	.STRINGMAP battle_dialogue, "Skullion  "
	.STRINGMAP battle_dialogue, "Poplium   "
	.STRINGMAP battle_dialogue, "Intangir  "
	.STRINGMAP battle_dialogue, "Sauertopf "
	.STRINGMAP battle_dialogue, "Eland     "
	.STRINGMAP battle_dialogue, "Enuo      "
	.STRINGMAP battle_dialogue, "Triefauge "
	.STRINGMAP battle_dialogue, "FettrMönch"
	.STRINGMAP battle_dialogue, "Kopfjäger "
	.STRINGMAP battle_dialogue, "Granate   "
	.STRINGMAP battle_dialogue, "Kritiker  "
	.STRINGMAP battle_dialogue, "Pan_Dora  "
	.STRINGMAP battle_dialogue, "SeelnTänzr"
	.STRINGMAP battle_dialogue, "Gigantus  "
	.STRINGMAP battle_dialogue, "Mag_Roller"
	.STRINGMAP battle_dialogue, "Spek_Trumm"
	.STRINGMAP battle_dialogue, "Parasit   "
	.STRINGMAP battle_dialogue, "Erdwächter"
	.STRINGMAP battle_dialogue, "Coelexit  "
	.STRINGMAP battle_dialogue, "Anemone   "
	.STRINGMAP battle_dialogue, "Hipocampus"
	.STRINGMAP battle_dialogue, "Spektrum  "
	.STRINGMAP battle_dialogue, "BöserOskar"
	.STRINGMAP battle_dialogue, "Makel     "
	.STRINGMAP battle_dialogue, "Latimerie "
	.STRINGMAP battle_dialogue, "Geht_Noch "
	.STRINGMAP battle_dialogue, "Allo_Ver  "
	.STRINGMAP battle_dialogue, "Phase     "
	.STRINGMAP battle_dialogue, "Außenseitr"
	.STRINGMAP battle_dialogue, "Barbe     "
	.STRINGMAP battle_dialogue, "ParaSeele "
	.STRINGMAP battle_dialogue, "Schleicher"
	.STRINGMAP battle_dialogue, "Hämophyt  "
	.STRINGMAP battle_dialogue, "Elitetrupp"
	.STRINGMAP battle_dialogue, "Kain-Hase "
	.STRINGMAP battle_dialogue, "Zauberer  "
	.STRINGMAP battle_dialogue, "Patchwork "
	.STRINGMAP battle_dialogue, "Zeritops  "
	.STRINGMAP battle_dialogue, "Kommando  "
	.STRINGMAP battle_dialogue, "Opinikus  "
	.STRINGMAP battle_dialogue, "Knöpfe    "
	.STRINGMAP battle_dialogue, "Lunaris   "
	.STRINGMAP battle_dialogue, "Garm      "
	.STRINGMAP battle_dialogue, "Vindr     "
	.STRINGMAP battle_dialogue, "Kiwok     "
	.STRINGMAP battle_dialogue, "Nervidon  "
	.STRINGMAP battle_dialogue, "Rinn      "
	.STRINGMAP battle_dialogue, "Schnitter "
	.STRINGMAP battle_dialogue, "Ungeziefer"
	.STRINGMAP battle_dialogue, "Mantodea  "
	.STRINGMAP battle_dialogue, "Bogy      "
	.STRINGMAP battle_dialogue, "Preuße    "
	.STRINGMAP battle_dialogue, "Schw.Drche"
	.STRINGMAP battle_dialogue, "Adamanzyt "
	.STRINGMAP battle_dialogue, "Dante     "
	.STRINGMAP battle_dialogue, "Borstndrch"
	.STRINGMAP battle_dialogue, "Duellant  "
	.STRINGMAP battle_dialogue, "Psychot   "
	.STRINGMAP battle_dialogue, "Muus      "
	.STRINGMAP battle_dialogue, "Karkasse  "
	.STRINGMAP battle_dialogue, "Bestrafer "
	.STRINGMAP battle_dialogue, "Ballon    "
	.STRINGMAP battle_dialogue, "Kaudrwelsh"
	.STRINGMAP battle_dialogue, "Gr.Behemot"
	.STRINGMAP battle_dialogue, "Skorpion  "
	.STRINGMAP battle_dialogue, "Chaosdrche"
	.STRINGMAP battle_dialogue, "Feuerspckr"
	.STRINGMAP battle_dialogue, "Vektakobld"
	.STRINGMAP battle_dialogue, "Lich      "
	.STRINGMAP battle_dialogue, "Fischadler"
	.STRINGMAP battle_dialogue, "Mag_Roller"
	.STRINGMAP battle_dialogue, "Käfer     "
	.STRINGMAP battle_dialogue, "Seerose   "
	.STRINGMAP battle_dialogue, "Fortis    "
	.STRINGMAP battle_dialogue, "Vernichter"
	.STRINGMAP battle_dialogue, "Aquila    "
	.STRINGMAP battle_dialogue, "Müll      "
	.STRINGMAP battle_dialogue, "Mandragore"
	.STRINGMAP battle_dialogue, "1._Klasse "
	.STRINGMAP battle_dialogue, "Stepptänzr"
	.STRINGMAP battle_dialogue, "Nekromant "
	.STRINGMAP battle_dialogue, "Borras    "
	.STRINGMAP battle_dialogue, "Mag_Roller"
	.STRINGMAP battle_dialogue, "WildeRatte"
	.STRINGMAP battle_dialogue, "Goldbär   "
	.STRINGMAP battle_dialogue, "Innok     "
	.STRINGMAP battle_dialogue, "Betrüger  "
	.STRINGMAP battle_dialogue, "Roter_Wolf"
	.STRINGMAP battle_dialogue, "Dädalos   "
	.STRINGMAP battle_dialogue, "Vlaush    "
	.STRINGMAP battle_dialogue, "Veteran   "
	.STRINGMAP battle_dialogue, "Luft-Basis"
	.STRINGMAP battle_dialogue, "Eisenhans "
	.STRINGMAP battle_dialogue, "Io        "
	.STRINGMAP battle_dialogue, "Tomberries"
	.STRINGMAP battle_dialogue, "Whelk     "
	.STRINGMAP battle_dialogue, "Gesandter "
	.STRINGMAP battle_dialogue, "MegaRüstng"
	.STRINGMAP battle_dialogue, "Vargas    "
	.STRINGMAP battle_dialogue, "TunnlPanzr"
	.STRINGMAP battle_dialogue, "Prometheus"
	.STRINGMAP battle_dialogue, "Phantomzug"
	.STRINGMAP battle_dialogue, "Dadaluma  "
	.STRINGMAP battle_dialogue, "Shiva     "
	.STRINGMAP battle_dialogue, "Efreet    "
	.STRINGMAP battle_dialogue, "Nummer_024"
	.STRINGMAP battle_dialogue, "Nummer_128"
	.STRINGMAP battle_dialogue, "Inferno   "
	.STRINGMAP battle_dialogue, "Kran      "
	.STRINGMAP battle_dialogue, "Kran      "
	.STRINGMAP battle_dialogue, "Umaro     "
	.STRINGMAP battle_dialogue, "Umaro     "
	.STRINGMAP battle_dialogue, "Wächter   "
	.STRINGMAP battle_dialogue, "Wächter   "
	.STRINGMAP battle_dialogue, "Luftwaffe "
	.STRINGMAP battle_dialogue, "Tritoch   "
	.STRINGMAP battle_dialogue, "Tritoch   "
	.STRINGMAP battle_dialogue, "Feurschluk"
	.STRINGMAP battle_dialogue, "Atman     "
	.STRINGMAP battle_dialogue, "Nerapa    "
	.STRINGMAP battle_dialogue, "SirBehemot"
	.STRINGMAP battle_dialogue, "Kefka     "
	.STRINGMAP battle_dialogue, "Tentakel  "
	.STRINGMAP battle_dialogue, "Dullahan  "
	.STRINGMAP battle_dialogue, "Todesblick"
	.STRINGMAP battle_dialogue, "Chadarnuk "
	.STRINGMAP battle_dialogue, "Cool      "
	.STRINGMAP battle_dialogue, "Moe       "
	.STRINGMAP battle_dialogue, "Di        "
	.STRINGMAP battle_dialogue, "Wrackseele"
	.STRINGMAP battle_dialogue, "Hidon     "
	.STRINGMAP battle_dialogue, "KatanaSeel"
	.STRINGMAP battle_dialogue, "L.30_Magie"
	.STRINGMAP battle_dialogue, "Hidonit   "
	.STRINGMAP battle_dialogue, "Verderben "
	.STRINGMAP battle_dialogue, "Göttin    "
	.STRINGMAP battle_dialogue, "Poltrgeist"
	.STRINGMAP battle_dialogue, "Kefka     "
	.STRINGMAP battle_dialogue, "L.40_Magie"
	.STRINGMAP battle_dialogue, "Ultros    "
	.STRINGMAP battle_dialogue, "Ultros    "
	.STRINGMAP battle_dialogue, "Ultros    "
	.STRINGMAP battle_dialogue, "Chupon    "
	.STRINGMAP battle_dialogue, "L.20_Magie"
	.STRINGMAP battle_dialogue, "Ziegfried "
	.STRINGMAP battle_dialogue, "L.10_Magie"
	.STRINGMAP battle_dialogue, "L.50_Magie"
	.STRINGMAP battle_dialogue, "Kopf      "
	.STRINGMAP battle_dialogue, "Whelk-Kopf"
	.STRINGMAP battle_dialogue, "Kolossus  "
	.STRINGMAP battle_dialogue, "Zar-Drache"
	.STRINGMAP battle_dialogue, "TomberryXL"
	.STRINGMAP battle_dialogue, "L.60_Magie"
	.STRINGMAP battle_dialogue, "Händler   "
	.STRINGMAP battle_dialogue, "Neue Mode "
	.STRINGMAP battle_dialogue, "Tentakel  "
	.STRINGMAP battle_dialogue, "Tentakel  "
	.STRINGMAP battle_dialogue, "Tentakel  "
	.STRINGMAP battle_dialogue, "Re._Klinge"
	.STRINGMAP battle_dialogue, "Li._Klinge"
	.STRINGMAP battle_dialogue, "Grobian   "
	.STRINGMAP battle_dialogue, "Stürmer   "
	.STRINGMAP battle_dialogue, "L.70_Magie"
	.STRINGMAP battle_dialogue, "Tritoch   "
	.STRINGMAP battle_dialogue, "Lasergewhr"
	.STRINGMAP battle_dialogue, "Flocke    "
	.STRINGMAP battle_dialogue, "Rak.werfer"
	.STRINGMAP battle_dialogue, "Chadarnuk "
	.STRINGMAP battle_dialogue, "Eisdrache "
	.STRINGMAP battle_dialogue, "Kefka     "
	.STRINGMAP battle_dialogue, "Sturmdrche"
	.STRINGMAP battle_dialogue, "Ekeldrache"
	.STRINGMAP battle_dialogue, "Aipuu     "
	.STRINGMAP battle_dialogue, "Anführer  "
	.STRINGMAP battle_dialogue, "Grunz     "
	.STRINGMAP battle_dialogue, "Golddrache"
	.STRINGMAP battle_dialogue, "Schädldrch"
	.STRINGMAP battle_dialogue, "BlauerDrch"
	.STRINGMAP battle_dialogue, "RoterDrche"
	.STRINGMAP battle_dialogue, "Piranha   "
	.STRINGMAP battle_dialogue, "Rizopas   "
	.STRINGMAP battle_dialogue, "Gespenst  "
	.STRINGMAP battle_dialogue, "Kurzer_Arm"
	.STRINGMAP battle_dialogue, "Langer_Arm"
	.STRINGMAP battle_dialogue, "Gesicht   "
	.STRINGMAP battle_dialogue, "Tiger     "
	.STRINGMAP battle_dialogue, "Werkzeuge "
	.STRINGMAP battle_dialogue, "Magie     "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Mädel     "
	.STRINGMAP battle_dialogue, "Schlaf    "
	.STRINGMAP battle_dialogue, "Hidonit   "
	.STRINGMAP battle_dialogue, "Hidonit   "
	.STRINGMAP battle_dialogue, "Hidonit   "
	.STRINGMAP battle_dialogue, "L.80_Magie"
	.STRINGMAP battle_dialogue, "L.90_Magie"
	.STRINGMAP battle_dialogue, "ProtoRüstg"
	.STRINGMAP battle_dialogue, "MagiMeistr"
	.STRINGMAP battle_dialogue, "SeelnRettr"
	.STRINGMAP battle_dialogue, "Ultros    "
	.STRINGMAP battle_dialogue, "Ungezogen "
	.STRINGMAP battle_dialogue, "Phunbaba  "
	.STRINGMAP battle_dialogue, "Phunbaba  "
	.STRINGMAP battle_dialogue, "Phunbaba  "
	.STRINGMAP battle_dialogue, "Phunbaba  "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "Zonenfrssr"
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "Offizier  "
	.STRINGMAP battle_dialogue, "Kadett    "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "Soldat    "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "Atman     "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "

.ENDS



.BANK bankbyte(kMonsterSpecialAttacks) & $3F SLOT 0
.ORG loword(kMonsterSpecialAttacks)

.SECTION "Monster special attack names" OVERWRITE

MonsterSpecialAttacks:
	.STRINGMAP battle_dialogue, "Kritisch  "
	.STRINGMAP battle_dialogue, "Antwort   "
	.STRINGMAP battle_dialogue, "Axt       "
	.STRINGMAP battle_dialogue, "Inviz     "
	.STRINGMAP battle_dialogue, "Tödlich   "
	.STRINGMAP battle_dialogue, "Zombiß    "
	.STRINGMAP battle_dialogue, "Rad       "
	.STRINGMAP battle_dialogue, "Einbuße   "
	.STRINGMAP battle_dialogue, "Invizap   "
	.STRINGMAP battle_dialogue, "Sichtlos  "
	.STRINGMAP battle_dialogue, "Umschläger"
	.STRINGMAP battle_dialogue, "Punch     "
	.STRINGMAP battle_dialogue, "Dämpfer   "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Imp-Alp   "
	.STRINGMAP battle_dialogue, "WilderStoß"
	.STRINGMAP battle_dialogue, "Fossil    "
	.STRINGMAP battle_dialogue, "Groll     "
	.STRINGMAP battle_dialogue, "Halb-Tod  "
	.STRINGMAP battle_dialogue, "Biß       "
	.STRINGMAP battle_dialogue, "Kratzen   "
	.STRINGMAP battle_dialogue, "Rote_Linie"
	.STRINGMAP battle_dialogue, "Stürmen   "
	.STRINGMAP battle_dialogue, "Reißzahn  "
	.STRINGMAP battle_dialogue, "KatzKratz "
	.STRINGMAP battle_dialogue, "Stoßzahn  "
	.STRINGMAP battle_dialogue, "Biß       "
	.STRINGMAP battle_dialogue, "Bärenklaue"
	.STRINGMAP battle_dialogue, "Sprung    "
	.STRINGMAP battle_dialogue, "Klaue     "
	.STRINGMAP battle_dialogue, "Gähnen    "
	.STRINGMAP battle_dialogue, "Verspielt "
	.STRINGMAP battle_dialogue, "Niederriß "
	.STRINGMAP battle_dialogue, "T.Peitsche"
	.STRINGMAP battle_dialogue, "Schlitzen "
	.STRINGMAP battle_dialogue, "Knochen   "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Schmelzen "
	.STRINGMAP battle_dialogue, "Schwinger "
	.STRINGMAP battle_dialogue, "Biß       "
	.STRINGMAP battle_dialogue, "Tauchen   "
	.STRINGMAP battle_dialogue, "Staubtuch "
	.STRINGMAP battle_dialogue, "Blender   "
	.STRINGMAP battle_dialogue, "Griff     "
	.STRINGMAP battle_dialogue, "Felsen    "
	.STRINGMAP battle_dialogue, "Programm18"
	.STRINGMAP battle_dialogue, "Eisennadel"
	.STRINGMAP battle_dialogue, "Flügelstoß"
	.STRINGMAP battle_dialogue, "Stürmen   "
	.STRINGMAP battle_dialogue, "Sichel    "
	.STRINGMAP battle_dialogue, "Giftschlag"
	.STRINGMAP battle_dialogue, "Giftschote"
	.STRINGMAP battle_dialogue, "Blender   "
	.STRINGMAP battle_dialogue, "Lebenssaft"
	.STRINGMAP battle_dialogue, "Giftstachl"
	.STRINGMAP battle_dialogue, "Faust     "
	.STRINGMAP battle_dialogue, "Tinte     "
	.STRINGMAP battle_dialogue, "Scheren   "
	.STRINGMAP battle_dialogue, "Garrotte  "
	.STRINGMAP battle_dialogue, "Zunge     "
	.STRINGMAP battle_dialogue, "Imp-Grell "
	.STRINGMAP battle_dialogue, "Peitsche  "
	.STRINGMAP battle_dialogue, "Quetschen "
	.STRINGMAP battle_dialogue, "SilbrSpieß"
	.STRINGMAP battle_dialogue, "Imp-Gefühl"
	.STRINGMAP battle_dialogue, "Programm55"
	.STRINGMAP battle_dialogue, "Metallkick"
	.STRINGMAP battle_dialogue, "Rückschlag"
	.STRINGMAP battle_dialogue, "Schallstoß"
	.STRINGMAP battle_dialogue, "Metallarm "
	.STRINGMAP battle_dialogue, "Klammer   "
	.STRINGMAP battle_dialogue, "Rutschfett"
	.STRINGMAP battle_dialogue, "Grell     "
	.STRINGMAP battle_dialogue, "Umarmung  "
	.STRINGMAP battle_dialogue, "Grinsen   "
	.STRINGMAP battle_dialogue, "Hirnsturm "
	.STRINGMAP battle_dialogue, "Sonn.stich"
	.STRINGMAP battle_dialogue, "Schlüssel "
	.STRINGMAP battle_dialogue, "Sichel    "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Giftkuß   "
	.STRINGMAP battle_dialogue, "Spiegelorb"
	.STRINGMAP battle_dialogue, "Ekst._Tanz"
	.STRINGMAP battle_dialogue, "Kopfstoß  "
	.STRINGMAP battle_dialogue, "Hackbeil  "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Dämpfer   "
	.STRINGMAP battle_dialogue, "Fett      "
	.STRINGMAP battle_dialogue, "Aufstand  "
	.STRINGMAP battle_dialogue, "DornStarre"
	.STRINGMAP battle_dialogue, "Pause     "
	.STRINGMAP battle_dialogue, "Fühler    "
	.STRINGMAP battle_dialogue, "Schwanz   "
	.STRINGMAP battle_dialogue, "Starre    "
	.STRINGMAP battle_dialogue, "Zwinge    "
	.STRINGMAP battle_dialogue, "Zwinge    "
	.STRINGMAP battle_dialogue, "BöserKlaps"
	.STRINGMAP battle_dialogue, "Sabber    "
	.STRINGMAP battle_dialogue, "Sodbrennen"
	.STRINGMAP battle_dialogue, "Schlummer "
	.STRINGMAP battle_dialogue, "Ladung    "
	.STRINGMAP battle_dialogue, "Schwinger "
	.STRINGMAP battle_dialogue, "BioAngriff"
	.STRINGMAP battle_dialogue, "Verstecken"
	.STRINGMAP battle_dialogue, "Zombiß    "
	.STRINGMAP battle_dialogue, "Mag.Sauger"
	.STRINGMAP battle_dialogue, "Sichtlos  "
	.STRINGMAP battle_dialogue, "Parasol   "
	.STRINGMAP battle_dialogue, "Kniestoß  "
	.STRINGMAP battle_dialogue, "Abknallen "
	.STRINGMAP battle_dialogue, "BöserKlaps"
	.STRINGMAP battle_dialogue, "Ekst._Tanz"
	.STRINGMAP battle_dialogue, "Rippe     "
	.STRINGMAP battle_dialogue, "Biß       "
	.STRINGMAP battle_dialogue, "Schwanz   "
	.STRINGMAP battle_dialogue, "Reißzahn  "
	.STRINGMAP battle_dialogue, "Abwürgen  "
	.STRINGMAP battle_dialogue, "GiftHammer"
	.STRINGMAP battle_dialogue, "Reißzahn  "
	.STRINGMAP battle_dialogue, "Sprung    "
	.STRINGMAP battle_dialogue, "Tollwut   "
	.STRINGMAP battle_dialogue, "Biß       "
	.STRINGMAP battle_dialogue, "Blut      "
	.STRINGMAP battle_dialogue, "Angriff   "
	.STRINGMAP battle_dialogue, "Panzer    "
	.STRINGMAP battle_dialogue, "Gähnen    "
	.STRINGMAP battle_dialogue, "Wut       "
	.STRINGMAP battle_dialogue, "Hypno-Gas "
	.STRINGMAP battle_dialogue, "Stoßzahn  "
	.STRINGMAP battle_dialogue, "Flugkralle"
	.STRINGMAP battle_dialogue, "Knochen   "
	.STRINGMAP battle_dialogue, "Schwanz   "
	.STRINGMAP battle_dialogue, "Heulen    "
	.STRINGMAP battle_dialogue, "Giftklaue "
	.STRINGMAP battle_dialogue, "Rüssel    "
	.STRINGMAP battle_dialogue, "Saugrüssel"
	.STRINGMAP battle_dialogue, "Stille    "
	.STRINGMAP battle_dialogue, "Nagel     "
	.STRINGMAP battle_dialogue, "Felsen    "
	.STRINGMAP battle_dialogue, "WildSignal"
	.STRINGMAP battle_dialogue, "Schlafdorn"
	.STRINGMAP battle_dialogue, "Flattern  "
	.STRINGMAP battle_dialogue, "Horn      "
	.STRINGMAP battle_dialogue, "TodesSichl"
	.STRINGMAP battle_dialogue, "Giftschlag"
	.STRINGMAP battle_dialogue, "TodesPolln"
	.STRINGMAP battle_dialogue, "Schlag    "
	.STRINGMAP battle_dialogue, "Todesstoß "
	.STRINGMAP battle_dialogue, "Taubklinge"
	.STRINGMAP battle_dialogue, "Rutschankr"
	.STRINGMAP battle_dialogue, "Schale    "
	.STRINGMAP battle_dialogue, "Scheren   "
	.STRINGMAP battle_dialogue, "Quaken    "
	.STRINGMAP battle_dialogue, "Petrigrell"
	.STRINGMAP battle_dialogue, "Lecken    "
	.STRINGMAP battle_dialogue, "Kompressor"
	.STRINGMAP battle_dialogue, "GoldlLanze"
	.STRINGMAP battle_dialogue, "Krachen   "
	.STRINGMAP battle_dialogue, "Jagd      "
	.STRINGMAP battle_dialogue, "Metallhand"
	.STRINGMAP battle_dialogue, "Programm17"
	.STRINGMAP battle_dialogue, "Gammastrhl"
	.STRINGMAP battle_dialogue, "Klammer   "
	.STRINGMAP battle_dialogue, "Schlaf    "
	.STRINGMAP battle_dialogue, "Feindschft"
	.STRINGMAP battle_dialogue, "Gestank   "
	.STRINGMAP battle_dialogue, "Schleim   "
	.STRINGMAP battle_dialogue, "Traumland "
	.STRINGMAP battle_dialogue, "MtlSchlüsl"
	.STRINGMAP battle_dialogue, "WildeSichl"
	.STRINGMAP battle_dialogue, "Hypnose   "
	.STRINGMAP battle_dialogue, "Zwietracht"
	.STRINGMAP battle_dialogue, "Hypno-Gas "
	.STRINGMAP battle_dialogue, "Roter_Tanz"
	.STRINGMAP battle_dialogue, "Kehlenhieb"
	.STRINGMAP battle_dialogue, "Stürmen   "
	.STRINGMAP battle_dialogue, "Kratzen   "
	.STRINGMAP battle_dialogue, "Denk-Stop "
	.STRINGMAP battle_dialogue, "Gftschwanz"
	.STRINGMAP battle_dialogue, "Hypnodorn "
	.STRINGMAP battle_dialogue, "Imp-Stoß  "
	.STRINGMAP battle_dialogue, "Zwinge    "
	.STRINGMAP battle_dialogue, "Stab      "
	.STRINGMAP battle_dialogue, "Dämonenkuß"
	.STRINGMAP battle_dialogue, "Verdauer  "
	.STRINGMAP battle_dialogue, "Hochkurbln"
	.STRINGMAP battle_dialogue, "BöserKlaps"
	.STRINGMAP battle_dialogue, "Sackgasse "
	.STRINGMAP battle_dialogue, "Grinsen   "
	.STRINGMAP battle_dialogue, "Untergang "
	.STRINGMAP battle_dialogue, "Ohrfeige  "
	.STRINGMAP battle_dialogue, "Wirbler   "
	.STRINGMAP battle_dialogue, "BöserKlaps"
	.STRINGMAP battle_dialogue, "BöserBlick"
	.STRINGMAP battle_dialogue, "Schlag    "
	.STRINGMAP battle_dialogue, "Karotte   "
	.STRINGMAP battle_dialogue, "Todesstufe"
	.STRINGMAP battle_dialogue, "Messer    "
	.STRINGMAP battle_dialogue, "Nachschub "
	.STRINGMAP battle_dialogue, "Programm65"
	.STRINGMAP battle_dialogue, "Aufstand  "
	.STRINGMAP battle_dialogue, "Schwanz   "
	.STRINGMAP battle_dialogue, "GesichtBiß"
	.STRINGMAP battle_dialogue, "Programm95"
	.STRINGMAP battle_dialogue, "Rüssel    "
	.STRINGMAP battle_dialogue, "Spitzhacke"
	.STRINGMAP battle_dialogue, "Schnappen "
	.STRINGMAP battle_dialogue, "Klammer   "
	.STRINGMAP battle_dialogue, "Federhauch"
	.STRINGMAP battle_dialogue, "Bakterien "
	.STRINGMAP battle_dialogue, "Hirn-Töter"
	.STRINGMAP battle_dialogue, "BoogWoogie"
	.STRINGMAP battle_dialogue, "Bärengriff"
	.STRINGMAP battle_dialogue, "KnochPulvr"
	.STRINGMAP battle_dialogue, "Nagel     "
	.STRINGMAP battle_dialogue, "QuarzSpieß"
	.STRINGMAP battle_dialogue, "Wing      "
	.STRINGMAP battle_dialogue, "MegaSchock"
	.STRINGMAP battle_dialogue, "Hirnschock"
	.STRINGMAP battle_dialogue, "Fett      "
	.STRINGMAP battle_dialogue, "Figaro-Tee"
	.STRINGMAP battle_dialogue, "Trommeln  "
	.STRINGMAP battle_dialogue, "Auflodern "
	.STRINGMAP battle_dialogue, "GoldSchlüs"
	.STRINGMAP battle_dialogue, "Zerhacken "
	.STRINGMAP battle_dialogue, "Todes-Dorn"
	.STRINGMAP battle_dialogue, "Einäschern"
	.STRINGMAP battle_dialogue, "Propeller "
	.STRINGMAP battle_dialogue, "Antwort   "
	.STRINGMAP battle_dialogue, "Wirrheit  "
	.STRINGMAP battle_dialogue, "Rüssel    "
	.STRINGMAP battle_dialogue, "Rad       "
	.STRINGMAP battle_dialogue, "Steinstarr"
	.STRINGMAP battle_dialogue, "Fühler    "
	.STRINGMAP battle_dialogue, "Doppelarm "
	.STRINGMAP battle_dialogue, "Abklopfen "
	.STRINGMAP battle_dialogue, "Flattern  "
	.STRINGMAP battle_dialogue, "Parallaus "
	.STRINGMAP battle_dialogue, "Stein-Stoß"
	.STRINGMAP battle_dialogue, "Erzschlüsl"
	.STRINGMAP battle_dialogue, "Hüftschlag"
	.STRINGMAP battle_dialogue, "ZombieStab"
	.STRINGMAP battle_dialogue, "Grobspaltr"
	.STRINGMAP battle_dialogue, "Stürmen   "
	.STRINGMAP battle_dialogue, "Kratzen   "
	.STRINGMAP battle_dialogue, "Hohlmeißel"
	.STRINGMAP battle_dialogue, "Hirnschuß "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Stürmen   "
	.STRINGMAP battle_dialogue, "Gift-Hauer"
	.STRINGMAP battle_dialogue, "Raserei   "
	.STRINGMAP battle_dialogue, "Kritisch  "
	.STRINGMAP battle_dialogue, "Stirnriß  "
	.STRINGMAP battle_dialogue, "Zerstören "
	.STRINGMAP battle_dialogue, "Quetschen "
	.STRINGMAP battle_dialogue, "Messer    "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Metalpunch"
	.STRINGMAP battle_dialogue, "Todesfaust"
	.STRINGMAP battle_dialogue, "Bohrer    "
	.STRINGMAP battle_dialogue, "Bohrer    "
	.STRINGMAP battle_dialogue, "Rad       "
	.STRINGMAP battle_dialogue, "Wegfegen  "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "überfluß  "
	.STRINGMAP battle_dialogue, "Rotes_Fest"
	.STRINGMAP battle_dialogue, "Sobat     "
	.STRINGMAP battle_dialogue, "Eisenkugel"
	.STRINGMAP battle_dialogue, "Eisenkugel"
	.STRINGMAP battle_dialogue, "Angriff   "
	.STRINGMAP battle_dialogue, "Angriff   "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Tinte     "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "VolleKraft"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Böse_Klaue"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Ergreifen "
	.STRINGMAP battle_dialogue, "Morgnstern"
	.STRINGMAP battle_dialogue, "Giftkralle"
	.STRINGMAP battle_dialogue, "Todeskuß  "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Karmahagel"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Schlachten"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Giftklaue "
	.STRINGMAP battle_dialogue, "Dämonenwut"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Psychriß  "
	.STRINGMAP battle_dialogue, "Wüstschlag"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Tinte     "
	.STRINGMAP battle_dialogue, "Tinte     "
	.STRINGMAP battle_dialogue, "Tinte     "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Schleim   "
	.STRINGMAP battle_dialogue, "PetriStoß "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hackbeil  "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Ergreifen "
	.STRINGMAP battle_dialogue, "Ergreifen "
	.STRINGMAP battle_dialogue, "Ergreifen "
	.STRINGMAP battle_dialogue, "Rapier    "
	.STRINGMAP battle_dialogue, "Schnitt   "
	.STRINGMAP battle_dialogue, "Rapier    "
	.STRINGMAP battle_dialogue, "Schnitt   "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Flugschlag"
	.STRINGMAP battle_dialogue, "Schleifzhn"
	.STRINGMAP battle_dialogue, "Klaue     "
	.STRINGMAP battle_dialogue, "Axt       "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Auslöschen"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Biß       "
	.STRINGMAP battle_dialogue, "Gewitter  "
	.STRINGMAP battle_dialogue, "Saugwelle "
	.STRINGMAP battle_dialogue, "Rote_Klaue"
	.STRINGMAP battle_dialogue, "Rutschhieb"
	.STRINGMAP battle_dialogue, "Todeshauer"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "10_Hiebe  "
	.STRINGMAP battle_dialogue, "Ruhe      "
	.STRINGMAP battle_dialogue, "Ruhe      "
	.STRINGMAP battle_dialogue, "Confuklaue"
	.STRINGMAP battle_dialogue, "ZombiKlaue"
	.STRINGMAP battle_dialogue, "Mega-Klaue"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Programm35"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Mag.Sauger"
	.STRINGMAP battle_dialogue, "Octo-Tinte"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Solar_Plex"
	.STRINGMAP battle_dialogue, "Solar_Plex"
	.STRINGMAP battle_dialogue, "Solar_Plex"
	.STRINGMAP battle_dialogue, "Solar_Plex"
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Axt       "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "
	.STRINGMAP battle_dialogue, "Hieb      "

.ENDS



.BANK bankbyte(kEndingANDYOU) & $3F SLOT 0
.ORG loword(kEndingANDYOU)

.SECTION "Ending AND YOU sprite text" OVERWRITE

.HEX BLOCK
	000824310010343108080D3108101D311008033110101331		; "UND IHR"
.ENDHEX

.ENDS



.BANK bankbyte(kBlitzDescriptions) & $3F SLOT 0
.ORG loword(kBlitzDescriptions)

.SECTION "Blitz descriptions" OVERWRITE					; $100 = 256 bytes max.

BlitzDescString00:
	.STRINGMAP battle_dialogue, "Durchbricht gegn. Verteidigung(END)"

BlitzDescString01:
	.STRINGMAP battle_dialogue, "Mystische Lichtattacke(ABS)(1 Gegner)(END)"

BlitzDescString02:
	.STRINGMAP battle_dialogue, "Läßt Gegner abstürzen(END)"

BlitzDescString03:
	.STRINGMAP battle_dialogue, "Feuerangriff auf alle Gegner(END)"

BlitzDescString04:
	.STRINGMAP battle_dialogue, "Heilt den Rest der Gruppe(END)"

BlitzDescString05:
	.STRINGMAP battle_dialogue, "Wind-Attacke (alle Gegner)(END)"

BlitzDescString06:
	.STRINGMAP battle_dialogue, "Heilt Gruppe durch eigenes(ABS)Opfer(END)"

BlitzDescString07:
	.STRINGMAP battle_dialogue, "Trifft mit tödl. Hieb(END)"

BlitzDescriptions_END:

.IF BlitzDescriptions_END - BlitzDescString00 > $100

;.FAIL "Text section '", get("section.name"), "' is too large."
.FAIL "Text section 'Blitz descriptions' is too large."

.ENDIF ; (size check)

.ENDS



.BANK bankbyte(kSwdTechDescriptions) & $3F SLOT 0
.ORG loword(kSwdTechDescriptions)

.SECTION "SwdTech descriptions" OVERWRITE

SwdTechDescString00:
	.STRINGMAP battle_dialogue, "Einfacher Angriff(END)"

SwdTechDescString01:
	.STRINGMAP battle_dialogue, "Einfacher Gegenangriff(END)"

SwdTechDescString02:
	.STRINGMAP battle_dialogue, "Halbiert gegner. HP(END)"

SwdTechDescString03:
	.STRINGMAP battle_dialogue, "Vierfacher Angriff(END)"

SwdTechDescString04:
	.STRINGMAP battle_dialogue, "Absorbiert gegn. HP/MP(END)"

SwdTechDescString05:
	.STRINGMAP battle_dialogue, "Mehrfacher Angr./(ABS)“Stop”-Zauber(END)"

SwdTechDescString06:
	.STRINGMAP battle_dialogue, "Vierfacher Angriff(END)"

SwdTechDescString07:
	.STRINGMAP battle_dialogue, "Würfelt Gegner(END)"

SwdTechDescriptions_END:

.IF SwdTechDescriptions_END - SwdTechDescString00 > $100

;.FAIL "Text section '", get("section.name"), "' is too large."
.FAIL "Text section 'SwdTech descriptions' is too large."

.ENDIF ; (size check)

.ENDS



.BANK bankbyte(kEsperBonusNames) & $3F SLOT 0
.ORG loword(kEsperBonusNames)

.SECTION "Esper bonus names" OVERWRITE

EsperBonusNames:
	.STRINGMAP battle_dialogue, "HP + 10% "
	.STRINGMAP battle_dialogue, "HP + 30% "
	.STRINGMAP battle_dialogue, "HP + 50% "
	.STRINGMAP battle_dialogue, "MP + 10% "
	.STRINGMAP battle_dialogue, "MP + 30% "
	.STRINGMAP battle_dialogue, "MP + 50% "
	.STRINGMAP battle_dialogue, "HP + 100%"
	.STRINGMAP battle_dialogue, "LV + 30% "
	.STRINGMAP battle_dialogue, "LV + 50% "
	.STRINGMAP battle_dialogue, "Stärke+1 "
	.STRINGMAP battle_dialogue, "Stärke+2 "
	.STRINGMAP battle_dialogue, "Tempo+1  "
	.STRINGMAP battle_dialogue, "Tempo+2  "
	.STRINGMAP battle_dialogue, "Ausdaur+1"
	.STRINGMAP battle_dialogue, "Ausdaur+2"
	.STRINGMAP battle_dialogue, "MKraft+1 "
	.STRINGMAP battle_dialogue, "MKraft+2 "

.ENDS



; TODO: Implement symbol names instead of hex values

.BANK bankbyte(kItemSymbolNames) & $3F SLOT 0
.ORG loword(kItemSymbolNames)

.SECTION "Item symbol names" OVERWRITE

ItemSymbolNames:
	.STRINGMAP battle_dialogue, "DOLCH  " ; DIRK
	.STRINGMAP battle_dialogue, "SCHWERT" ; SWORD
	.STRINGMAP battle_dialogue, "LANZE  " ; LANCE
	.STRINGMAP battle_dialogue, "KATANA " ; KNIFE
	.STRINGMAP battle_dialogue, "STAB   " ; ROD
	.STRINGMAP battle_dialogue, "PINSEL " ; BRUSH
	.STRINGMAP battle_dialogue, "STERN  " ; STARS
	.STRINGMAP battle_dialogue, "SPEZIAL" ; SPECIAL
	.STRINGMAP battle_dialogue, "SPIELER" ; GAMBLER
	.STRINGMAP battle_dialogue, "KLAUE  " ; CLAW
	.STRINGMAP battle_dialogue, "SCHILD " ; SHIELD
	.STRINGMAP battle_dialogue, "HELM   " ; HELMET
	.STRINGMAP battle_dialogue, "RÜSTUNG" ; ARMOR
	.STRINGMAP battle_dialogue, "GERÄT  " ; TOOL
	.STRINGMAP battle_dialogue, "STAHL  " ; SKEAN
	.STRINGMAP battle_dialogue, "RELIKT " ; RELIC

.ENDS



.BANK bankbyte(kItemNames) & $3F SLOT 0
.ORG loword(kItemNames)

.SECTION "Item names" OVERWRITE

ItemNames:
	.DB $D8
	.STRINGMAP battle_dialogue, "Degen       "
	.DB $D8
	.STRINGMAP battle_dialogue, "Mythrilsäbel"
	.DB $D8
	.STRINGMAP battle_dialogue, "Wächter     "
	.DB $D8
	.STRINGMAP battle_dialogue, "Windlanze   "
	.DB $D8
	.STRINGMAP battle_dialogue, "Jagdmesser  "
	.DB $D8
	.STRINGMAP battle_dialogue, "Attentäter  "
	.DB $D8
	.STRINGMAP battle_dialogue, "Menschnfrssr"
	.DB $D8
	.STRINGMAP battle_dialogue, "WaffnBrecher"
	.DB $D8
	.STRINGMAP battle_dialogue, "Graedus     "
	.DB $D8
	.STRINGMAP battle_dialogue, "Tapferkeit  "
	.DB $D9
	.STRINGMAP battle_dialogue, "Mythrilblatt"
	.DB $D9
	.STRINGMAP battle_dialogue, "Adels-Dolch "
	.DB $D9
	.STRINGMAP battle_dialogue, "Runenklinge "
	.DB $D9
	.STRINGMAP battle_dialogue, "Flammensäbel"
	.DB $D9
	.STRINGMAP battle_dialogue, "Blizzard    "
	.DB $D9
	.STRINGMAP battle_dialogue, "Donnerklinge"
	.DB $D9
	.STRINGMAP battle_dialogue, "Fechtdegen  "
	.DB $D9
	.STRINGMAP battle_dialogue, "Schartig    "
	.DB $D9
	.STRINGMAP battle_dialogue, "Sauger      "
	.DB $D9
	.STRINGMAP battle_dialogue, "Verstärker  "
	.DB $D9
	.STRINGMAP battle_dialogue, "Kristall    "
	.DB $D9
	.STRINGMAP battle_dialogue, "Falkenklinge"
	.DB $D9
	.STRINGMAP battle_dialogue, "Seelen-Säbel"
	.DB $D9
	.STRINGMAP battle_dialogue, "Ogerkeule   "
	.DB $D9
	.STRINGMAP battle_dialogue, "Exkalibur   "
	.DB $D9
	.STRINGMAP battle_dialogue, "Krummschwert"
	.DB $D9
	.STRINGMAP battle_dialogue, "Illumina    "
	.DB $D9
	.STRINGMAP battle_dialogue, "Ragnarok    "
	.DB $D9
	.STRINGMAP battle_dialogue, "Atman       "
	.DB $DA
	.STRINGMAP battle_dialogue, "Mythrilstich"
	.DB $DA
	.STRINGMAP battle_dialogue, "Dreizack    "
	.DB $DA
	.STRINGMAP battle_dialogue, "Grober_Speer"
	.DB $DA
	.STRINGMAP battle_dialogue, "Partisan    "
	.DB $DA
	.STRINGMAP battle_dialogue, "HeiligeLanze"
	.DB $DA
	.STRINGMAP battle_dialogue, "Goldlanze   "
	.DB $DA
	.STRINGMAP battle_dialogue, "Aura-Lanze  "
	.DB $DA
	.STRINGMAP battle_dialogue, "Imp-Hellebd."
	.DB $D8
	.STRINGMAP battle_dialogue, "Imperium    "
	.DB $D8
	.STRINGMAP battle_dialogue, "Kodachi     "
	.DB $D8
	.STRINGMAP battle_dialogue, "Lotusklinge "
	.DB $D8
	.STRINGMAP battle_dialogue, "Gehärtet    "
	.DB $D8
	.STRINGMAP battle_dialogue, "Sturm/Drang "
	.DB $D8
	.STRINGMAP battle_dialogue, "Wucht       "
	.DB $DB
	.STRINGMAP battle_dialogue, "Ashur       "
	.DB $DB
	.STRINGMAP battle_dialogue, "Kotetsu     "
	.DB $DB
	.STRINGMAP battle_dialogue, "Geschmiedet "
	.DB $DB
	.STRINGMAP battle_dialogue, "Sturm       "
	.DB $DB
	.STRINGMAP battle_dialogue, "Murasame    "
	.DB $DB
	.STRINGMAP battle_dialogue, "Aura        "
	.DB $DB
	.STRINGMAP battle_dialogue, "Strato      "
	.DB $DB
	.STRINGMAP battle_dialogue, "Himmel      "
	.DB $DC
	.STRINGMAP battle_dialogue, "Heilstab    "
	.DB $DC
	.STRINGMAP battle_dialogue, "Mythrilstab "
	.DB $DC
	.STRINGMAP battle_dialogue, "Feuerstab   "
	.DB $DC
	.STRINGMAP battle_dialogue, "Eisstab     "
	.DB $DC
	.STRINGMAP battle_dialogue, "Donnerstab  "
	.DB $DC
	.STRINGMAP battle_dialogue, "Giftstab    "
	.DB $DC
	.STRINGMAP battle_dialogue, "HeiligerStab"
	.DB $DC
	.STRINGMAP battle_dialogue, "Erdenstab   "
	.DB $DC
	.STRINGMAP battle_dialogue, "Vollstrecker"
	.DB $DC
	.STRINGMAP battle_dialogue, "Magus-Stab  "
	.DB $DD
	.STRINGMAP battle_dialogue, "Chocobo-Pnsl"
	.DB $DD
	.STRINGMAP battle_dialogue, "DaVinci-Pnsl"
	.DB $DD
	.STRINGMAP battle_dialogue, "Magie-Pinsel"
	.DB $DD
	.STRINGMAP battle_dialogue, "BunterPinsel"
	.DB $DE
	.STRINGMAP battle_dialogue, "Wurfstern   "
	.DB $DE
	.STRINGMAP battle_dialogue, "Ninjastern  "
	.DB $DE
	.STRINGMAP battle_dialogue, "Reißstern   "
	.DB $DF
	.STRINGMAP battle_dialogue, "Dreschflegel"
	.DB $DF
	.STRINGMAP battle_dialogue, "Vollmond    "
	.DB $DF
	.STRINGMAP battle_dialogue, "Morgenstern "
	.DB $DF
	.STRINGMAP battle_dialogue, "Bumerang    "
	.DB $DF
	.STRINGMAP battle_dialogue, "Sonnenaufgng"
	.DB $DF
	.STRINGMAP battle_dialogue, "Falkenauge  "
	.DB $DF
	.STRINGMAP battle_dialogue, "Knochenkeule"
	.DB $DF
	.STRINGMAP battle_dialogue, "Hinterhalt  "
	.DB $DF
	.STRINGMAP battle_dialogue, "Gefiedert   "
	.DB $E0
	.STRINGMAP battle_dialogue, "Karten      "
	.DB $E0
	.STRINGMAP battle_dialogue, "Wurfpfeile  "
	.DB $E0
	.STRINGMAP battle_dialogue, "Todespfeile "
	.DB $E0
	.STRINGMAP battle_dialogue, "Trumpfkarte "
	.DB $E0
	.STRINGMAP battle_dialogue, "EchterWürfel"
	.DB $E0
	.STRINGMAP battle_dialogue, "GezinktrWrfl"
	.DB $E1
	.STRINGMAP battle_dialogue, "Schlagring  "
	.DB $E1
	.STRINGMAP battle_dialogue, "Mythrilklaue"
	.DB $E1
	.STRINGMAP battle_dialogue, "Kayser      "
	.DB $E1
	.STRINGMAP battle_dialogue, "Giftklaue   "
	.DB $E1
	.STRINGMAP battle_dialogue, "Feuerschlag "
	.DB $E1
	.STRINGMAP battle_dialogue, "Drachenklaue"
	.DB $E1
	.STRINGMAP battle_dialogue, "Tigerfänge  "
	.DB $E2
	.STRINGMAP battle_dialogue, "RiemenSchild"
	.DB $E2
	.STRINGMAP battle_dialogue, "Schwer.Schld"
	.DB $E2
	.STRINGMAP battle_dialogue, "Mythrilschld"
	.DB $E2
	.STRINGMAP battle_dialogue, "Goldschild  "
	.DB $E2
	.STRINGMAP battle_dialogue, "Aegis-Schild"
	.DB $E2
	.STRINGMAP battle_dialogue, "Diamantschld"
	.DB $E2
	.STRINGMAP battle_dialogue, "Flammenschld"
	.DB $E2
	.STRINGMAP battle_dialogue, "Eisschild   "
	.DB $E2
	.STRINGMAP battle_dialogue, "Donnerschild"
	.DB $E2
	.STRINGMAP battle_dialogue, "Krist.schild"
	.DB $E2
	.STRINGMAP battle_dialogue, "Genji-Schild"
	.DB $E2
	.STRINGMAP battle_dialogue, "Krötenschild"
	.DB $E2
	.STRINGMAP battle_dialogue, "Fluch-Schild"
	.DB $E2
	.STRINGMAP battle_dialogue, "Paladinschld"
	.DB $E2
	.STRINGMAP battle_dialogue, "Kraft-Schild"
	.DB $E3
	.STRINGMAP battle_dialogue, "Lederhut    "
	.DB $E3
	.STRINGMAP battle_dialogue, "Haarband    "
	.DB $E3
	.STRINGMAP battle_dialogue, "Federhut    "
	.DB $E3
	.STRINGMAP battle_dialogue, "Barett      "
	.DB $E3
	.STRINGMAP battle_dialogue, "Magus-Hut   "
	.DB $E3
	.STRINGMAP battle_dialogue, "Stirnband   "
	.DB $E3
	.STRINGMAP battle_dialogue, "Eisenhelm   "
	.DB $E3
	.STRINGMAP battle_dialogue, "Diadem      "
	.DB $E3
	.STRINGMAP battle_dialogue, "Bardenhut   "
	.DB $E3
	.STRINGMAP battle_dialogue, "GrünesBarett"
	.DB $E3
	.STRINGMAP battle_dialogue, "Kopfband    "
	.DB $E3
	.STRINGMAP battle_dialogue, "Mythrilhelm "
	.DB $E3
	.STRINGMAP battle_dialogue, "Tiara       "
	.DB $E3
	.STRINGMAP battle_dialogue, "Goldhelm    "
	.DB $E3
	.STRINGMAP battle_dialogue, "Tigermaske  "
	.DB $E3
	.STRINGMAP battle_dialogue, "Rote_Kappe  "
	.DB $E3
	.STRINGMAP battle_dialogue, "Rätsel-Flor "
	.DB $E3
	.STRINGMAP battle_dialogue, "Reif        "
	.DB $E3
	.STRINGMAP battle_dialogue, "Adels-Krone "
	.DB $E3
	.STRINGMAP battle_dialogue, "Diamanthelm "
	.DB $E3
	.STRINGMAP battle_dialogue, "DunkleKapuze"
	.DB $E3
	.STRINGMAP battle_dialogue, "Kristallhelm"
	.DB $E3
	.STRINGMAP battle_dialogue, "Fluch-Flor  "
	.DB $E3
	.STRINGMAP battle_dialogue, "Katzenhut   "
	.DB $E3
	.STRINGMAP battle_dialogue, "Genji-Helm  "
	.DB $E3
	.STRINGMAP battle_dialogue, "Dornenhelm  "
	.DB $E3
	.STRINGMAP battle_dialogue, "Titanium    "
	.DB $E4
	.STRINGMAP battle_dialogue, "Lederrüstung"
	.DB $E4
	.STRINGMAP battle_dialogue, "Wollweste   "
	.DB $E4
	.STRINGMAP battle_dialogue, "KungFu-Anzug"
	.DB $E4
	.STRINGMAP battle_dialogue, "Eisenrüstung"
	.DB $E4
	.STRINGMAP battle_dialogue, "Seidenweste "
	.DB $E4
	.STRINGMAP battle_dialogue, "Mythrilhemd "
	.DB $E4
	.STRINGMAP battle_dialogue, "Ninja-Kleidg"
	.DB $E4
	.STRINGMAP battle_dialogue, "Weißer_Anzug"
	.DB $E4
	.STRINGMAP battle_dialogue, "Mythrilrüstg"
	.DB $E4
	.STRINGMAP battle_dialogue, "Gaia-Verkldg"
	.DB $E4
	.STRINGMAP battle_dialogue, "Wunderanzug "
	.DB $E4
	.STRINGMAP battle_dialogue, "Goldrüstung "
	.DB $E4
	.STRINGMAP battle_dialogue, "Kraftschärpe"
	.DB $E4
	.STRINGMAP battle_dialogue, "Leichte_Robe"
	.DB $E4
	.STRINGMAP battle_dialogue, "Diamanthemd "
	.DB $E4
	.STRINGMAP battle_dialogue, "Rote_Jacke  "
	.DB $E4
	.STRINGMAP battle_dialogue, "Kraftrüstung"
	.DB $E4
	.STRINGMAP battle_dialogue, "Diamantrüstg"
	.DB $E4
	.STRINGMAP battle_dialogue, "DunklerAnzug"
	.DB $E4
	.STRINGMAP battle_dialogue, "Tao-Robe    "
	.DB $E4
	.STRINGMAP battle_dialogue, "Kristallhemd"
	.DB $E4
	.STRINGMAP battle_dialogue, "Zarinnenrobe"
	.DB $E4
	.STRINGMAP battle_dialogue, "Genjirüstung"
	.DB $E4
	.STRINGMAP battle_dialogue, "Imp-Rüstung "
	.DB $E4
	.STRINGMAP battle_dialogue, "Minerva     "
	.DB $E4
	.STRINGMAP battle_dialogue, "Getigert    "
	.DB $E4
	.STRINGMAP battle_dialogue, "Chocobo-Rstg"
	.DB $E4
	.STRINGMAP battle_dialogue, "Moglie-Rüstg"
	.DB $E4
	.STRINGMAP battle_dialogue, "EichhornRstg"
	.DB $E4
	.STRINGMAP battle_dialogue, "Bahamut-Rstg"
	.DB $E4
	.STRINGMAP battle_dialogue, "Schneeschal "
	.DB $E5
	.STRINGMAP battle_dialogue, "Wahn-Summer "
	.DB $E5
	.STRINGMAP battle_dialogue, "Giftschleudr"
	.DB $E5
	.STRINGMAP battle_dialogue, "Abblitzen   "
	.DB $E5
	.STRINGMAP battle_dialogue, "Kettensäge  "
	.DB $E5
	.STRINGMAP battle_dialogue, "Scanner     "
	.DB $E5
	.STRINGMAP battle_dialogue, "Bohrer      "
	.DB $E5
	.STRINGMAP battle_dialogue, "Luft-Anker  "
	.DB $E5
	.STRINGMAP battle_dialogue, "Flitzebogen "
	.DB $E6
	.STRINGMAP battle_dialogue, "Feuerstahl  "
	.DB $E6
	.STRINGMAP battle_dialogue, "Wasserstahl "
	.DB $E6
	.STRINGMAP battle_dialogue, "Blitzstahl  "
	.DB $E6
	.STRINGMAP battle_dialogue, "Invizstahl  "
	.DB $E6
	.STRINGMAP battle_dialogue, "Shadow-Stahl"
	.DB $E7
	.STRINGMAP battle_dialogue, "Schutzbrille"
	.DB $E7
	.STRINGMAP battle_dialogue, "Sternenkette"
	.DB $E7
	.STRINGMAP battle_dialogue, "Friedensring"
	.DB $E7
	.STRINGMAP battle_dialogue, "Amulett     "
	.DB $E7
	.STRINGMAP battle_dialogue, "Weißes_Cape "
	.DB $E7
	.STRINGMAP battle_dialogue, "Juwelenring "
	.DB $E7
	.STRINGMAP battle_dialogue, "Feenring    "
	.DB $E7
	.STRINGMAP battle_dialogue, "Barrier.Ring"
	.DB $E7
	.STRINGMAP battle_dialogue, "Mythrilring "
	.DB $E7
	.STRINGMAP battle_dialogue, "Schutzring  "
	.DB $E7
	.STRINGMAP battle_dialogue, "Laufschuhe  "
	.DB $E7
	.STRINGMAP battle_dialogue, "Reflex.Ring "
	.DB $E7
	.STRINGMAP battle_dialogue, "Cherub-Daune"
	.DB $E7
	.STRINGMAP battle_dialogue, "Heilring    "
	.DB $E7
	.STRINGMAP battle_dialogue, "Wahrer_Held "
	.DB $E7
	.STRINGMAP battle_dialogue, "DragonerStfl"
	.DB $E7
	.STRINGMAP battle_dialogue, "Zephyr-Cape "
	.DB $E7
	.STRINGMAP battle_dialogue, "Zarinnenring"
	.DB $E7
	.STRINGMAP battle_dialogue, "Fluch-Ring  "
	.DB $E7
	.STRINGMAP battle_dialogue, "Ohrringe    "
	.DB $E7
	.STRINGMAP battle_dialogue, "AtlasArmband"
	.DB $E7
	.STRINGMAP battle_dialogue, "Blizzard-Orb"
	.DB $E7
	.STRINGMAP battle_dialogue, "Ring_der_Wut"
	.DB $E7
	.STRINGMAP battle_dialogue, "Schleichring"
	.DB $E7
	.STRINGMAP battle_dialogue, "Silberreif  "
	.DB $E7
	.STRINGMAP battle_dialogue, "Heldenring  "
	.DB $E7
	.STRINGMAP battle_dialogue, "Schleife    "
	.DB $E7
	.STRINGMAP battle_dialogue, "Muskel-Gurt "
	.DB $E7
	.STRINGMAP battle_dialogue, "Kristall-Orb"
	.DB $E7
	.STRINGMAP battle_dialogue, "Goldband    "
	.DB $E7
	.STRINGMAP battle_dialogue, "MP-Einteiler"
	.DB $E7
	.STRINGMAP battle_dialogue, "Langfinger  "
	.DB $E7
	.STRINGMAP battle_dialogue, "Fehdehands. "
	.DB $E7
	.STRINGMAP battle_dialogue, "Genji-Hands."
	.DB $E7
	.STRINGMAP battle_dialogue, "Hyper-Gelenk"
	.DB $E7
	.STRINGMAP battle_dialogue, "Opfergabe   "
	.DB $E7
	.STRINGMAP battle_dialogue, "Perlenschnur"
	.DB $E7
	.STRINGMAP battle_dialogue, "Schwarzgurt "
	.DB $E7
	.STRINGMAP battle_dialogue, "Münzwurf    "
	.DB $E7
	.STRINGMAP battle_dialogue, "FalscherBart"
	.DB $E7
	.STRINGMAP battle_dialogue, "Schatulle   "
	.DB $E7
	.STRINGMAP battle_dialogue, "Drachenhorn "
	.DB $E7
	.STRINGMAP battle_dialogue, "Orden       "
	.DB $E7
	.STRINGMAP battle_dialogue, "Memento-Ring"
	.DB $E7
	.STRINGMAP battle_dialogue, "Sicherheit  "
	.DB $E7
	.STRINGMAP battle_dialogue, "Relikt-Ring "
	.DB $E7
	.STRINGMAP battle_dialogue, "MoglieZauber"
	.DB $E7
	.STRINGMAP battle_dialogue, "Zauberreif  "
	.DB $E7
	.STRINGMAP battle_dialogue, "Wunderschuhe"
	.DB $E7
	.STRINGMAP battle_dialogue, "Deckung     "
	.DB $E7
	.STRINGMAP battle_dialogue, "Sturmband   "
	.DB $E7
	.STRINGMAP battle_dialogue, "Scharfblick "
	.DB $E7
	.STRINGMAP battle_dialogue, "Erf.-Ei     "
	.DB $E7
	.STRINGMAP battle_dialogue, "Katzenglocke"
	.DB $E7
	.STRINGMAP battle_dialogue, "Sprintschuhe"
	.STRINGMAP battle_dialogue, " Namenskarte "
	.STRINGMAP battle_dialogue, " Tonic       "
	.STRINGMAP battle_dialogue, " Trank       "
	.STRINGMAP battle_dialogue, " X-Trank     "
	.STRINGMAP battle_dialogue, " Tinktur     "
	.STRINGMAP battle_dialogue, " Ether       "
	.STRINGMAP battle_dialogue, " X-Ether     "
	.STRINGMAP battle_dialogue, " Elixier     "
	.STRINGMAP battle_dialogue, " Megalixier  "
	.STRINGMAP battle_dialogue, " Phönix-Feder"
	.STRINGMAP battle_dialogue, " Seelenheil  "
	.STRINGMAP battle_dialogue, " Gegengift   "
	.STRINGMAP battle_dialogue, " Augentropfen"
	.STRINGMAP battle_dialogue, " Steinweicher"
	.STRINGMAP battle_dialogue, " Heilmittel  "
	.STRINGMAP battle_dialogue, " Schlafsack  "
	.STRINGMAP battle_dialogue, " Zelt        "
	.STRINGMAP battle_dialogue, " Grünkirsche "
	.STRINGMAP battle_dialogue, " Magizit     "
	.STRINGMAP battle_dialogue, " Super-Ball  "
	.STRINGMAP battle_dialogue, " Magie-Echo  "
	.STRINGMAP battle_dialogue, " Rauchbombe  "
	.STRINGMAP battle_dialogue, " Warp-Stein  "
	.STRINGMAP battle_dialogue, " Pökelfleisch"
	.STRINGMAP battle_dialogue, " Leer        "

.ENDS



.BANK bankbyte(kSpellDescriptions) & $3F SLOT 0
.ORG loword(kSpellDescriptions)

.SECTION "Spell descriptions" OVERWRITE					; $500 = 1,280 bytes max.

SpellDescString00:
	.STRINGMAP battle_dialogue, "Feuer-Angriff        (END)"

SpellDescString01:
	.STRINGMAP battle_dialogue, "Eis-Angriff         (END)"

SpellDescString02:
	.STRINGMAP battle_dialogue, "Blitz-Angriff             (END)"

SpellDescString03:
	.STRINGMAP battle_dialogue, "Vergiftet Gegner(END)"

SpellDescString04:
	.STRINGMAP battle_dialogue, "Stiehlt gegnerische HP (END)"

SpellDescString05:
	.STRINGMAP battle_dialogue, "Verbrennt Gegner     (END)"

SpellDescString06:
	.STRINGMAP battle_dialogue, "Vereist Gegner      (END)"

SpellDescString07:
	.STRINGMAP battle_dialogue, "Erschlägt Gegner          (END)"

SpellDescString08:
	.STRINGMAP battle_dialogue, "Toxischer Angriff      (END)"

SpellDescString09:
	.STRINGMAP battle_dialogue, "Massive Feuerattacke (END)"

SpellDescString10:
	.STRINGMAP battle_dialogue, "Massiver Eis-Angriff(END)"

SpellDescString11:
	.STRINGMAP battle_dialogue, "Gewitter der Zerstörung   (END)"

SpellDescString12:
	.STRINGMAP battle_dialogue, "Versteinert Gegner     (END)"

SpellDescString13:
	.STRINGMAP battle_dialogue, "Vernichtet Gegner  (END)"

SpellDescString14:
	.STRINGMAP battle_dialogue, "Heilig-Angriff        (END)"

SpellDescString15:
	.STRINGMAP battle_dialogue, "Durchschlägt Barrieren (END)"

SpellDescString16:
	.STRINGMAP battle_dialogue, "Halbiert HP des Gegners(END)"

SpellDescString17:
	.STRINGMAP battle_dialogue, "Leert 3/4 der HP des Gegners(END)"

SpellDescString18:
	.STRINGMAP battle_dialogue, "Schickt Gegner in die X-Zone  (END)"

SpellDescString19:
	.STRINGMAP battle_dialogue, "Schadet mehreren Gegnern(END)"

SpellDescString20:
	.STRINGMAP battle_dialogue, "Schadet mehreren Gegnern(END)"

SpellDescString21:
	.STRINGMAP battle_dialogue, "Angriff mit Element Erde,(ABS)ziellos(END)"

SpellDescString22:
	.STRINGMAP battle_dialogue, "Verzweiflungsangriff,(ABS)ziellos(END)"

SpellDescString23:
	.STRINGMAP battle_dialogue, "Bohrender Feuerangriff,(ABS)ziellos(END)"

SpellDescString24:
	.STRINGMAP battle_dialogue, "Ermittelt Schwachpunkt/HP(ABS)des Gegners(END)"

SpellDescString25:
	.STRINGMAP battle_dialogue, "Verlangsamt Ziel(END)"

SpellDescString26:
	.STRINGMAP battle_dialogue, "Leert MP(END)"

SpellDescString27:
	.STRINGMAP battle_dialogue, "Ziel verstummt(END)"

SpellDescString28:
	.STRINGMAP battle_dialogue, "Erhöht AVertd.(END)"

SpellDescString29:
	.STRINGMAP battle_dialogue, "Schläfert Ziel ein(END)"

SpellDescString30:
	.STRINGMAP battle_dialogue, "Verwirrt Ziel(END)"

SpellDescString31:
	.STRINGMAP battle_dialogue, "Erhöht Geschwindigkeit(END)"

SpellDescString32:
	.STRINGMAP battle_dialogue, "Stoppt Gegner(END)"

SpellDescString33:
	.STRINGMAP battle_dialogue, "Ziel wird Berserker(END)"

SpellDescString34:
	.STRINGMAP battle_dialogue, "Läßt Ziel schweben(END)"

SpellDescString35:
	.STRINGMAP battle_dialogue, "Ändert Status von/nach(ABS)“Imp”(END)"

SpellDescString36:
	.STRINGMAP battle_dialogue, "Ziel erhält magische Barriere(END)"

SpellDescString37:
	.STRINGMAP battle_dialogue, "Erhöht MVertd.(END)"

SpellDescString38:
	.STRINGMAP battle_dialogue, "Macht Ziel unsichtbar(END)"

SpellDescString39:
	.STRINGMAP battle_dialogue, "Ganze Gruppe wird schneller(END)"

SpellDescString40:
	.STRINGMAP battle_dialogue, "Verlangsamt mehrere Gegner(END)"

SpellDescString41:
	.STRINGMAP battle_dialogue, "Entzieht Gegner MP(END)"

SpellDescString42:
	.STRINGMAP battle_dialogue, "Ermöglicht Flucht aus Höhlen/(ABS)Kämpfen(END)"

SpellDescString43:
	.STRINGMAP battle_dialogue, "Ermöglicht Doppelbefehle(END)"

SpellDescString44:
	.STRINGMAP battle_dialogue, "Heilt schlechten Status(END)"

SpellDescString45:
	.STRINGMAP battle_dialogue, "Füllt HP(END)"

SpellDescString46:
	.STRINGMAP battle_dialogue, "Füllt HP(END)"

SpellDescString47:
	.STRINGMAP battle_dialogue, "Füllt HP(END)"

SpellDescString48:
	.STRINGMAP battle_dialogue, "Spendet Leben(END)"

SpellDescString49:
	.STRINGMAP battle_dialogue, "Spendet Leben und füllt HP   (END)"

SpellDescString50:
	.STRINGMAP battle_dialogue, "Heilt Vergiftungen(END)"

SpellDescString51:
	.STRINGMAP battle_dialogue, "Heilt alle Statusveränderungen(END)"

SpellDescString52:
	.STRINGMAP battle_dialogue, "Füllt HP nach und nach(END)"

SpellDescString53:
	.STRINGMAP battle_dialogue, "Schützt gegen Tod(END)"		; "Protects from wound(END)" (missing from newly made SNESEdit dumps)

SpellDescriptions_END:

.IF SpellDescriptions_END - SpellDescString00 > $500

.FAIL "Text section 'Spell descriptions' is too large."

.ENDIF ; (size check)

.ENDS



.BANK bankbyte(kBattleCommandNames) & $3F SLOT 0
.ORG loword(kBattleCommandNames)

.SECTION "Battle Command names" OVERWRITE

BattleCommandNames:
	.STRINGMAP battle_dialogue, "Kampf  "
	.STRINGMAP battle_dialogue, "Item   "
	.STRINGMAP battle_dialogue, "Magie  "
	.STRINGMAP battle_dialogue, "Morphen"
	.STRINGMAP battle_dialogue, "Zurück "
	.STRINGMAP battle_dialogue, "Stehlen"
	.STRINGMAP battle_dialogue, "übrfall"
	.STRINGMAP battle_dialogue, "Schwert"
	.STRINGMAP battle_dialogue, "Werfen "
	.STRINGMAP battle_dialogue, "Geräte "
	.STRINGMAP battle_dialogue, "Blitz  "
	.STRINGMAP battle_dialogue, "Runen  "
	.STRINGMAP battle_dialogue, "Lehre  "
	.STRINGMAP battle_dialogue, "Porträt"
	.STRINGMAP battle_dialogue, "Kontrl."
	.STRINGMAP battle_dialogue, "Spielen"
	.STRINGMAP battle_dialogue, "Wüten  "
	.STRINGMAP battle_dialogue, "Lernen "
	.STRINGMAP battle_dialogue, "Mimen  "
	.STRINGMAP battle_dialogue, "Tanz   "
	.STRINGMAP battle_dialogue, "Reihe  "
	.STRINGMAP battle_dialogue, "Abw.   "
	.STRINGMAP battle_dialogue, "Sprung "
	.STRINGMAP battle_dialogue, "X_Magie"
	.STRINGMAP battle_dialogue, "GSRegen"
	.STRINGMAP battle_dialogue, "Aufruf "
	.STRINGMAP battle_dialogue, "Heilen "
	.STRINGMAP battle_dialogue, "Schock "
	.STRINGMAP battle_dialogue, "Packen "
	.STRINGMAP battle_dialogue, "MagiTek"
	.STRINGMAP battle_dialogue, "       "
	.STRINGMAP battle_dialogue, "       "

.ENDS



.BANK bankbyte(kSpellNames) & $3F SLOT 0
.ORG loword(kSpellNames)

.SECTION "Spell names" OVERWRITE

SpellNames:
	.DB $E9
	.STRINGMAP battle_dialogue, "Feuer "
	.DB $E9
	.STRINGMAP battle_dialogue, "Eis   "
	.DB $E9
	.STRINGMAP battle_dialogue, "Blitz "
	.DB $E9
	.STRINGMAP battle_dialogue, "Gift  "
	.DB $E9
	.STRINGMAP battle_dialogue, "Sauger"
	.DB $E9
	.STRINGMAP battle_dialogue, "Feuer2"
	.DB $E9
	.STRINGMAP battle_dialogue, "Eis_2 "
	.DB $E9
	.STRINGMAP battle_dialogue, "Blitz2"
	.DB $E9
	.STRINGMAP battle_dialogue, "Bio   "
	.DB $E9
	.STRINGMAP battle_dialogue, "Feuer3"
	.DB $E9
	.STRINGMAP battle_dialogue, "Eis_3 "
	.DB $E9
	.STRINGMAP battle_dialogue, "Blitz3"
	.DB $E9
	.STRINGMAP battle_dialogue, "Pause "
	.DB $E9
	.STRINGMAP battle_dialogue, "Fluch "
	.DB $E9
	.STRINGMAP battle_dialogue, "Heilig"
	.DB $E9
	.STRINGMAP battle_dialogue, "Lodern"
	.DB $E9
	.STRINGMAP battle_dialogue, "Demi  "
	.DB $E9
	.STRINGMAP battle_dialogue, "Quartr"
	.DB $E9
	.STRINGMAP battle_dialogue, "X-Zone"
	.DB $E9
	.STRINGMAP battle_dialogue, "Meteor"
	.DB $E9
	.STRINGMAP battle_dialogue, "Ultima"
	.DB $E9
	.STRINGMAP battle_dialogue, "Beben "
	.DB $E9
	.STRINGMAP battle_dialogue, "Orkan "
	.DB $E9
	.STRINGMAP battle_dialogue, "Merton"
	.DB $EA
	.STRINGMAP battle_dialogue, "Scan  "
	.DB $EA
	.STRINGMAP battle_dialogue, "Langsm"
	.DB $EA
	.STRINGMAP battle_dialogue, "Raspel"
	.DB $EA
	.STRINGMAP battle_dialogue, "Stumm "
	.DB $EA
	.STRINGMAP battle_dialogue, "ASchuz"
	.DB $EA
	.STRINGMAP battle_dialogue, "Schlaf"
	.DB $EA
	.STRINGMAP battle_dialogue, "Wirren"
	.DB $EA
	.STRINGMAP battle_dialogue, "Hast  "
	.DB $EA
	.STRINGMAP battle_dialogue, "Stop  "
	.DB $EA
	.STRINGMAP battle_dialogue, "Toben "
	.DB $EA
	.STRINGMAP battle_dialogue, "Schweb"
	.DB $EA
	.STRINGMAP battle_dialogue, "Imp   "
	.DB $EA
	.STRINGMAP battle_dialogue, "Rflekt"
	.DB $EA
	.STRINGMAP battle_dialogue, "MSchuz"
	.DB $EA
	.STRINGMAP battle_dialogue, "Tarnen"
	.DB $EA
	.STRINGMAP battle_dialogue, "Hast 2"
	.DB $EA
	.STRINGMAP battle_dialogue, "Langs2"
	.DB $EA
	.STRINGMAP battle_dialogue, "Osmose"
	.DB $EA
	.STRINGMAP battle_dialogue, "Warp  "
	.DB $EA
	.STRINGMAP battle_dialogue, "Flink "
	.DB $EA
	.STRINGMAP battle_dialogue, "Bannen"
	.DB $E8
	.STRINGMAP battle_dialogue, "Quell "
	.DB $E8
	.STRINGMAP battle_dialogue, "Quell2"
	.DB $E8
	.STRINGMAP battle_dialogue, "Quell3"
	.DB $E8
	.STRINGMAP battle_dialogue, "Leben "
	.DB $E8
	.STRINGMAP battle_dialogue, "Leben2"
	.DB $E8
	.STRINGMAP battle_dialogue, "G-Gift"
	.DB $E8
	.STRINGMAP battle_dialogue, "Heilen"
	.DB $E8
	.STRINGMAP battle_dialogue, "Regen "
	.DB $E8
	.STRINGMAP battle_dialogue, "Leben3"

.ENDS



.BANK bankbyte(kEsperNames) & $3F SLOT 0
.ORG loword(kEsperNames)

.SECTION "Esper names" OVERWRITE

EsperNames:
	.STRINGMAP battle_dialogue, "Rama    "
	.STRINGMAP battle_dialogue, "Efreet  "
	.STRINGMAP battle_dialogue, "Shiva   "
	.STRINGMAP battle_dialogue, "Sirene  "
	.STRINGMAP battle_dialogue, "Midgard "
	.STRINGMAP battle_dialogue, "Eber    "
	.STRINGMAP battle_dialogue, "MaelDuin"
	.STRINGMAP battle_dialogue, "Bismark "
	.STRINGMAP battle_dialogue, "CaitSith"
	.STRINGMAP battle_dialogue, "Paladin "
	.STRINGMAP battle_dialogue, "Tritoch "
	.STRINGMAP battle_dialogue, "Odin    "
	.STRINGMAP battle_dialogue, "Raijin  "
	.STRINGMAP battle_dialogue, "Bahamut "
	.STRINGMAP battle_dialogue, "Alexandr"
	.STRINGMAP battle_dialogue, "Jihad   "
	.STRINGMAP battle_dialogue, "Ragnarok"
	.STRINGMAP battle_dialogue, "Kirin   "
	.STRINGMAP battle_dialogue, "MediTier"
	.STRINGMAP battle_dialogue, "Karfunkl"
	.STRINGMAP battle_dialogue, "Phantom "
	.STRINGMAP battle_dialogue, "Seraph  "
	.STRINGMAP battle_dialogue, "Golem   "
	.STRINGMAP battle_dialogue, "Einhorn "
	.STRINGMAP battle_dialogue, "Fenrir  "
	.STRINGMAP battle_dialogue, "Lakshmi "
	.STRINGMAP battle_dialogue, "Phönix  "

.ENDS



.BANK bankbyte(kAttackNames) & $3F SLOT 0
.ORG loword(kAttackNames)

.SECTION "Attack names" OVERWRITE

AttackNames:
	.STRINGMAP battle_dialogue, "Feuermessr"			; 4 × Shadow's Skean attacks
	.STRINGMAP battle_dialogue, "Wassrstahl"
	.STRINGMAP battle_dialogue, "Blizstahl "
	.STRINGMAP battle_dialogue, "Sturm     "

	.STRINGMAP battle_dialogue, "TodesJoker"			; 1 × Setzer's Slot attack (CHECKME, pretty sure that's what it is, though)

	.STRINGMAP battle_dialogue, "          "			; 7 × blank items
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "
	.STRINGMAP battle_dialogue, "          "

	.STRINGMAP battle_dialogue, "Trommeln  "			; 8 × Sabin's Blitz attacks
	.STRINGMAP battle_dialogue, "Aurakanone"
	.STRINGMAP battle_dialogue, "Suplex    "
	.STRINGMAP battle_dialogue, "Feuertanz "
	.STRINGMAP battle_dialogue, "Chakra    "
	.STRINGMAP battle_dialogue, "Luftklinge"
	.STRINGMAP battle_dialogue, "Spiraler  "
	.STRINGMAP battle_dialogue, "Kreuzbruch"

	.STRINGMAP battle_dialogue, "Windstoß  "			; 24 × Mog's Dance attacks
	.STRINGMAP battle_dialogue, "Sonnenbad "
	.STRINGMAP battle_dialogue, "Wut       "
	.STRINGMAP battle_dialogue, "Räuber    "
	.STRINGMAP battle_dialogue, "Sandsturm "
	.STRINGMAP battle_dialogue, "Ameisnlöwe"
	.STRINGMAP battle_dialogue, "Elfenfeuer"
	.STRINGMAP battle_dialogue, "Gespenst  "
	.STRINGMAP battle_dialogue, "Erdrutsch "
	.STRINGMAP battle_dialogue, "überschall"
	.STRINGMAP battle_dialogue, "El_Nino   "
	.STRINGMAP battle_dialogue, "Plasma    "
	.STRINGMAP battle_dialogue, "Falltür   "
	.STRINGMAP battle_dialogue, "Tropfstein"
	.STRINGMAP battle_dialogue, "Schneeball"
	.STRINGMAP battle_dialogue, "Woge      "
	.STRINGMAP battle_dialogue, "Sturzflug "
	.STRINGMAP battle_dialogue, "Wombat    "
	.STRINGMAP battle_dialogue, "Kätzchen  "
	.STRINGMAP battle_dialogue, "Tapir     "
	.STRINGMAP battle_dialogue, "Rums!     "
	.STRINGMAP battle_dialogue, "Wilder_Bär"
	.STRINGMAP battle_dialogue, "Giftfrosch"
	.STRINGMAP battle_dialogue, "Schneehase"

	.STRINGMAP battle_dialogue, "Giftladung"			; 1 × redundant MagiTek attack (CHECKME if it's unused?)

	.STRINGMAP battle_dialogue, "Blitz     "			; 5 × Setzer's Slot attacks (more in other places)
	.STRINGMAP battle_dialogue, "Chocobop  "
	.STRINGMAP battle_dialogue, "H-Bombe   "
	.STRINGMAP battle_dialogue, "7-Flush   "
	.STRINGMAP battle_dialogue, "MegaLodern"

	.STRINGMAP battle_dialogue, "Feuer-Beam"			; 8 × MagiTek attacks
	.STRINGMAP battle_dialogue, "Blitz-Beam"
	.STRINGMAP battle_dialogue, "Eis-Beam  "
	.STRINGMAP battle_dialogue, "Giftladung"
	.STRINGMAP battle_dialogue, "Heilkraft "
	.STRINGMAP battle_dialogue, "Verwirrer "
	.STRINGMAP battle_dialogue, "Transfer  "
	.STRINGMAP battle_dialogue, "Tek-Rakete"

	.STRINGMAP battle_dialogue, "Verurteilt"			; 24 × Strago's Lore attacks
	.STRINGMAP battle_dialogue, "Roulette  "
	.STRINGMAP battle_dialogue, "Flutwelle "
	.STRINGMAP battle_dialogue, "AquaRechen"
	.STRINGMAP battle_dialogue, "Aero      "
	.STRINGMAP battle_dialogue, "Kugelfisch"
	.STRINGMAP battle_dialogue, "Gr.Wächter"
	.STRINGMAP battle_dialogue, "Rache     "
	.STRINGMAP battle_dialogue, "Heiligwind"
	.STRINGMAP battle_dialogue, "LV5_Fluch "
	.STRINGMAP battle_dialogue, "LV4_Lodern"
	.STRINGMAP battle_dialogue, "LV3_Wirren"
	.STRINGMAP battle_dialogue, "Reflekt???"
	.STRINGMAP battle_dialogue, "LV?_Heilig"
	.STRINGMAP battle_dialogue, "Tretmine  "
	.STRINGMAP battle_dialogue, "Kraftfeld "
	.STRINGMAP battle_dialogue, "Disharmon "
	.STRINGMAP battle_dialogue, "Mundgeruch"
	.STRINGMAP battle_dialogue, "Aufputsch "
	.STRINGMAP battle_dialogue, "Plätschern"
	.STRINGMAP battle_dialogue, "Stein     "
	.STRINGMAP battle_dialogue, "Quasar    "
	.STRINGMAP battle_dialogue, "GroßeFahrt"
	.STRINGMAP battle_dialogue, "Explosion "

	.STRINGMAP battle_dialogue, "Imp-Lied  "			; 77 × monster attacks
	.STRINGMAP battle_dialogue, "Klar      "
	.STRINGMAP battle_dialogue, "Virite    "
	.STRINGMAP battle_dialogue, "SchalRauch"
	.STRINGMAP battle_dialogue, "Schiller  "
	.STRINGMAP battle_dialogue, "Wiegenlied"
	.STRINGMAP battle_dialogue, "Säureregen"
	.STRINGMAP battle_dialogue, "Verwirrung"
	.STRINGMAP battle_dialogue, "Megazerk  "
	.STRINGMAP battle_dialogue, "Stumm     "
	.STRINGMAP battle_dialogue, "Netz      "
	.STRINGMAP battle_dialogue, "Schleimer "
	.STRINGMAP battle_dialogue, "Deltahieb "
	.STRINGMAP battle_dialogue, "Verketten "
	.STRINGMAP battle_dialogue, "Sprenger  "
	.STRINGMAP battle_dialogue, "Tornado   "
	.STRINGMAP battle_dialogue, "Feuerball "
	.STRINGMAP battle_dialogue, "Atomstrahl"
	.STRINGMAP battle_dialogue, "Tek-Laser "
	.STRINGMAP battle_dialogue, "Diffusor  "
	.STRINGMAP battle_dialogue, "WellKanone"
	.STRINGMAP battle_dialogue, "Mega-Volt "
	.STRINGMAP battle_dialogue, "Giga-Volt "
	.STRINGMAP battle_dialogue, "Blizzard  "
	.STRINGMAP battle_dialogue, "Absolut_0 "
	.STRINGMAP battle_dialogue, "Beben_St.8"
	.STRINGMAP battle_dialogue, "überfall  "
	.STRINGMAP battle_dialogue, "Blitzregen"
	.STRINGMAP battle_dialogue, "TekBarrier"
	.STRINGMAP battle_dialogue, "Gefallener"
	.STRINGMAP battle_dialogue, "MBlock neu"
	.STRINGMAP battle_dialogue, "Entkommen "
	.STRINGMAP battle_dialogue, "50_GS     "
	.STRINGMAP battle_dialogue, "Hirn-Blitz"
	.STRINGMAP battle_dialogue, "Nordkreuz "
	.STRINGMAP battle_dialogue, "Loderstern"
	.STRINGMAP battle_dialogue, "Liebesbew."
	.STRINGMAP battle_dialogue, "Ergreifen "
	.STRINGMAP battle_dialogue, "Umkehrpol "
	.STRINGMAP battle_dialogue, "Erfassung "
	.STRINGMAP battle_dialogue, "Niesen    "
	.STRINGMAP battle_dialogue, "Südkreuz  "
	.STRINGMAP battle_dialogue, "Schleuder "
	.STRINGMAP battle_dialogue, "Zauber    "
	.STRINGMAP battle_dialogue, "Eisstaub  "
	.STRINGMAP battle_dialogue, "Tentakel  "
	.STRINGMAP battle_dialogue, "HyprSchlag"
	.STRINGMAP battle_dialogue, "Fahrt     "
	.STRINGMAP battle_dialogue, "Böse_Hupe "
	.STRINGMAP battle_dialogue, "Grav.Bombe"
	.STRINGMAP battle_dialogue, "Fressen   "
	.STRINGMAP battle_dialogue, "Desaster  "
	.STRINGMAP battle_dialogue, "Schrapnell"
	.STRINGMAP battle_dialogue, "Bömbchen  "
	.STRINGMAP battle_dialogue, "Sodbrennen"
	.STRINGMAP battle_dialogue, "Zischer   "
	.STRINGMAP battle_dialogue, "Verwerfen "
	.STRINGMAP battle_dialogue, "Bewölkt   "
	.STRINGMAP battle_dialogue, "Rakete    "
	.STRINGMAP battle_dialogue, "Verlorener"
	.STRINGMAP battle_dialogue, "Meteo     "
	.STRINGMAP battle_dialogue, "Rächer    "
	.STRINGMAP battle_dialogue, "Phantasma "
	.STRINGMAP battle_dialogue, "Angst     "
	.STRINGMAP battle_dialogue, "Druckwelle"
	.STRINGMAP battle_dialogue, "Brand     "
	.STRINGMAP battle_dialogue, "Seele_Fort"
	.STRINGMAP battle_dialogue, "Sturmschnt"
	.STRINGMAP battle_dialogue, "Shimsham  "
	.STRINGMAP battle_dialogue, "Magnetit  "
	.STRINGMAP battle_dialogue, "Wundstrahl"
	.STRINGMAP battle_dialogue, "Baba-Atem "
	.STRINGMAP battle_dialogue, "NimmtLeben"
	.STRINGMAP battle_dialogue, "Feuerwand "
	.STRINGMAP battle_dialogue, "Gleiten   "
	.STRINGMAP battle_dialogue, "Kampf     "
	.STRINGMAP battle_dialogue, "Spezial   "

	.STRINGMAP battle_dialogue, "Rebellion "			; 12 × Desperation attacks
	.STRINGMAP battle_dialogue, "Wunderlich"
	.STRINGMAP battle_dialogue, "Rückblatt "
	.STRINGMAP battle_dialogue, "Ninja-Wut "
	.STRINGMAP battle_dialogue, "KönigLicht"
	.STRINGMAP battle_dialogue, "TigerGriff"
	.STRINGMAP battle_dialogue, "Klingensog"
	.STRINGMAP battle_dialogue, "Säbeltanz "
	.STRINGMAP battle_dialogue, "Prisma    "
	.STRINGMAP battle_dialogue, "Rote_Karte"
	.STRINGMAP battle_dialogue, "MoglieStoß"
	.STRINGMAP battle_dialogue, "X-Meteo   "

	.STRINGMAP battle_dialogue, "Niederriß "			; 4 × misc. attacks (Lagomorph, Interceptor, etc.)
	.STRINGMAP battle_dialogue, "Beißwut   "
	.STRINGMAP battle_dialogue, "Lagomorph "
	.STRINGMAP battle_dialogue, "??????????"

;.ENDS



;.BANK bankbyte(kEsperAttackNames) & $3F SLOT 0
;.ORG loword(kEsperAttackNames)

;.SECTION "Esper attack names" OVERWRITE

;EsperAttackNames:
	.STRINGMAP battle_dialogue, "Blitzfaust"
	.STRINGMAP battle_dialogue, "Inferno   "
	.STRINGMAP battle_dialogue, "Edelstaub "
	.STRINGMAP battle_dialogue, "Gesang    "
	.STRINGMAP battle_dialogue, "Erdenaura "
	.STRINGMAP battle_dialogue, "Dämon.Auge"
	.STRINGMAP battle_dialogue, "Chaosflügl"
	.STRINGMAP battle_dialogue, "Meereslied"
	.STRINGMAP battle_dialogue, "Katzenhagl"
	.STRINGMAP battle_dialogue, "TiefSchall"
	.STRINGMAP battle_dialogue, "Tri-Tanz  "
	.STRINGMAP battle_dialogue, "Atomklinge"
	.STRINGMAP battle_dialogue, "WahreKlnge"
	.STRINGMAP battle_dialogue, "Sonnenwind"
	.STRINGMAP battle_dialogue, "Strafe    "
	.STRINGMAP battle_dialogue, "Reinheit  "
	.STRINGMAP battle_dialogue, "Metamorph "
	.STRINGMAP battle_dialogue, "Rettung   "
	.STRINGMAP battle_dialogue, "Mauer     "
	.STRINGMAP battle_dialogue, "Rubinkraft"
	.STRINGMAP battle_dialogue, "Ausblenden"
	.STRINGMAP battle_dialogue, "Belebung  "
	.STRINGMAP battle_dialogue, "Erdenmauer"
	.STRINGMAP battle_dialogue, "Kraft-Horn"
	.STRINGMAP battle_dialogue, "Mondlied  "
	.STRINGMAP battle_dialogue, "Umarmung  "
	.STRINGMAP battle_dialogue, "Wiedergeb."

;.ENDS



;.BANK bankbyte(kDanceNames) & $3F SLOT 0
;.ORG loword(kDanceNames)

;.SECTION "Dance names" OVERWRITE

;DanceNames:
	.STRINGMAP battle_dialogue, "Wind-Lied   "
	.STRINGMAP battle_dialogue, "Wald-Suite  "
	.STRINGMAP battle_dialogue, "Wüsten-Arie "
	.STRINGMAP battle_dialogue, "LiebesSonate"
	.STRINGMAP battle_dialogue, "Erden-Blues "
	.STRINGMAP battle_dialogue, "Wasser-Rondo"
	.STRINGMAP battle_dialogue, "AbendRequiem"
	.STRINGMAP battle_dialogue, "Schnee-Jazz "

.ENDS



.BANK bankbyte(kItemDescriptions) & $3F SLOT 0
.ORG loword(kItemDescriptions)

.SECTION "Item descriptions" OVERWRITE					; $13A0 = 5,024 bytes max.

ItemDescString000:
        ; intentionally blank

ItemDescString001:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString002:
        .STRINGMAP battle_dialogue, "Weicht gegn. Angriff(ABS)zufällig aus(END)"

ItemDescString003:
        .STRINGMAP battle_dialogue, "Element: Wind(END)"

ItemDescString004:
        .STRINGMAP battle_dialogue, "Stiehlt Gegner Item(ABS)(zufällig)(END)"

ItemDescString005:
        .STRINGMAP battle_dialogue, "Vernichtet Gegner (zufällig)(END)"

ItemDescString006:
        .STRINGMAP battle_dialogue, "Verdoppelt Schaden bei(ABS)Menschen(END)"

ItemDescString007:
        .STRINGMAP battle_dialogue, "Weicht gegn. Angriff(ABS)zufällig aus(END)"

ItemDescString008:
        .STRINGMAP battle_dialogue, "Element: Heilig(END)"

ItemDescString009:
        .STRINGMAP battle_dialogue, "Wird mit weniger HP stärker(END)"

ItemDescString010:
        ; intentionally blank

ItemDescString011:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString012:
        .STRINGMAP battle_dialogue, "Verbraucht MP für tödl.(ABS)Treffer(END)"

ItemDescString013:
        .STRINGMAP battle_dialogue, "“Feuer”-Zauber (zufällig)(END)"

ItemDescString014:
        .STRINGMAP battle_dialogue, "“Eis”-Zauber (zufällig)(END)"

ItemDescString015:
        .STRINGMAP battle_dialogue, "“Blitz”-Zauber (zufällig)(END)"

ItemDescString016:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString017:
        .STRINGMAP battle_dialogue, "“Pause”-Zauber (zufällig)(END)"

ItemDescString018:
        .STRINGMAP battle_dialogue, "Absorbiert Schaden als HP(END)"

ItemDescString019:
        .STRINGMAP battle_dialogue, "Mehr M-Kraft(END)"

ItemDescString020:
        ; intentionally blank

ItemDescString021:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString022:
        .STRINGMAP battle_dialogue, "Absorbiert Schaden als MP(ABS)“Fluch”-Zauber (zuf.)(END)"

ItemDescString023:
        .STRINGMAP battle_dialogue, "Bewirkt mit MP tödl. Treffer(ABS)Kann zerbrechen(END)"

ItemDescString024:
        .STRINGMAP battle_dialogue, "Element “Heilig”(END)"

ItemDescString025:
        .STRINGMAP battle_dialogue, "Zerhackt Gegner (zuf.)(END)"

ItemDescString026:
        .STRINGMAP battle_dialogue, "Ein legendäres Schwert(END)"

ItemDescString027:
        .STRINGMAP battle_dialogue, "“Lodern”-Zauber (zufällig)(END)"

ItemDescString028:
        .STRINGMAP battle_dialogue, "Wandelt sich bei Level-up,(ABS)wird mit mehr HP stärker(END)"

ItemDescString029:
        ; intentionally blank

ItemDescString030:
        ; intentionally blank

ItemDescString031:
        ; intentionally blank

ItemDescString032:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString033:
        .STRINGMAP battle_dialogue, "“Heilig”-Zauber (zufällig)(END)"

ItemDescString034:
        ; intentionally blank

ItemDescString035:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString036:
        .STRINGMAP battle_dialogue, "??? wenn gerade ein Imp(END)"

ItemDescString037:
        ; intentionally blank

ItemDescString038:
        ; intentionally blank

ItemDescString039:
        ; intentionally blank

ItemDescString040:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString041:
        .STRINGMAP battle_dialogue, "Vernichtet Gegner (zufällig)(END)"

ItemDescString042:
        .STRINGMAP battle_dialogue, "“Stop”-Zauber (zuf.)(END)"

ItemDescString043:
        ; intentionally blank

ItemDescString044:
        ; intentionally blank

ItemDescString045:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString046:
        .STRINGMAP battle_dialogue, "Bewirkt “Windstoß” (zuf.)(END)"

ItemDescString047:
        ; intentionally blank

ItemDescString048:
        ; intentionally blank

ItemDescString049:
        ; intentionally blank

ItemDescString050:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString051:
        .STRINGMAP battle_dialogue, "Füllt HP des Ziels(END)"

ItemDescString052:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString053:
        .STRINGMAP battle_dialogue, "Bewirkt “Feuer2”-Zauber und(ABS)zerbricht (als Item)(END)"

ItemDescString054:
        .STRINGMAP battle_dialogue, "Bewirkt “Eis 2”-Zauber und(ABS)zerbricht (als Item)(END)"

ItemDescString055:
        .STRINGMAP battle_dialogue, "Bewirkt “Blitz2”-Zauber und(ABS)zerbricht (als Item)(END)"

ItemDescString056:
        .STRINGMAP battle_dialogue, "Bewirkt “Gift”-Zauber und(ABS)zerbricht (als Item)(END)"

ItemDescString057:
        .STRINGMAP battle_dialogue, "Bewirkt “Heilig”-Zauber und(ABS)zerbricht (als Item)(END)"

ItemDescString058:
        .STRINGMAP battle_dialogue, "Bewirkt “Quartr”-Zauber und(ABS)zerbricht (als Item)(END)"

ItemDescString059:
        .STRINGMAP battle_dialogue, "Bewirkt mit MP tödl. Treffer(END)"

ItemDescString060:
        .STRINGMAP battle_dialogue, "Mehr M-Kraft(END)"

ItemDescString061:
        ; intentionally blank

ItemDescString062:
        ; intentionally blank

ItemDescString063:
        ; intentionally blank

ItemDescString064:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString065:
        .STRINGMAP battle_dialogue, "Mit Befehl “Werfen” verw.(END)"

ItemDescString066:
        .STRINGMAP battle_dialogue, "Mit Befehl “Werfen” verw.(END)"

ItemDescString067:
        .STRINGMAP battle_dialogue, "Mit Befehl “Werfen” verw.(END)"

ItemDescString068:
        .STRINGMAP battle_dialogue, "Gleiche Kraft in hinterer Reihe(END)"

ItemDescString069:
        .STRINGMAP battle_dialogue, "Gleiche Kraft in hinterer Reihe(END)"

ItemDescString070:
        .STRINGMAP battle_dialogue, "Gleiche Kraft in hinterer Reihe(END)"

ItemDescString071:
        ; intentionally blank

ItemDescString072:
        ; intentionally blank

ItemDescString073:
        .STRINGMAP battle_dialogue, "Gleiche Kraft in hinterer Reihe(END)"

ItemDescString074:
        .STRINGMAP battle_dialogue, "Kunstvoll geschnitzt(END)"

ItemDescString075:
        .STRINGMAP battle_dialogue, "Gleiche Kraft in hinterer Reihe(END)"

ItemDescString076:
        .STRINGMAP battle_dialogue, "Gleiche Kraft in hinterer Reihe,(ABS)schlägt zuf. vernichtend zu    (END)"

ItemDescString077:
        ; intentionally blank

ItemDescString078:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString079:
        .STRINGMAP battle_dialogue, "“Fluch”-Zauber (zufällig)(END)"

ItemDescString080:
        .STRINGMAP battle_dialogue, "Vernichtet Gegner (zufällig)(END)"

ItemDescString081:
        ; intentionally blank

ItemDescString082:
        ; intentionally blank

ItemDescString083:
        ; intentionally blank

ItemDescString084:
        ; intentionally blank

ItemDescString085:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString086:
        .STRINGMAP battle_dialogue, "Vergiftet Gegner (zufällig)(END)"

ItemDescString087:
        .STRINGMAP battle_dialogue, "“Feuer”-Zauber (zufällig)(END)"

ItemDescString088:
        .STRINGMAP battle_dialogue, "Element: Heilig(END)"

ItemDescString089:
        ; intentionally blank

ItemDescString090:
        ; intentionally blank

ItemDescString091:
        ; intentionally blank

ItemDescString092:
        ; intentionally blank

ItemDescString093:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString094:
        .STRINGMAP battle_dialogue, "Weicht Magieangriff zufällig(ABS)aus(END)"

ItemDescString095:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString096:
        .STRINGMAP battle_dialogue, "Absorbiert “Feuer”-Angriffe(END)"

ItemDescString097:
        .STRINGMAP battle_dialogue, "Absorbiert “Eis”-Angriffe(END)"

ItemDescString098:
        .STRINGMAP battle_dialogue, "Absorbiert “Blitz”-Angriffe(END)"

ItemDescString099:
        ; intentionally blank

ItemDescString100:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString101:
        .STRINGMAP battle_dialogue, "??? wenn gerade ein Imp(END)"

ItemDescString102:
        .STRINGMAP battle_dialogue, "Ist verflucht(END)"

ItemDescString103:
        .STRINGMAP battle_dialogue, "Beinhaltet Seele eines Helden(END)"

ItemDescString104:
        .STRINGMAP battle_dialogue, "Schützt gegen Magieangriffe(END)"

ItemDescString105:
        ; intentionally blank

ItemDescString106:
        ; intentionally blank

ItemDescString107:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString108:
        .STRINGMAP battle_dialogue, "Erhöht Erfolgsquote von(ABS)“Porträt”(END)"

ItemDescString109:
        ; intentionally blank

ItemDescString110:
        ; intentionally blank

ItemDescString111:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString112:
        .STRINGMAP battle_dialogue, "Erhöht Erfolgsquote von(ABS)“Kontrolle”(END)"

ItemDescString113:
        .STRINGMAP battle_dialogue, "Erhöht geringfügig MP(END)"

ItemDescString114:
        .STRINGMAP battle_dialogue, "Erhöht geringfügig HP(END)"

ItemDescString115:
        ; intentionally blank

ItemDescString116:
        ; intentionally blank

ItemDescString117:
        ; intentionally blank

ItemDescString118:
        ; intentionally blank

ItemDescString119:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString120:
        .STRINGMAP battle_dialogue, "Erhöht HP um 1/4(END)"

ItemDescString121:
        ; intentionally blank

ItemDescString122:
        ; intentionally blank

ItemDescString123:
        ; intentionally blank

ItemDescString124:
        ; intentionally blank

ItemDescString125:
        ; intentionally blank

ItemDescString126:
        ; intentionally blank

ItemDescString127:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString128:
        .STRINGMAP battle_dialogue, "Sammelt möglichst viele GS(END)"

ItemDescString129:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString130:
        .STRINGMAP battle_dialogue, "Dornen bewirken Schmerz(END)"

ItemDescString131:
        .STRINGMAP battle_dialogue, "??? wenn gerade ein Imp(END)"

ItemDescString132:
        ; intentionally blank

ItemDescString133:
        ; intentionally blank

ItemDescString134:
        ; intentionally blank

ItemDescString135:
        ; intentionally blank

ItemDescString136:
        ; intentionally blank

ItemDescString137:
        ; intentionally blank

ItemDescString138:
        ; intentionally blank

ItemDescString139:
        ; intentionally blank

ItemDescString140:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString141:
        .STRINGMAP battle_dialogue, "Absorbiert erdbasierte(ABS)Angriffe(END)"

ItemDescString142:
        .STRINGMAP battle_dialogue, "Schafft Trugbild des Trägers(END)"

ItemDescString143:
        ; intentionally blank

ItemDescString144:
        ; intentionally blank

ItemDescString145:
        ; intentionally blank

ItemDescString146:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString147:
        .STRINGMAP battle_dialogue, "Beinhaltet Geist eines (ABS)legendären Ringers(END)"

ItemDescString148:
        .STRINGMAP battle_dialogue, "Mehr MVertd.(END)"

ItemDescString149:
        ; intentionally blank

ItemDescString150:
        ; intentionally blank

ItemDescString151:
        ; intentionally blank

ItemDescString152:
        ; intentionally blank

ItemDescString153:
        ; intentionally blank

ItemDescString154:
        .STRINGMAP battle_dialogue, "(END)"

ItemDescString155:
        .STRINGMAP battle_dialogue, "??? wenn gerade ein Imp(END)"

ItemDescString156:
        .STRINGMAP battle_dialogue, "Erhöht MP um 1/4(END)"

ItemDescString157:
        .STRINGMAP battle_dialogue, "Erinnert an getigerte Katze(END)"

ItemDescString158:
        .STRINGMAP battle_dialogue, "Der Chocobo in uns...(END)"

ItemDescString159:
        .STRINGMAP battle_dialogue, "Ein Moglie sein! Kupo!(END)"

ItemDescString160:
        .STRINGMAP battle_dialogue, "Eichhörnchenkostüm(END)"

ItemDescString161:
        .STRINGMAP battle_dialogue, "Aus Moloch-Leder(END)"

ItemDescString162:
        .STRINGMAP battle_dialogue, "Wie behaglich!(END)"

ItemDescString163:
        .STRINGMAP battle_dialogue, "Verwirrt mehrere Gegner(ABS)(Befehl “Geräte”) (END)"

ItemDescString164:
        .STRINGMAP battle_dialogue, "Vergiftet mehrere Gegner(ABS)(Befehl “Geräte”) (END)"

ItemDescString165:
        .STRINGMAP battle_dialogue, "Blendet mehrere Gegner(ABS)(Befehl “Geräte”) (END)"

ItemDescString166:
        .STRINGMAP battle_dialogue, "Vernichtet Gegner zufällig   (ABS)(Befehl “Geräte”) (END)"

ItemDescString167:
        .STRINGMAP battle_dialogue, "Sucht nach Schwachpunkt(ABS)(Befehl “Geräte”) (END)"

ItemDescString168:
        .STRINGMAP battle_dialogue, "Durchbricht gegn. Verteidigung(ABS)(Befehl “Geräte”) (END)"

ItemDescString169:
        .STRINGMAP battle_dialogue, "Gegner wird autodestruktiv(ABS)(Befehl “Geräte”)             (END)"

ItemDescString170:
        .STRINGMAP battle_dialogue, "Trifft mehrere Gegner(ABS)(Befehl “Geräte”)          (END)"

ItemDescString171:
        .STRINGMAP battle_dialogue, "Feuer-Angriff (mehrere), mit(ABS)Befehl “Werfen” verwenden(END)"

ItemDescString172:
        .STRINGMAP battle_dialogue, "Wasser-Angriff (mehrere), mit(ABS)Befehl “Werfen” verwenden(END)"

ItemDescString173:
        .STRINGMAP battle_dialogue, "Blitz-Angriff (mehrere), mit(ABS)Befehl “Werfen” verwenden(END)"

ItemDescString174:
        .STRINGMAP battle_dialogue, "Macht Werfer durchsichtig, mit(ABS)Befehl “Werfen” verwenden(END)"

ItemDescString175:
        .STRINGMAP battle_dialogue, "Schafft Trugbild des Werfers,(ABS)mit Befehl “Werfen” verw.    (END)"

ItemDescString176:
        .STRINGMAP battle_dialogue, "Schützt gegen “Blind”(END)"

ItemDescString177:
        .STRINGMAP battle_dialogue, "Schützt gegen “Gift”(END)"

ItemDescString178:
        .STRINGMAP battle_dialogue, "Schützt gegen “Toben”,(ABS)“Verwirrt”(END)"

ItemDescString179:
        .STRINGMAP battle_dialogue, "Schützt gegen “Gift”,(ABS)“Blind”, “Zombie”(END)"

ItemDescString180:
        .STRINGMAP battle_dialogue, "Schützt gegen “Imp”, “Stumm”(END)"

ItemDescString181:
        .STRINGMAP battle_dialogue, "Schützt gegen “Stein”(ABS)        (END)"

ItemDescString182:
        .STRINGMAP battle_dialogue, "Schützt gegen “Gift”,(ABS)“Blind”(END)"

ItemDescString183:
        .STRINGMAP battle_dialogue, "“MSchutz”-Zauber bei wenig HP(END)"

ItemDescString184:
        .STRINGMAP battle_dialogue, "“ASchutz”-Zauber bei wenig HP(END)"

ItemDescString185:
        .STRINGMAP battle_dialogue, "“ASchutz”-Zauber (END)"

ItemDescString186:
        .STRINGMAP battle_dialogue, "“Hast”-Zauber(END)"

ItemDescString187:
        .STRINGMAP battle_dialogue, "“Rflekt”-Zauber(END)"

ItemDescString188:
        .STRINGMAP battle_dialogue, "“Schwebe”-Zauber(END)"

ItemDescString189:
        .STRINGMAP battle_dialogue, "“Regen”-Zauber(END)"

ItemDescString190:
        .STRINGMAP battle_dialogue, "Schützt Gruppenmitglieder(ABS)mit wenig HP(END)"

ItemDescString191:
        .STRINGMAP battle_dialogue, "Ändert “Kampf” in “Sprung”(END)"

ItemDescString192:
        .STRINGMAP battle_dialogue, "Ermöglicht leichteres(ABS)Ausweichen(END)"

ItemDescString193:
        .STRINGMAP battle_dialogue, "“ASchutz”- und “MSchutz”-(ABS)Zauber bei wenig HP(END)"

ItemDescString194:
        .STRINGMAP battle_dialogue, "Ist verflucht(END)"

ItemDescString195:
        .STRINGMAP battle_dialogue, "Erhöht Magie-Effekt(ABS)(doppelt noch wirksamer)(END)"

ItemDescString196:
        .STRINGMAP battle_dialogue, "Erhöht Kampfkraft(END)"

ItemDescString197:
        ; intentionally blank

ItemDescString198:
        .STRINGMAP battle_dialogue, "Für ein Pelzwesen...(END)"

ItemDescString199:
        .STRINGMAP battle_dialogue, "Erhöht Erfolgsquote von(ABS)“Stehlen”(END)"

ItemDescString200:
        .STRINGMAP battle_dialogue, "“ASchutz”- und “MSchutz”-(ABS)Zauber(END)"

ItemDescString201:
        .STRINGMAP battle_dialogue, "Erhöht magische und(ABS)Kampfkraft(END)"

ItemDescString202:
        .STRINGMAP battle_dialogue, "Verhindert Statusänderungen(END)"

ItemDescString203:
        .STRINGMAP battle_dialogue, "Erhöht HP um 1/2(END)"

ItemDescString204:
        .STRINGMAP battle_dialogue, "Erhöht MP um 1/2(END)"

ItemDescString205:
        .STRINGMAP battle_dialogue, "Halbiert MP-Verbrauch(END)"

ItemDescString206:
        .STRINGMAP battle_dialogue, "Nur 1 MP wird verbraucht(END)"

ItemDescString207:
        .STRINGMAP battle_dialogue, "Ändert “Stehlen” in “übrfall”(END)"

ItemDescString208:
        .STRINGMAP battle_dialogue, "Eine Waffe kann mit zwei(ABS)Händen gehalten werden(END)"

ItemDescString209:
        .STRINGMAP battle_dialogue, "Jede Hand kann eine eigene(ABS)Waffe halten(END)"

ItemDescString210:
        .STRINGMAP battle_dialogue, "Erhöht “Stärke”(END)"

ItemDescString211:
        .STRINGMAP battle_dialogue, "Ändert “Kampf” in “X Kampf”(END)"

ItemDescString212:
        .STRINGMAP battle_dialogue, "Weicht zufällig Angriffen aus(END)"

ItemDescString213:
        .STRINGMAP battle_dialogue, "Ermöglicht zufälligen   (ABS)Gegenangriff(END)"

ItemDescString214:
        .STRINGMAP battle_dialogue, "Ändert “Spielen” in “GSRegen”(END)"

ItemDescString215:
        .STRINGMAP battle_dialogue, "Ändert “Porträt” in “Kontrolle”(END)"

ItemDescString216:
        .STRINGMAP battle_dialogue, "Ändert “Magie” in “X Magie”(END)"

ItemDescString217:
        .STRINGMAP battle_dialogue, "“Sprung” wird dauerhaft(END)"

ItemDescString218:
        .STRINGMAP battle_dialogue, "Schwere Rüstungen etc.(ABS)dürfen benutzt werden(END)"

ItemDescString219:
        .STRINGMAP battle_dialogue, "Mutterliebe schützt vor(ABS)tödlichen Magieangriffen(END)"

ItemDescString220:
        .STRINGMAP battle_dialogue, "Schützt vor tödlichen(ABS)Magieangriffen(END)"

ItemDescString221:
        .STRINGMAP battle_dialogue, "Macht Körper kalt(END)"

ItemDescString222:
        .STRINGMAP battle_dialogue, "Keine zufälligen Kämpfe(END)"

ItemDescString223:
        .STRINGMAP battle_dialogue, "Weniger zufällige Kämpfe(END)"

ItemDescString224:
        .STRINGMAP battle_dialogue, "Wirkt sich vielfältig aus(END)"

ItemDescString225:
        .STRINGMAP battle_dialogue, "Unterdrückt Hinterhalte und(ABS)Umzingeln durch Gegner(END)"

ItemDescString226:
        .STRINGMAP battle_dialogue, "Erhöht Rate der Frontal-(ABS)angriffe(END)"

ItemDescString227:
        .STRINGMAP battle_dialogue, "“Kampf” trifft Gegner 100%ig(END)"

ItemDescString228:
        .STRINGMAP battle_dialogue, "Verdoppelt Erfahrungspunkte(END)"

ItemDescString229:
        .STRINGMAP battle_dialogue, "Füllt HP mit jedem Schritt(END)"

ItemDescString230:
        .STRINGMAP battle_dialogue, "Ermöglicht Dauerlauf(END)"

ItemDescString231:
        .STRINGMAP battle_dialogue, "Geheimes Item(END)"

ItemDescString232:
        .STRINGMAP battle_dialogue, "Füllt 50 HP(END)"

ItemDescString233:
        .STRINGMAP battle_dialogue, "Füllt 250 HP (END)"

ItemDescString234:
        .STRINGMAP battle_dialogue, "Füllt HP komplett  (END)"

ItemDescString235:
        .STRINGMAP battle_dialogue, "Füllt 50 MP(END)"

ItemDescString236:
        .STRINGMAP battle_dialogue, "Füllt 150 MP(END)"

ItemDescString237:
        .STRINGMAP battle_dialogue, "Füllt MP komplett(END)"

ItemDescString238:
        .STRINGMAP battle_dialogue, "Füllt HP/MP komplett(END)"

ItemDescString239:
        .STRINGMAP battle_dialogue, "Füllt HP/MP der Gruppe(ABS)komplett  (END)"

ItemDescString240:
        .STRINGMAP battle_dialogue, "Heilt Verwundungen(END)"

ItemDescString241:
        .STRINGMAP battle_dialogue, "Heilt Status “Zombie”(END)"

ItemDescString242:
        .STRINGMAP battle_dialogue, "Heilt Status “Gift”(END)"

ItemDescString243:
        .STRINGMAP battle_dialogue, "Heilt Status “Blind”(END)"

ItemDescString244:
        .STRINGMAP battle_dialogue, "Heilt Status “Stein”(END)"

ItemDescString245:
        .STRINGMAP battle_dialogue, "Heilt jeden Status,(ABS)“Zombie” ausgenommen(END)"

ItemDescString246:
        .STRINGMAP battle_dialogue, "Füllt HP/MP komplett(END)"

ItemDescString247:
        .STRINGMAP battle_dialogue, "Füllt HP/MP der Gruppe(ABS)komplett(END)"

ItemDescString248:
        .STRINGMAP battle_dialogue, "Heilt Status “Imp”(END)"

ItemDescString249:
        .STRINGMAP battle_dialogue, "Ruft zufälligen Esper auf(END)"

ItemDescString250:
        .STRINGMAP battle_dialogue, "Dopsender Angriff(END)"

ItemDescString251:
        .STRINGMAP battle_dialogue, "Heilt Status “Stumm”(END)"

ItemDescString252:
        .STRINGMAP battle_dialogue, "Läßt Gruppe aus Kampf fliehen(END)"

ItemDescString253:
        .STRINGMAP battle_dialogue, "Gleicher Effekt wie “Warp”(END)"

ItemDescString254:
	.STRINGMAP battle_dialogue, "Gegen Hunger(END)"

;ItemDescString255:							; apparently only 255 items/pointers, not 256
;	.STRINGMAP battle_dialogue, ""

ItemDescriptions_END:

.IF ItemDescriptions_END - ItemDescString000 > $13A0

.FAIL "Text section 'Item descriptions' is too large."

.ENDIF ; (size check)

.ENDS



.BANK bankbyte(kLoreDescriptions) & $3F SLOT 0
.ORG loword(kLoreDescriptions)

.SECTION "Lore descriptions" OVERWRITE					; $2D0 = 720 bytes max.

LoreDescString00:
	.STRINGMAP battle_dialogue, "Startet Fluch-Countdown(END)"

LoreDescString01:
	.STRINGMAP battle_dialogue, "Startet Fluch-Roulette(END)"

LoreDescString02:
	.STRINGMAP battle_dialogue, "Angriffselement: Wasser(END)"

LoreDescString03:
	.STRINGMAP battle_dialogue, "Angriffselemente: Wasser/(ABS)Wind(END)"

LoreDescString04:
	.STRINGMAP battle_dialogue, "Angriffselement: Wind(END)"

LoreDescString05:
	.STRINGMAP battle_dialogue, "1000 HP Schaden(END)"

LoreDescString06:
	.STRINGMAP battle_dialogue, "ASchutz/MSchutz (Gruppe)(END)"

LoreDescString07:
	.STRINGMAP battle_dialogue, "Vermindert HP(END)"

LoreDescString08:
	.STRINGMAP battle_dialogue, "Eigene HP helfen Gruppe(END)"

LoreDescString09:
	.STRINGMAP battle_dialogue, "“Fluch” auf Gegner mit(ABS)LV 5, 10, ...(END)"

LoreDescString10:
	.STRINGMAP battle_dialogue, "“Lodern” auf Gegner mit(ABS)LV 4, 8, ...(END)"

LoreDescString11:
	.STRINGMAP battle_dialogue, "“Wirren” auf Gegner mit(ABS)LV 3, 6, ...(END)"

LoreDescString12:
	.STRINGMAP battle_dialogue, "Status-Angriff auf(ABS)“Rflekt”-Gegner(END)"

LoreDescString13:
	.STRINGMAP battle_dialogue, "“Heilig”-Angriff auf Gegner(ABS)mit LV ?(END)"

LoreDescString14:
	.STRINGMAP battle_dialogue, "Schaden proportional zur(ABS)Schrittzahl(END)"

LoreDescString15:
	.STRINGMAP battle_dialogue, "Baut Anti-elementar-Barriere(ABS)auf(END)"

LoreDescString16:
	.STRINGMAP battle_dialogue, "Vermindert gegn. LV(ABS)um 50%(END)"

LoreDescString17:
	.STRINGMAP battle_dialogue, "Verändert Status eines(ABS)Gegners(END)"

LoreDescString18:
	.STRINGMAP battle_dialogue, "Rettet Gruppe mit eigenen HP(END)"

LoreDescString19:
	.STRINGMAP battle_dialogue, "Tauscht Status mit Gegner(END)"

LoreDescString20:
	.STRINGMAP battle_dialogue, "Schadet Gegner und verwirrt(ABS)ihn(END)"

LoreDescString21:
	.STRINGMAP battle_dialogue, "Angriff bricht gegnerische(ABS)Abwehr(END)"

LoreDescString22:
	.STRINGMAP battle_dialogue, "Tödl. Angriff bricht(ABS)gegnerische Abwehr(END)"

LoreDescString23:
	.STRINGMAP battle_dialogue, "Opfert Leben für tödl.(ABS)Angriff     (END)"	; (missing from newly made SNESEdit dumps)

LoreDescriptions_END:

.IF LoreDescriptions_END - LoreDescString00 > $2D0

.FAIL "Text section 'Lore descriptions' is too large."

.ENDIF ; (size check)

.ENDS



.BANK bankbyte(kEsperBonusDescriptions) & $3F SLOT 0
.ORG loword(kEsperBonusDescriptions)

.SECTION "Esper bonus descriptions" OVERWRITE					; $1D0 = 464 bytes max.

EsperBonusDescString00:
	.STRINGMAP battle_dialogue, "10% Bonus für HP-Zunahme(END)"

EsperBonusDescString01:
	.STRINGMAP battle_dialogue, "30% Bonus für HP-Zunahme(END)"

EsperBonusDescString02:
	.STRINGMAP battle_dialogue, "50% Bonus für HP-Zunahme(END)"

EsperBonusDescString03:
	.STRINGMAP battle_dialogue, "10% Bonus für MP-Zunahme(END)"

EsperBonusDescString04:
	.STRINGMAP battle_dialogue, "30% Bonus für MP-Zunahme(END)"

EsperBonusDescString05:
	.STRINGMAP battle_dialogue, "50% Bonus für MP-Zunahme(END)"

EsperBonusDescString06:
	.STRINGMAP battle_dialogue, "Doppel-Bonus für HP-Zunahme(END)"

EsperBonusDescString07:
	.STRINGMAP battle_dialogue, "Nicht verwendbar(END)"

EsperBonusDescString08:
	.STRINGMAP battle_dialogue, "Nichts(END)"

EsperBonusDescString09:
	.STRINGMAP battle_dialogue, "Stärke+1 bei nächstem Level-up(END)"

EsperBonusDescString10:
	.STRINGMAP battle_dialogue, "Stärke+2 bei nächstem Level-up(END)"

EsperBonusDescString11:
	.STRINGMAP battle_dialogue, "Tempo+1 bei nächstem Level-up(END)"

EsperBonusDescString12:
	.STRINGMAP battle_dialogue, "Tempo+2 bei nächstem Level-up(END)"

EsperBonusDescString13:
	.STRINGMAP battle_dialogue, "Ausdauer+1 bei nächstem(ABS)Level-up(END)"

EsperBonusDescString14:
	.STRINGMAP battle_dialogue, "Ausdauer+2 bei nächstem(ABS)Level-up(END)"

EsperBonusDescString15:
	.STRINGMAP battle_dialogue, "M-Kraft+1 bei nächstem(ABS)Level-up(END)"

EsperBonusDescString16:
	.STRINGMAP battle_dialogue, "M-Kraft+2 bei nächstem(ABS)Level-up(END)"

EsperBonusDescriptions_END:

.IF EsperBonusDescriptions_END - EsperBonusDescString00 > $1D0

.FAIL "Text section 'Esper bonus descriptions' is too large."

.ENDIF ; (size check)

.ENDS
