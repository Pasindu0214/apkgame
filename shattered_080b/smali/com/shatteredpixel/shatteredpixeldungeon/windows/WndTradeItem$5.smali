.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$5;
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

.field public final synthetic val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$5;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$5;->val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$5;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->hide()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$5;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$5;->val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->price(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v0

    .line 5
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    sub-int/2addr v3, v0

    sput v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 8
    throw v0
.end method
