.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/BurnedRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;
.source "BurnedRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public canPlaceGrass(Lcom/watabou/utils/Point;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v1, p1, Lcom/watabou/utils/Point;->x:I

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result p1

    aget-boolean p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canPlaceTrap(Lcom/watabou/utils/Point;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v1, p1, Lcom/watabou/utils/Point;->x:I

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result p1

    aget-boolean p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canPlaceWater(Lcom/watabou/utils/Point;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    iget v1, p1, Lcom/watabou/utils/Point;->x:I

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    invoke-virtual {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result p1

    aget-boolean p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

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
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fbd70a4    # 1.48f

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    const v5, 0x3cf5c28f    # 0.03f

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 6
    invoke-virtual {p0, p1, v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->setupPatch(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;FIZ)V

    .line 7
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v1

    :goto_1
    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v2, v5, :cond_7

    .line 8
    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v5, v1

    :goto_2
    iget v6, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v5, v6, :cond_6

    .line 9
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->patch:[Z

    invoke-virtual {p0, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/PatchRoom;->xyToPatchCoords(II)I

    move-result v7

    aget-boolean v6, v6, v7

    if-nez v6, :cond_1

    goto :goto_4

    .line 10
    :cond_1
    iget v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v6, v6, v2

    add-int/2addr v6, v5

    const/4 v7, 0x5

    .line 11
    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v7

    if-eq v7, v1, :cond_5

    if-eq v7, v4, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    if-eq v7, v0, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/16 v7, 0x13

    .line 12
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;-><init>()V

    .line 13
    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    iput-boolean v3, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    .line 14
    invoke-virtual {p1, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    goto :goto_3

    :cond_3
    const/16 v7, 0x11

    .line 15
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;-><init>()V

    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->hide()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {p1, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    goto :goto_3

    :cond_4
    const/16 v7, 0x12

    .line 16
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;-><init>()V

    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {p1, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    goto :goto_3

    :cond_5
    const/16 v7, 0x9

    .line 17
    :goto_3
    iget-object v8, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v7, v8, v6

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
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
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
