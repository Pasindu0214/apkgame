.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/DiamondGooRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;
.source "DiamondGooRoom.java"


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
    .locals 10

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p0, v1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fillDiamond(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 5
    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 6
    new-instance v4, Lcom/watabou/utils/Point;

    invoke-direct {v4, v1, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_1

    .line 7
    :cond_0
    iget v5, v3, Lcom/watabou/utils/Point;->y:I

    iget v7, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v5, v7, :cond_1

    .line 8
    new-instance v4, Lcom/watabou/utils/Point;

    invoke-direct {v4, v6, v1}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_1

    .line 9
    :cond_1
    iget v5, p0, Lcom/watabou/utils/Rect;->right:I

    const/4 v7, -0x1

    if-ne v4, v5, :cond_2

    .line 10
    new-instance v4, Lcom/watabou/utils/Point;

    invoke-direct {v4, v7, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_1

    .line 11
    :cond_2
    new-instance v4, Lcom/watabou/utils/Point;

    invoke-direct {v4, v6, v7}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 12
    :goto_1
    new-instance v5, Lcom/watabou/utils/Point;

    invoke-direct {v5, v3}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    :cond_3
    const/16 v3, 0xe

    .line 13
    invoke-static {p1, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 14
    iget v3, v5, Lcom/watabou/utils/Point;->x:I

    iget v6, v4, Lcom/watabou/utils/Point;->x:I

    add-int/2addr v3, v6

    iput v3, v5, Lcom/watabou/utils/Point;->x:I

    .line 15
    iget v3, v5, Lcom/watabou/utils/Point;->y:I

    iget v6, v4, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v3, v6

    iput v3, v5, Lcom/watabou/utils/Point;->y:I

    .line 16
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v0, :cond_3

    goto :goto_0

    .line 17
    :cond_4
    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    add-int/lit8 v5, v3, -0x1

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v8, v2, 0x4

    const/16 v9, 0x1d

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 18
    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    add-int/lit8 v5, v3, -0x2

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v7, v1, 0x4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v8, v0, 0x2

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/GooBossRoom;->setupGooNest(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 20
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 22
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
