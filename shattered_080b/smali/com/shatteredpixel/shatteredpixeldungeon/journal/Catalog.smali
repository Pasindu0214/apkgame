.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;
.super Ljava/lang/Enum;
.source "Catalog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

.field public static final enum ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

.field public static final enum ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

.field public static final enum POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

.field public static final enum RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

.field public static final enum SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

.field public static final enum WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

.field public static final enum WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

.field public static catalogBadges:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public seen:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "WEAPONS"

    .line 3
    invoke-direct {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    const/4 v3, 0x1

    const-string v4, "ARMOR"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    const/4 v4, 0x2

    const-string v5, "WANDS"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    const/4 v5, 0x3

    const-string v6, "RINGS"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    const/4 v6, 0x4

    const-string v7, "ARTIFACTS"

    invoke-direct {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    const/4 v7, 0x5

    const-string v8, "POTIONS"

    invoke-direct {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    const/4 v8, 0x6

    const-string v9, "SCROLLS"

    invoke-direct {v0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    const/4 v9, 0x7

    new-array v9, v9, [Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    .line 10
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    aput-object v10, v9, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    aput-object v1, v9, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    aput-object v1, v9, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    aput-object v1, v9, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    aput-object v1, v9, v6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    .line 11
    iget-object v0, v10, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/WornShortsword;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gloves;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Dagger;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Shortsword;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/HandAxe;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Spear;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Quarterstaff;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Dirk;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Sword;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Mace;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Scimitar;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/RoundShield;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Sai;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Whip;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Longsword;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/BattleAxe;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Flail;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/RunicBlade;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/AssassinsBlade;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Greatsword;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/WarHammer;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Glaive;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Greataxe;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Greatshield;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Gauntlet;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClothArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/LeatherArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MailArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ScaleArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/PlateArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MageArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/RogueArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfMagicMissile;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfDisintegration;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFireblast;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorrosion;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfFrost;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfPrismaticLight;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfTransfusion;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfCorruption;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEnergy;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEvasion;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfFuror;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfHaste;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfSharpshooting;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfTenacity;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TalismanOfForesight;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHaste;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMirrorImage;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTerror;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfLullaby;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRage;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    .line 107
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_WEAPONS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ARMOR_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_WANDS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_RINGS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ARTIFACTS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_POTIONS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_SCROLLS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static isSeen(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3
    iget-object v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static restore(Lcom/watabou/utils/Bundle;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->loadGlobal()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->isUnlocked(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    move-result-object p0

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 5
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 6
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 8
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->isUnlocked(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 10
    iget-object v8, v5, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "catalogs"

    .line 11
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    move-result-object v0

    array-length v3, v0

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v4, v0, v1

    .line 14
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 15
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 16
    iget-object v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public static setSeen(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->saveNeeded:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemsIdentified()V

    return-void
.end method

.method public static store(Lcom/watabou/utils/Bundle;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->loadGlobal()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->isUnlocked(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 5
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->isUnlocked(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 6
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 7
    iget-object v8, v5, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "catalogs"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    return-object v0
.end method


# virtual methods
.method public items()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
