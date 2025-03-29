.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;
.source "Weapon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;
    }
.end annotation


# instance fields
.field public ACC:F

.field public DLY:F

.field public RCH:I

.field public augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

.field public availableUsesToID:F

.field public curseInfusionBonus:Z

.field public enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

.field public usesLeftToID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->ACC:F

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->DLY:F

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->RCH:I

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    const/16 v0, 0x14

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->usesLeftToID:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->availableUsesToID:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    return-void
.end method


# virtual methods
.method public STRReq()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq(I)I

    move-result v0

    return v0
.end method

.method public abstract STRReq(I)I
.end method

.method public accuracyFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Wayward;

    invoke-virtual {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x2

    const/4 p1, 0x2

    .line 4
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5
    :cond_1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->ACC:F

    if-lez v0, :cond_2

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    int-to-double v5, v0

    .line 6
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-float p1, v1

    :cond_2
    return p1
.end method

.method public buffedLvl()I
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

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
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v0

    return v0
.end method

.method public enchant()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

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
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    move-result-object v0

    return-object v0
.end method

.method public enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curse()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    .line 2
    :cond_1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-object p0
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curse()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasCurseEnchant()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curse()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;",
            ">;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

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

.method public hasGoodEnchant()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curse()Z

    move-result v0

    if-nez v0, :cond_0

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
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 2
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curse()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->name(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->availableUsesToID:F

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float p1, p1, v1

    add-float/2addr p1, p2

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->availableUsesToID:F

    :cond_0
    return-void
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicImmune;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p3

    .line 3
    :cond_0
    iget-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-nez p2, :cond_1

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->availableUsesToID:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    sub-float/2addr p1, p2

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->availableUsesToID:F

    .line 5
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->usesLeftToID:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->usesLeftToID:I

    if-gtz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 7
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

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
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->randomCurse([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 7
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    goto :goto_1

    :cond_2
    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public reachFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Projecting;

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->RCH:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->RCH:I

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->reset()V

    const/16 v0, 0x14

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->usesLeftToID:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->availableUsesToID:F

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

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->usesLeftToID:I

    const-string v0, "available_uses"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->availableUsesToID:F

    const-string v0, "enchantment"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    const-string v0, "curse_infusion_bonus"

    .line 6
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    const-string v0, "unfamiliarity"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->usesLeftToID:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->availableUsesToID:F

    .line 10
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    const-string v1, "augment"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    return-void
.end method

.method public speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->DLY:F

    .line 4
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->delayFactor:F

    mul-float v2, v2, v1

    .line 5
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfFuror;->attackDelayMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result p1

    mul-float p1, p1, v2

    if-lez v0, :cond_1

    float-to-double v1, p1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    int-to-double v5, v0

    .line 6
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-float p1, v3

    :cond_1
    return p1
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->usesLeftToID:I

    const-string v1, "uses_left_to_id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->availableUsesToID:F

    const-string v1, "available_uses"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    const-string v1, "enchantment"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 5
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    const-string v1, "curse_infusion_bonus"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    const-string v1, "augment"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->upgrade(Z)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    return-object v0
.end method

.method public upgrade(Z)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasCurseEnchant()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    new-array p1, v0, [Ljava/lang/Class;

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasCurseEnchant()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 5
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result p1

    const/4 v2, 0x4

    if-lt p1, v2, :cond_3

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    float-to-double v3, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result p1

    sub-int/2addr p1, v2

    int-to-double v7, p1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double p1, v3, v5

    if-gez p1, :cond_3

    .line 7
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 8
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 9
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method
