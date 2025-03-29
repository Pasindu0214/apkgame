.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;
.source "ExoticPotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion$PotionToExotic;
    }
.end annotation


# static fields
.field public static final exoToReg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final regToExo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfCleansing;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfHolyFuror;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfStormClouds;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfMagicalSight;

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfShroudingFog;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfStamina;

    const-class v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHaste;

    const-class v14, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfSnapFreeze;

    const-class v15, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    move-object/from16 v16, v0

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfAdrenalineSurge;

    move-object/from16 v17, v1

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    move-object/from16 v18, v2

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfCorrosiveGas;

    move-object/from16 v19, v3

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    move-object/from16 v20, v4

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfShielding;

    move-object/from16 v21, v5

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    sput-object v22, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    .line 2
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    sput-object v22, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    move-object/from16 v22, v6

    .line 3
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->regToExo:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfEarthenArmor;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfEarthenArmor;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;-><init>()V

    return-void
.end method


# virtual methods
.method public isKnown()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymous:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public price()I
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->price()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int v0, v0, v1

    return v0
.end method

.method public reset()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->reset()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->image(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->label(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->color:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setKnown()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->isKnown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setAction()V

    .line 7
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->exoToReg:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setAction()V

    :cond_1
    return-void
.end method
