.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$1;
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
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->sell(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->hide()V

    return-void
.end method
