.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "NewTengu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;
    }
.end annotation


# static fields
.field public static throwingChar:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# instance fields
.field public abilitiesUsed:I

.field public abilityCooldown:I

.field public arenaJumps:I

.field public lastAbility:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/TenguSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0xa0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v0, 0xf

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xc

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Blindness;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->lastAbility:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    .line 14
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->arenaJumps:I

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    return-void
.end method

.method public static throwFire(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    and-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    and-int/lit8 v8, v8, 0x4

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 4
    :goto_2
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 6
    rem-int v10, v2, v9

    .line 7
    rem-int v11, v3, v9

    .line 8
    div-int v12, v2, v9

    .line 9
    div-int v13, v3, v9

    sub-int/2addr v11, v10

    sub-int/2addr v13, v12

    const/4 v10, -0x1

    if-lez v11, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, -0x1

    :goto_3
    if-lez v13, :cond_4

    const/4 v10, 0x1

    .line 10
    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 11
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    mul-int v10, v10, v9

    if-le v11, v13, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    move/from16 v17, v13

    move v13, v11

    move/from16 v11, v17

    .line 12
    :goto_4
    div-int/lit8 v9, v11, 0x2

    const/4 v14, 0x0

    move v15, v2

    .line 13
    :goto_5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v8, :cond_6

    .line 14
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v15, v1, :cond_6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v0, v0, v15

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, v15

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 15
    invoke-static {v4, v0}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v14, :cond_6

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 17
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_7

    .line 18
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v15, v0, :cond_7

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v0, v0, v15

    if-nez v0, :cond_9

    .line 19
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v15, v0, :cond_8

    if-eqz v7, :cond_8

    invoke-static {v15}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    if-ne v15, v3, :cond_a

    if-eqz v6, :cond_a

    :cond_9
    if-nez v14, :cond_a

    .line 20
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v14, v0

    :cond_a
    add-int/2addr v15, v12

    add-int/2addr v9, v13

    if-lt v9, v11, :cond_b

    sub-int/2addr v9, v11

    add-int/2addr v15, v10

    :cond_b
    move-object/from16 v0, p0

    goto :goto_5

    :cond_c
    if-eqz v14, :cond_d

    .line 21
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    goto :goto_6

    .line 22
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 23
    invoke-static {v4, v0}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_6

    .line 24
    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v0, 0x0

    .line 25
    :goto_7
    sget-object v1, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 26
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_f

    move-object/from16 v1, p0

    .line 27
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    move-object/from16 v3, p1

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 28
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;

    iput v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$FireAbility;->direction:I

    .line 29
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const v2, 0x3cf5c28f    # 0.03f

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    const/4 v0, 0x1

    return v0

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    :cond_0
    return-void
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x12

    return p1
.end method

.method public canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x7

    and-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x7

    and-int/lit8 v8, v8, 0x4

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 4
    :goto_2
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 6
    rem-int v10, v2, v9

    .line 7
    rem-int v11, v3, v9

    .line 8
    div-int v12, v2, v9

    .line 9
    div-int v13, v3, v9

    sub-int/2addr v11, v10

    sub-int/2addr v13, v12

    const/4 v10, -0x1

    if-lez v11, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, -0x1

    :goto_3
    if-lez v13, :cond_4

    const/4 v10, 0x1

    .line 10
    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 11
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    mul-int v10, v10, v9

    if-le v11, v13, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    move/from16 v17, v13

    move v13, v11

    move/from16 v11, v17

    .line 12
    :goto_4
    div-int/lit8 v9, v11, 0x2

    const/4 v14, 0x0

    move v15, v2

    .line 13
    :goto_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v8, :cond_6

    .line 14
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v15, v0, :cond_6

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v1, v1, v15

    if-nez v1, :cond_6

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, v15

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 15
    invoke-static {v4, v0}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v14, :cond_6

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 17
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_7

    .line 18
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v15, v0, :cond_7

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v0, v0, v15

    if-nez v0, :cond_9

    .line 19
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v15, v0, :cond_8

    if-eqz v7, :cond_8

    invoke-static {v15}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    if-ne v15, v3, :cond_a

    if-eqz v6, :cond_a

    :cond_9
    if-nez v14, :cond_a

    .line 20
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v14, v0

    :cond_a
    add-int/2addr v15, v12

    add-int/2addr v9, v13

    if-lt v9, v11, :cond_b

    sub-int/2addr v9, v11

    add-int/2addr v15, v10

    :cond_b
    move-object/from16 v1, p1

    goto :goto_5

    :cond_c
    if-eqz v14, :cond_d

    .line 21
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    goto :goto_6

    .line 22
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 23
    invoke-static {v4, v0}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/Integer;

    goto :goto_6

    .line 24
    :cond_e
    invoke-static {v2, v4, v2}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v14

    .line 25
    :goto_6
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v1, p1

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public canUseAbility()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->targetAbilityUses()I

    move-result v1

    if-lt v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->targetAbilityUses()I

    move-result v0

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    sub-int/2addr v0, v3

    const/4 v3, 0x4

    if-lt v0, v3, :cond_2

    .line 5
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->targetAbilityUses()I

    move-result v0

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    sub-int/2addr v0, v4

    const/4 v4, 0x3

    const/4 v5, -0x1

    if-lt v0, v4, :cond_4

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    if-eq v0, v5, :cond_3

    if-le v0, v1, :cond_5

    :cond_3
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    goto :goto_0

    .line 8
    :cond_4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    if-ne v0, v5, :cond_5

    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    .line 9
    :cond_5
    :goto_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    if-nez v0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    .line 4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 5
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int p2, v1, p1

    .line 7
    div-int/lit8 v1, v1, 0x14

    div-int/lit8 p1, p1, 0x14

    sub-int p1, v1, p1

    const/4 v2, 0x2

    if-lt p1, v2, :cond_1

    add-int/lit8 p1, v1, -0x1

    mul-int/lit8 p1, p1, 0x14

    .line 8
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 9
    :cond_1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    .line 10
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    if-ne v0, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    :goto_0
    mul-int p2, p2, v5

    int-to-float p2, p2

    .line 11
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->addTime(F)V

    .line 12
    :cond_3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-nez p1, :cond_4

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_ARENA:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    if-ne v0, p1, :cond_4

    .line 13
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;)V

    .line 14
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    return-void

    .line 15
    :cond_4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    const/4 p2, 0x0

    if-ne v0, p1, :cond_5

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/2addr v0, v2

    if-gt p1, v0, :cond_5

    .line 16
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "interesting"

    .line 17
    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->progress()V

    .line 19
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    goto/16 :goto_2

    .line 20
    :cond_5
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    div-int/lit8 p1, p1, 0x14

    if-eq v1, p1, :cond_17

    .line 21
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    if-eqz p1, :cond_6

    array-length p1, p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 22
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-eq p1, v0, :cond_7

    .line 23
    :cond_6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 24
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 25
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 26
    invoke-virtual {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 28
    :cond_8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez p1, :cond_9

    goto/16 :goto_2

    .line 29
    :cond_9
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v5, "snd_puff.mp3"

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x7

    if-eqz v0, :cond_14

    .line 30
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;

    .line 31
    iget-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    .line 32
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    if-ne p1, v9, :cond_10

    .line 33
    iget-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1}, La/b/a/r/g;->clear()V

    .line 34
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    invoke-static {v0, p1, v4, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 35
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->buildFlagMaps()V

    .line 36
    :cond_a
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->randomTenguCellPos()I

    move-result p1

    .line 37
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v3

    const/4 v9, 0x3

    if-lt v3, v9, :cond_a

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-nez v3, :cond_a

    .line 38
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_b

    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v3

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v9

    .line 39
    invoke-virtual {v3, v9, v6, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 40
    :cond_b
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v9, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->move(II)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    .line 42
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_c

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    .line 43
    invoke-virtual {p1, v3, v6, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 44
    :cond_c
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 45
    invoke-virtual {p1, v5, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const p1, 0x3f666666    # 0.9f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 46
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/lit8 v3, v3, -0x50

    int-to-float v3, v3

    const/high16 v5, 0x42a00000    # 80.0f

    div-float/2addr v3, v5

    mul-float v3, v3, v1

    sub-float/2addr p1, v3

    .line 47
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v1

    .line 48
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v3

    .line 49
    invoke-static {v8, v8}, Lcom/watabou/utils/PathFinder;->setMapSize(II)V

    .line 50
    iget v5, v1, Lcom/watabou/utils/Point;->x:I

    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    iget v10, v9, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v10, v4

    sub-int/2addr v5, v10

    iget v1, v1, Lcom/watabou/utils/Point;->y:I

    iget v9, v9, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v9, v4

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x7

    add-int v11, v1, v5

    .line 51
    iget v1, v3, Lcom/watabou/utils/Point;->x:I

    sub-int/2addr v1, v10

    iget v3, v3, Lcom/watabou/utils/Point;->y:I

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v1

    .line 52
    :cond_d
    invoke-static {v8, v8, p1, p2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->generate(IIFIZ)[Z

    move-result-object v1

    const/4 v5, 0x0

    .line 53
    invoke-static {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v5

    invoke-static {v11, v5}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[Z)V

    .line 54
    sget-object v5, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v5, v5, v3

    if-gt v5, v7, :cond_d

    .line 55
    iget p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 56
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    .line 57
    invoke-static {p1, v3}, Lcom/watabou/utils/PathFinder;->setMapSize(II)V

    const/4 p1, 0x0

    .line 58
    :goto_1
    array-length v3, v1

    if-ge p1, v3, :cond_f

    .line 59
    aget-boolean v3, v1, p1

    if-eqz v3, :cond_e

    .line 60
    rem-int/lit8 v3, p1, 0x7

    .line 61
    div-int/lit8 v5, p1, 0x7

    .line 62
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    iget v8, v7, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v3, v8

    add-int/2addr v3, v4

    iget v7, v7, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v5, v7

    add-int/2addr v5, v4

    .line 63
    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v7

    add-int/2addr v5, v3

    .line 64
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/StormCloud;

    invoke-static {v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result v3

    if-nez v3, :cond_e

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Regrowth;

    .line 65
    invoke-static {v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volumeAt(ILjava/lang/Class;)I

    move-result v3

    const/16 v7, 0x9

    if-gt v3, v7, :cond_e

    const/16 v3, 0x11

    .line 66
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v5, v3, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 67
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/TenguDartTrap;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/TenguDartTrap;-><init>()V

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->hide()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {v0, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 68
    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v3

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v5

    .line 69
    invoke-virtual {v3, v5, v6, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 70
    :cond_f
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap()V

    .line 71
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    .line 72
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->fadeDelay:F

    .line 73
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->tenguCell:Lcom/watabou/utils/Rect;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->setCoveringArea(Lcom/watabou/utils/Rect;)V

    .line 74
    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;Z)V

    .line 75
    iget-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 76
    :cond_10
    iget p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 77
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    .line 78
    iget-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 79
    invoke-virtual {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p2

    const/4 v2, 0x5

    if-lt p2, v2, :cond_10

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 80
    invoke-virtual {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p2

    if-gt p2, v8, :cond_10

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p2

    if-lt p2, v7, :cond_10

    .line 82
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p2

    if-nez p2, :cond_10

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    .line 83
    invoke-virtual {p2, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_10

    .line 84
    iget-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p2, p2, v2

    if-eqz p2, :cond_11

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p2

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    .line 85
    invoke-virtual {p2, v2, v6, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 86
    :cond_11
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->move(II)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    .line 88
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->arenaJumps:I

    if-ge p2, v3, :cond_12

    add-int/2addr p2, v4

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->arenaJumps:I

    .line 89
    :cond_12
    iget-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean p2, p2, p1

    if-eqz p2, :cond_13

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p2

    .line 90
    invoke-virtual {p1, p2, v6, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 91
    :cond_13
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 92
    invoke-virtual {p1, v5, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    goto :goto_2

    .line 93
    :cond_14
    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p2

    .line 94
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_15

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v2, v6, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 96
    :cond_15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->move(II)V

    .line 97
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    .line 98
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_16

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p2

    .line 99
    invoke-virtual {p1, p2, v6, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 100
    :cond_16
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 101
    invoke-virtual {p1, v5, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_17
    :goto_2
    return-void
.end method

.method public damageRoll()I
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0xc

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public die(Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;-><init>()V

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->bossSlain()V

    .line 4
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateBossSlain()V

    .line 6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "defeated"

    .line 8
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    return-void
.end method

.method public doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack(I)V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->attackDelay()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    const/4 p1, 0x0

    return p1
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-gtz v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notice()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showAlert()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->isAssigned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->assignBoss(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    .line 5
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    .line 6
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 8
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "notice_gotcha"

    .line 9
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 11
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz v2, :cond_1

    .line 12
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->sayBoss()V

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 14
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "notice_have"

    .line 15
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onAdd()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "last_ability"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->lastAbility:I

    const-string v0, "abilities_used"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    const-string v0, "arena_jumps"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->arenaJumps:I

    const-string v0, "ability_cooldown"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    .line 6
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->assignBoss(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 7
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 8
    sput-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    :cond_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->lastAbility:I

    const-string v1, "last_ability"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    const-string v1, "abilities_used"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->arenaJumps:I

    const-string v1, "arena_jumps"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilityCooldown:I

    const-string v1, "ability_cooldown"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public final targetAbilityUses()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->arenaJumps:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x2

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public useAbility()Z
    .locals 15

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :cond_0
    :goto_0
    if-nez v4, :cond_f

    .line 2
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    if-ne v5, v3, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    .line 3
    :cond_2
    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v5

    .line 4
    :goto_1
    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->lastAbility:I

    if-ne v5, v8, :cond_3

    const/16 v8, 0xa

    invoke-static {v8}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    if-eq v5, v3, :cond_e

    if-eq v5, v7, :cond_8

    .line 5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 6
    sget-object v7, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_2
    if-ge v9, v8, :cond_6

    aget v11, v7, v9

    .line 7
    iget v12, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v12, v11

    .line 8
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v13, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v11, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v11

    if-lt v11, v6, :cond_5

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v13, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v13, v13, v12

    if-nez v13, :cond_5

    if-eq v10, v1, :cond_4

    .line 9
    iget v13, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 10
    invoke-virtual {v11, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v11

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v14, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v13, v10, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_5

    :cond_4
    move v10, v12

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    if-ne v10, v1, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    .line 11
    :cond_7
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->throwingChar:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 12
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;-><init>()V

    .line 13
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 14
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v6, v6, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$2;

    invoke-direct {v8, v4, v10, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$BombAbility$BombItem;ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 15
    invoke-virtual {v6, v7, v10, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->reset(Lcom/watabou/noosa/Visual;ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    const/4 v4, 0x1

    .line 16
    :goto_3
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    if-nez v6, :cond_0

    if-nez v4, :cond_0

    .line 17
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->throwFire(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v4

    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 18
    :cond_8
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 19
    sget-object v6, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v8, v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_5
    if-ge v9, v8, :cond_c

    aget v11, v6, v9

    .line 20
    iget v12, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v12, v11

    .line 21
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v13, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v11, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v11

    if-lt v11, v7, :cond_b

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v11, v11, v12

    if-nez v11, :cond_b

    .line 22
    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;

    invoke-virtual {p0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;

    .line 23
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility;->shockerPos:I

    invoke-virtual {v14, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v13

    if-ge v13, v7, :cond_9

    const/4 v11, 0x0

    goto :goto_6

    :cond_a
    const/4 v11, 0x1

    :goto_6
    if-eqz v11, :cond_b

    .line 24
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v13, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v11, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v11

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v14, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v13, v10, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_b

    move v10, v12

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_c
    if-ne v10, v1, :cond_d

    const/4 v4, 0x0

    goto :goto_7

    .line 25
    :cond_d
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->throwingChar:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 26
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility$ShockerItem;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility$ShockerItem;-><init>()V

    .line 27
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 28
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v6, v6, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v6, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$3;

    invoke-direct {v8, v4, v10, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$ShockerAbility$ShockerItem;ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 29
    invoke-virtual {v6, v7, v10, v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->reset(Lcom/watabou/noosa/Visual;ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    const/4 v4, 0x1

    .line 30
    :goto_7
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    if-ne v6, v3, :cond_0

    if-nez v4, :cond_0

    .line 31
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->throwFire(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v4

    goto/16 :goto_4

    .line 32
    :cond_e
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->throwFire(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v4

    goto/16 :goto_0

    .line 33
    :cond_f
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->targetAbilityUses()I

    move-result v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    goto :goto_8

    :cond_10
    const/high16 v0, 0x40000000    # 2.0f

    .line 35
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 36
    :goto_8
    iput v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->lastAbility:I

    .line 37
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->abilitiesUsed:I

    if-ne v5, v3, :cond_11

    const/4 v2, 0x1

    :cond_11
    return v2
.end method
