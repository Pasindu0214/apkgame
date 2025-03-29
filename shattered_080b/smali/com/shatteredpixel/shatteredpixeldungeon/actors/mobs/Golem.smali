.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Golem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Hunting;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;
    }
.end annotation


# instance fields
.field public enemyTeleCooldown:I

.field public selfTeleCooldown:I

.field public teleporting:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GolemSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0xc

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v0, 0x16

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
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Hunting;

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->teleporting:Z

    .line 12
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->selfTeleCooldown:I

    .line 13
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->enemyTeleCooldown:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->selfTeleCooldown:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->selfTeleCooldown:I

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->enemyTeleCooldown:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->enemyTeleCooldown:I

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->teleporting:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GolemSprite;

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GolemSprite;->teleParticles:Lcom/watabou/noosa/particles/Emitter;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 6
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    const/16 v0, 0x1e

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->selfTeleCooldown:I

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 10
    :goto_0
    iput-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->teleporting:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v1

    .line 12
    :cond_2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x1c

    return p1
.end method

.method public damageRoll()I
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x23

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "vent_cooldown"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->teleporting:Z

    const-string v1, "self_cooldown"

    .line 3
    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->selfTeleCooldown:I

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->enemyTeleCooldown:I

    return-void
.end method

.method public rollToDropLoot()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->process(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->rollToDropLoot()V

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->teleporting:Z

    const-string v1, "vent_cooldown"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->selfTeleCooldown:I

    const-string v2, "self_cooldown"

    invoke-virtual {p1, v2, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->enemyTeleCooldown:I

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public teleportEnemy()V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 3
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int v7, v6, v4

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_0

    add-int/2addr v6, v4

    .line 5
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 6
    invoke-virtual {v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v5

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v6, v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicImmune;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v0, v2, :cond_3

    .line 11
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v1, :cond_3

    .line 13
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    :cond_3
    const/16 v0, 0x14

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;->enemyTeleCooldown:I

    return-void
.end method
