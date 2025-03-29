.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/RitualSiteRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "RitualSiteRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/RitualSiteRoom$RitualMarker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public minHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->minDim:I

    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public minWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;->sizeCat:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom$SizeCategory;->minDim:I

    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

    .line 1
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

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 3
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 5
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/RitualSiteRoom$RitualMarker;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/RitualSiteRoom$RitualMarker;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v2

    .line 7
    iget v3, v2, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, v2, Lcom/watabou/utils/Point;->y:I

    sub-int/2addr v4, v0

    .line 8
    iput v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 9
    iput v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 10
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    iget v1, v2, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v4, v1, -0x1

    iget v1, v2, Lcom/watabou/utils/Point;->y:I

    add-int/lit8 v5, v1, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/16 v8, 0x14

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 12
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 14
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 16
    iget v0, v2, Lcom/watabou/utils/Point;->x:I

    .line 17
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 18
    iget v1, v2, Lcom/watabou/utils/Point;->y:I

    mul-int p1, p1, v1

    add-int/2addr p1, v0

    sput p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    return-void
.end method
