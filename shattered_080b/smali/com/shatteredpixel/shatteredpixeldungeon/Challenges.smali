.class public Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;
.super Ljava/lang/Object;
.source "Challenges.java"


# static fields
.field public static final MASKS:[I

.field public static final NAME_IDS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "no_food"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "no_armor"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "no_healing"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "no_herbalism"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "swarm_intelligence"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "darkness"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "no_scrolls"

    aput-object v3, v1, v2

    .line 1
    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->NAME_IDS:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->MASKS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    instance-of v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/SmallRation;

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    instance-of v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    instance-of v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClothArmor;

    if-nez v1, :cond_2

    instance-of v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    instance-of v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    if-eqz v1, :cond_3

    return v0

    .line 8
    :cond_3
    instance-of v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    instance-of v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    if-eqz v1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x8

    .line 9
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    instance-of p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Dewdrop;

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
