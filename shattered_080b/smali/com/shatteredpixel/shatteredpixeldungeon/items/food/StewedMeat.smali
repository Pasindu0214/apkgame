.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;
.source "StewedMeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$threeMeat;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$twoMeat;,
        Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$oneMeat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STEWED:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/high16 v0, 0x43160000    # 150.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->energy:F

    return-void
.end method


# virtual methods
.method public price()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method
