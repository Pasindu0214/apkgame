.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;
.super Lcom/watabou/noosa/Tilemap;
.source "DungeonTilemap.java"


# instance fields
.field public map:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1, v1}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    invoke-direct {p0, p1, v0}, Lcom/watabou/noosa/Tilemap;-><init>(Ljava/lang/Object;Lcom/watabou/noosa/TextureFilm;)V

    return-void
.end method

.method public static raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;
    .locals 4

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    rem-int v2, p0, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    mul-float v2, v2, v3

    .line 4
    div-int/2addr p0, v1

    int-to-float p0, p0

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr p0, v1

    mul-float p0, p0, v3

    invoke-direct {v0, v2, p0}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static tileCenterToWorld(I)Lcom/watabou/utils/PointF;
    .locals 5

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    rem-int v2, p0, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v2, v2, v4

    .line 4
    div-int/2addr p0, v1

    int-to-float p0, p0

    add-float/2addr p0, v3

    mul-float p0, p0, v4

    invoke-direct {v0, v2, p0}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static tileToWorld(I)Lcom/watabou/utils/PointF;
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    rem-int v2, p0, v1

    int-to-float v2, v2

    div-int/2addr p0, v1

    int-to-float p0, p0

    invoke-direct {v0, v2, p0}, Lcom/watabou/utils/PointF;-><init>(FF)V

    const/high16 p0, 0x41800000    # 16.0f

    invoke-virtual {v0, p0}, Lcom/watabou/utils/PointF;->scale(F)Lcom/watabou/utils/PointF;

    return-object v0
.end method


# virtual methods
.method public abstract getTileVisual(IIZ)I
.end method

.method public map([II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    .line 2
    array-length p1, p1

    new-array p1, p1, [I

    invoke-super {p0, p1, p2}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-void
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

.method public declared-synchronized updateMap()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/watabou/noosa/Tilemap;->updateMap()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    aget v3, v3, v1

    invoke-virtual {p0, v1, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->getTileVisual(IIZ)I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized updateMapCell(I)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, v0}, Lcom/watabou/noosa/Tilemap;->updateMapCell(I)V

    .line 3
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Lcom/watabou/noosa/Tilemap;->updateMapCell(I)V

    .line 4
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 5
    iget-object v5, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    add-int/2addr v4, p1

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    aget v6, v6, v4

    invoke-virtual {p0, v4, v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->getTileVisual(IIZ)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/watabou/noosa/Tilemap;->updateMapCell(I)V

    .line 7
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    aget v2, v2, p1

    invoke-virtual {p0, p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->getTileVisual(IIZ)I

    move-result v1

    aput v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
