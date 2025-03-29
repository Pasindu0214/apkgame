.class public La/b/a/o/g;
.super Ljava/lang/Object;
.source "Pixmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/g$b;,
        La/b/a/o/g$a;,
        La/b/a/o/g$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(IILa/b/a/o/g$c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, La/b/a/o/g$a;->b:La/b/a/o/g$a;

    .line 3
    sget-object v0, La/b/a/o/g$b;->b:La/b/a/o/g$b;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, La/b/a/o/g;->b:I

    .line 5
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 6
    sget-object v1, La/b/a/o/g$c;->a:La/b/a/o/g$c;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, La/b/a/o/g$c;->b:La/b/a/o/g$c;

    if-ne p3, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, La/b/a/o/g$c;->c:La/b/a/o/g$c;

    if-ne p3, v1, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, La/b/a/o/g$c;->d:La/b/a/o/g$c;

    if-ne p3, v1, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    .line 10
    :cond_3
    sget-object v1, La/b/a/o/g$c;->e:La/b/a/o/g$c;

    if-ne p3, v1, :cond_4

    const/4 v2, 0x6

    goto :goto_0

    .line 11
    :cond_4
    sget-object v1, La/b/a/o/g$c;->f:La/b/a/o/g$c;

    if-ne p3, v1, :cond_5

    const/4 v2, 0x3

    goto :goto_0

    .line 12
    :cond_5
    sget-object v1, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    if-ne p3, v1, :cond_6

    const/4 v2, 0x4

    .line 13
    :goto_0
    invoke-direct {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(III)V

    iput-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    const/4 p1, 0x0

    .line 14
    invoke-static {p1, p1, p1, p1}, La/b/a/o/a;->a(FFFF)I

    move-result p1

    iput p1, p0, La/b/a/o/g;->b:I

    .line 15
    invoke-virtual {p0}, La/b/a/o/g;->b()V

    return-void

    .line 16
    :cond_6
    new-instance p1, La/b/a/r/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(La/b/a/n/a;)V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, La/b/a/o/g$a;->b:La/b/a/o/g$a;

    .line 19
    sget-object v0, La/b/a/o/g$b;->b:La/b/a/o/g$b;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, La/b/a/o/g;->b:I

    .line 21
    :try_start_0
    invoke-virtual {p1}, La/b/a/n/a;->j()[B

    move-result-object v1

    .line 22
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    array-length v3, v1

    invoke-direct {v2, v1, v0, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    iput-object v2, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 23
    new-instance v1, La/b/a/r/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(II)I
    .locals 2

    .line 6
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 7
    iget-wide v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixel(JII)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    .line 12
    iget-boolean v0, p0, La/b/a/o/g;->c:Z

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 14
    iget-wide v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->free(J)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, La/b/a/o/g;->c:Z

    return-void

    .line 16
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Pixmap already disposed!"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(La/b/a/o/g$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    sget-object v1, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    iget-wide v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setBlend(JI)V

    return-void
.end method

.method public a(La/b/a/o/g;II)V
    .locals 8

    .line 8
    iget-object v1, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 9
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 10
    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 11
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V

    return-void
.end method

.method public a(La/b/a/o/g;IIIIII)V
    .locals 8

    .line 3
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget-object v1, p1, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V

    return-void
.end method

.method public a(La/b/a/o/g;IIIIIIII)V
    .locals 15

    move-object v0, p0

    .line 4
    iget-object v1, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move-object/from16 v2, p1

    iget-object v2, v2, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    if-eqz v1, :cond_0

    .line 5
    iget-wide v3, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    iget-wide v5, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-static/range {v3 .. v14}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(JJIIIIIIII)V

    return-void

    :cond_0
    const/4 v1, 0x0

    throw v1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, La/b/a/o/g;->b:I

    .line 2
    iget-wide v2, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v2, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->clear(JI)V

    return-void
.end method

.method public c()La/b/a/o/g$c;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 2
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    .line 3
    invoke-static {v0}, La/b/a/o/g$c;->a(I)La/b/a/o/g$c;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 2
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 2
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v1, La/b/a/r/d;

    const-string v2, "unknown format: "

    invoke-static {v2, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const v0, 0x8033

    goto :goto_0

    :pswitch_1
    const v0, 0x8363

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1401

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/o/g;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 3
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->e:Ljava/nio/ByteBuffer;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Pixmap already disposed"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
