.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;
.source "MissileWeapon.java"


# static fields
.field public static bundleRestoring:Z = false


# instance fields
.field public baseUses:F

.field public durability:F

.field public holster:Z

.field public parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

.field public sticky:Z

.field public tier:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    const-string v1, "THROW"

    .line 5
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->usesTargeting:Z

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->sticky:Z

    const/high16 v0, 0x42c80000    # 100.0f

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->baseUses:F

    return-void
.end method


# virtual methods
.method public STRReq(I)I
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

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

    const-string v0, "EQUIP"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public castDelay(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result p1

    return p1
.end method

.method public collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->holster:Z

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result p1

    return p1
.end method

.method public damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->min()I

    move-result v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->max()I

    move-result v2

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->damageFactor(I)I

    move-result v0

    .line 4
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result p1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v1

    sub-int/2addr p1, v1

    if-lez p1, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-static {v1, p1}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public decrementDurability()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    const/4 v1, 0x0

    const-string v2, "about_to_break"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durabilityPerUse()F

    move-result v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_0

    .line 3
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durabilityPerUse()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durabilityPerUse()F

    move-result v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v0

    if-gtz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 8
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    goto :goto_1

    .line 10
    :cond_3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durabilityPerUse()F

    move-result v4

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durabilityPerUse()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v0

    if-gtz v0, :cond_4

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    .line 13
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p1

    return p1
.end method

.method public doThrow(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->thrower:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    return-void
.end method

.method public durabilityPerUse()F
    .locals 5

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->baseUses:F

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->holster:Z

    if-eqz v1, :cond_1

    const v1, 0x3f99999a    # 1.2f

    mul-float v0, v0, v1

    .line 4
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfSharpshooting;->durabilityMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v1

    mul-float v1, v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    div-float/2addr v0, v1

    const v1, 0x3a83126f    # 0.001f

    add-float/2addr v0, v1

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 11

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n\n"

    .line 2
    invoke-static {v2, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->min()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->damageFactor(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->max()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->damageFactor(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-string v5, "stats"

    .line 7
    invoke-static {v0, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v5

    const-string v9, " "

    if-le v4, v5, :cond_0

    .line 9
    invoke-static {v2, v9}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "too_heavy"

    invoke-static {v1, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_0
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 11
    invoke-static {v2, v9}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v5

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v10

    sub-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "excess_str"

    invoke-static {v1, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 12
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->curse()Z

    move-result v4

    if-nez v4, :cond_3

    .line 13
    :cond_2
    invoke-static {v2, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "enchanted"

    invoke-static {v1, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2, v9}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    new-array v5, v6, [Ljava/lang/Object;

    const-string v10, "desc"

    invoke-static {v4, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_3
    iget-boolean v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-static {v2, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "cursed_worn"

    invoke-static {v1, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_4
    iget-boolean v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v4, :cond_5

    .line 18
    invoke-static {v2, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "cursed"

    invoke-static {v1, v5, v4, v2}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 19
    :cond_5
    :goto_1
    invoke-static {v2, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v4, "distance"

    invoke-static {v0, v4, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0, v3}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "durability"

    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durabilityPerUse()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 24
    invoke-static {v0, v9}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    .line 25
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durabilityPerUse()F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/high16 v2, 0x42c80000    # 100.0f

    .line 26
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durabilityPerUse()F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "uses_left"

    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 29
    :cond_6
    invoke-static {v0, v9}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "unlimited_uses"

    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public max()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfSharpshooting;->levelDamageBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->max(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public max(I)I
    .locals 3

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    mul-int/lit8 v1, v0, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    mul-int p1, p1, v0

    :goto_0
    add-int/2addr v1, p1

    return v1
.end method

.method public merge(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->merge(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    const/high16 p1, 0x42c80000    # 100.0f

    sub-float/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    .line 5
    :goto_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 6
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-float/2addr v0, p1

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public min()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfSharpshooting;->levelDamageBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->min(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public min(I)I
    .locals 3

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    :goto_0
    add-int/2addr v1, p1

    return v1
.end method

.method public onThrow(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->shoot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->rangedMiss(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->rangedHit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 7
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    :goto_1
    return-void
.end method

.method public price()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v0

    return v1
.end method

.method public random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v0, 0x5

    .line 5
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    :cond_1
    return-object p0
.end method

.method public rangedHit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->decrementDurability()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->sticky:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PinCushion;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PinCushion;

    .line 5
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-ne v1, p1, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PinCushion;->stick(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;)V

    return-void

    .line 7
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :cond_1
    return-void
.end method

.method public rangedMiss(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->reset()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->bundleRestoring:Z

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->bundleRestoring:Z

    const-string v0, "durability"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    return-void
.end method

.method public split(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->bundleRestoring:Z

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->split(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->bundleRestoring:Z

    if-eqz p1, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    const/high16 v1, 0x42c80000    # 100.0f

    .line 5
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    .line 6
    iput-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    :cond_0
    return-object p1
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    const-string v1, "durability"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    return-void
.end method

.method public throwPos(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)I
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Projecting;

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v1, v1, p2

    if-nez v1, :cond_0

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 2
    invoke-virtual {v0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->throwPos(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)I

    move-result p1

    return p1
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->bundleRestoring:Z

    if-nez v0, :cond_5

    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->split(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 5
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 6
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 7
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-ne v1, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 10
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-object v0

    .line 11
    :cond_1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 13
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eq p0, v2, :cond_2

    .line 14
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    if-eqz v1, :cond_4

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 16
    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->merge(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    return-object v0

    .line 17
    :cond_4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-object p0

    .line 18
    :cond_5
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    return-object v0
.end method
