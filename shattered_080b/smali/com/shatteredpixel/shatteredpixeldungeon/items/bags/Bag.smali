.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Bag.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
        "Ljava/lang/Iterable<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
        ">;"
    }
.end annotation


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    const/16 v0, 0xb

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const-string v0, "OPEN"

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    return-void
.end method


# virtual methods
.method public collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->grab(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->getSlot(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v5

    .line 4
    invoke-virtual {v4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    invoke-virtual {v4, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6
    invoke-virtual {v4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    :cond_0
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 7
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v6, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 10
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateAllBagsBought(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_1

    return v2

    .line 2
    :cond_1
    instance-of v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string p1, "OPEN"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    :cond_0
    return-void
.end method

.method public grab(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$1;)V

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->clearItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "inventory"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/watabou/utils/Bundlable;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    const-string v1, "inventory"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method
