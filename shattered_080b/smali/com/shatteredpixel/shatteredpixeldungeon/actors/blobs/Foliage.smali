.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Foliage;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "Foliage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 8

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v1, v1, Lcom/watabou/utils/Rect;->left:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v5, v4, Lcom/watabou/utils/Rect;->right:I

    if-ge v1, v5, :cond_5

    .line 3
    iget v4, v4, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v5, v5, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v4, v5, :cond_4

    .line 4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v4

    add-int/2addr v5, v1

    .line 6
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v7, v6, v5

    if-lez v7, :cond_3

    .line 7
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v6, v6, v5

    aput v6, v7, v5

    .line 8
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    aget v7, v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 9
    aget v6, v0, v5

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    const/4 v6, 0x2

    .line 10
    aput v6, v0, v5

    .line 11
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    :cond_0
    if-nez v3, :cond_2

    .line 12
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    .line 13
    :cond_3
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aput v2, v6, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 15
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v1, v1, v2

    if-lez v1, :cond_6

    .line 16
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Shadows;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Shadows;

    const/high16 v1, 0x40000000    # 2.0f

    .line 17
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Shadows;->left:F

    :cond_6
    if-eqz v3, :cond_7

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->GARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->add(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    :cond_7
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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShaftParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
