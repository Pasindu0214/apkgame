.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/ThinPillarsGooRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;
.source "ThinPillarsGooRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 12

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v1, 0x1

    const/16 v2, 0x1d

    .line 2
    invoke-static {p1, p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v1

    const/16 v2, 0xe

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    rem-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    rem-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    const/16 v11, 0xc

    if-ge v4, v11, :cond_2

    .line 6
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/2addr v5, v3

    add-int v6, v5, v4

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v7, v4, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x4

    move-object v5, p1

    move v8, v1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 7
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/2addr v5, v3

    add-int v6, v5, v4

    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v7, v4, -0x2

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_2

    .line 8
    :cond_2
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/2addr v5, v3

    add-int v6, v5, v4

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v7, v4, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x4

    move-object v5, p1

    move v8, v1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 9
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/2addr v5, v3

    add-int v6, v5, v4

    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v7, v4, -0x3

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v1

    if-ge v1, v11, :cond_3

    .line 11
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v6, v1, 0x2

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/2addr v4, v3

    add-int v7, v4, v1

    const/4 v8, 0x1

    const/4 v10, 0x4

    move-object v5, p1

    move v9, v0

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 12
    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v6, v1, -0x2

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/2addr v4, v3

    add-int v7, v4, v1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_3

    .line 13
    :cond_3
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v6, v1, 0x3

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/2addr v4, v3

    add-int v7, v4, v1

    const/4 v8, 0x1

    const/4 v10, 0x4

    move-object v5, p1

    move v9, v0

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 14
    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v6, v1, -0x3

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/2addr v4, v3

    add-int v7, v4, v1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 15
    :goto_3
    invoke-static {p1, p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->fillPerimiterPaths(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;I)V

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 17
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;->setupGooNest(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 19
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 21
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
