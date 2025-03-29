.class public Lcom/watabou/glwrap/Program;
.super Ljava/lang/Object;
.source "Program.java"


# instance fields
.field public handle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 4
    iput v0, p0, Lcom/watabou/glwrap/Program;->handle:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;)Lcom/watabou/glwrap/Attribute;
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/glwrap/Attribute;

    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    iget v2, p0, Lcom/watabou/glwrap/Program;->handle:I

    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 3
    invoke-direct {v0, p1}, Lcom/watabou/glwrap/Attribute;-><init>(I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public uniform(Ljava/lang/String;)Lcom/watabou/glwrap/Uniform;
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/glwrap/Uniform;

    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    iget v2, p0, Lcom/watabou/glwrap/Program;->handle:I

    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 3
    invoke-direct {v0, p1}, Lcom/watabou/glwrap/Uniform;-><init>(I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public use()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v1, p0, Lcom/watabou/glwrap/Program;->handle:I

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
