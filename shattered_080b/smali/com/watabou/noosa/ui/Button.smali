.class public Lcom/watabou/noosa/ui/Button;
.super Lcom/watabou/noosa/ui/Component;
.source "Button.java"


# static fields
.field public static longClick:F = 1.0f


# instance fields
.field public hotArea:Lcom/watabou/noosa/PointerArea;

.field public keyListener:Lcom/watabou/utils/Signal$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/Signal$Listener<",
            "Lcom/watabou/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public pressTime:F

.field public pressed:Z

.field public processed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 7

    .line 1
    new-instance v6, Lcom/watabou/noosa/ui/Button$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/watabou/noosa/ui/Button$1;-><init>(Lcom/watabou/noosa/ui/Button;FFFF)V

    iput-object v6, p0, Lcom/watabou/noosa/ui/Button;->hotArea:Lcom/watabou/noosa/PointerArea;

    .line 2
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/watabou/noosa/ui/Button$2;

    invoke-direct {v0, p0}, Lcom/watabou/noosa/ui/Button$2;-><init>(Lcom/watabou/noosa/ui/Button;)V

    iput-object v0, p0, Lcom/watabou/noosa/ui/Button;->keyListener:Lcom/watabou/utils/Signal$Listener;

    .line 4
    sget-object v1, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v1, v0}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/watabou/noosa/Group;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/ui/Button;->keyListener:Lcom/watabou/utils/Signal$Listener;

    .line 3
    sget-object v1, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v1, v0}, Lcom/watabou/utils/Signal;->remove(Lcom/watabou/utils/Signal$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public layout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/ui/Button;->hotArea:Lcom/watabou/noosa/PointerArea;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->width:F

    .line 4
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->height:F

    return-void
.end method

.method public onClick()V
    .locals 0

    return-void
.end method

.method public onLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPointerDown()V
    .locals 0

    return-void
.end method

.method public onPointerUp()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/ui/Button;->hotArea:Lcom/watabou/noosa/PointerArea;

    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 3
    iget-boolean v0, p0, Lcom/watabou/noosa/ui/Button;->pressed:Z

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/watabou/noosa/ui/Button;->pressTime:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/ui/Button;->pressTime:F

    sget v1, Lcom/watabou/noosa/ui/Button;->longClick:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/watabou/noosa/ui/Button;->pressed:Z

    .line 6
    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Button;->onLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/watabou/noosa/ui/Button;->hotArea:Lcom/watabou/noosa/PointerArea;

    invoke-virtual {v0}, Lcom/watabou/noosa/PointerArea;->reset()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/watabou/noosa/ui/Button;->processed:Z

    .line 9
    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Button;->onPointerUp()V

    const/16 v0, 0x32

    .line 10
    sget-object v1, La/b/a/e;->d:La/b/a/g;

    invoke-interface {v1, v0}, La/b/a/g;->a(I)V

    :cond_0
    return-void
.end method
