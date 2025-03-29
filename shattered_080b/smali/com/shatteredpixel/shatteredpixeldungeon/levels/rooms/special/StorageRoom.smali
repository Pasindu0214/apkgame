.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/StorageRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "StorageRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 12

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/16 v1, 0xe

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    const/4 v3, 0x2

    .line 3
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x3

    .line 4
    invoke-static {v6, v0}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v9

    .line 6
    iget-object v10, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v10, v10, v9

    if-ne v10, v1, :cond_1

    if-eqz v4, :cond_2

    .line 7
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;-><init>()V

    invoke-virtual {p1, v4, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    const/4 v4, 0x0

    goto :goto_3

    .line 8
    :cond_2
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v10

    if-eqz v10, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findPrizeItem()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    new-array v10, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 10
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v11, v10, v5

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v11, v10, v2

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v11, v10, v3

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->GOLD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v11, v10, v6

    .line 11
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v11

    aget-object v10, v10, v11

    .line 12
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    .line 13
    :goto_2
    invoke-virtual {p1, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->BARRICADE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void
.end method
