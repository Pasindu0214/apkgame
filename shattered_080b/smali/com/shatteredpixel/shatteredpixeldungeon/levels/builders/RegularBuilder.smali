.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;
.source "RegularBuilder.java"


# instance fields
.field public branchTunnelChances:[F

.field public entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

.field public exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

.field public extraConnectionChance:F

.field public multiConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation
.end field

.field public pathLenJitterChances:[F

.field public pathLength:F

.field public pathTunnelChances:[F

.field public pathVariance:F

.field public shop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

.field public singleConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;-><init>()V

    const/high16 v0, 0x42340000    # 45.0f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathVariance:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLength:F

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLenJitterChances:[F

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathTunnelChances:[F

    new-array v0, v0, [F

    .line 6
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->branchTunnelChances:[F

    const v0, 0x3e4ccccd    # 0.2f

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->extraConnectionChance:F

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 9
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 10
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->shop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->singleConnections:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createBranches(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[F)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;[F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p4 .. p4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    const/4 v6, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_12

    move-object/from16 v7, p3

    .line 4
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 7
    instance-of v10, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;

    if-eqz v10, :cond_1

    instance-of v11, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    if-nez v11, :cond_0

    .line 8
    :cond_1
    invoke-static {v4}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 9
    invoke-virtual/range {p4 .. p4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 10
    invoke-static {v4}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v11

    .line 11
    :cond_2
    aget v13, v4, v11

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    aput v13, v4, v11

    const/4 v13, 0x0

    :goto_1
    const/high16 v14, -0x40800000    # -1.0f

    if-ge v13, v11, :cond_8

    if-eqz v10, :cond_3

    .line 12
    new-instance v16, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/MazeConnectionRoom;

    invoke-direct/range {v16 .. v16}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/MazeConnectionRoom;-><init>()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    move-result-object v16

    :goto_2
    move-object/from16 v5, v16

    const/16 v16, 0x3

    .line 13
    :cond_4
    invoke-virtual {v0, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->randomBranchAngle(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F

    move-result v15

    invoke-static {v1, v9, v5, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v15

    add-int/lit8 v16, v16, -0x1

    cmpl-float v17, v15, v14

    if-nez v17, :cond_5

    if-gtz v16, :cond_4

    :cond_5
    cmpl-float v15, v15, v14

    if-nez v15, :cond_7

    .line 14
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->clearConnections()V

    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 16
    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->clearConnections()V

    .line 17
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 19
    :cond_7
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object v9, v5

    goto :goto_1

    .line 21
    :cond_8
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v11, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0xa

    .line 22
    :cond_a
    invoke-virtual {v0, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->randomBranchAngle(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F

    move-result v10

    invoke-static {v1, v9, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v10

    add-int/2addr v5, v12

    cmpl-float v11, v10, v14

    if-nez v11, :cond_b

    if-gtz v5, :cond_a

    :cond_b
    cmpl-float v5, v10, v14

    if-nez v5, :cond_d

    .line 23
    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->clearConnections()V

    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 25
    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->clearConnections()V

    .line 26
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 27
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    .line 28
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v5, v9, :cond_f

    const/4 v9, 0x3

    .line 29
    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v11

    if-gt v11, v10, :cond_e

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    const/4 v9, 0x3

    .line 30
    invoke-virtual {v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxConnections(I)I

    move-result v11

    if-le v11, v10, :cond_11

    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v9

    if-nez v9, :cond_11

    .line 31
    instance-of v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    if-eqz v9, :cond_10

    const/4 v9, 0x0

    .line 32
    :goto_7
    move-object v10, v8

    check-cast v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    iget-object v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    .line 33
    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->roomValue:I

    mul-int v10, v10, v10

    if-ge v9, v10, :cond_11

    .line 34
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 35
    :cond_10
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public randomBranchAngle(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F
    .locals 0

    const/high16 p1, 0x43b40000    # 360.0f

    .line 1
    invoke-static {p1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    return p1
.end method

.method public setupRooms(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 2
    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->setEmpty()Lcom/watabou/utils/Rect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->shop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->singleConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 7
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EntranceRoom;

    if-eqz v1, :cond_2

    .line 8
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    goto :goto_1

    .line 9
    :cond_2
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ExitRoom;

    if-eqz v1, :cond_3

    .line 10
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    goto :goto_1

    .line 11
    :cond_3
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxConnections(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 12
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->shop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxConnections(I)I

    move-result v1

    if-le v1, v2, :cond_5

    .line 14
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->maxConnections(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 16
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->singleConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->weightRooms(Ljava/util/ArrayList;)V

    .line 18
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    return-void
.end method

.method public weightRooms(Ljava/util/ArrayList;)V
    .locals 6
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
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 2
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 3
    :goto_1
    move-object v5, v3

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    .line 4
    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->roomValue:I

    mul-int v5, v5, v5

    if-ge v4, v5, :cond_0

    .line 5
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
