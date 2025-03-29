.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;
.source "PotionBandolier.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BANDOLIER:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    return-void
.end method


# virtual methods
.method public grab(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    return p1
.end method

.method public price()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method
