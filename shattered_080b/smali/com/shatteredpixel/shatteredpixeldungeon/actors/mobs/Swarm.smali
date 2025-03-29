.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Swarm.java"


# instance fields
.field public generation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SwarmSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v0, 0x9

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const v0, 0x3e2ab368    # 0.1667f

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;->generation:I

    return-void
.end method


# virtual methods
.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0xa

    return p1
.end method

.method public createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->SWARM_HP:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    return-object v0
.end method

.method public damageRoll()I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 10

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/lit8 v1, p2, 0x2

    if-lt v0, v1, :cond_5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 4
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x0

    aput v6, v4, v7

    add-int/lit8 v6, v5, -0x1

    const/4 v8, 0x1

    aput v6, v4, v8

    .line 5
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int v6, v5, v1

    const/4 v9, 0x2

    aput v6, v4, v9

    const/4 v6, 0x3

    sub-int/2addr v5, v1

    aput v5, v4, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 6
    aget v5, v4, v1

    .line 7
    aget-boolean v6, v2, v5

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v6

    if-nez v6, :cond_0

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 10
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;-><init>()V

    .line 11
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;->generation:I

    add-int/2addr v5, v8

    iput v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;->generation:I

    .line 12
    iput v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 13
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 14
    invoke-static {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    const/high16 v5, 0x41000000    # 8.0f

    .line 15
    iput v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    .line 16
    :cond_2
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 17
    invoke-static {v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;->set(F)V

    .line 18
    :cond_3
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 19
    invoke-static {v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 20
    :cond_4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr v1, p2

    div-int/2addr v1, v9

    iput v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 21
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 22
    iget-object v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    invoke-static {v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V

    .line 25
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v2, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {v0, v4, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 26
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v1, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 27
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    return p2
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "generation"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;->generation:I

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    :cond_0
    return-void
.end method

.method public rollToDropLoot()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;->generation:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->SWARM_HP:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    int-to-float v0, v0

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float v0, v2, v0

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->rollToDropLoot()V

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;->generation:I

    const-string v1, "generation"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
