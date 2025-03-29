.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "PoisonDartTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x5

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

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;->canTarget(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x4

    if-nez v1, :cond_15

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 4
    iget v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    iget v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x7

    and-int/lit8 v10, v10, 0x1

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x7

    and-int/lit8 v11, v11, 0x2

    if-lez v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    and-int/lit8 v2, v2, 0x7

    if-lez v2, :cond_3

    const/4 v8, 0x1

    .line 7
    :cond_3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 9
    rem-int v12, v5, v2

    .line 10
    rem-int v13, v6, v2

    .line 11
    div-int v14, v5, v2

    .line 12
    div-int v15, v6, v2

    sub-int/2addr v13, v12

    sub-int/2addr v15, v14

    const/4 v12, -0x1

    if-lez v13, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, -0x1

    :goto_3
    if-lez v15, :cond_5

    const/4 v12, 0x1

    .line 13
    :cond_5
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 14
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    mul-int v12, v12, v2

    if-le v13, v15, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v19, v14

    move v14, v12

    move/from16 v12, v19

    move/from16 v20, v15

    move v15, v13

    move/from16 v13, v20

    .line 15
    :goto_4
    div-int/lit8 v2, v13, 0x2

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move v1, v5

    move-object/from16 v19, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v19

    .line 16
    :goto_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v8, :cond_7

    .line 17
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-object/from16 v18, v4

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_8

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 18
    invoke-static {v7, v0}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v3, :cond_8

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    :cond_7
    move-object/from16 v18, v4

    .line 20
    :cond_8
    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_9

    .line 21
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_b

    .line 22
    :cond_9
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_a

    if-eqz v11, :cond_a

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    if-ne v1, v6, :cond_c

    if-eqz v10, :cond_c

    :cond_b
    if-nez v3, :cond_c

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    :cond_c
    add-int/2addr v1, v14

    add-int/2addr v2, v15

    if-lt v2, v13, :cond_d

    sub-int/2addr v2, v13

    add-int/2addr v1, v12

    :cond_d
    move-object/from16 v4, v18

    goto :goto_5

    :cond_e
    move-object/from16 v18, v4

    if-eqz v3, :cond_f

    .line 24
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v4, v18

    goto :goto_8

    .line 25
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 26
    invoke-static {v7, v0}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    goto :goto_7

    .line 27
    :cond_10
    invoke-static {v5, v7, v5}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    .line 28
    :goto_8
    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;->canTarget(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v1, v2, :cond_12

    if-eqz v17, :cond_11

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    .line 29
    invoke-virtual {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    move-object/from16 v5, v17

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    :cond_11
    move-object v1, v4

    goto :goto_9

    :cond_12
    move-object/from16 v5, v17

    :cond_13
    move-object v1, v5

    :goto_9
    const/4 v2, 0x4

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_14
    move-object v5, v1

    :cond_15
    if-eqz v1, :cond_18

    .line 30
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    aget-boolean v3, v2, v3

    if-nez v3, :cond_17

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_16

    goto :goto_a

    :cond_16
    const/16 v2, 0x8

    const/4 v3, 0x4

    .line 31
    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 32
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;->poisonAmount()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;->set(F)V

    goto :goto_b

    .line 33
    :cond_17
    :goto_a
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;

    invoke-direct {v2, v0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;)V

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    :cond_18
    :goto_b
    return-void
.end method

.method public canTarget(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public poisonAmount()I
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
