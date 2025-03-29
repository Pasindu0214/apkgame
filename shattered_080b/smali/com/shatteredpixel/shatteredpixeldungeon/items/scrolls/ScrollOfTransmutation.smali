.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;
.source "ScrollOfTransmutation.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;-><init>()V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->initials:Ljava/lang/Integer;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->TRANMSUTABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method

.method public static canTransmute(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    if-eqz v0, :cond_3

    :cond_0
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/Elixir;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/Brew;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    if-nez v0, :cond_3

    instance-of p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wandClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 5
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, v3, :cond_0

    .line 6
    invoke-virtual {v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level(I)V

    .line 7
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 8
    invoke-virtual {v0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->imbueWand(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :goto_0
    move-object v1, v0

    goto/16 :goto_6

    .line 9
    :cond_1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-nez v0, :cond_12

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 10
    :cond_2
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz v0, :cond_4

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 12
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;

    if-eqz v1, :cond_3

    .line 13
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    goto :goto_0

    .line 14
    :cond_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    goto :goto_0

    .line 15
    :cond_4
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_6

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 17
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;

    if-eqz v1, :cond_5

    .line 18
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    goto :goto_0

    .line 19
    :cond_5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    goto :goto_0

    .line 20
    :cond_6
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    if-eqz v0, :cond_a

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 22
    :cond_7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 23
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 24
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level(I)V

    .line 25
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-lez v3, :cond_8

    .line 26
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    :cond_8
    if-gez v3, :cond_9

    neg-int v3, v3

    .line 27
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 28
    :cond_9
    :goto_1
    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    iput-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 29
    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 30
    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    iput-boolean v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    goto/16 :goto_6

    .line 31
    :cond_a
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v0, :cond_d

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 33
    :cond_b
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 34
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_b

    .line 35
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level(I)V

    .line 36
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v3

    .line 37
    iget-boolean v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    if-eqz v4, :cond_c

    add-int/lit8 v3, v3, -0x1

    .line 38
    :cond_c
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 39
    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    iput-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 40
    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 41
    iget-boolean v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    iput-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 42
    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    iput-boolean v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    goto/16 :goto_6

    .line 43
    :cond_d
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-eqz v0, :cond_f

    .line 44
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    .line 45
    :cond_e
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_e

    goto/16 :goto_6

    .line 47
    :cond_f
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    if-eqz v0, :cond_11

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    .line 49
    :cond_10
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->STONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_10

    goto/16 :goto_6

    .line 51
    :cond_11
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    if-eqz v0, :cond_18

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    .line 53
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArtifact()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 54
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 55
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 56
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    iput-boolean v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 57
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    iput-boolean v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 58
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->visiblyUpgraded()I

    move-result v0

    .line 59
    iget v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_5

    .line 60
    :cond_12
    :goto_2
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 61
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v1, :cond_13

    .line 62
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    move-object v3, v0

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    goto :goto_3

    .line 63
    :cond_13
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->misTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    move-object v3, v0

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    .line 64
    :cond_14
    :goto_3
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    invoke-static {v4}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    .line 65
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_14

    .line 66
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v1

    .line 67
    iget-boolean v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    if-eqz v4, :cond_15

    add-int/lit8 v1, v1, -0x1

    :cond_15
    if-lez v1, :cond_16

    .line 68
    invoke-virtual {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_4

    :cond_16
    if-gez v1, :cond_17

    neg-int v1, v1

    .line 69
    invoke-virtual {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 70
    :cond_17
    :goto_4
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    iput-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    .line 71
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    iput-boolean v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    .line 72
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    iput-boolean v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 73
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 74
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    iput-boolean v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 75
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    iput-object v0, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    :goto_5
    move-object v1, v3

    :cond_18
    :goto_6
    if-nez v1, :cond_19

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "nothing"

    .line 76
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    goto :goto_8

    .line 78
    :cond_19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 79
    iput-boolean v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 80
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Z)Z

    .line 81
    move-object p1, v1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->doEquip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    goto :goto_7

    .line 82
    :cond_1a
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 83
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 84
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 85
    :cond_1b
    :goto_7
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->setSeen(Ljava/lang/Class;)V

    :cond_1c
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "morph"

    .line 87
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x32

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x1e

    :goto_0
    return v0
.end method
