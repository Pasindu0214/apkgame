.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;
.source "WandOfWarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ward"
.end annotation


# instance fields
.field public tier:I

.field public totalZaps:I

.field public wandLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->totalZaps:I

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandHeal(I)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;->throwItem()V

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public attackDelay()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
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

    const/4 v6, 0x6

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x6

    and-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x6

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

.method public canInteract(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    return p1
.end method

.method public description()Ljava/lang/String;
    .locals 4

    const-string v0, "desc_"

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog(II)V

    return-void
.end method

.method public doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->zap()V

    :goto_2
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public drRoll()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getCloser(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFurther(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;)V

    invoke-static {p1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    return v1
.end method

.method public name()Ljava/lang/String;
    .locals 2

    const-string v0, "name_"

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "tier"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    add-int/lit8 v0, v0, 0x2

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    const-string v0, "wand_level"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    const-string v0, "total_zaps"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->totalZaps:I

    return-void
.end method

.method public sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;

    .line 2
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->linkVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    return-object v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    const-string v1, "tier"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    const-string v1, "wand_level"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->totalZaps:I

    const-string v1, "total_zaps"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public updateSpriteState()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->updateSpriteState()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->updateTier(I)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    return-void
.end method

.method public upgrade(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    if-ge v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandHeal(I)V

    .line 4
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    const/high16 v1, 0x42400000    # 48.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x46

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    const/high16 p1, 0x428c0000    # 70.0f

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x30

    .line 7
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    .line 8
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x1e

    .line 9
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 10
    :goto_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    const/4 v0, 0x6

    if-ge p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x1

    .line 11
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    .line 12
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    .line 13
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->updateSpriteState()V

    .line 14
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->updateTier(I)V

    .line 15
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 16
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog(II)V

    :cond_4
    return-void
.end method

.method public final wandHeal(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    if-ge v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    .line 3
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    const/4 v0, 0x4

    const/4 v1, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/lit8 v0, v0, 0xc

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    goto :goto_0

    .line 6
    :cond_3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    :goto_0
    return-void
.end method

.method public final zap()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    add-int/lit8 v1, v0, 0x2

    const/4 v2, 0x4

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;

    invoke-virtual {v1, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v0, v3, :cond_1

    .line 7
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    .line 8
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->totalZaps:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->totalZaps:I

    .line 9
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 v3, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    if-lt v0, v1, :cond_6

    .line 10
    invoke-virtual {p0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    .line 11
    invoke-virtual {p0, v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0, v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->totalZaps:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    if-le v0, v1, :cond_6

    .line 15
    invoke-virtual {p0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method
