.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;
.source "RingOfWealth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;
    }
.end annotation


# static fields
.field public static latestDropWasRare:Z = false


# instance fields
.field public dropsToRare:I

.field public triesToDrop:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->triesToDrop:F

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->dropsToRare:I

    return-void
.end method

.method public static dropChanceMultiplier(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static tryForBonusDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v2

    const/high16 v4, -0x80000000

    .line 3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;

    .line 4
    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;

    .line 5
    iget v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->triesToDrop:F

    cmpl-float v10, v9, v7

    if-lez v10, :cond_1

    .line 6
    iget v4, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->dropsToRare:I

    move v7, v9

    goto :goto_0

    :cond_2
    const/4 v5, 0x5

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/16 v10, 0xa

    cmpl-float v6, v7, v6

    if-nez v6, :cond_3

    .line 7
    invoke-static {v8, v9}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v4

    int-to-float v7, v4

    .line 8
    invoke-static {v5, v10}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v4

    .line 9
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 v11, p1

    int-to-float v11, v11

    .line 10
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I

    move-result v0

    int-to-double v0, v0

    const-wide v12, 0x3ff3333340000000L    # 1.2000000476837158

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v11, v11, v0

    sub-float/2addr v7, v11

    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_18

    const v0, 0x3f666666    # 0.9f

    const/4 v1, 0x2

    const/4 v11, 0x3

    const v12, 0x3f333333    # 0.7f

    const v13, 0x3e99999a    # 0.3f

    const/4 v14, 0x1

    if-gtz v4, :cond_d

    .line 11
    :goto_2
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v4

    cmpg-float v15, v4, v13

    if-gez v15, :cond_4

    .line 12
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    .line 13
    invoke-direct {v4, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    .line 14
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 15
    iget v15, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v15, v15

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v3, 0x40c00000    # 6.0f

    .line 16
    invoke-static {v9, v3}, Lcom/watabou/utils/Random;->NormalFloat(FF)F

    move-result v3

    mul-float v3, v3, v15

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 17
    iput v3, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    goto/16 :goto_5

    :cond_4
    cmpg-float v3, v4, v12

    if-gez v3, :cond_8

    const/4 v3, 0x4

    .line 18
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-eq v3, v14, :cond_7

    if-eq v3, v1, :cond_6

    if-eq v3, v11, :cond_5

    .line 19
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;-><init>()V

    goto :goto_3

    .line 20
    :cond_5
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;-><init>()V

    goto :goto_3

    .line 21
    :cond_6
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;-><init>()V

    goto :goto_3

    .line 22
    :cond_7
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfEnchantment;-><init>()V

    .line 23
    iput v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    :goto_3
    move-object v4, v3

    goto :goto_5

    :cond_8
    cmpg-float v3, v4, v0

    if-gez v3, :cond_a

    .line 24
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    goto :goto_4

    :cond_9
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    :goto_4
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    .line 25
    iput-boolean v8, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 26
    iput-boolean v14, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    goto :goto_5

    .line 27
    :cond_a
    invoke-static {v11}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-eqz v3, :cond_b

    .line 28
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/2addr v3, v5

    add-int/2addr v3, v14

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomWeapon(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    move-result-object v4

    .line 29
    invoke-virtual {v4, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array v3, v8, [Ljava/lang/Class;

    .line 30
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 31
    iput-boolean v8, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 32
    iput-boolean v14, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    goto :goto_5

    .line 33
    :cond_b
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/2addr v3, v5

    add-int/2addr v3, v14

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object v4

    .line 34
    invoke-virtual {v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->upgrade(Z)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array v3, v8, [Ljava/lang/Class;

    .line 35
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 36
    iput-boolean v8, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 37
    iput-boolean v14, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 38
    :goto_5
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 39
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sput-boolean v14, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->latestDropWasRare:Z

    .line 41
    invoke-static {v5, v10}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    move v4, v0

    const/16 v3, 0x32

    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_c
    const/4 v3, 0x0

    const/16 v9, 0x32

    goto/16 :goto_2

    .line 42
    :cond_d
    :goto_6
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    cmpg-float v9, v3, v13

    if-gez v9, :cond_e

    .line 43
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    .line 44
    invoke-direct {v3, v14}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    .line 45
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 46
    iget v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v9, v9

    const v15, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 47
    invoke-static {v15, v5}, Lcom/watabou/utils/Random;->NormalFloat(FF)F

    move-result v5

    mul-float v5, v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 48
    iput v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    goto :goto_7

    :cond_e
    cmpg-float v5, v3, v12

    if-gez v5, :cond_11

    .line 49
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    const v5, 0x3ecccccd    # 0.4f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_f

    .line 50
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->STONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    goto :goto_7

    :cond_f
    cmpg-float v3, v3, v12

    if-gez v3, :cond_10

    .line 51
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    goto :goto_7

    .line 52
    :cond_10
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    goto :goto_7

    :cond_11
    cmpg-float v3, v3, v0

    if-gez v3, :cond_15

    .line 53
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    cmpg-float v5, v3, v13

    if-gez v5, :cond_12

    .line 54
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    goto :goto_7

    :cond_12
    const v5, 0x3f19999a    # 0.6f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_13

    .line 55
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    goto :goto_7

    .line 56
    :cond_13
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-nez v3, :cond_14

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;-><init>()V

    goto :goto_7

    :cond_14
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;-><init>()V

    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    .line 57
    :cond_15
    invoke-static {v11}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    if-eqz v3, :cond_16

    .line 58
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomWeapon()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    move-result-object v3

    const/4 v5, 0x0

    .line 59
    invoke-virtual {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 60
    iput-boolean v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 61
    iput-boolean v14, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 62
    iput v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 63
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    goto :goto_8

    :cond_16
    const/4 v5, 0x0

    .line 64
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 66
    iput-boolean v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 67
    iput-boolean v14, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 68
    iput v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 69
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 70
    :goto_8
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 71
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    const/16 v3, 0x32

    .line 72
    :goto_9
    invoke-static {v8, v3}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v7, v0

    move-object v3, v5

    const/4 v5, 0x5

    const/16 v9, 0x32

    goto/16 :goto_1

    :cond_17
    const/4 v5, 0x5

    goto/16 :goto_6

    .line 73
    :cond_18
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;

    .line 74
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;

    .line 75
    iput v7, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->triesToDrop:F

    .line 76
    iput v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->dropsToRare:I

    goto :goto_a

    :cond_19
    return-object v6
.end method


# virtual methods
.method public buff()Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;)V

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "tries_to_drop"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->triesToDrop:F

    const-string v0, "drops_to_rare"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->dropsToRare:I

    return-void
.end method

.method public statsInfo()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isIdentified()Z

    move-result v0

    const-string v1, "#.##"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 2
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide v6, 0x3ff3333340000000L    # 1.2000000476837158

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->soloBuffedBonus()I

    move-result v1

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-double v6, v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "stats"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "typical_stats"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->triesToDrop:F

    const-string v1, "tries_to_drop"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;->dropsToRare:I

    const-string v1, "drops_to_rare"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
