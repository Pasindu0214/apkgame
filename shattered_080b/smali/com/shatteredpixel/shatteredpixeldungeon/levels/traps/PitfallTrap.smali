.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "PitfallTrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;
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

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/16 v2, 0x19

    if-le v0, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;

    .line 3
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;->depth:I

    .line 4
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PitfallTrap$DelayedPit;->pos:I

    .line 5
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    .line 6
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    add-int v8, v7, v4

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_1

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    add-int/2addr v7, v4

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_2

    .line 7
    :cond_1
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    add-int/2addr v5, v4

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->floor(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PitfallParticle;->FACTORY4:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v4, v5, v7, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v0, v2, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "triggered_hero"

    .line 10
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v0, v2, v0

    if-eqz v0, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "triggered"

    .line 12
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "no_pit"

    .line 13
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
