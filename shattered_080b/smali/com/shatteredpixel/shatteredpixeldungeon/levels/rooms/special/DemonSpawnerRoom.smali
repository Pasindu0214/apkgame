.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/DemonSpawnerRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "DemonSpawnerRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/DemonSpawnerRoom$CustomFloor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public canPlaceGrass(Lcom/watabou/utils/Point;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canPlaceTrap(Lcom/watabou/utils/Point;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canPlaceWater(Lcom/watabou/utils/Point;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EntranceRoom;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connect(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)Z

    move-result p1

    return p1
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    .line 4
    iget v2, v1, Lcom/watabou/utils/Point;->x:I

    .line 5
    iget v1, v1, Lcom/watabou/utils/Point;->y:I

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->UNLOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 8
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DemonSpawner;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DemonSpawner;-><init>()V

    .line 9
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v4

    add-int/2addr v1, v2

    .line 10
    iput v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 11
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/DemonSpawnerRoom$CustomFloor;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/DemonSpawnerRoom$CustomFloor;-><init>()V

    .line 13
    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->setRect(IIII)V

    .line 14
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
