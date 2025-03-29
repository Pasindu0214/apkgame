.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StatuesRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "StatuesRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public minHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->minDim:I

    const/4 v1, 0x7

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public minWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->minDim:I

    const/4 v1, 0x7

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, 0x4

    .line 1
    invoke-static {v7, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v8, 0x1

    .line 2
    invoke-static {v7, v0, v8, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v2

    add-int/2addr v2, v8

    div-int/lit8 v9, v2, 0x6

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v2

    add-int/2addr v2, v8

    div-int/lit8 v10, v2, 0x6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v3, v9, -0x1

    sub-int/2addr v2, v3

    div-int v11, v2, v9

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v1, v10, -0x1

    sub-int/2addr v2, v1

    div-int v12, v2, v10

    .line 9
    rem-int/lit8 v1, v9, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    const/4 v13, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    const/4 v13, 0x1

    .line 10
    :goto_1
    rem-int/lit8 v1, v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    const/4 v14, 0x2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    const/4 v14, 0x1

    :goto_2
    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_4

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v10, :cond_3

    .line 11
    iget v1, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v11, v13, v15, v1}, La/a/a/a/a;->a(IIII)I

    move-result v16

    .line 12
    iget v1, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v1, v1, 0x2

    add-int v2, v12, v14

    mul-int v2, v2, v6

    add-int v17, v2, v1

    const/16 v18, 0xe

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v11

    move v5, v12

    move/from16 v19, v6

    move/from16 v6, v18

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 14
    iget v1, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v2, v17, v1

    add-int v2, v2, v16

    .line 15
    iget-object v3, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    const/16 v4, 0x1a

    aput v4, v3, v2

    add-int v2, v16, v11

    sub-int/2addr v2, v8

    mul-int v5, v17, v1

    add-int/2addr v5, v2

    .line 16
    aput v4, v3, v5

    add-int v17, v17, v12

    add-int/lit8 v17, v17, -0x1

    mul-int v5, v17, v1

    add-int v5, v5, v16

    .line 17
    aput v4, v3, v5

    mul-int v17, v17, v1

    add-int v17, v17, v2

    .line 18
    aput v4, v3, v17

    add-int/lit8 v6, v19, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public sizeCatProbs()[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x41100000    # 9.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
