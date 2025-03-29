.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$twoMeat;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;
.source "StewedMeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "twoMeat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inputs:[Ljava/lang/Class;

    new-array v0, v0, [I

    const/4 v1, 0x2

    aput v1, v0, v3

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inQuantity:[I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->cost:I

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->output:Ljava/lang/Class;

    .line 6
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->outQuantity:I

    return-void
.end method
