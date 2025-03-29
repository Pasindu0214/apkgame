.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$DarkFist;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;
.source "YogFist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DarkFist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$DarkFist$DarkBolt;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite$Dark;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;->canRangedInMelee:Z

    return-void
.end method


# virtual methods
.method public damage(ILjava/lang/Object;)V
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 2
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist;->damage(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    div-int/lit8 v2, p1, 0x2

    if-ge v1, v2, :cond_1

    .line 4
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;->detach()V

    .line 7
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 9
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 11
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 12
    invoke-static {p0, v1, v0, v2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->findStep(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I[Z[ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 13
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 14
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 15
    invoke-static {p2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    new-array p1, p2, [Ljava/lang/Object;

    const-string v0, "teleport"

    .line 16
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;->detach()V

    .line 20
    :cond_2
    invoke-static {p2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public incrementRangedCooldown()V
    .locals 0

    return-void
.end method

.method public zap()V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/16 v3, 0xc

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v3

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$DarkFist$DarkBolt;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$DarkFist$DarkBolt;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Light;

    if-eqz v0, :cond_0

    const/16 v3, -0x32

    int-to-float v3, v3

    .line 5
    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v0, v3, :cond_2

    .line 7
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/YogFist$DarkFist;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    .line 8
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "kill"

    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v3, 0xffff00

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseVerb()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
