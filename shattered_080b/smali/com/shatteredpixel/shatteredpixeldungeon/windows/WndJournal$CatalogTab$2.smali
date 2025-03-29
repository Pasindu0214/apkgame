.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;Lcom/watabou/noosa/ui/Component;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;-><init>(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method


# virtual methods
.method public onClick(FF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->items:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

    .line 5
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->items:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;

    .line 7
    invoke-virtual {v3, p1, p2}, Lcom/watabou/noosa/ui/Component;->inside(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;->seen:Z

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    instance-of v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;

    if-eqz v4, :cond_0

    .line 9
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;

    new-instance v5, Lcom/watabou/noosa/Image;

    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    .line 10
    invoke-direct {v5}, Lcom/watabou/noosa/Image;-><init>()V

    .line 11
    invoke-virtual {v5, v6}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 12
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 13
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 14
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_1

    .line 16
    :cond_0
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;

    new-instance v5, Lcom/watabou/noosa/Image;

    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    .line 17
    invoke-direct {v5}, Lcom/watabou/noosa/Image;-><init>()V

    .line 18
    invoke-virtual {v5, v6}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 19
    iget-object v6, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 20
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 21
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$CatalogItem;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->info()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method
