.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Preparation.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;
    }
.end annotation


# instance fields
.field public attack:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

.field public turnsInvis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    const/16 v0, -0x1f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->getLvl(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object v0

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->blinkDistance:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v0, v2, :cond_0

    .line 4
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->updateIcon()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 9
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    :goto_0
    return v1
.end method

.method public desc()Ljava/lang/String;
    .locals 10

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "desc"

    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->getLvl(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object v3

    .line 3
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Rat;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Rat;-><init>()V

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->canInstakill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, "\n\n"

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    .line 4
    invoke-static {v2, v6}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->baseDmgBonus:F

    mul-float v5, v5, v7

    float-to-int v5, v5

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->baseDmgBonus:F

    mul-float v5, v5, v7

    iget v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->missingHPBonus:F

    mul-float v9, v9, v7

    add-float/2addr v9, v5

    float-to-int v5, v9

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "desc_dmg_instakill"

    .line 7
    invoke-static {v0, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_0
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->missingHPBonus:F

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1

    .line 9
    invoke-static {v2, v6}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->baseDmgBonus:F

    mul-float v5, v5, v7

    float-to-int v5, v5

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->baseDmgBonus:F

    mul-float v5, v5, v7

    iget v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->missingHPBonus:F

    mul-float v9, v9, v7

    add-float/2addr v9, v5

    float-to-int v5, v9

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "desc_dmg_scale"

    .line 12
    invoke-static {v0, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v2, v6}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->baseDmgBonus:F

    mul-float v5, v5, v7

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "desc_dmg"

    .line 14
    invoke-static {v0, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 15
    :goto_0
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->damageRolls:I

    if-le v4, v8, :cond_2

    const-string v4, " "

    .line 16
    invoke-static {v2, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "desc_dmg_likely"

    .line 17
    invoke-static {v0, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 18
    :cond_2
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->blinkDistance:I

    if-lez v4, :cond_3

    .line 19
    invoke-static {v2, v6}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->blinkDistance:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "desc_blink"

    .line 20
    invoke-static {v0, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 21
    :cond_3
    invoke-static {v2, v6}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "desc_invis_time"

    .line 22
    invoke-static {v0, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v8

    if-eq v4, v5, :cond_4

    .line 24
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v3, v8

    aget-object v3, v4, v3

    const-string v4, "\n"

    .line 25
    invoke-static {v2, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->turnsReq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v1, "desc_invis_next"

    .line 26
    invoke-static {v0, v1, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public detach()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->clearAction(Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;)V

    return-void
.end method

.method public doAction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->attack:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    return-void
.end method

.method public getIcon()Lcom/watabou/noosa/Image;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->WOUND:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->tintIcon(Lcom/watabou/noosa/Image;)V

    return-object v0
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "turnsInvis"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->getLvl(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object p1

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->blinkDistance:I

    if-lez p1, :cond_0

    .line 4
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->updateIcon()V

    :cond_0
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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    const-string v1, "turnsInvis"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public tintIcon(Lcom/watabou/noosa/Image;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->getLvl(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v1, v3, v3}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    :cond_1
    const v0, 0x3f19999a    # 0.6f

    .line 3
    invoke-virtual {p1, v1, v0, v3}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1, v1, v1, v3}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p1, v3, v1, v3}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p1, v1, v1, v1}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    :goto_0
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
