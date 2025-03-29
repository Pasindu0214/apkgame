.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretChestChasmRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/secret/SecretRoom;
.source "SecretChestChasmRoom.java"


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

    const/16 v0, 0x9

    return v0
.end method

.method public maxWidth()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public minHeight()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public minWidth()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 6

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    new-instance v2, Lcom/watabou/utils/Point;

    iget v3, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/watabou/utils/Point;-><init>(II)V

    const/16 v3, 0xe

    .line 4
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 6
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {v4, v5}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 7
    :cond_0
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v4, v4, -0x3

    iput v4, v2, Lcom/watabou/utils/Point;->x:I

    .line 8
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 10
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {v4, v5}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 11
    :cond_1
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x3

    iput v4, v2, Lcom/watabou/utils/Point;->y:I

    .line 12
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 13
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 14
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {v4, v5}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 15
    :cond_2
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v4, v4, 0x3

    iput v4, v2, Lcom/watabou/utils/Point;->x:I

    .line 16
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->LOCKED_CHEST:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 18
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v2

    invoke-virtual {v4, v2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 19
    :cond_3
    new-instance v2, Lcom/watabou/utils/Point;

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v0

    invoke-direct {v2, v4, v5}, Lcom/watabou/utils/Point;-><init>(II)V

    .line 20
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    if-lez v1, :cond_4

    .line 21
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v1, v1, -0x1

    .line 22
    :cond_4
    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, v2, Lcom/watabou/utils/Point;->x:I

    .line 23
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    if-lez v1, :cond_5

    .line 24
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v1, v1, -0x1

    .line 25
    :cond_5
    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v4, v0

    iput v4, v2, Lcom/watabou/utils/Point;->y:I

    .line 26
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    if-lez v1, :cond_6

    .line 27
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v1, v1, -0x1

    .line 28
    :cond_6
    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/watabou/utils/Point;->x:I

    .line 29
    invoke-static {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    if-lez v1, :cond_7

    .line 30
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/GoldenKey;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 31
    :cond_7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;-><init>()V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 32
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->HIDDEN:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    return-void
.end method
