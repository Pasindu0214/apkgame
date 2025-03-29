.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;
.source "PerimeterRoom.java"


# static fields
.field public static corners:[Lcom/watabou/utils/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;-><init>()V

    return-void
.end method

.method public static fillBetweenPoints(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V
    .locals 10

    .line 1
    iget v0, p2, Lcom/watabou/utils/Point;->x:I

    iget v1, p1, Lcom/watabou/utils/Rect;->left:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x2

    if-eq v0, v1, :cond_0

    iget v1, p1, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p2, Lcom/watabou/utils/Point;->x:I

    iget v1, p3, Lcom/watabou/utils/Point;->x:I

    if-eq v0, v1, :cond_d

    :cond_1
    iget v0, p2, Lcom/watabou/utils/Point;->y:I

    iget v1, p1, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    iget v1, p1, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    :cond_2
    iget v0, p2, Lcom/watabou/utils/Point;->y:I

    iget v1, p3, Lcom/watabou/utils/Point;->y:I

    if-ne v0, v1, :cond_3

    goto/16 :goto_4

    .line 2
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->corners:[Lcom/watabou/utils/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/watabou/utils/Point;

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->corners:[Lcom/watabou/utils/Point;

    .line 4
    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, p1, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v5, v2

    iget v6, p1, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v6, v2

    invoke-direct {v4, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v4, v0, v1

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->corners:[Lcom/watabou/utils/Point;

    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, p1, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v5, v2

    iget v6, p1, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v6, v2

    invoke-direct {v4, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v4, v0, v2

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->corners:[Lcom/watabou/utils/Point;

    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, p1, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v5, v2

    iget v6, p1, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v6, v2

    invoke-direct {v4, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v4, v0, v3

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->corners:[Lcom/watabou/utils/Point;

    const/4 v4, 0x3

    new-instance v5, Lcom/watabou/utils/Point;

    iget v6, p1, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v6, v2

    iget v7, p1, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v5, v0, v4

    .line 8
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->corners:[Lcom/watabou/utils/Point;

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_8

    aget-object v5, v0, v1

    .line 9
    iget v6, v5, Lcom/watabou/utils/Point;->x:I

    iget v7, p2, Lcom/watabou/utils/Point;->x:I

    if-eq v6, v7, :cond_5

    iget v6, v5, Lcom/watabou/utils/Point;->y:I

    iget v7, p2, Lcom/watabou/utils/Point;->y:I

    if-ne v6, v7, :cond_6

    :cond_5
    iget v6, v5, Lcom/watabou/utils/Point;->x:I

    iget v7, p3, Lcom/watabou/utils/Point;->x:I

    if-eq v6, v7, :cond_7

    iget v6, v5, Lcom/watabou/utils/Point;->y:I

    iget v7, p3, Lcom/watabou/utils/Point;->y:I

    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_7
    :goto_1
    invoke-static {p0, p2, v5, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 11
    invoke-static {p0, v5, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    return-void

    .line 12
    :cond_8
    iget v0, p2, Lcom/watabou/utils/Point;->y:I

    iget v1, p1, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v4, v1, 0x1

    if-eq v0, v4, :cond_b

    iget v4, p1, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_9

    goto :goto_2

    .line 13
    :cond_9
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v0

    iget v1, p1, Lcom/watabou/utils/Rect;->top:I

    iget v4, p3, Lcom/watabou/utils/Point;->y:I

    invoke-static {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p1, Lcom/watabou/utils/Rect;->bottom:I

    iget v4, p2, Lcom/watabou/utils/Point;->y:I

    .line 14
    invoke-static {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v0

    iget v4, p1, Lcom/watabou/utils/Rect;->bottom:I

    iget v5, p3, Lcom/watabou/utils/Point;->y:I

    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v4

    add-int/2addr v4, v0

    if-gt v1, v4, :cond_a

    .line 15
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p1, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v4, v1

    iget v1, p1, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v1, v2

    invoke-direct {v0, v4, v1}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_3

    .line 16
    :cond_a
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p1, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v4, v1

    iget v1, p1, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v4, v1}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_3

    .line 17
    :cond_b
    :goto_2
    iget v0, p1, Lcom/watabou/utils/Rect;->left:I

    iget v1, p2, Lcom/watabou/utils/Point;->x:I

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v0

    iget v1, p1, Lcom/watabou/utils/Rect;->left:I

    iget v4, p3, Lcom/watabou/utils/Point;->x:I

    invoke-static {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p1, Lcom/watabou/utils/Rect;->right:I

    iget v4, p2, Lcom/watabou/utils/Point;->x:I

    .line 18
    invoke-static {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v0

    iget v4, p1, Lcom/watabou/utils/Rect;->right:I

    iget v5, p3, Lcom/watabou/utils/Point;->x:I

    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v4

    add-int/2addr v4, v0

    if-gt v1, v4, :cond_c

    .line 19
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p1, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_3

    .line 20
    :cond_c
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p1, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 21
    :goto_3
    invoke-static {p0, p1, p2, v0, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->fillBetweenPoints(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 22
    invoke-static {p0, p1, v0, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->fillBetweenPoints(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    return-void

    .line 23
    :cond_d
    :goto_4
    iget p1, p2, Lcom/watabou/utils/Point;->x:I

    iget v0, p3, Lcom/watabou/utils/Point;->x:I

    .line 24
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget p1, p2, Lcom/watabou/utils/Point;->y:I

    iget v0, p3, Lcom/watabou/utils/Point;->y:I

    .line 25
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget p1, p2, Lcom/watabou/utils/Point;->x:I

    iget v0, p3, Lcom/watabou/utils/Point;->x:I

    .line 26
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result p1

    add-int/lit8 v7, p1, 0x2

    iget p1, p2, Lcom/watabou/utils/Point;->y:I

    iget p2, p3, Lcom/watabou/utils/Point;->y:I

    .line 27
    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result p1

    add-int/lit8 v8, p1, 0x2

    move-object v4, p0

    move v9, p4

    .line 28
    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    return-void
.end method

.method public static fillPerimiterPaths(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;I)V
    .locals 15

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 1
    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->corners:[Lcom/watabou/utils/Point;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/watabou/utils/Point;

    .line 4
    new-instance v5, Lcom/watabou/utils/Point;

    invoke-direct {v5, v4}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    .line 5
    iget v4, v5, Lcom/watabou/utils/Point;->y:I

    iget v6, v0, Lcom/watabou/utils/Rect;->top:I

    if-ne v4, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 6
    iput v4, v5, Lcom/watabou/utils/Point;->y:I

    goto :goto_1

    .line 7
    :cond_0
    iget v6, v0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v4, v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 8
    iput v4, v5, Lcom/watabou/utils/Point;->y:I

    goto :goto_1

    .line 9
    :cond_1
    iget v4, v5, Lcom/watabou/utils/Point;->x:I

    iget v6, v0, Lcom/watabou/utils/Rect;->left:I

    if-ne v4, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 10
    iput v4, v5, Lcom/watabou/utils/Point;->x:I

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 11
    iput v4, v5, Lcom/watabou/utils/Point;->x:I

    .line 12
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 15
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    const v5, 0x7fffffff

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/watabou/utils/Point;

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/watabou/utils/Point;

    .line 18
    iget v10, v7, Lcom/watabou/utils/Point;->x:I

    iget v11, v0, Lcom/watabou/utils/Rect;->left:I

    if-eq v10, v11, :cond_6

    iget v11, v0, Lcom/watabou/utils/Rect;->right:I

    if-ne v10, v11, :cond_7

    :cond_6
    iget v10, v7, Lcom/watabou/utils/Point;->y:I

    iget v11, v9, Lcom/watabou/utils/Point;->y:I

    if-eq v10, v11, :cond_a

    :cond_7
    iget v10, v7, Lcom/watabou/utils/Point;->y:I

    iget v11, v0, Lcom/watabou/utils/Rect;->top:I

    if-eq v10, v11, :cond_8

    iget v11, v0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v10, v11, :cond_9

    :cond_8
    iget v10, v7, Lcom/watabou/utils/Point;->x:I

    iget v11, v9, Lcom/watabou/utils/Point;->x:I

    if-ne v10, v11, :cond_9

    goto :goto_4

    .line 19
    :cond_9
    iget v10, v0, Lcom/watabou/utils/Rect;->left:I

    iget v11, v7, Lcom/watabou/utils/Point;->x:I

    .line 20
    invoke-static {v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v10

    iget v11, v0, Lcom/watabou/utils/Rect;->left:I

    iget v12, v9, Lcom/watabou/utils/Point;->x:I

    invoke-static {v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v11

    add-int/2addr v11, v10

    iget v10, v0, Lcom/watabou/utils/Rect;->right:I

    iget v12, v7, Lcom/watabou/utils/Point;->x:I

    .line 21
    invoke-static {v10, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v10

    iget v12, v0, Lcom/watabou/utils/Rect;->right:I

    iget v13, v9, Lcom/watabou/utils/Point;->x:I

    invoke-static {v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v12

    add-int/2addr v12, v10

    .line 22
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v11, v0, Lcom/watabou/utils/Rect;->top:I

    iget v12, v7, Lcom/watabou/utils/Point;->y:I

    .line 23
    invoke-static {v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v11

    iget v12, v0, Lcom/watabou/utils/Rect;->top:I

    iget v13, v9, Lcom/watabou/utils/Point;->y:I

    invoke-static {v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v12

    add-int/2addr v12, v11

    iget v11, v0, Lcom/watabou/utils/Rect;->bottom:I

    iget v13, v7, Lcom/watabou/utils/Point;->y:I

    .line 24
    invoke-static {v11, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v11

    iget v13, v0, Lcom/watabou/utils/Rect;->bottom:I

    iget v14, v9, Lcom/watabou/utils/Point;->y:I

    invoke-static {v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v13

    add-int/2addr v13, v11

    .line 25
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 26
    :cond_a
    :goto_4
    iget v10, v7, Lcom/watabou/utils/Point;->x:I

    iget v11, v9, Lcom/watabou/utils/Point;->x:I

    invoke-static {v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v10

    iget v11, v7, Lcom/watabou/utils/Point;->y:I

    iget v12, v9, Lcom/watabou/utils/Point;->y:I

    invoke-static {v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->spaceBetween(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :goto_5
    if-ge v11, v5, :cond_5

    move-object v1, v7

    move-object v4, v9

    move v5, v11

    goto/16 :goto_3

    :cond_b
    move-object v5, p0

    move/from16 v7, p2

    .line 27
    invoke-static {p0, v0, v1, v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->fillBetweenPoints(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 28
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method public static spaceBetween(II)I
    .locals 0

    sub-int/2addr p0, p1

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tunnelTile()I

    move-result v0

    .line 2
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->fillPerimiterPaths(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;I)V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->TUNNEL:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    :cond_0
    return-void
.end method
