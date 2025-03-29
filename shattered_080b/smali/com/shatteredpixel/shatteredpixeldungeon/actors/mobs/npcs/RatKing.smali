.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/RatKing;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;
.source "RatKing.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RatKingSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    goto :goto_0

    .line 5
    :cond_0
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_3

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    goto :goto_0

    .line 9
    :cond_2
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    .line 10
    :cond_3
    :goto_0
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

.method public description()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RatKingSprite;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RatKingSprite;->festive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc_festive"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->description()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    return v1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showAlert()V

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "not_sleeping"

    .line 6
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "what_is_it"

    .line 8
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public onAdd()V
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "confused"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public speed()F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method
