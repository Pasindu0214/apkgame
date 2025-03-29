.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angleBetweenRooms(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F
    .locals 5

    .line 1
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    iget p0, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v2, p0

    int-to-float p0, v2

    div-float/2addr p0, v1

    .line 2
    iget v2, p1, Lcom/watabou/utils/Rect;->left:I

    iget v3, p1, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p1, Lcom/watabou/utils/Rect;->top:I

    iget p1, p1, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v3, p1

    int-to-float p1, v3

    div-float/2addr p1, v1

    sub-float/2addr p1, p0

    sub-float p0, v2, v0

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p0, v3

    const-wide v3, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, v3

    double-to-float p0, p0

    cmpl-float p1, v0, v2

    if-lez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    sub-float/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static findNeighbours(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 2
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 3
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v3, p0, v0

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->addNeigbour(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            "F)F"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float v3, p3, v2

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    add-float/2addr v3, v2

    .line 1
    :cond_0
    iget v2, v0, Lcom/watabou/utils/Rect;->left:I

    iget v4, v0, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v5, v0, Lcom/watabou/utils/Rect;->top:I

    iget v6, v0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-double v6, v3

    const-wide v8, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 2
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    float-to-double v8, v5

    float-to-double v10, v2

    .line 3
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v10

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    cmpl-double v16, v10, v12

    if-ltz v16, :cond_3

    const/high16 v10, 0x42b40000    # 90.0f

    cmpg-float v10, v3, v10

    if-ltz v10, :cond_2

    const/high16 v10, 0x43870000    # 270.0f

    cmpl-float v3, v3, v10

    if-lez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v3, Lcom/watabou/utils/Point;

    iget v10, v0, Lcom/watabou/utils/Rect;->bottom:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v8

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v11, v10

    iget v10, v0, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v3, v11, v10}, Lcom/watabou/utils/Point;-><init>(II)V

    const/4 v10, 0x4

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    new-instance v3, Lcom/watabou/utils/Point;

    iget v10, v0, Lcom/watabou/utils/Rect;->top:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v8

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v11, v10

    iget v10, v0, Lcom/watabou/utils/Rect;->top:I

    invoke-direct {v3, v11, v10}, Lcom/watabou/utils/Point;-><init>(II)V

    const/4 v10, 0x2

    goto :goto_1

    :cond_3
    const/high16 v10, 0x43340000    # 180.0f

    cmpg-float v3, v3, v10

    if-gez v3, :cond_4

    .line 7
    new-instance v3, Lcom/watabou/utils/Point;

    iget v10, v0, Lcom/watabou/utils/Rect;->right:I

    int-to-double v11, v10

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v6

    add-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-direct {v3, v10, v12}, Lcom/watabou/utils/Point;-><init>(II)V

    const/4 v10, 0x3

    goto :goto_1

    .line 8
    :cond_4
    new-instance v3, Lcom/watabou/utils/Point;

    iget v10, v0, Lcom/watabou/utils/Rect;->left:I

    int-to-double v11, v10

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v6

    add-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-direct {v3, v10, v12}, Lcom/watabou/utils/Point;-><init>(II)V

    const/4 v10, 0x1

    :goto_1
    if-eq v10, v14, :cond_6

    if-ne v10, v5, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    iget v11, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v11, v15

    int-to-float v11, v11

    iget v12, v3, Lcom/watabou/utils/Point;->y:I

    int-to-float v12, v12

    iget v13, v0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v13, v15

    int-to-float v13, v13

    invoke-static {v11, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Lcom/watabou/utils/Point;->y:I

    goto :goto_3

    .line 10
    :cond_6
    :goto_2
    iget v11, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v11, v15

    int-to-float v11, v11

    iget v12, v3, Lcom/watabou/utils/Point;->x:I

    int-to-float v12, v12

    iget v13, v0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v13, v15

    int-to-float v13, v13

    invoke-static {v11, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Lcom/watabou/utils/Point;->x:I

    .line 11
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 12
    iget v12, v3, Lcom/watabou/utils/Point;->x:I

    sub-int v13, v12, v11

    iget v2, v3, Lcom/watabou/utils/Point;->y:I

    sub-int v16, v2, v11

    add-int/2addr v12, v11

    add-int/2addr v2, v11

    .line 13
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v5, p0

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move/from16 v5, v16

    .line 14
    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 15
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 16
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 17
    invoke-virtual {v4}, Lcom/watabou/utils/Rect;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    iget v14, v4, Lcom/watabou/utils/Rect;->left:I

    .line 18
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v15, v4, Lcom/watabou/utils/Rect;->right:I

    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    if-ge v14, v15, :cond_7

    iget v14, v4, Lcom/watabou/utils/Rect;->top:I

    .line 19
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v4, v4, Lcom/watabou/utils/Rect;->bottom:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lt v14, v4, :cond_8

    .line 20
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    :cond_8
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_5

    .line 21
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const v4, 0x7fffffff

    const/4 v15, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    check-cast v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    move-wide/from16 v22, v6

    .line 22
    iget v6, v3, Lcom/watabou/utils/Point;->x:I

    iget v7, v14, Lcom/watabou/utils/Rect;->left:I

    if-gt v6, v7, :cond_a

    sub-int/2addr v7, v6

    add-int v7, v7, v19

    move/from16 v19, v7

    goto :goto_7

    .line 23
    :cond_a
    iget v7, v14, Lcom/watabou/utils/Rect;->right:I

    if-lt v6, v7, :cond_b

    sub-int/2addr v6, v7

    add-int v6, v6, v19

    move/from16 v19, v6

    :goto_7
    const/16 v18, 0x0

    .line 24
    :cond_b
    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    iget v7, v14, Lcom/watabou/utils/Rect;->top:I

    if-gt v6, v7, :cond_c

    sub-int/2addr v7, v6

    add-int v7, v7, v19

    goto :goto_8

    .line 25
    :cond_c
    iget v7, v14, Lcom/watabou/utils/Rect;->bottom:I

    if-lt v6, v7, :cond_d

    sub-int/2addr v6, v7

    add-int v7, v6, v19

    :goto_8
    const/16 v18, 0x0

    goto :goto_9

    :cond_d
    move/from16 v7, v19

    :goto_9
    if-eqz v18, :cond_e

    .line 26
    iget v2, v3, Lcom/watabou/utils/Point;->x:I

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    move v13, v2

    move v5, v3

    goto/16 :goto_12

    :cond_e
    if-ge v7, v4, :cond_f

    move v4, v7

    move/from16 v19, v4

    move-object v15, v14

    goto :goto_a

    :cond_f
    move/from16 v19, v7

    :goto_a
    move-object/from16 v14, v21

    move-wide/from16 v6, v22

    goto :goto_6

    :cond_10
    move-wide/from16 v22, v6

    if-eqz v15, :cond_1a

    .line 27
    iget v4, v15, Lcom/watabou/utils/Rect;->left:I

    iget v6, v3, Lcom/watabou/utils/Point;->x:I

    if-lt v4, v6, :cond_11

    sub-int v4, v12, v4

    sub-int v6, v2, v5

    const/4 v7, 0x1

    :goto_b
    add-int/2addr v6, v7

    mul-int v6, v6, v4

    goto :goto_c

    :cond_11
    const/4 v7, 0x1

    .line 28
    iget v4, v15, Lcom/watabou/utils/Rect;->right:I

    if-gt v4, v6, :cond_12

    sub-int/2addr v4, v13

    sub-int v6, v2, v5

    goto :goto_b

    :cond_12
    const v6, 0x7fffffff

    .line 29
    :goto_c
    iget v4, v15, Lcom/watabou/utils/Rect;->top:I

    iget v7, v3, Lcom/watabou/utils/Point;->y:I

    if-lt v4, v7, :cond_13

    sub-int v4, v2, v4

    sub-int v7, v12, v13

    const/4 v14, 0x1

    :goto_d
    add-int/2addr v7, v14

    mul-int v4, v4, v7

    goto :goto_e

    :cond_13
    const/4 v14, 0x1

    .line 30
    iget v4, v15, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v4, v7, :cond_14

    sub-int/2addr v4, v5

    sub-int v7, v12, v13

    goto :goto_d

    :cond_14
    const v4, 0x7fffffff

    :goto_e
    if-lt v6, v4, :cond_17

    if-ne v6, v4, :cond_15

    const/4 v4, 0x2

    .line 31
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v6

    if-nez v6, :cond_15

    goto :goto_f

    .line 32
    :cond_15
    iget v4, v15, Lcom/watabou/utils/Rect;->top:I

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    if-lt v4, v6, :cond_16

    if-ge v4, v2, :cond_16

    move v2, v4

    .line 33
    :cond_16
    iget v4, v15, Lcom/watabou/utils/Rect;->bottom:I

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    if-gt v4, v6, :cond_19

    if-le v4, v5, :cond_19

    move v5, v4

    goto :goto_10

    .line 34
    :cond_17
    :goto_f
    iget v4, v15, Lcom/watabou/utils/Rect;->left:I

    iget v6, v3, Lcom/watabou/utils/Point;->x:I

    if-lt v4, v6, :cond_18

    if-ge v4, v12, :cond_18

    move v12, v4

    .line 35
    :cond_18
    iget v4, v15, Lcom/watabou/utils/Rect;->right:I

    iget v6, v3, Lcom/watabou/utils/Point;->x:I

    if-gt v4, v6, :cond_19

    if-le v4, v13, :cond_19

    move v13, v4

    .line 36
    :cond_19
    :goto_10
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 37
    :cond_1a
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 38
    :goto_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2e

    move v3, v2

    move v2, v12

    :goto_12
    sub-int v4, v2, v13

    const/4 v6, 0x1

    add-int/2addr v4, v6

    sub-int v7, v3, v5

    add-int/2addr v7, v6

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->minWidth()I

    move-result v6

    if-lt v4, v6, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->minHeight()I

    move-result v6

    if-ge v7, v6, :cond_1b

    goto :goto_13

    .line 40
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->setSize()Z

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v6

    if-gt v6, v4, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v6

    if-le v6, v7, :cond_1d

    .line 42
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v11

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v7, v6

    .line 43
    iget v6, v1, Lcom/watabou/utils/Rect;->left:I

    iget v11, v1, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v4, v6

    add-int/2addr v7, v11

    invoke-virtual {v1, v6, v11, v4, v7}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    :cond_1d
    const/4 v4, 0x1

    goto :goto_14

    :cond_1e
    :goto_13
    const/4 v4, 0x0

    :goto_14
    const/high16 v6, -0x40800000    # -1.0f

    if-nez v4, :cond_1f

    return v6

    :cond_1f
    const/4 v4, 0x2

    if-ne v10, v4, :cond_21

    .line 44
    iget v4, v0, Lcom/watabou/utils/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    int-to-float v7, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v7, v12

    sub-float/2addr v4, v7

    float-to-double v14, v4

    .line 45
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v8

    div-double v14, v14, v22

    double-to-float v4, v14

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v7

    sub-int/2addr v7, v11

    int-to-float v7, v7

    div-float/2addr v7, v12

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, v0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v8

    sub-int/2addr v8, v11

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v7}, Lcom/watabou/utils/Rect;->setPos(II)Lcom/watabou/utils/Rect;

    :cond_20
    :goto_15
    const/4 v4, 0x2

    goto/16 :goto_16

    :cond_21
    const/4 v4, 0x4

    const/4 v11, 0x1

    if-ne v10, v4, :cond_22

    .line 47
    iget v4, v0, Lcom/watabou/utils/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v7

    sub-int/2addr v7, v11

    int-to-float v7, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v7, v12

    add-float/2addr v7, v4

    float-to-double v14, v7

    .line 48
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v8

    div-double v14, v14, v22

    double-to-float v4, v14

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v7

    sub-int/2addr v7, v11

    int-to-float v7, v7

    div-float/2addr v7, v12

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, v0, Lcom/watabou/utils/Rect;->bottom:I

    invoke-virtual {v1, v4, v7}, Lcom/watabou/utils/Rect;->setPos(II)Lcom/watabou/utils/Rect;

    goto :goto_15

    :cond_22
    const/4 v4, 0x3

    if-ne v10, v4, :cond_23

    .line 50
    iget v4, v0, Lcom/watabou/utils/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v7

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    int-to-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    add-float/2addr v7, v4

    float-to-double v6, v7

    .line 51
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v22

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 52
    iget v6, v0, Lcom/watabou/utils/Rect;->right:I

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v7

    sub-int/2addr v7, v14

    int-to-float v7, v7

    div-float/2addr v7, v11

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Lcom/watabou/utils/Rect;->setPos(II)Lcom/watabou/utils/Rect;

    goto :goto_15

    :cond_23
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v14, 0x1

    if-ne v10, v14, :cond_20

    .line 53
    iget v4, v0, Lcom/watabou/utils/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v6

    sub-int/2addr v6, v14

    int-to-float v6, v6

    div-float/2addr v6, v11

    sub-float/2addr v4, v6

    float-to-double v6, v4

    .line 54
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v22

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 55
    iget v6, v0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v7

    sub-int/2addr v7, v14

    sub-int/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v7

    sub-int/2addr v7, v14

    int-to-float v7, v7

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v7, v15

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Lcom/watabou/utils/Rect;->setPos(II)Lcom/watabou/utils/Rect;

    goto/16 :goto_15

    :goto_16
    if-eq v10, v4, :cond_28

    const/4 v6, 0x4

    if-ne v10, v6, :cond_24

    goto :goto_18

    .line 56
    :cond_24
    iget v2, v1, Lcom/watabou/utils/Rect;->bottom:I

    iget v6, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v7, v6, 0x2

    if-ge v2, v7, :cond_25

    add-int/2addr v6, v4

    sub-int/2addr v6, v2

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Lcom/watabou/utils/Rect;->shift(II)Lcom/watabou/utils/Rect;

    goto :goto_17

    :cond_25
    const/4 v7, 0x0

    .line 57
    iget v2, v1, Lcom/watabou/utils/Rect;->top:I

    iget v6, v0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v8, v6, -0x2

    if-le v2, v8, :cond_26

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    invoke-virtual {v1, v7, v6}, Lcom/watabou/utils/Rect;->shift(II)Lcom/watabou/utils/Rect;

    .line 58
    :cond_26
    :goto_17
    iget v2, v1, Lcom/watabou/utils/Rect;->bottom:I

    if-le v2, v3, :cond_27

    sub-int/2addr v3, v2

    invoke-virtual {v1, v7, v3}, Lcom/watabou/utils/Rect;->shift(II)Lcom/watabou/utils/Rect;

    goto :goto_1a

    .line 59
    :cond_27
    iget v2, v1, Lcom/watabou/utils/Rect;->top:I

    if-ge v2, v5, :cond_2c

    sub-int/2addr v5, v2

    invoke-virtual {v1, v7, v5}, Lcom/watabou/utils/Rect;->shift(II)Lcom/watabou/utils/Rect;

    goto :goto_1a

    :cond_28
    :goto_18
    const/4 v7, 0x0

    .line 60
    iget v3, v1, Lcom/watabou/utils/Rect;->right:I

    iget v4, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v5, v4, 0x2

    if-ge v3, v5, :cond_29

    const/16 v16, 0x2

    add-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4, v7}, Lcom/watabou/utils/Rect;->shift(II)Lcom/watabou/utils/Rect;

    goto :goto_19

    :cond_29
    const/16 v16, 0x2

    .line 61
    iget v3, v1, Lcom/watabou/utils/Rect;->left:I

    iget v4, v0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v5, v4, -0x2

    if-le v3, v5, :cond_2a

    add-int/lit8 v4, v4, -0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4, v7}, Lcom/watabou/utils/Rect;->shift(II)Lcom/watabou/utils/Rect;

    .line 62
    :cond_2a
    :goto_19
    iget v3, v1, Lcom/watabou/utils/Rect;->right:I

    if-le v3, v2, :cond_2b

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v7}, Lcom/watabou/utils/Rect;->shift(II)Lcom/watabou/utils/Rect;

    goto :goto_1a

    .line 63
    :cond_2b
    iget v2, v1, Lcom/watabou/utils/Rect;->left:I

    if-ge v2, v13, :cond_2c

    sub-int/2addr v13, v2

    invoke-virtual {v1, v13, v7}, Lcom/watabou/utils/Rect;->shift(II)Lcom/watabou/utils/Rect;

    .line 64
    :cond_2c
    :goto_1a
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 65
    invoke-static/range {p1 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->angleBetweenRooms(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F

    move-result v0

    return v0

    :cond_2d
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_2e
    move-wide/from16 v6, v22

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto/16 :goto_4
.end method


# virtual methods
.method public abstract build(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation
.end method
