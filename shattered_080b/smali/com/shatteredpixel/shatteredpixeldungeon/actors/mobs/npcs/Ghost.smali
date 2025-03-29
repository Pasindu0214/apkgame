.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;
.source "Ghost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhostSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 5
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "snd_ghost.mp3"

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/audio/Sample;->load([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 0

    return-void
.end method

.method public chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    .line 1
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->INFINITE_EVASION:I

    return p1
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_ghost.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    return v1

    .line 6
    :cond_0
    sget-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given:Z

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 7
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    if-eqz p1, :cond_7

    .line 8
    sget-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed:Z

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;)V

    invoke-static {p1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    goto/16 :goto_3

    .line 10
    :cond_1
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$2;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;)V

    invoke-static {p1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    const/4 p1, -0x1

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 11
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eq p1, v3, :cond_7

    .line 12
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v3

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v2, v4, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 13
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 15
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v2

    iput-boolean v0, p1, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_3

    .line 16
    :cond_4
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type:I

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_5

    .line 17
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/FetidRat;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/FetidRat;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    .line 18
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 19
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "rat_1"

    .line 20
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 21
    :cond_5
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GreatCrab;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GreatCrab;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    .line 22
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 23
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 24
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    const-string v4, "crab_1"

    invoke-static {v2, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 25
    :cond_6
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/GnollTrickster;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    .line 26
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 27
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "gnoll_1"

    .line 28
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v2

    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v2, v3, :cond_7

    .line 30
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 31
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given:Z

    .line 32
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->GHOST:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->add(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    .line 33
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$3;

    invoke-direct {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    :cond_7
    :goto_3
    return v1
.end method

.method public reset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public speed()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->processed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0
.end method
