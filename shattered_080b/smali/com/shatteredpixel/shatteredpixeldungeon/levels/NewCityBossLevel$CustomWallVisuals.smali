.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel$CustomWallVisuals;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "NewCityBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomWallVisuals"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/city_boss.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    const/16 v0, 0xf

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    const/16 v0, 0x30

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v1

    .line 2
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v3, v3, v2

    new-array v3, v3, [I

    .line 3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 4
    :goto_0
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int/lit8 v8, v7, 0x15

    const/16 v9, 0x19

    const/16 v10, 0x8

    const/4 v11, 0x4

    if-ge v2, v8, :cond_4

    .line 5
    aget v8, v4, v2

    if-ne v8, v10, :cond_0

    if-ne v6, v5, :cond_0

    mul-int/lit8 v7, v7, 0x4

    sub-int v6, v2, v7

    .line 6
    :cond_0
    aget v7, v4, v2

    if-nez v7, :cond_1

    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    add-int/2addr v7, v2

    aget v7, v4, v7

    if-ne v7, v11, :cond_1

    const/16 v7, 0x66

    .line 7
    aput v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x67

    .line 8
    aput v7, v3, v2

    goto :goto_1

    .line 9
    :cond_1
    aget v7, v4, v2

    if-ne v7, v11, :cond_2

    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int v7, v2, v7

    aget v7, v4, v7

    if-nez v7, :cond_2

    const/16 v7, 0x6e

    .line 10
    aput v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x6f

    .line 11
    aput v7, v3, v2

    goto :goto_1

    .line 12
    :cond_2
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    add-int/2addr v7, v2

    aget v7, v4, v7

    if-ne v7, v9, :cond_3

    const/16 v7, 0x75

    .line 13
    aput v7, v3, v2

    goto :goto_1

    .line 14
    :cond_3
    aput v5, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_6

    if-ge v2, v11, :cond_5

    mul-int/lit8 v7, v2, 0x8

    add-int/lit8 v8, v7, 0x0

    .line 15
    aput v8, v3, v6

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v12, v6, 0x2

    add-int/lit8 v13, v6, 0x3

    add-int/lit8 v14, v6, 0x4

    add-int/lit8 v15, v6, 0x5

    add-int/lit8 v16, v6, 0x6

    add-int/lit8 v17, v7, 0x1

    .line 16
    aput v17, v3, v16

    aput v17, v3, v15

    aput v17, v3, v14

    aput v17, v3, v13

    aput v17, v3, v12

    aput v17, v3, v8

    add-int/lit8 v8, v6, 0x7

    add-int/lit8 v7, v7, 0x2

    .line 17
    aput v7, v3, v8

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v2, -0x4

    mul-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v7, 0x3

    .line 18
    aput v8, v3, v6

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v12, v6, 0x2

    add-int/lit8 v13, v6, 0x3

    add-int/lit8 v14, v6, 0x4

    add-int/lit8 v15, v6, 0x5

    add-int/lit8 v16, v6, 0x6

    add-int/lit8 v17, v7, 0x4

    .line 19
    aput v17, v3, v16

    aput v17, v3, v15

    aput v17, v3, v14

    aput v17, v3, v13

    aput v17, v3, v12

    aput v17, v3, v8

    add-int/lit8 v8, v6, 0x7

    add-int/lit8 v7, v7, 0x5

    .line 20
    aput v7, v3, v8

    .line 21
    :goto_3
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_6
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int/lit8 v2, v2, 0x15

    :goto_4
    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v7, v7, v6

    if-ge v2, v7, :cond_9

    .line 23
    aget v7, v4, v2

    if-ne v7, v9, :cond_7

    rem-int v7, v2, v6

    const/4 v8, 0x7

    if-le v7, v8, :cond_7

    sub-int v6, v2, v6

    const/16 v7, 0x74

    .line 24
    aput v7, v3, v6

    goto :goto_5

    .line 25
    :cond_7
    aget v6, v4, v2

    const/16 v7, 0x17

    if-ne v6, v7, :cond_8

    .line 26
    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int v6, v2, v6

    const/16 v7, 0x6d

    aput v7, v3, v6

    .line 27
    :cond_8
    :goto_5
    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 28
    :cond_9
    invoke-virtual {v1, v3, v6}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v1
.end method
