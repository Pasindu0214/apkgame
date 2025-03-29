.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$6;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndTradeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$6;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$6;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->hide()V

    return-void
.end method
