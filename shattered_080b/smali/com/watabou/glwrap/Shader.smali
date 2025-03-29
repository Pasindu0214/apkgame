.class public Lcom/watabou/glwrap/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# instance fields
.field public handle:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 4
    iput p1, p0, Lcom/watabou/glwrap/Shader;->handle:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public static createCompiled(ILjava/lang/String;)Lcom/watabou/glwrap/Shader;
    .locals 4

    .line 1
    new-instance v0, Lcom/watabou/glwrap/Shader;

    invoke-direct {v0, p0}, Lcom/watabou/glwrap/Shader;-><init>(I)V

    .line 2
    sget-object p0, La/b/a/e;->g:La/b/a/o/d;

    iget v1, v0, Lcom/watabou/glwrap/Shader;->handle:I

    check-cast p0, La/b/a/m/a/j;

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    .line 3
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 4
    sget-object p0, La/b/a/e;->g:La/b/a/o/d;

    iget p1, v0, Lcom/watabou/glwrap/Shader;->handle:I

    check-cast p0, La/b/a/m/a/j;

    if-eqz p0, :cond_3

    .line 5
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p0, 0x1

    .line 6
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->b(I)Ljava/nio/IntBuffer;

    move-result-object p0

    .line 7
    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    iget v1, v0, Lcom/watabou/glwrap/Shader;->handle:I

    const v3, 0x8b81

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v1, v3, p0}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 9
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result p0

    if-nez p0, :cond_1

    .line 10
    new-instance p0, Ljava/lang/Error;

    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    iget v0, v0, Lcom/watabou/glwrap/Shader;->handle:I

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_0

    .line 11
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_0
    throw v2

    :cond_1
    return-object v0

    .line 14
    :cond_2
    throw v2

    .line 15
    :cond_3
    throw v2

    .line 16
    :cond_4
    throw v2
.end method
