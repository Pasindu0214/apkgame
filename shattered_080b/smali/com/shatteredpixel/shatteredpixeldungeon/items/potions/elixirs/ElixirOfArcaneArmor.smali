.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfArcaneArmor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/Elixir;
.source "ElixirOfArcaneArmor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfArcaneArmor$Recipe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/Elixir;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ELIXIR_ARCANE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArcaneArmor;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArcaneArmor;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x5

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArcaneArmor;->interval:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArcaneArmor;->level:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const/16 v3, 0x50

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    cmpg-double v6, v1, v4

    if-gez v6, :cond_0

    .line 3
    iput p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArcaneArmor;->level:I

    .line 4
    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArcaneArmor;->interval:I

    int-to-float p1, v3

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v1

    sub-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    :cond_0
    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method
