.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;
.source "AlchemicalCatalyst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst$Recipe;
    }
.end annotation


# static fields
.field public static potionChances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHaste;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_CATALYST:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymize()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    return-void
.end method

.method public isKnown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public shatter(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;->potionChances:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymize()V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->shatter(I)V

    return-void
.end method
