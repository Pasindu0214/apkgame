.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bitmap"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;-><init>(J)V

    return-void
.end method

.method public static native getBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method public static native getPitch(J)I
.end method

.method public static native getPixelMode(J)I
.end method

.method public static native getRows(J)I
.end method

.method public static native getWidth(J)I
.end method


# virtual methods
.method public a(La/b/a/o/g$c;La/b/a/o/a;F)La/b/a/o/g;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-wide v4, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth(J)I

    move-result v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->b()I

    move-result v5

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->a()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 4
    iget-wide v7, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixelMode(J)I

    move-result v7

    .line 5
    iget-wide v8, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch(J)I

    move-result v8

    .line 6
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 7
    sget-object v9, La/b/a/o/a;->e:La/b/a/o/a;

    if-ne v2, v9, :cond_0

    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    if-ne v8, v4, :cond_0

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v3, v9

    if-nez v9, :cond_0

    .line 8
    new-instance v2, La/b/a/o/g;

    sget-object v3, La/b/a/o/g$c;->a:La/b/a/o/g$c;

    invoke-direct {v2, v4, v5, v3}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 9
    invoke-virtual {v2}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v6, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    goto/16 :goto_8

    .line 10
    :cond_0
    new-instance v9, La/b/a/o/g;

    sget-object v11, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    invoke-direct {v9, v4, v5, v11}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 11
    iget v11, v2, La/b/a/o/a;->a:F

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v11, v11, v12

    float-to-int v11, v11

    shl-int/lit8 v11, v11, 0x18

    iget v13, v2, La/b/a/o/a;->b:F

    mul-float v13, v13, v12

    float-to-int v13, v13

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v11, v13

    iget v13, v2, La/b/a/o/a;->c:F

    mul-float v13, v13, v12

    float-to-int v13, v13

    const/16 v14, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v11, v13

    iget v2, v2, La/b/a/o/a;->d:F

    mul-float v2, v2, v12

    float-to-int v2, v2

    or-int/2addr v2, v11

    .line 12
    new-array v8, v8, [B

    .line 13
    new-array v11, v4, [I

    .line 14
    invoke-virtual {v9}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    const/4 v15, 0x1

    if-ne v7, v15, :cond_4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_8

    .line 15
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v7, v4, :cond_3

    .line 16
    aget-byte v16, v8, v12

    sub-int v10, v4, v7

    .line 17
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v10, :cond_2

    rsub-int/lit8 v19, v14, 0x7

    shl-int v19, v15, v19

    and-int v19, v16, v19

    if-eqz v19, :cond_1

    add-int v19, v7, v14

    .line 18
    aput v2, v11, v19

    goto :goto_3

    :cond_1
    add-int v19, v7, v14

    const/16 v17, 0x0

    .line 19
    aput v17, v11, v19

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x8

    const/16 v14, 0x8

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v13, v11}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    const/16 v14, 0x8

    goto :goto_0

    :cond_4
    and-int/lit16 v7, v2, -0x100

    const/16 v10, 0xff

    and-int/2addr v2, v10

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v5, :cond_8

    .line 21
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v4, :cond_7

    .line 22
    aget-byte v12, v8, v15

    and-int/2addr v12, v10

    if-nez v12, :cond_5

    .line 23
    aput v7, v11, v15

    goto :goto_6

    :cond_5
    if-ne v12, v10, :cond_6

    or-int v12, v7, v2

    .line 24
    aput v12, v11, v15

    :goto_6
    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object v12, v9

    const/high16 v16, 0x437f0000    # 255.0f

    goto :goto_7

    :cond_6
    int-to-float v10, v2

    int-to-float v12, v12

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v12, v12, v16

    move/from16 v18, v4

    move/from16 v19, v5

    float-to-double v4, v12

    move-object/from16 v20, v8

    move-object v12, v9

    float-to-double v8, v3

    .line 25
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v10, v10, v4

    float-to-int v4, v10

    or-int/2addr v4, v7

    aput v4, v11, v15

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object v9, v12

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v8, v20

    const/16 v10, 0xff

    const/high16 v12, 0x437f0000    # 255.0f

    goto :goto_5

    :cond_7
    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object v12, v9

    const/high16 v16, 0x437f0000    # 255.0f

    .line 26
    invoke-virtual {v13, v11}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0xff

    const/high16 v12, 0x437f0000    # 255.0f

    goto :goto_4

    :cond_8
    move-object v12, v9

    move-object v2, v12

    .line 27
    :goto_8
    invoke-virtual {v2}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object v3

    if-eq v1, v3, :cond_9

    .line 28
    new-instance v3, La/b/a/o/g;

    .line 29
    iget-object v4, v2, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 30
    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 31
    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 32
    invoke-direct {v3, v5, v4, v1}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 33
    sget-object v1, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    invoke-virtual {v3, v1}, La/b/a/o/g;->a(La/b/a/o/g$a;)V

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v3, v2, v1, v1}, La/b/a/o/g;->a(La/b/a/o/g;II)V

    .line 35
    sget-object v1, La/b/a/o/g$a;->b:La/b/a/o/g$a;

    invoke-virtual {v3, v1}, La/b/a/o/g;->a(La/b/a/o/g$a;)V

    .line 36
    invoke-virtual {v2}, La/b/a/o/g;->a()V

    move-object v2, v3

    :cond_9
    return-object v2
.end method

.method public a()Ljava/nio/ByteBuffer;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows(J)I

    move-result v0

    return v0
.end method
