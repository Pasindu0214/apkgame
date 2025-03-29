.class public La/b/a/o/i;
.super La/b/a/o/e;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/i$b;,
        La/b/a/o/i$a;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "La/b/a/a;",
            "La/b/a/r/a<",
            "La/b/a/o/i;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public g:La/b/a/o/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/b/a/o/i;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(La/b/a/n/a;Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p1}, La/b/a/n/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".cim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, La/b/a/o/n/b;

    .line 2
    invoke-static {p1}, La/b/a/o/h;->a(La/b/a/n/a;)La/b/a/o/g;

    move-result-object v2

    .line 3
    invoke-direct {v1, p1, v2, v0, p2}, La/b/a/o/n/b;-><init>(La/b/a/n/a;La/b/a/o/g;La/b/a/o/g$c;Z)V

    :goto_0
    move-object v0, v1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p1}, La/b/a/n/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".etc1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, La/b/a/o/n/a;

    invoke-direct {v0, p1, p2}, La/b/a/o/n/a;-><init>(La/b/a/n/a;Z)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p1}, La/b/a/n/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".ktx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, La/b/a/n/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zktx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    new-instance v1, La/b/a/o/n/b;

    new-instance v2, La/b/a/o/g;

    invoke-direct {v2, p1}, La/b/a/o/g;-><init>(La/b/a/n/a;)V

    invoke-direct {v1, p1, v2, v0, p2}, La/b/a/o/n/b;-><init>(La/b/a/n/a;La/b/a/o/g;La/b/a/o/g$c;Z)V

    goto :goto_0

    .line 7
    :cond_4
    :goto_1
    new-instance v0, La/b/a/o/n/f;

    invoke-direct {v0, p1, p2}, La/b/a/o/n/f;-><init>(La/b/a/n/a;Z)V

    .line 8
    :goto_2
    invoke-direct {p0, v0}, La/b/a/o/i;-><init>(La/b/a/o/l;)V

    return-void
.end method

