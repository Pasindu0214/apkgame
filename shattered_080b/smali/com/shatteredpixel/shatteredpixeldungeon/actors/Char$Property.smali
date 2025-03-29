.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;
.super Ljava/lang/Enum;
.source "Char.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum ACIDIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum BLOB_IMMUNE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum DEMONIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum ELECTRIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum FIERY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum ICY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum INORGANIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

.field public static final enum UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;


# instance fields
.field public immunities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public resistances:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Grim;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfPsionicBlast;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    new-array v5, v8, [Ljava/lang/Class;

    aput-object v0, v5, v6

    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAggression$Aggression;

    aput-object v10, v5, v7

    .line 2
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v5, "BOSS"

    invoke-direct {v1, v5, v6, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;ILjava/util/HashSet;Ljava/util/HashSet;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    new-array v5, v7, [Ljava/lang/Class;

    aput-object v0, v5, v6

    .line 4
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v0, "MINIBOSS"

    invoke-direct {v1, v0, v7, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;ILjava/util/HashSet;Ljava/util/HashSet;)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    const-string v1, "UNDEAD"

    invoke-direct {v0, v1, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    const-string v1, "DEMONIC"

    invoke-direct {v0, v1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->DEMONIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;

    aput-object v5, v4, v6

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/ToxicGas;

    aput-object v5, v4, v7

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    aput-object v5, v4, v8

    .line 8
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v4, "INORGANIC"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;ILjava/util/HashSet;Ljava/util/HashSet;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->INORGANIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    aput-object v5, v4, v6

    .line 10
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x5

    const-string v5, "BLOB_IMMUNE"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;ILjava/util/HashSet;Ljava/util/HashSet;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BLOB_IMMUNE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 11
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v8, [Ljava/lang/Class;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;

    aput-object v5, v2, v6

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$FireElemental;

    aput-object v5, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    new-array v5, v8, [Ljava/lang/Class;

    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    aput-object v10, v5, v6

    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Blazing;

    aput-object v10, v5, v7

    .line 12
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x6

    const-string v10, "FIERY"

    invoke-direct {v0, v10, v5, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;ILjava/util/HashSet;Ljava/util/HashSet;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->FIERY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v8, [Ljava/lang/Class;

    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFrost;

    aput-object v10, v2, v6

    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$FrostElemental;

    aput-object v10, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;

    aput-object v11, v10, v6

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    aput-object v11, v10, v7

    .line 14
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v10, 0x7

    const-string v11, "ICY"

    invoke-direct {v0, v11, v10, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;ILjava/util/HashSet;Ljava/util/HashSet;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ICY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v7, [Ljava/lang/Class;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corrosion;

    aput-object v11, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    aput-object v12, v11, v6

    .line 16
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/16 v11, 0x8

    const-string v12, "ACIDIC"

    invoke-direct {v0, v12, v11, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;ILjava/util/HashSet;Ljava/util/HashSet;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ACIDIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 17
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;

    aput-object v12, v2, v6

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Shocking;

    aput-object v12, v2, v7

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Potential;

    aput-object v12, v2, v8

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;

    aput-object v12, v2, v9

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/ShockingDart;

    aput-object v12, v2, v3

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ShockElemental;

    aput-object v12, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/16 v12, 0x9

    const-string v13, "ELECTRIC"

    invoke-direct {v0, v13, v12, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;ILjava/util/HashSet;Ljava/util/HashSet;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ELECTRIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 18
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    const/16 v1, 0xa

    const-string v2, "LARGE"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 19
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    const/16 v2, 0xb

    const-string v13, "IMMOVABLE"

    invoke-direct {v0, v13, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 20
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v14, v13, v6

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v6, v13, v7

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v6, v13, v8

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->DEMONIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v6, v13, v9

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->INORGANIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v6, v13, v3

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BLOB_IMMUNE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v3, v13, v4

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->FIERY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v3, v13, v5

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ICY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v3, v13, v10

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ACIDIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v3, v13, v11

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ELECTRIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v3, v13, v12

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    aput-object v3, v13, v1

    aput-object v0, v13, v2

    sput-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->resistances:Ljava/util/HashSet;

    .line 4
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->immunities:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->resistances:Ljava/util/HashSet;

    .line 7
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->immunities:Ljava/util/HashSet;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    return-object v0
.end method
