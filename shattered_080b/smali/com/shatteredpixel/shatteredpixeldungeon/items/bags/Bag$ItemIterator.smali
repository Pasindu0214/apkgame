.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;
.super Ljava/lang/Object;
.source "Bag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;
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
.field public index:I

.field public nested:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->index:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->nested:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->nested:Ljava/util/Iterator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->index:I

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 3
    :cond_2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->index:I

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->nested:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->nested:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->nested:Ljava/util/Iterator;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-eqz v1, :cond_1

    .line 6
    move-object v1, v0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->nested:Ljava/util/Iterator;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->nested:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void
.end method
