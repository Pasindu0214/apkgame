.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;
.source "ScrollHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->HOLDER:I

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
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;

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

.method public onDetach()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->onDetach()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;

    const/4 v2, -0x1

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning;->returnDepth:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public price()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method
