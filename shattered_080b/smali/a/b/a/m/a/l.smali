.class public La/b/a/m/a/l;
.super Ljava/lang/Object;
.source "AndroidGraphics.java"

# interfaces
.implements La/b/a/f;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/m/a/l$a;
    }
.end annotation


# static fields
.field public static volatile y:Z = false


# instance fields
.field public final a:Landroid/view/View;

.field public b:I

.field public c:I

.field public d:La/b/a/m/a/c;

.field public e:La/b/a/o/d;

.field public f:La/b/a/m/a/k;

.field public g:La/b/a/o/n/d;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:F

.field public k:J

.field public l:J

.field public m:I

.field public n:La/b/a/p/d;

.field public volatile o:Z

.field public volatile p:Z

.field public volatile q:Z

.field public volatile r:Z

.field public volatile s:Z

.field public t:F

.field public final u:La/b/a/m/a/d;

.field public v:Z

.field public w:[I

.field public x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La/b/a/m/a/c;La/b/a/m/a/d;La/b/a/m/a/y/f;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, La/b/a/m/a/l;->i:J

    const/4 v2, 0x0

    .line 3
    iput v2, v0, La/b/a/m/a/l;->j:F

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, La/b/a/m/a/l;->k:J

    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, v0, La/b/a/m/a/l;->l:J

    const/4 v2, 0x0

    .line 6
    iput v2, v0, La/b/a/m/a/l;->m:I

    .line 7
    new-instance v3, La/b/a/p/d;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, La/b/a/p/d;-><init>(I)V

    iput-object v3, v0, La/b/a/m/a/l;->n:La/b/a/p/d;

    .line 8
    iput-boolean v2, v0, La/b/a/m/a/l;->o:Z

    .line 9
    iput-boolean v2, v0, La/b/a/m/a/l;->p:Z

    .line 10
    iput-boolean v2, v0, La/b/a/m/a/l;->q:Z

    .line 11
    iput-boolean v2, v0, La/b/a/m/a/l;->r:Z

    .line 12
    iput-boolean v2, v0, La/b/a/m/a/l;->s:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 13
    iput v3, v0, La/b/a/m/a/l;->t:F

    const/4 v3, 0x1

    .line 14
    iput-boolean v3, v0, La/b/a/m/a/l;->v:Z

    new-array v4, v3, [I

    .line 15
    iput-object v4, v0, La/b/a/m/a/l;->w:[I

    .line 16
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, La/b/a/m/a/l;->x:Ljava/lang/Object;

    move-object/from16 v4, p2

    .line 17
    iput-object v4, v0, La/b/a/m/a/l;->u:La/b/a/m/a/d;

    move-object/from16 v4, p1

    .line 18
    iput-object v4, v0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 19
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v5

    check-cast v5, Ljavax/microedition/khronos/egl/EGL10;

    .line 20
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v12

    const/4 v13, 0x2

    new-array v6, v13, [I

    .line 21
    invoke-interface {v5, v12, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/16 v6, 0x9

    new-array v8, v6, [I

    .line 22
    fill-array-data v8, :array_0

    const/16 v14, 0xa

    new-array v9, v14, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v15, v3, [I

    const/16 v10, 0xa

    move-object v6, v5

    move-object v7, v12

    move-object v11, v15

    .line 23
    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 24
    invoke-interface {v5, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 25
    aget v5, v15, v2

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_6

    .line 26
    new-instance v5, La/b/a/m/a/y/e;

    iget-object v6, v0, La/b/a/m/a/l;->u:La/b/a/m/a/d;

    iget v7, v6, La/b/a/m/a/d;->a:I

    iget v8, v6, La/b/a/m/a/d;->b:I

    iget v9, v6, La/b/a/m/a/d;->c:I

    iget v10, v6, La/b/a/m/a/d;->d:I

    iget v11, v6, La/b/a/m/a/d;->e:I

    iget v12, v6, La/b/a/m/a/d;->f:I

    iget v6, v6, La/b/a/m/a/d;->g:I

    move-object v15, v5

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v6

    invoke-direct/range {v15 .. v22}, La/b/a/m/a/y/e;-><init>(IIIIIII)V

    .line 27
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v6, v14, :cond_1

    .line 28
    iget-object v6, v0, La/b/a/m/a/l;->u:La/b/a/m/a/d;

    iget-boolean v6, v6, La/b/a/m/a/d;->u:Z

    if-eqz v6, :cond_1

    .line 29
    new-instance v6, La/b/a/m/a/y/c;

    invoke-interface/range {p1 .. p1}, La/b/a/m/a/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v6, v4, v1}, La/b/a/m/a/y/c;-><init>(Landroid/content/Context;La/b/a/m/a/y/f;)V

    .line 30
    invoke-virtual {v6, v5}, La/b/a/m/a/y/d;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 31
    invoke-virtual {v6, v0}, La/b/a/m/a/y/d;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    goto :goto_1

    .line 32
    :cond_1
    new-instance v6, La/b/a/m/a/y/b;

    invoke-interface/range {p1 .. p1}, La/b/a/m/a/c;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, v0, La/b/a/m/a/l;->u:La/b/a/m/a/d;

    iget-boolean v7, v7, La/b/a/m/a/d;->t:Z

    if-eqz v7, :cond_2

    const/4 v13, 0x3

    :cond_2
    invoke-direct {v6, v4, v1, v13}, La/b/a/m/a/y/b;-><init>(Landroid/content/Context;La/b/a/m/a/y/f;I)V

    .line 33
    invoke-virtual {v6, v5}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 34
    invoke-virtual {v6, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 35
    :goto_1
    iput-object v6, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_3

    .line 37
    instance-of v1, v6, La/b/a/m/a/y/b;

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    instance-of v1, v1, La/b/a/m/a/y/c;

    if-eqz v1, :cond_5

    .line 38
    :cond_4
    :try_start_0
    iget-object v1, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setPreserveEGLContextOnPause"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v4, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 39
    :catch_0
    sget-object v1, La/b/a/e;->a:La/b/a/a;

    const-string v2, "AndroidGraphics"

    const-string v4, "Method GLSurfaceView.setPreserveEGLContextOnPause not found"

    invoke-interface {v1, v2, v4}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_5
    :goto_2
    iget-object v1, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 41
    iget-object v1, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void

    .line 42
    :cond_6
    new-instance v1, La/b/a/r/d;

    const-string v2, "Libgdx requires OpenGL ES 2.0"

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3040
        0x4
        0x3038
    .end array-data
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/l;->w:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, La/b/a/m/a/l;->w:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_0
    return p5
.end method

.method public a()V
    .locals 4

    .line 3
    iget-object v0, p0, La/b/a/m/a/l;->x:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iput-boolean v1, p0, La/b/a/m/a/l;->p:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, La/b/a/m/a/l;->s:Z

    .line 6
    :goto_0
    iget-boolean v1, p0, La/b/a/m/a/l;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    iget-object v1, p0, La/b/a/m/a/l;->x:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    sget-object v1, La/b/a/e;->a:La/b/a/a;

    const-string v2, "AndroidGraphics"

    const-string v3, "waiting for destroy synchronization failed!"

    invoke-interface {v1, v2, v3}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public a(Z)V
    .locals 4

    .line 15
    iget-object v0, p0, La/b/a/m/a/l;->a:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 16
    sget-boolean v0, La/b/a/m/a/l;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, La/b/a/m/a/l;->v:Z

    .line 17
    iget-object v0, p0, La/b/a/m/a/l;->a:Landroid/view/View;

    instance-of v3, v0, La/b/a/m/a/y/d;

    if-eqz v3, :cond_2

    check-cast v0, La/b/a/m/a/y/d;

    invoke-virtual {v0, p1}, La/b/a/m/a/y/d;->setRenderMode(I)V

    .line 18
    :cond_2
    iget-object v0, p0, La/b/a/m/a/l;->a:Landroid/view/View;

    instance-of v3, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 19
    :cond_3
    iget-object p1, p0, La/b/a/m/a/l;->n:La/b/a/p/d;

    .line 20
    iput v1, p1, La/b/a/p/d;->b:I

    .line 21
    iput v1, p1, La/b/a/p/d;->c:I

    .line 22
    :goto_2
    iget-object v0, p1, La/b/a/p/d;->a:[F

    array-length v3, v0

    if-ge v1, v3, :cond_4

    const/4 v3, 0x0

    .line 23
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_4
    iput-boolean v2, p1, La/b/a/p/d;->e:Z

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 10
    iget-object v0, p0, La/b/a/m/a/l;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    const/16 v1, 0x1f03

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    .line 11
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iput-object v0, p0, La/b/a/m/a/l;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    throw p1

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, La/b/a/m/a/l;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public b()La/b/a/f$a;
    .locals 8

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    iget-object v1, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v1}, La/b/a/m/a/c;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    new-instance v1, La/b/a/m/a/l$a;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, La/b/a/m/a/l$a;-><init>(La/b/a/m/a/l;IIII)V

    return-object v1
.end method

.method public c()V
    .locals 3

    .line 1
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-static {}, La/b/a/o/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidGraphics"

    invoke-interface {v0, v2, v1}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-static {}, La/b/a/o/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-static {}, La/b/a/o/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-static {}, La/b/a/o/n/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-static {}, La/b/a/o/n/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, La/b/a/m/a/l;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, La/b/a/m/a/l;->p:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, La/b/a/m/a/l;->p:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, La/b/a/m/a/l;->q:Z

    .line 5
    :cond_1
    :goto_0
    iget-boolean v1, p0, La/b/a/m/a/l;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 6
    :try_start_1
    iget-object v1, p0, La/b/a/m/a/l;->x:Ljava/lang/Object;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 7
    iget-boolean v1, p0, La/b/a/m/a/l;->q:Z

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, La/b/a/e;->a:La/b/a/a;

    const-string v2, "AndroidGraphics"

    const-string v3, "waiting for pause synchronization took too long; assuming deadlock and killing"

    invoke-interface {v1, v2, v3}, La/b/a/a;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_2
    sget-object v1, La/b/a/e;->a:La/b/a/a;

    const-string v2, "AndroidGraphics"

    const-string v3, "waiting for pause synchronization failed!"

    invoke-interface {v1, v2, v3}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m/a/l;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, La/b/a/m/a/y/d;

    if-eqz v1, :cond_0

    check-cast v0, La/b/a/m/a/y/d;

    .line 3
    iget-object v0, v0, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {v0}, La/b/a/m/a/y/d$i;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/m/a/l;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m/a/l;->x:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, La/b/a/m/a/l;->p:Z

    .line 3
    iput-boolean v1, p0, La/b/a/m/a/l;->r:Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    iget-object v1, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v1}, La/b/a/m/a/c;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, La/b/a/m/a/l;->t:F

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, La/b/a/m/a/l;->i:J

    sub-long v2, v0, v2

    long-to-float p1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v2

    iput p1, p0, La/b/a/m/a/l;->j:F

    .line 3
    iput-wide v0, p0, La/b/a/m/a/l;->i:J

    .line 4
    iget-boolean p1, p0, La/b/a/m/a/l;->r:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, La/b/a/m/a/l;->n:La/b/a/p/d;

    iget v5, p0, La/b/a/m/a/l;->j:F

    .line 6
    iget v6, p1, La/b/a/p/d;->b:I

    iget-object v7, p1, La/b/a/p/d;->a:[F

    array-length v7, v7

    if-ge v6, v7, :cond_0

    add-int/2addr v6, v3

    iput v6, p1, La/b/a/p/d;->b:I

    .line 7
    :cond_0
    iget-object v6, p1, La/b/a/p/d;->a:[F

    iget v7, p1, La/b/a/p/d;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p1, La/b/a/p/d;->c:I

    aput v5, v6, v7

    .line 8
    array-length v5, v6

    sub-int/2addr v5, v3

    if-le v8, v5, :cond_1

    iput v4, p1, La/b/a/p/d;->c:I

    .line 9
    :cond_1
    iput-boolean v3, p1, La/b/a/p/d;->e:Z

    goto :goto_0

    .line 10
    :cond_2
    iput v2, p0, La/b/a/m/a/l;->j:F

    .line 11
    :goto_0
    iget-object p1, p0, La/b/a/m/a/l;->x:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    iget-boolean v5, p0, La/b/a/m/a/l;->p:Z

    .line 13
    iget-boolean v6, p0, La/b/a/m/a/l;->q:Z

    .line 14
    iget-boolean v7, p0, La/b/a/m/a/l;->s:Z

    .line 15
    iget-boolean v8, p0, La/b/a/m/a/l;->r:Z

    .line 16
    iget-boolean v9, p0, La/b/a/m/a/l;->r:Z

    if-eqz v9, :cond_3

    .line 17
    iput-boolean v4, p0, La/b/a/m/a/l;->r:Z

    .line 18
    :cond_3
    iget-boolean v9, p0, La/b/a/m/a/l;->q:Z

    if-eqz v9, :cond_4

    .line 19
    iput-boolean v4, p0, La/b/a/m/a/l;->q:Z

    .line 20
    iget-object v9, p0, La/b/a/m/a/l;->x:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 21
    :cond_4
    iget-boolean v9, p0, La/b/a/m/a/l;->s:Z

    if-eqz v9, :cond_5

    .line 22
    iput-boolean v4, p0, La/b/a/m/a/l;->s:Z

    .line 23
    iget-object v9, p0, La/b/a/m/a/l;->x:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 24
    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 p1, 0x0

    if-eqz v8, :cond_a

    .line 25
    iget-object v8, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v8}, La/b/a/m/a/c;->getLifecycleListeners()La/b/a/r/p;

    move-result-object v8

    .line 26
    monitor-enter v8

    .line 27
    :try_start_1
    invoke-virtual {v8}, La/b/a/r/p;->b()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [La/b/a/i;

    .line 28
    iget v10, v8, La/b/a/r/a;->b:I

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    .line 29
    aget-object v12, v9, v11

    invoke-interface {v12}, La/b/a/i;->b()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 30
    :cond_6
    iget v9, v8, La/b/a/r/p;->g:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, La/b/a/r/p;->g:I

    .line 31
    iget-object v10, v8, La/b/a/r/p;->e:[Ljava/lang/Object;

    if-nez v10, :cond_7

    goto :goto_3

    .line 32
    :cond_7
    iget-object v11, v8, La/b/a/r/a;->a:[Ljava/lang/Object;

    if-eq v10, v11, :cond_8

    if-nez v9, :cond_8

    .line 33
    iput-object v10, v8, La/b/a/r/p;->f:[Ljava/lang/Object;

    .line 34
    array-length v9, v10

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_8

    .line 35
    iget-object v11, v8, La/b/a/r/p;->f:[Ljava/lang/Object;

    aput-object p1, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 36
    :cond_8
    iput-object p1, v8, La/b/a/r/p;->e:[Ljava/lang/Object;

    .line 37
    :goto_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    iget-object v8, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v8}, La/b/a/a;->getApplicationListener()La/b/a/b;

    move-result-object v8

    check-cast v8, Lcom/watabou/noosa/Game;

    if-eqz v8, :cond_9

    .line 39
    sget-object v8, La/b/a/e;->a:La/b/a/a;

    const-string v9, "AndroidGraphics"

    const-string v10, "resumed"

    invoke-interface {v8, v9, v10}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 40
    :cond_9
    throw p1

    :catchall_0
    move-exception p1

    .line 41
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_a
    :goto_4
    if-eqz v5, :cond_14

    .line 42
    iget-object v5, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v5}, La/b/a/m/a/c;->getRunnables()La/b/a/r/a;

    move-result-object v5

    monitor-enter v5

    .line 43
    :try_start_3
    iget-object v8, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v8}, La/b/a/m/a/c;->getExecutedRunnables()La/b/a/r/a;

    move-result-object v8

    invoke-virtual {v8}, La/b/a/r/a;->clear()V

    .line 44
    iget-object v8, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v8}, La/b/a/m/a/c;->getExecutedRunnables()La/b/a/r/a;

    move-result-object v8

    iget-object v9, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v9}, La/b/a/m/a/c;->getRunnables()La/b/a/r/a;

    move-result-object v9

    invoke-virtual {v8, v9}, La/b/a/r/a;->a(La/b/a/r/a;)V

    .line 45
    iget-object v8, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v8}, La/b/a/m/a/c;->getRunnables()La/b/a/r/a;

    move-result-object v8

    invoke-virtual {v8}, La/b/a/r/a;->clear()V

    .line 46
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v5, 0x0

    .line 47
    :goto_5
    iget-object v8, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v8}, La/b/a/m/a/c;->getExecutedRunnables()La/b/a/r/a;

    move-result-object v8

    iget v8, v8, La/b/a/r/a;->b:I

    if-ge v5, v8, :cond_b

    .line 48
    :try_start_4
    iget-object v8, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v8}, La/b/a/m/a/c;->getExecutedRunnables()La/b/a/r/a;

    move-result-object v8

    invoke-virtual {v8, v5}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v8

    .line 49
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 50
    :cond_b
    iget-object v5, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v5}, La/b/a/m/a/c;->getInput()La/b/a/m/a/m;

    move-result-object v5

    invoke-virtual {v5}, La/b/a/m/a/m;->b()V

    .line 51
    iget-wide v8, p0, La/b/a/m/a/l;->l:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, La/b/a/m/a/l;->l:J

    .line 52
    iget-object v5, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v5}, La/b/a/a;->getApplicationListener()La/b/a/b;

    move-result-object v5

    check-cast v5, Lcom/watabou/noosa/Game;

    if-eqz v5, :cond_13

    .line 53
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v8

    .line 54
    iput-object p1, v8, Lcom/watabou/noosa/NoosaScript;->lastCamera:Lcom/watabou/noosa/Camera;

    .line 55
    invoke-static {}, Lcom/watabou/noosa/NoosaScriptNoLighting;->get()Lcom/watabou/noosa/NoosaScriptNoLighting;

    move-result-object v8

    .line 56
    iput-object p1, v8, Lcom/watabou/noosa/NoosaScript;->lastCamera:Lcom/watabou/noosa/Camera;

    .line 57
    sget-object v8, La/b/a/e;->g:La/b/a/o/d;

    const/16 v9, 0xc11

    check-cast v8, La/b/a/m/a/j;

    if-eqz v8, :cond_12

    .line 58
    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 59
    sget-object v8, La/b/a/e;->g:La/b/a/o/d;

    const/16 v9, 0x4000

    check-cast v8, La/b/a/m/a/j;

    if-eqz v8, :cond_11

    .line 60
    invoke-static {v9}, Landroid/opengl/GLES20;->glClear(I)V

    .line 61
    iget-object v8, v5, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/watabou/noosa/Group;->draw()V

    .line 62
    :cond_c
    sget-object v8, La/b/a/e;->g:La/b/a/o/d;

    check-cast v8, La/b/a/m/a/j;

    if-eqz v8, :cond_10

    .line 63
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 64
    iget-boolean v8, v5, Lcom/watabou/noosa/Game;->requestedReset:Z

    if-eqz v8, :cond_d

    .line 65
    iput-boolean v4, v5, Lcom/watabou/noosa/Game;->requestedReset:Z

    .line 66
    sget-object v8, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/watabou/noosa/Scene;

    iput-object v8, v5, Lcom/watabou/noosa/Game;->requestedScene:Lcom/watabou/noosa/Scene;

    if-eqz v8, :cond_d

    .line 67
    invoke-virtual {v5}, Lcom/watabou/noosa/Game;->switchScene()V

    .line 68
    :cond_d
    sget v8, Lcom/watabou/noosa/Game;->timeScale:F

    sget-object v9, La/b/a/e;->b:La/b/a/f;

    check-cast v9, La/b/a/m/a/l;

    .line 69
    iget-object v10, v9, La/b/a/m/a/l;->n:La/b/a/p/d;

    invoke-virtual {v10}, La/b/a/p/d;->a()F

    move-result v10

    cmpl-float v2, v10, v2

    if-nez v2, :cond_e

    iget v2, v9, La/b/a/m/a/l;->j:F

    goto :goto_7

    :cond_e
    iget-object v2, v9, La/b/a/m/a/l;->n:La/b/a/p/d;

    invoke-virtual {v2}, La/b/a/p/d;->a()F

    move-result v2

    :goto_7
    mul-float v8, v8, v2

    .line 70
    sput v8, Lcom/watabou/noosa/Game;->elapsed:F

    .line 71
    sget v2, Lcom/watabou/noosa/Game;->timeTotal:F

    add-float/2addr v2, v8

    sput v2, Lcom/watabou/noosa/Game;->timeTotal:F

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    sget-object v2, Lcom/watabou/noosa/Game;->inputHandler:Lcom/watabou/input/InputHandler;

    if-eqz v2, :cond_f

    .line 74
    invoke-static {}, Lcom/watabou/input/PointerEvent;->processPointerEvents()V

    .line 75
    invoke-static {}, Lcom/watabou/input/KeyEvent;->processKeyEvents()V

    .line 76
    invoke-static {}, Lcom/watabou/input/ScrollEvent;->processScrollEvents()V

    .line 77
    iget-object p1, v5, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    invoke-virtual {p1}, Lcom/watabou/noosa/Scene;->update()V

    .line 78
    invoke-static {}, Lcom/watabou/noosa/Camera;->updateAll()V

    goto :goto_8

    .line 79
    :cond_f
    throw p1

    .line 80
    :cond_10
    throw p1

    .line 81
    :cond_11
    throw p1

    .line 82
    :cond_12
    throw p1

    .line 83
    :cond_13
    throw p1

    :catchall_2
    move-exception p1

    .line 84
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_14
    :goto_8
    if-eqz v6, :cond_17

    .line 85
    iget-object p1, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {p1}, La/b/a/m/a/c;->getLifecycleListeners()La/b/a/r/p;

    move-result-object p1

    .line 86
    monitor-enter p1

    .line 87
    :try_start_6
    invoke-virtual {p1}, La/b/a/r/p;->b()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [La/b/a/i;

    .line 88
    iget v5, p1, La/b/a/r/a;->b:I

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_15

    .line 89
    aget-object v8, v2, v6

    invoke-interface {v8}, La/b/a/i;->c()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 90
    :cond_15
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 91
    iget-object p1, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {p1}, La/b/a/a;->getApplicationListener()La/b/a/b;

    move-result-object p1

    check-cast p1, Lcom/watabou/noosa/Game;

    .line 92
    iget-object p1, p1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    if-eqz p1, :cond_16

    .line 93
    invoke-virtual {p1}, Lcom/watabou/noosa/Scene;->onPause()V

    .line 94
    :cond_16
    invoke-static {}, Lcom/watabou/glscripts/Script;->reset()V

    .line 95
    sget-object p1, La/b/a/e;->a:La/b/a/a;

    const-string v2, "AndroidGraphics"

    const-string v5, "paused"

    invoke-interface {p1, v2, v5}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 96
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_17
    :goto_a
    if-eqz v7, :cond_19

    .line 97
    iget-object p1, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {p1}, La/b/a/m/a/c;->getLifecycleListeners()La/b/a/r/p;

    move-result-object p1

    .line 98
    monitor-enter p1

    .line 99
    :try_start_8
    invoke-virtual {p1}, La/b/a/r/p;->b()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [La/b/a/i;

    .line 100
    iget v5, p1, La/b/a/r/a;->b:I

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_18

    .line 101
    aget-object v7, v2, v6

    invoke-interface {v7}, La/b/a/i;->a()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 102
    :cond_18
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 103
    iget-object p1, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {p1}, La/b/a/a;->getApplicationListener()La/b/a/b;

    move-result-object p1

    check-cast p1, Lcom/watabou/noosa/Game;

    .line 104
    invoke-virtual {p1}, Lcom/watabou/noosa/Game;->destroy()V

    .line 105
    sget-object p1, La/b/a/e;->a:La/b/a/a;

    const-string v2, "AndroidGraphics"

    const-string v5, "destroyed"

    invoke-interface {p1, v2, v5}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catchall_4
    move-exception v0

    .line 106
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 107
    :cond_19
    :goto_c
    iget-wide v5, p0, La/b/a/m/a/l;->k:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x3b9aca00

    cmp-long p1, v5, v7

    if-lez p1, :cond_1a

    .line 108
    iput v4, p0, La/b/a/m/a/l;->m:I

    .line 109
    iput-wide v0, p0, La/b/a/m/a/l;->k:J

    .line 110
    :cond_1a
    iget p1, p0, La/b/a/m/a/l;->m:I

    add-int/2addr p1, v3

    iput p1, p0, La/b/a/m/a/l;->m:I

    return-void

    :catchall_5
    move-exception v0

    .line 111
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    .line 1
    iput p2, p0, La/b/a/m/a/l;->b:I

    .line 2
    iput p3, p0, La/b/a/m/a/l;->c:I

    .line 3
    invoke-virtual {p0}, La/b/a/m/a/l;->g()V

    .line 4
    iget v0, p0, La/b/a/m/a/l;->b:I

    iget v1, p0, La/b/a/m/a/l;->c:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 5
    iget-boolean p1, p0, La/b/a/m/a/l;->o:Z

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {p1}, La/b/a/a;->getApplicationListener()La/b/a/b;

    move-result-object p1

    invoke-interface {p1}, La/b/a/b;->create()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, La/b/a/m/a/l;->o:Z

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iput-boolean p1, p0, La/b/a/m/a/l;->p:Z

    .line 10
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_0
    :goto_0
    iget-object p1, p0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {p1}, La/b/a/a;->getApplicationListener()La/b/a/b;

    move-result-object p1

    invoke-interface {p1, p2, p3}, La/b/a/b;->resize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    const/16 v0, 0x1f02

    .line 2
    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f00

    .line 3
    invoke-interface {v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f01

    .line 4
    invoke-interface {v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v8, La/b/a/o/n/d;

    sget-object v9, La/b/a/a$a;->a:La/b/a/a$a;

    invoke-direct {v8, v9, v1, v3, v5}, La/b/a/o/n/d;-><init>(La/b/a/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v6, La/b/a/m/a/l;->g:La/b/a/o/n/d;

    .line 6
    iget-object v1, v6, La/b/a/m/a/l;->u:La/b/a/m/a/d;

    iget-boolean v1, v1, La/b/a/m/a/d;->t:Z

    const-string v9, "AndroidGraphics"

    if-eqz v1, :cond_1

    .line 7
    iget v1, v8, La/b/a/o/n/d;->a:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    .line 8
    iget-object v1, v6, La/b/a/m/a/l;->f:La/b/a/m/a/k;

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    new-instance v1, La/b/a/m/a/k;

    invoke-direct {v1}, La/b/a/m/a/k;-><init>()V

    iput-object v1, v6, La/b/a/m/a/l;->f:La/b/a/m/a/k;

    iput-object v1, v6, La/b/a/m/a/l;->e:La/b/a/o/d;

    .line 10
    sput-object v1, La/b/a/e;->g:La/b/a/o/d;

    .line 11
    sput-object v1, La/b/a/e;->h:La/b/a/o/d;

    .line 12
    sput-object v1, La/b/a/e;->i:La/b/a/m/a/k;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, v6, La/b/a/m/a/l;->e:La/b/a/o/d;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    new-instance v1, La/b/a/m/a/j;

    invoke-direct {v1}, La/b/a/m/a/j;-><init>()V

    iput-object v1, v6, La/b/a/m/a/l;->e:La/b/a/o/d;

    .line 15
    sput-object v1, La/b/a/e;->g:La/b/a/o/d;

    .line 16
    sput-object v1, La/b/a/e;->h:La/b/a/o/d;

    .line 17
    :goto_0
    sget-object v1, La/b/a/e;->a:La/b/a/a;

    const-string v3, "OGL renderer: "

    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9, v3}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v1, La/b/a/e;->a:La/b/a/a;

    const-string v3, "OGL vendor: "

    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v1, La/b/a/e;->a:La/b/a/a;

    const-string v2, "OGL version: "

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v9, v0}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    const-string v1, "OGL extensions: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f03

    invoke-interface {v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :goto_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljavax/microedition/khronos/egl/EGL10;

    .line 22
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v10

    const/16 v4, 0x3024

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v10

    move-object/from16 v3, p2

    move v5, v12

    .line 23
    invoke-virtual/range {v0 .. v5}, La/b/a/m/a/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v4, 0x3023

    .line 24
    invoke-virtual/range {v0 .. v5}, La/b/a/m/a/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3022

    .line 25
    invoke-virtual/range {v0 .. v5}, La/b/a/m/a/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    const/16 v4, 0x3021

    .line 26
    invoke-virtual/range {v0 .. v5}, La/b/a/m/a/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v4, 0x3025

    move v5, v11

    .line 27
    invoke-virtual/range {v0 .. v5}, La/b/a/m/a/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v4, 0x3026

    const/16 v16, 0x0

    const/4 v5, 0x0

    .line 28
    invoke-virtual/range {v0 .. v5}, La/b/a/m/a/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v4, 0x3031

    move v7, v5

    move/from16 v5, v16

    .line 29
    invoke-virtual/range {v0 .. v5}, La/b/a/m/a/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v16, 0x30e1

    const/16 v4, 0x30e1

    const/16 v17, 0x0

    move v6, v5

    move/from16 v5, v17

    .line 30
    invoke-virtual/range {v0 .. v5}, La/b/a/m/a/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 31
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v16

    .line 32
    invoke-virtual/range {v0 .. v5}, La/b/a/m/a/l;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 33
    :goto_2
    sget-object v2, La/b/a/e;->a:La/b/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framebuffer: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v2, La/b/a/e;->a:La/b/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "depthbuffer: ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v2, La/b/a/e;->a:La/b/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stencilbuffer: ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v2, La/b/a/e;->a:La/b/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "samples: ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v2, La/b/a/e;->a:La/b/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coverage sampling: ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v9, v0}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/l;->g()V

    move-object/from16 v0, p0

    .line 39
    iget-object v2, v0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 40
    sget-object v3, La/b/a/o/f;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/r/a;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 41
    :goto_3
    iget v4, v2, La/b/a/r/a;->b:I

    if-ge v3, v4, :cond_5

    .line 42
    invoke-virtual {v2, v3}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b/a/o/f;

    iget-object v4, v4, La/b/a/o/f;->a:La/b/a/o/n/j;

    invoke-interface {v4}, La/b/a/o/n/j;->a()V

    .line 43
    invoke-virtual {v2, v3}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b/a/o/f;

    iget-object v4, v4, La/b/a/o/f;->b:La/b/a/o/n/e;

    invoke-interface {v4}, La/b/a/o/n/e;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 44
    :cond_5
    :goto_4
    iget-object v2, v0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 45
    sget-object v3, La/b/a/o/i;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/r/a;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    .line 46
    :goto_5
    iget v4, v2, La/b/a/r/a;->b:I

    if-ge v3, v4, :cond_7

    .line 47
    invoke-virtual {v2, v3}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b/a/o/i;

    .line 48
    invoke-virtual {v4}, La/b/a/o/i;->e()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 49
    :cond_7
    :goto_6
    iget-object v2, v0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 50
    sget-object v3, La/b/a/o/c;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/r/a;

    const/4 v3, 0x0

    if-nez v2, :cond_8

    goto :goto_7

    .line 51
    :cond_8
    iget v4, v2, La/b/a/r/a;->b:I

    if-lez v4, :cond_a

    .line 52
    invoke-virtual {v2, v1}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/c;

    if-eqz v1, :cond_9

    .line 53
    throw v3

    .line 54
    :cond_9
    throw v3

    .line 55
    :cond_a
    :goto_7
    iget-object v2, v0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 56
    sget-object v4, La/b/a/o/j;->h:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/r/a;

    if-nez v2, :cond_b

    goto/16 :goto_a

    :cond_b
    const/4 v4, 0x0

    .line 57
    :goto_8
    iget v5, v2, La/b/a/r/a;->b:I

    if-ge v4, v5, :cond_14

    .line 58
    invoke-virtual {v2, v4}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/b/a/o/j;

    .line 59
    iget-object v6, v5, La/b/a/o/j;->g:La/b/a/o/k;

    invoke-interface {v6}, La/b/a/o/k;->d()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 60
    sget-object v6, La/b/a/e;->g:La/b/a/o/d;

    check-cast v6, La/b/a/m/a/j;

    invoke-virtual {v6}, La/b/a/m/a/j;->a()I

    move-result v6

    iput v6, v5, La/b/a/o/e;->b:I

    .line 61
    iget-object v6, v5, La/b/a/o/j;->g:La/b/a/o/k;

    if-eqz v6, :cond_d

    .line 62
    invoke-interface {v6}, La/b/a/o/k;->d()Z

    move-result v7

    iget-object v8, v5, La/b/a/o/j;->g:La/b/a/o/k;

    invoke-interface {v8}, La/b/a/o/k;->d()Z

    move-result v8

    if-ne v7, v8, :cond_c

    goto :goto_9

    .line 63
    :cond_c
    new-instance v1, La/b/a/r/d;

    const-string v2, "New data must have the same managed status as the old data"

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_d
    :goto_9
    iput-object v6, v5, La/b/a/o/j;->g:La/b/a/o/k;

    .line 65
    invoke-virtual {v5}, La/b/a/o/e;->a()V

    .line 66
    sget-object v7, La/b/a/e;->i:La/b/a/m/a/k;

    const v8, 0x8c1a

    const/4 v9, 0x0

    invoke-interface {v6}, La/b/a/o/k;->g()I

    move-result v10

    invoke-interface {v6}, La/b/a/o/k;->b()I

    move-result v11

    invoke-interface {v6}, La/b/a/o/k;->c()I

    move-result v12

    invoke-interface {v6}, La/b/a/o/k;->f()I

    move-result v13

    const/4 v14, 0x0

    invoke-interface {v6}, La/b/a/o/k;->g()I

    move-result v15

    invoke-interface {v6}, La/b/a/o/k;->i()I

    move-result v16

    if-eqz v7, :cond_12

    const/16 v17, 0x0

    .line 67
    invoke-static/range {v8 .. v17}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIII)V

    .line 68
    invoke-interface {v6}, La/b/a/o/k;->e()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-interface {v6}, La/b/a/o/k;->a()V

    .line 69
    :cond_e
    invoke-interface {v6}, La/b/a/o/k;->h()V

    .line 70
    iget-object v6, v5, La/b/a/o/e;->c:La/b/a/o/i$a;

    iget-object v7, v5, La/b/a/o/e;->d:La/b/a/o/i$a;

    invoke-virtual {v5, v6, v7}, La/b/a/o/e;->a(La/b/a/o/i$a;La/b/a/o/i$a;)V

    .line 71
    iget-object v6, v5, La/b/a/o/e;->e:La/b/a/o/i$b;

    iget-object v7, v5, La/b/a/o/e;->f:La/b/a/o/i$b;

    .line 72
    iput-object v6, v5, La/b/a/o/e;->e:La/b/a/o/i$b;

    .line 73
    iput-object v7, v5, La/b/a/o/e;->f:La/b/a/o/i$b;

    .line 74
    invoke-virtual {v5}, La/b/a/o/e;->a()V

    .line 75
    sget-object v8, La/b/a/e;->g:La/b/a/o/d;

    iget v9, v5, La/b/a/o/e;->a:I

    .line 76
    iget v6, v6, La/b/a/o/i$b;->a:I

    .line 77
    check-cast v8, La/b/a/m/a/j;

    if-eqz v8, :cond_11

    const/16 v8, 0x2802

    .line 78
    invoke-static {v9, v8, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 79
    sget-object v6, La/b/a/e;->g:La/b/a/o/d;

    iget v8, v5, La/b/a/o/e;->a:I

    const/16 v9, 0x2803

    .line 80
    iget v7, v7, La/b/a/o/i$b;->a:I

    .line 81
    check-cast v6, La/b/a/m/a/j;

    if-eqz v6, :cond_10

    .line 82
    invoke-static {v8, v9, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 83
    sget-object v6, La/b/a/e;->g:La/b/a/o/d;

    iget v5, v5, La/b/a/o/e;->a:I

    check-cast v6, La/b/a/m/a/j;

    if-eqz v6, :cond_f

    .line 84
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_f
    throw v3

    .line 85
    :cond_10
    throw v3

    .line 86
    :cond_11
    throw v3

    .line 87
    :cond_12
    throw v3

    .line 88
    :cond_13
    new-instance v1, La/b/a/r/d;

    const-string v2, "Tried to reload an unmanaged TextureArray"

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_14
    :goto_a
    iget-object v2, v0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-static {v2}, La/b/a/o/n/i;->a(La/b/a/a;)V

    .line 90
    iget-object v2, v0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-static {v2}, La/b/a/o/n/c;->a(La/b/a/a;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/l;->c()V

    .line 92
    iget-object v2, v0, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    invoke-interface {v2}, La/b/a/m/a/c;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v0, La/b/a/m/a/l;->b:I

    .line 94
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v0, La/b/a/m/a/l;->c:I

    .line 95
    new-instance v2, La/b/a/p/d;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, La/b/a/p/d;-><init>(I)V

    iput-object v2, v0, La/b/a/m/a/l;->n:La/b/a/p/d;

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, La/b/a/m/a/l;->i:J

    .line 97
    iget v2, v0, La/b/a/m/a/l;->b:I

    iget v3, v0, La/b/a/m/a/l;->c:I

    move-object/from16 v4, p1

    invoke-interface {v4, v1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    return-void
.end method
