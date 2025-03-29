.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlatformRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "PlatformRoom.java"


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

    const/4 v1, 0x6

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

    const/4 v1, 0x6

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

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Lcom/watabou/utils/Rect;

    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v7, v4

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlatformRoom;->splitPlatforms(Lcom/watabou/utils/Rect;Ljava/util/ArrayList;)V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/utils/Rect;

    .line 6
    iget v6, v2, Lcom/watabou/utils/Rect;->left:I

    iget v7, v2, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->width()I

    move-result v3

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->height()I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    const/16 v10, 0xe

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    const/16 v2, 0xe

    .line 9
    invoke-static {p1, p0, v1, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    goto :goto_1

    :cond_1
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

.method public final splitPlatforms(Lcom/watabou/utils/Rect;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/watabou/utils/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/watabou/utils/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v0

    .line 2
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    add-int/lit8 v1, v1, -0x19

    int-to-float v1, v1

    const/high16 v2, 0x41300000    # 11.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->height()I

    move-result v1

    const/4 v2, 0x2

    if-gt v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/watabou/utils/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p1, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v0, v2

    iget v1, p1, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    .line 6
    new-instance v1, Lcom/watabou/utils/Rect;

    iget v2, p1, Lcom/watabou/utils/Rect;->left:I

    iget v3, p1, Lcom/watabou/utils/Rect;->top:I

    iget v4, p1, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v5, v0, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlatformRoom;->splitPlatforms(Lcom/watabou/utils/Rect;Ljava/util/ArrayList;)V

    .line 7
    new-instance v1, Lcom/watabou/utils/Rect;

    iget v2, p1, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p1, Lcom/watabou/utils/Rect;->right:I

    iget v4, p1, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlatformRoom;->splitPlatforms(Lcom/watabou/utils/Rect;Ljava/util/ArrayList;)V

    .line 8
    iget v1, p1, Lcom/watabou/utils/Rect;->left:I

    iget p1, p1, Lcom/watabou/utils/Rect;->right:I

    invoke-static {v1, p1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p1

    .line 9
    new-instance v1, Lcom/watabou/utils/Rect;

    invoke-direct {v1, p1, v5, p1, v0}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget v0, p1, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v0, v2

    iget v1, p1, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    .line 11
    new-instance v1, Lcom/watabou/utils/Rect;

    iget v2, p1, Lcom/watabou/utils/Rect;->left:I

    iget v3, p1, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v4, v0, -0x1

    iget v5, p1, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlatformRoom;->splitPlatforms(Lcom/watabou/utils/Rect;Ljava/util/ArrayList;)V

    .line 12
    new-instance v1, Lcom/watabou/utils/Rect;

    add-int/lit8 v0, v0, 0x1

    iget v2, p1, Lcom/watabou/utils/Rect;->top:I

    iget v3, p1, Lcom/watabou/utils/Rect;->right:I

    iget v5, p1, Lcom/watabou/utils/Rect;->bottom:I

    invoke-direct {v1, v0, v2, v3, v5}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PlatformRoom;->splitPlatforms(Lcom/watabou/utils/Rect;Ljava/util/ArrayList;)V

    .line 13
    iget v1, p1, Lcom/watabou/utils/Rect;->top:I

    iget p1, p1, Lcom/watabou/utils/Rect;->bottom:I

    invoke-static {v1, p1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p1

    .line 14
    new-instance v1, Lcom/watabou/utils/Rect;

    invoke-direct {v1, v4, p1, v0, p1}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
