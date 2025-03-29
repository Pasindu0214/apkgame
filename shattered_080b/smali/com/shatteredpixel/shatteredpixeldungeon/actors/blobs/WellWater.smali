.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "WellWater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    return-void
.end method

.method public static affectCell(I)V
    .locals 10

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WaterOfHealth;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WaterOfAwareness;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WaterOfTransmutation;

    aput-object v5, v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    .line 2
    aget-object v5, v1, v2

    .line 3
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;

    if-eqz v5, :cond_6

    .line 4
    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v6, :cond_6

    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v6, v6, p0

    if-lez v6, :cond_6

    .line 5
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne p0, v7, :cond_0

    invoke-virtual {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;->affectHero(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aput v3, v5, p0

    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    .line 7
    :cond_0
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v6, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v6, :cond_5

    .line 8
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v7

    .line 9
    invoke-virtual {v5, v7, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;->affectItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v8

    if-eqz v8, :cond_3

    if-ne v8, v7, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    iget v9, v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-le v9, v4, :cond_2

    add-int/lit8 v9, v9, -0x1

    .line 11
    invoke-virtual {v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 12
    invoke-virtual {v6, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v6, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->replace(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 14
    :goto_2
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 15
    iget-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-virtual {v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    .line 16
    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aput v3, v5, p0

    goto :goto_1

    .line 17
    :cond_3
    sget-object v5, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v7, 0x8

    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v7

    aget v5, v5, v7

    add-int/2addr v5, p0

    .line 18
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v8, v8, v5

    if-nez v8, :cond_4

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_3

    .line 19
    :cond_4
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v6

    invoke-virtual {v7, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v5

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v5, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    .line 20
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 21
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public abstract affectHero(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
.end method

.method public abstract affectItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.end method

.method public evolve()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v3, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v0, v4, :cond_2

    .line 2
    iget v3, v3, Lcom/watabou/utils/Rect;->left:I

    sub-int/2addr v3, v1

    :goto_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v4, Lcom/watabou/utils/Rect;->right:I

    if-gt v3, v4, :cond_1

    .line 3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v0

    add-int/2addr v5, v3

    .line 5
    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v6, v6, v5

    aput v6, v4, v5

    .line 7
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    aget v7, v4, v5

    add-int/2addr v6, v7

    iput v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 8
    aget v4, v4, v5

    if-lez v4, :cond_0

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;->record()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->add(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;->record()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    :goto_2
    return-void
.end method

.method public abstract record()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;
.end method
