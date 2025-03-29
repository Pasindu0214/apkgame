.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CustomFloor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "LastLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFloor"
.end annotation


# static fields
.field public static final CANDLES:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x31

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CustomFloor;->CANDLES:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x2a
        0x2e
        0x2e
        0x2e
        0x2b
        -0x1
        0x2a
        0x2e
        0x2e
        0x2e
        0x2e
        0x2e
        0x2b
        0x2e
        0x2e
        0x2d
        0x13
        0x2c
        0x2e
        0x2e
        0x2e
        0x2e
        0x13
        0x13
        0x13
        0x2e
        0x2e
        0x2e
        0x2e
        0x2b
        0x13
        0x2a
        0x2e
        0x2e
        0x2c
        0x2e
        0x2e
        0x13
        0x2e
        0x2e
        0x2d
        -0x1
        0x2c
        0x2d
        0x13
        0x2c
        0x2d
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/halls_special.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 14

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    add-int/lit8 v2, v2, -0x3

    .line 3
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v4, v3, 0x3

    sub-int/2addr v2, v4

    .line 4
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    .line 5
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 6
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v3, v3, v4

    new-array v4, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_b

    .line 7
    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    rem-int v9, v7, v8

    if-nez v9, :cond_0

    .line 8
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    div-int v8, v7, v8

    add-int/2addr v8, v9

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 9
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v8, v8, v9

    add-int/2addr v5, v8

    :cond_0
    const/4 v8, 0x1

    if-ne v5, v2, :cond_6

    .line 10
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/LastLevel$CustomFloor;->CANDLES:[I

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget v12, v9, v11

    .line 11
    aget v13, v4, v7

    if-nez v13, :cond_1

    aput v12, v4, v7

    .line 12
    :cond_1
    aget v12, v4, v7

    const/16 v13, 0x2e

    if-ne v12, v13, :cond_2

    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->tileVariance:[B

    aget-byte v12, v12, v5

    const/16 v13, 0x32

    if-lt v12, v13, :cond_2

    .line 13
    aget v12, v4, v7

    add-int/2addr v12, v8

    aput v12, v4, v7

    .line 14
    :cond_2
    sget-boolean v12, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    if-eqz v12, :cond_3

    aget v12, v4, v7

    const/16 v13, 0x28

    if-le v12, v13, :cond_3

    .line 15
    aget v12, v4, v7

    add-int/lit8 v12, v12, 0x8

    aput v12, v4, v7

    .line 16
    :cond_3
    aget v12, v1, v5

    if-eqz v12, :cond_4

    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v12, v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v12, v5

    aget v12, v1, v12

    if-nez v12, :cond_4

    .line 17
    iget v12, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    add-int/2addr v12, v7

    const/4 v13, 0x6

    aput v13, v4, v12

    :cond_4
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 18
    iget v12, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    rem-int v13, v7, v12

    if-nez v13, :cond_5

    .line 19
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    iget v13, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    div-int v12, v7, v12

    add-int/2addr v12, v13

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 20
    iget v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v12, v12, v13

    add-int/2addr v12, v5

    move v5, v12

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 21
    :cond_6
    aget v9, v1, v5

    const/16 v10, 0x14

    if-ne v9, v10, :cond_8

    .line 22
    sget-boolean v8, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->amuletObtained:Z

    if-eqz v8, :cond_7

    const/16 v8, 0x1f

    .line 23
    aput v8, v4, v7

    goto :goto_2

    :cond_7
    const/16 v8, 0x1b

    .line 24
    aput v8, v4, v7

    goto :goto_2

    .line 25
    :cond_8
    aget v9, v1, v5

    if-ne v9, v8, :cond_9

    const/16 v8, 0x13

    .line 26
    aput v8, v4, v7

    goto :goto_2

    .line 27
    :cond_9
    aget v8, v4, v7

    if-nez v8, :cond_a

    const/4 v8, -0x1

    .line 28
    aput v8, v4, v7

    :cond_a
    :goto_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 29
    :cond_b
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    invoke-virtual {v0, v4, v1}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v0
.end method
