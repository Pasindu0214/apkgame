.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingBridgeRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingTunnelRoom;
.source "RingBridgeRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingTunnelRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingTunnelRoom;->paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->neigbours:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 4
    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/BridgeRoom;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingBridgeRoom;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/WalkwayRoom;

    if-eqz v3, :cond_0

    .line 5
    :cond_1
    invoke-virtual {p0, v2}, Lcom/watabou/utils/Rect;->intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/watabou/utils/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget v3, v2, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/watabou/utils/Rect;->left:I

    .line 8
    iget v3, v2, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/watabou/utils/Rect;->right:I

    goto :goto_1

    .line 9
    :cond_2
    iget v3, v2, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/watabou/utils/Rect;->top:I

    .line 10
    iget v3, v2, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/watabou/utils/Rect;->bottom:I

    .line 11
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

    :cond_3
    return-void
.end method
