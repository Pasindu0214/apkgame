.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Hunger.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$Doom;


# instance fields
.field public level:F

.field public partialDamage:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->locked:Z

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/WellFed;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v3, :cond_6

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->isStarving()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->partialDamage:F

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->partialDamage:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    float-to-int v0, v4

    .line 6
    invoke-virtual {v3, v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->partialDamage:F

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->partialDamage:F

    goto :goto_2

    .line 8
    :cond_1
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    add-float v4, v3, v1

    const/high16 v5, 0x43e10000    # 450.0f

    const/4 v6, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v5, "onstarving"

    .line 9
    invoke-static {p0, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iput-boolean v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    .line 11
    invoke-virtual {v0, v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->damage(ILjava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v5, v4, v0

    if-ltz v5, :cond_3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    new-array v0, v6, [Ljava/lang/Object;

    const-string v3, "onhungry"

    .line 13
    invoke-static {p0, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    iput v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    if-eqz v6, :cond_4

    .line 15
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 16
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Shadows;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v1, 0x41700000    # 15.0f

    :goto_3
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    goto :goto_4

    :cond_6
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 17
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    :goto_4
    return v2

    .line 18
    :cond_7
    :goto_5
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v2
.end method

.method public desc()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    const/4 v1, 0x0

    const/high16 v2, 0x43e10000    # 450.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "desc_intro_hungry"

    .line 2
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "desc_intro_starving"

    .line 3
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "desc"

    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icon()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/16 v0, 0x3f

    return v0

    :cond_0
    const/high16 v1, 0x43e10000    # 450.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v0, 0x6

    return v0
.end method

.method public isStarving()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    const/high16 v1, 0x43e10000    # 450.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDeath()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateDeathFromHunger()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ondeath"

    .line 3
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reduceHunger(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    const/4 p1, 0x0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43e10000    # 450.0f

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    sub-float/2addr v0, p1

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    .line 4
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->partialDamage:F

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr v1, p1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->partialDamage:F

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "level"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    const-string v0, "partialDamage"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->partialDamage:F

    return-void
.end method

.method public satisfy(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_0

    const v0, 0x3f2b851f    # 0.67f

    mul-float p1, p1, v0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cursedhorn"

    .line 3
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->reduceHunger(F)V

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->partialDamage:F

    const-string v1, "partialDamage"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;->level:F

    const/4 v1, 0x0

    const/high16 v2, 0x43e10000    # 450.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "hungry"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "starving"

    .line 3
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
