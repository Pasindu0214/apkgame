.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;
.source "VelvetPouch.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POUCH:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    return-void
.end method


# virtual methods
.method public grab(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/GooBlob;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/MetalShard;

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

.method public price()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method
