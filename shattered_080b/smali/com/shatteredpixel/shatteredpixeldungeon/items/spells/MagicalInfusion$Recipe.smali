.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalInfusion$Recipe;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;
.source "MagicalInfusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalInfusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recipe"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 2
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfUpgrade;

    aput-object v3, v1, v2

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inputs:[Ljava/lang/Class;

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->inQuantity:[I

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->cost:I

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalInfusion;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->output:Ljava/lang/Class;

    .line 6
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;->outQuantity:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method
