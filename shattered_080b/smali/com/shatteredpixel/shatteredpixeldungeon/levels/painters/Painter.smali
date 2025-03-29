.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;
.super Ljava/lang/Object;
.source "Painter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;
    .locals 5

    .line 1
    iget v0, p2, Lcom/watabou/utils/Point;->x:I

    iget v1, p1, Lcom/watabou/utils/Rect;->left:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p1, Lcom/watabou/utils/Rect;->right:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    const/4 v2, -0x1

    goto :goto_1

    .line 3
    :cond_1
    iget v0, p2, Lcom/watabou/utils/Point;->y:I

    iget v1, p1, Lcom/watabou/utils/Rect;->top:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget p1, p1, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v0, p1, :cond_3

    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move p1, v2

    const/4 v2, 0x0

    .line 5
    :goto_1
    new-instance v0, Lcom/watabou/utils/Point;

    invoke-direct {v0, p2}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    .line 6
    iget p2, v0, Lcom/watabou/utils/Point;->x:I

    add-int/2addr p2, v2

    iput p2, v0, Lcom/watabou/utils/Point;->x:I

    .line 7
    iget p2, v0, Lcom/watabou/utils/Point;->y:I

    add-int/2addr p2, p1

    iput p2, v0, Lcom/watabou/utils/Point;->y:I

    :goto_2
    if-ge v4, p3, :cond_5

    if-eq p4, v3, :cond_4

    .line 8
    invoke-static {p0, v0, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 9
    :cond_4
    iget p2, v0, Lcom/watabou/utils/Point;->x:I

    add-int/2addr p2, v2

    iput p2, v0, Lcom/watabou/utils/Point;->x:I

    .line 10
    iget p2, v0, Lcom/watabou/utils/Point;->y:I

    add-int/2addr p2, p1

    iput p2, v0, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public static drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    int-to-float v1, v0

    .line 2
    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    int-to-float v2, p1

    .line 3
    iget v3, p2, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    .line 4
    iget v3, p2, Lcom/watabou/utils/Point;->y:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr p1, v4

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v0, v4

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v0, v4

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr p1, v4

    .line 10
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 11
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v6

    add-int/2addr v5, v4

    .line 12
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput p3, v4, v5

    :goto_2
    if-eqz v3, :cond_2

    .line 13
    iget v4, p2, Lcom/watabou/utils/Point;->x:I

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_3

    :cond_2
    if-nez v3, :cond_4

    iget v4, p2, Lcom/watabou/utils/Point;->y:I

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_4

    :cond_3
    add-float/2addr v1, v0

    add-float/2addr v2, p1

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 15
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v6

    add-int/2addr v5, v4

    .line 16
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput p3, v4, v5

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V
    .locals 4

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, p2, v0

    add-int/2addr v1, p1

    move p1, p2

    :goto_0
    add-int v2, p2, p4

    if-ge p1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    add-int v3, v1, p3

    invoke-static {v2, v1, v3, p5}, Ljava/util/Arrays;->fill([IIII)V

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V
    .locals 6

    .line 1
    iget v1, p1, Lcom/watabou/utils/Rect;->left:I

    iget v2, p1, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    return-void
.end method

.method public static fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V
    .locals 7

    .line 2
    iget v0, p1, Lcom/watabou/utils/Rect;->left:I

    add-int v2, v0, p2

    iget v0, p1, Lcom/watabou/utils/Rect;->top:I

    add-int v3, v0, p2

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    mul-int/lit8 p2, p2, 0x2

    sub-int v4, v0, p2

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->height()I

    move-result p1

    sub-int v5, p1, p2

    move-object v1, p0

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    return-void
.end method

.method public static fillDiamond(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V
    .locals 11

    .line 1
    iget v0, p1, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v0, p2

    iget v1, p1, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v1, p2

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->width()I

    move-result v2

    const/4 v3, 0x2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v2, p2

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->height()I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p2, p1, -0x2

    .line 2
    rem-int/lit8 v4, p1, 0x2

    sub-int/2addr p2, v4

    sub-int p2, v2, p2

    .line 3
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    :goto_0
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v4, 0x0

    :goto_1
    if-gt v4, p1, :cond_2

    sub-int v5, v2, p2

    .line 4
    div-int/2addr v5, v3

    add-int v6, v5, v0

    add-int v7, v1, v4

    mul-int/lit8 v5, v4, 0x2

    sub-int v9, p1, v5

    move-object v5, p0

    move v8, p2

    move v10, p3

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    add-int/2addr p2, v3

    if-le p2, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static fillEllipse(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v5, v3

    int-to-float v3, v1

    div-float/2addr v3, v4

    float-to-double v3, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_1

    .line 2
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v8, v5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    int-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v3, v3

    mul-double v8, v8, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v5, v5

    div-double/2addr v8, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v8, v12, v8

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v10

    .line 4
    rem-int/lit8 v14, v1, 0x2

    if-nez v14, :cond_0

    div-double/2addr v8, v10

    .line 5
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    goto :goto_1

    :cond_0
    div-double/2addr v8, v10

    .line 6
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    mul-double v8, v8, v10

    add-double/2addr v8, v12

    :goto_1
    double-to-int v8, v8

    sub-int v9, v1, v8

    .line 7
    div-int/lit8 v9, v9, 0x2

    add-int v9, v9, p1

    add-int v10, p2, v7

    .line 8
    iget v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v10, v10, v11

    add-int/2addr v10, v9

    .line 9
    iget-object v9, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    add-int/2addr v8, v10

    move/from16 v11, p5

    invoke-static {v9, v10, v8, v11}, Ljava/util/Arrays;->fill([IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fillEllipse(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/watabou/utils/Rect;->left:I

    add-int v2, v0, p2

    iget v0, p1, Lcom/watabou/utils/Rect;->top:I

    add-int v3, v0, p2

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    mul-int/lit8 p2, p2, 0x2

    sub-int v4, v0, p2

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->height()I

    move-result p1

    sub-int v5, p1, p2

    move-object v1, p0

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fillEllipse(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    return-void
.end method

.method public static set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int p1, p1, v1

    add-int/2addr p1, v0

    .line 3
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput p2, p0, p1

    return-void
.end method


# virtual methods
.method public abstract paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;",
            ">;)Z"
        }
    .end annotation
.end method
