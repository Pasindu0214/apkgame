.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;
.super Ljava/lang/Object;
.source "Belongings.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
        ">;"
    }
.end annotation


# instance fields
.field public backpackIndex:I

.field public backpackIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public equipped:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public index:I

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$1;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->index:I

    .line 3
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->backpackIterator:Ljava/util/Iterator;

    const/4 p2, 0x4

    new-array v0, p2, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    aput-object v2, v0, p1

    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v2, 0x1

    aput-object p1, v0, v2

    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    const/4 v2, 0x2

    aput-object p1, v0, v2

    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->equipped:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->backpackIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->index:I

    :goto_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->backpackIndex:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->equipped:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->backpackIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->index:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->backpackIndex:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->equipped:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->index:I

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->backpackIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :goto_0
    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->index:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->backpackIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->equipped:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    aput-object v1, v0, v2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->equipped:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    aput-object v1, v0, v2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->equipped:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    aput-object v1, v0, v2

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->equipped:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iput-object v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    aput-object v1, v0, v2

    :goto_0
    return-void
.end method
