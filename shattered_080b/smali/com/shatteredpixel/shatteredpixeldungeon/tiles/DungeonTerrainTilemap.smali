.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;
.source "DungeonTerrainTilemap.java"


# static fields
.field public static instance:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;


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

    .line 5
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    return-void
.end method


# virtual methods
.method public getTileVisual(IIZ)I
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directVisuals:Lcom/watabou/utils/SparseArray;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/watabou/utils/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->getVisualWithAlts(II)I

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x1d

    if-ne p2, v0, :cond_5

    .line 3
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    sget-object p3, Lcom/watabou/utils/PathFinder;->CIRCLE4:[I

    const/4 v0, 0x0

    aget v0, p3, v0

    add-int/2addr v0, p1

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p3, v1

    add-int/2addr v1, p1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p3, v2

    add-int/2addr v2, p1

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p3, p3, v3

    add-int/2addr p1, p3

    aget p1, p2, p1

    .line 4
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WATER:I

    .line 5
    sget-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->waterStitcheable:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 6
    :cond_1
    sget-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->waterStitcheable:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 p2, p2, 0x2

    .line 7
    :cond_2
    sget-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->waterStitcheable:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    add-int/lit8 p2, p2, 0x4

    .line 8
    :cond_3
    sget-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->waterStitcheable:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    add-int/lit8 p2, p2, 0x8

    :cond_4
    return p2

    :cond_5
    if-nez p2, :cond_7

    .line 9
    iget p2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    if-le p1, p2, :cond_6

    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    sub-int/2addr p1, p2

    aget v1, p3, p1

    .line 10
    :cond_6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->chasmStitcheable:Lcom/watabou/utils/SparseArray;

    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->CHASM:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/watabou/utils/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_7
    if-nez p3, :cond_20

    .line 11
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->doorTile(I)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 12
    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int/2addr p1, v0

    aget p1, p3, p1

    .line 13
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p1

    if-eqz p1, :cond_8

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_DOOR_SIDEWAYS:I

    goto :goto_0

    :cond_8
    const/4 p1, 0x5

    if-ne p2, p1, :cond_9

    .line 14
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_DOOR:I

    goto :goto_0

    :cond_9
    const/4 p1, 0x6

    if-ne p2, p1, :cond_a

    .line 15
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_DOOR_OPEN:I

    goto :goto_0

    :cond_a
    const/16 p1, 0xa

    if-ne p2, p1, :cond_b

    .line 16
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_DOOR_LOCKED:I

    :cond_b
    :goto_0
    return v1

    .line 17
    :cond_c
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p3

    if-eqz p3, :cond_18

    add-int/lit8 p3, p1, 0x1

    .line 18
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v0, p3, v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    aget p3, v0, p3

    goto :goto_1

    :cond_d
    const/4 p3, -0x1

    :goto_1
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int v2, p1, v0

    iget v3, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge v2, v3, :cond_e

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/2addr v0, p1

    aget v0, v2, v0

    goto :goto_2

    :cond_e
    const/4 v0, -0x1

    :goto_2
    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v2, p1, v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    goto :goto_3

    :cond_f
    const/4 v2, -0x1

    :goto_3
    if-eq v0, v1, :cond_17

    .line 19
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_6

    .line 20
    :cond_10
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->doorTile(I)Z

    move-result v0

    if-eqz v0, :cond_11

    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_DOOR:I

    goto :goto_5

    :cond_11
    const/4 v0, 0x4

    if-eq p2, v0, :cond_14

    const/16 v0, 0x10

    if-ne p2, v0, :cond_12

    goto :goto_4

    :cond_12
    const/16 v0, 0xc

    if-ne p2, v0, :cond_13

    .line 21
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_DECO:I

    goto :goto_5

    :cond_13
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_17

    .line 22
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL_BOOKSHELF:I

    goto :goto_5

    .line 23
    :cond_14
    :goto_4
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_WALL:I

    .line 24
    :goto_5
    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->getVisualWithAlts(II)I

    move-result p1

    .line 25
    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p2

    if-nez p2, :cond_15

    add-int/lit8 p1, p1, 0x1

    .line 26
    :cond_15
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p2

    if-nez p2, :cond_16

    add-int/lit8 p1, p1, 0x2

    :cond_16
    move v1, p1

    :cond_17
    :goto_6
    return v1

    :cond_18
    const/16 p3, 0x17

    if-ne p2, p3, :cond_19

    .line 27
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_SIGN:I

    return p1

    :cond_19
    const/16 p3, 0x19

    if-ne p2, p3, :cond_1a

    .line 28
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_STATUE:I

    return p1

    :cond_1a
    const/16 p3, 0x1a

    if-ne p2, p3, :cond_1b

    .line 29
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_STATUE_SP:I

    return p1

    :cond_1b
    const/16 p3, 0x1c

    if-ne p2, p3, :cond_1c

    .line 30
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_ALCHEMY_POT:I

    return p1

    :cond_1c
    const/16 p3, 0xd

    if-ne p2, p3, :cond_1d

    .line 31
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_BARRICADE:I

    return p1

    :cond_1d
    const/16 p3, 0xf

    if-ne p2, p3, :cond_1e

    .line 32
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_HIGH_GRASS:I

    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->getVisualWithAlts(II)I

    move-result p1

    return p1

    :cond_1e
    const/16 p3, 0x1e

    if-ne p2, p3, :cond_1f

    .line 33
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_FURROWED_GRASS:I

    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->getVisualWithAlts(II)I

    move-result p1

    return p1

    :cond_1f
    return v1

    .line 34
    :cond_20
    sget-object p3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->directFlatVisuals:Lcom/watabou/utils/SparseArray;

    .line 35
    invoke-virtual {p3, p2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 36
    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->getVisualWithAlts(II)I

    move-result p1

    return p1
.end method

.method public needsRender(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    aget p1, v0, p1

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->WATER:I

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
