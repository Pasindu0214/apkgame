.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "NewHallsBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceWalls;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceVisuals;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    const v0, 0x801500

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0xa68521

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    return-void
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;->addHallsVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public build()Z
    .locals 12

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v10, 0x1

    if-ge v7, v1, :cond_5

    const/16 v2, 0x16

    const/4 v11, 0x2

    if-eqz v7, :cond_3

    if-ne v7, v9, :cond_0

    goto :goto_2

    :cond_0
    if-eq v7, v10, :cond_2

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {v11, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    const/16 v1, 0x18

    const/16 v2, 0x1c

    .line 3
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    goto :goto_3

    .line 4
    :cond_2
    :goto_1
    invoke-static {v8, v0}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    const/16 v1, 0x1a

    .line 5
    invoke-static {v2, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v1, 0xb

    .line 6
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    const/16 v1, 0x12

    .line 7
    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    :goto_3
    move v2, v0

    move v8, v1

    mul-int/lit8 v9, v7, 0x5

    add-int/lit8 v1, v9, 0x4

    const/4 v3, 0x5

    sub-int v0, v8, v2

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    if-ne v7, v11, :cond_4

    add-int/lit8 v9, v9, 0x6

    add-int/lit8 v8, v8, -0x1

    .line 9
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v8, v8, v0

    add-int/2addr v8, v9

    .line 10
    iput v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 11
    :cond_5
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v2, v3, v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    :goto_4
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    const/16 v7, 0x19

    if-ge v2, v3, :cond_7

    .line 13
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v3, v2

    if-ne v4, v10, :cond_6

    aget-boolean v4, v1, v2

    if-eqz v4, :cond_6

    .line 14
    aput v7, v3, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 15
    :cond_7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    aput v0, v1, v2

    const/16 v1, 0xb

    const/4 v2, 0x7

    const/16 v3, 0xb

    const/16 v4, 0xb

    const/4 v5, 0x1

    move-object v0, p0

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 17
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, v2, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object v0

    const/4 v1, 0x0

    .line 18
    :goto_5
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v2, :cond_a

    .line 19
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v2, v1

    if-eq v3, v10, :cond_8

    aget v2, v2, v1

    if-ne v2, v7, :cond_9

    :cond_8
    aget-boolean v2, v0, v1

    if-eqz v2, :cond_9

    .line 20
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v3, 0x1d

    aput v3, v2, v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    .line 21
    :goto_6
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v1, :cond_c

    .line 22
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    if-ne v1, v10, :cond_b

    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_b

    .line 23
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v2, 0x14

    aput v2, v1, v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    const/16 v1, 0xc

    const/16 v2, 0x8

    const/16 v3, 0x9

    const/16 v4, 0x9

    const/16 v5, 0xe

    move-object v0, p0

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/4 v4, 0x2

    const/16 v5, 0xc

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v2, 0xf

    const/4 v3, 0x2

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v1, 0x13

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v1, 0xf

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 29
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    div-int/lit8 v1, v0, 0x2

    const/16 v2, 0x9

    mul-int/lit8 v0, v0, 0x9

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 30
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceVisuals;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceVisuals;-><init>()V

    const/16 v1, 0xc

    .line 31
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 32
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 33
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceWalls;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceWalls;-><init>()V

    const/16 v2, 0x8

    .line 35
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 36
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 37
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 38
    :goto_7
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v1, :cond_e

    .line 39
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v3, v0

    aget v2, v2, v3

    and-int/2addr v2, v10

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 40
    :cond_e
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    invoke-static {v0, v1, v2}, Lcom/watabou/utils/PathFinder;->getStep(II[Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    const/4 v6, 0x1

    :cond_f
    return v6
.end method

.method public createItems()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

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

.method public occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    aget v2, v0, v1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    aget v0, v0, v2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel;->seal()V

    :cond_0
    return-void
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 2
    :cond_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v1, v0

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 4
    invoke-static {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    if-nez v2, :cond_0

    return v1
.end method

.method public respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public seal()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/16 v2, 0xe

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v2, 0x3dcccccd    # 0.1f

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogDzewa;-><init>()V

    .line 8
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 9
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    :pswitch_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "water_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "statue_desc"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0xf

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "statue_name"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "water_name"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "high_grass_name"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "grass_name"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_halls.png"

    return-object v0
.end method

.method public unseal()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    const/16 v1, 0x8

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v2, 0x19

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 9
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v4, 0x64

    .line 10
    invoke-virtual {v0, v1, v3, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 11
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;

    .line 14
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceVisuals;

    if-eqz v2, :cond_0

    .line 15
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceVisuals;

    .line 16
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceVisuals;->updateState()V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;

    .line 18
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceWalls;

    if-eqz v2, :cond_2

    .line 19
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceWalls;

    .line 20
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel$CenterPieceWalls;->updateState()V

    goto :goto_1

    .line 21
    :cond_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    return-void
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water4.png"

    return-object v0
.end method
