.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/LaboratoryRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "LaboratoryRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 13

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

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
    const/16 v4, 0x1c

    .line 12
    invoke-static {p1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Point;I)V

    .line 13
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v6, 0x5

    div-int/2addr v4, v6

    add-int/2addr v4, v1

    .line 14
    iget v7, v3, Lcom/watabou/utils/Point;->x:I

    .line 15
    iget v8, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 16
    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    mul-int v8, v8, v3

    add-int/2addr v8, v7

    mul-int/lit8 v3, v4, 0xa

    add-int/2addr v3, v1

    const/16 v7, 0xa

    const/4 v9, 0x0

    invoke-static {v9, v7}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v7

    add-int/2addr v7, v3

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Alchemy;

    invoke-static {v8, v7, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    const/4 v3, 0x3

    .line 17
    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_a

    .line 18
    :cond_8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v10

    .line 19
    iget-object v11, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v11, v11, v10

    if-ne v11, v0, :cond_8

    iget-object v11, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    .line 20
    invoke-virtual {v11, v10}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_8

    .line 21
    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {p1, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findPrizeItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v11

    if-nez v11, :cond_9

    new-array v11, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 22
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v12, v11, v9

    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->STONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v12, v11, v1

    invoke-static {v11}, Lcom/watabou/utils/Random;->oneOf([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v11

    .line 23
    :cond_9
    invoke-virtual {p1, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 24
    :cond_a
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages()Ljava/util/Collection;

    move-result-object v7

    .line 25
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 27
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    invoke-virtual {v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->hasPage(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 28
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 29
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v3, :cond_d

    const/4 v5, 0x3

    goto :goto_7

    .line 30
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v6, :cond_e

    goto :goto_7

    :cond_e
    const/4 v5, 0x1

    .line 31
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    if-lt v4, v5, :cond_10

    .line 32
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_10

    .line 33
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/AlchemyPage;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/AlchemyPage;-><init>()V

    .line 34
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 35
    iput-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/journal/DocumentPage;->page:Ljava/lang/String;

    .line 36
    :cond_f
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v6

    .line 37
    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v7, v7, v6

    if-ne v7, v0, :cond_f

    iget-object v7, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    .line 38
    invoke-virtual {v7, v6}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    .line 39
    invoke-virtual {p1, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 40
    :cond_10
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    .line 41
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->rooms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    .line 42
    instance-of v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/PitRoom;

    if-eqz v3, :cond_11

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_13

    .line 43
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_a

    .line 44
    :cond_13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->LOCKED:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    .line 45
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addItemToSpawn(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :goto_a
    return-void
.end method
