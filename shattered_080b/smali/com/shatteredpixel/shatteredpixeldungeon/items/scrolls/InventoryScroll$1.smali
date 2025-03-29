.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "InventoryScroll.java"


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onSelect(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->inventoryTitle:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    const/4 p1, 0x0

    .line 4
    sput-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/InventoryScroll;->identifiedByUse:Z

    :goto_0
    return-void
.end method
