.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StripedRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "StripedRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 11

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

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->NORMAL:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    const/16 v2, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_3

    .line 5
    invoke-static {p1, p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget v0, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v0, v4

    :goto_1
    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v0, v1, :cond_5

    .line 8
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v1

    add-int/lit8 v8, v1, -0x2

    const/4 v9, 0x1

    const/16 v10, 0xf

    move-object v5, p1

    move v7, v0

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v0, v4

    :goto_3
    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v0, v1, :cond_5

    .line 10
    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v7, v1, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    add-int/lit8 v9, v1, -0x2

    const/16 v10, 0xf

    move-object v5, p1

    move v6, v0

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 11
    :cond_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    if-ne v0, v1, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v3

    div-int/2addr v0, v4

    const/4 v1, 0x1

    :goto_4
    if-gt v1, v0, :cond_5

    .line 13
    rem-int/lit8 v4, v1, 0x2

    if-ne v4, v3, :cond_4

    const/16 v4, 0xe

    goto :goto_5

    :cond_4
    const/16 v4, 0xf

    :goto_5
    invoke-static {p1, p0, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
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
