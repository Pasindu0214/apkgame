.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SegmentedRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "SegmentedRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public final createWalls(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/watabou/utils/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_5

    .line 2
    invoke-virtual {p2}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/watabou/utils/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xa

    .line 3
    invoke-virtual {p2}, Lcom/watabou/utils/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Lcom/watabou/utils/Rect;->height()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-gt v2, v3, :cond_3

    invoke-virtual {p2}, Lcom/watabou/utils/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Lcom/watabou/utils/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v2, p2, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v4

    iget v3, p2, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v2

    .line 5
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v6, p2, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v7, v6, -0x1

    .line 6
    iget v8, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v9, v8, v2

    add-int/2addr v9, v7

    .line 7
    aget v7, v3, v9

    if-ne v7, v5, :cond_2

    iget v7, p2, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v7, v1

    mul-int v8, v8, v2

    add-int/2addr v8, v7

    .line 8
    aget v3, v3, v8

    if-ne v3, v5, :cond_2

    .line 9
    new-instance v0, Lcom/watabou/utils/Point;

    invoke-direct {v0, v6, v2}, Lcom/watabou/utils/Point;-><init>(II)V

    new-instance v3, Lcom/watabou/utils/Point;

    iget v6, p2, Lcom/watabou/utils/Rect;->right:I

    invoke-direct {v3, v6, v2}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-static {p1, v0, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 10
    iget v0, p2, Lcom/watabou/utils/Rect;->left:I

    iget v3, p2, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    .line 11
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v6, v2, v3

    add-int/2addr v6, v0

    .line 12
    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v1, v7, v6

    add-int/lit8 v0, v0, 0x1

    mul-int v3, v3, v2

    add-int/2addr v3, v0

    .line 13
    aput v1, v7, v3

    .line 14
    new-instance v0, Lcom/watabou/utils/Rect;

    iget v3, p2, Lcom/watabou/utils/Rect;->left:I

    iget v6, p2, Lcom/watabou/utils/Rect;->top:I

    iget v7, p2, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v8, v2, -0x1

    invoke-direct {v0, v3, v6, v7, v8}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SegmentedRoom;->createWalls(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;)V

    .line 15
    new-instance v0, Lcom/watabou/utils/Rect;

    iget v3, p2, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    iget v6, p2, Lcom/watabou/utils/Rect;->right:I

    iget v7, p2, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v0, v3, v2, v6, v7}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SegmentedRoom;->createWalls(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;)V

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    goto :goto_1

    .line 16
    :cond_3
    :goto_0
    iget v2, p2, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v2, v4

    iget v3, p2, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v2

    .line 17
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 18
    iget v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 19
    iget v7, p2, Lcom/watabou/utils/Rect;->top:I

    const/4 v8, -0x1

    invoke-static {v7, v8, v6, v2}, La/a/a/a/a;->a(IIII)I

    move-result v8

    aget v8, v3, v8

    if-ne v8, v5, :cond_4

    .line 20
    iget v8, p2, Lcom/watabou/utils/Rect;->bottom:I

    invoke-static {v8, v1, v6, v2}, La/a/a/a/a;->a(IIII)I

    move-result v6

    aget v3, v3, v6

    if-ne v3, v5, :cond_4

    .line 21
    new-instance v0, Lcom/watabou/utils/Point;

    invoke-direct {v0, v2, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    new-instance v3, Lcom/watabou/utils/Point;

    iget v6, p2, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v3, v2, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-static {p1, v0, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 22
    iget v0, p2, Lcom/watabou/utils/Rect;->top:I

    iget v3, p2, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    .line 23
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v6, v0, v3

    add-int/2addr v6, v2

    .line 24
    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v1, v7, v6

    const/4 v6, 0x1

    invoke-static {v0, v6, v3, v2}, La/a/a/a/a;->a(IIII)I

    move-result v0

    .line 25
    aput v1, v7, v0

    .line 26
    new-instance v0, Lcom/watabou/utils/Rect;

    iget v3, p2, Lcom/watabou/utils/Rect;->left:I

    iget v6, p2, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v7, v2, -0x1

    iget v8, p2, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v0, v3, v6, v7, v8}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SegmentedRoom;->createWalls(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;)V

    .line 27
    new-instance v0, Lcom/watabou/utils/Rect;

    add-int/lit8 v2, v2, 0x1

    iget v3, p2, Lcom/watabou/utils/Rect;->top:I

    iget v6, p2, Lcom/watabou/utils/Rect;->right:I

    iget v7, p2, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SegmentedRoom;->createWalls(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;)V

    const/4 v0, 0x0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_3

    :cond_5
    :goto_1
    return-void
.end method

.method public minHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->minDim:I

    const/4 v1, 0x7

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

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
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 6

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 5
    invoke-static {p1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/watabou/utils/Rect;

    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SegmentedRoom;->createWalls(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;)V

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
