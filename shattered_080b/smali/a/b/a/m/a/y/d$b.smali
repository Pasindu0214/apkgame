.class public abstract La/b/a/m/a/y/d$b;
.super Ljava/lang/Object;
.source "GLSurfaceViewAPI18.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/m/a/y/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public a:[I

.field public final synthetic b:La/b/a/m/a/y/d;


# direct methods
.method public constructor <init>(La/b/a/m/a/y/d;[I)V
    .locals 3

    .line 1
    iput-object p1, p0, La/b/a/m/a/y/d$b;->b:La/b/a/m/a/y/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, La/b/a/m/a/y/d$b;->b:La/b/a/m/a/y/d;

    .line 3
    iget p1, p1, La/b/a/m/a/y/d;->j:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    array-length p1, p2

    add-int/lit8 v0, p1, 0x2

    .line 5
    new-array v0, v0, [I

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    .line 6
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x3040

    .line 7
    aput p2, v0, v1

    const/4 p2, 0x4

    .line 8
    aput p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    const/16 p2, 0x3038

    .line 9
    aput p2, v0, p1

    move-object p2, v0

    .line 10
    :goto_0
    iput-object p2, p0, La/b/a/m/a/y/d$b;->a:[I

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    iget-object v3, p0, La/b/a/m/a/y/d$b;->a:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v7, 0x0

    .line 2
    aget v8, v0, v7

    if-lez v8, :cond_a

    .line 3
    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 4
    iget-object v3, p0, La/b/a/m/a/y/d$b;->a:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v9

    move v5, v8

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5
    move-object v0, p0

    check-cast v0, La/b/a/m/a/y/d$c;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_7

    .line 6
    aget-object v2, v9, v1

    const/16 v3, 0x3025

    .line 7
    iget-object v4, v0, La/b/a/m/a/y/d$c;->c:[I

    invoke-interface {p1, p2, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v0, La/b/a/m/a/y/d$c;->c:[I

    aget v3, v3, v7

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x3026

    .line 9
    iget-object v5, v0, La/b/a/m/a/y/d$c;->c:[I

    invoke-interface {p1, p2, v2, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, v0, La/b/a/m/a/y/d$c;->c:[I

    aget v4, v4, v7

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 11
    :goto_2
    iget v5, v0, La/b/a/m/a/y/d$c;->h:I

    if-lt v3, v5, :cond_6

    iget v3, v0, La/b/a/m/a/y/d$c;->i:I

    if-lt v4, v3, :cond_6

    const/16 v3, 0x3024

    .line 12
    iget-object v4, v0, La/b/a/m/a/y/d$c;->c:[I

    invoke-interface {p1, p2, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    iget-object v3, v0, La/b/a/m/a/y/d$c;->c:[I

    aget v3, v3, v7

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    const/16 v4, 0x3023

    .line 14
    iget-object v5, v0, La/b/a/m/a/y/d$c;->c:[I

    invoke-interface {p1, p2, v2, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    iget-object v4, v0, La/b/a/m/a/y/d$c;->c:[I

    aget v4, v4, v7

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0x3022

    .line 16
    iget-object v6, v0, La/b/a/m/a/y/d$c;->c:[I

    invoke-interface {p1, p2, v2, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    iget-object v5, v0, La/b/a/m/a/y/d$c;->c:[I

    aget v5, v5, v7

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    const/16 v6, 0x3021

    .line 18
    iget-object v10, v0, La/b/a/m/a/y/d$c;->c:[I

    invoke-interface {p1, p2, v2, v6, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 19
    iget-object v6, v0, La/b/a/m/a/y/d$c;->c:[I

    aget v6, v6, v7

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    .line 20
    :goto_6
    iget v10, v0, La/b/a/m/a/y/d$c;->d:I

    if-ne v3, v10, :cond_6

    iget v3, v0, La/b/a/m/a/y/d$c;->e:I

    if-ne v4, v3, :cond_6

    iget v3, v0, La/b/a/m/a/y/d$c;->f:I

    if-ne v5, v3, :cond_6

    iget v3, v0, La/b/a/m/a/y/d$c;->g:I

    if-ne v6, v3, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_8

    return-object v2

    .line 21
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No config chosen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method
