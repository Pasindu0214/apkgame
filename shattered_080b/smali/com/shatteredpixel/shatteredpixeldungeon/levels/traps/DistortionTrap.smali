.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DistortionTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "DistortionTrap.java"


# static fields
.field public static final RARE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Albino;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/CausticSlime;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bandit;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredBrute;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM201;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Senior;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Acidic;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DistortionTrap;->RARE:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x6

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 12

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-nez v1, :cond_1

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 3
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    :goto_1
    sget-object v8, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v9, v8

    if-ge v7, v9, :cond_4

    .line 5
    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    aget v8, v8, v7

    add-int/2addr v9, v8

    .line 6
    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v10, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v10, v10, v9

    if-nez v10, :cond_2

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_3

    .line 7
    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 8
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-lez v1, :cond_5

    .line 9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v8

    .line 11
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 12
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const/4 v9, 0x1

    add-int/2addr v7, v9

    if-eq v7, v9, :cond_b

    if-eq v7, v0, :cond_7

    if-eq v7, v2, :cond_6

    goto :goto_4

    .line 14
    :cond_6
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DistortionTrap;->RARE:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    goto :goto_5

    .line 15
    :cond_7
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v10

    if-eq v10, v9, :cond_a

    if-eq v10, v0, :cond_9

    if-eq v10, v3, :cond_8

    .line 16
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;->spawnAt(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Wraith;

    goto :goto_3

    .line 17
    :cond_8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->random()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;

    move-result-object v9

    goto :goto_5

    .line 18
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    invoke-static {v9, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->spawnAt(ILjava/util/List;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    move-result-object v9

    .line 20
    invoke-virtual {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;->stopHiding()V

    .line 21
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ENEMY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    goto :goto_5

    .line 22
    :cond_a
    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;-><init>()V

    goto :goto_5

    .line 23
    :cond_b
    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-eq v9, v4, :cond_c

    const/16 v9, 0x64

    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v9

    if-nez v9, :cond_c

    .line 24
    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/RatKing;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/RatKing;-><init>()V

    goto :goto_5

    :cond_c
    :goto_4
    const/16 v9, 0x19

    .line 25
    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v9

    .line 26
    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel(I)Z

    move-result v10

    if-nez v10, :cond_c

    .line 27
    invoke-static {v9}, La/b/a/e;->getMobRotation(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 28
    :goto_5
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-static {v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v10

    if-eqz v10, :cond_d

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-boolean v10, v10, v11

    if-nez v10, :cond_d

    goto/16 :goto_3

    :cond_d
    const/16 v10, 0x1e

    .line 29
    iput v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 30
    iget-object v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v10, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 31
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/high16 v8, 0x40000000    # 2.0f

    .line 32
    invoke-static {v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V

    .line 33
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 34
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 35
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz v2, :cond_f

    iget-boolean v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    if-eqz v3, :cond_f

    .line 36
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->disarm()V

    .line 37
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 38
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->activate()V

    .line 39
    :cond_f
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 40
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_6

    :cond_10
    return-void
.end method
