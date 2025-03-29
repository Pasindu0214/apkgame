.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "DwarfKing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKBarrior;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$KingDamager;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKWarlock;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKMonk;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKGhoul;
    }
.end annotation


# instance fields
.field public abilityCooldown:F

.field public lastAbility:I

.field public phase:I

.field public summonCooldown:F

.field public summonsMade:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/KingSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x12c

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x28

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v0, 0x16

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    .line 11
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    .line 12
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->lastAbility:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKMonk;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKWarlock;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKGhoul;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v4, v10, :cond_23

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    const/16 v2, 0xe

    const/16 v3, 0xa

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_0

    invoke-virtual {v0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    .line 4
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    goto :goto_0

    .line 5
    :cond_0
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    cmpl-float v6, v1, v4

    if-lez v6, :cond_1

    sub-float/2addr v1, v8

    .line 6
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    .line 7
    :cond_1
    :goto_0
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    if-lez v1, :cond_2

    .line 8
    invoke-virtual {v0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v10

    .line 9
    :cond_2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_22

    .line 10
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->lastAbility:I

    if-nez v1, :cond_4

    .line 11
    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    :goto_1
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->lastAbility:I

    goto :goto_4

    :cond_4
    if-ne v1, v10, :cond_6

    .line 12
    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    :goto_2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->lastAbility:I

    goto :goto_4

    .line 13
    :cond_6
    invoke-static {v5}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x2

    :goto_3
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->lastAbility:I

    .line 14
    :goto_4
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->lastAbility:I

    if-ne v1, v10, :cond_e

    .line 15
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->getSubjects()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 17
    invoke-virtual {v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :cond_9
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;

    .line 18
    iget v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;->object:I

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v14

    if-ne v13, v14, :cond_9

    const/4 v12, 0x1

    goto :goto_6

    :cond_a
    if-nez v12, :cond_8

    if-eqz v5, :cond_b

    .line 19
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v12, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v13, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v11, v12, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v11

    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v13, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v14, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v12, v13, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v12

    if-ge v11, v12, :cond_8

    :cond_b
    move-object v5, v6

    goto :goto_5

    :cond_c
    if-eqz v5, :cond_d

    const/high16 v4, 0x42c80000    # 100.0f

    .line 20
    invoke-static {v5, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;

    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v11

    iput v11, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;->object:I

    .line 21
    invoke-static {v0, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v4

    iput v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;->object:I

    const-string v1, "lifelink_"

    .line 22
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10, v9, v1}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 23
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v4, v1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$HealthRay;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->destinationCenter()Lcom/watabou/utils/PointF;

    move-result-object v1

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->destinationCenter()Lcom/watabou/utils/PointF;

    move-result-object v5

    invoke-direct {v6, v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$HealthRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v4, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_e

    .line 24
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    .line 25
    invoke-virtual {v0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v10

    .line 26
    :cond_e
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez v1, :cond_10

    :cond_f
    const/4 v2, 0x2

    goto/16 :goto_10

    .line 27
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->getSubjects()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_11
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v2, :cond_12

    .line 28
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v5, v6, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v5

    if-ge v4, v5, :cond_11

    :cond_12
    move-object v2, v3

    goto :goto_8

    :cond_13
    if-eqz v2, :cond_f

    .line 29
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 30
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 34
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 35
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 36
    rem-int v11, v3, v8

    .line 37
    rem-int v12, v1, v8

    .line 38
    div-int v13, v3, v8

    .line 39
    div-int v14, v1, v8

    sub-int/2addr v12, v11

    sub-int/2addr v14, v13

    const/4 v11, -0x1

    if-lez v12, :cond_14

    const/4 v13, 0x1

    goto :goto_9

    :cond_14
    const/4 v13, -0x1

    :goto_9
    if-lez v14, :cond_15

    const/4 v11, 0x1

    .line 40
    :cond_15
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 41
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    mul-int v11, v11, v8

    if-le v12, v14, :cond_16

    move/from16 v16, v13

    move v13, v11

    move/from16 v11, v16

    goto :goto_a

    :cond_16
    move/from16 v16, v14

    move v14, v12

    move/from16 v12, v16

    .line 42
    :goto_a
    div-int/lit8 v8, v12, 0x2

    const/4 v15, 0x0

    move v7, v3

    .line 43
    :cond_17
    :goto_b
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v9, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    if-ne v7, v1, :cond_18

    if-nez v15, :cond_18

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v15, v9

    :cond_18
    add-int/2addr v7, v11

    add-int/2addr v8, v14

    if-lt v8, v12, :cond_17

    sub-int/2addr v8, v12

    add-int/2addr v7, v13

    goto :goto_b

    :cond_19
    if-eqz v15, :cond_1a

    .line 47
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_c

    .line 48
    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 49
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_c

    .line 50
    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :goto_c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 52
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-nez v4, :cond_1c

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_1c

    goto :goto_e

    .line 53
    :cond_1c
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v3

    .line 54
    sget-object v4, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_1e

    aget v7, v4, v6

    .line 55
    iget v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v8, v7

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-nez v8, :cond_1d

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    iget v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v11, v7

    aget-boolean v9, v9, v11

    if-nez v9, :cond_1d

    iget-object v9, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 56
    invoke-virtual {v8, v11, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v8

    cmpl-float v8, v8, v3

    if-lez v8, :cond_1d

    .line 57
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v1, v7

    .line 58
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v1, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v3

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1e
    move v3, v1

    .line 59
    :goto_e
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {v1, v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    .line 60
    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 61
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 62
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v1

    .line 63
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 64
    sget-object v4, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_20

    aget v7, v4, v6

    .line 65
    iget-object v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v8, v7

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    if-nez v8, :cond_1f

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    iget-object v11, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v11, v7

    aget-boolean v9, v9, v11

    if-nez v9, :cond_1f

    iget v9, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 66
    invoke-virtual {v8, v11, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v8

    cmpg-float v8, v8, v1

    if-gez v8, :cond_1f

    .line 67
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v1, v7

    .line 68
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v1, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v3

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 69
    :cond_20
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v3, v1, :cond_21

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    :cond_21
    const-string v1, "teleport_"

    .line 70
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v10, v2, v1}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_11

    :goto_10
    const/4 v7, 0x0

    :goto_11
    if-eqz v7, :cond_2c

    .line 71
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->lastAbility:I

    .line 72
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    const/16 v2, 0xe

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v10

    :cond_22
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    .line 74
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    goto/16 :goto_14

    :cond_23
    const/4 v7, 0x4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_2b

    .line 75
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    const-string v9, "snd_challenge.mp3"

    const v11, 0x3ecccccd    # 0.4f

    const/4 v12, 0x5

    if-ge v4, v7, :cond_25

    if-nez v4, :cond_24

    .line 76
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    invoke-static {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    invoke-virtual {v1, v2, v11, v8}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 77
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {v1, v9, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "wave_1"

    .line 79
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 80
    :cond_24
    invoke-virtual {v0, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(ILjava/lang/Class;)Z

    const/high16 v1, 0x40400000    # 3.0f

    .line 81
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 82
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    return v10

    .line 83
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v4

    const/16 v8, 0xc8

    if-gt v4, v8, :cond_29

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    if-ge v4, v5, :cond_29

    if-ne v4, v7, :cond_26

    .line 84
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    invoke-static {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v11, v7}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 85
    sget-object v4, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 86
    invoke-virtual {v4, v9, v5, v5, v5}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "wave_2"

    .line 87
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 88
    :cond_26
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_28

    const/4 v4, 0x2

    .line 89
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_27

    goto :goto_12

    :cond_27
    move-object v1, v2

    :goto_12
    invoke-virtual {v0, v6, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(ILjava/lang/Class;)Z

    goto :goto_13

    .line 90
    :cond_28
    invoke-virtual {v0, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(ILjava/lang/Class;)Z

    .line 91
    :goto_13
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v10

    .line 93
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v4

    const/16 v5, 0x64

    if-gt v4, v5, :cond_2a

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    const/16 v5, 0xc

    if-ge v4, v5, :cond_2a

    .line 94
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    invoke-static {v12}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v4, v6, v11, v8}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 95
    sget-object v4, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual {v4, v9, v6, v6, v6}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "wave_3"

    .line 97
    invoke-static {v0, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v7, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(ILjava/lang/Class;)Z

    .line 99
    invoke-virtual {v0, v7, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(ILjava/lang/Class;)Z

    .line 100
    invoke-virtual {v0, v7, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(ILjava/lang/Class;)Z

    .line 101
    invoke-virtual {v0, v7, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(ILjava/lang/Class;)Z

    .line 102
    iput v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 103
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v10

    :cond_2a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v10

    :cond_2b
    if-ne v4, v6, :cond_2c

    .line 105
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ge v1, v7, :cond_2c

    .line 106
    invoke-virtual {v0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    .line 107
    :cond_2c
    :goto_14
    invoke-super/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v1

    return v1
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x1a

    return p1
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->isInvulnerable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    instance-of v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Viscosity$DeferedDamage;

    if-nez v0, :cond_1

    .line 4
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Viscosity$DeferedDamage;

    invoke-static {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Viscosity$DeferedDamage;

    .line 5
    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Viscosity$DeferedDamage;->damage:I

    add-int/2addr v0, p1

    iput v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Viscosity$DeferedDamage;->damage:I

    .line 6
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v0, 0xff8800

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Viscosity;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "deferred"

    invoke-static {v1, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 8
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    .line 9
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->isImmune(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_2

    div-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->addTime(F)V

    .line 11
    :cond_2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const/4 p2, 0x2

    if-ne p1, v2, :cond_6

    .line 12
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr v0, p1

    .line 13
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    int-to-float v0, v0

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    .line 14
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    const/16 v0, 0x32

    if-gt p1, v0, :cond_8

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 16
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v0, 0xff00

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "invulnerable"

    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->throne:I

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 18
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    .line 20
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    .line 21
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    .line 22
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKBarrior;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKBarrior;

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->setShield(I)V

    .line 23
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;

    .line 24
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_0

    .line 25
    :cond_3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    new-array p2, v3, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length p2, p1

    :goto_1
    if-ge v3, p2, :cond_8

    aget-object v0, p1, v3

    .line 26
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Monk;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Warlock;

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-ne p1, p2, :cond_7

    .line 28
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result p1

    if-nez p1, :cond_7

    .line 29
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 30
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    .line 31
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    .line 32
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0, v1, p2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 33
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "snd_challenge.mp3"

    .line 34
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    new-array p1, v2, [Ljava/lang/Object;

    .line 35
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 36
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "enraged"

    .line 37
    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_2

    .line 38
    :cond_7
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    if-ne p1, v1, :cond_8

    const/16 p1, 0x14

    if-le v0, p1, :cond_8

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-ge p2, p1, :cond_8

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "losing"

    .line 39
    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public damageRoll()I
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x19

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public die(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->bossSlain()V

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, v1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 7
    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v3, v4

    .line 8
    invoke-virtual {v2, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    .line 10
    :cond_1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ArmorKit;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ArmorKit;-><init>()V

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 11
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v1, v2

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    goto :goto_1

    .line 13
    :cond_2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ArmorKit;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ArmorKit;-><init>()V

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 14
    :goto_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateBossSlain()V

    .line 15
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 16
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->getSubjects()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "defeated"

    .line 20
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    return-void
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public final getSubjects()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 3
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v3, v4, :cond_0

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Monk;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Warlock;

    if-eqz v3, :cond_0

    .line 4
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isAlive()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

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

.method public isImmune(Ljava/lang/Class;)Z
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Doom;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isInvulnerable(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$KingDamager;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notice()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showAlert()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->isAssigned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->assignBoss(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "notice"

    .line 4
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 6
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->sayBoss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "phase"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const-string v0, "summons_made"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    const-string v0, "summon_cd"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    const-string v0, "ability_cd"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    const-string v0, "last_ability"

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->lastAbility:I

    .line 7
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    const-string v1, "phase"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    const-string v1, "summons_made"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonCooldown:F

    const-string v1, "summon_cd"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->abilityCooldown:F

    const-string v1, "ability_cd"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->lastAbility:I

    const-string v1, "last_ability"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public final summonSubject(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonsMade:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKMonk;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKWarlock;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(ILjava/lang/Class;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKGhoul;

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->summonSubject(ILjava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final summonSubject(ILjava/lang/Class;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;)Z"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;-><init>()V

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;

    .line 6
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 7
    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 8
    :goto_0
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCityBossLevel;->pedestals:[I

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_5

    aget v8, v3, v6

    .line 11
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;

    .line 12
    iget v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    if-ne v10, v8, :cond_2

    const/4 v7, 0x0

    :cond_3
    if-eqz v7, :cond_4

    .line 13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    goto :goto_2

    .line 15
    :cond_6
    invoke-static {v2}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    :goto_2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    if-ne v1, v3, :cond_7

    return v5

    .line 17
    :cond_7
    iput-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->summon:Ljava/lang/Class;

    .line 18
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->delay:I

    .line 19
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    return v7
.end method
