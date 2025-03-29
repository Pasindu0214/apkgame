.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/Elixir;
.source "ElixirOfAquaticRejuvenation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$Recipe;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/Elixir;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ELIXIR_AQUA:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float p1, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    if-le p1, v1, :cond_0

    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$AquaHealing;->left:I

    :cond_0
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x50

    return v0
.end method
