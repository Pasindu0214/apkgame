.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "SewerPipeRoom.java"


# instance fields
.field public corners:[Lcom/watabou/utils/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public canConnect(Lcom/watabou/utils/Point;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->canConnect(Lcom/watabou/utils/Point;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v2, v1

    if-le v0, v2, :cond_0

    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_2

    :cond_0
    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    iget v0, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public canPlaceWater(Lcom/watabou/utils/Point;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final fillBetweenPoints(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V
    .locals 9

    .line 1
    iget v0, p2, Lcom/watabou/utils/Point;->y:I

    iget v1, p3, Lcom/watabou/utils/Point;->y:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p2, Lcom/watabou/utils/Point;->x:I

    iget v1, p3, Lcom/watabou/utils/Point;->x:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->corners:[Lcom/watabou/utils/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/watabou/utils/Point;

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->corners:[Lcom/watabou/utils/Point;

    .line 4
    new-instance v3, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v2

    invoke-direct {v3, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v3, v0, v1

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->corners:[Lcom/watabou/utils/Point;

    new-instance v3, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v2

    invoke-direct {v3, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->corners:[Lcom/watabou/utils/Point;

    new-instance v3, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v5, v2

    invoke-direct {v3, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v3, v0, v2

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->corners:[Lcom/watabou/utils/Point;

    const/4 v3, 0x3

    new-instance v4, Lcom/watabou/utils/Point;

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v6, v2

    invoke-direct {v4, v5, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    aput-object v4, v0, v3

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->corners:[Lcom/watabou/utils/Point;

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    .line 9
    iget v5, v4, Lcom/watabou/utils/Point;->x:I

    iget v6, p2, Lcom/watabou/utils/Point;->x:I

    if-eq v5, v6, :cond_2

    iget v5, v4, Lcom/watabou/utils/Point;->y:I

    iget v6, p2, Lcom/watabou/utils/Point;->y:I

    if-ne v5, v6, :cond_3

    :cond_2
    iget v5, v4, Lcom/watabou/utils/Point;->x:I

    iget v6, p3, Lcom/watabou/utils/Point;->x:I

    if-eq v5, v6, :cond_4

    iget v5, v4, Lcom/watabou/utils/Point;->y:I

    iget v6, p3, Lcom/watabou/utils/Point;->y:I

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_4
    :goto_1
    invoke-static {p1, p2, v4, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 11
    invoke-static {p1, v4, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    return-void

    .line 12
    :cond_5
    iget v0, p2, Lcom/watabou/utils/Point;->y:I

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v3, v1, 0x2

    if-eq v0, v3, :cond_8

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v0

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    iget v3, p3, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    iget v3, p2, Lcom/watabou/utils/Point;->y:I

    .line 14
    invoke-virtual {p0, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v0

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    iget v4, p3, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v3

    add-int/2addr v3, v0

    if-gt v1, v3, :cond_7

    .line 15
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v3, v1

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_3

    .line 16
    :cond_7
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v3, v1

    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_3

    .line 17
    :cond_8
    :goto_2
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    iget v1, p2, Lcom/watabou/utils/Point;->x:I

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v0

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    iget v3, p3, Lcom/watabou/utils/Point;->x:I

    invoke-virtual {p0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/watabou/utils/Rect;->right:I

    iget v3, p2, Lcom/watabou/utils/Point;->x:I

    .line 18
    invoke-virtual {p0, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v0

    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    iget v4, p3, Lcom/watabou/utils/Point;->x:I

    invoke-virtual {p0, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v3

    add-int/2addr v3, v0

    if-gt v1, v3, :cond_9

    .line 19
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    div-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_3

    .line 20
    :cond_9
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    div-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 21
    :goto_3
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->fillBetweenPoints(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 22
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->fillBetweenPoints(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    return-void

    .line 23
    :cond_a
    :goto_4
    iget v0, p2, Lcom/watabou/utils/Point;->x:I

    iget v1, p3, Lcom/watabou/utils/Point;->x:I

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p2, Lcom/watabou/utils/Point;->y:I

    iget v1, p3, Lcom/watabou/utils/Point;->y:I

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, p2, Lcom/watabou/utils/Point;->x:I

    iget v1, p3, Lcom/watabou/utils/Point;->x:I

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v0

    add-int/lit8 v6, v0, 0x2

    iget p2, p2, Lcom/watabou/utils/Point;->y:I

    iget p3, p3, Lcom/watabou/utils/Point;->y:I

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result p2

    add-int/lit8 v7, p2, 0x2

    move-object v3, p1

    move v8, p4

    .line 28
    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    return-void
.end method

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
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    .line 1
    invoke-static {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 2
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-gt v3, v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v3

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    iget v9, v8, Lcom/watabou/utils/Point;->x:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 5
    iget v8, v8, Lcom/watabou/utils/Point;->y:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    goto :goto_0

    .line 6
    :cond_1
    new-instance v3, Lcom/watabou/utils/Point;

    float-to-int v8, v6

    iget-object v9, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->size()I

    move-result v9

    div-int/2addr v8, v9

    float-to-int v9, v7

    iget-object v10, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    div-int/2addr v9, v10

    invoke-direct {v3, v8, v9}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 7
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    rem-float/2addr v6, v9

    cmpg-float v6, v8, v6

    if-gez v6, :cond_2

    iget v6, v3, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v6, v4

    iput v6, v3, Lcom/watabou/utils/Point;->x:I

    .line 8
    :cond_2
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v6

    rem-float/2addr v7, v9

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, v3, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v6, v4

    iput v6, v3, Lcom/watabou/utils/Point;->y:I

    .line 9
    :cond_3
    iget v6, v0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v6, v5

    int-to-float v6, v6

    iget v7, v3, Lcom/watabou/utils/Point;->x:I

    int-to-float v7, v7

    iget v8, v0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    invoke-static {v6, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Lcom/watabou/utils/Point;->x:I

    .line 10
    iget v6, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v6, v5

    int-to-float v6, v6

    iget v7, v3, Lcom/watabou/utils/Point;->y:I

    int-to-float v7, v7

    iget v8, v0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    invoke-static {v6, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Lcom/watabou/utils/Point;->y:I

    .line 11
    :goto_1
    iget v6, v3, Lcom/watabou/utils/Point;->x:I

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    .line 12
    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    const/16 v8, 0x1d

    const/4 v9, 0x0

    if-gt v7, v5, :cond_e

    .line 13
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 14
    new-instance v10, Lcom/watabou/utils/Point;

    invoke-direct {v10, v7}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    .line 15
    iget v11, v10, Lcom/watabou/utils/Point;->x:I

    iget v12, v0, Lcom/watabou/utils/Rect;->left:I

    if-ne v11, v12, :cond_4

    add-int/lit8 v11, v11, 0x2

    iput v11, v10, Lcom/watabou/utils/Point;->x:I

    goto :goto_3

    .line 16
    :cond_4
    iget v12, v10, Lcom/watabou/utils/Point;->y:I

    iget v13, v0, Lcom/watabou/utils/Rect;->top:I

    if-ne v12, v13, :cond_5

    add-int/lit8 v12, v12, 0x2

    iput v12, v10, Lcom/watabou/utils/Point;->y:I

    goto :goto_3

    .line 17
    :cond_5
    iget v13, v0, Lcom/watabou/utils/Rect;->right:I

    if-ne v11, v13, :cond_6

    add-int/lit8 v11, v11, -0x2

    iput v11, v10, Lcom/watabou/utils/Point;->x:I

    goto :goto_3

    .line 18
    :cond_6
    iget v11, v0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v12, v11, :cond_7

    add-int/lit8 v12, v12, -0x2

    iput v12, v10, Lcom/watabou/utils/Point;->y:I

    .line 19
    :cond_7
    :goto_3
    iget v11, v10, Lcom/watabou/utils/Point;->x:I

    if-ge v11, v6, :cond_8

    :goto_4
    sub-int v11, v6, v11

    goto :goto_5

    :cond_8
    if-le v11, v6, :cond_9

    goto :goto_4

    :cond_9
    const/4 v11, 0x0

    .line 20
    :goto_5
    iget v12, v10, Lcom/watabou/utils/Point;->y:I

    if-ge v12, v3, :cond_a

    :goto_6
    sub-int v12, v3, v12

    goto :goto_7

    :cond_a
    if-le v12, v3, :cond_b

    goto :goto_6

    :cond_b
    const/4 v12, 0x0

    .line 21
    :goto_7
    iget v7, v7, Lcom/watabou/utils/Point;->x:I

    iget v13, v0, Lcom/watabou/utils/Rect;->left:I

    if-eq v7, v13, :cond_d

    iget v13, v0, Lcom/watabou/utils/Rect;->right:I

    if-ne v7, v13, :cond_c

    goto :goto_8

    .line 22
    :cond_c
    new-instance v7, Lcom/watabou/utils/Point;

    iget v13, v10, Lcom/watabou/utils/Point;->x:I

    iget v14, v10, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v14, v12

    invoke-direct {v7, v13, v14}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 23
    new-instance v12, Lcom/watabou/utils/Point;

    iget v13, v7, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v13, v11

    iget v11, v7, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v12, v13, v11}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_9

    .line 24
    :cond_d
    :goto_8
    new-instance v7, Lcom/watabou/utils/Point;

    iget v13, v10, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v13, v11

    iget v11, v10, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v7, v13, v11}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 25
    new-instance v11, Lcom/watabou/utils/Point;

    iget v13, v7, Lcom/watabou/utils/Point;->x:I

    iget v14, v7, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v14, v12

    invoke-direct {v11, v13, v14}, Lcom/watabou/utils/Point;-><init>(II)V

    move-object v12, v11

    .line 26
    :goto_9
    invoke-static {v1, v10, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 27
    invoke-static {v1, v7, v12, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    goto/16 :goto_2

    .line 28
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/watabou/utils/Point;

    .line 30
    new-instance v7, Lcom/watabou/utils/Point;

    invoke-direct {v7, v6}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    .line 31
    iget v6, v7, Lcom/watabou/utils/Point;->y:I

    iget v10, v0, Lcom/watabou/utils/Rect;->top:I

    if-ne v6, v10, :cond_f

    add-int/lit8 v6, v6, 0x2

    .line 32
    iput v6, v7, Lcom/watabou/utils/Point;->y:I

    goto :goto_b

    .line 33
    :cond_f
    iget v10, v0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v6, v10, :cond_10

    add-int/lit8 v6, v6, -0x2

    .line 34
    iput v6, v7, Lcom/watabou/utils/Point;->y:I

    goto :goto_b

    .line 35
    :cond_10
    iget v6, v7, Lcom/watabou/utils/Point;->x:I

    iget v10, v0, Lcom/watabou/utils/Rect;->left:I

    if-ne v6, v10, :cond_11

    add-int/lit8 v6, v6, 0x2

    .line 36
    iput v6, v7, Lcom/watabou/utils/Point;->x:I

    goto :goto_b

    :cond_11
    add-int/lit8 v6, v6, -0x2

    .line 37
    iput v6, v7, Lcom/watabou/utils/Point;->x:I

    .line 38
    :goto_b
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 39
    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object v7, v6

    .line 41
    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_18

    const v10, 0x7fffffff

    .line 42
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_13
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/watabou/utils/Point;

    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/watabou/utils/Point;

    .line 44
    iget v15, v12, Lcom/watabou/utils/Point;->y:I

    iget v9, v14, Lcom/watabou/utils/Point;->y:I

    if-eq v15, v9, :cond_15

    iget v9, v12, Lcom/watabou/utils/Point;->x:I

    iget v15, v14, Lcom/watabou/utils/Point;->x:I

    if-ne v9, v15, :cond_14

    goto :goto_e

    .line 45
    :cond_14
    iget v15, v0, Lcom/watabou/utils/Rect;->left:I

    .line 46
    invoke-virtual {v0, v15, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v9

    iget v15, v0, Lcom/watabou/utils/Rect;->left:I

    iget v4, v14, Lcom/watabou/utils/Point;->x:I

    invoke-virtual {v0, v15, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v4

    add-int/2addr v4, v9

    iget v9, v0, Lcom/watabou/utils/Rect;->right:I

    iget v15, v12, Lcom/watabou/utils/Point;->x:I

    .line 47
    invoke-virtual {v0, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v9

    iget v15, v0, Lcom/watabou/utils/Rect;->right:I

    iget v2, v14, Lcom/watabou/utils/Point;->x:I

    invoke-virtual {v0, v15, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v2

    add-int/2addr v2, v9

    .line 48
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, v0, Lcom/watabou/utils/Rect;->top:I

    iget v9, v12, Lcom/watabou/utils/Point;->y:I

    .line 49
    invoke-virtual {v0, v4, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v4

    iget v9, v0, Lcom/watabou/utils/Rect;->top:I

    iget v15, v14, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {v0, v9, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v9

    add-int/2addr v9, v4

    iget v4, v0, Lcom/watabou/utils/Rect;->bottom:I

    iget v15, v12, Lcom/watabou/utils/Point;->y:I

    .line 50
    invoke-virtual {v0, v4, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v4

    iget v15, v0, Lcom/watabou/utils/Rect;->bottom:I

    iget v8, v14, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {v0, v15, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v8

    add-int/2addr v8, v4

    .line 51
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 52
    :cond_15
    :goto_e
    iget v2, v12, Lcom/watabou/utils/Point;->x:I

    iget v4, v14, Lcom/watabou/utils/Point;->x:I

    invoke-virtual {v0, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v2

    iget v4, v12, Lcom/watabou/utils/Point;->y:I

    iget v8, v14, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {v0, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->spaceBetween(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_f
    if-ge v4, v10, :cond_16

    move v10, v4

    move-object v6, v12

    move-object v7, v14

    :cond_16
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/16 v8, 0x1d

    const/4 v9, 0x0

    goto/16 :goto_d

    :cond_17
    const/16 v2, 0x1d

    .line 53
    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SewerPipeRoom;->fillBetweenPoints(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 54
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    const/4 v4, 0x1

    const/16 v8, 0x1d

    const/4 v9, 0x0

    goto/16 :goto_c

    .line 56
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/watabou/utils/Point;

    .line 57
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v3

    .line 58
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v4, v3

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_1a

    .line 59
    sget-object v4, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v6, v4

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v6, :cond_1a

    aget v8, v4, v7

    .line 60
    iget-object v9, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    add-int/2addr v8, v3

    aget v10, v9, v8

    const/4 v11, 0x4

    if-ne v10, v11, :cond_19

    const/4 v10, 0x1

    .line 61
    aput v10, v9, v8

    goto :goto_12

    :cond_19
    const/4 v10, 0x1

    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_1a
    const/4 v10, 0x1

    const/4 v11, 0x4

    goto :goto_10

    .line 62
    :cond_1b
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 63
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_13

    :cond_1c
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
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final spaceBetween(II)I
    .locals 0

    sub-int/2addr p1, p2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method
