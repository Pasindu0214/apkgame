.class public La/b/a/m/a/y/b;
.super Landroid/opengl/GLSurfaceView;
.source "GLSurfaceView20.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/m/a/y/b$b;,
        La/b/a/m/a/y/b$c;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String; = "GL2JNIView"

.field public static c:I


# instance fields
.field public final a:La/b/a/m/a/y/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;La/b/a/m/a/y/f;I)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    sput p3, La/b/a/m/a/y/b;->c:I

    .line 3
    iput-object p2, p0, La/b/a/m/a/y/b;->a:La/b/a/m/a/y/f;

    .line 4
    new-instance p1, La/b/a/m/a/y/b$c;

    invoke-direct {p1}, La/b/a/m/a/y/b$c;-><init>()V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 5
    new-instance p1, La/b/a/m/a/y/b$b;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, La/b/a/m/a/y/b$b;-><init>(IIIIII)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    const/16 v4, 0x3000

    if-eq v3, v4, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "%s: EGL error: 0x%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GL2JNIView"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2
    :cond_0
    new-instance p1, La/b/a/m/a/y/b$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, La/b/a/m/a/y/b$a;-><init>(La/b/a/m/a/y/b;Landroid/view/View;Z)V

    return-object p1
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/y/b;->a:La/b/a/m/a/y/f;

    check-cast v0, La/b/a/m/a/y/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
