.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.source "Goo.java"


# instance fields
.field public pumpedUp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->EXP:I

    const/16 v0, 0x8

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->DEMONIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ACIDIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/GooWarn;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v0, v1, v3, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ne v0, v1, :cond_0

    .line 6
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;

    .line 8
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->spray:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean v2, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 9
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v0, v1, :cond_2

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    .line 13
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public attack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    return p1
.end method

.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;->left:F

    .line 5
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->burst(II)V

    .line 6
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    if-lez p1, :cond_1

    .line 7
    sget-object p1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const/high16 v0, 0x40400000    # 3.0f

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0, v1}, Lcom/watabou/noosa/Camera;->shake(FF)V

    :cond_1
    return p2
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    mul-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-gt p1, v0, :cond_0

    const/16 p1, 0xf

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 2
    :goto_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    if-lez v0, :cond_1

    mul-int/lit8 p1, p1, 0x2

    :cond_1
    return p1
.end method

.method public canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->distance(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->isAssigned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->assignBoss(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    .line 5
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    mul-int/lit8 p2, p2, 0x2

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-gt p2, v1, :cond_2

    if-nez v0, :cond_2

    .line 6
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    .line 7
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v0, 0xff0000

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "enraged"

    invoke-static {p0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;

    .line 9
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->spray:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean v2, p2, Lcom/watabou/noosa/particles/Emitter;->on:Z

    new-array p2, v3, [Ljava/lang/Object;

    .line 10
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;

    const-string v1, "gluuurp"

    invoke-static {v0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 12
    :cond_2
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;

    if-eqz p2, :cond_3

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 13
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LockedFloor;->addTime(F)V

    :cond_3
    return-void
.end method

.method public damageRoll()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-gt v0, v2, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 2
    :goto_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    .line 4
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    .line 5
    :goto_1
    sget-object v1, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 6
    aget v1, v1, v2

    const v3, 0x7fffffff

    if-ge v1, v3, :cond_1

    .line 7
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v1, v3, v5, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "snd_burning.mp3"

    .line 10
    invoke-virtual {v1, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 11
    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0

    :cond_3
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    int-to-double v0, p1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    mul-int/lit8 p1, p1, 0x2

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-gt p1, v2, :cond_0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public die(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->bossSlain()V

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;-><init>(I)V

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    const/4 p1, 0x5

    new-array p1, p1, [F

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/watabou/utils/Random;->chances([F)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 6
    :cond_0
    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    aget v2, v2, v3

    .line 7
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v5, v2

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    .line 8
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/GooBlob;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/GooBlob;-><init>()V

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v2

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateBossSlain()V

    new-array p1, v0, [Ljava/lang/Object;

    .line 10
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;

    const-string v1, "defeated"

    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public doAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/GooWarn;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;

    .line 3
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->pump:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 4
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v1

    invoke-static {p1, v1, v3}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    .line 5
    :goto_0
    sget-object p1, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v1, p1

    if-ge v2, v1, :cond_1

    .line 6
    aget p1, p1, v2

    const v1, 0x7fffffff

    if-ge p1, v1, :cond_0

    .line 7
    invoke-static {v2, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->attackDelay()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v4

    :cond_2
    if-ge v1, v3, :cond_8

    .line 10
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    mul-int/lit8 v1, v1, 0x2

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-gt v1, v5, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    :goto_1
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;

    .line 13
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->pump:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    const/4 p1, 0x0

    .line 14
    :goto_2
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v3, v1

    if-ge p1, v3, :cond_6

    .line 15
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v1, v1, p1

    add-int/2addr v3, v1

    .line 16
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_5

    .line 17
    invoke-static {v3, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 18
    :cond_6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v0, 0xff0000

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "!!!"

    invoke-static {p0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 20
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;

    const-string v1, "pumpup"

    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->attackDelay()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return v4

    .line 23
    :cond_8
    :goto_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    .line 24
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    if-lt v1, v3, :cond_9

    .line 25
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;

    .line 26
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->pumpAttack:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    goto :goto_4

    .line 27
    :cond_9
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack(I)V

    goto :goto_4

    .line 28
    :cond_a
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    .line 29
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    .line 30
    :goto_4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->attackDelay()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public drRoll()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    return v0
.end method

.method public getCloser(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->getCloser(I)Z

    move-result p1

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

    const-string v0, "pumpedup"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->assignBoss(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 4
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    mul-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    .line 5
    sput-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    :cond_1
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Goo;->pumpedUp:I

    const-string v1, "pumpedup"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
