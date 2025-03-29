.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst$Recipe;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.source "ArcaneCatalyst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;
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
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/lit8 v1, v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;-><init>()V

    return-object p1
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

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    instance-of v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-eqz v2, :cond_1

    const/4 p1, 0x2

    return p1

    .line 3
    :cond_1
    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    if-eqz v0, :cond_0

    :cond_2
    return v1
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
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;-><init>()V

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

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    instance-of v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-nez v5, :cond_3

    instance-of v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->regToExo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->regToExo:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method
