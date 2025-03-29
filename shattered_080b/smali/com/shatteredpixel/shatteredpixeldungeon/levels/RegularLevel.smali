.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "RegularLevel.java"


# instance fields
.field public builder:Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;

.field public roomEntrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

.field public rooms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation
.end field

.field public secretDoors:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->builder()Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->builder:Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->initRooms()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 5
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->builder:Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->build(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->painter()Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;

    move-result-object v0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public builder()Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;
    .locals 5

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;-><init>()V

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f333333    # 0.7f

    .line 2
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 3
    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v3

    const/4 v4, 0x2

    .line 4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveExponent:I

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v1, v4

    .line 5
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveIntensity:F

    rem-float/2addr v3, v2

    .line 6
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveOffset:F

    return-object v0
.end method

.method public createItems()V
    .locals 12

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1e

    const/16 v5, 0xf

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ge v3, v1, :cond_c

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v8

    if-nez v8, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->randomDropCell()I

    move-result v9

    .line 4
    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v11, v10, v9

    if-eq v11, v5, :cond_1

    aget v5, v10, v9

    if-ne v5, v4, :cond_2

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v7, v4, v9

    .line 6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    aput-boolean v2, v4, v9

    :cond_2
    const/16 v4, 0x14

    .line 7
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_5

    if-eq v4, v7, :cond_5

    if-eq v4, v0, :cond_5

    if-eq v4, v5, :cond_5

    const/4 v10, 0x5

    if-eq v4, v10, :cond_3

    .line 8
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    goto :goto_1

    .line 9
    :cond_3
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-le v4, v6, :cond_4

    invoke-virtual {p0, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v4

    if-nez v4, :cond_4

    .line 10
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-static {v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->spawnAt(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    goto :goto_1

    .line 12
    :cond_5
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    goto :goto_1

    .line 13
    :cond_6
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 14
    :goto_1
    instance-of v10, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    if-eqz v10, :cond_7

    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v7

    if-eqz v7, :cond_8

    .line 15
    :cond_7
    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isUpgradable()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    if-nez v5, :cond_a

    .line 16
    :cond_8
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-le v4, v6, :cond_9

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v4

    if-nez v4, :cond_9

    .line 17
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GoldenMimic;

    invoke-static {v9, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->spawnAt(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_9
    invoke-virtual {p0, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v5, v9}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_b

    .line 20
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 21
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_2

    .line 22
    :cond_a
    invoke-virtual {p0, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v5

    .line 23
    iput-object v4, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 24
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v4, v6, :cond_b

    .line 25
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    :cond_b
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 26
    :cond_c
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->itemsToSpawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 27
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->randomDropCell()I

    move-result v3

    .line 28
    invoke-virtual {p0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v1

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v8, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 29
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v8, v1, v3

    if-eq v8, v5, :cond_e

    aget v1, v1, v3

    if-ne v1, v4, :cond_d

    .line 30
    :cond_e
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v7, v1, v3

    .line 31
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    aput-boolean v2, v1, v3

    goto :goto_3

    .line 32
    :cond_f
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seedCurDepth()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->pushGenerator(J)V

    .line 33
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 34
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->randomDropCell()I

    move-result v1

    .line 35
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v8, v3, v1

    if-eq v8, v5, :cond_10

    aget v3, v3, v1

    if-ne v3, v4, :cond_11

    .line 36
    :cond_10
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v7, v3, v1

    .line 37
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    aput-boolean v2, v3, v1

    .line 38
    :cond_11
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 39
    :cond_12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_16

    .line 40
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v1, :cond_16

    .line 41
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/2addr v1, v7

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->droppedPetals:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v1, v3

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    const/4 v3, 0x1

    :goto_4
    if-gt v3, v1, :cond_16

    .line 42
    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->droppedPetals:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_15

    .line 43
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$Petal;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$Petal;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->randomDropCell()I

    move-result v9

    .line 45
    invoke-virtual {p0, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v8

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v10, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 46
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v10, v8, v9

    if-eq v10, v5, :cond_13

    aget v8, v8, v9

    if-ne v8, v4, :cond_14

    .line 47
    :cond_13
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v7, v8, v9

    .line 48
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    aput-boolean v2, v8, v9

    .line 49
    :cond_14
    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->droppedPetals:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->droppedPetals:I

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 50
    :cond_16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages()Ljava/util/Collection;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 53
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    invoke-virtual {v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->hasPage(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 54
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_18
    const-string v3, "Intro"

    .line 55
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v3, "Examining_and_Searching"

    .line 56
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v7

    sub-int/2addr v0, v3

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1b

    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    int-to-float v8, v8

    add-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v8, v0

    cmpg-float v0, v3, v8

    if-gez v0, :cond_1b

    .line 59
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/GuidePage;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/GuidePage;-><init>()V

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->randomDropCell()I

    move-result v1

    .line 63
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v6, v3, v1

    if-eq v6, v5, :cond_19

    aget v3, v3, v1

    if-ne v3, v4, :cond_1a

    .line 64
    :cond_19
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v7, v3, v1

    .line 65
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    aput-boolean v2, v3, v1

    .line 66
    :cond_1a
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 67
    :cond_1b
    invoke-static {}, Lcom/watabou/utils/Random;->popGenerator()V

    return-void

    nop

    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createMobs()V
    .locals 10

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->nMobs()I

    move-result v0

    .line 2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 4
    instance-of v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->roomEntrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eq v3, v5, :cond_1

    .line 5
    :goto_1
    move-object v5, v3

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->roomValue:I

    if-ge v4, v5, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v1}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    const/16 v3, 0x1e

    if-lez v0, :cond_9

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->createMob()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v5

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 12
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/16 v7, 0x1e

    .line 13
    :cond_5
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v8

    iput v8, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_6

    .line 14
    invoke-virtual {p0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v9, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    if-eq v9, v8, :cond_5

    :cond_6
    if-ltz v7, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 15
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-lez v0, :cond_3

    const/4 v5, 0x4

    .line 16
    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->createMob()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v5

    .line 18
    :cond_7
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v7

    iput v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_8

    .line 19
    invoke-virtual {p0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v7

    if-nez v7, :cond_7

    :cond_8
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v8, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    if-eq v8, v7, :cond_7

    if-ltz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 20
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 22
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v6, v2, v5

    const/16 v7, 0xf

    if-eq v6, v7, :cond_b

    aget v2, v2, v5

    if-ne v2, v3, :cond_a

    .line 23
    :cond_b
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v5, 0x2

    aput v5, v2, v1

    .line 24
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    aput-boolean v4, v2, v1

    goto :goto_3

    :cond_c
    return-void
.end method

.method public fallCell(Z)I
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 2
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/PitRoom;

    if-eqz v1, :cond_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result p1

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 7
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->fallCell(Z)I

    move-result p1

    return p1
.end method

.method public initRooms()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/LaboratoryRoom;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EntranceRoom;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EntranceRoom;-><init>()V

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->roomEntrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ExitRoom;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ExitRoom;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->standardRooms()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    move-result-object v7

    sub-int v8, v2, v4

    add-int/2addr v8, v5

    .line 6
    invoke-virtual {v7, v3, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->setSizeCat(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7
    iget-object v5, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->roomValue:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    .line 8
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    const/16 v4, 0xb

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    .line 10
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->specialRooms()I

    move-result v2

    .line 12
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    .line 13
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    rem-int/lit8 v4, v4, 0x5

    int-to-long v7, v4

    sget-wide v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->seed:J

    const-wide/16 v11, 0x3

    rem-long/2addr v9, v11

    const-wide/16 v11, 0x2

    add-long/2addr v9, v11

    cmp-long v4, v7, v9

    if-nez v4, :cond_5

    .line 14
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    const/4 v4, 0x0

    :goto_3
    const/4 v7, 0x4

    if-ge v4, v2, :cond_f

    .line 15
    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/WeakFloorRoom;

    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sget v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    if-ne v9, v10, :cond_6

    .line 16
    sput v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    .line 17
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ArmoryRoom;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/CryptRoom;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/LibraryRoom;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/RunestoneRoom;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/StatueRoom;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/TreasuryRoom;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/VaultRoom;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/PitRoom;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/PitRoom;-><init>()V

    goto/16 :goto_5

    .line 26
    :cond_6
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 27
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 29
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_7
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/LaboratoryRoom;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/LaboratoryRoom;-><init>()V

    goto :goto_5

    .line 31
    :cond_8
    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v9, v6

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 32
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    :cond_9
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_b

    .line 34
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v10

    if-ge v10, v8, :cond_a

    move v8, v10

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 35
    :cond_b
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 36
    instance-of v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/WeakFloorRoom;

    if-eqz v8, :cond_c

    .line 37
    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v8, v6

    sput v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->pitNeededDepth:I

    .line 38
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 39
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->floorSpecials:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 41
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->runSpecials:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_d
    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;

    .line 43
    :goto_5
    instance-of v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/PitRoom;

    if-eqz v8, :cond_e

    add-int/lit8 v2, v2, 0x1

    .line 44
    :cond_e
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 45
    :cond_f
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->secretsForFloor(I)I

    move-result v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_12

    .line 46
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->runSecrets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v7, :cond_11

    .line 47
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->runSecrets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v6

    if-ge v6, v4, :cond_10

    move v4, v6

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 48
    :cond_11
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->runSecrets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;

    .line 49
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;->runSecrets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-object v1
.end method

.method public nMobs()I
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    rem-int/lit8 v0, v0, 0x5

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nTraps()I
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public abstract painter()Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;
.end method

.method public randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-nez v1, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-static {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    :cond_3
    return v1
.end method

.method public randomDropCell()I
    .locals 3

    .line 1
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->randomRoom(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->roomEntrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    .line 5
    invoke-virtual {v1, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz v1, :cond_1

    .line 8
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BlazingTrap;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ChillingTrap;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/FrostTrap;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ExplosiveTrap;

    if-nez v2, :cond_0

    instance-of v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DisintegrationTrap;

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x1e

    if-le v0, v2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->randomRoom(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->roomEntrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random(I)Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_0

    .line 5
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 6
    invoke-static {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 7
    :cond_3
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canPlaceCharacter(Lcom/watabou/utils/Point;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    if-eq v1, v2, :cond_0

    return v1
.end method

.method public randomRoom(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "rooms"

    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 4
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->onLevelLoad(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 5
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EntranceRoom;

    if-eqz v1, :cond_0

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->roomEntrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ExitRoom;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public room(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 2
    new-instance v2, Lcom/watabou/utils/Point;

    .line 3
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 4
    rem-int v4, p1, v3

    div-int v3, p1, v3

    invoke-direct {v2, v4, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public specialRooms()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public standardRooms()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    const-string v1, "rooms"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method
