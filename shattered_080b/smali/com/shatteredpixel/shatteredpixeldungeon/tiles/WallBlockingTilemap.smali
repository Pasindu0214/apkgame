.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;
.super Lcom/watabou/noosa/Tilemap;
.source "WallBlockingTilemap.java"


# instance fields
.field public curr:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    const/16 v1, 0x10

    const-string v2, "wall_blocking.png"

    invoke-direct {v0, v2, v1, v1}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    invoke-direct {p0, v2, v0}, Lcom/watabou/noosa/Tilemap;-><init>(Ljava/lang/Object;Lcom/watabou/noosa/TextureFilm;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 4
    new-array v1, v1, [I

    .line 5
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-void
.end method


# virtual methods
.method public final fogHidden(I)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    aget-boolean v1, v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int v1, p1, v0

    iget v3, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-ge v1, v3, :cond_1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    iget v3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int v4, p1, v3

    aget-boolean v1, v1, v4

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    add-int/2addr p1, v3

    aget-boolean p1, v0, p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized updateArea(II)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v0, p1, v0

    sub-int/2addr v0, p2

    .line 2
    iget v1, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    div-int v1, p1, v1

    sub-int/2addr v1, p2

    .line 3
    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v2, p1, v2

    add-int/2addr v2, p2

    .line 4
    iget v3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    div-int/2addr p1, v3

    add-int/2addr p1, p2

    const/4 p2, 0x0

    .line 5
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v2, v0

    .line 7
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapHeight:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr p1, v1

    .line 8
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 9
    invoke-virtual {p0, v3, p2, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->updateArea(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateArea(IIII)V
    .locals 5

    monitor-enter p0

    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-gt v0, v1, :cond_2

    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-gt v1, v2, :cond_1

    .line 11
    :try_start_0
    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    mul-int v2, v2, v1

    add-int/2addr v2, v0

    .line 12
    iget-object v3, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    aget v3, v3, v2

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 13
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->updateMapCell(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateMap()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/watabou/noosa/Tilemap;->updateMap()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discoverable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v1, v0, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/watabou/noosa/Tilemap;->size:I

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->updateMapCell(I)V

    goto :goto_2

    .line 6
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    const/4 v2, -0x2

    aput v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized updateMapCell(I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewHallsBossLevel;

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    aput v1, v0, p1

    .line 3
    invoke-super {p0, p1}, Lcom/watabou/noosa/Tilemap;->updateMapCell(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_8

    .line 6
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-nez v0, :cond_6

    add-int/lit8 v0, p1, -0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 9
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget v3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v3, v0

    .line 10
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    goto/16 :goto_4

    .line 13
    :cond_6
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    goto/16 :goto_4

    .line 14
    :cond_7
    :goto_0
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    goto/16 :goto_4

    .line 15
    :cond_8
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_13

    add-int/lit8 v0, p1, -0x1

    .line 16
    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 17
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    goto/16 :goto_4

    .line 18
    :cond_9
    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-nez v4, :cond_a

    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_a
    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v4, p1, v4

    .line 19
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-nez v4, :cond_b

    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v5, v4, v5

    .line 20
    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v5

    if-nez v5, :cond_12

    iget v5, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v5, v4, v5

    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 21
    :cond_c
    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 22
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_d
    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v2, v0

    .line 23
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_e
    add-int/lit8 v0, p1, 0x1

    .line 24
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v2, v0

    .line 25
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1

    .line 26
    :cond_10
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    goto/16 :goto_4

    .line 27
    :cond_11
    :goto_1
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    goto/16 :goto_4

    .line 28
    :cond_12
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    goto/16 :goto_4

    .line 29
    :cond_13
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    .line 30
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, p1

    .line 32
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_14
    add-int/lit8 v0, p1, 0x1

    .line 33
    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v4, v0, v4

    if-eqz v4, :cond_18

    .line 34
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-nez v4, :cond_15

    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 35
    :cond_15
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_16
    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v4, v0

    .line 36
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-nez v4, :cond_17

    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2

    .line 37
    :cond_17
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    .line 38
    :cond_18
    :goto_2
    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_1c

    add-int/lit8 v0, p1, -0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-nez v4, :cond_19

    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 40
    :cond_19
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1a
    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v4, v0

    .line 41
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->wall(I)Z

    move-result v4

    if-nez v4, :cond_1b

    iget v4, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->fogHidden(I)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_3

    .line 42
    :cond_1b
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    .line 43
    :cond_1c
    :goto_3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    if-ne v0, v2, :cond_1d

    .line 44
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    .line 45
    :cond_1d
    :goto_4
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    if-eq v0, v1, :cond_1e

    .line 46
    iget-object v0, p0, Lcom/watabou/noosa/Tilemap;->data:[I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/WallBlockingTilemap;->curr:I

    aput v1, v0, p1

    .line 47
    invoke-super {p0, p1}, Lcom/watabou/noosa/Tilemap;->updateMapCell(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final wall(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget p1, v0, p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p1

    return p1
.end method
