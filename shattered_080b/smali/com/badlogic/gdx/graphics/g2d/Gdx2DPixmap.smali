.class public Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
.super Ljava/lang/Object;
.source "Gdx2DPixmap.java"


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/nio/ByteBuffer;

.field public f:[J


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 26
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->f:[J

    .line 27
    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->newPixmap([JIII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->e:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->f:[J

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    iput-wide p2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    const/4 p2, 0x1

    .line 29
    aget-wide p2, p1, p2

    long-to-int p3, p2

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    const/4 p2, 0x2

    .line 30
    aget-wide p2, p1, p2

    long-to-int p3, p2

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/4 p2, 0x3

    .line 31
    aget-wide p2, p1, p2

    long-to-int p1, p2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    return-void

    .line 32
    :cond_0
    new-instance p1, La/b/a/r/d;

    const-string p2, "Error loading pixmap."

    invoke-direct {p1, p2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BIII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [J

    .line 2
    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->f:[J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 3
    invoke-static {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->load([J[BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->e:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->f:[J

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    iput-wide v5, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    const/4 v5, 0x1

    .line 5
    aget-wide v6, v3, v5

    long-to-int v7, v6

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    const/4 v6, 0x2

    .line 6
    aget-wide v8, v3, v6

    long-to-int v9, v8

    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/4 v8, 0x3

    .line 7
    aget-wide v10, v3, v8

    long-to-int v3, v10

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_1

    new-array v2, v2, [J

    .line 8
    invoke-static {v2, v7, v9, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->newPixmap([JIII)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    aget-wide v14, v2, v4

    .line 10
    aget-wide v9, v2, v5

    long-to-int v3, v9

    .line 11
    aget-wide v5, v2, v6

    long-to-int v6, v5

    .line 12
    aget-wide v7, v2, v8

    long-to-int v5, v7

    .line 13
    invoke-static {v14, v15, v4}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setBlend(JI)V

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 14
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 15
    iget-wide v9, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move-wide v11, v14

    move-object/from16 p2, v1

    move-object/from16 p1, v2

    move-wide v1, v14

    move v14, v4

    move v15, v7

    move/from16 v16, v8

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-static/range {v9 .. v20}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(JJIIIIIIII)V

    .line 16
    iget-wide v7, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->free(J)V

    .line 17
    iput-wide v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    .line 18
    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    .line 19
    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    move-object/from16 v1, p1

    .line 20
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->f:[J

    move-object/from16 v1, p2

    .line 21
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->e:Ljava/nio/ByteBuffer;

    .line 22
    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, La/b/a/r/d;

    const-string v2, "Error loading pixmap."

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 24
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error loading pixmap: "

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFailureReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static native clear(JI)V
.end method

.method public static native drawPixmap(JJIIIIIIII)V
.end method

.method public static native fillCircle(JIIII)V
.end method

.method public static native free(J)V
.end method

.method public static native getFailureReason()Ljava/lang/String;
.end method

.method public static native getPixel(JII)I
.end method

.method public static native load([J[BII)Ljava/nio/ByteBuffer;
.end method

.method public static native newPixmap([JIII)Ljava/nio/ByteBuffer;
.end method

.method public static native setBlend(JI)V
.end method

.method public static native setPixel(JIII)V
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v1, La/b/a/r/d;

    const-string v2, "unknown format: "

    invoke-static {v2, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v0, 0x1908

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x1907

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x190a

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1906

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V
    .locals 13

    move-object v0, p1

    .line 1
    iget-wide v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move-object v12, p0

    iget-wide v2, v12, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(JJIIIIIIII)V

    return-void
.end method
