.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/WalledGooRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;
.source "WalledGooRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public canPlaceWater(Lcom/watabou/utils/Point;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 12

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v1, 0x1

    const/16 v2, 0xe

    .line 2
    invoke-static {p1, p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x3

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v11, v4, 0x3

    .line 6
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v5, v4, 0x2

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v6, v4, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x4

    move-object v4, p1

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 7
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v6, v4, 0x2

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v7, v4, 0x2

    const/4 v10, 0x4

    move-object v5, p1

    move v9, v11

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 8
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v5, v4, 0x2

    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v6, v4, -0x2

    const/4 v9, 0x4

    move-object v4, p1

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 9
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v6, v4, 0x2

    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v4, v1

    sub-int v7, v4, v11

    move-object v5, p1

    move v9, v11

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 10
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v1

    sub-int v5, v4, v3

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v6, v4, 0x2

    const/4 v9, 0x4

    move-object v4, p1

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 11
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v6, v4, -0x2

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v7, v4, 0x2

    move-object v5, p1

    move v9, v11

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 12
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v1

    sub-int v5, v4, v3

    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v6, v4, -0x2

    const/4 v9, 0x4

    move-object v4, p1

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 13
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v6, v3, -0x2

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v1

    sub-int v7, v3, v11

    move-object v5, p1

    move v9, v11

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 14
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

    .line 15
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    .line 16
    :cond_0
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    div-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/lit8 v6, v4, -0x1

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    div-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/lit8 v7, v4, -0x2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    rem-int/2addr v3, v2

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    rem-int/2addr v3, v2

    add-int/lit8 v9, v3, 0x4

    const/16 v10, 0x1d

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 17
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    div-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/lit8 v6, v4, -0x2

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    div-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v1

    rem-int/2addr v1, v2

    add-int/lit8 v8, v1, 0x4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v0

    rem-int/2addr v0, v2

    add-int/lit8 v9, v0, 0x2

    invoke-static/range {v5 .. v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 18
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
