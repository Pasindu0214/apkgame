.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WornDartTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "WornDartTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x7

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

    const/4 v2, 0x4

    if-nez v1, :cond_14

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 3
    iget v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    iget v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x7

    and-int/lit8 v10, v10, 0x1

    if-lez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x7

    and-int/lit8 v11, v11, 0x2

    if-lez v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    and-int/lit8 v2, v2, 0x7

    if-lez v2, :cond_2

    const/4 v8, 0x1

    .line 6
    :cond_2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 7
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 8
    rem-int v12, v5, v2

    .line 9
    rem-int v13, v6, v2

    .line 10
    div-int v14, v5, v2

    .line 11
    div-int v15, v6, v2

    sub-int/2addr v13, v12

    sub-int/2addr v15, v14

    const/4 v12, -0x1

    if-lez v13, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, -0x1

    :goto_3
    if-lez v15, :cond_4

    const/4 v12, 0x1

    .line 12
    :cond_4
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 13
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    mul-int v12, v12, v2

    if-le v13, v15, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v19, v14

    move v14, v12

    move/from16 v12, v19

    move/from16 v20, v15

    move v15, v13

    move/from16 v13, v20

    .line 14
    :goto_4
    div-int/lit8 v2, v13, 0x2

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move v0, v5

    move-object/from16 v19, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v19

    .line 15
    :goto_5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v8, :cond_6

    .line 16
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-object/from16 v18, v4

    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_7

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

    if-nez v3, :cond_7

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object/from16 v18, v4

    .line 19
    :cond_7
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_8

    .line 20
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_a

    .line 21
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_9

    if-eqz v11, :cond_9

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    if-ne v0, v6, :cond_b

    if-eqz v10, :cond_b

    :cond_a
    if-nez v3, :cond_b

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v1

    :cond_b
    add-int/2addr v0, v14

    add-int/2addr v2, v15

    if-lt v2, v13, :cond_c

    sub-int/2addr v2, v13

    add-int/2addr v0, v12

    :cond_c
    move-object/from16 v4, v18

    goto :goto_5

    :cond_d
    move-object/from16 v18, v4

    if-eqz v3, :cond_e

    .line 23
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    goto :goto_7

    .line 24
    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 25
    invoke-static {v7, v0}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    goto :goto_7

    .line 26
    :cond_f
    invoke-static {v5, v7, v5}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v3

    .line 27
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v4, v18

    iget v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v0, v1, :cond_11

    if-eqz v17, :cond_10

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-object/from16 v2, p0

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    .line 28
    invoke-virtual {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    move-object/from16 v5, v17

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    goto :goto_8

    :cond_10
    move-object/from16 v2, p0

    :goto_8
    move-object v1, v4

    goto :goto_9

    :cond_11
    move-object/from16 v2, p0

    move-object/from16 v5, v17

    :cond_12
    move-object v1, v5

    :goto_9
    const/4 v0, 0x4

    move-object v0, v2

    move-object/from16 v3, v16

    const/4 v2, 0x4

    goto/16 :goto_0

    :cond_13
    move-object v2, v0

    move-object v5, v1

    goto :goto_a

    :cond_14
    move-object v2, v0

    :goto_a
    if-eqz v1, :cond_17

    .line 29
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    aget-boolean v3, v0, v3

    if-nez v3, :cond_16

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_15

    goto :goto_b

    :cond_15
    const/16 v0, 0x8

    const/4 v3, 0x4

    .line 30
    invoke-static {v3, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    goto :goto_c

    .line 31
    :cond_16
    :goto_b
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WornDartTrap$1;

    invoke-direct {v0, v2, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WornDartTrap$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WornDartTrap;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/WornDartTrap;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    :cond_17
    :goto_c
    return-void
.end method
