.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
.source "ClassArmor.java"


# instance fields
.field public armorTier:I

.field public charge:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    const-string v0, "SPECIAL"

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    return-void
.end method

.method public static upgrade(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;-><init>()V

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/RogueArmor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/RogueArmor;-><init>()V

    goto :goto_0

    .line 4
    :cond_2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MageArmor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MageArmor;-><init>()V

    goto :goto_0

    .line 5
    :cond_3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->affixSeal(Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;)V

    .line 8
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result v1

    iget-boolean v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    sub-int/2addr v1, v2

    .line 9
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 11
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->tier:I

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->armorTier:I

    .line 12
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    .line 13
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 14
    iget-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 15
    iget-boolean p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    iput-boolean p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    .line 16
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 p1, 0x0

    .line 17
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    .line 18
    iget p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    const/16 v1, 0x12

    if-le p0, v1, :cond_5

    sub-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x19

    int-to-float p0, p0

    add-float/2addr p1, p0

    .line 19
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    const/high16 p0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, p0

    if-lez p1, :cond_5

    .line 20
    iput p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    :cond_5
    return-object v0
.end method


# virtual methods
.method public DRMax(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->armorTier:I

    add-int/lit8 v1, p1, 0x2

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    int-to-float v1, v1

    .line 2
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->defenceFactor:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 3
    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method public STRReq(I)I
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->armorTier:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x1

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    double-to-int p1, v1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    return v0
.end method

.method public actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;
    .locals 3
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
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SPECIAL"

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public abstract doSpecial()V
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "SPECIAL"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "not_equipped"

    .line 4
    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    const/high16 v1, 0x420c0000    # 35.0f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "low_charge"

    .line 6
    invoke-static {p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->doSpecial()V

    :cond_2
    :goto_0
    return-void
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHeroGainExp(FLcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->onHeroGainExp(FLcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 2
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float p1, p1, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 3
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    .line 4
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-void
.end method

.method public price()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "armortier"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->armorTier:I

    const-string v0, "charge"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    return-void
.end method

.method public status()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%.0f%%"

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->armorTier:I

    const-string v1, "armortier"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    const-string v1, "charge"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    return-void
.end method
