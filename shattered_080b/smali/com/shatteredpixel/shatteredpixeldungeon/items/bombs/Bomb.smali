.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Bomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$DoubleBomb;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;
    }
.end annotation


# static fields
.field public static lightingFuse:Z = false


# instance fields
.field public fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BOMB:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const-string v0, "LIGHTTHROW"

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->usesTargeting:Z

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    return-void
.end method


# virtual methods
.method public actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "LIGHTTHROW"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public desc()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    const/4 v1, 0x0

    const-string v2, "\n\n"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "desc_fuse"

    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "desc_burning"

    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "snuff_fuse"

    .line 2
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    return p1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 1

    const-string v0, "LIGHTTHROW"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 2
    sput-boolean p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->lightingFuse:Z

    const-string p2, "THROW"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->lightingFuse:Z

    .line 4
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    return-void
.end method

.method public explode(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_blast.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explodesDestructively()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BlastParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v4, 0x1e

    .line 8
    invoke-virtual {v1, v3, v2, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 9
    :cond_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget v6, v1, v4

    add-int/2addr v6, p1

    if-ltz v6, :cond_4

    .line 10
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 11
    iget v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v6, v8, :cond_4

    .line 12
    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_1

    .line 13
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v7

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v9, 0x4

    .line 14
    invoke-virtual {v7, v8, v2, v9}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 15
    :cond_1
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    aget-boolean v8, v8, v6

    if-eqz v8, :cond_2

    .line 16
    invoke-virtual {v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->destroy(I)V

    .line 17
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    const/4 v5, 0x1

    .line 18
    :cond_2
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v7, v6}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v7, :cond_3

    .line 19
    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->explode()V

    .line 20
    :cond_3
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 21
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 23
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    .line 24
    :cond_7
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v3, v2, 0x5

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    .line 25
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v3, p1, :cond_8

    int-to-float v2, v2

    const v3, 0x3f2b851f    # 0.67f

    mul-float v2, v2, v3

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 27
    :cond_8
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_9

    .line 28
    invoke-virtual {v1, v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 29
    :cond_9
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v1, v2, :cond_6

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 30
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    goto :goto_1

    :cond_a
    if-eqz v5, :cond_b

    .line 31
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    :cond_b
    return-void
.end method

.method public explodesDestructively()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0xff0000

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onThrow(I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->lightingFuse:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;-><init>()V

    .line 3
    iput-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;->bomb:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-nez v0, :cond_4

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 8
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    add-int/2addr v4, p1

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_1

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, p1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 11
    :goto_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    :goto_2
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$DoubleBomb;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$DoubleBomb;-><init>()V

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "fuse"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    .line 5
    iput-object p0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;->bomb:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    .line 6
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    .line 7
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    :cond_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->fuse:Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$Fuse;

    const-string v1, "fuse"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    return-void
.end method
