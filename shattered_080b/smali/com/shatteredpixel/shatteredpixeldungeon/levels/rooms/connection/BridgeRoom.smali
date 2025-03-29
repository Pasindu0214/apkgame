.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/BridgeRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;
.source "BridgeRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;->paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 5
    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/BridgeRoom;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingBridgeRoom;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/WalkwayRoom;

    if-eqz v3, :cond_1

    .line 6
    :cond_2
    invoke-virtual {p0, v2}, Lcom/watabou/utils/Rect;->intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget v3, v2, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/watabou/utils/Rect;->left:I

    .line 9
    iget v3, v2, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/watabou/utils/Rect;->right:I

    goto :goto_1

    .line 10
    :cond_3
    iget v3, v2, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/watabou/utils/Rect;->top:I

    .line 11
    iget v3, v2, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/watabou/utils/Rect;->bottom:I

    .line 12
    :goto_1
    iget v5, v2, Lcom/watabou/utils/Rect;->left:I

    iget v6, v2, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->width()I

    move-result v3

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->height()I

    move-result v2

    add-int/lit8 v8, v2, 0x1

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_0

    :cond_4
    return-void
.end method
