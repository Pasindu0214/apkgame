.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;
.source "CloakOfShadows.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;
    }
.end annotation


# instance fields
.field public stealthed:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_CLOAK:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    const/16 v1, 0xa

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    .line 5
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v2, v2, 0x3

    .line 6
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    .line 8
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v2, v2, 0x3

    .line 9
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    const-string v1, "STEALTH"

    .line 10
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    .line 12
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    .line 13
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    return-void
.end method


# virtual methods
.method public actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-gtz p1, :cond_0

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "STEALTH"

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;)V

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->passiveBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    .line 4
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;)V

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 7
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    :cond_0
    return-void
.end method

.method public charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    if-ge p1, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    sub-float/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    add-int/lit8 p1, p1, 0x1

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_0
    return-void
.end method

.method public doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    iput-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "STEALTH"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3
    iget-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_4

    .line 4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    if-nez p2, :cond_0

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "need_to_equip"

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "cursed"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-gtz p2, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no_charge"

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    .line 8
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 9
    iput-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 10
    sget-object p2, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_meld.mp3"

    .line 11
    invoke-virtual {p2, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 12
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;

    invoke-direct {p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakStealth;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;)V

    .line 13
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 14
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    .line 15
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, p2, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    const v1, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_3

    .line 16
    new-instance v2, Lcom/watabou/noosa/tweeners/AlphaTweener;

    invoke-direct {v2, p2, v1, v1}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p2, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 18
    :goto_0
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    goto :goto_1

    .line 19
    :cond_4
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    .line 20
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    const/4 p2, 0x0

    .line 21
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->activeBuff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 22
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 23
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public passiveBuff()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows$cloakRecharge;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;)V

    return-object v0
.end method

.method public price()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "stealthed"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/CloakOfShadows;->stealthed:Z

    const-string v1, "stealthed"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->chargeCap:I

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method
