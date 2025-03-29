.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/ThickPillarsGooRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;
.source "ThickPillarsGooRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 13

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    const/16 v1, 0x1d

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    div-int/lit8 v0, v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    div-int/lit8 v1, v1, 0x2

    .line 5
    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v4, v2, 0x2

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v12, v1, 0x1

    const/4 v8, 0x4

    move-object v3, p1

    move v6, v2

    move v7, v12

    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 6
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v7, v3, 0x2

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x2

    sub-int v8, v3, v1

    const/4 v11, 0x4

    move-object v6, p1

    move v9, v2

    move v10, v12

    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 7
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    sub-int v7, v3, v0

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v8, v3, 0x2

    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 8
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    sub-int v7, v3, v0

    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x2

    sub-int v8, v0, v1

    invoke-static/range {v6 .. v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    const/16 v0, 0xe

    .line 9
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/PerimeterRoom;->fillPerimiterPaths(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;I)V

    .line 10
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

    .line 11
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;->setupGooNest(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 15
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
