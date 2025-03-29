.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.super Ljava/lang/Object;
.source "Recipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;
    }
.end annotation


# static fields
.field public static oneIngredientRecipes:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

.field public static threeIngredientRecipes:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

.field public static twoIngredientRecipes:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    .line 1
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$upgradeKit;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit$upgradeKit;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$oneMeat;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$oneMeat;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->oneIngredientRecipes:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    const/16 v1, 0x1b

    new-array v1, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    .line 2
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$CookFruit;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$CookFruit;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst$Recipe;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst$Recipe;-><init>()V

    aput-object v2, v1, v0

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfArcaneArmor$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfArcaneArmor$Recipe;-><init>()V

    const/4 v6, 0x4

    aput-object v2, v1, v6

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$Recipe;-><init>()V

    const/4 v7, 0x5

    aput-object v2, v1, v7

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfDragonsBlood$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfDragonsBlood$Recipe;-><init>()V

    const/4 v8, 0x6

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfIcyTouch$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfIcyTouch$Recipe;-><init>()V

    const/4 v8, 0x7

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$Recipe;-><init>()V

    const/16 v8, 0x8

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfHoneyedHealing$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfHoneyedHealing$Recipe;-><init>()V

    const/16 v8, 0x9

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfToxicEssence$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfToxicEssence$Recipe;-><init>()V

    const/16 v8, 0xa

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/BlizzardBrew$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/BlizzardBrew$Recipe;-><init>()V

    const/16 v8, 0xb

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/InfernalBrew$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/InfernalBrew$Recipe;-><init>()V

    const/16 v8, 0xc

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/ShockingBrew$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/ShockingBrew$Recipe;-><init>()V

    const/16 v8, 0xd

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/CausticBrew$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/CausticBrew$Recipe;-><init>()V

    const/16 v8, 0xe

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Alchemize$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Alchemize$Recipe;-><init>()V

    const/16 v8, 0xf

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/AquaBlast$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/AquaBlast$Recipe;-><init>()V

    const/16 v8, 0x10

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$Recipe;-><init>()V

    const/16 v8, 0x11

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/CurseInfusion$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/CurseInfusion$Recipe;-><init>()V

    const/16 v8, 0x12

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall$Recipe;-><init>()V

    const/16 v8, 0x13

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalInfusion$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalInfusion$Recipe;-><init>()V

    const/16 v8, 0x14

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalPorter$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalPorter$Recipe;-><init>()V

    const/16 v8, 0x15

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/PhaseShift$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/PhaseShift$Recipe;-><init>()V

    const/16 v8, 0x16

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap$Recipe;-><init>()V

    const/16 v8, 0x17

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Recycle$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Recycle$Recipe;-><init>()V

    const/16 v8, 0x18

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$Recipe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$Recipe;-><init>()V

    const/16 v8, 0x19

    aput-object v2, v1, v8

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$twoMeat;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$twoMeat;-><init>()V

    const/16 v8, 0x1a

    aput-object v2, v1, v8

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->twoIngredientRecipes:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    new-array v1, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion$PotionToExotic;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion$PotionToExotic;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll$ScrollToExotic;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll$ScrollToExotic;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$threeMeat;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$threeMeat;-><init>()V

    aput-object v2, v1, v0

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie$Recipe;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie$Recipe;-><init>()V

    aput-object v0, v1, v6

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->threeIngredientRecipes:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRecipe(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->oneIngredientRecipes:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 3
    invoke-virtual {v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->twoIngredientRecipes:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 6
    invoke-virtual {v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->threeIngredientRecipes:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 9
    invoke-virtual {v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static usableInRecipe(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract brew(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;"
        }
    .end annotation
.end method

.method public abstract cost(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;"
        }
    .end annotation
.end method

.method public abstract testIngredients(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)Z"
        }
    .end annotation
.end method
