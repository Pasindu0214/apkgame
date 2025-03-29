.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Berserk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;
    }
.end annotation


# instance fields
.field public levelRecovery:F

.field public power:F

.field public state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->NORMAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->berserking()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-virtual {v0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;

    .line 3
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-gtz v6, :cond_3

    .line 4
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v3

    if-eqz v0, :cond_0

    .line 5
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    if-lez v2, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->absorbDamage(I)I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;

    .line 8
    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->absorbDamage(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v0

    if-gtz v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->die(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_7

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    goto :goto_1

    .line 12
    :cond_3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->RECOVERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->levelRecovery:F

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    if-eqz v0, :cond_4

    .line 15
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    .line 16
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->absorbDamage(I)I

    .line 17
    :cond_4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    goto :goto_1

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->NORMAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    if-ne v0, v5, :cond_7

    .line 19
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    float-to-double v5, v0

    invoke-static {v2, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v0

    const v2, 0x3d89374c    # 0.067f

    mul-float v0, v0, v2

    float-to-double v7, v0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v2, v2

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-double v9, v2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v9

    double-to-float v0, v5

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 21
    :cond_6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 22
    :cond_7
    :goto_1
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v3
.end method

.method public berserking()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->NORMAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->BERSERK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->refreshHero()V

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->maxShield()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->supercharge(I)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/SpellSprite;->show(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 7
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_challenge.mp3"

    .line 8
    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    const/high16 v0, 0xff0000

    .line 9
    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->BERSERK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public damageFactor(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p1, p1

    mul-float p1, p1, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public desc()Ljava/lang/String;
    .locals 7

    const/16 v0, 0x2710

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->damageFactor(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sub-float/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    .line 3
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    mul-float v5, v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "angered_desc"

    invoke-static {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->levelRecovery:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "recovering_desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "berserk_desc"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "exhaustion"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->RECOVERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    goto :goto_0

    .line 4
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    :goto_0
    const-string v0, "power"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->RECOVERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    if-ne v0, v1, :cond_2

    const-string v0, "levelrecovery"

    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->levelRecovery:F

    :cond_2
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
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Enum;)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    const-string v1, "power"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->RECOVERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->levelRecovery:F

    const-string v1, "levelrecovery"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public tintIcon(Lcom/watabou/noosa/Image;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_2

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->power:F

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sub-float v0, v3, v0

    invoke-virtual {p1, v3, v3, v0}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    :cond_0
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float/2addr v1, v0

    .line 3
    invoke-virtual {p1, v3, v1, v2}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, v3, v2, v2}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    .line 5
    :cond_2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->levelRecovery:F

    mul-float v4, v4, v0

    sub-float v1, v3, v4

    const v2, 0x3e99999a    # 0.3f

    mul-float v0, v0, v2

    sub-float v0, v3, v0

    invoke-virtual {p1, v1, v0, v3}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1, v3, v2, v2}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "angered"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "recovering"

    .line 3
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "berserk"

    .line 4
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
