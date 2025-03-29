.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SkullsRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "SkullsRoom.java"


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
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x4

    .line 2
    invoke-static {p1, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x9

    if-lt v0, v4, :cond_0

    .line 3
    invoke-static {p1, p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fillEllipse(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 6
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 7
    iget v6, v5, Lcom/watabou/utils/Point;->x:I

    iget v7, p0, Lcom/watabou/utils/Rect;->left:I

    if-eq v6, v7, :cond_2

    iget v7, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v6, v7, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    div-int/2addr v6, v3

    invoke-static {p1, p0, v5, v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    div-int/2addr v6, v3

    invoke-static {p1, p0, v5, v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    rem-int/2addr v4, v3

    const/4 v5, 0x0

    if-ne v4, v2, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 11
    :goto_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v6

    rem-int/2addr v6, v3

    if-ne v6, v2, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    const/16 v7, 0xc

    if-lt v0, v7, :cond_6

    const/4 v0, 0x5

    const/16 v2, 0x19

    .line 12
    invoke-static {p1, p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fillEllipse(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v0, 0x6

    .line 13
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fillEllipse(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    goto :goto_9

    .line 14
    :cond_6
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    .line 15
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v1

    div-int/2addr v1, v3

    add-int/2addr v1, v0

    const/4 v0, -0x1

    if-eqz v4, :cond_7

    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    const/4 v7, -0x1

    :goto_5
    add-int v9, v1, v7

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    .line 16
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v7

    div-int/2addr v7, v3

    add-int/2addr v7, v1

    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    const/4 v5, -0x1

    :goto_6
    add-int v10, v7, v5

    if-eqz v4, :cond_9

    const/4 v11, 0x1

    goto :goto_7

    :cond_9
    const/4 v11, 0x2

    :goto_7
    if-eqz v6, :cond_a

    const/4 v12, 0x1

    goto :goto_8

    :cond_a
    const/4 v12, 0x2

    :goto_8
    const/16 v13, 0x19

    move-object v8, p1

    .line 17
    invoke-static/range {v8 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    :goto_9
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
