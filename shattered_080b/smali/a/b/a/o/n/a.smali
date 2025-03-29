.class public La/b/a/o/n/a;
.super Ljava/lang/Object;
.source "ETC1TextureData.java"

# interfaces
.implements La/b/a/o/l;


# instance fields
.field public a:La/b/a/n/a;

.field public b:Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(La/b/a/n/a;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/b/a/o/n/a;->d:I

    .line 3
    iput v0, p0, La/b/a/o/n/a;->e:I

    .line 4
    iput-boolean v0, p0, La/b/a/o/n/a;->f:Z

    .line 5
    iput-object p1, p0, La/b/a/o/n/a;->a:La/b/a/n/a;

    .line 6
    iput-boolean p2, p0, La/b/a/o/n/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/a;->f:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, La/b/a/o/n/a;->a:La/b/a/n/a;

    if-nez v0, :cond_1

    iget-object v0, p0, La/b/a/o/n/a;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Can only load once from ETC1Data"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, La/b/a/o/n/a;->a:La/b/a/n/a;

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;-><init>(La/b/a/n/a;)V

    iput-object v1, p0, La/b/a/o/n/a;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    .line 5
    :cond_2
    iget-object v0, p0, La/b/a/o/n/a;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->a:I

    iput v1, p0, La/b/a/o/n/a;->d:I

    .line 6
    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->b:I

    iput v0, p0, La/b/a/o/n/a;->e:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, La/b/a/o/n/a;->f:Z

    return-void

    .line 8
    :cond_3
    new-instance v0, La/b/a/r/d;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 13

    .line 9
    iget-boolean v0, p0, La/b/a/o/n/a;->f:Z

    if-eqz v0, :cond_6

    .line 10
    sget-object v0, La/b/a/e;->b:La/b/a/f;

    check-cast v0, La/b/a/m/a/l;

    const-string v1, "GL_OES_compressed_ETC1_RGB8_texture"

    invoke-virtual {v0, v1}, La/b/a/m/a/l;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, La/b/a/o/n/a;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    sget-object v3, La/b/a/o/g$c;->d:La/b/a/o/g$c;

    invoke-static {v0, v3}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->a(Lcom/badlogic/gdx/graphics/glutils/ETC1$a;La/b/a/o/g$c;)La/b/a/o/g;

    move-result-object v0

    .line 12
    sget-object v3, La/b/a/e;->g:La/b/a/o/d;

    const/4 v5, 0x0

    invoke-virtual {v0}, La/b/a/o/g;->e()I

    move-result v6

    .line 13
    iget-object v4, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 14
    iget v7, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 15
    iget v8, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/4 v9, 0x0

    .line 16
    invoke-virtual {v0}, La/b/a/o/g;->d()I

    move-result v10

    invoke-virtual {v0}, La/b/a/o/g;->f()I

    move-result v11

    invoke-virtual {v0}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 17
    check-cast v3, La/b/a/m/a/j;

    if-eqz v3, :cond_1

    move v4, p1

    .line 18
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 19
    iget-boolean v3, p0, La/b/a/o/n/a;->c:Z

    if-eqz v3, :cond_0

    .line 20
    iget-object v3, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 21
    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 22
    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 23
    invoke-static {p1, v0, v4, v3}, La/b/a/o/n/g;->a(ILa/b/a/o/g;II)V

    .line 24
    :cond_0
    invoke-virtual {v0}, La/b/a/o/g;->a()V

    .line 25
    iput-boolean v1, p0, La/b/a/o/n/a;->c:Z

    goto :goto_0

    .line 26
    :cond_1
    throw v2

    .line 27
    :cond_2
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    const/4 v4, 0x0

    const v5, 0x8d64

    iget v6, p0, La/b/a/o/n/a;->d:I

    iget v7, p0, La/b/a/o/n/a;->e:I

    const/4 v8, 0x0

    iget-object v3, p0, La/b/a/o/n/a;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget-object v9, p0, La/b/a/o/n/a;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    iget v10, v9, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->d:I

    sub-int v10, v3, v10

    iget-object v11, v9, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_5

    move v3, p1

    move v9, v10

    move-object v10, v11

    .line 28
    invoke-static/range {v3 .. v10}, Landroid/opengl/GLES20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 29
    iget-boolean p1, p0, La/b/a/o/n/a;->c:Z

    if-eqz p1, :cond_4

    .line 30
    sget-object p1, La/b/a/e;->h:La/b/a/o/d;

    const/16 v0, 0xde1

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_3

    .line 31
    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    goto :goto_0

    :cond_3
    throw v2

    .line 32
    :cond_4
    :goto_0
    iget-object p1, p0, La/b/a/o/n/a;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    .line 33
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/ByteBuffer;)V

    .line 34
    iput-object v2, p0, La/b/a/o/n/a;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    .line 35
    iput-boolean v1, p0, La/b/a/o/n/a;->f:Z

    return-void

    .line 36
    :cond_5
    throw v2

    .line 37
    :cond_6
    new-instance p1, La/b/a/r/d;

    const-string v0, "Call prepare() before calling consumeCompressedData()"

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, La/b/a/o/n/a;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, La/b/a/o/n/a;->e:I

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/a;->f:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    new-instance v0, La/b/a/r/d;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()La/b/a/o/g;
    .locals 2

    .line 1
    new-instance v0, La/b/a/r/d;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()La/b/a/o/l$a;
    .locals 1

    .line 1
    sget-object v0, La/b/a/o/l$a;->b:La/b/a/o/l$a;

    return-object v0
.end method

.method public h()La/b/a/o/g$c;
    .locals 1

    .line 1
    sget-object v0, La/b/a/o/g$c;->d:La/b/a/o/g$c;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/a;->c:Z

    return v0
.end method
