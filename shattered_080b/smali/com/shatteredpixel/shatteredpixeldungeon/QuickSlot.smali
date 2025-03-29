.class public Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;
.super Ljava/lang/Object;
.source "QuickSlot.java"


# instance fields
.field public slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-void
.end method


# virtual methods
.method public clearItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->getSlot(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method

.method public contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->getSlot(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public convertToPlaceholder(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 4
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_2

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getSlot(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isPlaceholder(I)Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    aget-object p1, v0, p1

    .line 2
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-void
.end method

.method public setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->clearItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aput-object p2, v0, p1

    return-void
.end method
