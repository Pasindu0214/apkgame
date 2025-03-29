.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;
.source "AlchemyScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SOMETHING:I

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    .line 8
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->updateState()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ALCHEMY:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "select"

    invoke-static {v3, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->lastBag(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
