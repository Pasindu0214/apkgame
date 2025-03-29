.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;
.source "GridTileMap.java"


# instance fields
.field public gridSetting:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "visual_grid.png"

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;->gridSetting:I

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 4
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map([II)V

    return-void
.end method


# virtual methods
.method public getTileVisual(IIZ)I
    .locals 2

    .line 1
    iget p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;->gridSetting:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_6

    iget p3, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    rem-int v1, p1, p3

    rem-int/lit8 v1, v1, 0x2

    div-int p3, p1, p3

    rem-int/lit8 p3, p3, 0x2

    if-eq v1, p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->floorTile(I)Z

    move-result p3

    if-nez p3, :cond_5

    const/16 p3, 0xf

    if-eq p2, p3, :cond_5

    const/16 p3, 0x1e

    if-ne p2, p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->doorTile(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4
    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->map:[I

    iget v0, p0, Lcom/watabou/noosa/Tilemap;->mapWidth:I

    sub-int/2addr p1, v0

    aget p1, p3, p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->wallStitcheable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;->gridSetting:I

    add-int/lit8 p1, p1, 0xc

    return p1

    :cond_2
    const/4 p1, 0x6

    if-ne p2, p1, :cond_3

    .line 6
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;->gridSetting:I

    add-int/lit8 p1, p1, 0x8

    return p1

    .line 7
    :cond_3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;->gridSetting:I

    add-int/lit8 p1, p1, 0x4

    return p1

    :cond_4
    return v0

    .line 8
    :cond_5
    :goto_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;->gridSetting:I

    return p1

    :cond_6
    :goto_1
    return v0
.end method

.method public declared-synchronized updateMap()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "visual_grid"

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result v0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/GridTileMap;->gridSetting:I

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->updateMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
