.class public La/b/a/m/a/y/e;
.super Ljava/lang/Object;
.source "GdxEglConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:[I

.field public i:[I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, La/b/a/m/a/y/e;->i:[I

    .line 3
    iput p1, p0, La/b/a/m/a/y/e;->a:I

    .line 4
    iput p2, p0, La/b/a/m/a/y/e;->b:I

    .line 5
    iput p3, p0, La/b/a/m/a/y/e;->c:I

    .line 6
    iput p4, p0, La/b/a/m/a/y/e;->d:I

    .line 7
    iput p5, p0, La/b/a/m/a/y/e;->e:I

    .line 8
    iput p6, p0, La/b/a/m/a/y/e;->f:I

    .line 9
    iput p7, p0, La/b/a/m/a/y/e;->g:I

    const/16 p1, 0x9

    new-array p1, p1, [I

    .line 10
    fill-array-data p1, :array_0

    iput-object p1, p0, La/b/a/m/a/y/e;->h:[I

    return-void

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
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x1

    new-array v10, v9, [I

    .line 1
    iget-object v3, v0, La/b/a/m/a/y/e;->h:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v10

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v11, 0x0

    .line 2
    aget v12, v10, v11

    if-lez v12, :cond_14

    .line 3
    new-array v13, v12, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 4
    iget-object v3, v0, La/b/a/m/a/y/e;->h:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v13

    move v5, v12

    move-object v6, v10

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v12, :cond_11

    .line 5
    aget-object v5, v13, v4

    const/16 v6, 0x3025

    .line 6
    iget-object v10, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v6, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    iget-object v6, v0, La/b/a/m/a/y/e;->i:[I

    aget v6, v6, v11

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const/16 v10, 0x3026

    .line 8
    iget-object v14, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v10, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 9
    iget-object v10, v0, La/b/a/m/a/y/e;->i:[I

    aget v10, v10, v11

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 10
    :goto_2
    iget v14, v0, La/b/a/m/a/y/e;->e:I

    if-lt v6, v14, :cond_10

    iget v6, v0, La/b/a/m/a/y/e;->f:I

    if-ge v10, v6, :cond_2

    goto/16 :goto_c

    :cond_2
    const/16 v6, 0x3024

    .line 11
    iget-object v10, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v6, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    iget-object v6, v0, La/b/a/m/a/y/e;->i:[I

    aget v6, v6, v11

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const/16 v10, 0x3023

    .line 13
    iget-object v14, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v10, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 14
    iget-object v10, v0, La/b/a/m/a/y/e;->i:[I

    aget v10, v10, v11

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    const/16 v14, 0x3022

    .line 15
    iget-object v15, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v14, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 16
    iget-object v14, v0, La/b/a/m/a/y/e;->i:[I

    aget v14, v14, v11

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    const/16 v15, 0x3021

    .line 17
    iget-object v9, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v15, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 18
    iget-object v9, v0, La/b/a/m/a/y/e;->i:[I

    aget v9, v9, v11

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    if-nez v1, :cond_7

    const/4 v15, 0x5

    if-ne v6, v15, :cond_7

    const/4 v11, 0x6

    if-ne v10, v11, :cond_7

    if-ne v14, v15, :cond_7

    if-nez v9, :cond_7

    move-object v1, v5

    :cond_7
    if-nez v2, :cond_9

    .line 19
    iget v11, v0, La/b/a/m/a/y/e;->a:I

    if-ne v6, v11, :cond_9

    iget v11, v0, La/b/a/m/a/y/e;->b:I

    if-ne v10, v11, :cond_9

    iget v11, v0, La/b/a/m/a/y/e;->c:I

    if-ne v14, v11, :cond_9

    iget v11, v0, La/b/a/m/a/y/e;->d:I

    if-ne v9, v11, :cond_9

    .line 20
    iget v2, v0, La/b/a/m/a/y/e;->g:I

    if-nez v2, :cond_8

    move-object v2, v5

    goto/16 :goto_e

    :cond_8
    move-object v2, v5

    :cond_9
    const/16 v11, 0x3032

    .line 21
    iget-object v15, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v11, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 22
    iget-object v11, v0, La/b/a/m/a/y/e;->i:[I

    const/16 v16, 0x0

    aget v11, v11, v16

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    const/4 v11, 0x0

    :goto_7
    const/16 v15, 0x3031

    move-object/from16 v17, v1

    .line 23
    iget-object v1, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v15, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 24
    iget-object v1, v0, La/b/a/m/a/y/e;->i:[I

    aget v1, v1, v16

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    if-nez v3, :cond_c

    const/4 v15, 0x1

    if-ne v11, v15, :cond_c

    .line 25
    iget v11, v0, La/b/a/m/a/y/e;->g:I

    if-lt v1, v11, :cond_c

    iget v1, v0, La/b/a/m/a/y/e;->a:I

    if-ne v6, v1, :cond_c

    iget v1, v0, La/b/a/m/a/y/e;->b:I

    if-ne v10, v1, :cond_c

    iget v1, v0, La/b/a/m/a/y/e;->c:I

    if-ne v14, v1, :cond_c

    iget v1, v0, La/b/a/m/a/y/e;->d:I

    if-ne v9, v1, :cond_c

    const/4 v15, 0x1

    const/16 v16, 0x0

    goto :goto_b

    :cond_c
    const/16 v1, 0x30e0

    .line 26
    iget-object v11, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v1, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 27
    iget-object v1, v0, La/b/a/m/a/y/e;->i:[I

    const/16 v16, 0x0

    aget v1, v1, v16

    goto :goto_9

    :cond_d
    const/16 v16, 0x0

    const/4 v1, 0x0

    :goto_9
    const/16 v11, 0x30e1

    .line 28
    iget-object v15, v0, La/b/a/m/a/y/e;->i:[I

    invoke-interface {v7, v8, v5, v11, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 29
    iget-object v11, v0, La/b/a/m/a/y/e;->i:[I

    aget v11, v11, v16

    goto :goto_a

    :cond_e
    const/4 v11, 0x0

    :goto_a
    const/4 v15, 0x1

    if-nez v3, :cond_f

    if-ne v1, v15, :cond_f

    .line 30
    iget v1, v0, La/b/a/m/a/y/e;->g:I

    if-lt v11, v1, :cond_f

    iget v1, v0, La/b/a/m/a/y/e;->a:I

    if-ne v6, v1, :cond_f

    iget v1, v0, La/b/a/m/a/y/e;->b:I

    if-ne v10, v1, :cond_f

    iget v1, v0, La/b/a/m/a/y/e;->c:I

    if-ne v14, v1, :cond_f

    iget v1, v0, La/b/a/m/a/y/e;->d:I

    if-ne v9, v1, :cond_f

    :goto_b
    move-object v3, v5

    :cond_f
    move-object/from16 v1, v17

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_d
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_11
    :goto_e
    if-eqz v3, :cond_12

    goto :goto_f

    :cond_12
    if-eqz v2, :cond_13

    move-object v3, v2

    goto :goto_f

    :cond_13
    move-object v3, v1

    :goto_f
    return-object v3

    .line 31
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No configs match configSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :goto_10
    throw v1

    :goto_11
    goto :goto_10
.end method
