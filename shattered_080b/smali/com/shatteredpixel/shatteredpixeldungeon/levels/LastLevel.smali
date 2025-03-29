.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "LastLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CenterPieceWalls;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CenterPieceVisuals;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CustomFloor;
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
    .locals 13

    const/16 v0, 0x10

    const/16 v1, 0x40

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v6, 0x0

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([II)V

    .line 3
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    div-int/lit8 v7, v3, 0x2

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    const/4 v8, 0x1

    add-int/lit8 v2, v0, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    add-int/lit8 v9, v7, -0x1

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v4, v0, -0xb

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    add-int/lit8 v10, v7, -0x2

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v2, v0, -0x3

    const/4 v3, 0x5

    const/4 v4, 0x1

    move-object v0, p0

    move v1, v10

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    add-int/lit8 v11, v7, -0x3

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v2, v0, -0x2

    const/4 v3, 0x7

    move-object v0, p0

    move v1, v11

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 8
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v1, v0, -0xa

    .line 9
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v3

    add-int/2addr v1, v7

    .line 10
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0xa

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/4 v12, 0x7

    aput v12, v0, v1

    .line 13
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v1, v3

    aput v12, v0, v1

    const/4 v1, 0x0

    .line 14
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v2, v0, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 15
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x7

    move-object v0, p0

    move v1, v9

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 16
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v7

    .line 17
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    const/4 v0, 0x0

    .line 18
    :goto_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    const/4 v7, 0x5

    if-ge v0, v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    if-ne v1, v8, :cond_0

    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v2, 0x14

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v10

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v2, 0xa

    const/4 v3, 0x7

    const/4 v4, 0x5

    move v1, v11

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->feeling:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level$Feeling;

    const/4 v0, 0x4

    .line 24
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    .line 25
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CustomFloor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CustomFloor;-><init>()V

    .line 26
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v7, v6, v12, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->setRect(IIII)V

    .line 27
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CenterPieceVisuals;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CenterPieceVisuals;-><init>()V

    .line 29
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v1, v1, -0xa

    .line 30
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 31
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 32
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CenterPieceWalls;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CenterPieceWalls;-><init>()V

    .line 34
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v1, v1, -0xa

    sub-int/2addr v1, v8

    .line 35
    iput v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 36
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 37
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v8
.end method

.method public create()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->create()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v4, v1

    aget v2, v2, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aput-boolean v0, v4, v1

    aput-boolean v0, v2, v1

    .line 5
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aput-boolean v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v1, v1, -0xa

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v2

    :goto_1
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aput-boolean v0, v4, v1

    aput-boolean v0, v2, v1

    .line 8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v1, v1, -0xa

    add-int/2addr v1, v3

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v2

    :goto_2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v2, :cond_5

    .line 10
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    rem-int v5, v1, v4

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    rem-int v5, v1, v4

    const/16 v6, 0xc

    if-gt v5, v6, :cond_4

    sub-int/2addr v2, v4

    if-lt v1, v2, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    aput-boolean v3, v2, v1

    goto :goto_4

    .line 12
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    aput-boolean v0, v2, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public createItems()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;-><init>()V

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    return-void
.end method

.method public createMob()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createMobs()V
    .locals 0

    return-void
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
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v3, v0

    aget v1, v1, v3

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aput-boolean p1, v3, v0

    aput-boolean p1, v1, v0

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aput-boolean v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v1

    :goto_1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aput-boolean p1, v3, v0

    aput-boolean p1, v1, v0

    .line 8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v0, v0, -0xa

    add-int/2addr v0, v2

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v1

    :goto_2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v1, :cond_5

    .line 10
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    rem-int v4, v0, v3

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    rem-int v4, v0, v3

    const/16 v5, 0xc

    if-gt v4, v5, :cond_4

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    aput-boolean v2, v1, v0

    goto :goto_4

    .line 12
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    aput-boolean p1, v1, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
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

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water4.png"

    return-object v0
.end method
