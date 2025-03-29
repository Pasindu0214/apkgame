.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "GuardianTrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap$GuardianSprite;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap$Guardian;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 6

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->beckon(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    aget-boolean v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "alarm"

    .line 4
    invoke-static {p0, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 6
    :cond_1
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "snd_alert.mp3"

    .line 7
    invoke-virtual {v0, v4, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 8
    :goto_1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v1

    if-ge v2, v0, :cond_2

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap$Guardian;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap$Guardian;-><init>()V

    .line 10
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 11
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v3

    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 12
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 13
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap$Guardian;->beckon(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
