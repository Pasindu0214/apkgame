.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PillarsRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "PillarsRoom.java"


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
    .locals 12

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

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x2

    if-eq v1, v2, :cond_3

    .line 6
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0xc

    if-lt v1, v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, -0x6

    add-int/lit8 v4, v2, 0x1

    .line 7
    div-int/2addr v1, v4

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    int-to-float v4, v4

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v6

    sub-int/2addr v6, v5

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    int-to-float v3, v6

    .line 10
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 11
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v6

    mul-float v6, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float v11, v6, v5

    .line 12
    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v5, v0

    add-int/2addr v5, v2

    mul-float v4, v4, v11

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v6, v5

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v0

    add-int v7, v5, v2

    const/4 v10, 0x4

    move-object v5, p1

    move v8, v1

    move v9, v1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 13
    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v5, v1

    sub-int v6, v5, v2

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v0

    add-int/2addr v5, v2

    mul-float v11, v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v7, v3, v5

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 14
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v6, v3, v4

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v1

    sub-int v7, v3, v2

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 15
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v0

    add-int v6, v3, v2

    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v7, v0, v2

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_5

    :cond_3
    :goto_2
    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    const/4 v2, 0x2

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v1, v1, -0x3

    .line 16
    div-int/2addr v1, v3

    sub-int/2addr v1, v2

    .line 17
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_5

    .line 18
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v3

    .line 19
    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    goto :goto_4

    .line 20
    :cond_5
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 21
    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v4

    :goto_4
    move v2, v4

    const/4 v9, 0x4

    move-object v4, p1

    move v5, v3

    move v6, v2

    move v7, v1

    move v8, v1

    .line 22
    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 23
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    sub-int/2addr v3, v5

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    sub-int v5, v4, v3

    .line 24
    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    sub-int v6, v3, v2

    move-object v4, p1

    .line 25
    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    :goto_5
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
