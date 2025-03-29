.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StudyRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "StudyRoom.java"


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
    .locals 11

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    const/16 v1, 0x1b

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/16 v1, 0xe

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 5
    invoke-static {p1, p0, v4, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    .line 6
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    if-ne v1, v3, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    div-int/2addr v1, v2

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    div-int/lit8 v10, v3, 0x2

    .line 10
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v4, v3, 0x3

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v5, v3, 0x3

    const/4 v7, 0x1

    const/16 v8, 0x1b

    move-object v3, p1

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 11
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v5, v3, 0x3

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v6, v3, 0x3

    const/16 v9, 0x1b

    move-object v4, p1

    move v8, v10

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 12
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v4, v3, 0x3

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v2

    add-int/lit8 v5, v3, -0x1

    const/16 v8, 0x1b

    move-object v3, p1

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 13
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v5, v3, 0x3

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v2

    sub-int v6, v3, v10

    move-object v4, p1

    move v8, v10

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 14
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v2

    sub-int v4, v3, v1

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v5, v3, 0x3

    const/16 v8, 0x1b

    move-object v3, p1

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 15
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v2

    add-int/lit8 v5, v3, -0x1

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v6, v3, 0x3

    move-object v4, p1

    move v8, v10

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 16
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v2

    sub-int v4, v3, v1

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v2

    add-int/lit8 v5, v3, -0x1

    const/16 v8, 0x1b

    move-object v3, p1

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 17
    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v2

    add-int/lit8 v5, v1, -0x1

    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v1, v2

    sub-int v6, v1, v10

    move-object v4, p1

    move v8, v10

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    const/16 v3, 0xb

    .line 19
    invoke-static {p1, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 20
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findPrizeItem()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 21
    iget v0, v1, Lcom/watabou/utils/Point;->x:I

    iget v1, v1, Lcom/watabou/utils/Point;->y:I

    .line 22
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    .line 23
    invoke-virtual {p1, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    goto :goto_2

    :cond_3
    new-array v3, v2, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v4, 0x0

    .line 24
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v5, v3, v4

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v4, v3, v0

    .line 25
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    aget-object v0, v3, v0

    .line 26
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    iget v1, v1, Lcom/watabou/utils/Point;->y:I

    .line 27
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    :goto_2
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
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
