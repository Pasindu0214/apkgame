.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "OldCavesBossLevel.java"


# instance fields
.field public arenaDoor:I

.field public enteredArena:Z

.field public keyDropped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    const v0, 0x534f3e

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xb9d661

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->enteredArena:Z

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->keyDropped:Z

    return-void
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;->addCavesVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public build()Z
    .locals 11

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    const/4 v6, 0x2

    const/4 v7, 0x6

    .line 2
    invoke-static {v6, v7}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v8

    .line 3
    invoke-static {v6, v7}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v9

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/lit8 v1, v0, -0x6

    sub-int/2addr v0, v6

    .line 4
    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v2, v1, -0x6

    sub-int/2addr v1, v6

    .line 5
    invoke-static {v2, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    sub-int v10, v0, v8

    sub-int v4, v1, v9

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fillEllipse(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 7
    div-int/2addr v10, v6

    add-int/2addr v10, v8

    const/4 v6, 0x1

    sub-int/2addr v9, v6

    .line 8
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v9, v9, v0

    add-int/2addr v9, v10

    .line 9
    iput v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v1, 0x15

    aput v1, v0, v9

    const/16 v1, 0xc

    const/16 v2, 0xd

    const/4 v3, 0x7

    const/4 v4, 0x7

    const/4 v5, 0x4

    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v2, 0xf

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v1, 0xd

    const/4 v3, 0x5

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v2, 0xe

    const/4 v4, 0x1

    const/16 v5, 0x14

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v0, 0xd

    const/16 v1, 0x11

    .line 14
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v0

    .line 15
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    const/16 v3, 0x13

    mul-int/lit8 v2, v2, 0x13

    add-int/2addr v2, v0

    .line 16
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->arenaDoor:I

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v4, 0x5

    aput v4, v0, v2

    const/16 v0, 0xe

    const/16 v2, 0x10

    .line 18
    invoke-static {v0, v2}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v0

    const/16 v2, 0xf

    .line 19
    invoke-static {v2, v1}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v1

    .line 20
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    .line 21
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v4, 0x7

    aput v4, v0, v1

    .line 23
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v2, v0, v1, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 24
    :goto_0
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v2, v4, :cond_1

    .line 25
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v4, v2

    if-ne v5, v6, :cond_0

    aget-boolean v5, v0, v2

    if-eqz v5, :cond_0

    const/16 v5, 0x1d

    .line 26
    aput v5, v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_1
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v2, :cond_3

    .line 28
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v2, v2, v0

    if-ne v2, v6, :cond_2

    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 29
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v3, v2, v0

    .line 30
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ToxicTrap;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/ToxicTrap;-><init>()V

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 31
    iput-boolean v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    .line 32
    invoke-virtual {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    :cond_3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v0, v6

    .line 34
    :goto_2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 35
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v2, v3

    const/4 v3, 0x4

    if-ge v0, v2, :cond_9

    .line 36
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v2, v0

    if-ne v4, v6, :cond_8

    add-int/lit8 v4, v0, 0x1

    .line 37
    aget v2, v2, v4

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 38
    :goto_3
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    if-ne v4, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 39
    :cond_5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 40
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v5, v0

    .line 41
    aget v4, v4, v5

    if-ne v4, v3, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 42
    :cond_6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 43
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int v5, v0, v5

    .line 44
    aget v4, v4, v5

    if-ne v4, v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    const/16 v3, 0x8

    .line 45
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-gt v3, v2, :cond_8

    .line 46
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v3, 0x14

    aput v3, v2, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 47
    :cond_9
    :goto_4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 48
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_b

    .line 49
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v0, v1

    if-ne v4, v3, :cond_a

    add-int/2addr v2, v1

    .line 50
    aget v0, v0, v2

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->floorTile(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    .line 51
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_a

    .line 52
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v2, 0xc

    aput v2, v0, v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    return v6
.end method

.method public createItems()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v1, 0xd

    const/16 v2, 0x11

    .line 2
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    const/16 v2, 0xf

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v2

    .line 3
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v2, v2, v3

    add-int/2addr v2, v1

    .line 4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v2, v1, :cond_0

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    :cond_1
    return-void
.end method

.method public createMobs()V
    .locals 0

    return-void
.end method

.method public drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->keyDropped:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->keyDropped:Z

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->arenaDoor:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const v2, 0x3d8f5c29    # 0.07f

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->arenaDoor:I

    const/16 v1, 0x14

    .line 6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->arenaDoor:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    return-object p1
.end method

.method public occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->enteredArena:Z

    if-nez v0, :cond_4

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->outsideEntraceRoom(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->enteredArena:Z

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 6
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 8
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 9
    :cond_2
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldDM300;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldDM300;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 11
    :cond_3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 12
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->outsideEntraceRoom(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_3

    .line 15
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 16
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->arenaDoor:I

    const/4 v0, 0x4

    .line 17
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 18
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->arenaDoor:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 19
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 20
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->arenaDoor:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3d8f5c29    # 0.07f

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 21
    sget-object p1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const/high16 v0, 0x40400000    # 3.0f

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0, v1}, Lcom/watabou/noosa/Camera;->shake(FF)V

    .line 22
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_rocks.mp3"

    .line 23
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_4
    return-void
.end method

.method public final outsideEntraceRoom(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 2
    rem-int v1, p1, v0

    .line 3
    div-int/2addr p1, v0

    const/16 v0, 0xc

    if-lt v1, v0, :cond_1

    const/16 v0, 0x12

    if-gt v1, v0, :cond_1

    const/16 v0, 0xd

    if-lt p1, v0, :cond_1

    const/16 v0, 0x13

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 3
    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_0

    return v0
.end method

.method public respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "door"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->arenaDoor:I

    const-string v0, "entered"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->enteredArena:Z

    const-string v0, "droppped"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->keyDropped:Z

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->arenaDoor:I

    const-string v1, "door"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->enteredArena:Z

    const-string v1, "entered"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldCavesBossLevel;->keyDropped:Z

    const-string v1, "droppped"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc

    if-eq p1, v1, :cond_2

    const/16 v1, 0xf

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "wall_deco_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "exit_desc"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "entrance_desc"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CavesLevel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/16 v1, 0xf

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "water_name"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_name"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "grass_name"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_caves.png"

    return-object v0
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water2.png"

    return-object v0
.end method
