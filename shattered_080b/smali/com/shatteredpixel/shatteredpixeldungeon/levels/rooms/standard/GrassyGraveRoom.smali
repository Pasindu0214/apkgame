.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/GrassyGraveRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;
.source "GrassyGraveRoom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/StandardRoom;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 11

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->width()I

    move-result v2

    sub-int/2addr v2, v1

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->height()I

    move-result v3

    sub-int/2addr v3, v1

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v4, v1

    .line 8
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    .line 9
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_3

    if-le v2, v3, :cond_1

    .line 10
    iget v8, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v8, v0

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v8

    iget v8, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v8, v1

    add-int/lit8 v10, v3, -0x2

    .line 11
    invoke-static {v10}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v10

    add-int/2addr v10, v8

    .line 12
    iget v8, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    goto :goto_2

    .line 13
    :cond_1
    iget v8, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v8, v1

    add-int/lit8 v9, v2, -0x2

    .line 14
    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v9

    add-int/2addr v9, v8

    iget v8, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v8, v0

    add-int/2addr v8, v6

    mul-int/lit8 v10, v7, 0x2

    add-int/2addr v10, v8

    .line 15
    iget v8, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    :goto_2
    mul-int v10, v10, v8

    add-int/2addr v10, v9

    if-ne v7, v5, :cond_2

    .line 16
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v8

    goto :goto_3

    :cond_2
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    .line 17
    invoke-direct {v8, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    .line 18
    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :goto_3
    invoke-virtual {p1, v8, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v8

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->TOMB:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
