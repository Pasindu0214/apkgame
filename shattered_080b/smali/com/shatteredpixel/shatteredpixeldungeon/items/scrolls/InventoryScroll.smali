.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;
.source "InventoryScroll.java"


# static fields
.field public static identifiedByUse:Z = false

.field public static itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# instance fields
.field public inventoryTitle:Ljava/lang/String;

.field public mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "inv_title"

    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->inventoryTitle:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALL:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    return-void
.end method


# virtual methods
.method public doRead()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->isKnown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->setKnown()V

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->identifiedByUse:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->identifiedByUse:Z

    .line 5
    :goto_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->inventoryTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    return-void
.end method

.method public abstract onItemSelected(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end method
