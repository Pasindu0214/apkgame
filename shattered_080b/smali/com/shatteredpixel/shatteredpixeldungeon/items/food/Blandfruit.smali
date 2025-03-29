.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;
.source "Blandfruit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$Chunks;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$CookFruit;
    }
.end annotation


# instance fields
.field public potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

.field public potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    .line 5
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BLANDFRUIT:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/high16 v1, 0x43e10000    # 450.0f

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->energy:F

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method


# virtual methods
.method public cook(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->types:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->imbuePotion(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method

.method public desc()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "desc_cooked"

    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    if-nez v3, :cond_2

    instance-of v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "desc_eat"

    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "desc_throw"

    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 2

    const-string v0, "EAT"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "raw"

    .line 2
    invoke-static {p0, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_1
    return-void
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public imbuePotion(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->anonymize()V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BLANDFRUIT:I

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 4
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "sunfruit"

    .line 5
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0x2ee62e

    .line 7
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 8
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto/16 :goto_0

    .line 9
    :cond_0
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfStrength;

    if-eqz v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "rotfruit"

    .line 10
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0xcc0022

    .line 12
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 13
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto/16 :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    if-eqz v0, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "earthfruit"

    .line 15
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 16
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0x67583d

    .line 17
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 18
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto/16 :goto_0

    .line 19
    :cond_2
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    if-eqz v0, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "blindfruit"

    .line 20
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 21
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0xd9d9d9    # 2.0006452E-38f

    .line 22
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 23
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto/16 :goto_0

    .line 24
    :cond_3
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    if-eqz v0, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "firefruit"

    .line 25
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 26
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0xff7f00

    .line 27
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 28
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto/16 :goto_0

    .line 29
    :cond_4
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    if-eqz v0, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "icefruit"

    .line 30
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 31
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0x66b3ff

    .line 32
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 33
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto/16 :goto_0

    .line 34
    :cond_5
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfMindVision;

    if-eqz v0, :cond_6

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "fadefruit"

    .line 35
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 36
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0x919999

    .line 37
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 38
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto/16 :goto_0

    .line 39
    :cond_6
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    if-eqz v0, :cond_7

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "sorrowfruit"

    .line 40
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 41
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0xa15ce5

    .line 42
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 43
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto :goto_0

    .line 44
    :cond_7
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    if-eqz v0, :cond_8

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "stormfruit"

    .line 45
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 46
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0x1b5f79

    .line 47
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 48
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto :goto_0

    .line 49
    :cond_8
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    if-eqz v0, :cond_9

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "dreamfruit"

    .line 50
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 51
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0xc152aa

    .line 52
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 53
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto :goto_0

    .line 54
    :cond_9
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfExperience;

    if-eqz v0, :cond_a

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "starfruit"

    .line 55
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 56
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0x404040

    .line 57
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 58
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto :goto_0

    .line 59
    :cond_a
    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHaste;

    if-eqz p1, :cond_b

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "swiftfruit"

    .line 60
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 61
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v0, 0xccbb00

    .line 62
    invoke-direct {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 63
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionGlow:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    :cond_b
    :goto_0
    return-object p0
.end method

.method public isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onThrow(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, p1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_3

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfToxicGas;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfParalyticGas;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLevitation;

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfPurity;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    goto :goto_2

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->shatter(I)V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$Chunks;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$Chunks;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    :goto_2
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->imbuePotion(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->reset()V

    :goto_0
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "potionattrib"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->imbuePotion(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    const-string v1, "potionattrib"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    return-void
.end method
