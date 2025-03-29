.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/HallwayRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;
.source "HallwayRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v0

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 6
    iget v6, v5, Lcom/watabou/utils/Point;->x:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 7
    iget v5, v5, Lcom/watabou/utils/Point;->y:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    goto :goto_0

    .line 8
    :cond_2
    new-instance v1, Lcom/watabou/utils/Point;

    float-to-int v5, v3

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    div-int/2addr v5, v6

    float-to-int v6, v4

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    div-int/2addr v6, v7

    invoke-direct {v1, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 9
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    rem-float/2addr v3, v6

    cmpg-float v3, v5, v3

    if-gez v3, :cond_3

    iget v3, v1, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/watabou/utils/Point;->x:I

    .line 10
    :cond_3
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    rem-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget v3, v1, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/watabou/utils/Point;->y:I

    .line 11
    :cond_4
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, v1, Lcom/watabou/utils/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    invoke-static {v0, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/watabou/utils/Point;->x:I

    .line 12
    iget v0, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, v1, Lcom/watabou/utils/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/watabou/utils/Point;->y:I

    move-object v0, v1

    .line 13
    :goto_1
    iget v1, v0, Lcom/watabou/utils/Point;->x:I

    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    .line 14
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 15
    new-instance v4, Lcom/watabou/utils/Point;

    invoke-direct {v4, v3}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    .line 16
    iget v5, v4, Lcom/watabou/utils/Point;->x:I

    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/watabou/utils/Point;->x:I

    goto :goto_3

    .line 17
    :cond_5
    iget v6, v4, Lcom/watabou/utils/Point;->y:I

    iget v7, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/watabou/utils/Point;->y:I

    goto :goto_3

    .line 18
    :cond_6
    iget v7, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v5, v7, :cond_7

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/watabou/utils/Point;->x:I

    goto :goto_3

    .line 19
    :cond_7
    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v6, v5, :cond_8

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/watabou/utils/Point;->y:I

    .line 20
    :cond_8
    :goto_3
    iget v5, v4, Lcom/watabou/utils/Point;->x:I

    const/4 v6, 0x0

    if-ge v5, v1, :cond_9

    :goto_4
    sub-int v5, v1, v5

    goto :goto_5

    :cond_9
    if-le v5, v1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    .line 21
    :goto_5
    iget v7, v4, Lcom/watabou/utils/Point;->y:I

    if-ge v7, v0, :cond_b

    :goto_6
    sub-int v6, v0, v7

    goto :goto_7

    :cond_b
    if-le v7, v0, :cond_c

    goto :goto_6

    .line 22
    :cond_c
    :goto_7
    iget v3, v3, Lcom/watabou/utils/Point;->x:I

    iget v7, p0, Lcom/watabou/utils/Rect;->left:I

    if-eq v3, v7, :cond_e

    iget v7, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v3, v7, :cond_d

    goto :goto_8

    .line 23
    :cond_d
    new-instance v3, Lcom/watabou/utils/Point;

    iget v7, v4, Lcom/watabou/utils/Point;->x:I

    iget v8, v4, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v8, v6

    invoke-direct {v3, v7, v8}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 24
    new-instance v6, Lcom/watabou/utils/Point;

    iget v7, v3, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v7, v5

    iget v5, v3, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v6, v7, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_9

    .line 25
    :cond_e
    :goto_8
    new-instance v3, Lcom/watabou/utils/Point;

    iget v7, v4, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v7, v5

    iget v5, v4, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v3, v7, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 26
    new-instance v5, Lcom/watabou/utils/Point;

    iget v7, v3, Lcom/watabou/utils/Point;->x:I

    iget v8, v3, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v8, v6

    invoke-direct {v5, v7, v8}, Lcom/watabou/utils/Point;-><init>(II)V

    move-object v6, v5

    :goto_9
    const/16 v5, 0xe

    .line 27
    invoke-static {p1, v4, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 28
    invoke-static {p1, v3, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    goto/16 :goto_2

    .line 29
    :cond_f
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 30
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_a

    :cond_10
    return-void
.end method
