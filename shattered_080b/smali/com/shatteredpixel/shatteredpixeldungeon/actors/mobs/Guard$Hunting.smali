.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$Hunting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;
.source "Guard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hunting"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    .line 2
    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;->chainsUsed:Z

    if-nez v3, :cond_12

    if-eqz v2, :cond_12

    .line 3
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 4
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isCharmedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 5
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 6
    invoke-virtual {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_12

    const/4 v0, 0x3

    .line 7
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_12

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

    iget-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 8
    iget-boolean v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;->chainsUsed:Z

    const/4 v6, 0x0

    if-nez v5, :cond_11

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v0

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 9
    :cond_0
    iget v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 13
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 14
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 15
    rem-int v9, v0, v8

    .line 16
    rem-int v10, v4, v8

    .line 17
    div-int v11, v0, v8

    .line 18
    div-int v12, v4, v8

    sub-int/2addr v10, v9

    sub-int/2addr v12, v11

    if-lez v10, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, -0x1

    :goto_0
    if-lez v12, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, -0x1

    .line 19
    :goto_1
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 20
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int v11, v11, v8

    if-le v10, v12, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v16, v11

    move v11, v9

    move/from16 v9, v16

    move/from16 v17, v12

    move v12, v10

    move/from16 v10, v17

    .line 21
    :goto_2
    div-int/lit8 v8, v10, 0x2

    const/4 v13, 0x0

    move v14, v0

    .line 22
    :goto_3
    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v15, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v14, v15, :cond_4

    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v14

    if-nez v1, :cond_4

    iget-object v1, v15, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v1, v1, v14

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 24
    invoke-static {v5, v1}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v13, :cond_4

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 26
    :cond_4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v14, v1, :cond_5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v1, v1, v14

    if-nez v1, :cond_7

    .line 28
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v14, v1, :cond_6

    invoke-static {v14}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    if-ne v14, v4, :cond_8

    :cond_7
    if-nez v13, :cond_8

    .line 29
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v13, v1

    :cond_8
    add-int/2addr v14, v9

    add-int/2addr v8, v12

    if-lt v8, v10, :cond_9

    sub-int/2addr v8, v10

    add-int/2addr v14, v11

    :cond_9
    move-object/from16 v1, p0

    goto :goto_3

    :cond_a
    if-eqz v13, :cond_b

    .line 30
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    .line 31
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/Integer;

    goto :goto_4

    .line 33
    :cond_c
    invoke-static {v0, v5, v0}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v13

    .line 34
    :goto_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v0, v1, :cond_11

    .line 35
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_11

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_d

    goto/16 :goto_7

    .line 37
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 39
    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 43
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_e

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-nez v4, :cond_e

    const/4 v0, -0x1

    goto :goto_6

    :cond_f
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_6
    if-ne v1, v0, :cond_10

    goto :goto_7

    .line 44
    :cond_10
    iput v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "scorpion"

    .line 45
    invoke-static {v3, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 46
    iget-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v4, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v6}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v6

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;

    invoke-direct {v7, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;I)V

    invoke-direct {v5, v0, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Chains;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/watabou/utils/Callback;)V

    invoke-virtual {v4, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;->chainsUsed:Z

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_12

    const/4 v0, 0x0

    return v0

    .line 48
    :cond_12
    invoke-super/range {p0 .. p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->act(ZZ)Z

    move-result v0

    return v0
.end method
