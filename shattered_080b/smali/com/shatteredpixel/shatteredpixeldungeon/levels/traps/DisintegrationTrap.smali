.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DisintegrationTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "DisintegrationTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->canBeHidden:Z

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_14

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 3
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v6, 0x7

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x7

    and-int/lit8 v9, v9, 0x1

    if-lez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x7

    and-int/lit8 v10, v10, 0x2

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    .line 6
    :goto_3
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 7
    iget v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 8
    rem-int v12, v4, v11

    .line 9
    rem-int v13, v5, v11

    .line 10
    div-int v14, v4, v11

    .line 11
    div-int v15, v5, v11

    sub-int/2addr v13, v12

    sub-int/2addr v15, v14

    const/4 v12, -0x1

    if-lez v13, :cond_3

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v14, -0x1

    :goto_4
    if-lez v15, :cond_4

    const/4 v12, 0x1

    .line 12
    :cond_4
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 13
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    mul-int v12, v12, v11

    if-le v13, v15, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v19, v14

    move v14, v12

    move/from16 v12, v19

    move/from16 v20, v15

    move v15, v13

    move/from16 v13, v20

    .line 14
    :goto_5
    div-int/lit8 v11, v13, 0x2

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move v0, v4

    move-object/from16 v19, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v19

    .line 15
    :goto_6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v6, :cond_6

    .line 16
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_7

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_7

    const/4 v1, 0x1

    .line 17
    invoke-static {v7, v1}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v2, :cond_7

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_7

    :cond_6
    move-object/from16 v18, v3

    .line 19
    :cond_7
    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_8

    .line 20
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_a

    .line 21
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_9

    if-eqz v10, :cond_9

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    if-ne v0, v5, :cond_b

    if-eqz v9, :cond_b

    :cond_a
    if-nez v2, :cond_b

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    :cond_b
    add-int/2addr v0, v14

    add-int/2addr v11, v15

    if-lt v11, v13, :cond_c

    sub-int/2addr v11, v13

    add-int/2addr v0, v12

    :cond_c
    move-object/from16 v3, v18

    goto :goto_6

    :cond_d
    move-object/from16 v18, v3

    if-eqz v2, :cond_e

    .line 23
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    goto :goto_8

    .line 24
    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 25
    invoke-static {v7, v0}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    goto :goto_8

    .line 26
    :cond_f
    invoke-static {v4, v7, v4}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v2

    .line 27
    :goto_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v3, v18

    iget v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v0, v1, :cond_11

    if-eqz v17, :cond_10

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-object/from16 v2, p0

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    .line 28
    invoke-virtual {v0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    move-object/from16 v5, v17

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    goto :goto_9

    :cond_10
    move-object/from16 v2, p0

    :goto_9
    move-object v1, v3

    goto :goto_a

    :cond_11
    move-object/from16 v2, p0

    move-object/from16 v5, v17

    :cond_12
    move-object v1, v5

    :goto_a
    move-object v0, v2

    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_13
    move-object v2, v0

    move-object v5, v1

    goto :goto_b

    :cond_14
    move-object v2, v0

    .line 29
    :goto_b
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-virtual {v0, v3}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_15

    .line 30
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->explode()V

    :cond_15
    if-eqz v1, :cond_18

    .line 31
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    aget-boolean v3, v0, v3

    if-nez v3, :cond_16

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_17

    .line 32
    :cond_16
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "snd_ray.mp3"

    .line 33
    invoke-virtual {v0, v4, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 34
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 35
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v4

    iget-object v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_17
    const/16 v0, 0x1e

    const/16 v3, 0x32

    .line 36
    invoke-static {v0, v3}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v1, v0, :cond_18

    .line 38
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 39
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-nez v0, :cond_18

    .line 40
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/DisintegrationTrap;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "ondeath"

    .line 41
    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    return-void
.end method
