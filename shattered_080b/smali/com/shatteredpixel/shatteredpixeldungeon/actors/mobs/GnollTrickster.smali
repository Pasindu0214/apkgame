.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Gnoll;
.source "GnollTrickster.java"


# instance fields
.field public combo:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Gnoll;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GnollTricksterSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MISSILE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;->combo:I

    return-void
.end method


# virtual methods
.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;->combo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;->combo:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;->combo:I

    add-int/2addr v2, v3

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 6
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-static {v3, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 7
    :cond_0
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    const/high16 v0, 0x41000000    # 8.0f

    .line 8
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    goto :goto_0

    .line 9
    :cond_1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    sub-int/2addr v2, v3

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;->set(F)V

    :cond_2
    :goto_0
    return p2
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x10

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

    move-object v14, v0

    check-cast v14, Ljava/lang/Integer;

    goto :goto_6

    .line 24
    :cond_e
    invoke-static {v2, v4, v2}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v14

    .line 25
    :goto_6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    move-object/from16 v1, p0

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    move-object/from16 v3, p1

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/lit8 v1, v1, 0x1

    .line 3
    div-int/lit8 v1, v1, 0x2

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-object v0
.end method

.method public die(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->process()V

    return-void
.end method

.method public getCloser(I)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;->combo:I

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v1, v2, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getFurther(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getCloser(I)Z

    move-result p1

    return p1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "combo"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;->combo:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;->combo:I

    const-string v1, "combo"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
