.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel$CustomGroundVisuals;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "NewCityBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomGroundVisuals"
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
    .locals 14

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v2, v2, v1

    new-array v2, v2, [I

    .line 3
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 4
    :goto_0
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int/lit8 v6, v6, 0x16

    const/16 v7, 0x19

    const/16 v8, 0xb

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-ge v1, v6, :cond_c

    .line 5
    aget v6, v3, v1

    if-ne v6, v9, :cond_0

    if-ne v5, v4, :cond_0

    move v5, v1

    .line 6
    :cond_0
    aget v6, v3, v1

    const/4 v9, 0x4

    if-ne v6, v9, :cond_1

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int v6, v1, v6

    aget v6, v3, v6

    if-nez v6, :cond_1

    const/16 v6, 0x6e

    .line 7
    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x6f

    .line 8
    aput v6, v2, v1

    goto/16 :goto_2

    .line 9
    :cond_1
    aget v6, v3, v1

    if-ne v6, v9, :cond_2

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int v6, v1, v6

    aget v6, v3, v6

    if-ne v6, v9, :cond_2

    const/16 v6, 0x76

    .line 10
    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x77

    .line 11
    aput v6, v2, v1

    goto/16 :goto_2

    .line 12
    :cond_2
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    if-le v1, v6, :cond_3

    aget v11, v3, v1

    if-nez v11, :cond_3

    sub-int v6, v1, v6

    aget v6, v3, v6

    if-ne v6, v9, :cond_3

    const/16 v6, 0x7e

    .line 13
    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x7f

    .line 14
    aput v6, v2, v1

    goto/16 :goto_2

    .line 15
    :cond_3
    aget v6, v3, v1

    if-ne v6, v8, :cond_4

    const/16 v6, 0x65

    .line 16
    aput v6, v2, v1

    goto :goto_2

    .line 17
    :cond_4
    aget v6, v3, v1

    if-ne v6, v7, :cond_5

    const/16 v6, 0x7d

    .line 18
    aput v6, v2, v1

    goto :goto_2

    .line 19
    :cond_5
    aget v6, v3, v1

    const/16 v7, 0x14

    if-eq v6, v10, :cond_7

    aget v6, v3, v1

    if-ne v6, v7, :cond_6

    goto :goto_1

    .line 20
    :cond_6
    aput v4, v2, v1

    goto :goto_2

    .line 21
    :cond_7
    :goto_1
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    div-int v6, v1, v6

    const/16 v8, 0x15

    if-ne v6, v8, :cond_8

    const/16 v6, 0x58

    .line 22
    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x59

    .line 23
    aput v6, v2, v1

    add-int/2addr v1, v10

    const/16 v6, 0x5a

    .line 24
    aput v6, v2, v1

    add-int/2addr v1, v10

    const/16 v6, 0x5b

    .line 25
    aput v6, v2, v1

    add-int/2addr v1, v10

    const/16 v6, 0x5c

    .line 26
    aput v6, v2, v1

    add-int/2addr v1, v10

    const/16 v6, 0x5d

    .line 27
    aput v6, v2, v1

    add-int/2addr v1, v10

    const/16 v6, 0x5e

    .line 28
    aput v6, v2, v1

    goto :goto_2

    :cond_8
    add-int/lit8 v6, v1, -0x1

    .line 29
    aget v6, v3, v6

    if-nez v6, :cond_9

    const/16 v6, 0x61

    .line 30
    aput v6, v2, v1

    goto :goto_2

    :cond_9
    add-int/lit8 v6, v1, 0x1

    .line 31
    aget v6, v3, v6

    if-nez v6, :cond_a

    const/16 v6, 0x63

    .line 32
    aput v6, v2, v1

    goto :goto_2

    .line 33
    :cond_a
    aget v6, v3, v1

    if-ne v6, v7, :cond_b

    const/16 v6, 0x64

    .line 34
    aput v6, v2, v1

    goto :goto_2

    :cond_b
    const/16 v6, 0x62

    .line 35
    aput v6, v2, v1

    :goto_2
    add-int/2addr v1, v10

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_3
    const/4 v6, 0x7

    if-ge v1, v6, :cond_e

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_d

    add-int v11, v5, v9

    const/4 v12, 0x4

    const/16 v13, 0x8

    invoke-static {v1, v12, v13, v9}, La/a/a/a/a;->a(IIII)I

    move-result v12

    .line 36
    aput v12, v2, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 37
    :cond_d
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 38
    :cond_e
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int/lit8 v1, v1, 0x16

    :goto_5
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v9, v9, v5

    if-ge v1, v9, :cond_17

    .line 39
    aget v9, v3, v1

    if-ne v9, v8, :cond_f

    const/16 v5, 0x6c

    .line 40
    aput v5, v2, v1

    goto/16 :goto_6

    .line 41
    :cond_f
    aget v9, v3, v1

    if-ne v9, v7, :cond_10

    rem-int v5, v1, v5

    if-le v5, v6, :cond_10

    const/16 v5, 0x7c

    .line 42
    aput v5, v2, v1

    goto/16 :goto_6

    .line 43
    :cond_10
    aget v5, v3, v1

    const/16 v9, 0xe

    if-ne v5, v9, :cond_16

    add-int/lit8 v5, v1, 0x1

    .line 44
    aget v11, v3, v5

    if-ne v11, v9, :cond_11

    iget v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    add-int/2addr v11, v1

    aget v11, v3, v11

    if-ne v11, v9, :cond_11

    const/16 v9, 0x69

    .line 45
    aput v9, v2, v1

    const/16 v1, 0x6a

    .line 46
    aput v1, v2, v5

    add-int/lit8 v1, v5, 0x1

    const/16 v5, 0x6b

    .line 47
    aput v5, v2, v1

    goto :goto_6

    .line 48
    :cond_11
    aget v11, v3, v5

    const/16 v12, 0x17

    if-ne v11, v12, :cond_12

    const/16 v9, 0x71

    .line 49
    aput v9, v2, v1

    const/16 v1, 0x72

    .line 50
    aput v1, v2, v5

    add-int/lit8 v1, v5, 0x1

    const/16 v5, 0x73

    .line 51
    aput v5, v2, v1

    goto :goto_6

    .line 52
    :cond_12
    aget v11, v3, v5

    if-ne v11, v9, :cond_13

    iget v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int v11, v1, v11

    aget v11, v3, v11

    if-ne v11, v9, :cond_13

    const/16 v9, 0x79

    .line 53
    aput v9, v2, v1

    const/16 v1, 0x7a

    .line 54
    aput v1, v2, v5

    add-int/lit8 v1, v5, 0x1

    const/16 v5, 0x7b

    .line 55
    aput v5, v2, v1

    goto :goto_6

    .line 56
    :cond_13
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    sub-int v11, v1, v5

    aget v11, v3, v11

    if-eq v11, v9, :cond_14

    const/16 v5, 0x68

    .line 57
    aput v5, v2, v1

    goto :goto_6

    :cond_14
    add-int/2addr v5, v1

    .line 58
    aget v5, v3, v5

    if-eq v5, v9, :cond_15

    const/16 v5, 0x78

    .line 59
    aput v5, v2, v1

    goto :goto_6

    :cond_15
    const/16 v5, 0x70

    .line 60
    aput v5, v2, v1

    goto :goto_6

    .line 61
    :cond_16
    aput v4, v2, v1

    :goto_6
    add-int/2addr v1, v10

    goto/16 :goto_5

    .line 62
    :cond_17
    invoke-virtual {v0, v2, v5}, Lcom/watabou/noosa/Tilemap;->map([II)V

    return-object v0
.end method

.method public desc(II)Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    add-int/2addr v2, p1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int p1, p1, p2

    add-int/2addr p1, v2

    .line 2
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v2, v2, 0x16

    const/4 v3, 0x0

    if-ge p1, v2, :cond_2

    .line 3
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, p2, p1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "exit_desc"

    .line 4
    invoke-static {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    aget v1, p2, p1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "statue_desc"

    .line 6
    invoke-static {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    aget p1, p2, p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_4

    const-string p1, ""

    return-object p1

    .line 8
    :cond_2
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, p2, p1

    const/16 v2, 0x17

    if-ne v0, v2, :cond_3

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "throne_desc"

    .line 9
    invoke-static {v1, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    aget p1, p2, p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_4

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "summoning_desc"

    .line 11
    invoke-static {v1, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public name(II)Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    add-int/2addr v1, p1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    mul-int p1, p1, p2

    add-int/2addr p1, v1

    .line 2
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int/lit8 v1, v1, 0x16

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    .line 3
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget p1, p2, p1

    const/16 p2, 0x19

    if-ne p1, p2, :cond_2

    .line 4
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/HallsLevel;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "statue_name"

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, p2, p1

    const/16 v3, 0x17

    if-ne v1, v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "throne_name"

    .line 6
    invoke-static {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    aget p1, p2, p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "summoning_name"

    .line 8
    invoke-static {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
