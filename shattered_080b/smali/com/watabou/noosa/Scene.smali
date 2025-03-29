.class public Lcom/watabou/noosa/Scene;
.super Lcom/watabou/noosa/Group;
.source "Scene.java"


# instance fields
.field public keyListener:Lcom/watabou/utils/Signal$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/Signal$Listener<",
            "Lcom/watabou/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    return-void
.end method

.method public static landscape()Z
    .locals 2

    .line 1
    sget v0, Lcom/watabou/noosa/Game;->width:I

    sget v1, Lcom/watabou/noosa/Game;->height:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public camera()Lcom/watabou/noosa/Camera;
    .locals 1

    .line 1
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    return-object v0
.end method

.method public create()V
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/noosa/Scene$1;

    invoke-direct {v0, p0}, Lcom/watabou/noosa/Scene$1;-><init>(Lcom/watabou/noosa/Scene;)V

    iput-object v0, p0, Lcom/watabou/noosa/Scene;->keyListener:Lcom/watabou/utils/Signal$Listener;

    .line 2
    sget-object v1, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v1, v0}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Scene;->keyListener:Lcom/watabou/utils/Signal$Listener;

    .line 2
    sget-object v1, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v1, v0}, Lcom/watabou/utils/Signal;->remove(Lcom/watabou/utils/Signal$Listener;)V

    .line 3
    invoke-super {p0}, Lcom/watabou/noosa/Group;->destroy()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v0}, La/b/a/a;->exit()V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    return-void
.end method
