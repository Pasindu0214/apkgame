.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;
.source "MagicalHolster.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->HOLSTER:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    return-void
.end method


# virtual methods
.method public collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v2, :cond_1

    .line 5
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    iput-boolean v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->holster:Z

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public grab(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

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

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->stopCharging()V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->holster:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public price()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method
