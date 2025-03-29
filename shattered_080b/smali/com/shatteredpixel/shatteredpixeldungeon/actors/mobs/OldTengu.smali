.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "OldTengu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/TenguSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x78

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x14

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

.method public damage(ILjava/lang/Object;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    if-ne v0, v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    .line 4
    :goto_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 5
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int p1, v2, p1

    .line 7
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {p2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    .line 8
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    if-ne v0, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    :goto_1
    mul-int p1, p1, v5

    int-to-float p1, p1

    .line 9
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->addTime(F)V

    .line 10
    :cond_2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-nez p1, :cond_3

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->FIGHT_ARENA:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    if-ne v0, p1, :cond_3

    .line 11
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;)V

    .line 12
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    return-void

    .line 13
    :cond_3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    const/4 p2, 0x0

    if-ne v0, p1, :cond_4

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_4

    sub-int/2addr v0, v4

    .line 14
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "interesting"

    .line 15
    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 16
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->progress()V

    .line 17
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    goto/16 :goto_5

    .line 18
    :cond_4
    div-int/2addr v2, v1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    div-int/2addr p1, v1

    if-eq v2, p1, :cond_14

    .line 19
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    if-eqz v0, :cond_5

    array-length v0, v0

    .line 21
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-eq v0, v1, :cond_6

    .line 22
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 23
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 24
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 25
    invoke-virtual {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez v0, :cond_8

    goto/16 :goto_5

    .line 28
    :cond_8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;

    .line 29
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    .line 30
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    const/4 v2, 0x7

    if-ne v0, v1, :cond_10

    :goto_2
    if-ge p2, v3, :cond_c

    const/16 v0, 0xf

    .line 31
    :goto_3
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 32
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0x12

    const/16 v6, 0x13

    if-lez v0, :cond_a

    .line 33
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v7, v0, v1

    if-eq v7, v6, :cond_a

    aget v0, v0, v1

    if-ne v0, v5, :cond_9

    goto :goto_4

    :cond_9
    move v0, v4

    goto :goto_3

    .line 34
    :cond_a
    :goto_4
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, v0, v1

    if-ne v0, v6, :cond_b

    .line 35
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrippingTrap;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrippingTrap;-><init>()V

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 36
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v1, v5, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 37
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;->discover(I)V

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_c
    const/16 p2, 0x32

    :cond_d
    const/4 v0, 0x3

    .line 38
    invoke-static {v0, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    const/16 v1, 0x1a

    const/16 v3, 0x1e

    invoke-static {v1, v3}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v0

    .line 39
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_f

    :cond_e
    add-int/lit8 p2, p2, -0x1

    if-gtz p2, :cond_d

    :cond_f
    if-gtz p2, :cond_11

    goto :goto_5

    .line 40
    :cond_10
    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 41
    invoke-static {p2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    .line 42
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean p2, p2, v1

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 43
    invoke-virtual {p1, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p2

    const/16 v0, 0x8

    if-lt p2, v0, :cond_10

    .line 44
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p2

    if-nez p2, :cond_10

    .line 45
    :cond_11
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-eqz p2, :cond_12

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    .line 46
    invoke-virtual {p2, v0, v3, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 47
    :cond_12
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->move(II)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    .line 49
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_13

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p2

    .line 50
    invoke-virtual {p1, p2, v3, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 51
    :cond_13
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "snd_puff.mp3"

    .line 52
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 53
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result p1

    div-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    :cond_14
    :goto_5
    return-void
.end method

.method public damageRoll()I
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0x14

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

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

    const-string v1, "notice_mine"

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

    const-string v1, "notice_face"

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

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->assignBoss(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 4
    sput-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    :cond_0
    return-void
.end method