.method public constructor <init>(La/b/a/o/l;)V
    .locals 2

    .line 9
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    invoke-virtual {v0}, La/b/a/m/a/j;->a()I

    move-result v0

    const/16 v1, 0xde1

    .line 10
    invoke-direct {p0, v1, v0}, La/b/a/o/e;-><init>(II)V

    .line 11
    invoke-virtual {p0, p1}, La/b/a/o/i;->a(La/b/a/o/l;)V

    .line 12
    invoke-interface {p1}, La/b/a/o/l;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, La/b/a/e;->a:La/b/a/a;

    .line 13
    sget-object v0, La/b/a/o/i;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/a/r/a;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    .line 15
    :cond_0
    invoke-virtual {v0, p0}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 16
    sget-object v1, La/b/a/o/i;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 4

    const-string v0, "Managed textures/app: { "

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, La/b/a/o/i;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/a;

    .line 3
    sget-object v3, La/b/a/o/i;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/r/a;

    iget v2, v2, La/b/a/r/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(La/b/a/o/l;)V
    .locals 14

    .line 1
    iget-object v0, p0, La/b/a/o/i;->g:La/b/a/o/l;

    if-eqz v0, :cond_1

    invoke-interface {p1}, La/b/a/o/l;->d()Z

    move-result v0

    iget-object v1, p0, La/b/a/o/i;->g:La/b/a/o/l;

    invoke-interface {v1}, La/b/a/o/l;->d()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, La/b/a/r/d;

    const-string v0, "New data must have the same managed status as the old data"

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, La/b/a/o/i;->g:La/b/a/o/l;

    .line 4
    invoke-interface {p1}, La/b/a/o/l;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, La/b/a/o/l;->a()V

    .line 5
    :cond_2
    invoke-virtual {p0}, La/b/a/o/e;->a()V

    const/16 v0, 0xde1

    .line 6
    invoke-interface {p1}, La/b/a/o/l;->e()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, La/b/a/o/l;->a()V

    .line 7
    :cond_3
    invoke-interface {p1}, La/b/a/o/l;->getType()La/b/a/o/l$a;

    move-result-object v1

    .line 8
    sget-object v2, La/b/a/o/l$a;->b:La/b/a/o/l$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    .line 9
    invoke-interface {p1, v0}, La/b/a/o/l;->a(I)V

    goto/16 :goto_2

    .line 10
    :cond_4
    invoke-interface {p1}, La/b/a/o/l;->g()La/b/a/o/g;

    move-result-object v1

    .line 11
    invoke-interface {p1}, La/b/a/o/l;->f()Z

    move-result v2

    .line 12
    invoke-interface {p1}, La/b/a/o/l;->h()La/b/a/o/g$c;

    move-result-object v5

    invoke-virtual {v1}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object v6

    if-eq v5, v6, :cond_6

    .line 13
    new-instance v2, La/b/a/o/g;

    .line 14
    iget-object v5, v1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 15
    iget v6, v5, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 16
    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 17
    invoke-interface {p1}, La/b/a/o/l;->h()La/b/a/o/g$c;

    move-result-object v7

    invoke-direct {v2, v6, v5, v7}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 18
    sget-object v5, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    invoke-virtual {v2, v5}, La/b/a/o/g;->a(La/b/a/o/g$a;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 19
    iget-object v5, v1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 20
    iget v11, v5, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 21
    iget v12, v5, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    move-object v5, v2

    move-object v6, v1

    .line 22
    invoke-virtual/range {v5 .. v12}, La/b/a/o/g;->a(La/b/a/o/g;IIIIII)V

    .line 23
    invoke-interface {p1}, La/b/a/o/l;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 24
    invoke-virtual {v1}, La/b/a/o/g;->a()V

    :cond_5
    move-object v1, v2

    const/4 v2, 0x1

    .line 25
    :cond_6
    sget-object v5, La/b/a/e;->g:La/b/a/o/d;

    const/16 v6, 0xcf5

    check-cast v5, La/b/a/m/a/j;

    if-eqz v5, :cond_b

    .line 26
    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 27
    invoke-interface {p1}, La/b/a/o/l;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 28
    iget-object p1, v1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 29
    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 30
    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 31
    invoke-static {v0, v1, v5, p1}, La/b/a/o/n/g;->a(ILa/b/a/o/g;II)V

    goto :goto_1

    .line 32
    :cond_7
    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    invoke-virtual {v1}, La/b/a/o/g;->e()I

    move-result v7

    .line 33
    iget-object v0, v1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 34
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 35
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/4 v10, 0x0

    .line 36
    invoke-virtual {v1}, La/b/a/o/g;->d()I

    move-result v11

    invoke-virtual {v1}, La/b/a/o/g;->f()I

    move-result v12

    invoke-virtual {v1}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 37
    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_a

    const/4 v6, 0x0

    const/16 v5, 0xde1

    .line 38
    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_1
    if-eqz v2, :cond_8

    .line 39
    invoke-virtual {v1}, La/b/a/o/g;->a()V

    .line 40
    :cond_8
    :goto_2
    iget-object p1, p0, La/b/a/o/e;->c:La/b/a/o/i$a;

    iget-object v0, p0, La/b/a/o/e;->d:La/b/a/o/i$a;

    invoke-virtual {p0, p1, v0, v4}, La/b/a/o/e;->a(La/b/a/o/i$a;La/b/a/o/i$a;Z)V

    .line 41
    iget-object p1, p0, La/b/a/o/e;->e:La/b/a/o/i$b;

    iget-object v0, p0, La/b/a/o/e;->f:La/b/a/o/i$b;

    invoke-virtual {p0, p1, v0, v4}, La/b/a/o/e;->a(La/b/a/o/i$b;La/b/a/o/i$b;Z)V

    .line 42
    sget-object p1, La/b/a/e;->g:La/b/a/o/d;

    iget v0, p0, La/b/a/o/e;->a:I

    const/4 v1, 0x0

    check-cast p1, La/b/a/m/a/j;

    if-eqz p1, :cond_9

    .line 43
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    :cond_9
    throw v3

    .line 44
    :cond_a
    throw v3

    .line 45
    :cond_b
    throw v3
.end method

.method public b()V
    .locals 4

    .line 1
    iget v0, p0, La/b/a/o/e;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget-object v2, La/b/a/e;->g:La/b/a/o/d;

    check-cast v2, La/b/a/m/a/j;

    .line 3
    iget-object v2, v2, La/b/a/m/a/j;->a:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 4
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 5
    iput v3, p0, La/b/a/o/e;->b:I

    .line 6
    :cond_1
    iget-object v0, p0, La/b/a/o/i;->g:La/b/a/o/l;

    invoke-interface {v0}, La/b/a/o/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, La/b/a/o/i;->h:Ljava/util/Map;

    sget-object v2, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, La/b/a/o/i;->h:Ljava/util/Map;

    sget-object v2, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/a/r/a;

    invoke-virtual {v0, p0, v1}, La/b/a/r/a;->a(Ljava/lang/Object;Z)Z

    :cond_2
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/i;->g:La/b/a/o/l;

    invoke-interface {v0}, La/b/a/o/l;->c()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/i;->g:La/b/a/o/l;

    invoke-interface {v0}, La/b/a/o/l;->b()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/o/i;->g:La/b/a/o/l;

    invoke-interface {v0}, La/b/a/o/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    check-cast v0, La/b/a/m/a/j;

    invoke-virtual {v0}, La/b/a/m/a/j;->a()I

    move-result v0

    iput v0, p0, La/b/a/o/e;->b:I

    .line 3
    iget-object v0, p0, La/b/a/o/i;->g:La/b/a/o/l;

    invoke-virtual {p0, v0}, La/b/a/o/i;->a(La/b/a/o/l;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Tried to reload unmanaged Texture"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/o/i;->g:La/b/a/o/l;

    instance-of v1, v0, La/b/a/o/n/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
