.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$CookFruit;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.source "Blandfruit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CookFruit"
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
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$CookFruit;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 4
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 6
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    sub-int/2addr v1, v2

    .line 7
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->cook(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object v0
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

    const/4 p1, 0x3

    return p1
.end method

.method public sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
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
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$CookFruit;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->cook(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object v0
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

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 7
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    .line 10
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    .line 11
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-lt v3, v2, :cond_4

    .line 12
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;->potionAttrib:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-nez v0, :cond_4

    .line 13
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-lt v0, v2, :cond_4

    const/4 v0, 0x4

    .line 14
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->isChallenged(I)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Sungrass$Seed;

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method
