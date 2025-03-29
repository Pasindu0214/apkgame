.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/CavesPainter;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;
.source "CavesPainter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/RegularPainter;-><init>()V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 2
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 3
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x14

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 5
    instance-of v8, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    if-nez v8, :cond_1

    instance-of v8, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/CaveRoom;

    if-nez v8, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v8

    if-le v8, v6, :cond_0

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v8

    if-gt v8, v6, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v4}, Lcom/watabou/utils/Rect;->square()I

    move-result v8

    .line 8
    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v9

    const/16 v10, 0x8

    if-le v9, v10, :cond_3

    .line 9
    iget v9, v4, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v9, v7

    iget v11, v4, Lcom/watabou/utils/Rect;->top:I

    invoke-static {v11, v7, v0, v9}, La/a/a/a/a;->a(IIII)I

    move-result v9

    add-int/lit8 v11, v9, -0x1

    .line 10
    aget v11, v2, v11

    if-ne v11, v6, :cond_3

    sub-int v11, v9, v0

    aget v11, v2, v11

    if-ne v11, v6, :cond_3

    .line 11
    aput v6, v2, v9

    .line 12
    iget-object v11, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v11, v9}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 13
    :cond_3
    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v9

    if-le v9, v10, :cond_4

    .line 14
    iget v9, v4, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v9, v7

    iget v11, v4, Lcom/watabou/utils/Rect;->top:I

    invoke-static {v11, v7, v0, v9}, La/a/a/a/a;->a(IIII)I

    move-result v9

    add-int/lit8 v11, v9, 0x1

    .line 15
    aget v11, v2, v11

    if-ne v11, v6, :cond_4

    sub-int v11, v9, v0

    aget v11, v2, v11

    if-ne v11, v6, :cond_4

    .line 16
    aput v6, v2, v9

    .line 17
    iget-object v11, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v11, v9}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 18
    :cond_4
    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v9

    if-le v9, v10, :cond_5

    .line 19
    iget v9, v4, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v9, v7

    iget v11, v4, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v11, v7

    mul-int v11, v11, v0

    add-int/2addr v11, v9

    add-int/lit8 v9, v11, -0x1

    .line 20
    aget v9, v2, v9

    if-ne v9, v6, :cond_5

    add-int v9, v11, v0

    aget v9, v2, v9

    if-ne v9, v6, :cond_5

    .line 21
    aput v6, v2, v11

    .line 22
    iget-object v9, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v9, v11}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 23
    :cond_5
    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v8

    if-le v8, v10, :cond_6

    .line 24
    iget v8, v4, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v8, v7

    iget v9, v4, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v9, v7

    mul-int v9, v9, v0

    add-int/2addr v9, v8

    add-int/lit8 v7, v9, 0x1

    .line 25
    aget v7, v2, v7

    if-ne v7, v6, :cond_6

    add-int v7, v9, v0

    aget v7, v2, v7

    if-ne v7, v6, :cond_6

    .line 26
    aput v6, v2, v9

    .line 27
    iget-object v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v6, v9}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    .line 28
    :cond_6
    iget-object v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 29
    instance-of v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    if-nez v8, :cond_8

    instance-of v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    if-eqz v8, :cond_7

    :cond_8
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v8

    if-nez v8, :cond_7

    .line 30
    iget-object v8, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/watabou/utils/Point;

    invoke-static {p1, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v0, 0x1

    :goto_2
    sub-int v4, v1, v0

    const/4 v8, 0x0

    if-ge v3, v4, :cond_f

    .line 31
    aget v4, v2, v3

    if-ne v4, v7, :cond_e

    add-int/lit8 v4, v3, 0x1

    .line 32
    aget v4, v2, v4

    if-ne v4, v6, :cond_a

    const/4 v8, 0x1

    :cond_a
    add-int/lit8 v4, v3, -0x1

    .line 33
    aget v4, v2, v4

    if-ne v4, v6, :cond_b

    add-int/lit8 v8, v8, 0x1

    :cond_b
    add-int v4, v3, v0

    .line 34
    aget v4, v2, v4

    if-ne v4, v6, :cond_c

    add-int/lit8 v8, v8, 0x1

    :cond_c
    sub-int v4, v3, v0

    .line 35
    aget v4, v2, v4

    if-ne v4, v6, :cond_d

    add-int/lit8 v8, v8, 0x1

    :cond_d
    const/4 v4, 0x6

    .line 36
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-gt v4, v8, :cond_e

    .line 37
    aput v5, v2, v3

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_f
    :goto_3
    if-ge v8, v4, :cond_11

    .line 38
    aget v1, v2, v8

    if-ne v1, v6, :cond_10

    add-int v1, v8, v0

    aget v1, v2, v1

    .line 39
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTileSheet;->floorTile(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 40
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0xc

    .line 41
    aput v1, v2, v8

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 42
    :cond_11
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 43
    instance-of v0, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    if-eqz v0, :cond_12

    .line 44
    iget-object v0, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 45
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    if-eqz v1, :cond_13

    iget-object v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 46
    invoke-virtual {v7, v0}, Lcom/watabou/utils/Rect;->intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object v0

    .line 47
    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    iget v2, v0, Lcom/watabou/utils/Rect;->right:I

    const/4 v3, 0x5

    if-ne v1, v2, :cond_14

    iget v4, v0, Lcom/watabou/utils/Rect;->bottom:I

    iget v5, v0, Lcom/watabou/utils/Rect;->top:I

    sub-int v9, v4, v5

    if-lt v9, v3, :cond_14

    add-int/lit8 v3, v5, 0x2

    .line 48
    iput v3, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v4, v4, -0x1

    .line 49
    iput v4, v0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    .line 50
    iput v2, v0, Lcom/watabou/utils/Rect;->right:I

    const/4 v4, 0x1

    .line 51
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->height()I

    move-result v5

    const/4 v9, 0x0

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_4

    .line 52
    :cond_14
    iget v2, v0, Lcom/watabou/utils/Rect;->top:I

    iget v1, v0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v2, v1, :cond_13

    iget v4, v0, Lcom/watabou/utils/Rect;->right:I

    iget v5, v0, Lcom/watabou/utils/Rect;->left:I

    sub-int v9, v4, v5

    if-lt v9, v3, :cond_13

    add-int/lit8 v3, v5, 0x2

    .line 53
    iput v3, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v4, v4, -0x1

    .line 54
    iput v4, v0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    .line 55
    iput v1, v0, Lcom/watabou/utils/Rect;->bottom:I

    .line 56
    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->width()I

    move-result v4

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v0, p1

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_4

    :cond_15
    return-void
.end method
