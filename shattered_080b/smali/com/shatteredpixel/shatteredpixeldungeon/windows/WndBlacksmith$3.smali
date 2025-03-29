.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndBlacksmith.java"


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 3
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;->btnItem2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->upgrade(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method
