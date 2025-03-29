.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/CaveRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;
.source "CaveRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 6

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p0, v1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3e800000    # 0.25f

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    mul-int v4, v4, v3

    int-to-float v3, v4

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 6
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->setupPatch(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;FIZ)V

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->cleanDiagonalEdges()V

    .line 8
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v1

    :goto_1
    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v2, v3, :cond_3

    .line 9
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v1

    :goto_2
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v3, v4, :cond_2

    .line 10
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    invoke-virtual {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v5

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_1

    .line 11
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, v4, v2

    add-int/2addr v4, v3

    .line 12
    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v0, v5, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
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
