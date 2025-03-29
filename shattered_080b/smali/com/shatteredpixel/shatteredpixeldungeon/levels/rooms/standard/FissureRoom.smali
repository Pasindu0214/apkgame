.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/FissureRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "FissureRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 8

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 5
    invoke-virtual {p0}, Lcom/watabou/utils/Rect;->square()I

    move-result v0

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v0

    .line 7
    iget v1, v0, Lcom/watabou/utils/Point;->x:I

    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    .line 8
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v0, v0, v3

    add-int/2addr v0, v1

    .line 9
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v2, p1, v0

    goto :goto_3

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    rem-float/2addr v0, v1

    add-int/lit8 v1, v3, -0x1

    int-to-float v1, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v1, v4

    add-float/2addr v1, v0

    int-to-float v0, v3

    div-float/2addr v1, v0

    .line 13
    iget v0, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    :goto_1
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    if-gt v0, v4, :cond_5

    .line 14
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v4, v4, 0x2

    :goto_2
    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v5, v5, -0x2

    if-gt v4, v5, :cond_4

    .line 15
    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 16
    iget v6, p0, Lcom/watabou/utils/Rect;->left:I

    sub-int v6, v4, v6

    iget v7, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-gt v7, v3, :cond_2

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_3

    .line 19
    :cond_2
    iget v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v0

    add-int/2addr v5, v4

    .line 20
    iget-object v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v2, v6, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_3
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
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
