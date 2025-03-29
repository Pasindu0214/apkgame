.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat$PlaceHolder;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;
.source "MysteryMeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceHolder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->FOOD_HOLDER:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public info()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/ChargrilledMeat;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/FrozenCarpaccio;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
