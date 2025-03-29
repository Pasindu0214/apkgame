.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;
.source "Armor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;
    }
.end annotation


# instance fields
.field public augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

.field public availableUsesToID:F

.field public curseInfusionBonus:Z

.field public glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

.field public seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

.field public tier:I

.field public usesLeftToID:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->usesLeftToID:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->availableUsesToID:F

    .line 6
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->tier:I

    return-void
.end method


# virtual methods
.method public final DRMax()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->buffedLvl()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMax(I)I

    move-result v0

    return v0
.end method

.method public DRMax(I)I
    .locals 3

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->tier:I

    add-int/lit8 v1, p1, 0x2

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    int-to-float v1, v1

    .line 3
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->defenceFactor:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 4
    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method public final DRMin()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->buffedLvl()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMax(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public STRReq()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq(I)I

    move-result v0

    return v0
.end method

.method public STRReq(I)I
    .locals 5

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->tier:I

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

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-eqz v0, :cond_0

    const-string v0, "DETACH"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-eqz v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->setArmor(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;)V

    :cond_0
    return-void
.end method

.method public affixSeal(Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    .line 2
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 6
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 7
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->setArmor(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;)V

    :cond_1
    return-void
.end method

.method public buffedLvl()I
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result v0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v0

    return v0
.end method

.method public doEquip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    return v2

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 5
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 6
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->equipCursed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    .line 8
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "equip_cursed"

    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_2
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->updateArmor()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->time2equip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return v1
.end method

.method public doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const/4 p3, 0x0

    iput-object p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 3
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->updateArmor()V

    .line 4
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->setArmor(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public emitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/watabou/noosa/particles/Emitter;

    invoke-direct {v0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->film:Lcom/watabou/noosa/TextureFilm;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    iget-object v3, v1, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/utils/RectF;

    .line 5
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/TextureFilm;->width(Lcom/watabou/utils/RectF;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v2

    .line 6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->film:Lcom/watabou/noosa/TextureFilm;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    iget-object v4, v2, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/watabou/utils/RectF;

    .line 8
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/TextureFilm;->height(Lcom/watabou/utils/RectF;)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->pos(FF)V

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->fillTarget:Z

    const/16 v2, 0x72

    .line 11
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v2

    const v3, 0x3f19999a    # 0.6f

    .line 12
    invoke-virtual {v0, v2, v3, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-object v0
.end method

.method public evasionFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;

    .line 2
    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;->testing:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    float-to-double v1, p2

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    int-to-double v5, v0

    .line 5
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-float p2, v1

    .line 6
    :cond_1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    neg-int v0, v0

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v1

    .line 8
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Momentum;->stacks:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->buffedLvl()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 10
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->evasionFactor:F

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    return p2
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "DETACH"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-eqz p2, :cond_3

    .line 3
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->setArmor(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    .line 6
    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-lez p2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 8
    :cond_1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "detach_seal"

    invoke-static {p2, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    .line 10
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result p2

    if-nez p2, :cond_2

    .line 11
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p2, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 12
    :cond_2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    :cond_3
    return-void
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curse()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasCurseGlyph()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curse()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;",
            ">;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicImmune;

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasGoodGlyph()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curse()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-string v6, " "

    const/4 v7, 0x1

    const-string v8, "\n\n"

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMin()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMax()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "curr_absorb"

    invoke-static {v0, v4, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq()I

    move-result v2

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 5
    invoke-static {v1, v6}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "too_heavy"

    invoke-static {v0, v4, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v1, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMax(I)I

    move-result v5

    if-gtz v5, :cond_1

    rsub-int/lit8 v5, v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 8
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMax(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "avg_absorb"

    invoke-static {v0, v4, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq(I)I

    move-result v2

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 10
    invoke-static {v1, v6}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "probably_too_heavy"

    invoke-static {v0, v4, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {v1, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "defense"

    invoke-static {v0, v4, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {v1, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "evasion"

    invoke-static {v0, v4, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_2
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v2, :cond_7

    iget-boolean v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curse()Z

    move-result v2

    if-nez v2, :cond_7

    .line 15
    :cond_5
    invoke-static {v1, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "inscribed"

    invoke-static {v0, v4, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1, v6}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v2, :cond_6

    new-array v4, v3, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "desc"

    invoke-static {v2, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 19
    throw v0

    .line 20
    :cond_7
    :goto_3
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 21
    invoke-static {v1, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "cursed_worn"

    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 22
    :cond_8
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v2, :cond_9

    .line 23
    invoke-static {v1, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "cursed"

    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 24
    :cond_9
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-eqz v2, :cond_a

    .line 25
    invoke-static {v1, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "seal_attached"

    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 26
    :cond_a
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v2, :cond_b

    .line 27
    invoke-static {v1, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "not_cursed"

    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    :goto_4
    return-object v1
.end method

.method public inscribe()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 5
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    return-object p0
.end method

.method public inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curse()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    .line 2
    :cond_1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-object p0
.end method

.method public isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public level()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 2
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curse()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public onHeroGainExp(FLcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->availableUsesToID:F

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float p1, p1, v1

    add-float/2addr p1, p2

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->availableUsesToID:F

    :cond_0
    return-void
.end method

.method public price()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->tier:I

    mul-int/lit8 v0, v0, 0x14

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGoodGlyph()Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasCurseGlyph()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    :cond_2
    div-int/lit8 v0, v0, 0x2

    .line 7
    :cond_3
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result v1

    if-lez v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result v1

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    :cond_4
    if-ge v0, v2, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    :goto_0
    return v2
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicImmune;

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p3

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p2, p1, :cond_1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->availableUsesToID:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    sub-float/2addr p1, p2

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->availableUsesToID:F

    .line 5
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->usesLeftToID:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->usesLeftToID:I

    if-gtz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 7
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "identify"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :cond_1
    return p3
.end method

.method public random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

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
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 5
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    const v3, 0x3e99999a    # 0.3f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    new-array v0, v2, [Ljava/lang/Class;

    .line 6
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 7
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    goto :goto_1

    :cond_2
    const v1, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->reset()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->usesLeftToID:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->availableUsesToID:F

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

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

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->usesLeftToID:I

    const-string v0, "available_uses"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->availableUsesToID:F

    const-string v0, "glyph"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const-string v0, "curse_infusion_bonus"

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    const-string v0, "seal"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    const-string v0, "unfamiliarity"

    .line 9
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->usesLeftToID:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 11
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->availableUsesToID:F

    .line 12
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    const-string v1, "augment"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    return-void
.end method

.method public speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->STRReq()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    float-to-double v1, p2

    const-wide v3, 0x3ff3333333333333L    # 1.2

    int-to-double v5, v0

    .line 3
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-float p2, v1

    .line 4
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Swiftness;

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 6
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v3, v2, :cond_1

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_4

    const v0, 0x3f99999a    # 1.2f

    const v1, 0x3d23d70a    # 0.04f

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->buffedLvl()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    mul-float v2, v2, p2

    move p2, v2

    goto :goto_0

    .line 8
    :cond_3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Flow;

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    .line 9
    :cond_4
    :goto_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Bulk;

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v1, v0, p1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    aget p1, v0, p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    :cond_5
    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p2, p1

    :cond_6
    return p2
.end method

.method public stealthFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Obfuscation;

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->buffedLvl()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    add-float/2addr p2, v0

    :cond_0
    return p2
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->usesLeftToID:I

    const-string v1, "uses_left_to_id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->availableUsesToID:F

    const-string v1, "available_uses"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    const-string v1, "glyph"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 5
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->curseInfusionBonus:Z

    const-string v1, "curse_infusion_bonus"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    const-string v1, "seal"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    const-string v1, "augment"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method

.method public time2equip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->speed()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->upgrade(Z)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method

.method public upgrade(Z)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->glyph:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->curse()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-array p1, v0, [Ljava/lang/Class;

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result p1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_2

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 6
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->seal:Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal;

    if-eqz p1, :cond_3

    .line 8
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 10
    :cond_3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method
