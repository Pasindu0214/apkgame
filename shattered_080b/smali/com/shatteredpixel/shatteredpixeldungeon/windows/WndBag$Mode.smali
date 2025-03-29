.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;
.super Ljava/lang/Enum;
.source "WndBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum ALCHEMY:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum ALL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum CURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum ENCHANTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum EQUIPMENT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum NOT_EQUIPPED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum POTION:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum QUICKSLOT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum RECYCLABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum SEED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum TRANMSUTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum UNCURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum UNIDED_POTION_OR_SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum UNIDENTIFED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum UPGRADEABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum WAND:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

.field public static final enum WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v2, 0x1

    const-string v3, "UNIDENTIFED"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNIDENTIFED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v3, 0x2

    const-string v4, "UNCURSABLE"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNCURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v4, 0x3

    const-string v5, "CURSABLE"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->CURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v5, 0x4

    const-string v6, "UPGRADEABLE"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UPGRADEABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v6, 0x5

    const-string v7, "QUICKSLOT"

    invoke-direct {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->QUICKSLOT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v7, 0x6

    const-string v8, "FOR_SALE"

    invoke-direct {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v8, 0x7

    const-string v9, "WEAPON"

    invoke-direct {v0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v9, 0x8

    const-string v10, "ARMOR"

    invoke-direct {v0, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v10, 0x9

    const-string v11, "ENCHANTABLE"

    invoke-direct {v0, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ENCHANTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 11
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v11, 0xa

    const-string v12, "WAND"

    invoke-direct {v0, v12, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 12
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v12, 0xb

    const-string v13, "SEED"

    invoke-direct {v0, v13, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v13, 0xc

    const-string v14, "FOOD"

    invoke-direct {v0, v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 14
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v14, 0xd

    const-string v15, "POTION"

    invoke-direct {v0, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v15, 0xe

    const-string v14, "SCROLL"

    invoke-direct {v0, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 16
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v14, 0xf

    const-string v15, "UNIDED_POTION_OR_SCROLL"

    invoke-direct {v0, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNIDED_POTION_OR_SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 17
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v15, 0x10

    const-string v14, "EQUIPMENT"

    invoke-direct {v0, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->EQUIPMENT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 18
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v14, 0x11

    const-string v15, "TRANMSUTABLE"

    invoke-direct {v0, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->TRANMSUTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 19
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v15, 0x12

    const-string v14, "ALCHEMY"

    invoke-direct {v0, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALCHEMY:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 20
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v14, 0x13

    const-string v15, "RECYCLABLE"

    invoke-direct {v0, v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->RECYCLABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 21
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v15, 0x14

    const-string v14, "NOT_EQUIPPED"

    invoke-direct {v0, v14, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->NOT_EQUIPPED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v14, 0x15

    new-array v14, v14, [Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    .line 22
    sget-object v16, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v16, v14, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNIDENTIFED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNCURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->CURSABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UPGRADEABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->QUICKSLOT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v7

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v8

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v9

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ENCHANTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v10

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v11

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v12

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    aput-object v1, v14, v13

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UNIDED_POTION_OR_SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->EQUIPMENT:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->TRANMSUTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALCHEMY:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->RECYCLABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    return-object v0
.end method
