.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;
.source "ShopRoom.java"


# instance fields
.field public itemsToSpawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;-><init>()V

    return-void
.end method

.method public static generateItems()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v2, 0x1

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v5, 0x10

    const/16 v6, 0xb

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 4
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->misTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aget-object v10, v10, v2

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/LeatherArmor;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/LeatherArmor;-><init>()V

    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 7
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->misTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aget-object v10, v10, v7

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/PlateArmor;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/PlateArmor;-><init>()V

    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;-><init>()V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;-><init>()V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Torch;-><init>()V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 13
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->misTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aget-object v10, v10, v8

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ScaleArmor;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ScaleArmor;-><init>()V

    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aget-object v1, v1, v9

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 16
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->misTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aget-object v10, v10, v9

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MailArmor;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MailArmor;-><init>()V

    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v10, 0x0

    .line 18
    invoke-virtual {v1, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchant(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    const/4 v11, 0x0

    .line 19
    iput-boolean v11, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 20
    iput v11, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 21
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 22
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->randomTipped(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/MerchantsBeacon;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/MerchantsBeacon;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 27
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 28
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->VELVET_POUCH:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    invoke-virtual {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->dropped()Z

    move-result v13

    if-nez v13, :cond_3

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;

    invoke-direct {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_3
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->SCROLL_HOLDER:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    invoke-virtual {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->dropped()Z

    move-result v13

    if-nez v13, :cond_4

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;

    invoke-direct {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_4
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->POTION_BANDOLIER:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    invoke-virtual {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->dropped()Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;

    invoke-direct {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_5
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->MAGICAL_HOLSTER:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    invoke-virtual {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->dropped()Z

    move-result v13

    if-nez v13, :cond_6

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;

    invoke-direct {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_6
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    goto/16 :goto_4

    .line 33
    :cond_7
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 34
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 35
    invoke-virtual {v15, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->grab(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 36
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    goto :goto_1

    .line 37
    :cond_a
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v10, 0x0

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-nez v10, :cond_c

    goto :goto_3

    .line 38
    :cond_c
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v14, v15, :cond_b

    :goto_3
    move-object v10, v13

    goto :goto_2

    .line 39
    :cond_d
    instance-of v1, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;

    if-eqz v1, :cond_e

    .line 40
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->VELVET_POUCH:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    .line 41
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    goto :goto_4

    .line 42
    :cond_e
    instance-of v1, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;

    if-eqz v1, :cond_f

    .line 43
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->SCROLL_HOLDER:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    .line 44
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    goto :goto_4

    .line 45
    :cond_f
    instance-of v1, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;

    if-eqz v1, :cond_10

    .line 46
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->POTION_BANDOLIER:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    .line 47
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    goto :goto_4

    .line 48
    :cond_10
    instance-of v1, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;

    if-eqz v1, :cond_11

    .line 49
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->MAGICAL_HOLSTER:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    .line 50
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 51
    :cond_11
    :goto_4
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v8, :cond_12

    .line 53
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 54
    :cond_12
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfIdentify;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMagicMapping;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v9, :cond_14

    .line 58
    invoke-static {v9}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v10

    if-nez v10, :cond_13

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 59
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    goto :goto_7

    :cond_13
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 60
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v10

    .line 61
    :goto_7
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 62
    :cond_14
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/SmallRation;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/SmallRation;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/SmallRation;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/SmallRation;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v7}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-eqz v1, :cond_17

    if-eq v1, v2, :cond_16

    if-eq v1, v9, :cond_16

    if-eq v1, v8, :cond_15

    goto :goto_8

    .line 65
    :cond_15
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Honeypot;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 66
    :cond_16
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$DoubleBomb;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$DoubleBomb;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 67
    :cond_17
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :goto_8
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    invoke-virtual {v1, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;

    if-eqz v1, :cond_1c

    .line 71
    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_1b

    if-eq v7, v6, :cond_1a

    if-eq v7, v5, :cond_19

    if-eq v7, v4, :cond_18

    if-eq v7, v3, :cond_18

    const/4 v3, 0x0

    goto :goto_a

    .line 72
    :cond_18
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;->sandBags:I

    rsub-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    goto :goto_9

    .line 73
    :cond_19
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;->sandBags:I

    rsub-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    goto :goto_9

    .line 74
    :cond_1a
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;->sandBags:I

    rsub-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    goto :goto_9

    .line 75
    :cond_1b
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;->sandBags:I

    rsub-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    :goto_9
    double-to-int v3, v3

    :goto_a
    const/4 v4, 0x1

    :goto_b
    if-gt v4, v3, :cond_1c

    .line 76
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$sandBag;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass$sandBag;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;->sandBags:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/TimekeepersHourglass;->sandBags:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1c
    const/16 v1, 0xa

    .line 78
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-eqz v1, :cond_1f

    if-eq v1, v2, :cond_1e

    if-eq v1, v9, :cond_1d

    .line 79
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Stylus;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Stylus;-><init>()V

    goto :goto_c

    .line 80
    :cond_1d
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    goto :goto_c

    .line 81
    :cond_1e
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level(I)V

    goto :goto_c

    .line 83
    :cond_1f
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level(I)V

    .line 85
    :goto_c
    iput-boolean v11, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 86
    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_20

    .line 89
    invoke-static {v0}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    return-object v0

    .line 90
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shop attempted to carry more than 63 items!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method


# virtual methods
.method public itemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->itemsToSpawn:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->generateItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->itemsToSpawn:Ljava/util/ArrayList;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->itemsToSpawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public minHeight()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->itemCount()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public minWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->itemCount()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;I)V

    const/4 v0, 0x1

    const/16 v1, 0xe

    .line 2
    invoke-static {p1, p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/painters/Painter;->fill(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/utils/Rect;II)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->placeShopkeeper(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->placeItems(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;->REGULAR:Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;->set(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door$Type;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public placeItems(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->itemsToSpawn:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->generateItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->itemsToSpawn:Ljava/util/ArrayList;

    .line 3
    :cond_0
    new-instance v0, Lcom/watabou/utils/Point;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/SpecialRoom;->entrance()Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    .line 4
    iget v1, v0, Lcom/watabou/utils/Point;->y:I

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, v0, Lcom/watabou/utils/Point;->y:I

    goto :goto_0

    .line 6
    :cond_1
    iget v2, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 7
    iput v1, v0, Lcom/watabou/utils/Point;->y:I

    goto :goto_0

    .line 8
    :cond_2
    iget v1, v0, Lcom/watabou/utils/Point;->x:I

    iget v2, p0, Lcom/watabou/utils/Rect;->left:I

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, v0, Lcom/watabou/utils/Point;->x:I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 10
    iput v1, v0, Lcom/watabou/utils/Point;->x:I

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/special/ShopRoom;->itemsToSpawn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 12
    iget v3, v0, Lcom/watabou/utils/Point;->x:I

    iget v4, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_4

    iget v3, v0, Lcom/watabou/utils/Point;->y:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 13
    iput v3, v0, Lcom/watabou/utils/Point;->y:I

    goto :goto_2

    .line 14
    :cond_4
    iget v3, v0, Lcom/watabou/utils/Point;->y:I

    iget v4, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, v0, Lcom/watabou/utils/Point;->x:I

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 15
    iput v3, v0, Lcom/watabou/utils/Point;->x:I

    goto :goto_2

    .line 16
    :cond_5
    iget v3, v0, Lcom/watabou/utils/Point;->x:I

    iget v4, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_6

    iget v3, v0, Lcom/watabou/utils/Point;->y:I

    iget v4, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 17
    iput v3, v0, Lcom/watabou/utils/Point;->y:I

    goto :goto_2

    .line 18
    :cond_6
    iget v3, v0, Lcom/watabou/utils/Point;->x:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/watabou/utils/Point;->x:I

    .line 19
    :goto_2
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v3

    .line 20
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v4, v3}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->random()Lcom/watabou/utils/Point;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v3

    .line 22
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v4, v3}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-virtual {p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v4

    if-nez v4, :cond_7

    .line 23
    :cond_8
    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    goto :goto_1

    :cond_9
    return-void
.end method

.method public placeShopkeeper(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->center()Lcom/watabou/utils/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pointToCell(Lcom/watabou/utils/Point;)I

    move-result v0

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;-><init>()V

    .line 3
    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 4
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
