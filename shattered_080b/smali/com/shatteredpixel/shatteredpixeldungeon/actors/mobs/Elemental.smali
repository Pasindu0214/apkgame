.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Elemental.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ShockElemental;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$FrostElemental;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$NewbornFireElemental;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$FireElemental;
    }
.end annotation


# instance fields
.field public harmfulBuffs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;",
            ">;>;"
        }
    .end annotation
.end field

.field public rangedCooldown:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    const/16 v0, 0x3c

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/16 v1, 0xa

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    const/4 v0, 0x3

    const/4 v1, 0x5

    .line 7
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->rangedCooldown:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->harmfulBuffs:Ljava/util/ArrayList;

    return-void
.end method

.method public static random()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x32

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 4
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$FireElemental;

    return-object v0

    :cond_1
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$FrostElemental;

    return-object v0

    .line 6
    :cond_2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ShockElemental;

    return-object v0
.end method


# virtual methods
.method public act()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->rangedCooldown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->rangedCooldown:I

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->harmfulBuffs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v1, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    :goto_0
    return-void
.end method

.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->meleeProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    return p2
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x19

    return p1
.end method

.method public canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->rangedCooldown:I

    if-gtz v2, :cond_10

    .line 2
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v4, 0x6

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x6

    and-int/lit8 v8, v8, 0x2

    if-lez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 5
    :goto_2
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v9, v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 7
    rem-int v10, v2, v9

    .line 8
    rem-int v11, v3, v9

    .line 9
    div-int v12, v2, v9

    .line 10
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

    .line 11
    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 12
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

    .line 13
    :goto_4
    div-int/lit8 v9, v11, 0x2

    const/4 v14, 0x0

    move v15, v2

    .line 14
    :goto_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, v15}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v4, :cond_6

    .line 15
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

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

    .line 16
    invoke-static {v5, v0}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v14, :cond_6

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 18
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_7

    .line 19
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v15, v0, :cond_7

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v0, v0, v15

    if-nez v0, :cond_9

    .line 20
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v15, v0, :cond_8

    if-eqz v8, :cond_8

    invoke-static {v15}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    if-ne v15, v3, :cond_a

    if-eqz v7, :cond_a

    :cond_9
    if-nez v14, :cond_a

    .line 21
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

    .line 22
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    goto :goto_6

    .line 23
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 24
    invoke-static {v5, v0}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/Integer;

    goto :goto_6

    .line 25
    :cond_e
    invoke-static {v2, v5, v2}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v14

    .line 26
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

    .line 27
    :cond_10
    invoke-super/range {p0 .. p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    return v0
.end method

.method public damageRoll()I
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x1a

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->zap()V

    const/4 p1, 0x1

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

.method public abstract meleeProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
.end method

.method public onZapComplete()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->zap()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method

.method public abstract rangedProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "cooldown"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->rangedCooldown:I

    :cond_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->rangedCooldown:I

    const-string v1, "cooldown"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public final zap()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->rangedProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v2, 0xffff00

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseVerb()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x5

    .line 5
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->rangedCooldown:I

    return-void
.end method
