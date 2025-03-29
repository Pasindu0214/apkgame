.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$4;
.super Ljava/lang/Object;
.source "WndBlacksmith.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$4;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$4;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnPressed:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 3
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iput-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$4;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    .line 5
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 6
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 8
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz p1, :cond_1

    .line 9
    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->verify(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    .line 11
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$4;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    .line 12
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnReforge:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$4;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    .line 15
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnReforge:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    :cond_1
    :goto_0
    return-void
.end method
