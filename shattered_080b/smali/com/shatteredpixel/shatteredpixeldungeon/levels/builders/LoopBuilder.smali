.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;
.source "LoopBuilder.java"


# instance fields
.field public curveExponent:I

.field public curveIntensity:F

.field public curveOffset:F

.field public loopCenter:Lcom/watabou/utils/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveExponent:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveIntensity:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveOffset:F

    return-void
.end method


# virtual methods
.method public build(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 23
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->setupRooms(Ljava/util/ArrayList;)V

    .line 2
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->setSize()Z

    .line 4
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Lcom/watabou/utils/Rect;->setPos(II)Lcom/watabou/utils/Rect;

    const/4 v2, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    .line 5
    invoke-static {v2, v5}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLength:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLenJitterChances:[F

    invoke-static {v8}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v8

    add-int/2addr v8, v7

    .line 8
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 9
    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathTunnelChances:[F

    invoke-virtual {v8}, [F->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    const/4 v9, 0x0

    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, -0x1

    if-gt v9, v7, :cond_4

    if-nez v9, :cond_1

    .line 10
    iget-object v12, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v12, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_1
    invoke-static {v8}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v12

    if-ne v12, v11, :cond_2

    .line 13
    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathTunnelChances:[F

    invoke-virtual {v8}, [F->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 14
    invoke-static {v8}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v12

    .line 15
    :cond_2
    aget v11, v8, v12

    sub-float/2addr v11, v10

    aput v11, v8, v12

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_3

    .line 16
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 17
    :cond_4
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v6, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 18
    :cond_5
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/4 v8, 0x1

    .line 19
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 20
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    int-to-float v13, v8

    .line 21
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 22
    iget v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveOffset:F

    add-float/2addr v13, v14

    .line 23
    iget v14, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveIntensity:F

    float-to-double v14, v14

    float-to-double v11, v13

    .line 24
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveExponent:I

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v16, v6

    int-to-double v5, v3

    move/from16 v17, v8

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v18, v11, v7

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    move-object/from16 v22, v4

    sub-double v3, v18, v20

    iget v10, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveExponent:I

    mul-int/lit8 v10, v10, 0x2

    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    int-to-double v7, v10

    .line 25
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v5

    add-double v3, v3, v20

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v5

    .line 26
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    add-double/2addr v5, v3

    .line 27
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v14

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveIntensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v10, v4, v3

    mul-float v10, v10, v13

    float-to-double v7, v10

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->curveOffset:F

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v3, v5

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v3, v3, v5

    add-float/2addr v3, v2

    move-object/from16 v5, v22

    .line 28
    invoke-static {v1, v5, v9, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v3

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_7

    .line 29
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 30
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v8, v17, 0x1

    move-object v4, v9

    move-object/from16 v6, v16

    const/4 v3, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v7, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, -0x1

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x0

    return-object v3

    :cond_8
    move-object v5, v4

    move-object/from16 v16, v6

    .line 31
    :goto_4
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 32
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    move-result-object v2

    .line 33
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->angleBetweenRooms(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F

    move-result v5

    move-object/from16 v6, v16

    invoke-static {v6, v4, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_9

    return-object v3

    .line 34
    :cond_9
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    move-object/from16 v16, v6

    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v6, v16

    .line 36
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->shop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eqz v2, :cond_d

    const/16 v2, 0xa

    .line 37
    :cond_b
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->shop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-static {v5}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v7

    invoke-static {v6, v3, v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v2, v4

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v8, v3, v7

    if-nez v8, :cond_c

    if-gez v2, :cond_b

    :cond_c
    cmpl-float v2, v3, v7

    if-nez v2, :cond_d

    const/4 v2, 0x0

    return-object v2

    .line 38
    :cond_d
    new-instance v2, Lcom/watabou/utils/PointF;

    invoke-direct {v2}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->loopCenter:Lcom/watabou/utils/PointF;

    .line 39
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 40
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->loopCenter:Lcom/watabou/utils/PointF;

    iget v5, v4, Lcom/watabou/utils/PointF;->x:F

    iget v7, v3, Lcom/watabou/utils/Rect;->left:I

    iget v8, v3, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v7, v5

    iput v7, v4, Lcom/watabou/utils/PointF;->x:F

    .line 41
    iget v5, v4, Lcom/watabou/utils/PointF;->y:F

    iget v7, v3, Lcom/watabou/utils/Rect;->top:I

    iget v3, v3, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v7, v3

    int-to-float v3, v7

    div-float/2addr v3, v8

    add-float/2addr v3, v5

    iput v3, v4, Lcom/watabou/utils/PointF;->y:F

    goto :goto_5

    .line 42
    :cond_e
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->loopCenter:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lcom/watabou/utils/PointF;->x:F

    .line 43
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->loopCenter:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lcom/watabou/utils/PointF;->y:F

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->singleConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->weightRooms(Ljava/util/ArrayList;)V

    .line 49
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->branchTunnelChances:[F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->createBranches(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[F)V

    .line 50
    invoke-static/range {p1 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->findNeighbours(Ljava/util/ArrayList;)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 52
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 53
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 54
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v6

    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->extraConnectionChance:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_10

    .line 55
    invoke-virtual {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    goto :goto_6

    :cond_11
    return-object v1
.end method

.method public randomBranchAngle(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->loopCenter:Lcom/watabou/utils/PointF;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->randomBranchAngle(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F

    move-result p1

    return p1

    .line 3
    :cond_0
    iget v0, p1, Lcom/watabou/utils/Rect;->left:I

    iget v1, p1, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p1, Lcom/watabou/utils/Rect;->top:I

    iget p1, p1, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LoopBuilder;->loopCenter:Lcom/watabou/utils/PointF;

    .line 4
    iget v2, v1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v2, p1

    iget p1, v1, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr p1, v0

    div-float/2addr v2, p1

    float-to-double v2, v2

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v2, v4

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v2, v2, v4

    double-to-float p1, v2

    .line 6
    iget v1, v1, Lcom/watabou/utils/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    sub-float/2addr p1, v0

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    add-float/2addr p1, v1

    .line 7
    :cond_2
    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    .line 8
    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v3

    sub-float v4, p1, v3

    .line 9
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, p1, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    move v0, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method
