.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Ghoul.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Wandering;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Sleeping;
    }
.end annotation


# instance fields
.field public beingLifeLinked:Z

.field public partnerID:I

.field public timesDowned:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhoulSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x2d

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 v1, 0x5

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Sleeping;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Sleeping;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Wandering;

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->timesDowned:I

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->partnerID:I

    .line 13
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->beingLifeLinked:Z

    return-void
.end method

.method public static synthetic access$500(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->partnerID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 3
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    add-int/lit8 v4, v3, -0x1

    const/4 v6, 0x1

    aput v4, v2, v6

    const/4 v4, 0x2

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int v7, v3, v6

    aput v7, v2, v4

    const/4 v4, 0x3

    sub-int/2addr v3, v6

    aput v3, v2, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 5
    aget v3, v2, v5

    .line 6
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-nez v4, :cond_0

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v2

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->partnerID:I

    .line 11
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v2

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->partnerID:I

    .line 12
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v2, v3, :cond_2

    .line 13
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 14
    :cond_2
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 16
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_3

    .line 18
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-direct {v0, v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 19
    :cond_3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/16 p1, 0x18

    return p1
.end method

.method public damageRoll()I
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x16

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public die(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->searchForHost(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->beingLifeLinked:Z

    .line 4
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->timesDowned:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->timesDowned:I

    .line 7
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->timesDowned:I

    mul-int/lit8 v0, v0, 0x5

    .line 8
    iput-object p0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->ghoul:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    .line 9
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$GhoulLifeLink;->turnsToRevive:I

    .line 10
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhoulSprite;

    .line 11
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emo:Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhoulSprite;->crumple:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->beingLifeLinked:Z

    return-void

    .line 16
    :cond_1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    return-void
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized onRemove()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->beingLifeLinked:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 3
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$KingDamager;

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->onRemove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "partner_id"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->partnerID:I

    const-string v0, "times_downed"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->timesDowned:I

    return-void
.end method

.method public spawningWeight()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->partnerID:I

    const-string v1, "partner_id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->timesDowned:I

    const-string v1, "times_downed"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
