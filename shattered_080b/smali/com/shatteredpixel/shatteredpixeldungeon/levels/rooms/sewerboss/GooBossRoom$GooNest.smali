.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom$GooNest;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "GooBossRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GooNest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/sewer_boss.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v1, v1, v2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    if-ge v3, v4, :cond_14

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    if-ge v4, v5, :cond_13

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 5
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int/2addr v6, v5

    if-ne v3, v6, :cond_1

    :cond_0
    if-eqz v4, :cond_12

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    sub-int/2addr v6, v5

    if-ne v4, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    if-ne v3, v5, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    if-nez v3, :cond_4

    if-ne v4, v5, :cond_4

    .line 6
    :cond_3
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int v5, v5, v4

    add-int/2addr v5, v3

    aput v2, v1, v5

    goto/16 :goto_3

    .line 7
    :cond_4
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-ne v3, v6, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int/2addr v6, v5

    if-ne v3, v6, :cond_7

    if-ne v4, v5, :cond_7

    .line 8
    :cond_6
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int v6, v6, v4

    add-int/2addr v6, v3

    aput v5, v1, v6

    goto/16 :goto_3

    :cond_7
    if-ne v3, v5, :cond_8

    .line 9
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    sub-int/2addr v6, v5

    if-eq v4, v6, :cond_9

    :cond_8
    if-nez v3, :cond_a

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    sub-int/2addr v6, v7

    if-ne v4, v6, :cond_a

    .line 10
    :cond_9
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int v5, v5, v4

    add-int/2addr v5, v3

    aput v7, v1, v5

    goto :goto_3

    .line 11
    :cond_a
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int/2addr v6, v7

    if-ne v3, v6, :cond_b

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    sub-int/2addr v6, v5

    if-eq v4, v6, :cond_c

    :cond_b
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int/2addr v6, v5

    if-ne v3, v6, :cond_d

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    sub-int/2addr v6, v7

    if-ne v4, v6, :cond_d

    .line 12
    :cond_c
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int v5, v5, v4

    add-int/2addr v5, v3

    const/4 v6, 0x3

    aput v6, v1, v5

    goto :goto_3

    :cond_d
    if-nez v3, :cond_e

    .line 13
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int v5, v5, v4

    add-int/2addr v5, v3

    const/4 v6, 0x4

    aput v6, v1, v5

    goto :goto_3

    :cond_e
    if-nez v4, :cond_f

    .line 14
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int v5, v5, v4

    add-int/2addr v5, v3

    const/4 v6, 0x5

    aput v6, v1, v5

    goto :goto_3

    .line 15
    :cond_f
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    add-int/lit8 v7, v6, -0x1

    if-ne v3, v7, :cond_10

    mul-int v6, v6, v4

    add-int/2addr v6, v3

    const/4 v5, 0x6

    .line 16
    aput v5, v1, v6

    goto :goto_3

    .line 17
    :cond_10
    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    sub-int/2addr v7, v5

    if-ne v4, v7, :cond_11

    mul-int v6, v6, v4

    add-int/2addr v6, v3

    const/4 v5, 0x7

    .line 18
    aput v5, v1, v6

    goto :goto_3

    :cond_11
    mul-int v6, v6, v4

    add-int/2addr v6, v3

    const/16 v5, 0x8

    .line 19
    aput v5, v1, v6

    goto :goto_3

    .line 20
    :cond_12
    :goto_2
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int v5, v5, v4

    add-int/2addr v5, v3

    const/4 v6, -0x1

    aput v6, v1, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 21
    :cond_14
    invoke-virtual {v0, v1, v4}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v0
.end method

.method public image(II)Lcom/watabou/noosa/Image;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
