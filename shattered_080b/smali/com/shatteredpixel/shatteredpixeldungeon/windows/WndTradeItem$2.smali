.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndTradeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

.field public final synthetic val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$2;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$2;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v0, :cond_1

    .line 2
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->sell(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 5
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result v1

    invoke-direct {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->hide()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 9
    throw v0
.end method
