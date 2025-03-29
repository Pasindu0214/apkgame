.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/ShockBomb;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;
.source "ShockBomb.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SHOCK_BOMB:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public explode(I)V
    .locals 23

    move/from16 v0, p1

    .line 1
    invoke-super/range {p0 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    sget-object v4, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 5
    aget v4, v4, v3

    const v5, 0x7fffffff

    if-ge v4, v5, :cond_0

    .line 6
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v2, v2, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_13

    aget-object v5, v2, v4

    .line 9
    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v7, 0x7

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x7

    and-int/lit8 v10, v10, 0x1

    if-lez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x7

    and-int/lit8 v11, v11, 0x2

    if-lez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 12
    :goto_4
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 13
    iget v12, v12, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 14
    rem-int v13, v0, v12

    .line 15
    rem-int v14, v6, v12

    .line 16
    div-int v15, v0, v12

    .line 17
    div-int v16, v6, v12

    sub-int/2addr v14, v13

    sub-int v16, v16, v15

    const/4 v13, -0x1

    if-lez v14, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, -0x1

    :goto_5
    if-lez v16, :cond_6

    const/4 v13, 0x1

    .line 18
    :cond_6
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v17, v2

    .line 19
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int v13, v13, v12

    if-le v14, v2, :cond_7

    goto :goto_6

    :cond_7
    move/from16 v21, v14

    move v14, v2

    move/from16 v2, v21

    move/from16 v22, v15

    move v15, v13

    move/from16 v13, v22

    .line 20
    :goto_6
    div-int/lit8 v12, v14, 0x2

    const/16 v16, 0x0

    move-object/from16 v19, v1

    move/from16 v18, v4

    move v4, v0

    move-object/from16 v21, v16

    move/from16 v16, v3

    move-object/from16 v3, v21

    .line 21
    :goto_7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v7, :cond_8

    .line 22
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v4, v1, :cond_8

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-object/from16 v20, v5

    iget-object v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_9

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_9

    const/4 v1, 0x1

    .line 23
    invoke-static {v8, v1}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v3, :cond_9

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :cond_8
    move-object/from16 v20, v5

    .line 25
    :cond_9
    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_a

    .line 26
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v4, v1, :cond_a

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_c

    .line 27
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v4, v1, :cond_b

    if-eqz v11, :cond_b

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    if-ne v4, v6, :cond_d

    if-eqz v10, :cond_d

    :cond_c
    if-nez v3, :cond_d

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v1

    :cond_d
    add-int/2addr v4, v15

    add-int/2addr v12, v2

    if-lt v12, v14, :cond_e

    sub-int/2addr v12, v14

    add-int/2addr v4, v13

    :cond_e
    move-object/from16 v5, v20

    goto :goto_7

    :cond_f
    move-object/from16 v20, v5

    if-eqz v3, :cond_10

    .line 29
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    goto :goto_9

    .line 30
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    .line 31
    invoke-static {v8, v1}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    goto :goto_9

    .line 32
    :cond_11
    invoke-static {v0, v8, v0}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v3

    .line 33
    :goto_9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v2, v20

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v1, v3, :cond_12

    move-object/from16 v1, v19

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    move-object/from16 v1, v19

    :goto_a
    add-int/lit8 v4, v18, 0x1

    move/from16 v3, v16

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 35
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 37
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v4, v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x10

    if-lez v4, :cond_15

    .line 38
    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v6, v5, 0x5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xa

    invoke-static {v6, v5}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v5

    int-to-float v5, v5

    int-to-float v4, v4

    const/high16 v6, 0x42480000    # 50.0f

    div-float v6, v4, v6

    mul-float v6, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v6, p0

    .line 39
    invoke-virtual {v3, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 40
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_14

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    invoke-static {v3, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 41
    :cond_14
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    invoke-static/range {p1 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v5

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_15
    move-object/from16 v6, p0

    goto :goto_b

    :cond_16
    move-object/from16 v6, p0

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 43
    invoke-virtual {v0, v1, v4, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 44
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(Ljava/util/List;Lcom/watabou/utils/Callback;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 45
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_lightning.mp3"

    .line 46
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x32

    return v0
.end method
