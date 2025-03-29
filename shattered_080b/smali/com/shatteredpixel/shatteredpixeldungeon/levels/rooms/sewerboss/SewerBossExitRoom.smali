.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ExitRoom;
.source "SewerBossExitRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom$SewerExitOverhang;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom$SewerExit;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ExitRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public minHeight()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ExitRoom;->minHeight()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public minWidth()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/ExitRoom;->minWidth()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    .line 6
    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v4, v2, -0x1

    iget v2, v1, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v5, v2, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 7
    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v4, v2, -0x1

    iget v2, v1, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v5, v2, 0x1

    const/4 v7, 0x1

    const/16 v8, 0xe

    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 8
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    const/16 v3, 0x15

    .line 9
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v3, v4, v2

    .line 10
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom$SewerExit;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom$SewerExit;-><init>()V

    .line 11
    iget v3, v1, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, v1, Lcom/watabou/utils/Point;->y:I

    .line 12
    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 13
    iput v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 14
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom$SewerExitOverhang;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/sewerboss/SewerBossExitRoom$SewerExitOverhang;-><init>()V

    .line 16
    iget v3, v1, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v3, v0

    iget v0, v1, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v0, v0, -0x2

    .line 17
    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 18
    iput v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 19
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
