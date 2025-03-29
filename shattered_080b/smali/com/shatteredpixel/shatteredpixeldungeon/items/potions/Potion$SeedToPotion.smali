.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.source "Potion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeedToPotion"
.end annotation


# static fields
.field public static types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Blindweed$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Dreamfoil$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Earthroot$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Fadeleaf$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Firebloom$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Icecap$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Rotberry$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sorrowmoss$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Starflower$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Stormvine$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Swiftthistle$Seed;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHaste;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;-><init>()V

    return-void
.end method


# virtual methods
.method public brew(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    sub-int/2addr v4, v3

    .line 4
    invoke-virtual {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_6

    invoke-static {v6}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_6

    .line 11
    :cond_5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 13
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 14
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 15
    :cond_7
    :goto_3
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    if-eqz v0, :cond_9

    .line 16
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0xa

    .line 17
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->COOKING_HP:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    if-ge v2, v6, :cond_9

    .line 18
    :cond_8
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->COOKING_HP:Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon$LimitedDrops;->count:I

    .line 20
    :cond_a
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    add-int/2addr v0, v3

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    .line 21
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    if-lt v0, v5, :cond_b

    .line 22
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_b
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    const/4 v2, 0x6

    if-lt v0, v2, :cond_c

    .line 25
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 26
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_c
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_d

    .line 28
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 29
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_d
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_e

    .line 31
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 32
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_e
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    return-object p1
.end method

.method public cost(Ljava/util/ArrayList;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion$1;

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_HOLDER:I

    invoke-direct {p1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;I)V

    return-object p1
.end method

.method public testIngredients(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    instance-of v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-eqz v3, :cond_2

    .line 4
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-lt v3, v2, :cond_2

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v1

    :cond_3
    return v2
.end method
