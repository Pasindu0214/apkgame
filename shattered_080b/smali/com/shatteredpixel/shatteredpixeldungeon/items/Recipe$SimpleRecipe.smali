.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.source "Recipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleRecipe"
.end annotation


# instance fields
.field public cost:I

.field public inQuantity:[I

.field public inputs:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public outQuantity:I

.field public output:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;-><init>()V

    return-void
.end method


# virtual methods
.method public final brew(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
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
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->testIngredients(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inQuantity:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inputs:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inputs:[Ljava/lang/Class;

    aget-object v6, v6, v4

    if-ne v5, v6, :cond_3

    aget v5, v0, v4

    if-lez v5, :cond_3

    .line 6
    aget v5, v0, v4

    .line 7
    iget v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-gt v5, v6, :cond_2

    .line 8
    aget v5, v0, v4

    sub-int/2addr v6, v5

    invoke-virtual {v2, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 9
    aput v3, v0, v4

    goto :goto_1

    .line 10
    :cond_2
    aget v5, v0, v4

    sub-int/2addr v5, v6

    aput v5, v0, v4

    .line 11
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    return-object p1
.end method

.method public final cost(Ljava/util/ArrayList;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->cost:I

    return p1
.end method

.method public final sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
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
    :try_start_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->output:Ljava/lang/Class;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->outQuantity:I

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final testIngredients(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inQuantity:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 4
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inputs:[Ljava/lang/Class;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inputs:[Ljava/lang/Class;

    aget-object v4, v4, v2

    if-ne v3, v4, :cond_2

    .line 6
    aget v3, v0, v2

    .line 7
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    sub-int/2addr v3, v1

    .line 8
    aput v3, v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_3
    array-length p1, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_5

    aget v3, v0, v1

    if-lez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
