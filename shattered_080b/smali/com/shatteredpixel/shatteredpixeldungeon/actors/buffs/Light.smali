.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;
.source "Light.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->POSITIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    return-void
.end method


# virtual methods
.method public attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;->dispTurns()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public detach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->viewDistance:I

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    return-void
.end method

.method public fx(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->ILLUMINATED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->add(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->ILLUMINATED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    :goto_0
    return-void
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public tintIcon(Lcom/watabou/noosa/Image;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;->greyIcon(Lcom/watabou/noosa/Image;FF)V

    return-void
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
