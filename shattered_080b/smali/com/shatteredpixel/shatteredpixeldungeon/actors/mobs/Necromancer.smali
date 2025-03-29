.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Necromancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;
    }
.end annotation


# instance fields
.field public firstSummon:Z

.field public mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

.field public storedSkeletonID:I

.field public summoning:Z

.field public summoningEmitter:Lcom/watabou/noosa/particles/Emitter;

.field public summoningPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/NecromancerSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/16 v0, 0x23

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0xd

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    const/4 v0, 0x7

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v0, 0xe

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const v0, 0x3e4ccccd    # 0.2f

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoning:Z

    .line 12
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningEmitter:Lcom/watabou/noosa/particles/Emitter;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->firstSummon:Z

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->storedSkeletonID:I

    return-void
.end method


# virtual methods
.method public createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->NECRO_HP:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->createLoot()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    return-object v0
.end method

.method public die(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->storedSkeletonID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v0

    .line 3
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->storedSkeletonID:I

    .line 4
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Skeleton;->die(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningEmitter:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 10
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningEmitter:Lcom/watabou/noosa/particles/Emitter;

    .line 11
    :cond_2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    return-void
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

.method public onZapComplete()V
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Adrenaline;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ge v2, v3, :cond_3

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$HealthRay;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$HealthRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/lit8 v1, v1, 0x5

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-nez v1, :cond_6

    .line 9
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v1, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v1, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v1, :cond_5

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v2, v1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$HealthRay;

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$HealthRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    :cond_5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 12
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    :cond_7
    :goto_1
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "summoning"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoning:Z

    const-string v0, "first_summon"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->firstSummon:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoning:Z

    if-eqz v0, :cond_1

    const-string v0, "summoning_pos"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    :cond_1
    const-string v0, "my_skeleton"

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->storedSkeletonID:I

    :cond_2
    return-void
.end method

.method public rollToDropLoot()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->NECRO_HP:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    sub-float v1, v2, v1

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->rollToDropLoot()V

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoning:Z

    const-string v1, "summoning"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->firstSummon:Z

    const-string v1, "first_summon"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoning:Z

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    const-string v1, "summoning_pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->mySkeleton:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v0

    const-string v1, "my_skeleton"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public updateSpriteState()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->updateSpriteState()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningEmitter:Lcom/watabou/noosa/particles/Emitter;

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningEmitter:Lcom/watabou/noosa/particles/Emitter;

    const/16 v1, 0x69

    .line 4
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;->summoningPos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    :cond_0
    return-void
.end method
