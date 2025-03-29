.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "Freezing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    return-void
.end method

.method public static affect(ILcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;)Z
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v2, v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    if-eqz v2, :cond_0

    const/high16 v2, 0x40f00000    # 7.5f

    .line 3
    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    mul-float v2, v2, v3

    invoke-static {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 4
    invoke-static {v2, v4}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    mul-float v2, v2, v3

    invoke-static {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 6
    :cond_2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->freeze()V

    .line 8
    :cond_3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean p1, p1, p0

    if-eqz p1, :cond_4

    .line 9
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p0

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static freeze(I)V
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3
    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    invoke-static {v2, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_1

    .line 5
    :cond_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    aget-boolean v3, v3, p0

    const/high16 v4, 0x40a00000    # 5.0f

    if-eqz v3, :cond_1

    const/high16 v3, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    :goto_0
    invoke-static {v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 6
    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v0

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 8
    invoke-static {v2, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 9
    :cond_2
    :goto_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->freeze()V

    :cond_3
    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 7

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v1, v1, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v3, v2, Lcom/watabou/utils/Rect;->right:I

    if-gt v1, v3, :cond_3

    .line 3
    iget v2, v2, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v3, v3, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v2, v3, :cond_2

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v2

    add-int/2addr v3, v1

    .line 6
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v4, v4, v3

    const/4 v5, 0x0

    if-lez v4, :cond_1

    if-eqz v0, :cond_0

    .line 7
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v4, :cond_0

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v4, v4, v3

    if-lez v4, :cond_0

    .line 8
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 9
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aput v5, v6, v3

    aput v5, v4, v3

    goto :goto_2

    .line 10
    :cond_0
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;->freeze(I)V

    .line 11
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v5, v5, v3

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v3

    .line 12
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    aget v3, v4, v3

    add-int/2addr v5, v3

    iput v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    goto :goto_2

    .line 13
    :cond_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aput v5, v4, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3d4ccccd    # 0.05f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
