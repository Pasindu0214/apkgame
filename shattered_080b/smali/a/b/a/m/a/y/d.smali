.class public La/b/a/m/a/y/d;
.super Landroid/view/SurfaceView;
.source "GLSurfaceViewAPI18.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/m/a/y/d$j;,
        La/b/a/m/a/y/d$l;,
        La/b/a/m/a/y/d$i;,
        La/b/a/m/a/y/d$h;,
        La/b/a/m/a/y/d$m;,
        La/b/a/m/a/y/d$c;,
        La/b/a/m/a/y/d$b;,
        La/b/a/m/a/y/d$e;,
        La/b/a/m/a/y/d$g;,
        La/b/a/m/a/y/d$d;,
        La/b/a/m/a/y/d$f;,
        La/b/a/m/a/y/d$k;
    }
.end annotation


# static fields
.field public static final l:La/b/a/m/a/y/d$j;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "La/b/a/m/a/y/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:La/b/a/m/a/y/d$i;

.field public c:Landroid/opengl/GLSurfaceView$Renderer;

.field public d:Z

.field public e:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field public f:La/b/a/m/a/y/d$f;

.field public g:La/b/a/m/a/y/d$g;

.field public h:La/b/a/m/a/y/d$k;

.field public i:I

.field public j:I

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La/b/a/m/a/y/d$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/b/a/m/a/y/d$j;-><init>(La/b/a/m/a/y/d$a;)V

    sput-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, La/b/a/m/a/y/d;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 4
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {v0}, La/b/a/m/a/y/d$i;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .line 1
    iget v0, p0, La/b/a/m/a/y/d;->i:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/m/a/y/d;->k:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {v0}, La/b/a/m/a/y/d$i;->a()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, La/b/a/m/a/y/d;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, La/b/a/m/a/y/d;->c:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, La/b/a/m/a/y/d$i;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    :goto_0
    new-instance v2, La/b/a/m/a/y/d$i;

    iget-object v3, p0, La/b/a/m/a/y/d;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, La/b/a/m/a/y/d$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {v2, v0}, La/b/a/m/a/y/d$i;->a(I)V

    .line 7
    :cond_1
    iget-object v0, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, La/b/a/m/a/y/d;->d:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, La/b/a/m/a/y/d$i;->f()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, La/b/a/m/a/y/d;->d:Z

    .line 4
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, La/b/a/m/a/y/d;->i:I

    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, La/b/a/m/a/y/d;->a()V

    .line 2
    iput-object p1, p0, La/b/a/m/a/y/d;->e:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .line 3
    new-instance v0, La/b/a/m/a/y/d$m;

    invoke-direct {v0, p0, p1}, La/b/a/m/a/y/d$m;-><init>(La/b/a/m/a/y/d;Z)V

    invoke-virtual {p0, v0}, La/b/a/m/a/y/d;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, La/b/a/m/a/y/d;->a()V

    .line 2
    iput p1, p0, La/b/a/m/a/y/d;->j:I

    return-void
.end method

.method public setEGLContextFactory(La/b/a/m/a/y/d$f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, La/b/a/m/a/y/d;->a()V

    .line 2
    iput-object p1, p0, La/b/a/m/a/y/d;->f:La/b/a/m/a/y/d$f;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(La/b/a/m/a/y/d$g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, La/b/a/m/a/y/d;->a()V

    .line 2
    iput-object p1, p0, La/b/a/m/a/y/d;->g:La/b/a/m/a/y/d$g;

    return-void
.end method

.method public setGLWrapper(La/b/a/m/a/y/d$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/m/a/y/d;->h:La/b/a/m/a/y/d$k;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, La/b/a/m/a/y/d;->k:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {v0, p1}, La/b/a/m/a/y/d$i;->a(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La/b/a/m/a/y/d;->a()V

    .line 2
    iget-object v0, p0, La/b/a/m/a/y/d;->e:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, La/b/a/m/a/y/d$m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La/b/a/m/a/y/d$m;-><init>(La/b/a/m/a/y/d;Z)V

    iput-object v0, p0, La/b/a/m/a/y/d;->e:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/m/a/y/d;->f:La/b/a/m/a/y/d$f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, La/b/a/m/a/y/d$d;

    invoke-direct {v0, p0, v1}, La/b/a/m/a/y/d$d;-><init>(La/b/a/m/a/y/d;La/b/a/m/a/y/d$a;)V

    iput-object v0, p0, La/b/a/m/a/y/d;->f:La/b/a/m/a/y/d$f;

    .line 6
    :cond_1
    iget-object v0, p0, La/b/a/m/a/y/d;->g:La/b/a/m/a/y/d$g;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, La/b/a/m/a/y/d$e;

    invoke-direct {v0, v1}, La/b/a/m/a/y/d$e;-><init>(La/b/a/m/a/y/d$a;)V

    iput-object v0, p0, La/b/a/m/a/y/d;->g:La/b/a/m/a/y/d$g;

    .line 8
    :cond_2
    iput-object p1, p0, La/b/a/m/a/y/d;->c:Landroid/opengl/GLSurfaceView$Renderer;

    .line 9
    new-instance p1, La/b/a/m/a/y/d$i;

    iget-object v0, p0, La/b/a/m/a/y/d;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, La/b/a/m/a/y/d$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {p1, p3, p4}, La/b/a/m/a/y/d$i;->a(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {p1}, La/b/a/m/a/y/d$i;->j()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {p1}, La/b/a/m/a/y/d$i;->k()V

    return-void
.end method
