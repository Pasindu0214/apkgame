.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;
.source "EtherealChains.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;
    }
.end annotation


# instance fields
.field public caster:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_CHAINS:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->exp:I

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const-string v0, "CAST"

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->usesTargeting:Z

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;->caster:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

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

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez p1, :cond_0

    const-string p1, "CAST"

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x5

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    mul-int/lit8 p1, p1, 0x2

    if-ge v0, p1, :cond_0

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    sub-float/2addr p1, v1

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_0
    return-void
.end method

.method public desc()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\n\n"

    .line 3
    invoke-static {v1, v2}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_cursed"

    .line 6
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "desc_equipped"

    .line 8
    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "CAST"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 5
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "need_to_equip"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->cancel()V

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    new-array p1, p2, [Ljava/lang/Object;

    const-string v0, "no_charge"

    .line 8
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->cancel()V

    goto :goto_0

    .line 10
    :cond_1
    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz p1, :cond_2

    new-array p1, p2, [Ljava/lang/Object;

    const-string v0, "cursed"

    .line 11
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->cancel()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;->caster:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public passiveBuff()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$chainsRecharge;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;)V

    return-object v0
.end method
