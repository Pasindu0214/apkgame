.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;
.super Ljava/lang/Enum;
.source "Generator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum GOLD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final INITIAL_ARTIFACT_PROBS:[F

.field public static final enum MISSILE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum MIS_T1:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum MIS_T2:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum MIS_T3:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum MIS_T4:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum MIS_T5:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum STONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum WEP_T1:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum WEP_T2:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum WEP_T3:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum WEP_T4:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static final enum WEP_T5:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;


# instance fields
.field public classes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public prob:F

.field public probs:[F

.field public superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v3, 0x0

    const-string v4, "WEAPON"

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {v2, v4, v3, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 2
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "WEP_T1"

    invoke-direct {v2, v6, v5, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T1:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v6, 0x2

    const-string v7, "WEP_T2"

    invoke-direct {v2, v7, v6, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T2:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v7, 0x3

    const-string v8, "WEP_T3"

    invoke-direct {v2, v8, v7, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T3:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 5
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v8, 0x4

    const-string v9, "WEP_T4"

    invoke-direct {v2, v9, v8, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T4:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 6
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v9, 0x5

    const-string v10, "WEP_T5"

    invoke-direct {v2, v10, v9, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T5:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 7
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v10, 0x6

    const-string v11, "ARMOR"

    const/high16 v12, 0x40800000    # 4.0f

    invoke-direct {v1, v11, v10, v12, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 8
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v11, 0x7

    const-string v12, "MISSILE"

    invoke-direct {v1, v12, v11, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MISSILE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 9
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v12, 0x8

    const-string v13, "MIS_T1"

    invoke-direct {v1, v13, v12, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T1:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 10
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v13, 0x9

    const-string v14, "MIS_T2"

    invoke-direct {v1, v14, v13, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T2:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 11
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v14, 0xa

    const-string v15, "MIS_T3"

    invoke-direct {v1, v15, v14, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T3:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 12
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v15, 0xb

    const-string v14, "MIS_T4"

    invoke-direct {v1, v14, v15, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T4:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 13
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v14, 0xc

    const-string v15, "MIS_T5"

    invoke-direct {v1, v15, v14, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T5:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 14
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const/16 v15, 0xd

    const-string v14, "WAND"

    invoke-direct {v0, v14, v15, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    const/16 v2, 0xe

    const/high16 v14, 0x3f800000    # 1.0f

    const-string v15, "RING"

    invoke-direct {v0, v15, v2, v14, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 16
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    const/16 v15, 0xf

    const-string v2, "ARTIFACT"

    invoke-direct {v0, v2, v15, v14, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 17
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    const/16 v2, 0x10

    const-string v14, "FOOD"

    invoke-direct {v0, v14, v2, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 18
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    const-string v14, "POTION"

    const/16 v2, 0x11

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-direct {v0, v14, v2, v15, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 19
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    const-string v2, "SEED"

    const/16 v14, 0x12

    invoke-direct {v0, v2, v14, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 20
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    const-string v2, "SCROLL"

    const/16 v4, 0x13

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-direct {v0, v2, v4, v14, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 21
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    const-string v2, "STONE"

    const/16 v4, 0x14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v0, v2, v4, v14, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->STONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 22
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    const-string v2, "GOLD"

    const/16 v4, 0x15

    const/high16 v14, 0x41900000    # 18.0f

    invoke-direct {v0, v2, v4, v14, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;-><init>(Ljava/lang/String;IFLjava/lang/Class;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->GOLD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v1, 0x16

    new-array v1, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 23
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, v1, v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T1:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v4, v1, v5

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T2:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v14, v1, v6

    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T3:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v15, v1, v7

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T4:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v7, v1, v8

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T5:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v8, v1, v9

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v9, v1, v10

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MISSILE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v10, v1, v11

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T1:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v11, v1, v12

    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T2:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v12, v1, v13

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T3:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v16, 0xa

    aput-object v13, v1, v16

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T4:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v17, 0xb

    aput-object v6, v1, v17

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T5:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v18, 0xc

    aput-object v3, v1, v18

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v19, 0xd

    aput-object v5, v1, v19

    move-object/from16 v26, v3

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v20, 0xe

    aput-object v3, v1, v20

    move-object/from16 v20, v3

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v23, 0xf

    aput-object v3, v1, v23

    move-object/from16 v23, v3

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v22, 0x10

    aput-object v3, v1, v22

    move-object/from16 v22, v3

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v27, 0x11

    aput-object v3, v1, v27

    move-object/from16 v27, v6

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v28, 0x12

    aput-object v6, v1, v28

    move-object/from16 v28, v13

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v29, 0x13

    aput-object v13, v1, v29

    move-object/from16 v29, v12

    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->STONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/16 v30, 0x14

    aput-object v12, v1, v30

    const/16 v30, 0x15

    aput-object v0, v1, v30

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    move-object/from16 v30, v11

    const/16 v1, 0xd

    new-array v11, v1, [F

    .line 24
    fill-array-data v11, :array_0

    sput-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->INITIAL_ARTIFACT_PROBS:[F

    move-object/from16 v31, v11

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Class;

    .line 25
    const-class v25, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    const/16 v24, 0x0

    aput-object v25, v11, v24

    iput-object v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v11, v1, [F

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v11, v24

    .line 26
    iput-object v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/16 v0, 0xc

    new-array v11, v0, [Ljava/lang/Class;

    .line 27
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    aput-object v0, v11, v24

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    const/4 v1, 0x2

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    const/4 v1, 0x3

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    const/4 v1, 0x4

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    const/4 v1, 0x5

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHaste;

    const/4 v1, 0x6

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    const/4 v1, 0x7

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    const/16 v1, 0x8

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    const/16 v1, 0x9

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    const/16 v1, 0xa

    aput-object v0, v11, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    const/16 v1, 0xb

    aput-object v0, v11, v1

    iput-object v11, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/16 v0, 0xc

    new-array v1, v0, [F

    .line 28
    fill-array-data v1, :array_1

    iput-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v1, v0, [Ljava/lang/Class;

    .line 29
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Rotberry$Seed;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Blindweed$Seed;

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Dreamfoil$Seed;

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Earthroot$Seed;

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Fadeleaf$Seed;

    const/4 v3, 0x4

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Firebloom$Seed;

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Icecap$Seed;

    const/4 v3, 0x6

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sorrowmoss$Seed;

    const/4 v3, 0x7

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Stormvine$Seed;

    const/16 v3, 0x8

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;

    const/16 v3, 0x9

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$Seed;

    const/16 v3, 0xa

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;

    const/16 v3, 0xb

    aput-object v0, v1, v3

    iput-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/16 v0, 0xc

    new-array v1, v0, [F

    .line 30
    fill-array-data v1, :array_2

    iput-object v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v1, v0, [Ljava/lang/Class;

    .line 31
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMirrorImage;

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;

    const/4 v3, 0x4

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfLullaby;

    const/4 v3, 0x6

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;

    const/4 v3, 0x7

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRage;

    const/16 v3, 0x8

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;

    const/16 v3, 0x9

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTerror;

    const/16 v3, 0xa

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;

    const/16 v3, 0xb

    aput-object v0, v1, v3

    iput-object v1, v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/16 v0, 0xc

    new-array v1, v0, [F

    .line 32
    fill-array-data v1, :array_3

    iput-object v1, v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v1, v0, [Ljava/lang/Class;

    .line 33
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAggression;

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAffection;

    const/4 v3, 0x4

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfBlast;

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfBlink;

    const/4 v3, 0x6

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfClairvoyance;

    const/4 v3, 0x7

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDeepenedSleep;

    const/16 v3, 0x8

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming;

    const/16 v3, 0x9

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfFlock;

    const/16 v3, 0xa

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfShock;

    const/16 v3, 0xb

    aput-object v0, v1, v3

    iput-object v1, v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/16 v0, 0xc

    new-array v1, v0, [F

    .line 34
    fill-array-data v1, :array_4

    iput-object v1, v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/16 v0, 0xd

    new-array v1, v0, [Ljava/lang/Class;

    .line 35
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfMagicMissile;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfDisintegration;

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorrosion;

    const/4 v3, 0x4

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;

    const/4 v3, 0x6

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFrost;

    const/4 v3, 0x7

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfPrismaticLight;

    const/16 v3, 0x8

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;

    const/16 v3, 0x9

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfTransfusion;

    const/16 v3, 0xa

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;

    const/16 v3, 0xb

    aput-object v0, v1, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;

    const/16 v3, 0xc

    aput-object v0, v1, v3

    iput-object v1, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/16 v0, 0xd

    new-array v1, v0, [F

    .line 36
    fill-array-data v1, :array_5

    iput-object v1, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 37
    iput-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v1, v0, [F

    .line 38
    iput-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    .line 39
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/WornShortsword;

    aput-object v3, v2, v0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gloves;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Dagger;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iput-object v2, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v0, v1, [F

    .line 40
    fill-array-data v0, :array_6

    iput-object v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Class;

    .line 41
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Shortsword;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/HandAxe;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Spear;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Quarterstaff;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Dirk;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iput-object v1, v14, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 42
    fill-array-data v1, :array_7

    iput-object v1, v14, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    .line 43
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Sword;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Mace;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Scimitar;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/RoundShield;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Sai;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Whip;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, v15, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 44
    fill-array-data v1, :array_8

    iput-object v1, v15, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v1, v0, [Ljava/lang/Class;

    .line 45
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Longsword;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/BattleAxe;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Flail;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/RunicBlade;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/AssassinsBlade;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 46
    fill-array-data v1, :array_9

    iput-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v1, v0, [Ljava/lang/Class;

    .line 47
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Greatsword;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/WarHammer;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Glaive;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Greataxe;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Greatshield;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gauntlet;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 48
    fill-array-data v1, :array_a

    iput-object v1, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v0, v2, [Ljava/lang/Class;

    .line 49
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClothArmor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/LeatherArmor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MailArmor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ScaleArmor;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/PlateArmor;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 50
    fill-array-data v1, :array_b

    iput-object v1, v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 51
    iput-object v1, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v1, v0, [F

    .line 52
    iput-object v1, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 53
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingStone;

    aput-object v3, v2, v0

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingKnife;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    move-object/from16 v3, v30

    iput-object v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v2, v1, [F

    .line 54
    fill-array-data v2, :array_c

    iput-object v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/FishingSpear;

    aput-object v5, v3, v0

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingClub;

    aput-object v5, v3, v4

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Shuriken;

    aput-object v5, v3, v1

    move-object/from16 v5, v29

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v3, v2, [F

    .line 56
    fill-array-data v3, :array_d

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v3, v2, [Ljava/lang/Class;

    .line 57
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingSpear;

    aput-object v5, v3, v0

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Kunai;

    aput-object v5, v3, v4

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Bolas;

    aput-object v5, v3, v1

    move-object/from16 v5, v28

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v3, v2, [F

    .line 58
    fill-array-data v3, :array_e

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v3, v2, [Ljava/lang/Class;

    .line 59
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Javelin;

    aput-object v5, v3, v0

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Tomahawk;

    aput-object v5, v3, v4

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang;

    aput-object v5, v3, v1

    move-object/from16 v5, v27

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v3, v2, [F

    .line 60
    fill-array-data v3, :array_f

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v3, v2, [Ljava/lang/Class;

    .line 61
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Trident;

    aput-object v5, v3, v0

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingHammer;

    aput-object v5, v3, v4

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ForceCube;

    aput-object v5, v3, v1

    move-object/from16 v5, v26

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v3, v2, [F

    .line 62
    fill-array-data v3, :array_10

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    new-array v3, v2, [Ljava/lang/Class;

    .line 63
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    aput-object v5, v3, v0

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;

    aput-object v5, v3, v4

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    aput-object v5, v3, v1

    move-object/from16 v5, v22

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    new-array v3, v2, [F

    .line 64
    fill-array-data v3, :array_11

    iput-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/16 v3, 0xb

    new-array v5, v3, [Ljava/lang/Class;

    .line 65
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy;

    aput-object v3, v5, v0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEvasion;

    aput-object v0, v5, v4

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;

    aput-object v0, v5, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;

    aput-object v0, v5, v2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfFuror;

    const/4 v1, 0x4

    aput-object v0, v5, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfHaste;

    const/4 v1, 0x5

    aput-object v0, v5, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEnergy;

    const/4 v1, 0x6

    aput-object v0, v5, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight;

    const/4 v1, 0x7

    aput-object v0, v5, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfSharpshooting;

    const/16 v1, 0x8

    aput-object v0, v5, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfTenacity;

    const/16 v1, 0x9

    aput-object v0, v5, v1

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;

    const/16 v1, 0xa

    aput-object v0, v5, v1

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    const/16 v1, 0xb

    new-array v2, v1, [F

    .line 66
    fill-array-data v2, :array_12

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Class;

    .line 67
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CapeOfThorns;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    .line 68
    invoke-virtual/range {v31 .. v31}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    :array_8
    .array-data 4
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    :array_9
    .array-data 4
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    :array_a
    .array-data 4
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_d
    .array-data 4
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
    .end array-data

    :array_e
    .array-data 4
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
    .end array-data

    :array_f
    .array-data 4
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
    .end array-data

    :array_10
    .array-data 4
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
    .end array-data

    :array_11
    .array-data 4
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IFLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->prob:F

    .line 3
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->superClass:Ljava/lang/Class;

    return-void
.end method

.method public static order(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->superClass:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    instance-of p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-eqz p0, :cond_2

    const p0, 0x7fffffff

    goto :goto_1

    :cond_2
    const p0, 0x7ffffffe

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    return-object v0
.end method
