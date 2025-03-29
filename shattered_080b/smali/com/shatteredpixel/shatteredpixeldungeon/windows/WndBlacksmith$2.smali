.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;
.source "WndBlacksmith.java"


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 3
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnPressed:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->UPGRADEABLE:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "select"

    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    return-void
.end method
