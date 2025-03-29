.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;
.super Ljava/lang/Object;
.source "Belongings.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
        ">;"
    }
.end annotation


# instance fields
.field public armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

.field public backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

.field public misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

.field public misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

.field public owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

.field public weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    .line 5
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    .line 6
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 8
    iput-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    return-void
.end method


# virtual methods
.method public charge(F)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    .line 2
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    add-float/2addr v4, p1

    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    .line 3
    :goto_1
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_0

    .line 4
    iget v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    sub-float/2addr v4, v5

    .line 5
    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->partialCharge:F

    goto :goto_1

    .line 6
    :cond_0
    iget v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->maxCharges:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->curCharges:I

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAllSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v2, v1

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eq v2, p1, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public identify()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_0

    :cond_0
    return-void
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
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$1;)V

    return-object v0
.end method
