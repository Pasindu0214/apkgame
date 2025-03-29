.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WaterOfTransmutation;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;
.source "WaterOfTransmutation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;-><init>()V

    return-void
.end method


# virtual methods
.method public affectHero(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public affectItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 4

    .line 1
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2
    move-object p2, p1

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    .line 3
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wandClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 5
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v2, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level(I)V

    .line 7
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 8
    invoke-virtual {p2, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->imbueWand(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :goto_0
    move-object v1, p2

    goto/16 :goto_3

    .line 9
    :cond_1
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz p2, :cond_6

    .line 10
    move-object p2, p1

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 11
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->tier:I

    add-int/lit8 v0, v0, -0x1

    aget-object v2, p1, v0

    .line 12
    :cond_2
    iget-object p1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    iget-object v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 13
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 14
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result p1

    .line 15
    iget-boolean v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    if-lez p1, :cond_4

    .line 16
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    :cond_4
    if-gez p1, :cond_5

    neg-int p1, p1

    .line 17
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 18
    :cond_5
    :goto_1
    iget-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    iput-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->enchantment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;

    .line 19
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->curseInfusionBonus:Z

    .line 20
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 21
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 22
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 23
    iget-object p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    iput-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    goto/16 :goto_3

    .line 24
    :cond_6
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-eqz p2, :cond_8

    .line 25
    move-object p2, p1

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 26
    instance-of p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    if-eqz p1, :cond_7

    goto/16 :goto_3

    .line 27
    :cond_7
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_7

    goto/16 :goto_3

    .line 29
    :cond_8
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz p2, :cond_a

    .line 30
    move-object p2, p1

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 31
    instance-of p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    if-eqz p1, :cond_9

    goto/16 :goto_3

    .line 32
    :cond_9
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_9

    goto/16 :goto_3

    .line 34
    :cond_a
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    if-eqz p2, :cond_e

    .line 35
    move-object p2, p1

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 36
    :cond_b
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 37
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq p1, v2, :cond_b

    .line 38
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level(I)V

    .line 39
    iget p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-lez p1, :cond_c

    .line 40
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_2

    :cond_c
    if-gez p1, :cond_d

    neg-int p1, p1

    .line 41
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 42
    :cond_d
    :goto_2
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 43
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 44
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    goto/16 :goto_3

    .line 45
    :cond_e
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz p2, :cond_11

    .line 46
    move-object p2, p1

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 47
    :cond_f
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WAND:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 48
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq p1, v2, :cond_f

    .line 49
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level(I)V

    .line 50
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result p1

    .line 51
    iget-boolean v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    if-eqz v0, :cond_10

    add-int/lit8 p1, p1, -0x1

    .line 52
    :cond_10
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 53
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 54
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 55
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 56
    iget-boolean p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    iput-boolean p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curseInfusionBonus:Z

    goto :goto_3

    .line 57
    :cond_11
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-eqz p2, :cond_13

    .line 58
    move-object p2, p1

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    .line 59
    :cond_12
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_12

    goto :goto_3

    .line 61
    :cond_13
    instance-of p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    if-eqz p2, :cond_14

    .line 62
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    .line 63
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArtifact()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 64
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/Challenges;->isItemBlocked(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 65
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    iput-boolean v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 66
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    iput-boolean v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 67
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    iput-boolean v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 68
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->visiblyUpgraded()I

    move-result p1

    .line 69
    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    mul-int p1, p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto/16 :goto_0

    :cond_14
    :goto_3
    if-eqz v1, :cond_15

    .line 70
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->setSeen(Ljava/lang/Class;)V

    :cond_15
    return-object v1
.end method

.method public record()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->WELL_OF_TRANSMUTATION:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    return-object v0
.end method

.method public tileDesc()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
