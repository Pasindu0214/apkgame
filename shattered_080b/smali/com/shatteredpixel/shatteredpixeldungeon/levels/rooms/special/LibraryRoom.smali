.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/LibraryRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "LibraryRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 10

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    const/16 v1, 0xe

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v2

    .line 4
    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v5, v3, 0x1

    iget v3, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v3

    add-int/lit8 v7, v3, -0x2

    const/4 v8, 0x1

    const/16 v9, 0x1b

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;IIIII)V

    .line 5
    invoke-static {p1, p0, v2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->drawInside(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;Lcom/watabou/utils/Point;II)Lcom/watabou/utils/Point;

    const/4 v0, 0x2

    const/4 v3, 0x3

    .line 6
    invoke-static {v0, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    .line 8
    iget-object v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v6, v6, v5

    if-ne v6, v1, :cond_0

    iget-object v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v6, v5}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    if-nez v4, :cond_2

    .line 9
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;

    invoke-direct {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;-><init>()V

    goto :goto_1

    .line 10
    :cond_2
    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    invoke-virtual {p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findPrizeItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v6

    if-nez v6, :cond_3

    .line 11
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v6

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {p1, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 14
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void
.end method
