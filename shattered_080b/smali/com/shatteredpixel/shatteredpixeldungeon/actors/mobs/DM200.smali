.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "DM200.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;
    }
.end annotation


# instance fields
.field public ventCooldown:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM200Sprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x46

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x8

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/16 v0, 0x9

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v0, 0x11

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->INORGANIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->ventCooldown:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/ToxicGas;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->ventCooldown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->ventCooldown:I

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x14

    return p1
.end method

.method public damageRoll()I
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x19

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public onZapComplete()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->zap()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "vent_cooldown"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->ventCooldown:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->ventCooldown:I

    const-string v1, "vent_cooldown"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public final zap()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/ToxicGas;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    const/16 v0, 0x1e

    .line 2
    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->ventCooldown:I

    .line 3
    iget v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    and-int/2addr v7, v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    and-int/lit8 v8, v8, 0x2

    if-lez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x1

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 7
    :goto_2
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 9
    rem-int v11, v0, v10

    .line 10
    rem-int v12, v3, v10

    .line 11
    div-int v13, v0, v10

    .line 12
    div-int v14, v3, v10

    sub-int/2addr v12, v11

    sub-int/2addr v14, v13

    if-lez v12, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, -0x1

    :goto_3
    if-lez v14, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, -0x1

    .line 13
    :goto_4
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 14
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    mul-int v13, v13, v10

    if-le v12, v14, :cond_5

    move/from16 v18, v13

    move v13, v11

    move/from16 v11, v18

    goto :goto_5

    :cond_5
    move/from16 v18, v14

    move v14, v12

    move/from16 v12, v18

    .line 15
    :goto_5
    div-int/lit8 v10, v12, 0x2

    const/4 v15, 0x0

    move-object/from16 v16, v5

    move v5, v0

    .line 16
    :goto_6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v9, :cond_6

    .line 17
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v5, v1, :cond_6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v2, v2, v5

    if-nez v2, :cond_7

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v1, v1, v5

    if-nez v1, :cond_7

    const/4 v1, 0x1

    .line 18
    invoke-static {v4, v1}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v15, :cond_7

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_7

    :cond_6
    move-object/from16 v17, v2

    .line 20
    :cond_7
    :goto_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_8

    .line 21
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v5, v1, :cond_8

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v1, v1, v5

    if-nez v1, :cond_a

    .line 22
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v5, v1, :cond_9

    if-eqz v8, :cond_9

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    if-ne v5, v3, :cond_b

    if-eqz v7, :cond_b

    :cond_a
    if-nez v15, :cond_b

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v15, v1

    :cond_b
    add-int/2addr v5, v13

    add-int/2addr v10, v14

    if-lt v10, v12, :cond_c

    sub-int/2addr v10, v12

    add-int/2addr v5, v11

    :cond_c
    move-object/from16 v2, v17

    goto :goto_6

    :cond_d
    move-object/from16 v17, v2

    if-eqz v15, :cond_e

    .line 24
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_8

    .line 25
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26
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

    goto :goto_8

    .line 27
    :cond_f
    invoke-static {v0, v4, v0}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v5, v16

    .line 28
    :goto_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x14

    move-object/from16 v3, v17

    .line 34
    invoke-static {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    goto :goto_a

    :cond_10
    move-object/from16 v3, v17

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "vent"

    move-object/from16 v4, p0

    .line 35
    invoke-static {v4, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    return-void
.end method
