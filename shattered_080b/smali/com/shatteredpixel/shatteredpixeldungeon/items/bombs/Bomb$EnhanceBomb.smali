.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.source "Bomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnhanceBomb"
.end annotation


# static fields
.field public static final bombCosts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final validIngredients:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/ShrapnelBomb;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/ArcaneBomb;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/HolyBomb;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/RegrowthBomb;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/ShockBomb;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Flashbang;

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Noisemaker;

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Firebomb;

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/WoollyBomb;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/FrostBomb;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    .line 2
    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    invoke-virtual {v10, v11, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfMirrorImage;

    invoke-virtual {v10, v11, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfLiquidFlame;

    invoke-virtual {v10, v11, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRage;

    invoke-virtual {v10, v11, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfInvisibility;

    invoke-virtual {v10, v11, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;

    invoke-virtual {v10, v11, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;

    invoke-virtual {v10, v11, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRemoveCurse;

    invoke-virtual {v10, v11, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/GooBlob;

    invoke-virtual {v10, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/MetalShard;

    invoke-virtual {v10, v11, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    const/4 v11, 0x2

    .line 13
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 4
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
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/lit8 v2, v2, -0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public cost(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->bombCosts:Ljava/util/HashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3
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
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public testIngredients(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v5

    if-nez v5, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method
