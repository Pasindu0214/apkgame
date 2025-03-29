.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Wand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;
    }
.end annotation


# static fields
.field public static zapper:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# instance fields
.field public availableUsesToID:F

.field public charger:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

.field public collisionProperties:I

.field public curChargeKnown:Z

.field public curCharges:I

.field public curseInfusionBonus:Z

.field public maxCharges:I

.field public partialCharge:F

.field public usesLeftToID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->zapper:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->initialCharges()I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curChargeKnown:Z

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->usesLeftToID:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->availableUsesToID:F

    const/4 v0, 0x6

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->collisionProperties:I

    const-string v0, "ZAP"

    .line 10
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->usesTargeting:Z

    .line 12
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method

.method public static processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V
    .locals 6

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eq p0, v0, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARLOCK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fed70a3e0000000L    # 0.9200000166893005

    mul-int p2, p2, p1

    add-int/lit8 p2, p2, 0x1

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3fb1eb8520000000L    # 0.07000000029802322

    sub-double/2addr v2, v4

    cmpl-double p2, v0, v2

    if-lez p2, :cond_0

    .line 4
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/SoulMark;

    const/high16 v0, 0x41200000    # 10.0f

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_0
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
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curChargeKnown:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ZAP"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charger:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charger:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charger:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    return-void
.end method

.method public charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charger:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    .line 5
    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->scalingFactor:F

    return-void
.end method

.method public chargesPerCast()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;

    const p1, 0x3f59999a    # 0.85f

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public degrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->updateLevel()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-object p0
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "ZAP"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->zapper:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    :cond_0
    return-void
.end method

.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2, v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "snd_zap.mp3"

    .line 5
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public gainCharge(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    .line 2
    :goto_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    .line 4
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curChargeKnown:Z

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-object p0
.end method

.method public info()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\n"

    .line 2
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->statsDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "cursed"

    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->isIdentified()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v1, v2}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "not_cursed"

    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public initialCharges()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isIdentified()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curChargeKnown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public level()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->updateLevel()V

    .line 4
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 5
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public level(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->updateLevel()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->stopCharging()V

    return-void
.end method

.method public onHeroGainExp(FLcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->isIdentified()Z

    move-result p2

    if-nez p2, :cond_0

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->availableUsesToID:F

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr p1, p2

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->availableUsesToID:F

    :cond_0
    return-void
.end method

.method public abstract onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
.end method

.method public abstract onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
.end method

.method public price()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v1

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v1

    if-gez v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    :cond_2
    :goto_1
    if-ge v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    return v2
.end method

.method public processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;II)V

    return-void
.end method

.method public random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level(I)V

    .line 4
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    .line 5
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    :cond_2
    return-object p0
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->reset()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->usesLeftToID:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->availableUsesToID:F

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "uses_left_to_id"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->usesLeftToID:I

    const-string v0, "available_uses"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->availableUsesToID:F

    const-string v0, "unfamiliarity"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->usesLeftToID:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->availableUsesToID:F

    :cond_0
    const-string v0, "curCharges"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    const-string v0, "curChargeKnown"

    .line 8
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curChargeKnown:Z

    const-string v0, "partialCharge"

    .line 9
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    const-string v0, "curse_infusion_bonus"

    .line 10
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 4

    const v0, 0xffffff

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 3
    iget-object v1, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const v2, 0x40c90fda

    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v2, v3}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    .line 4
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 5
    iput v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->radiateXY(F)V

    return-void
.end method

.method public statsDesc()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stats_desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public status()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curChargeKnown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "?"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public stopCharging()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charger:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charger:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    :cond_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->usesLeftToID:I

    const-string v1, "uses_left_to_id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->availableUsesToID:F

    const-string v1, "available_uses"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    const-string v1, "curCharges"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curChargeKnown:Z

    const-string v1, "curChargeKnown"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    const-string v1, "partialCharge"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 7
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    const-string v1, "curse_infusion_bonus"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public tryToZap(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)Z
    .locals 2

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicImmune;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-array p1, p2, [Ljava/lang/Object;

    const-string v0, "no_magic"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 3
    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->chargesPerCast()I

    move-result v0

    :goto_0
    if-lt p1, v0, :cond_2

    return v1

    :cond_2
    new-array p1, p2, [Ljava/lang/Object;

    const-string v0, "fizzles"

    .line 4
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method public updateLevel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->initialCharges()I

    move-result v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    return-void
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->updateLevel()V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-object p0
.end method

.method public wandUsed()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->isIdentified()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->availableUsesToID:F

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    sub-float/2addr v0, v2

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->availableUsesToID:F

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->usesLeftToID:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->usesLeftToID:I

    if-gtz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "identify"

    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 7
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->chargesPerCast()I

    move-result v3

    :goto_0
    sub-int/2addr v0, v3

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-ne v0, v3, :cond_2

    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 9
    :cond_2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return-void
.end method
