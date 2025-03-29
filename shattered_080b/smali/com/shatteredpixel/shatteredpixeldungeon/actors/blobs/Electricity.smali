.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "Electricity.java"


# instance fields
.field public water:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    const/16 v0, -0x15

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 10

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;->water:[Z

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v1, v1, Lcom/watabou/utils/Rect;->left:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v3, Lcom/watabou/utils/Rect;->right:I

    if-gt v1, v4, :cond_2

    .line 3
    iget v3, v3, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v3, v2

    :goto_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v4, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v3, v4, :cond_1

    .line 4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, v4, v3

    add-int/2addr v4, v1

    .line 6
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v6, v5, v4

    if-lez v6, :cond_0

    .line 7
    aget v5, v5, v4

    invoke-virtual {p0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;->spreadFromCell(II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget v1, v3, Lcom/watabou/utils/Rect;->left:I

    sub-int/2addr v1, v2

    :goto_2
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v3, Lcom/watabou/utils/Rect;->right:I

    if-gt v1, v4, :cond_8

    .line 9
    iget v3, v3, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v3, v2

    :goto_3
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v4, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v3, v4, :cond_7

    .line 10
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 11
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v4, v4, v3

    add-int/2addr v4, v1

    .line 12
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v5, v5, v4

    const/4 v6, 0x0

    if-lez v5, :cond_6

    .line 13
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 15
    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v5, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 16
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v7, v7, v4

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v2, :cond_3

    const/high16 v7, 0x40000000    # 2.0f

    .line 17
    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    int-to-float v8, v8

    const/high16 v9, 0x40a00000    # 5.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v7

    invoke-static {v8}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v5, v7, :cond_3

    .line 19
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "ondeath"

    .line 20
    invoke-static {p0, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_3
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v5, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v5, :cond_5

    .line 22
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v5

    .line 23
    instance-of v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const v7, 0x3eaa7efa    # 0.333f

    if-eqz v6, :cond_4

    .line 24
    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->gainCharge(F)V

    goto :goto_4

    .line 25
    :cond_4
    instance-of v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    if-eqz v6, :cond_5

    .line 26
    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 27
    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v5, :cond_5

    .line 28
    invoke-virtual {v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->gainCharge(F)V

    .line 29
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v6, v6, v4

    sub-int/2addr v6, v2

    aput v6, v5, v4

    .line 30
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    aget v4, v5, v4

    add-int/2addr v6, v4

    iput v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    goto :goto_5

    .line 31
    :cond_6
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aput v6, v5, v4

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8
    return-void
.end method

.method public final spreadFromCell(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 4
    rem-int v2, p1, v1

    div-int v1, p1, v1

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Rect;->union(II)Lcom/watabou/utils/Rect;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v1, v0, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, p1

    .line 6
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS4:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 7
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;->water:[Z

    add-int/2addr v3, p1

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v4, v4, v3

    if-ge v4, p2, :cond_1

    .line 8
    invoke-virtual {p0, v3, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;->spreadFromCell(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3d4ccccd    # 0.05f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
