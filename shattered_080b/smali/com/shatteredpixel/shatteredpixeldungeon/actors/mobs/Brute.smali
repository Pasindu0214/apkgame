.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Brute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute$BruteRage;
    }
.end annotation


# instance fields
.field public hasRaged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/BruteSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x28

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0xf

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/16 v0, 0x8

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v0, 0x10

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 7
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;->hasRaged:Z

    return-void
.end method


# virtual methods
.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x14

    return p1
.end method

.method public damageRoll()I
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute$BruteRage;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    const/16 v1, 0x28

    .line 2
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    const/16 v1, 0x19

    .line 3
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public die(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;->hasRaged:Z

    :cond_0
    return-void
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

.method public declared-synchronized isAlive()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;->hasRaged:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;->triggerEnrage()V

    .line 5
    :cond_1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute$BruteRage;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "has_raged"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;->hasRaged:Z

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;->hasRaged:Z

    const-string v1, "has_raged"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public triggerEnrage()V
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute$BruteRage;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute$BruteRage;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->setShield(I)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v1, 0xff0000

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "enraged"

    invoke-static {p0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;->hasRaged:Z

    return-void
.end method
