.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/PoolRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "PoolRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public minHeight()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 14

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    const/16 v1, 0x1d

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 5
    iget v3, v2, Lcom/watabou/utils/Point;->x:I

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-ne v3, v4, :cond_0

    .line 6
    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v5, v2

    .line 7
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    div-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 8
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v8, v3, 0x1

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v9, v3, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    add-int/lit8 v11, v3, -0x2

    const/16 v12, 0xe

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    :goto_0
    move v13, v5

    move v5, v2

    move v2, v13

    goto/16 :goto_1

    .line 9
    :cond_0
    iget v7, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v3, v7, :cond_1

    add-int/2addr v4, v0

    .line 10
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    div-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 11
    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v8, v3, -0x1

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v9, v3, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    add-int/lit8 v11, v3, -0x2

    const/16 v12, 0xe

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    move v5, v2

    move v2, v4

    goto :goto_1

    .line 12
    :cond_1
    iget v2, v2, Lcom/watabou/utils/Point;->y:I

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v2, v3, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v2

    div-int/2addr v2, v6

    add-int v5, v2, v4

    .line 14
    iget v2, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v2, v0

    .line 15
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v8, v3, 0x1

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    add-int/lit8 v10, v3, -0x2

    const/4 v11, 0x1

    const/16 v12, 0xe

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_0

    .line 16
    :cond_2
    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v2, v3, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v2

    div-int/2addr v2, v6

    add-int/2addr v2, v4

    .line 18
    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v0

    .line 19
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v8, v4, 0x1

    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v4

    add-int/lit8 v10, v4, -0x2

    const/4 v11, 0x1

    const/16 v12, 0xe

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    move v5, v3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    .line 20
    :goto_1
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v3

    add-int/2addr v5, v2

    const/4 v2, 0x3

    .line 21
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findPrizeItem()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 23
    :cond_4
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_5

    .line 24
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v0

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomWeapon(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    move-result-object v3

    goto :goto_2

    .line 25
    :cond_5
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v0

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object v3

    .line 26
    :goto_2
    iget-boolean v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 27
    iput-boolean v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 28
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 29
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 30
    :cond_6
    :goto_3
    invoke-virtual {p1, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    .line 31
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    goto :goto_4

    :cond_7
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    :goto_4
    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    const/16 v0, 0xb

    .line 32
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v0, v3, v5

    .line 33
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_9

    .line 34
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;-><init>()V

    .line 35
    :cond_8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v4

    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 36
    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v5, v5, v4

    if-ne v5, v1, :cond_8

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v4

    if-nez v4, :cond_8

    .line 37
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method
