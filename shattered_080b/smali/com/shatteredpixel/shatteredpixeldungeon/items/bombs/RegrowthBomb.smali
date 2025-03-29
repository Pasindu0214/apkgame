.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/RegrowthBomb;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;
.source "RegrowthBomb.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->REGROWTH_BOMB:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public explode(I)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v0, v0, p1

    const/16 v1, 0x1e

    if-eqz v0, :cond_0

    const v0, 0xff00

    .line 3
    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(III)V

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p1, v2, v3}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    sget-object v4, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 7
    aget v4, v4, v2

    const v5, 0x7fffffff

    if-ge v4, v5, :cond_4

    .line 8
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 9
    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v5, v6, :cond_3

    .line 10
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Healing;

    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Healing;

    const v6, 0x3f4ccccd    # 0.8f

    iget v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v7, v7

    mul-float v7, v7, v6

    const/high16 v6, 0x41600000    # 14.0f

    add-float/2addr v7, v6

    float-to-int v6, v7

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-virtual {v5, v6, v7, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Healing;->setHeal(IFI)V

    .line 11
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;->cure(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_1

    .line 12
    :cond_1
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v4, v2

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    aget v5, v4, v2

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    aget v5, v4, v2

    const/16 v6, 0x14

    if-eq v5, v6, :cond_2

    aget v5, v4, v2

    if-eq v5, v3, :cond_2

    aget v5, v4, v2

    const/16 v6, 0xf

    if-eq v5, v6, :cond_2

    aget v4, v4, v2

    if-ne v4, v1, :cond_3

    .line 13
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const/16 v4, 0xa

    .line 14
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Regrowth;

    invoke-static {v2, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v4

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    new-array v2, v1, [F

    .line 15
    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v2

    :goto_2
    if-ge p1, v2, :cond_7

    .line 16
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 17
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 19
    :cond_7
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    new-array v0, v1, [F

    .line 20
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    if-eq v0, v3, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 21
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher$Seed;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Dewcatcher$Seed;-><init>()V

    goto :goto_3

    .line 22
    :cond_8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;-><init>()V

    goto :goto_3

    .line 23
    :cond_9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Seedpod$Seed;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfRegrowth$Seedpod$Seed;-><init>()V

    .line 24
    :goto_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plant(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    :cond_a
    return-void

    :array_0
    .array-data 4
        0x0
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public explodesDestructively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x32

    return v0
.end method
