.class public Lcom/shatteredpixel/shatteredpixeldungeon/tiles/RaisedTerrainTilemap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;
.source "RaisedTerrainTilemap.java"


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
    .locals 1

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    return v0

    :cond_0
    const/16 p3, 0xf

    if-ne p2, p3, :cond_1

    .line 1
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_HIGH_GRASS:I

    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->getVisualWithAlts(II)I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_1
    const/16 p3, 0x1e

    if-ne p2, p3, :cond_2

    .line 2
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->RAISED_FURROWED_GRASS:I

    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->getVisualWithAlts(II)I

    move-result p1

    goto :goto_0

    :cond_2
    return v0
.end method
