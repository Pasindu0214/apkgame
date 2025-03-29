.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;
.source "FigureEightBuilder.java"


# instance fields
.field public curveExponent:I

.field public curveIntensity:F

.field public curveOffset:F

.field public firstLoop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation
.end field

.field public firstLoopCenter:Lcom/watabou/utils/PointF;

.field public landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

.field public secondLoop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;"
        }
    .end annotation
.end field

.field public secondLoopCenter:Lcom/watabou/utils/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveExponent:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveIntensity:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveOffset:F

    return-void
.end method


# virtual methods
.method public build(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
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
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x43340000    # 180.0f

    .line 6
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLength:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathLenJitterChances:[F

    invoke-static {v3}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v3

    add-int/2addr v3, v2

    .line 8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9
    div-int/lit8 v3, v2, 0x2

    .line 10
    rem-int/lit8 v4, v2, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 11
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    .line 12
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathTunnelChances:[F

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    if-gt v8, v3, :cond_6

    if-nez v8, :cond_3

    .line 13
    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_1
    invoke-static {v4}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v11

    if-ne v11, v10, :cond_4

    .line 16
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathTunnelChances:[F

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 17
    invoke-static {v4}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v11

    .line 18
    :cond_4
    aget v10, v4, v11

    sub-float/2addr v10, v9

    aput v10, v4, v11

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_5

    .line 19
    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 20
    :cond_6
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v11, v6

    div-int/2addr v11, v5

    iget-object v12, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v8, v11, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    sub-int/2addr v2, v3

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_3
    if-gt v3, v2, :cond_b

    if-nez v3, :cond_8

    .line 22
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 23
    :cond_8
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :goto_4
    invoke-static {v4}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v8

    if-ne v8, v10, :cond_9

    .line 25
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->pathTunnelChances:[F

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 26
    invoke-static {v4}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v8

    .line 27
    :cond_9
    aget v11, v4, v8

    sub-float/2addr v11, v9

    aput v11, v4, v8

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v8, :cond_a

    .line 28
    iget-object v12, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 29
    :cond_b
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v6

    div-int/2addr v3, v5

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->exit:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30
    :cond_c
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->setSize()Z

    .line 31
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v2, v7, v7}, Lcom/watabou/utils/Rect;->setPos(II)Lcom/watabou/utils/Rect;

    .line 32
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/4 v3, 0x1

    .line 33
    :goto_6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    if-ge v3, v4, :cond_f

    .line 34
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    int-to-float v8, v3

    .line 35
    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->targetAngle(F)F

    move-result v8

    add-float/2addr v8, v0

    .line 36
    invoke-static {p1, v2, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_e

    .line 37
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 38
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_6

    :cond_e
    return-object v5

    .line 39
    :cond_f
    :goto_7
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 40
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    move-result-object v3

    .line 41
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-static {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->angleBetweenRooms(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_10

    return-object v5

    .line 42
    :cond_10
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_7

    .line 44
    :cond_11
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    add-float/2addr v0, v1

    .line 45
    :goto_8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_14

    .line 46
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    int-to-float v3, v6

    .line 47
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->targetAngle(F)F

    move-result v3

    add-float/2addr v3, v0

    .line 48
    invoke-static {p1, v2, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_13

    .line 49
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 50
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v6, v6, 0x1

    move-object v2, v1

    goto :goto_8

    :cond_13
    return-object v5

    .line 51
    :cond_14
    :goto_9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 52
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;->createRoom()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->angleBetweenRooms(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F

    move-result v1

    invoke-static {p1, v2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-nez v1, :cond_15

    return-object v5

    .line 54
    :cond_15
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    goto :goto_9

    .line 56
    :cond_16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->shop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    if-eqz v0, :cond_19

    const/16 v0, 0xa

    .line 57
    :cond_17
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->entrance:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->shop:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-static {v4}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->placeRoom(Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;F)F

    move-result v1

    add-int/2addr v0, v10

    cmpl-float v2, v1, v7

    if-nez v2, :cond_18

    if-gez v0, :cond_17

    :cond_18
    cmpl-float v0, v1, v7

    if-nez v0, :cond_19

    return-object v5

    .line 58
    :cond_19
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoopCenter:Lcom/watabou/utils/PointF;

    .line 59
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 60
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoopCenter:Lcom/watabou/utils/PointF;

    iget v4, v3, Lcom/watabou/utils/PointF;->x:F

    iget v5, v1, Lcom/watabou/utils/Rect;->left:I

    iget v6, v1, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v5, v4

    iput v5, v3, Lcom/watabou/utils/PointF;->x:F

    .line 61
    iget v4, v3, Lcom/watabou/utils/PointF;->y:F

    iget v5, v1, Lcom/watabou/utils/Rect;->top:I

    iget v1, v1, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v5, v1

    int-to-float v1, v5

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    iput v1, v3, Lcom/watabou/utils/PointF;->y:F

    goto :goto_a

    .line 62
    :cond_1a
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoopCenter:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 63
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoopCenter:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->y:F

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 64
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoopCenter:Lcom/watabou/utils/PointF;

    .line 65
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 66
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoopCenter:Lcom/watabou/utils/PointF;

    iget v4, v3, Lcom/watabou/utils/PointF;->x:F

    iget v5, v1, Lcom/watabou/utils/Rect;->left:I

    iget v6, v1, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v5, v4

    iput v5, v3, Lcom/watabou/utils/PointF;->x:F

    .line 67
    iget v4, v3, Lcom/watabou/utils/PointF;->y:F

    iget v5, v1, Lcom/watabou/utils/Rect;->top:I

    iget v1, v1, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v5, v1

    int-to-float v1, v5

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    iput v1, v3, Lcom/watabou/utils/PointF;->y:F

    goto :goto_b

    .line 68
    :cond_1b
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoopCenter:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 69
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoopCenter:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->y:F

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoop:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->landmarkRoom:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->multiConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->singleConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->weightRooms(Ljava/util/ArrayList;)V

    .line 77
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->branchTunnelChances:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->createBranches(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[F)V

    .line 78
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/Builder;->findNeighbours(Ljava/util/ArrayList;)V

    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 80
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 81
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 82
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v4

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->extraConnectionChance:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1d

    .line 83
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    goto :goto_c

    :cond_1e
    return-object p1
.end method

.method public randomBranchAngle(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoop:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->firstLoopCenter:Lcom/watabou/utils/PointF;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->secondLoopCenter:Lcom/watabou/utils/PointF;

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/RegularBuilder;->randomBranchAngle(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)F

    move-result p1

    return p1

    .line 5
    :cond_1
    iget v1, p1, Lcom/watabou/utils/Rect;->left:I

    iget v2, p1, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p1, Lcom/watabou/utils/Rect;->top:I

    iget p1, p1, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr v3, p1

    int-to-float p1, v3

    div-float/2addr p1, v2

    .line 6
    iget v2, v0, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v2, p1

    iget p1, v0, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr p1, v1

    div-float/2addr v2, p1

    float-to-double v2, v2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v2, v4

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v2, v2, v4

    double-to-float p1, v2

    .line 8
    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x43340000    # 180.0f

    sub-float/2addr p1, v0

    :cond_2
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    add-float/2addr p1, v1

    .line 9
    :cond_3
    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    .line 10
    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v3

    sub-float v4, p1, v3

    .line 11
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, p1, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    move v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public final targetAngle(F)F
    .locals 14

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveOffset:F

    add-float/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveIntensity:F

    float-to-double v0, v0

    float-to-double v2, p1

    .line 3
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveExponent:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v8, v2, v6

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v8, v10

    iget v12, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveExponent:I

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    int-to-double v12, v12

    .line 4
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v4

    add-double/2addr v8, v10

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double v2, v2, v6

    add-double/2addr v2, v8

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveIntensity:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/builders/FigureEightBuilder;->curveOffset:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    double-to-float p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    return p1
.end method
