.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonWallsTilemap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;
.source "DungeonWallsTilemap.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tilesTex()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 3
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map([II)V

    return-void
.end method


# virtual methods
.method public getTileVisual(IIZ)I
    .locals 9

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p3

    const/16 v1, 0x1b

    const/16 v2, 0xa

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz p3, :cond_f

    .line 2
    iget p3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int v5, p1, p3

    iget v6, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/2addr p3, p1

    aget p3, v5, p3

    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p3

    if-nez p3, :cond_3

    .line 3
    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    iget v5, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int v6, p1, v5

    aget v6, p3, v6

    if-ne v6, v4, :cond_1

    .line 4
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS:I

    return p1

    :cond_1
    add-int v6, p1, v5

    .line 5
    aget v6, p3, v6

    if-ne v6, v2, :cond_2

    .line 6
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS_LOCKED:I

    return p1

    :cond_2
    add-int/2addr v5, p1

    .line 7
    aget p3, p3, v5

    if-ne p3, v3, :cond_f

    return v0

    :cond_3
    add-int/lit8 p3, p1, 0x1

    .line 8
    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v2, p3, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    aget v2, v2, p3

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :goto_0
    iget v3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v4, p3, v3

    if-eqz v4, :cond_5

    add-int v4, p1, v3

    iget v5, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/2addr p3, v3

    aget p3, v4, p3

    goto :goto_1

    :cond_5
    const/4 p3, -0x1

    :goto_1
    iget v3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int v4, p1, v3

    iget v5, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/2addr v3, p1

    aget v3, v4, v3

    goto :goto_2

    :cond_6
    const/4 v3, -0x1

    :goto_2
    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v5, p1, v4

    if-eqz v5, :cond_7

    add-int v5, p1, v4

    iget v6, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge v5, v6, :cond_7

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/lit8 v6, p1, -0x1

    add-int/2addr v6, v4

    aget v4, v5, v6

    goto :goto_3

    :cond_7
    const/4 v4, -0x1

    :goto_3
    iget v5, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/lit8 p1, p1, -0x1

    aget v0, v0, p1

    :cond_8
    if-eq p2, v1, :cond_a

    if-ne v3, v1, :cond_9

    goto :goto_4

    .line 9
    :cond_9
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALL_INTERNAL:I

    goto :goto_5

    .line 10
    :cond_a
    :goto_4
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALL_INTERNAL_WOODEN:I

    .line 11
    :goto_5
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p2

    if-nez p2, :cond_b

    add-int/lit8 p1, p1, 0x1

    .line 12
    :cond_b
    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p2

    if-nez p2, :cond_c

    add-int/lit8 p1, p1, 0x2

    .line 13
    :cond_c
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p2

    if-nez p2, :cond_d

    add-int/lit8 p1, p1, 0x4

    .line 14
    :cond_d
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p2

    if-nez p2, :cond_e

    add-int/lit8 p1, p1, 0x8

    :cond_e
    return p1

    .line 15
    :cond_f
    iget p3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int v5, p1, p3

    iget v6, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge v5, v6, :cond_18

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/2addr p3, p1

    aget p3, v5, p3

    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p3

    if-eqz p3, :cond_18

    add-int/lit8 p3, p1, 0x1

    .line 16
    iget v5, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v6, p3, v5

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/2addr p3, v5

    aget p3, v6, p3

    goto :goto_6

    :cond_10
    const/4 p3, -0x1

    :goto_6
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    iget v6, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int v7, p1, v6

    aget v7, v5, v7

    rem-int v8, p1, v6

    if-eqz v8, :cond_11

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p1, v6

    aget v0, v5, p1

    :cond_11
    if-ne p2, v4, :cond_12

    .line 17
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS_OVERHANG:I

    goto :goto_7

    :cond_12
    if-ne p2, v3, :cond_13

    .line 18
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS_OVERHANG_OPEN:I

    goto :goto_7

    :cond_13
    if-ne p2, v2, :cond_14

    .line 19
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_SIDEWAYS_OVERHANG_LOCKED:I

    goto :goto_7

    :cond_14
    if-ne v7, v1, :cond_15

    .line 20
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALL_OVERHANG_WOODEN:I

    goto :goto_7

    .line 21
    :cond_15
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WALL_OVERHANG:I

    .line 22
    :goto_7
    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p2

    if-nez p2, :cond_16

    add-int/lit8 p1, p1, 0x1

    .line 23
    :cond_16
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p2

    if-nez p2, :cond_17

    add-int/lit8 p1, p1, 0x2

    :cond_17
    return p1

    .line 24
    :cond_18
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    iget p3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int v1, p1, p3

    aget v1, p2, v1

    if-eq v1, v4, :cond_19

    add-int/2addr p3, p1

    aget p2, p2, p3

    if-ne p2, v2, :cond_1a

    .line 25
    :cond_19
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_OVERHANG:I

    return p1

    .line 26
    :cond_1a
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result p2

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    iget p3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr p3, p1

    aget p2, p2, p3

    if-ne p2, v3, :cond_1b

    .line 27
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->DOOR_OVERHANG_OPEN:I

    return p1

    .line 28
    :cond_1b
    iget p2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int p3, p1, p2

    iget v1, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge p3, v1, :cond_1d

    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int v1, p1, p2

    aget v1, p3, v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1c

    add-int/2addr p2, p1

    aget p2, p3, p2

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_1d

    .line 29
    :cond_1c
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->STATUE_OVERHANG:I

    return p1

    .line 30
    :cond_1d
    iget p2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int p3, p1, p2

    iget v1, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge p3, v1, :cond_1e

    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/2addr p2, p1

    aget p2, p3, p2

    const/16 p3, 0x1c

    if-ne p2, p3, :cond_1e

    .line 31
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->ALCHEMY_POT_OVERHANG:I

    return p1

    .line 32
    :cond_1e
    iget p2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int p3, p1, p2

    iget v1, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge p3, v1, :cond_1f

    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/2addr p2, p1

    aget p2, p3, p2

    const/16 p3, 0xd

    if-ne p2, p3, :cond_1f

    .line 33
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->BARRICADE_OVERHANG:I

    return p1

    .line 34
    :cond_1f
    iget p2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int p3, p1, p2

    iget v1, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge p3, v1, :cond_20

    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int v1, p1, p2

    aget p3, p3, v1

    const/16 v1, 0xf

    if-ne p3, v1, :cond_20

    .line 35
    sget p3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->HIGH_GRASS_OVERHANG:I

    add-int/2addr p1, p2

    invoke-static {p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->getVisualWithAlts(II)I

    move-result p1

    return p1

    .line 36
    :cond_20
    iget p2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int p3, p1, p2

    iget v1, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge p3, v1, :cond_21

    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int v1, p1, p2

    aget p3, p3, v1

    const/16 v1, 0x1e

    if-ne p3, v1, :cond_21

    .line 37
    sget p3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->FURROWED_OVERHANG:I

    add-int/2addr p1, p2

    invoke-static {p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->getVisualWithAlts(II)I

    move-result p1

    return p1

    :cond_21
    return v0
.end method

.method public overlapsPoint(FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public overlapsScreenPoint(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
