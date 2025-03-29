.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/SuspiciousChestRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;
.source "SuspiciousChestRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;-><init>()V

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
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

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
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;->paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findPrizeItem()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    const/16 v2, 0xb

    .line 7
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v2, v3, v1

    const/4 v2, 0x3

    .line 8
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 9
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->spawnAt(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    :goto_0
    return-void
.end method
