.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "Fire.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    return-void
.end method

.method public static burn(I)V
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    const/high16 v1, 0x41000000    # 8.0f

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    .line 5
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_c

    .line 6
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v1, v2, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v6, v1, v2

    .line 8
    instance-of v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    instance-of v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    if-nez v7, :cond_2

    .line 9
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    instance-of v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Dewdrop;

    if-eqz v7, :cond_3

    .line 11
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_2

    .line 12
    :cond_3
    instance-of v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    if-eqz v7, :cond_4

    .line 13
    move-object v4, v6

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    .line 14
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/ChargrilledMeat;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/ChargrilledMeat;-><init>()V

    .line 15
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 16
    iput v4, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 17
    invoke-virtual {v0, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->replace(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_1

    .line 18
    :cond_4
    instance-of v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    if-eqz v7, :cond_6

    .line 19
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 20
    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    .line 21
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explodesDestructively()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    const/4 v4, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-nez v4, :cond_8

    if-eqz v5, :cond_c

    .line 22
    :cond_8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_a

    if-eqz v4, :cond_9

    .line 23
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->burnFX(I)V

    goto :goto_3

    .line 24
    :cond_9
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 25
    invoke-virtual {v1, v2, v3, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 26
    :cond_a
    :goto_3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 27
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    goto :goto_4

    .line 28
    :cond_b
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    if-eqz v1, :cond_c

    .line 29
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    .line 30
    :cond_c
    :goto_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    if-eqz p0, :cond_d

    .line 31
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->wither()V

    :cond_d
    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 11

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v2, v2, Lcom/watabou/utils/Rect;->left:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v7, v6, Lcom/watabou/utils/Rect;->right:I

    if-gt v2, v7, :cond_7

    .line 4
    iget v6, v6, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v6, v3

    :goto_1
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v7, v7, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v6, v7, :cond_6

    .line 5
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v7, v7, v6

    add-int/2addr v7, v2

    .line 7
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v8, v8, v7

    if-lez v8, :cond_1

    if-eqz v0, :cond_0

    .line 8
    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v8, :cond_0

    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v8, v8, v7

    if-lez v8, :cond_0

    .line 9
    invoke-virtual {v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 10
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aput v4, v9, v7

    aput v4, v8, v7

    goto :goto_3

    .line 11
    :cond_0
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;->burn(I)V

    .line 12
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v8, v8, v7

    sub-int/2addr v8, v3

    if-gtz v8, :cond_5

    .line 13
    aget-boolean v9, v1, v7

    if-eqz v9, :cond_5

    .line 14
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->destroy(I)V

    .line 15
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 16
    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v8, :cond_2

    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v8, v8, v7

    if-gtz v8, :cond_4

    .line 17
    :cond_2
    aget-boolean v8, v1, v7

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    add-int/lit8 v9, v7, -0x1

    aget v9, v8, v9

    if-gtz v9, :cond_3

    add-int/lit8 v9, v7, 0x1

    aget v9, v8, v9

    if-gtz v9, :cond_3

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 18
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int v10, v7, v9

    .line 19
    aget v10, v8, v10

    if-gtz v10, :cond_3

    add-int/2addr v9, v7

    .line 20
    aget v8, v8, v9

    if-lez v8, :cond_4

    :cond_3
    const/4 v8, 0x4

    .line 21
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;->burn(I)V

    .line 22
    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    invoke-virtual {v9, v2, v6}, Lcom/watabou/utils/Rect;->union(II)Lcom/watabou/utils/Rect;

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 23
    :cond_5
    :goto_2
    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aput v8, v10, v7

    add-int/2addr v9, v8

    iput v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v5, :cond_8

    .line 24
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    :cond_8
    return-void
.end method

.method public tileDesc()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3cf5c28f    # 0.03f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
