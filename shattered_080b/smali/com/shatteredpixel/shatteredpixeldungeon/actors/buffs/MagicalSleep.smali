.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicalSleep;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "MagicalSleep.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicalSleep;->detach()V

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v1, v3, :cond_3

    .line 4
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    add-int/2addr v1, v2

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ne v1, v3, :cond_3

    .line 7
    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "wakeup"

    invoke-static {p0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicalSleep;->detach()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v2
.end method

.method public attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Sleep;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    .line 3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v0, v3, :cond_2

    .line 4
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ne v0, v3, :cond_1

    .line 5
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "toohealthy"

    invoke-static {p0, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicalSleep;->detach()V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "fallasleep"

    invoke-static {p0, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_2
    :goto_0
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public desc()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public detach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    return-void
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
