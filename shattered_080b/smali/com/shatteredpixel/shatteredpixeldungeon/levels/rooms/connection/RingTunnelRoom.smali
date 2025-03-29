.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingTunnelRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;
.source "RingTunnelRoom.java"


# instance fields
.field public connSpace:Lcom/watabou/utils/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionSpace()Lcom/watabou/utils/Rect;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingTunnelRoom;->connSpace:Lcom/watabou/utils/Rect;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;->getDoorCenter()Lcom/watabou/utils/Point;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v0, Lcom/watabou/utils/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/watabou/utils/Point;->x:I

    .line 4
    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v0, Lcom/watabou/utils/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/watabou/utils/Point;->y:I

    .line 5
    new-instance v2, Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingTunnelRoom;->connSpace:Lcom/watabou/utils/Rect;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingTunnelRoom;->connSpace:Lcom/watabou/utils/Rect;

    return-object v0
.end method

.method public minHeight()I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x5

    .line 1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public minWidth()I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x5

    .line 1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/TunnelRoom;->paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tunnelTile()I

    move-result v5

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/connection/RingTunnelRoom;->getConnectionSpace()Lcom/watabou/utils/Rect;

    move-result-object v6

    .line 4
    iget v1, v6, Lcom/watabou/utils/Rect;->left:I

    iget v2, v6, Lcom/watabou/utils/Rect;->top:I

    const/4 v3, 0x3

    const/4 v4, 0x3

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 5
    iget v0, v6, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v8, v0, 0x1

    iget v0, v6, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v9, v0, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x4

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    return-void
.end method
