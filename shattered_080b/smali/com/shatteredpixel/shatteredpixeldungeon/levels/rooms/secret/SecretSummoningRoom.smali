.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretSummoningRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.source "SecretSummoningRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public maxHeight()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public maxWidth()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/16 v0, 0x11

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 5
    invoke-virtual {p0}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/utils/Point;

    .line 6
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    .line 7
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v3, v3, v2

    if-ne v3, v0, :cond_0

    .line 8
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/SummoningTrap;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/SummoningTrap;-><init>()V

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->hide()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {p1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    return-void
.end method
