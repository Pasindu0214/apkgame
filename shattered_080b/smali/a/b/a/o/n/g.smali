.class public La/b/a/o/n/g;
.super Ljava/lang/Object;
.source "MipMapGenerator.java"


# direct methods
.method public static a(ILa/b/a/o/g;II)V
    .locals 12

    .line 1
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v0}, La/b/a/a;->getType()La/b/a/a$a;

    move-result-object v0

    sget-object v1, La/b/a/a$a;->a:La/b/a/a$a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v0}, La/b/a/a;->getType()La/b/a/a$a;

    move-result-object v0

    sget-object v1, La/b/a/a$a;->e:La/b/a/a$a;

    if-eq v0, v1, :cond_5

    sget-object v0, La/b/a/e;->a:La/b/a/a;

    .line 2
    invoke-interface {v0}, La/b/a/a;->getType()La/b/a/a$a;

    move-result-object v0

    sget-object v1, La/b/a/a$a;->f:La/b/a/a$a;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, La/b/a/e;->b:La/b/a/f;

    check-cast v0, La/b/a/m/a/l;

    const-string v1, "GL_ARB_framebuffer_object"

    invoke-virtual {v0, v1}, La/b/a/m/a/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, La/b/a/e;->b:La/b/a/f;

    .line 4
    check-cast v0, La/b/a/m/a/l;

    const-string v1, "GL_EXT_framebuffer_object"

    invoke-virtual {v0, v1}, La/b/a/m/a/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, La/b/a/e;->i:La/b/a/m/a/k;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, p1, p2, p3}, La/b/a/o/n/g;->b(ILa/b/a/o/g;II)V

    goto :goto_2

    .line 6
    :cond_2
    :goto_0
    sget-object p2, La/b/a/e;->g:La/b/a/o/d;

    const/4 v4, 0x0

    invoke-virtual {p1}, La/b/a/o/g;->e()I

    move-result v5

    .line 7
    iget-object p3, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 8
    iget v6, p3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 9
    iget v7, p3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/4 v8, 0x0

    .line 10
    invoke-virtual {p1}, La/b/a/o/g;->d()I

    move-result v9

    invoke-virtual {p1}, La/b/a/o/g;->f()I

    move-result v10

    invoke-virtual {p1}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 11
    check-cast p2, La/b/a/m/a/j;

    if-eqz p2, :cond_4

    move v3, p0

    .line 12
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 13
    sget-object p1, La/b/a/e;->h:La/b/a/o/d;

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_3

    .line 14
    invoke-static {p0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    goto :goto_2

    :cond_3
    throw v2

    .line 15
    :cond_4
    throw v2

    .line 16
    :cond_5
    :goto_1
    sget-object p2, La/b/a/e;->g:La/b/a/o/d;

    invoke-virtual {p1}, La/b/a/o/g;->e()I

    move-result v5

    .line 17
    iget-object p3, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 18
    iget v6, p3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 19
    iget v7, p3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/4 v8, 0x0

    .line 20
    invoke-virtual {p1}, La/b/a/o/g;->d()I

    move-result v9

    invoke-virtual {p1}, La/b/a/o/g;->f()I

    move-result v10

    invoke-virtual {p1}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 21
    check-cast p2, La/b/a/m/a/j;

    if-eqz p2, :cond_7

    const/4 v4, 0x0

    move v3, p0

    .line 22
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 23
    sget-object p1, La/b/a/e;->h:La/b/a/o/d;

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_6

    .line 24
    invoke-static {p0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    :goto_2
    return-void

    :cond_6
    throw v2

    .line 25
    :cond_7
    throw v2
.end method

.method public static b(ILa/b/a/o/g;II)V
    .locals 22

    move-object/from16 v0, p1

    .line 1
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    invoke-virtual/range {p1 .. p1}, La/b/a/o/g;->e()I

    move-result v4

    .line 2
    iget-object v2, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 3
    iget v5, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 4
    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/4 v7, 0x0

    .line 5
    invoke-virtual/range {p1 .. p1}, La/b/a/o/g;->d()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, La/b/a/o/g;->f()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 6
    check-cast v1, La/b/a/m/a/j;

    const/4 v11, 0x0

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    move/from16 v2, p0

    .line 7
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 8
    sget-object v1, La/b/a/e;->h:La/b/a/o/d;

    if-nez v1, :cond_1

    move/from16 v1, p2

    move/from16 v2, p3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "texture width and height must be square when using mipmapping."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    :goto_0
    iget-object v1, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 11
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 12
    div-int/lit8 v2, v2, 0x2

    .line 13
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 14
    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    if-lez v2, :cond_4

    if-lez v1, :cond_4

    .line 15
    new-instance v5, La/b/a/o/g;

    invoke-virtual {v0}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object v6

    invoke-direct {v5, v2, v1, v6}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 16
    sget-object v6, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    invoke-virtual {v5, v6}, La/b/a/o/g;->a(La/b/a/o/g$a;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 17
    iget-object v6, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 18
    iget v7, v6, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 19
    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v5

    move-object v13, v0

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v20, v2

    move/from16 v21, v1

    .line 20
    invoke-virtual/range {v12 .. v21}, La/b/a/o/g;->a(La/b/a/o/g;IIIIIIII)V

    if-le v4, v3, :cond_2

    .line 21
    invoke-virtual {v0}, La/b/a/o/g;->a()V

    .line 22
    :cond_2
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    invoke-virtual {v5}, La/b/a/o/g;->e()I

    move-result v14

    .line 23
    iget-object v1, v5, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 24
    iget v15, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 25
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/16 v17, 0x0

    .line 26
    invoke-virtual {v5}, La/b/a/o/g;->d()I

    move-result v18

    invoke-virtual {v5}, La/b/a/o/g;->f()I

    move-result v19

    invoke-virtual {v5}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 27
    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_3

    move/from16 v12, p0

    move v13, v4

    move/from16 v16, v1

    .line 28
    invoke-static/range {v12 .. v20}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 29
    iget-object v0, v5, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 30
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 31
    div-int/lit8 v2, v1, 0x2

    .line 32
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 33
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    move-object v0, v5

    goto :goto_1

    .line 34
    :cond_3
    throw v11

    :cond_4
    return-void

    .line 35
    :cond_5
    goto :goto_3

    :goto_2
    throw v11

    :goto_3
    goto :goto_2
.end method
