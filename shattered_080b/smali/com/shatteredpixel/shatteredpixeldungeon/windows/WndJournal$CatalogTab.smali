.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;
.super Lcom/watabou/noosa/ui/Component;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatalogTab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;
    }
.end annotation


# static fields
.field public static currentItemIdx:I

.field public static final spriteIndexes:[I


# instance fields
.field public itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field public list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->spriteIndexes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x6
        0x9
        0xb
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$500(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 2
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->currentItemIdx:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v1, v1, v0

    .line 4
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    const v2, 0xffff44

    .line 5
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Visual;->color(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v1, v1, v0

    .line 7
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    .line 8
    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->resetColor()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 10
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 11
    invoke-virtual {v0}, Lcom/watabou/noosa/Group;->clear()V

    .line 12
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->scrollTo(FF)V

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->currentItemIdx:I

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WEAPONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-ne v3, v4, :cond_3

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->WANDS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->RINGS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 23
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 24
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    .line 25
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->ARTIFACTS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->POTIONS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 30
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 31
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    .line 32
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->SCROLLS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 35
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 36
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    .line 37
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 38
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    :cond_9
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$3;

    invoke-direct {v4, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;Ljava/util/HashMap;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 41
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->isSeen(Ljava/lang/Class;)Z

    move-result v5

    invoke-direct {v6, v7, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;ZZ)V

    .line 42
    iget v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v6, v2, v4, v5, v7}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 43
    invoke-virtual {v0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 44
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget v5, v6, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v4, v5

    goto :goto_9

    .line 46
    :cond_a
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0, v1, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 47
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 48
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 49
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 1
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$1;

    const-string v4, ""

    invoke-direct {v3, p0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;Ljava/lang/String;I)V

    aput-object v3, v2, v1

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v2, v2, v1

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SOMETHING:I

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->spriteIndexes:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$2;

    new-instance v1, Lcom/watabou/noosa/ui/Component;

    invoke-direct {v1}, Lcom/watabou/noosa/ui/Component;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;Lcom/watabou/noosa/ui/Component;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/4 v1, 0x7

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v3, v3, v2

    rem-int/lit8 v4, v2, 0x7

    int-to-float v4, v4

    mul-float v4, v4, v0

    div-int/lit8 v5, v2, 0x7

    mul-int/lit8 v5, v5, 0x12

    int-to-float v5, v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 3
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v6, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->itemButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v3, v7, v3

    .line 5
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v3

    sub-float/2addr v6, v3

    sub-float/2addr v6, v4

    .line 6
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method
