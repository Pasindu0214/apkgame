.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "CeremonialCandle.java"


# static fields
.field public static ritualPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CANDLE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const-string v0, "THROW"

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    return-void
.end method

.method public static checkCandles()V
    .locals 9

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    .line 2
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int/2addr v2, v0

    .line 3
    invoke-virtual {v1, v2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    .line 6
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v4, v2

    .line 7
    invoke-virtual {v3, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 8
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 9
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    instance-of v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;

    if-eqz v4, :cond_6

    .line 10
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    instance-of v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;

    if-eqz v4, :cond_6

    .line 11
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    instance-of v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;

    if-eqz v4, :cond_6

    .line 12
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    instance-of v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;

    if-eqz v4, :cond_6

    .line 13
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 14
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 15
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 16
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 17
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$NewbornFireElemental;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$NewbornFireElemental;-><init>()V

    .line 18
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 21
    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    add-int/2addr v7, v6

    .line 22
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_0

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v6

    if-nez v6, :cond_1

    .line 23
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 25
    invoke-static {v1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    goto :goto_1

    .line 26
    :cond_3
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    goto :goto_1

    .line 27
    :cond_4
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 28
    :goto_1
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V

    .line 30
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_5

    aget v4, v0, v2

    .line 31
    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->ritualPos:I

    add-int/2addr v5, v4

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v6, 0xa

    const/4 v7, 0x0

    .line 32
    invoke-virtual {v4, v5, v7, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 33
    :cond_5
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v2, "snd_burning.mp3"

    .line 34
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_6
    return-void
.end method


# virtual methods
.method public doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->checkCandles()V

    return-void
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onThrow(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CeremonialCandle;->checkCandles()V

    return-void
.end method
