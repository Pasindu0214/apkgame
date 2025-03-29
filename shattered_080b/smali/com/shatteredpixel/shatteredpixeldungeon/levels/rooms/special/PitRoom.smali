.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/PitRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "PitRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public canPlaceTrap(Lcom/watabou/utils/Point;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 10

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p0, v1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 5
    iget v3, v2, Lcom/watabou/utils/Point;->x:I

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v4, :cond_1

    .line 6
    new-instance v2, Lcom/watabou/utils/Point;

    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v1

    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v4, v1

    :goto_0
    invoke-direct {v2, v3, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_4

    .line 7
    :cond_1
    iget v7, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v3, v7, :cond_3

    .line 8
    new-instance v2, Lcom/watabou/utils/Point;

    add-int/2addr v4, v1

    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v1

    :goto_1
    invoke-direct {v2, v4, v3}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_4

    .line 9
    :cond_3
    iget v2, v2, Lcom/watabou/utils/Point;->y:I

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v2, v3, :cond_5

    .line 10
    new-instance v2, Lcom/watabou/utils/Point;

    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v1

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v1

    :goto_2
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_4

    .line 11
    :cond_5
    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v2, v3, :cond_7

    .line 12
    new-instance v2, Lcom/watabou/utils/Point;

    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v1

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v1

    :goto_3
    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_4

    :cond_7
    move-object v2, v5

    :goto_4
    const/4 v3, 0x3

    .line 13
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 14
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    .line 15
    :goto_5
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v4, v4, v2

    if-ne v4, v3, :cond_8

    .line 16
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    goto :goto_5

    .line 17
    :cond_8
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v4, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-virtual {p1, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v4

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->SKELETON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 18
    :cond_9
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_c

    if-eq v4, v1, :cond_b

    if-eq v4, v6, :cond_a

    goto :goto_7

    :cond_a
    new-array v4, v6, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 19
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEAPON:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v5, v4, v7

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v5, v4, v1

    .line 20
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    aget-object v4, v4, v5

    .line 21
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    goto :goto_6

    .line 22
    :cond_b
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    goto :goto_6

    .line 23
    :cond_c
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    :goto_6
    move-object v5, v4

    :goto_7
    if-eqz v5, :cond_9

    .line 24
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 25
    invoke-virtual {p1, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 26
    invoke-static {v1, v6}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_e

    .line 27
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v8

    if-eqz v8, :cond_d

    .line 28
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findPrizeItem()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v8

    if-eqz v8, :cond_d

    goto :goto_9

    :cond_d
    new-array v8, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 29
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v9, v8, v7

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v9, v8, v1

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->FOOD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v9, v8, v6

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->GOLD:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v9, v8, v3

    .line 30
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v9

    aget-object v8, v8, v9

    .line 31
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v8

    .line 32
    :goto_9
    invoke-virtual {p1, v8, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method
