.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "CloakOfShadows.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "cloakStealth"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

.field public turnsToCost:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;->POSITIVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->turnsToCost:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 12

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->turnsToCost:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->turnsToCost:I

    if-gtz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 3
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->detach()V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "no_charge"

    .line 5
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    .line 8
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    sub-int/2addr v2, v4

    const/4 v4, 0x7

    if-lt v0, v4, :cond_1

    add-int/lit8 v0, v0, -0x6

    sub-int/2addr v2, v0

    :cond_1
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    if-ltz v2, :cond_2

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    int-to-long v6, v6

    const-wide v8, 0x3ff19999a0000000L    # 1.100000023841858

    int-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    int-to-long v6, v6

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    neg-int v2, v2

    int-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 12
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v5, v4, 0x1

    mul-int/lit8 v5, v5, 0x32

    if-lt v2, v5, :cond_3

    .line 13
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge v4, v2, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 16
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int/lit8 v4, v4, 0x32

    sub-int/2addr v2, v4

    .line 17
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "levelup"

    .line 18
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x5

    .line 19
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->turnsToCost:I

    .line 20
    :goto_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v1
.end method

.method public attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    .line 3
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->ASSASSIN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v0, v2, :cond_0

    .line 4
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
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

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 6
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    return-void
.end method

.method public fx(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->INVISIBLE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->add(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->INVISIBLE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "turnsToCost"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->turnsToCost:I

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;->turnsToCost:I

    const-string v1, "turnsToCost"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

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
