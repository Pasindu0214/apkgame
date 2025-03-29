.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/BlacksmithRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "BlacksmithRoom.java"


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

    const/4 v1, 0x6

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

    const/4 v1, 0x6

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 10

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/16 v0, 0x12

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/16 v2, 0xe

    const/4 v3, 0x2

    .line 3
    invoke-static {p1, p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v6

    .line 5
    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v7, v7, v6

    if-ne v7, v2, :cond_0

    const/4 v7, 0x3

    new-array v8, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 6
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v9, v8, v4

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v9, v8, v1

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MISSILE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v9, v8, v3

    .line 7
    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v7

    aget-object v7, v8, v7

    .line 8
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v7

    .line 9
    invoke-virtual {p1, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 11
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 12
    invoke-static {p1, p0, v4, v1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    goto :goto_1

    .line 13
    :cond_2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;-><init>()V

    .line 14
    :cond_3
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random(I)Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 15
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v4, v2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 16
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/utils/Point;

    .line 18
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    .line 19
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v3, v2

    if-ne v3, v0, :cond_4

    .line 20
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/BurningTrap;-><init>()V

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {p1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    goto :goto_2

    :cond_5
    return-void
.end method
