.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/CryptRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "CryptRoom.java"


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
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 8
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 9
    iget v4, v3, Lcom/watabou/utils/Point;->x:I

    iget v5, p0, Lcom/watabou/utils/Rect;->left:I

    const/16 v6, 0x19

    if-ne v4, v5, :cond_0

    .line 10
    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v0

    .line 11
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    .line 12
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v6, v2, v3

    .line 13
    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 14
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    .line 15
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v6, v2, v3

    .line 16
    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 17
    :cond_0
    iget v7, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v4, v7, :cond_1

    add-int/2addr v5, v0

    .line 18
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v0

    .line 19
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v2, v2, v3

    add-int/2addr v2, v5

    .line 20
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v6, v3, v2

    .line 21
    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 22
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    .line 23
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v6, v2, v3

    .line 24
    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 25
    :cond_1
    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v3, v4, :cond_2

    add-int/2addr v5, v0

    .line 26
    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 27
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v3

    add-int/2addr v1, v5

    .line 28
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v6, v3, v1

    .line 29
    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v0

    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 30
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v4

    add-int/2addr v3, v1

    .line 31
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v6, v1, v3

    .line 32
    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 33
    :cond_2
    iget v7, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v3, v7, :cond_3

    add-int/2addr v5, v0

    add-int/2addr v4, v0

    .line 34
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, v4, v1

    add-int/2addr v4, v5

    .line 35
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v6, v1, v4

    .line 36
    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v1, v0

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v0

    .line 37
    iget v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v4

    add-int/2addr v3, v1

    .line 38
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v6, v1, v3

    .line 39
    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v1, v1, 0x2

    .line 40
    :cond_3
    :goto_0
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v0

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object v3

    .line 41
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 42
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    .line 43
    invoke-direct {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    .line 44
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    .line 45
    :cond_4
    iget-boolean v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v4, :cond_5

    const/4 v4, 0x0

    .line 46
    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->upgrade(Z)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 47
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGoodGlyph()Z

    move-result v5

    if-nez v5, :cond_5

    new-array v4, v4, [Ljava/lang/Class;

    .line 48
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 49
    :cond_5
    iput-boolean v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 50
    :goto_1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v1, v1, v0

    add-int/2addr v1, v2

    .line 51
    invoke-virtual {p1, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->TOMB:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    return-void
.end method
