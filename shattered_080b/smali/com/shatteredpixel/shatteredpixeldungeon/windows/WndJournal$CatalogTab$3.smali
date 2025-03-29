.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$3;
.super Ljava/lang/Object;
.source "WndJournal.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Class<",
        "+",
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$known:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$3;->val$known:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$3;->val$known:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->isSeen(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$3;->val$known:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->isSeen(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->isSeen(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 5
    :cond_2
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->isSeen(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method
