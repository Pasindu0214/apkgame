.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Pylon.java"


# instance fields
.field public targetNeighbor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/PylonSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v0, -0x2

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->INORGANIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ELECTRIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->PASSIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const/16 v0, 0x8

    .line 11
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;->targetNeighbor:I

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Amok;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Sleep;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/ToxicGas;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vertigo;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 12

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v4, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    aget v4, v4, v5

    add-int/2addr v3, v4

    .line 4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_1

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 5
    :cond_1
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v1

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3

    return v4

    .line 7
    :cond_3
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v3, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;->targetNeighbor:I

    aget v6, v3, v5

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x4

    .line 8
    rem-int/2addr v5, v2

    aget v3, v3, v5

    add-int/2addr v1, v3

    .line 9
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    .line 10
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v5, v3, v5

    if-nez v5, :cond_4

    aget-boolean v5, v3, v6

    if-nez v5, :cond_4

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_5

    .line 11
    :cond_4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v3, v3, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v7

    .line 12
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    .line 13
    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    invoke-direct {v11, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    const/4 v7, 0x0

    aput-object v11, v10, v7

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(Ljava/util/List;Lcom/watabou/utils/Callback;)V

    .line 14
    invoke-virtual {v3, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v3

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v7, 0x0

    const/4 v8, 0x3

    .line 16
    invoke-virtual {v3, v5, v7, v8}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 17
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v3

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 18
    invoke-virtual {v3, v5, v7, v8}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 19
    sget-object v3, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v5, "snd_lightning.mp3"

    .line 20
    invoke-virtual {v3, v5, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 21
    :cond_5
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;->shockChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 22
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;->shockChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 23
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;->targetNeighbor:I

    add-int/2addr v0, v4

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;->targetNeighbor:I

    return v4
.end method

.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    :cond_0
    return-void
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xf

    if-lt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0xe

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-int p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0xe

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "desc_inactive"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "desc_active"

    .line 3
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public die(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;

    .line 3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel;->customArenaVisuals:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$ArenaVisuals;->updateState()V

    .line 4
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 5
    instance-of v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    if-eqz v5, :cond_2

    .line 6
    move-object v5, v3

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    .line 7
    iput-boolean v1, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;->supercharged:Z

    .line 8
    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->resetColor()V

    .line 9
    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;->pylonsActivated:I

    if-ge v6, v4, :cond_1

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "charge_lost"

    .line 10
    invoke-static {v5, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "pylons_destroyed"

    .line 11
    invoke-static {v5, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 12
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    .line 13
    :goto_1
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 14
    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->energySourceSprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    goto :goto_0

    .line 15
    :cond_2
    instance-of v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-le v2, v4, :cond_4

    .line 16
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->fullyClear()V

    :cond_4
    return-void
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const-string v1, "alignment"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const-string v0, "target_neighbour"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;->targetNeighbor:I

    return-void
.end method

.method public final shockChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    const/16 v0, 0xa

    const/16 v1, 0x14

    .line 3
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    .line 6
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Electricity;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ondeath"

    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/PylonSprite;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/PylonSprite;->activate()V

    :cond_0
    return-object v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    const-string v1, "alignment"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Enum;)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;->targetNeighbor:I

    const-string v1, "target_neighbour"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
