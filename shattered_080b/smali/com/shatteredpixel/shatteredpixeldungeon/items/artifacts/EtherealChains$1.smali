.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$1;
.super Ljava/lang/Object;
.source "EtherealChains.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/Integer;)V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    if-eqz p1, :cond_1f

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1f

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->or([Z[Z[Z)[Z

    move-result-object v3

    invoke-static {v2, v3}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[Z)V

    .line 3
    sget-object v2, Lcom/watabou/utils/PathFinder;->distance:[I

    .line 4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 5
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v2, v2, v3

    const v4, 0x7fffffff

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cant_reach"

    .line 6
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    and-int/2addr v7, v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    and-int/lit8 v8, v8, 0x2

    if-lez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x1

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 11
    :goto_2
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 12
    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 13
    rem-int v11, v3, v10

    .line 14
    rem-int v12, v2, v10

    .line 15
    div-int v13, v3, v10

    .line 16
    div-int v14, v2, v10

    sub-int/2addr v12, v11

    sub-int/2addr v14, v13

    if-lez v12, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, -0x1

    :goto_3
    if-lez v14, :cond_6

    const/4 v13, 0x1

    goto :goto_4

    :cond_6
    const/4 v13, -0x1

    .line 17
    :goto_4
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 18
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    mul-int v13, v13, v10

    if-le v12, v14, :cond_7

    move/from16 v17, v13

    move v13, v11

    move/from16 v11, v17

    goto :goto_5

    :cond_7
    move/from16 v17, v14

    move v14, v12

    move/from16 v12, v17

    .line 19
    :goto_5
    div-int/lit8 v10, v12, 0x2

    const/4 v15, 0x0

    move-object/from16 v16, v0

    move-object/from16 p1, v5

    move v5, v3

    .line 20
    :goto_6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v9, :cond_8

    .line 21
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_8

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v5

    if-nez v1, :cond_8

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 22
    invoke-static {v4, v0}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v15, :cond_8

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 24
    :cond_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_9

    .line 25
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_9

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_b

    .line 26
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_a

    if-eqz v8, :cond_a

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    if-ne v5, v2, :cond_c

    if-eqz v7, :cond_c

    :cond_b
    if-nez v15, :cond_c

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v15, v0

    :cond_c
    add-int/2addr v5, v13

    add-int/2addr v10, v14

    if-lt v10, v12, :cond_d

    sub-int/2addr v10, v12

    add-int/2addr v5, v11

    :cond_d
    move-object/from16 v1, p0

    goto :goto_6

    :cond_e
    if-eqz v15, :cond_f

    .line 28
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_7

    .line 29
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Integer;

    goto :goto_7

    .line 31
    :cond_10
    invoke-static {v3, v4, v3}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v5, p1

    .line 32
    :goto_7
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    const-string v1, "no_charge"

    if-eqz v0, :cond_18

    move-object/from16 v2, p0

    .line 33
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    .line 34
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 35
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v7

    if-eqz v3, :cond_17

    .line 36
    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v0

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "cant_pull"

    .line 37
    invoke-static {v3, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 38
    :cond_11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    .line 40
    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 44
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_12

    .line 45
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v5

    if-nez v5, :cond_12

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 46
    invoke-static {v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_12

    :cond_13
    const/4 v0, -0x1

    goto :goto_9

    :cond_14
    const/4 v0, -0x1

    const/4 v4, -0x1

    :goto_9
    if-ne v4, v0, :cond_15

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "does_nothing"

    .line 47
    invoke-static {v3, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_15
    const/4 v0, 0x0

    .line 48
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v5, v8, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v5

    .line 49
    iget v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-le v5, v8, :cond_16

    new-array v4, v0, [Ljava/lang/Object;

    .line 50
    invoke-static {v3, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_16
    sub-int/2addr v8, v5

    .line 51
    iput v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 52
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 53
    iput-boolean v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 54
    iget-object v0, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    iget-object v8, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v8}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v8

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;

    invoke-direct {v9, v3, v7, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;ILcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    invoke-direct {v5, v0, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/watabou/utils/Callback;)V

    invoke-virtual {v1, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto/16 :goto_c

    :cond_17
    const/4 v0, 0x0

    .line 55
    throw v0

    :cond_18
    move-object/from16 v2, p0

    .line 56
    iget-object v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    .line 57
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_1e

    .line 58
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_19

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "inside_wall"

    .line 59
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 60
    :cond_19
    sget-object v4, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_1b

    aget v7, v4, v6

    .line 61
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v7

    aget-boolean v7, v8, v9

    if-eqz v7, :cond_1a

    const/4 v4, 0x1

    goto :goto_b

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_1b
    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_1c

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "nothing_to_grab"

    move-object/from16 v4, v16

    .line 62
    invoke-static {v4, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_1c
    move-object/from16 v4, v16

    const/4 v5, 0x0

    .line 63
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 64
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v7, v8, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v7

    .line 65
    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-le v7, v8, :cond_1d

    new-array v0, v5, [Ljava/lang/Object;

    .line 66
    invoke-static {v4, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_1d
    sub-int/2addr v8, v7

    .line 67
    iput v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 68
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 69
    iput-boolean v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 70
    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v4, v1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v7

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;

    invoke-direct {v8, v0, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V

    invoke-direct {v5, v1, v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/watabou/utils/Callback;)V

    invoke-virtual {v4, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    .line 71
    throw v0

    :cond_1f
    move-object v2, v1

    :goto_c
    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "prompt"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
