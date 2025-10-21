; TODO: work out correct table file

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
