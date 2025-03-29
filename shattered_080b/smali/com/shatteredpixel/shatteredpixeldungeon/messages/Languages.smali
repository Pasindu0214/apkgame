.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;
.super Ljava/lang/Enum;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum BASQUE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum CATALAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum CHINESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum CZECH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum ENGLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum ESPERANTO:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum FINNISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum FRENCH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum GERMAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum HUNGARIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum INDONESIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum ITALIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum JAPANESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum KOREAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum POLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum PORTUGUESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum RUSSIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum SPANISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final enum TURKISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;


# instance fields
.field public code:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public reviewers:[Ljava/lang/String;

.field public status:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

.field public translators:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 48

    .line 1
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->REVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    const-string v1, "ENGLISH"

    const/4 v2, 0x0

    const-string v3, "english"

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ENGLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    const/4 v1, 0x4

    new-array v15, v1, [Ljava/lang/String;

    const-string v2, "Cocoa"

    const/4 v3, 0x0

    aput-object v2, v15, v3

    const-string v2, "Flameblast12"

    const/4 v4, 0x1

    aput-object v2, v15, v4

    const-string v2, "GameConqueror"

    const/4 v5, 0x2

    aput-object v2, v15, v5

    const-string v2, "Korean2017"

    const/4 v6, 0x3

    aput-object v2, v15, v6

    const/4 v2, 0x6

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "WondarRabb1t"

    aput-object v8, v7, v3

    const-string v8, "ddojin0115"

    aput-object v8, v7, v4

    const-string v8, "eeeei"

    aput-object v8, v7, v5

    const-string v8, "hancyel"

    aput-object v8, v7, v6

    const-string v8, "linterpreteur"

    aput-object v8, v7, v1

    const-string v9, "lsiebnie"

    const/4 v13, 0x5

    aput-object v9, v7, v13

    const-string v10, "KOREAN"

    const/4 v11, 0x1

    const-string v12, "\ud55c\uad6d\uc5b4"

    const-string v16, "ko"

    move-object v9, v0

    const/4 v2, 0x5

    move-object/from16 v13, v16

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->KOREAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v23, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v5, [Ljava/lang/String;

    const-string v9, "Jinkeloid(zdx00793)"

    aput-object v9, v7, v3

    const-string v9, "endlesssolitude"

    aput-object v9, v7, v4

    const/16 v9, 0x8

    new-array v10, v9, [Ljava/lang/String;

    const-string v11, "931451545"

    aput-object v11, v10, v3

    const-string v11, "Fishbone"

    aput-object v11, v10, v4

    const-string v11, "HoofBumpBlurryface"

    aput-object v11, v10, v5

    const-string v11, "Lery"

    aput-object v11, v10, v6

    const-string v11, "Lyn_0401"

    aput-object v11, v10, v1

    const-string v11, "ShatteredFlameBlast"

    aput-object v11, v10, v2

    const-string v11, "hmdzl001"

    const/4 v12, 0x6

    aput-object v11, v10, v12

    const-string v11, "tempest102"

    const/4 v12, 0x7

    aput-object v11, v10, v12

    const-string v19, "CHINESE"

    const/16 v20, 0x2

    const-string v21, "\u4e2d\u6587"

    const-string v22, "zh"

    move-object/from16 v18, v0

    move-object/from16 v24, v7

    move-object/from16 v25, v10

    invoke-direct/range {v18 .. v25}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->CHINESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v29, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v1, [Ljava/lang/String;

    const-string v10, "ConsideredHamster"

    aput-object v10, v7, v3

    const-string v10, "Inevielle"

    aput-object v10, v7, v4

    const-string v10, "apxwn"

    aput-object v10, v7, v5

    const-string v10, "yarikonline"

    aput-object v10, v7, v6

    const/16 v10, 0xf

    new-array v11, v10, [Ljava/lang/String;

    const-string v13, "AttHawk46"

    aput-object v13, v11, v3

    const-string v13, "BlueberryShortcake"

    aput-object v13, v11, v4

    const-string v13, "HerrGotlieb"

    aput-object v13, v11, v5

    const-string v13, "HoloTheWise"

    aput-object v13, v11, v6

    const-string v13, "Ilbko"

    aput-object v13, v11, v1

    const-string v13, "JleHuBbluKoT"

    aput-object v13, v11, v2

    const-string v13, "MrXantar"

    const/4 v14, 0x6

    aput-object v13, v11, v14

    const-string v13, "Originalej0name"

    aput-object v13, v11, v12

    const-string v13, "Raymundo"

    aput-object v13, v11, v9

    const-string v13, "Shamahan"

    const/16 v14, 0x9

    aput-object v13, v11, v14

    const-string v13, "kirusyaga"

    const/16 v15, 0xa

    aput-object v13, v11, v15

    const-string v13, "perefrazz"

    const/16 v16, 0xb

    aput-object v13, v11, v16

    const-string v13, "roman.yagodin"

    const/16 v18, 0xc

    aput-object v13, v11, v18

    const-string v13, "un_logic"

    const/16 v19, 0xd

    aput-object v13, v11, v19

    const-string v13, "\u0412o\u0432a"

    const/16 v20, 0xe

    aput-object v13, v11, v20

    const-string v25, "RUSSIAN"

    const/16 v26, 0x3

    const-string v27, "\u0440\u0443\u0441\u0441\u043a\u0438\u0439"

    const-string v28, "ru"

    move-object/from16 v24, v0

    move-object/from16 v30, v7

    move-object/from16 v31, v11

    invoke-direct/range {v24 .. v31}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->RUSSIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v35, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v12, [Ljava/lang/String;

    const-string v11, "Dallukas"

    aput-object v11, v7, v3

    const-string v11, "KrystalCroft"

    aput-object v11, v7, v4

    const-string v11, "Wuzzy"

    aput-object v11, v7, v5

    const-string v11, "Zap0"

    aput-object v11, v7, v6

    const-string v11, "apxwn"

    aput-object v11, v7, v1

    const-string v11, "bernhardreiter"

    aput-object v11, v7, v2

    const-string v11, "davedude"

    const/4 v13, 0x6

    aput-object v11, v7, v13

    const/16 v11, 0x16

    new-array v11, v11, [Ljava/lang/String;

    const-string v13, "Abracadabra"

    aput-object v13, v11, v3

    const-string v13, "Ceeee"

    aput-object v13, v11, v4

    const-string v13, "DarkPixel"

    aput-object v13, v11, v5

    const-string v13, "ErichME"

    aput-object v13, v11, v6

    const-string v13, "Faquarl"

    aput-object v13, v11, v1

    const-string v13, "LenzB"

    aput-object v13, v11, v2

    const-string v13, "Ordoviz"

    const/16 v17, 0x6

    aput-object v13, v11, v17

    const-string v13, "Sarius"

    aput-object v13, v11, v12

    const-string v13, "SirEddi"

    aput-object v13, v11, v9

    const-string v13, "Sorpl3x"

    aput-object v13, v11, v14

    const-string v13, "ThunfischGott"

    aput-object v13, v11, v15

    const-string v13, "Topicranger"

    aput-object v13, v11, v16

    const-string v13, "azrdev"

    aput-object v13, v11, v18

    const-string v13, "carrageen"

    aput-object v13, v11, v19

    const-string v13, "gekko303"

    aput-object v13, v11, v20

    const-string v13, "johannes.schobel"

    aput-object v13, v11, v10

    const-string v13, "karoshi42"

    const/16 v21, 0x10

    aput-object v13, v11, v21

    const-string v13, "koryphea"

    const/16 v22, 0x11

    aput-object v13, v11, v22

    const-string v13, "luciocarreras"

    const/16 v23, 0x12

    aput-object v13, v11, v23

    const-string v13, "niemand"

    const/16 v10, 0x13

    aput-object v13, v11, v10

    const-string v13, "oragothen"

    const/16 v10, 0x14

    aput-object v13, v11, v10

    const/16 v13, 0x15

    const-string v26, "spixi"

    aput-object v26, v11, v13

    const-string v31, "GERMAN"

    const/16 v32, 0x4

    const-string v33, "deutsch"

    const-string v34, "de"

    move-object/from16 v30, v0

    move-object/from16 v36, v7

    move-object/from16 v37, v11

    invoke-direct/range {v30 .. v37}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->GERMAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v41, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v1, [Ljava/lang/String;

    const-string v11, "Kiroto"

    aput-object v11, v7, v3

    const-string v11, "Kohru"

    aput-object v11, v7, v4

    const-string v11, "airman12"

    aput-object v11, v7, v5

    const-string v11, "grayscales"

    aput-object v11, v7, v6

    new-array v11, v10, [Ljava/lang/String;

    const-string v13, "AdventurerKilly"

    aput-object v13, v11, v3

    const-string v13, "Alesxanderk"

    aput-object v13, v11, v4

    const-string v13, "CorvosUtopy"

    aput-object v13, v11, v5

    const-string v13, "Dewstend"

    aput-object v13, v11, v6

    const-string v13, "Dyrran"

    aput-object v13, v11, v1

    const-string v13, "Fervoreking"

    aput-object v13, v11, v2

    const-string v13, "Illyatwo2"

    const/16 v17, 0x6

    aput-object v13, v11, v17

    const-string v13, "JPCHZ"

    aput-object v13, v11, v12

    const-string v13, "LastCry"

    aput-object v13, v11, v9

    const-string v13, "STKmonoqui"

    aput-object v13, v11, v14

    const-string v13, "alfongad"

    aput-object v13, v11, v15

    const-string v13, "benzarr410"

    aput-object v13, v11, v16

    const-string v13, "chepe567.jc"

    aput-object v13, v11, v18

    const-string v13, "ctrijueque"

    aput-object v13, v11, v19

    const-string v13, "damc0616"

    aput-object v13, v11, v20

    const-string v13, "dhg121"

    const/16 v24, 0xf

    aput-object v13, v11, v24

    const-string v13, "javifs"

    aput-object v13, v11, v21

    const-string v13, "jonismack1"

    aput-object v13, v11, v22

    const-string v13, "magmax"

    aput-object v13, v11, v23

    const-string v13, "tres.14159"

    const/16 v25, 0x13

    aput-object v13, v11, v25

    const-string v37, "SPANISH"

    const/16 v38, 0x5

    const-string v39, "espa\u00f1ol"

    const-string v40, "es"

    move-object/from16 v36, v0

    move-object/from16 v42, v7

    move-object/from16 v43, v11

    invoke-direct/range {v36 .. v43}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->SPANISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v31, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    const/4 v7, 0x6

    new-array v11, v7, [Ljava/lang/String;

    const-string v7, "Emether"

    aput-object v7, v11, v3

    const-string v7, "TheKappaDuWeb"

    aput-object v7, v11, v4

    const-string v7, "Xalofar"

    aput-object v7, v11, v5

    const-string v7, "canc42"

    aput-object v7, v11, v6

    const-string v7, "kultissim"

    aput-object v7, v11, v1

    const-string v7, "minikrob"

    aput-object v7, v11, v2

    const/16 v7, 0x1b

    new-array v7, v7, [Ljava/lang/String;

    const-string v13, "Alsydis"

    aput-object v13, v7, v3

    const-string v13, "Axce"

    aput-object v13, v7, v4

    const-string v13, "Az_zahr"

    aput-object v13, v7, v5

    const-string v13, "Bastien72"

    aput-object v13, v7, v6

    const-string v13, "Basttee"

    aput-object v13, v7, v1

    const-string v13, "Dekadisk"

    aput-object v13, v7, v2

    const-string v13, "Draal"

    const/16 v17, 0x6

    aput-object v13, v7, v17

    const-string v13, "Neopolitan"

    aput-object v13, v7, v12

    const-string v13, "Nyrnx"

    aput-object v13, v7, v9

    const-string v13, "Petit_Chat"

    aput-object v13, v7, v14

    const-string v13, "RomTheMareep"

    aput-object v13, v7, v15

    const-string v13, "RunningColours"

    aput-object v13, v7, v16

    const-string v13, "SpeagleZNT"

    aput-object v13, v7, v18

    const-string v13, "Tronche2Cake"

    aput-object v13, v7, v19

    const-string v13, "VRad"

    aput-object v13, v7, v20

    const-string v13, "Ygdrazil"

    const/16 v24, 0xf

    aput-object v13, v7, v24

    const-string v13, "antoine9298"

    aput-object v13, v7, v21

    const-string v13, "clexanis"

    aput-object v13, v7, v22

    const-string v13, "go11um"

    aput-object v13, v7, v23

    const-string v13, "levilbatard"

    const/16 v25, 0x13

    aput-object v13, v7, v25

    aput-object v8, v7, v10

    const/16 v8, 0x15

    const-string v10, "maeltur70"

    aput-object v10, v7, v8

    const/16 v8, 0x16

    const-string v10, "marmous"

    aput-object v10, v7, v8

    const/16 v8, 0x17

    const-string v10, "mluzarreta"

    aput-object v10, v7, v8

    const/16 v8, 0x18

    const-string v10, "solthaar"

    aput-object v10, v7, v8

    const/16 v8, 0x19

    const-string v10, "speagle"

    aput-object v10, v7, v8

    const/16 v8, 0x1a

    const-string v10, "vavavoum"

    aput-object v10, v7, v8

    const-string v27, "FRENCH"

    const/16 v28, 0x6

    const-string v29, "fran\u00e7ais"

    const-string v30, "fr"

    move-object/from16 v26, v0

    move-object/from16 v32, v11

    move-object/from16 v33, v7

    invoke-direct/range {v26 .. v33}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->FRENCH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v37, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "Chacal.Ex"

    aput-object v8, v7, v3

    const-string v8, "TDF2001"

    aput-object v8, v7, v4

    const-string v8, "matheus208"

    aput-object v8, v7, v5

    const/16 v8, 0xf

    new-array v10, v8, [Ljava/lang/String;

    const-string v8, "Bigode935"

    aput-object v8, v10, v3

    const-string v8, "ChainedFreaK"

    aput-object v8, v10, v4

    const-string v8, "Helen0903"

    aput-object v8, v10, v5

    const-string v8, "JST"

    aput-object v8, v10, v6

    const-string v8, "MadHorus"

    aput-object v8, v10, v1

    const-string v8, "Matie"

    aput-object v8, v10, v2

    const-string v8, "Tio_P_(Krampus)"

    const/4 v11, 0x6

    aput-object v8, v10, v11

    const-string v8, "ancientorange"

    aput-object v8, v10, v12

    const-string v8, "danypr23"

    aput-object v8, v10, v9

    const-string v8, "denis.gnl"

    aput-object v8, v10, v14

    const-string v8, "ismael.henriques12"

    aput-object v8, v10, v15

    const-string v8, "mfcord"

    aput-object v8, v10, v16

    const-string v8, "owenreilly"

    aput-object v8, v10, v18

    const-string v8, "rafazago"

    aput-object v8, v10, v19

    const-string v8, "try31"

    aput-object v8, v10, v20

    const-string v33, "PORTUGUESE"

    const/16 v34, 0x7

    const-string v35, "portugu\u00eas"

    const-string v36, "pt"

    move-object/from16 v32, v0

    move-object/from16 v38, v7

    move-object/from16 v39, v10

    invoke-direct/range {v32 .. v39}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->PORTUGUESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v43, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v1, [Ljava/lang/String;

    const-string v8, "Deksippos"

    aput-object v8, v7, v3

    const-string v8, "MrKukurykpl"

    aput-object v8, v7, v4

    const-string v8, "kuadziw"

    aput-object v8, v7, v5

    const-string v8, "szymex73"

    aput-object v8, v7, v6

    const/16 v8, 0xf

    new-array v10, v8, [Ljava/lang/String;

    const-string v8, "Chasseur"

    aput-object v8, v10, v3

    const-string v8, "Darden"

    aput-object v8, v10, v4

    const-string v8, "DarkKnightComes"

    aput-object v8, v10, v5

    const-string v8, "KarixDaii"

    aput-object v8, v10, v6

    const-string v8, "MJedi"

    aput-object v8, v10, v1

    const-string v8, "Odiihinia"

    aput-object v8, v10, v2

    const-string v8, "Peperos"

    const/4 v11, 0x6

    aput-object v8, v10, v11

    const-string v8, "Scharnvirk"

    aput-object v8, v10, v12

    const-string v8, "VasteelXolotl"

    aput-object v8, v10, v9

    const-string v8, "bvader95"

    aput-object v8, v10, v14

    const-string v8, "dusakus"

    aput-object v8, v10, v15

    const-string v8, "michaub"

    aput-object v8, v10, v16

    const-string v8, "ozziezombie"

    aput-object v8, v10, v18

    const-string v8, "szczoteczka22"

    aput-object v8, v10, v19

    const-string v8, "transportowiec96"

    aput-object v8, v10, v20

    const-string v39, "POLISH"

    const/16 v40, 0x8

    const-string v41, "polski"

    const-string v42, "pl"

    move-object/from16 v38, v0

    move-object/from16 v44, v7

    move-object/from16 v45, v10

    invoke-direct/range {v38 .. v45}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->POLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v31, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->REVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "bizzolino"

    aput-object v8, v7, v3

    const-string v8, "funnydwarf"

    aput-object v8, v7, v4

    new-array v8, v12, [Ljava/lang/String;

    const-string v10, "4est"

    aput-object v10, v8, v3

    const-string v10, "DaniMare"

    aput-object v10, v8, v4

    const-string v10, "Danzl"

    aput-object v10, v8, v5

    const-string v10, "andrearubbino00"

    aput-object v10, v8, v6

    const-string v10, "nessunluogo"

    aput-object v10, v8, v1

    const-string v10, "righi.a"

    aput-object v10, v8, v2

    const-string v10, "umby000"

    const/4 v11, 0x6

    aput-object v10, v8, v11

    const-string v27, "ITALIAN"

    const/16 v28, 0x9

    const-string v29, "italiano"

    const-string v30, "it"

    move-object/from16 v26, v0

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    invoke-direct/range {v26 .. v33}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ITALIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 11
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v37, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->REVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "ObisMike"

    aput-object v8, v7, v3

    new-array v8, v2, [Ljava/lang/String;

    const-string v10, "AshenShugar"

    aput-object v10, v8, v3

    const-string v10, "Buba237"

    aput-object v10, v8, v4

    const-string v10, "JStrange"

    aput-object v10, v8, v5

    const-string v10, "RealBrofessor"

    aput-object v10, v8, v6

    const-string v10, "chuckjirka"

    aput-object v10, v8, v1

    const-string v33, "CZECH"

    const/16 v34, 0xa

    const-string v35, "\u010de\u0161tina"

    const-string v36, "cs"

    move-object/from16 v32, v0

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    invoke-direct/range {v32 .. v39}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->CZECH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 12
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v43, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->INCOMPLETE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "LokiofMillenium"

    aput-object v8, v7, v3

    const-string v8, "emrebnk"

    aput-object v8, v7, v4

    new-array v8, v9, [Ljava/lang/String;

    const-string v10, "AGORAAA"

    aput-object v10, v8, v3

    const-string v10, "AcuriousPotato"

    aput-object v10, v8, v4

    const-string v10, "alpekin98"

    aput-object v10, v8, v5

    const-string v10, "denizakalin"

    aput-object v10, v8, v6

    const-string v10, "erdemozdemir98"

    aput-object v10, v8, v1

    const-string v10, "immortalsamuraicn"

    aput-object v10, v8, v2

    const-string v10, "melezorus34"

    const/4 v11, 0x6

    aput-object v10, v8, v11

    const-string v10, "mitux"

    aput-object v10, v8, v12

    const-string v39, "TURKISH"

    const/16 v40, 0xb

    const-string v41, "t\u00fcrk\u00e7e"

    const-string v42, "tr"

    move-object/from16 v38, v0

    move-object/from16 v44, v7

    move-object/from16 v45, v8

    invoke-direct/range {v38 .. v45}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->TURKISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v31, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->INCOMPLETE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "TenguTheKnight"

    aput-object v8, v7, v3

    const-string v27, "FINNISH"

    const/16 v28, 0xc

    const-string v29, "suomi"

    const-string v30, "fi"

    const/16 v33, 0x0

    move-object/from16 v26, v0

    move-object/from16 v32, v7

    invoke-direct/range {v26 .. v33}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->FINNISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 14
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v39, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "dorheim"

    aput-object v8, v7, v3

    const-string v8, "szalaik"

    aput-object v8, v7, v4

    const/4 v8, 0x6

    new-array v10, v8, [Ljava/lang/String;

    const-string v8, "Navetelen"

    aput-object v8, v10, v3

    const-string v8, "clarovani"

    aput-object v8, v10, v4

    const-string v8, "dhialub"

    aput-object v8, v10, v5

    const-string v8, "nanometer"

    aput-object v8, v10, v6

    const-string v8, "nardomaa"

    aput-object v8, v10, v1

    const-string v8, "savarall"

    aput-object v8, v10, v2

    const-string v35, "HUNGARIAN"

    const/16 v36, 0xd

    const-string v37, "magyar"

    const-string v38, "hu"

    move-object/from16 v34, v0

    move-object/from16 v40, v7

    move-object/from16 v41, v10

    invoke-direct/range {v34 .. v41}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->HUNGARIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v31, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->INCOMPLETE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v1, [Ljava/lang/String;

    const-string v8, "Gosamaru"

    aput-object v8, v7, v3

    const-string v8, "amama"

    aput-object v8, v7, v4

    const-string v8, "librada"

    aput-object v8, v7, v5

    const-string v8, "mocklike"

    aput-object v8, v7, v6

    const-string v27, "JAPANESE"

    const/16 v28, 0xe

    const-string v29, "\u65e5\u672c\u8a9e"

    const-string v30, "ja"

    const/16 v32, 0x0

    move-object/from16 v26, v0

    move-object/from16 v33, v7

    invoke-direct/range {v26 .. v33}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->JAPANESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 16
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v38, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->INCOMPLETE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "rakapratama"

    aput-object v8, v7, v3

    new-array v8, v5, [Ljava/lang/String;

    const-string v10, "ZangieF347"

    aput-object v10, v8, v3

    const-string v10, "esprogarap"

    aput-object v10, v8, v4

    const-string v34, "INDONESIAN"

    const/16 v35, 0xf

    const-string v36, "indon\u00e9sien"

    const-string v37, "in"

    move-object/from16 v33, v0

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    invoke-direct/range {v33 .. v40}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->INDONESIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 17
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v31, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->INCOMPLETE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "Illyatwo2"

    aput-object v8, v7, v3

    new-array v8, v5, [Ljava/lang/String;

    const-string v10, "Elosy"

    aput-object v10, v8, v3

    const-string v10, "n1ngu"

    aput-object v10, v8, v4

    const-string v27, "CATALAN"

    const/16 v28, 0x10

    const-string v29, "catal\u00e0"

    const-string v30, "ca"

    move-object/from16 v26, v0

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    invoke-direct/range {v26 .. v33}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->CATALAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 18
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v37, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "Deathrevenge"

    aput-object v8, v7, v3

    const-string v8, "Osoitz"

    aput-object v8, v7, v4

    const-string v33, "BASQUE"

    const/16 v34, 0x11

    const-string v35, "euskara"

    const-string v36, "eu"

    const/16 v39, 0x0

    move-object/from16 v32, v0

    move-object/from16 v38, v7

    invoke-direct/range {v32 .. v39}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->BASQUE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 19
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v45, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "Verdulo"

    aput-object v8, v7, v3

    new-array v8, v4, [Ljava/lang/String;

    const-string v10, "Raizin"

    aput-object v10, v8, v3

    const-string v41, "ESPERANTO"

    const/16 v42, 0x12

    const-string v43, "esperanto"

    const-string v44, "eo"

    move-object/from16 v40, v0

    move-object/from16 v46, v7

    move-object/from16 v47, v8

    invoke-direct/range {v40 .. v47}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ESPERANTO:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    const/16 v7, 0x13

    new-array v7, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 20
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ENGLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v8, v7, v3

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->KOREAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v3, v7, v4

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->CHINESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v3, v7, v5

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->RUSSIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v3, v7, v6

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->GERMAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v3, v7, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->SPANISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->FRENCH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    const/4 v2, 0x6

    aput-object v1, v7, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->PORTUGUESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v12

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->POLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v9

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ITALIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v14

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->CZECH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v15

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->TURKISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v16

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->FINNISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v18

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->HUNGARIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v19

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->JAPANESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v20

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->INDONESIAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    const/16 v2, 0xf

    aput-object v1, v7, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->CATALAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v21

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->BASQUE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    aput-object v1, v7, v22

    aput-object v0, v7, v23

    sput-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->name:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->code:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->status:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    .line 5
    iput-object p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->reviewers:[Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->translators:[Ljava/lang/String;

    return-void
.end method

.method public static matchCode(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;
    .locals 5

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->code:Ljava/lang/String;

    .line 3
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ENGLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    return-object p0
.end method

.method public static matchLocale(Ljava/util/Locale;)Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->matchCode(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    return-object v0
.end method
