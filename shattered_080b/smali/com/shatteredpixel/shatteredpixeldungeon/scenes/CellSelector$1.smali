.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$1;
.super Ljava/lang/Object;
.source "CellSelector.java"

# interfaces
.implements Lcom/watabou/utils/Signal$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/watabou/utils/Signal$Listener<",
        "Lcom/watabou/input/KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignal(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p1, Lcom/watabou/input/KeyEvent;

    .line 2
    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->getActionForKey(Lcom/watabou/input/KeyEvent;)Lcom/watabou/input/GameAction;

    move-result-object v0

    .line 3
    iget-boolean p1, p1, Lcom/watabou/input/KeyEvent;->pressed:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    .line 5
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldAction:Lcom/watabou/input/GameAction;

    .line 6
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NONE:Lcom/watabou/input/GameAction;

    if-eq v2, v3, :cond_0

    if-ne v2, v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->resetKeyHold()V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->ZOOM_IN:Lcom/watabou/input/GameAction;

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->zoom:F

    add-float/2addr v0, v2

    .line 10
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->zoom(F)F

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->ZOOM_OUT:Lcom/watabou/input/GameAction;

    if-ne v0, p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    iget v0, v0, Lcom/watabou/noosa/Camera;->zoom:F

    sub-float/2addr v0, v2

    .line 13
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->zoom(F)F

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    .line 15
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->moveFromAction(Lcom/watabou/input/GameAction;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;

    .line 17
    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector;->heldAction:Lcom/watabou/input/GameAction;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
