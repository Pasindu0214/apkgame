.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Tool;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->SEARCH:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->examining:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->informer:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->examining:Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->informer:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    const/4 v2, 0x0

    .line 6
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$4;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$4;->onSelect(Ljava/lang/Integer;)V

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->search(Z)Z

    :goto_0
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->search(Z)Z

    return v1
.end method
