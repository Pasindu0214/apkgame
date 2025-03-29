.class public Lcom/watabou/noosa/Gizmo;
.super Ljava/lang/Object;
.source "Gizmo.java"


# instance fields
.field public active:Z

.field public alive:Z

.field public camera:Lcom/watabou/noosa/Camera;

.field public exists:Z

.field public parent:Lcom/watabou/noosa/Group;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->exists:Z

    .line 3
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->alive:Z

    .line 4
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    .line 5
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method


# virtual methods
.method public camera()Lcom/watabou/noosa/Camera;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    return-void
.end method

.method public draw()V
    .locals 0

    return-void
.end method

.method public isActive()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    return v0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return v0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kill()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->alive:Z

    .line 2
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->exists:Z

    return-void
.end method

.method public killAndErase()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->erase(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method

.method public revive()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->alive:Z

    .line 2
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->exists:Z

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
