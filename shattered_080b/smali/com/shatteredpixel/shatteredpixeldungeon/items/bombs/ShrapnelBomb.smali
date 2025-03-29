.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/ShrapnelBomb;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;
.source "ShrapnelBomb.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SHRAPNEL_BOMB:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public explode(I)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 4
    new-array v2, v1, [Z

    .line 5
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 6
    rem-int v3, p1, v0

    div-int v0, p1, v0

    .line 7
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    const/16 v5, 0x8

    invoke-static {v3, v0, v2, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->castShadow(II[Z[ZI)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 9
    aget-boolean v4, v2, v3

    if-eqz v4, :cond_1

    .line 10
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_0

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    .line 11
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BlastParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v6, 0x0

    const/4 v7, 0x5

    .line 12
    invoke-virtual {v4, v5, v6, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 13
    :cond_0
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 16
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v3, v2, 0x5

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3d4ccccd    # 0.05f

    .line 17
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v5, p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    sub-float/2addr v3, v5

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 18
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v3

    sub-int/2addr v2, v3

    .line 19
    invoke-virtual {v1, v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 20
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v1, v2, :cond_3

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 21
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public explodesDestructively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x78

    return v0
.end method
