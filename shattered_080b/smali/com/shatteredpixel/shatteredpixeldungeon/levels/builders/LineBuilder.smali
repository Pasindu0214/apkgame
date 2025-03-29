.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/LineBuilder;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;
.source "LineBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->setupRooms(Ljava/util/ArrayList;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    .line 3
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->setSize()Z

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/watabou/utils/Rect;->setPos(II)Lcom/watabou/utils/Rect;

    .line 7
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->shop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eqz v2, :cond_1

    .line 9
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/high16 v5, 0x43340000    # 180.0f

    add-float/2addr v5, v0

    invoke-static {p1, v4, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLength:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLenJitterChances:[F

    invoke-static {v4}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v4

    add-int/2addr v4, v2

    .line 11
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 12
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 13
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathTunnelChances:[F

    invoke-virtual {v5}, [F->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    const/4 v6, 0x0

    :goto_0
    if-gt v6, v2, :cond_6

    if-ne v6, v2, :cond_2

    .line 14
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-nez v7, :cond_2

    goto :goto_3

    .line 15
    :cond_2
    invoke-static {v5}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 16
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathTunnelChances:[F

    invoke-virtual {v5}, [F->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 17
    invoke-static {v5}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v7

    .line 18
    :cond_3
    aget v8, v5, v7

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v5, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    .line 19
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    move-result-object v9

    .line 20
    iget v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathVariance:F

    neg-float v11, v10

    invoke-static {v11, v10}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v10

    add-float/2addr v10, v0

    invoke-static {p1, v4, v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    .line 21
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object v4, v9

    goto :goto_1

    :cond_4
    if-ne v6, v2, :cond_5

    .line 23
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 24
    :goto_2
    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathVariance:F

    neg-float v9, v8

    invoke-static {v9, v8}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v8

    add-float/2addr v8, v0

    invoke-static {p1, v4, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    .line 25
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v7

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 26
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :goto_4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 28
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 29
    :cond_7
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->singleConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->weightRooms(Ljava/util/ArrayList;)V

    .line 31
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->branchTunnelChances:[F

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->createBranches(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[F)V

    .line 32
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->findNeighbours(Ljava/util/ArrayList;)V

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 34
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 35
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 36
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v4

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->extraConnectionChance:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 37
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    goto :goto_5

    :cond_a
    return-object p1
.end method
