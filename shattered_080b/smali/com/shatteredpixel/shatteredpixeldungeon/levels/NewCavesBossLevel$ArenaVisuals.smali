.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "NewCavesBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArenaVisuals"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "custom_tiles/caves_boss.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;->updateState()V

    return-object v0
.end method

.method public desc(II)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    invoke-static {p2, v2, v1, p1}, La/a/a/a/a;->a(IIII)I

    move-result p1

    .line 2
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget p2, p2, p1

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne p2, v2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "wires_desc"

    .line 3
    invoke-static {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->gate:Lcom/watabou/utils/Rect;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/watabou/utils/Rect;->inside(Lcom/watabou/utils/Point;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean p1, p2, p1

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "gate_desc"

    .line 6
    invoke-static {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "gate_desc_broken"

    .line 7
    invoke-static {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public image(II)Lcom/watabou/noosa/Image;
    .locals 6

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    invoke-static {v1, p2, v0, p1}, La/a/a/a/a;->a(IIII)I

    move-result v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->pylonPositions:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 3
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v5, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->image(II)Lcom/watabou/noosa/Image;

    move-result-object p1

    return-object p1
.end method

.method public name(II)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    invoke-static {p2, v2, v1, p1}, La/a/a/a/a;->a(IIII)I

    move-result p1

    .line 2
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget p2, p2, p1

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne p2, v2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "wires_name"

    .line 3
    invoke-static {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->gate:Lcom/watabou/utils/Rect;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/watabou/utils/Rect;->inside(Lcom/watabou/utils/Point;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "gate_name"

    .line 5
    invoke-static {v0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public updateState()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    if-eqz v0, :cond_9

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v0, v0, v1

    new-array v1, v0, [I

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 5
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    mul-int v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_8

    .line 6
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v6, v5, v2

    const/16 v7, 0xe

    const/4 v8, -0x1

    if-ne v6, v7, :cond_3

    .line 7
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->pylonPositions:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    aget v9, v5, v7

    if-ne v9, v2, :cond_1

    .line 8
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-boolean v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    if-eqz v10, :cond_0

    .line 9
    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v9

    instance-of v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;

    if-nez v9, :cond_0

    const/16 v9, 0x26

    .line 10
    aput v9, v1, v4

    goto :goto_2

    .line 11
    :cond_0
    aput v8, v1, v4

    goto :goto_2

    .line 12
    :cond_1
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v10, v9, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 13
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 14
    rem-int v11, v2, v10

    div-int v12, v2, v10

    mul-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v11

    add-int/lit8 v12, v12, 0x36

    rem-int v11, v9, v10

    div-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v11

    sub-int/2addr v12, v9

    aput v12, v1, v4

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 15
    :cond_3
    aget v5, v5, v2

    const/16 v6, 0x13

    if-ne v5, v6, :cond_4

    const/16 v5, 0x25

    .line 16
    aput v5, v1, v4

    goto :goto_4

    .line 17
    :cond_4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->gate:Lcom/watabou/utils/Rect;

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/watabou/utils/Rect;->inside(Lcom/watabou/utils/Point;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 18
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_5

    const/16 v5, 0x28

    goto :goto_3

    :cond_5
    const/16 v5, 0x20

    :goto_3
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    .line 19
    aput v5, v1, v4

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v7, 0x1

    .line 20
    aput v7, v1, v6

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    .line 21
    aput v5, v1, v4

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v7, 0x1

    .line 22
    aput v7, v1, v6

    .line 23
    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x4

    goto :goto_4

    .line 24
    :cond_6
    aput v8, v1, v4

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Tilemap;->map([II)V

    :cond_9
    return-void
.end method
