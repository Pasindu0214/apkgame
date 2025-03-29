.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/RockfallTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "RockfallTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->canBeHidden:Z

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-virtual {v1, v2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    instance-of v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    if-eqz v5, :cond_2

    .line 4
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-virtual {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/RegularLevel;->room(I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/watabou/utils/Rect;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/watabou/utils/Point;

    .line 6
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v5

    .line 7
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_1

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 v1, 0x0

    .line 10
    :goto_2
    sget-object v5, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 11
    aget v5, v5, v1

    const v6, 0x7fffffff

    if-ge v5, v6, :cond_3

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 14
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v7, v7, v5

    const/16 v8, 0xa

    if-eqz v7, :cond_6

    .line 15
    iget v1, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int v1, v5, v1

    .line 16
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    const/16 v6, 0x8

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v6

    const v7, 0x3d8f5c29    # 0.07f

    invoke-virtual {v1, v6, v7, v8}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    const/4 v1, 0x1

    .line 17
    :cond_6
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 18
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 19
    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v7, v6, 0x5

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    invoke-static {v7, v6}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v6

    .line 20
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v7

    sub-int/2addr v6, v7

    .line 21
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v5, v6, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 22
    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 23
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v5, v6, :cond_5

    .line 24
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/RockfallTrap;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ondeath"

    .line 25
    invoke-static {p0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    .line 26
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const/high16 v1, 0x40400000    # 3.0f

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Camera;->shake(FF)V

    .line 27
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_rocks.mp3"

    .line 28
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_8
    return-void
.end method
