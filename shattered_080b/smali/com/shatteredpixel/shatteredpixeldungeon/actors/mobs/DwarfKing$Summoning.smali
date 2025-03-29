.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "DwarfKing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Summoning"
.end annotation


# instance fields
.field public delay:I

.field public particles:Lcom/watabou/noosa/particles/Emitter;

.field public pos:I

.field public summon:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->delay:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->delay:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->summon:Ljava/lang/Class;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKWarlock;

    const/4 v4, 0x0

    const/16 v5, 0xa

    if-ne v0, v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->particles:Lcom/watabou/noosa/particles/Emitter;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->CURSE:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 4
    invoke-virtual {v0, v3, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 5
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v3, "snd_cursed.mp3"

    .line 6
    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    goto :goto_0

    .line 7
    :cond_0
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKMonk;

    if-ne v0, v3, :cond_1

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->particles:Lcom/watabou/noosa/particles/Emitter;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 9
    invoke-virtual {v0, v3, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 10
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v3, "snd_burning.mp3"

    .line 11
    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->particles:Lcom/watabou/noosa/particles/Emitter;

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v3, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 14
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v3, "snd_bones.mp3"

    .line 15
    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :goto_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->particles:Lcom/watabou/noosa/particles/Emitter;

    .line 17
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 20
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    add-int/2addr v8, v6

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_2

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v7

    if-nez v7, :cond_2

    .line 21
    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 23
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    .line 24
    :cond_4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    const/4 v3, 0x2

    if-nez v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->summon:Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 26
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v4, -0x2

    .line 27
    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    .line 28
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 29
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 30
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;

    .line 31
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    if-ne v4, v3, :cond_7

    .line 32
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$KingDamager;

    .line 33
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 34
    :cond_5
    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    goto :goto_2

    .line 35
    :cond_6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    const/16 v4, 0x14

    const/16 v5, 0x28

    .line 36
    invoke-static {v4, v5}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v4

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->summon:Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-object v4, v0

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;

    .line 38
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;->phase:I

    if-ne v4, v3, :cond_7

    .line 39
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v3, v3, 0xc

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$KingDamager;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$KingDamager;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 40
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 41
    :cond_8
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v1
.end method

.method public fx(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->particles:Lcom/watabou/noosa/particles/Emitter;

    if-nez v1, :cond_2

    .line 2
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->particles:Lcom/watabou/noosa/particles/Emitter;

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->summon:Ljava/lang/Class;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKWarlock;

    const v3, 0x3dcccccd    # 0.1f

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShadowParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 5
    invoke-virtual {p1, v1, v3, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    .line 6
    :cond_0
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKMonk;

    if-ne v1, v2, :cond_1

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 8
    invoke-virtual {p1, v1, v3, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x69

    .line 9
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v1, v3, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->particles:Lcom/watabou/noosa/particles/Emitter;

    if-eqz p1, :cond_3

    .line 12
    iput-boolean v0, p1, Lcom/watabou/noosa/particles/Emitter;->on:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "delay"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->delay:I

    const-string v0, "pos"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    const-string v0, "summon"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->summon:Ljava/lang/Class;

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->delay:I

    const-string v1, "delay"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->pos:I

    const-string v1, "pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$Summoning;->summon:Ljava/lang/Class;

    const-string v1, "summon"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
