.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$1;
.super Ljava/lang/Object;
.source "Hero.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$1;->val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$1;->val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;Z)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method
