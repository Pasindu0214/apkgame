.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRunestoneRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.source "SecretRunestoneRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public canPlaceCharacter(Lcom/watabou/utils/Point;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result p1

    aget p1, v0, p1

    const/16 p2, 0xe

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canPlaceGrass(Lcom/watabou/utils/Point;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canPlaceWater(Lcom/watabou/utils/Point;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 9

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v6, 0x1

    .line 2
    invoke-static {p1, p0, v6, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v7

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v0

    .line 5
    iget v1, v7, Lcom/watabou/utils/Point;->x:I

    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    const/16 v3, 0x1b

    if-eq v1, v2, :cond_2

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/watabou/utils/Point;

    add-int/2addr v2, v6

    iget v4, v0, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v1, v2, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v6

    iget v5, v0, Lcom/watabou/utils/Point;->y:I

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-static {p1, v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 7
    iget v1, v7, Lcom/watabou/utils/Point;->y:I

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v1, v2, :cond_1

    .line 8
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v6

    iget v2, v0, Lcom/watabou/utils/Point;->y:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v6

    const/16 v5, 0xe

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_1

    .line 9
    :cond_1
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v1, v6

    add-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget v0, v0, Lcom/watabou/utils/Point;->y:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0xe

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    new-instance v1, Lcom/watabou/utils/Point;

    iget v2, v0, Lcom/watabou/utils/Point;->x:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v4, v6

    invoke-direct {v1, v2, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, v0, Lcom/watabou/utils/Point;->x:I

    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-static {p1, v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawLine(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;Lcom/watabou/utils/Point;I)V

    .line 11
    iget v1, v7, Lcom/watabou/utils/Point;->x:I

    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v1, v2, :cond_3

    .line 12
    iget v0, v0, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v2, v6

    iget v3, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v0

    add-int/lit8 v4, v0, -0x2

    const/16 v5, 0xe

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    .line 13
    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v3, v6

    iget v0, v0, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v0, v2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v0

    add-int/lit8 v5, v0, -0x2

    const/16 v8, 0xe

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 14
    :goto_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 16
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_4

    .line 17
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->STONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 19
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_5

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, v0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 20
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->STONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 22
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, v0

    const/16 v2, 0xe

    if-ne v1, v2, :cond_6

    .line 23
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 24
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v7, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    return-void
.end method
