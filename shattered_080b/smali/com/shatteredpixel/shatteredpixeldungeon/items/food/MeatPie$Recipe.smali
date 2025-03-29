.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie$Recipe;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.source "MeatPie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recipe"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;-><init>()V

    return-void
.end method


# virtual methods
.method public brew(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2
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
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie$Recipe;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/lit8 v1, v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie;-><init>()V

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

    const/4 p1, 0x6

    return p1
.end method

.method public sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 0
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
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie;-><init>()V

    return-object p1
.end method

.method public testIngredients(Ljava/util/ArrayList;)Z
    .locals 8
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

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-lez v6, :cond_0

    .line 3
    instance-of v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    if-ne v6, v7, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    instance-of v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    if-nez v6, :cond_3

    instance-of v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat;

    if-nez v6, :cond_3

    instance-of v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/ChargrilledMeat;

    if-nez v6, :cond_3

    instance-of v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/FrozenCarpaccio;

    if-eqz v4, :cond_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method
