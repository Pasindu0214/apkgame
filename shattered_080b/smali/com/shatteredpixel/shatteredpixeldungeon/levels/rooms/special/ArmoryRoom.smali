.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ArmoryRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "ArmoryRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 8

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
    iget v3, v2, Lcom/watabou/utils/Point;->x:I

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    const/4 v5, 0x2

    if-ne v3, v4, :cond_1

    .line 5
    new-instance v3, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v1

    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v6, v1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v6, v1

    :goto_0
    invoke-direct {v3, v4, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_4

    .line 6
    :cond_1
    iget v6, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v3, v6, :cond_3

    .line 7
    new-instance v3, Lcom/watabou/utils/Point;

    add-int/2addr v4, v1

    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v6, v1

    goto :goto_1

    :cond_2
    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v6, v1

    :goto_1
    invoke-direct {v3, v4, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_4

    .line 8
    :cond_3
    iget v3, v2, Lcom/watabou/utils/Point;->y:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v3, v4, :cond_5

    .line 9
    new-instance v3, Lcom/watabou/utils/Point;

    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v1

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v1

    :goto_2
    iget v6, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v6, v1

    invoke-direct {v3, v4, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_4

    .line 10
    :cond_5
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v3, v4, :cond_7

    .line 11
    new-instance v3, Lcom/watabou/utils/Point;

    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v1

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v1

    :goto_3
    iget v6, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v6, v1

    invoke-direct {v3, v4, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_8

    const/16 v4, 0x19

    .line 12
    invoke-static {p1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    :cond_8
    const/4 v3, 0x3

    .line 13
    invoke-static {v5, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_d

    .line 14
    :cond_9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v6

    .line 15
    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v7, v7, v6

    if-ne v7, v1, :cond_9

    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v7, v6}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    .line 16
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v7

    if-eqz v7, :cond_c

    if-eq v7, v1, :cond_b

    if-eq v7, v5, :cond_a

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomMissile()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    move-result-object v7

    goto :goto_6

    .line 18
    :cond_a
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object v7

    goto :goto_6

    .line 19
    :cond_b
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomWeapon()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    move-result-object v7

    goto :goto_6

    .line 20
    :cond_c
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v7

    .line 21
    :goto_6
    invoke-virtual {p1, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 22
    :cond_d
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 23
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void
.end method
