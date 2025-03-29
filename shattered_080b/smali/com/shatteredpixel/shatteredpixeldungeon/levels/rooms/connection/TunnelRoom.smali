.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;
.source "TunnelRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/ConnectionRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionSpace()Lcom/watabou/utils/Rect;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;->getDoorCenter()Lcom/watabou/utils/Point;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/watabou/utils/Rect;

    iget v2, v0, Lcom/watabou/utils/Point;->x:I

    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v1, v2, v0, v2, v0}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public final getDoorCenter()Lcom/watabou/utils/Point;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 2
    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 3
    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/watabou/utils/Point;

    float-to-int v3, v1

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    div-int/2addr v3, v4

    float-to-int v4, v2

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-direct {v0, v3, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 5
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v1, v4

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    iget v1, v0, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/watabou/utils/Point;->x:I

    .line 6
    :cond_1
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v1

    rem-float/2addr v2, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, v0, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/watabou/utils/Point;->y:I

    .line 7
    :cond_2
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/watabou/utils/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/watabou/utils/Point;->x:I

    .line 8
    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/watabou/utils/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/watabou/utils/Point;->y:I

    return-object v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tunnelTile()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;->getConnectionSpace()Lcom/watabou/utils/Rect;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    new-instance v4, Lcom/watabou/utils/Point;

    invoke-direct {v4, v3}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    .line 5
    iget v5, v4, Lcom/watabou/utils/Point;->x:I

    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/watabou/utils/Point;->x:I

    goto :goto_1

    .line 6
    :cond_0
    iget v6, v4, Lcom/watabou/utils/Point;->y:I

    iget v7, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/watabou/utils/Point;->y:I

    goto :goto_1

    .line 7
    :cond_1
    iget v7, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v5, v7, :cond_2

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/watabou/utils/Point;->x:I

    goto :goto_1

    .line 8
    :cond_2
    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v6, v5, :cond_3

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/watabou/utils/Point;->y:I

    .line 9
    :cond_3
    :goto_1
    iget v5, v4, Lcom/watabou/utils/Point;->x:I

    iget v6, v1, Lcom/watabou/utils/Rect;->left:I

    const/4 v7, 0x0

    if-ge v5, v6, :cond_4

    :goto_2
    sub-int/2addr v6, v5

    goto :goto_3

    .line 10
    :cond_4
    iget v6, v1, Lcom/watabou/utils/Rect;->right:I

    if-le v5, v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 11
    :goto_3
    iget v5, v4, Lcom/watabou/utils/Point;->y:I

    iget v8, v1, Lcom/watabou/utils/Rect;->top:I

    if-ge v5, v8, :cond_6

    :goto_4
    sub-int v7, v8, v5

    goto :goto_5

    .line 12
    :cond_6
    iget v8, v1, Lcom/watabou/utils/Rect;->bottom:I

    if-le v5, v8, :cond_7

    goto :goto_4

    .line 13
    :cond_7
    :goto_5
    iget v3, v3, Lcom/watabou/utils/Point;->x:I

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    if-eq v3, v5, :cond_9

    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v3, v5, :cond_8

    goto :goto_6

    .line 14
    :cond_8
    new-instance v3, Lcom/watabou/utils/Point;

    iget v5, v4, Lcom/watabou/utils/Point;->x:I

    iget v8, v4, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v8, v7

    invoke-direct {v3, v5, v8}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 15
    new-instance v5, Lcom/watabou/utils/Point;

    iget v7, v3, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v7, v6

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v5, v7, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_7

    .line 16
    :cond_9
    :goto_6
    new-instance v3, Lcom/watabou/utils/Point;

    iget v5, v4, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v5, v6

    iget v6, v4, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v3, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 17
    new-instance v5, Lcom/watabou/utils/Point;

    iget v6, v3, Lcom/watabou/utils/Point;->x:I

    iget v8, v3, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v8, v7

    invoke-direct {v5, v6, v8}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 18
    :goto_7
    invoke-static {p1, v4, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 19
    invoke-static {p1, v3, v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    goto/16 :goto_0

    .line 20
    :cond_a
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 21
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->TUNNEL:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_8

    :cond_b
    return-void
.end method
