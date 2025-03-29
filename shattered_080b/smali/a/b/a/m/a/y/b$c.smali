.class public La/b/a/m/a/y/b$c;
.super Ljava/lang/Object;
.source "GLSurfaceView20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/m/a/y/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    .line 1
    sget-object v0, La/b/a/m/a/y/b;->b:Ljava/lang/String;

    const-string v1, "creating OpenGL ES "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, La/b/a/m/a/y/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".0 context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before eglCreateContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La/b/a/m/a/y/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, La/b/a/m/a/y/b;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3098

    aput v2, v0, v1

    .line 3
    sget v1, La/b/a/m/a/y/b;->c:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0x3038

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 4
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    const-string v1, "After eglCreateContext "

    .line 5
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, La/b/a/m/a/y/b;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, La/b/a/m/a/y/b;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 6
    :cond_0
    sget v1, La/b/a/m/a/y/b;->c:I

    if-le v1, v2, :cond_1

    .line 7
    sget-object v0, La/b/a/m/a/y/b;->b:Ljava/lang/String;

    const-string v1, "Falling back to GLES 2"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sput v2, La/b/a/m/a/y/b;->c:I

    .line 9
    invoke-virtual {p0, p1, p2, p3}, La/b/a/m/a/y/b$c;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    sget-object p1, La/b/a/m/a/y/b;->b:Ljava/lang/String;

    const-string p2, "Returning a GLES "

    invoke-static {p2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, La/b/a/m/a/y/b;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " context"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
