.class public La/b/a/o/m/i/a;
.super Ljava/lang/Object;
.source "FreeTypeFontGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/m/i/a$b;,
        La/b/a/o/m/i/a$c;,
        La/b/a/o/m/i/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

.field public final b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

.field public final c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(La/b/a/n/a;I)V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, La/b/a/o/m/i/a;->d:Z

    .line 3
    invoke-virtual/range {p1 .. p1}, La/b/a/n/a;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, La/b/a/o/m/i/a;->c:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    move-result-object v2

    iput-object v2, v1, La/b/a/o/m/i/a;->a:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    .line 5
    :try_start_0
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
    :try_end_0
    .catch La/b/a/r/d; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-virtual {v5, v4}, La/b/a/n/a;->a(Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_1
    .catch La/b/a/r/d; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-object/from16 v5, p1

    :goto_0
    if-nez v3, :cond_4

    .line 6
    invoke-virtual/range {p1 .. p1}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object v3

    .line 7
    :try_start_2
    invoke-virtual/range {p1 .. p1}, La/b/a/n/a;->d()J

    move-result-wide v4

    long-to-int v5, v4

    if-nez v5, :cond_0

    const/16 v4, 0x4000

    .line 8
    invoke-static {v3, v4}, La/b/a/r/q;->a(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 9
    array-length v5, v4

    invoke-static {v5}, Lcom/badlogic/gdx/utils/BufferUtils;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 10
    array-length v6, v4

    .line 11
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v7

    invoke-static {v5, v6}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v5, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    invoke-static {v5}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;)I

    move-result v7

    invoke-static {v4, v0, v5, v7, v6}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([BILjava/nio/Buffer;II)V

    move-object v4, v5

    goto :goto_2

    .line 13
    :cond_0
    invoke-static {v5}, Lcom/badlogic/gdx/utils/BufferUtils;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 14
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v7, 0x0

    .line 15
    :goto_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 16
    invoke-static {v5, v0, v4, v8}, Lcom/badlogic/gdx/utils/BufferUtils;->a([BILjava/nio/Buffer;I)V

    add-int/2addr v7, v8

    add-int v8, v6, v7

    .line 17
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v3, :cond_2

    .line 19
    :try_start_3
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_2
    move-object v7, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 20
    :try_start_4
    new-instance v2, La/b/a/r/d;

    invoke-direct {v2, v0}, La/b/a/r/d;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-eqz v3, :cond_3

    .line 21
    :try_start_5
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 22
    :catchall_2
    :cond_3
    throw v0

    :cond_4
    move-object v7, v3

    .line 23
    :goto_4
    iget-wide v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move/from16 v5, p2

    invoke-static {v3, v4, v7, v0, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(JLjava/nio/ByteBuffer;II)J

    move-result-wide v14

    const-wide/16 v3, 0x0

    cmp-long v0, v14, v3

    if-nez v0, :cond_6

    .line 24
    invoke-static {v7}, Lcom/badlogic/gdx/utils/BufferUtils;->b(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-static {v7}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/ByteBuffer;)V

    .line 26
    :cond_5
    new-instance v0, La/b/a/r/d;

    const-string v2, "Couldn\'t load font, FreeType error code: "

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_6
    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->b:La/b/a/r/i;

    const/4 v5, 0x1

    cmp-long v6, v14, v3

    if-nez v6, :cond_7

    .line 28
    iget-object v3, v0, La/b/a/r/i;->f:Ljava/lang/Object;

    .line 29
    iput-object v7, v0, La/b/a/r/i;->f:Ljava/lang/Object;

    .line 30
    iget-boolean v3, v0, La/b/a/r/i;->g:Z

    if-nez v3, :cond_f

    .line 31
    iput-boolean v5, v0, La/b/a/r/i;->g:Z

    .line 32
    iget v3, v0, La/b/a/r/i;->a:I

    add-int/2addr v3, v5

    iput v3, v0, La/b/a/r/i;->a:I

    goto/16 :goto_6

    .line 33
    :cond_7
    iget-object v6, v0, La/b/a/r/i;->b:[J

    .line 34
    iget v8, v0, La/b/a/r/i;->j:I

    int-to-long v8, v8

    and-long/2addr v8, v14

    long-to-int v8, v8

    .line 35
    aget-wide v9, v6, v8

    cmp-long v11, v9, v14

    if-nez v11, :cond_8

    .line 36
    iget-object v0, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v3, v0, v8

    .line 37
    aput-object v7, v0, v8

    goto/16 :goto_6

    .line 38
    :cond_8
    invoke-virtual {v0, v14, v15}, La/b/a/r/i;->b(J)I

    move-result v11

    .line 39
    aget-wide v12, v6, v11

    cmp-long v16, v12, v14

    if-nez v16, :cond_9

    .line 40
    iget-object v0, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v3, v0, v11

    .line 41
    aput-object v7, v0, v11

    goto/16 :goto_6

    .line 42
    :cond_9
    invoke-virtual {v0, v14, v15}, La/b/a/r/i;->c(J)I

    move-result v16

    .line 43
    aget-wide v17, v6, v16

    cmp-long v19, v17, v14

    if-nez v19, :cond_a

    .line 44
    iget-object v0, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v3, v0, v16

    .line 45
    aput-object v7, v0, v16

    goto/16 :goto_6

    .line 46
    :cond_a
    iget v5, v0, La/b/a/r/i;->d:I

    iget v3, v0, La/b/a/r/i;->e:I

    add-int/2addr v3, v5

    :goto_5
    if-ge v5, v3, :cond_c

    .line 47
    aget-wide v20, v6, v5

    cmp-long v4, v20, v14

    if-nez v4, :cond_b

    .line 48
    iget-object v0, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v3, v0, v5

    .line 49
    aput-object v7, v0, v5

    goto :goto_6

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    const-wide/16 v4, 0x0

    cmp-long v3, v9, v4

    if-nez v3, :cond_d

    .line 50
    aput-wide v14, v6, v8

    .line 51
    iget-object v3, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aput-object v7, v3, v8

    .line 52
    iget v3, v0, La/b/a/r/i;->a:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, La/b/a/r/i;->a:I

    iget v4, v0, La/b/a/r/i;->k:I

    if-lt v3, v4, :cond_f

    iget v3, v0, La/b/a/r/i;->d:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-virtual {v0, v3}, La/b/a/r/i;->b(I)V

    goto :goto_6

    :cond_d
    const-wide/16 v3, 0x0

    cmp-long v5, v12, v3

    if-nez v5, :cond_e

    .line 53
    aput-wide v14, v6, v11

    .line 54
    iget-object v3, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aput-object v7, v3, v11

    .line 55
    iget v3, v0, La/b/a/r/i;->a:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, La/b/a/r/i;->a:I

    iget v4, v0, La/b/a/r/i;->k:I

    if-lt v3, v4, :cond_f

    iget v3, v0, La/b/a/r/i;->d:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-virtual {v0, v3}, La/b/a/r/i;->b(I)V

    goto :goto_6

    :cond_e
    const-wide/16 v3, 0x0

    cmp-long v5, v17, v3

    if-nez v5, :cond_10

    .line 56
    aput-wide v14, v6, v16

    .line 57
    iget-object v3, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aput-object v7, v3, v16

    .line 58
    iget v3, v0, La/b/a/r/i;->a:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, La/b/a/r/i;->a:I

    iget v4, v0, La/b/a/r/i;->k:I

    if-lt v3, v4, :cond_f

    iget v3, v0, La/b/a/r/i;->d:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-virtual {v0, v3}, La/b/a/r/i;->b(I)V

    :cond_f
    :goto_6
    move-wide v0, v14

    goto :goto_7

    :cond_10
    move-object v4, v0

    move-wide v5, v14

    move-wide v0, v14

    move/from16 v14, v16

    move-wide/from16 v15, v17

    .line 59
    invoke-virtual/range {v4 .. v16}, La/b/a/r/i;->a(JLjava/lang/Object;IJIJIJ)V

    .line 60
    :goto_7
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-direct {v3, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;-><init>(JLcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;)V

    move-object/from16 v1, p0

    .line 61
    iput-object v3, v1, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 62
    iget-wide v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getFaceFlags(J)I

    move-result v0

    .line 63
    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a:I

    and-int v3, v0, v2

    if-ne v3, v2, :cond_11

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->b:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_11

    const/16 v0, 0x20

    .line 64
    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->c:I

    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->e:I

    or-int/2addr v2, v3

    .line 65
    iget-object v3, v1, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 66
    iget-wide v3, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v3, v4, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->loadChar(JII)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 67
    iget-object v0, v1, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    .line 68
    iget-wide v2, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getFormat(J)I

    move-result v0

    const v2, 0x62697473

    if-ne v0, v2, :cond_11

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, v1, La/b/a/o/m/i/a;->d:Z

    .line 70
    :cond_11
    iget-boolean v0, v1, La/b/a/o/m/i/a;->d:Z

    if-eqz v0, :cond_12

    return-void

    :cond_12
    const/16 v0, 0xf

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v1, v2, v0}, La/b/a/o/m/i/a;->b(II)V

    return-void

    .line 72
    :cond_13
    goto :goto_9

    :goto_8
    throw v3

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public a(CLa/b/a/o/m/i/a$a;La/b/a/o/m/i/a$b;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLa/b/a/o/m/e;)La/b/a/o/m/b$b;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p6

    .line 131
    iget-object v5, v0, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 132
    iget-wide v5, v5, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v5, v6, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(JI)I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_1

    return-object v7

    .line 133
    :cond_1
    invoke-virtual {v0, v2}, La/b/a/o/m/i/a;->b(La/b/a/o/m/i/a$b;)I

    move-result v5

    .line 134
    iget-object v8, v0, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 135
    iget-wide v8, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v8, v9, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->loadChar(JII)Z

    move-result v5

    if-nez v5, :cond_2

    return-object v7

    .line 136
    :cond_2
    iget-object v5, v0, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    move-result-object v8

    .line 138
    :try_start_0
    iget-boolean v9, v2, La/b/a/o/m/i/a$b;->b:Z

    if-eqz v9, :cond_3

    sget v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->j:I

    goto :goto_1

    :cond_3
    sget v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->i:I

    :goto_1
    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->a(I)V
    :try_end_0
    .catch La/b/a/r/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v7

    .line 140
    sget-object v9, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    iget-object v10, v2, La/b/a/o/m/i/a$b;->d:La/b/a/o/a;

    iget v11, v2, La/b/a/o/m/i/a$b;->e:F

    invoke-virtual {v7, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->a(La/b/a/o/g$c;La/b/a/o/a;F)La/b/a/o/g;

    move-result-object v9

    .line 141
    iget-wide v10, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v10, v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth(J)I

    move-result v10

    if-eqz v10, :cond_11

    .line 142
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->b()I

    move-result v10

    if-eqz v10, :cond_11

    .line 143
    iget v10, v2, La/b/a/o/m/i/a$b;->g:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    .line 144
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->c()I

    move-result v10

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->b()I

    move-result v11

    .line 145
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    move-result-object v12

    .line 146
    iget-wide v13, v12, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    move-object/from16 v15, p4

    iget-wide v3, v15, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v13, v14, v3, v4, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->strokeBorder(JJZ)J

    move-result-wide v3

    iput-wide v3, v12, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    .line 147
    iget-boolean v3, v2, La/b/a/o/m/i/a$b;->b:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->j:I

    goto :goto_2

    :cond_4
    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->i:I

    :goto_2
    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->a(I)V

    .line 148
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->b()I

    move-result v3

    sub-int/2addr v11, v3

    .line 149
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->c()I

    move-result v3

    sub-int/2addr v10, v3

    neg-int v3, v10

    .line 150
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v4

    .line 151
    sget-object v10, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    iget-object v13, v2, La/b/a/o/m/i/a$b;->h:La/b/a/o/a;

    iget v14, v2, La/b/a/o/m/i/a$b;->j:F

    invoke-virtual {v4, v10, v13, v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->a(La/b/a/o/g$c;La/b/a/o/a;F)La/b/a/o/g;

    move-result-object v4

    .line 152
    iget v10, v2, La/b/a/o/m/i/a$b;->f:I

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v10, :cond_5

    .line 153
    invoke-virtual {v4, v9, v11, v3}, La/b/a/o/g;->a(La/b/a/o/g;II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 154
    :cond_5
    invoke-virtual {v9}, La/b/a/o/g;->a()V

    .line 155
    iget-wide v8, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->done(J)V

    move-object v9, v4

    move-object v8, v12

    .line 156
    :cond_6
    iget v3, v2, La/b/a/o/m/i/a$b;->k:I

    if-nez v3, :cond_9

    iget v3, v2, La/b/a/o/m/i/a$b;->l:I

    if-eqz v3, :cond_7

    goto :goto_5

    .line 157
    :cond_7
    iget v3, v2, La/b/a/o/m/i/a$b;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    .line 158
    iget v3, v2, La/b/a/o/m/i/a$b;->f:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_8

    .line 159
    invoke-virtual {v9, v9, v6, v6}, La/b/a/o/g;->a(La/b/a/o/g;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v16, v7

    move-object/from16 p4, v8

    goto/16 :goto_a

    .line 160
    :cond_9
    :goto_5
    iget-object v3, v9, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 161
    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 162
    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 163
    iget v10, v2, La/b/a/o/m/i/a$b;->k:I

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v2, La/b/a/o/m/i/a$b;->l:I

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 164
    iget v11, v2, La/b/a/o/m/i/a$b;->k:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v11, v4

    iget v12, v2, La/b/a/o/m/i/a$b;->l:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v12, v3

    .line 165
    new-instance v13, La/b/a/o/g;

    invoke-virtual {v9}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object v14

    invoke-direct {v13, v11, v12, v14}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 166
    iget-object v12, v2, La/b/a/o/m/i/a$b;->m:La/b/a/o/a;

    .line 167
    iget v14, v12, La/b/a/o/a;->d:F

    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-eqz v15, :cond_c

    .line 168
    iget v15, v12, La/b/a/o/a;->a:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    int-to-byte v15, v15

    move-object/from16 p4, v8

    iget v8, v12, La/b/a/o/a;->b:F

    mul-float v8, v8, v16

    float-to-int v8, v8

    int-to-byte v8, v8

    iget v12, v12, La/b/a/o/a;->c:F

    mul-float v12, v12, v16

    float-to-int v12, v12

    int-to-byte v12, v12

    move-object/from16 v16, v7

    .line 169
    invoke-virtual {v9}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 170
    invoke-virtual {v13}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v17, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_d

    invoke-static {v1, v6, v11, v10}, La/a/a/a/a;->a(IIII)I

    move-result v17

    const/16 v18, 0x0

    move/from16 v19, v3

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_b

    mul-int v18, v4, v1

    add-int v18, v18, v3

    mul-int/lit8 v18, v18, 0x4

    move/from16 v20, v4

    add-int/lit8 v4, v18, 0x3

    .line 171
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_a

    move/from16 v21, v6

    move-object/from16 v18, v7

    goto :goto_8

    :cond_a
    add-int v18, v17, v3

    move/from16 v21, v6

    mul-int/lit8 v6, v18, 0x4

    .line 172
    invoke-virtual {v0, v6, v15}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-object/from16 v18, v7

    add-int/lit8 v7, v6, 0x1

    .line 173
    invoke-virtual {v0, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v6, 0x2

    .line 174
    invoke-virtual {v0, v7, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x3

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float v4, v4, v14

    float-to-int v4, v4

    int-to-byte v4, v4

    .line 175
    invoke-virtual {v0, v6, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v18

    move/from16 v4, v20

    move/from16 v6, v21

    goto :goto_7

    :cond_b
    move/from16 v20, v4

    move/from16 v21, v6

    move-object/from16 v18, v7

    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v19

    goto :goto_6

    :cond_c
    move-object/from16 v16, v7

    move-object/from16 p4, v8

    .line 176
    :cond_d
    iget v0, v2, La/b/a/o/m/i/a$b;->f:I

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_e

    .line 177
    iget v3, v2, La/b/a/o/m/i/a$b;->k:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, v2, La/b/a/o/m/i/a$b;->l:I

    neg-int v6, v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v13, v9, v3, v4}, La/b/a/o/g;->a(La/b/a/o/g;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 178
    :cond_e
    invoke-virtual {v9}, La/b/a/o/g;->a()V

    move-object v9, v13

    .line 179
    :goto_a
    iget v0, v2, La/b/a/o/m/i/a$b;->p:I

    if-gtz v0, :cond_10

    iget v0, v2, La/b/a/o/m/i/a$b;->q:I

    if-gtz v0, :cond_10

    iget v0, v2, La/b/a/o/m/i/a$b;->r:I

    if-gtz v0, :cond_10

    iget v0, v2, La/b/a/o/m/i/a$b;->s:I

    if-lez v0, :cond_f

    goto :goto_b

    :cond_f
    move-object/from16 v8, p4

    goto :goto_c

    .line 180
    :cond_10
    :goto_b
    new-instance v0, La/b/a/o/g;

    .line 181
    iget-object v1, v9, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 182
    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 183
    iget v4, v2, La/b/a/o/m/i/a$b;->q:I

    add-int/2addr v3, v4

    iget v4, v2, La/b/a/o/m/i/a$b;->s:I

    add-int/2addr v3, v4

    .line 184
    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 185
    iget v4, v2, La/b/a/o/m/i/a$b;->p:I

    add-int/2addr v1, v4

    iget v4, v2, La/b/a/o/m/i/a$b;->r:I

    add-int/2addr v1, v4

    invoke-virtual {v9}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object v4

    invoke-direct {v0, v3, v1, v4}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 186
    sget-object v1, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    invoke-virtual {v0, v1}, La/b/a/o/g;->a(La/b/a/o/g$a;)V

    .line 187
    iget v1, v2, La/b/a/o/m/i/a$b;->q:I

    iget v3, v2, La/b/a/o/m/i/a$b;->p:I

    invoke-virtual {v0, v9, v1, v3}, La/b/a/o/g;->a(La/b/a/o/g;II)V

    .line 188
    invoke-virtual {v9}, La/b/a/o/g;->a()V

    move-object/from16 v8, p4

    move-object v9, v0

    goto :goto_c

    :cond_11
    move-object/from16 v16, v7

    .line 189
    :goto_c
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->b()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    .line 190
    new-instance v1, La/b/a/o/m/b$b;

    invoke-direct {v1}, La/b/a/o/m/b$b;-><init>()V

    move/from16 v3, p1

    .line 191
    iput v3, v1, La/b/a/o/m/b$b;->a:I

    .line 192
    iget-object v3, v9, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 193
    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 194
    iput v4, v1, La/b/a/o/m/b$b;->d:I

    .line 195
    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 196
    iput v3, v1, La/b/a/o/m/b$b;->e:I

    .line 197
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->b()I

    move-result v3

    iput v3, v1, La/b/a/o/m/b$b;->j:I

    .line 198
    iget-boolean v3, v2, La/b/a/o/m/i/a$b;->w:Z

    if-eqz v3, :cond_12

    .line 199
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->c()I

    move-result v3

    neg-int v3, v3

    move/from16 v4, p5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v1, La/b/a/o/m/b$b;->k:I

    goto :goto_d

    :cond_12
    move/from16 v4, p5

    .line 200
    iget v3, v1, La/b/a/o/m/b$b;->e:I

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->c()I

    move-result v5

    sub-int/2addr v3, v5

    neg-int v3, v3

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, v1, La/b/a/o/m/b$b;->k:I

    .line 201
    :goto_d
    iget-wide v3, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance(J)I

    move-result v0

    .line 202
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v0

    iget v3, v2, La/b/a/o/m/i/a$b;->g:F

    float-to-int v3, v3

    add-int/2addr v0, v3

    iget v3, v2, La/b/a/o/m/i/a$b;->n:I

    add-int/2addr v0, v3

    iput v0, v1, La/b/a/o/m/b$b;->l:I

    move-object/from16 v0, p0

    .line 203
    iget-boolean v3, v0, La/b/a/o/m/i/a;->d:Z

    if-eqz v3, :cond_15

    .line 204
    sget-object v3, La/b/a/o/a;->k:La/b/a/o/a;

    .line 205
    iget v4, v3, La/b/a/o/a;->a:F

    iget v5, v3, La/b/a/o/a;->b:F

    iget v6, v3, La/b/a/o/a;->c:F

    iget v3, v3, La/b/a/o/a;->d:F

    invoke-static {v4, v5, v6, v3}, La/b/a/o/a;->a(FFFF)I

    move-result v3

    iput v3, v9, La/b/a/o/g;->b:I

    .line 206
    invoke-virtual {v9}, La/b/a/o/g;->b()V

    .line 207
    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 208
    sget-object v4, La/b/a/o/a;->e:La/b/a/o/a;

    invoke-virtual {v4}, La/b/a/o/a;->b()I

    move-result v4

    .line 209
    sget-object v5, La/b/a/o/a;->k:La/b/a/o/a;

    invoke-virtual {v5}, La/b/a/o/a;->b()I

    move-result v5

    const/4 v6, 0x0

    .line 210
    :goto_e
    iget v7, v1, La/b/a/o/m/b$b;->e:I

    if-ge v6, v7, :cond_15

    move-object/from16 v7, v16

    .line 211
    iget-wide v10, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v10, v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch(J)I

    move-result v10

    mul-int v10, v10, v6

    const/4 v11, 0x0

    .line 212
    :goto_f
    iget v12, v1, La/b/a/o/m/b$b;->d:I

    iget v13, v1, La/b/a/o/m/b$b;->j:I

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_14

    .line 213
    div-int/lit8 v12, v11, 0x8

    add-int/2addr v12, v10

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    rem-int/lit8 v13, v11, 0x8

    rsub-int/lit8 v13, v13, 0x7

    ushr-int/2addr v12, v13

    const/4 v13, 0x1

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_13

    move v12, v4

    goto :goto_10

    :cond_13
    move v12, v5

    .line 214
    :goto_10
    iget-object v13, v9, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 215
    iget-wide v13, v13, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v13, v14, v11, v6, v12}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(JIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_14
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v7

    goto :goto_e

    :cond_15
    move-object/from16 v3, p6

    .line 216
    invoke-virtual {v3, v9}, La/b/a/o/m/e;->b(La/b/a/o/g;)La/b/a/p/c;

    move-result-object v4

    .line 217
    iget-object v5, v3, La/b/a/o/m/e;->k:La/b/a/r/a;

    .line 218
    iget v5, v5, La/b/a/r/a;->b:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, La/b/a/o/m/b$b;->o:I

    .line 219
    iget v6, v4, La/b/a/p/c;->a:F

    float-to-int v6, v6

    iput v6, v1, La/b/a/o/m/b$b;->b:I

    .line 220
    iget v4, v4, La/b/a/p/c;->b:F

    float-to-int v4, v4

    iput v4, v1, La/b/a/o/m/b$b;->c:I

    .line 221
    iget-boolean v4, v2, La/b/a/o/m/i/a$b;->A:Z

    if-eqz v4, :cond_16

    move-object/from16 v4, p2

    iget-object v4, v4, La/b/a/o/m/i/a$a;->x:La/b/a/r/a;

    if-eqz v4, :cond_16

    iget v6, v4, La/b/a/r/a;->b:I

    if-gt v6, v5, :cond_16

    .line 222
    iget-object v5, v2, La/b/a/o/m/i/a$b;->y:La/b/a/o/i$a;

    iget-object v6, v2, La/b/a/o/m/i/a$b;->z:La/b/a/o/i$a;

    iget-boolean v2, v2, La/b/a/o/m/i/a$b;->x:Z

    invoke-virtual {v3, v4, v5, v6, v2}, La/b/a/o/m/e;->a(La/b/a/r/a;La/b/a/o/i$a;La/b/a/o/i$a;Z)V

    .line 223
    :cond_16
    invoke-virtual {v9}, La/b/a/o/g;->a()V

    .line 224
    iget-wide v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->done(J)V

    return-object v1

    :catch_0
    move v3, v1

    .line 225
    iget-wide v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->done(J)V

    .line 226
    sget-object v1, La/b/a/e;->a:La/b/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t render char: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FreeTypeFontGenerator"

    invoke-interface {v1, v3, v2}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public a(La/b/a/o/m/i/a$b;)La/b/a/o/m/b;
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 3
    new-instance v9, La/b/a/o/m/i/a$a;

    invoke-direct {v9}, La/b/a/o/m/i/a$a;-><init>()V

    .line 4
    iget-object v0, v9, La/b/a/o/m/i/a$a;->x:La/b/a/r/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, v8, La/b/a/o/m/i/a$b;->v:La/b/a/o/m/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 5
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, v9, La/b/a/o/m/i/a$a;->x:La/b/a/r/a;

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, La/b/a/o/m/i/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, La/b/a/o/m/i/a$b;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, La/b/a/o/m/b$a;->a:Ljava/lang/String;

    .line 7
    iget-object v0, v8, La/b/a/o/m/i/a$b;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 8
    array-length v12, v11

    .line 9
    iget-boolean v13, v8, La/b/a/o/m/i/a$b;->A:Z

    .line 10
    invoke-virtual/range {p0 .. p1}, La/b/a/o/m/i/a;->b(La/b/a/o/m/i/a$b;)I

    move-result v14

    .line 11
    iget v0, v8, La/b/a/o/m/i/a$b;->a:I

    invoke-virtual {v7, v2, v0}, La/b/a/o/m/i/a;->b(II)V

    .line 12
    iget-object v0, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 13
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    iget-wide v3, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;-><init>(J)V

    .line 14
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    iget-wide v2, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;-><init>(J)V

    .line 15
    iget-boolean v2, v8, La/b/a/o/m/i/a$b;->w:Z

    iput-boolean v2, v9, La/b/a/o/m/b$a;->d:Z

    .line 16
    iget-wide v2, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender(J)I

    move-result v2

    .line 17
    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v9, La/b/a/o/m/b$a;->k:F

    .line 18
    iget-wide v2, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender(J)I

    move-result v2

    .line 19
    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v9, La/b/a/o/m/b$a;->l:F

    .line 20
    iget-wide v2, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getHeight(J)I

    move-result v0

    .line 21
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, La/b/a/o/m/b$a;->i:F

    .line 22
    iget v15, v9, La/b/a/o/m/b$a;->k:F

    .line 23
    iget-boolean v2, v7, La/b/a/o/m/i/a;->d:Z

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-eqz v2, :cond_4

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    const/16 v0, 0x20

    .line 24
    :goto_1
    iget-object v2, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 25
    iget-wide v5, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getNumGlyphs(J)I

    move-result v2

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_4

    .line 26
    invoke-virtual {v7, v0, v14}, La/b/a/o/m/i/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    iget-object v2, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->b()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->a()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v2

    int-to-float v2, v2

    .line 28
    iget v5, v9, La/b/a/o/m/b$a;->i:F

    cmpl-float v6, v2, v5

    if-lez v6, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    iput v2, v9, La/b/a/o/m/b$a;->i:F

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_4
    iget v0, v9, La/b/a/o/m/b$a;->i:F

    iget v2, v8, La/b/a/o/m/i/a$b;->o:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v9, La/b/a/o/m/b$a;->i:F

    .line 30
    invoke-virtual {v7, v4, v14}, La/b/a/o/m/i/a;->a(II)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x6c

    invoke-virtual {v7, v0, v14}, La/b/a/o/m/i/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 31
    :cond_5
    iget-object v0, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 32
    iget-wide v4, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getMaxAdvanceWidth(J)I

    move-result v0

    int-to-float v0, v0

    .line 33
    iput v0, v9, La/b/a/o/m/b$a;->t:F

    goto :goto_4

    .line 34
    :cond_6
    :goto_3
    iget-object v0, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->b()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    .line 35
    iget-wide v4, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance(J)I

    move-result v0

    .line 36
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, La/b/a/o/m/b$a;->t:F

    .line 37
    :goto_4
    iget-object v0, v9, La/b/a/o/m/b$a;->v:[C

    array-length v2, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_8

    aget-char v5, v0, v4

    .line 38
    invoke-virtual {v7, v5, v14}, La/b/a/o/m/i/a;->a(II)Z

    move-result v5

    if-nez v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 39
    :cond_7
    iget-object v0, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->b()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->a()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, La/b/a/o/m/b$a;->u:F

    .line 40
    :cond_8
    iget v0, v9, La/b/a/o/m/b$a;->u:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2e

    .line 41
    iget-object v0, v9, La/b/a/o/m/b$a;->w:[C

    array-length v2, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_a

    aget-char v5, v0, v4

    .line 42
    invoke-virtual {v7, v5, v14}, La/b/a/o/m/i/a;->a(II)Z

    move-result v5

    if-nez v5, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 43
    :cond_9
    iget-object v0, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->b()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->a()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v0

    iget v2, v8, La/b/a/o/m/i/a$b;->l:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, v9, La/b/a/o/m/b$a;->j:F

    .line 44
    :cond_a
    iget-boolean v0, v7, La/b/a/o/m/i/a;->d:Z

    if-nez v0, :cond_c

    iget v0, v9, La/b/a/o/m/b$a;->j:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    new-instance v0, La/b/a/r/d;

    const-string v1, "No cap character found in font"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_c
    :goto_7
    iget v0, v9, La/b/a/o/m/b$a;->k:F

    iget v2, v9, La/b/a/o/m/b$a;->j:F

    sub-float/2addr v0, v2

    iput v0, v9, La/b/a/o/m/b$a;->k:F

    .line 46
    iget v2, v9, La/b/a/o/m/b$a;->i:F

    neg-float v2, v2

    iput v2, v9, La/b/a/o/m/b$a;->m:F

    .line 47
    iget-boolean v4, v8, La/b/a/o/m/i/a$b;->w:Z

    if-eqz v4, :cond_d

    neg-float v0, v0

    .line 48
    iput v0, v9, La/b/a/o/m/b$a;->k:F

    neg-float v0, v2

    .line 49
    iput v0, v9, La/b/a/o/m/b$a;->m:F

    .line 50
    :cond_d
    iget-object v0, v8, La/b/a/o/m/i/a$b;->v:La/b/a/o/m/e;

    if-nez v0, :cond_10

    const/16 v0, 0x400

    if-eqz v13, :cond_e

    .line 51
    new-instance v0, La/b/a/o/m/e$a;

    invoke-direct {v0}, La/b/a/o/m/e$a;-><init>()V

    const/16 v2, 0x400

    move-object/from16 v24, v0

    const/16 v18, 0x400

    goto :goto_8

    .line 52
    :cond_e
    iget v2, v9, La/b/a/o/m/b$a;->i:F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    mul-int v2, v2, v2

    mul-int v2, v2, v12

    int-to-double v4, v2

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v2}, La/b/a/p/a;->b(I)I

    move-result v2

    .line 54
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 55
    new-instance v0, La/b/a/o/m/e$e;

    invoke-direct {v0}, La/b/a/o/m/e$e;-><init>()V

    move-object/from16 v24, v0

    move/from16 v18, v2

    .line 56
    :goto_8
    new-instance v0, La/b/a/o/m/e;

    sget-object v19, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v18

    .line 57
    invoke-direct/range {v16 .. v24}, La/b/a/o/m/e;-><init>(IILa/b/a/o/g$c;IZZZLa/b/a/o/m/e$b;)V

    .line 58
    iget-object v2, v8, La/b/a/o/m/i/a$b;->d:La/b/a/o/a;

    .line 59
    iget-object v4, v0, La/b/a/o/m/e;->j:La/b/a/o/a;

    invoke-virtual {v4, v2}, La/b/a/o/a;->a(La/b/a/o/a;)La/b/a/o/a;

    .line 60
    iget-object v2, v0, La/b/a/o/m/e;->j:La/b/a/o/a;

    .line 61
    iput v3, v2, La/b/a/o/a;->d:F

    .line 62
    iget v4, v8, La/b/a/o/m/i/a$b;->g:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_f

    .line 63
    iget-object v4, v8, La/b/a/o/m/i/a$b;->h:La/b/a/o/a;

    .line 64
    invoke-virtual {v2, v4}, La/b/a/o/a;->a(La/b/a/o/a;)La/b/a/o/a;

    .line 65
    iget-object v2, v0, La/b/a/o/m/e;->j:La/b/a/o/a;

    .line 66
    iput v3, v2, La/b/a/o/a;->d:F

    :cond_f
    const/4 v2, 0x1

    move-object v6, v0

    const/16 v16, 0x1

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    move-object v6, v0

    const/16 v16, 0x0

    :goto_9
    if-eqz v13, :cond_11

    .line 67
    new-instance v0, La/b/a/r/a;

    add-int/lit8 v2, v12, 0x20

    .line 68
    invoke-direct {v0, v1, v2}, La/b/a/r/a;-><init>(ZI)V

    .line 69
    iput-object v0, v9, La/b/a/o/m/i/a$a;->C:La/b/a/r/a;

    :cond_11
    const/4 v0, 0x0

    .line 70
    iget v1, v8, La/b/a/o/m/i/a$b;->g:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_15

    .line 71
    iget-object v0, v7, La/b/a/o/m/i/a;->a:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    .line 72
    iget-wide v0, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->strokerNew(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    .line 73
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;-><init>(J)V

    .line 74
    iget v0, v8, La/b/a/o/m/i/a$b;->g:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-boolean v1, v8, La/b/a/o/m/i/a$b;->i:Z

    if-eqz v1, :cond_12

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->k:I

    goto :goto_a

    :cond_12
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->l:I

    :goto_a
    move/from16 v20, v1

    iget-boolean v1, v8, La/b/a/o/m/i/a$b;->i:Z

    if-eqz v1, :cond_13

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->o:I

    goto :goto_b

    :cond_13
    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->m:I

    :goto_b
    move/from16 v21, v1

    const/16 v22, 0x0

    .line 75
    iget-wide v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    move-wide/from16 v17, v3

    move/from16 v19, v0

    invoke-static/range {v17 .. v22}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;->set(JIIII)V

    move-object v5, v2

    goto :goto_c

    .line 76
    :cond_14
    new-instance v0, La/b/a/r/d;

    const-string v1, "Couldn\'t create FreeType stroker, FreeType error code: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v5, v0

    .line 77
    :goto_c
    new-array v4, v12, [I

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v12, :cond_19

    .line 78
    aget-char v0, v11, v3

    .line 79
    invoke-virtual {v7, v0, v14}, La/b/a/o/m/i/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->b()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->a()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v1

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    .line 80
    :goto_e
    aput v1, v4, v3

    if-nez v0, :cond_17

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v9

    move/from16 v17, v3

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    move-object v4, v5

    move-object/from16 v19, v5

    move v5, v15

    move-object/from16 v20, v6

    .line 81
    invoke-virtual/range {v0 .. v6}, La/b/a/o/m/i/a;->a(CLa/b/a/o/m/i/a$a;La/b/a/o/m/i/a$b;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLa/b/a/o/m/e;)La/b/a/o/m/b$b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 82
    iget v1, v0, La/b/a/o/m/b$b;->d:I

    if-eqz v1, :cond_18

    iget v1, v0, La/b/a/o/m/b$b;->e:I

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v9, v1, v0}, La/b/a/o/m/b$a;->a(ILa/b/a/o/m/b$b;)V

    .line 84
    iput-object v0, v9, La/b/a/o/m/b$a;->s:La/b/a/o/m/b$b;

    if-eqz v13, :cond_18

    .line 85
    iget-object v1, v9, La/b/a/o/m/i/a$a;->C:La/b/a/r/a;

    invoke-virtual {v1, v0}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    goto :goto_f

    :cond_17
    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :cond_18
    :goto_f
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto :goto_d

    :cond_19
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move v14, v12

    :goto_10
    if-lez v14, :cond_1e

    const/4 v0, 0x0

    .line 86
    aget v0, v18, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v17, 0x0

    :goto_11
    if-ge v1, v14, :cond_1b

    .line 87
    aget v2, v18, v1

    if-le v2, v0, :cond_1a

    move/from16 v17, v1

    move v0, v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 88
    :cond_1b
    aget-char v6, v11, v17

    .line 89
    invoke-virtual {v9, v6}, La/b/a/o/m/i/a$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v0

    if-nez v0, :cond_1c

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v9

    move-object/from16 v3, p1

    move-object/from16 v4, v19

    move v5, v15

    move/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v20

    .line 90
    invoke-virtual/range {v0 .. v6}, La/b/a/o/m/i/a;->a(CLa/b/a/o/m/i/a$a;La/b/a/o/m/i/a$b;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLa/b/a/o/m/e;)La/b/a/o/m/b$b;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 91
    invoke-virtual {v9, v15, v0}, La/b/a/o/m/b$a;->a(ILa/b/a/o/m/b$b;)V

    if-eqz v13, :cond_1d

    .line 92
    iget-object v1, v9, La/b/a/o/m/i/a$a;->C:La/b/a/r/a;

    invoke-virtual {v1, v0}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    goto :goto_12

    :cond_1c
    move/from16 v21, v15

    :cond_1d
    :goto_12
    add-int/lit8 v14, v14, -0x1

    .line 93
    aget v0, v18, v14

    aput v0, v18, v17

    .line 94
    aget-char v0, v11, v17

    .line 95
    aget-char v1, v11, v14

    aput-char v1, v11, v17

    .line 96
    aput-char v0, v11, v14

    move/from16 v15, v21

    goto :goto_10

    :cond_1e
    move-object/from16 v0, v19

    if-eqz v0, :cond_1f

    if-nez v13, :cond_1f

    .line 97
    iget-wide v1, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;->done(J)V

    :cond_1f
    if-eqz v13, :cond_20

    .line 98
    iput-object v7, v9, La/b/a/o/m/i/a$a;->y:La/b/a/o/m/i/a;

    .line 99
    iput-object v8, v9, La/b/a/o/m/i/a$a;->z:La/b/a/o/m/i/a$b;

    .line 100
    iput-object v0, v9, La/b/a/o/m/i/a$a;->A:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    move-object/from16 v0, v20

    .line 101
    iput-object v0, v9, La/b/a/o/m/i/a$a;->B:La/b/a/o/m/e;

    goto :goto_13

    :cond_20
    move-object/from16 v0, v20

    .line 102
    :goto_13
    iget-boolean v1, v8, La/b/a/o/m/i/a$b;->u:Z

    iget-object v2, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 103
    iget-wide v2, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->hasKerning(J)Z

    move-result v2

    and-int/2addr v1, v2

    .line 104
    iput-boolean v1, v8, La/b/a/o/m/i/a$b;->u:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v12, :cond_26

    .line 105
    aget-char v2, v11, v1

    .line 106
    invoke-virtual {v9, v2}, La/b/a/o/m/i/a$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v3

    if-nez v3, :cond_22

    :cond_21
    move-object/from16 v17, v11

    goto :goto_17

    .line 107
    :cond_22
    iget-object v4, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a(I)I

    move-result v4

    move v5, v1

    :goto_15
    if-ge v5, v12, :cond_21

    .line 108
    aget-char v6, v11, v5

    .line 109
    invoke-virtual {v9, v6}, La/b/a/o/m/i/a$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v13

    if-nez v13, :cond_23

    move-object/from16 v17, v11

    goto :goto_16

    .line 110
    :cond_23
    iget-object v14, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a(I)I

    move-result v14

    .line 111
    iget-object v15, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-object/from16 v17, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v4, v14, v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a(III)I

    move-result v15

    if-eqz v15, :cond_24

    .line 112
    invoke-static {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v15

    invoke-virtual {v3, v6, v15}, La/b/a/o/m/b$b;->a(II)V

    .line 113
    :cond_24
    iget-object v6, v7, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v6, v14, v4, v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a(III)I

    move-result v6

    if-eqz v6, :cond_25

    .line 114
    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v6

    invoke-virtual {v13, v2, v6}, La/b/a/o/m/b$b;->a(II)V

    :cond_25
    :goto_16
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v11, v17

    goto :goto_15

    :goto_17
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, v17

    goto :goto_14

    :cond_26
    if-eqz v16, :cond_27

    .line 115
    new-instance v1, La/b/a/r/a;

    invoke-direct {v1}, La/b/a/r/a;-><init>()V

    iput-object v1, v9, La/b/a/o/m/i/a$a;->x:La/b/a/r/a;

    .line 116
    iget-object v2, v8, La/b/a/o/m/i/a$b;->y:La/b/a/o/i$a;

    iget-object v3, v8, La/b/a/o/m/i/a$b;->z:La/b/a/o/i$a;

    iget-boolean v4, v8, La/b/a/o/m/i/a$b;->x:Z

    invoke-virtual {v0, v1, v2, v3, v4}, La/b/a/o/m/e;->a(La/b/a/r/a;La/b/a/o/i$a;La/b/a/o/i$a;Z)V

    :cond_27
    const/16 v0, 0x20

    .line 117
    invoke-virtual {v9, v0}, La/b/a/o/m/i/a$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v1

    if-nez v1, :cond_28

    .line 118
    new-instance v1, La/b/a/o/m/b$b;

    invoke-direct {v1}, La/b/a/o/m/b$b;-><init>()V

    .line 119
    iget v2, v9, La/b/a/o/m/b$a;->t:F

    float-to-int v2, v2

    iget v3, v8, La/b/a/o/m/i/a$b;->n:I

    add-int/2addr v2, v3

    iput v2, v1, La/b/a/o/m/b$b;->l:I

    .line 120
    iput v0, v1, La/b/a/o/m/b$b;->a:I

    .line 121
    invoke-virtual {v9, v0, v1}, La/b/a/o/m/b$a;->a(ILa/b/a/o/m/b$b;)V

    .line 122
    :cond_28
    iget v0, v1, La/b/a/o/m/b$b;->d:I

    if-nez v0, :cond_29

    iget v0, v1, La/b/a/o/m/b$b;->l:I

    int-to-float v0, v0

    iget v2, v9, La/b/a/o/m/b$a;->f:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, La/b/a/o/m/b$b;->d:I

    :cond_29
    if-eqz v10, :cond_2a

    .line 123
    iget-object v0, v8, La/b/a/o/m/i/a$b;->v:La/b/a/o/m/e;

    iget-object v1, v9, La/b/a/o/m/i/a$a;->x:La/b/a/r/a;

    iget-object v2, v8, La/b/a/o/m/i/a$b;->y:La/b/a/o/i$a;

    iget-object v3, v8, La/b/a/o/m/i/a$b;->z:La/b/a/o/i$a;

    iget-boolean v4, v8, La/b/a/o/m/i/a$b;->x:Z

    invoke-virtual {v0, v1, v2, v3, v4}, La/b/a/o/m/e;->a(La/b/a/r/a;La/b/a/o/i$a;La/b/a/o/i$a;Z)V

    .line 124
    :cond_2a
    iget-object v0, v9, La/b/a/o/m/i/a$a;->x:La/b/a/r/a;

    .line 125
    iget v0, v0, La/b/a/r/a;->b:I

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_18

    :cond_2b
    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_2d

    .line 126
    new-instance v0, La/b/a/o/m/b;

    iget-object v1, v9, La/b/a/o/m/i/a$a;->x:La/b/a/r/a;

    const/4 v2, 0x1

    invoke-direct {v0, v9, v1, v2}, La/b/a/o/m/b;-><init>(La/b/a/o/m/b$a;La/b/a/r/a;Z)V

    .line 127
    iget-object v1, v8, La/b/a/o/m/i/a$b;->v:La/b/a/o/m/e;

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_19

    :cond_2c
    const/4 v1, 0x0

    .line 128
    :goto_19
    iput-boolean v1, v0, La/b/a/o/m/b;->e:Z

    return-object v0

    .line 129
    :cond_2d
    new-instance v0, La/b/a/r/d;

    const-string v1, "Unable to create a font with no texture regions."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2e
    new-instance v0, La/b/a/r/d;

    const-string v1, "No x-height character found in font"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    :goto_1a
    throw v0

    :goto_1b
    goto :goto_1a
.end method

.method public a()V
    .locals 13

    .line 227
    iget-object v0, p0, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 228
    iget-wide v1, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->doneFace(J)V

    .line 229
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->b:La/b/a/r/i;

    iget-wide v2, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-virtual {v1, v2, v3}, La/b/a/r/i;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 230
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->b:La/b/a/r/i;

    iget-wide v4, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 231
    iget-boolean v4, v3, La/b/a/r/i;->g:Z

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 232
    :cond_0
    iput-object v0, v3, La/b/a/r/i;->f:Ljava/lang/Object;

    .line 233
    iput-boolean v2, v3, La/b/a/r/i;->g:Z

    .line 234
    iget v0, v3, La/b/a/r/i;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, La/b/a/r/i;->a:I

    goto/16 :goto_1

    .line 235
    :cond_1
    iget v8, v3, La/b/a/r/i;->j:I

    int-to-long v8, v8

    and-long/2addr v8, v4

    long-to-int v9, v8

    .line 236
    iget-object v8, v3, La/b/a/r/i;->b:[J

    aget-wide v10, v8, v9

    cmp-long v12, v10, v4

    if-nez v12, :cond_2

    .line 237
    aput-wide v6, v8, v9

    .line 238
    iget-object v4, v3, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v5, v4, v9

    .line 239
    aput-object v0, v4, v9

    .line 240
    iget v0, v3, La/b/a/r/i;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, La/b/a/r/i;->a:I

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {v3, v4, v5}, La/b/a/r/i;->b(J)I

    move-result v8

    .line 242
    iget-object v9, v3, La/b/a/r/i;->b:[J

    aget-wide v10, v9, v8

    cmp-long v12, v10, v4

    if-nez v12, :cond_3

    .line 243
    aput-wide v6, v9, v8

    .line 244
    iget-object v4, v3, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v5, v4, v8

    .line 245
    aput-object v0, v4, v8

    .line 246
    iget v0, v3, La/b/a/r/i;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, La/b/a/r/i;->a:I

    goto :goto_1

    .line 247
    :cond_3
    invoke-virtual {v3, v4, v5}, La/b/a/r/i;->c(J)I

    move-result v8

    .line 248
    iget-object v9, v3, La/b/a/r/i;->b:[J

    aget-wide v10, v9, v8

    cmp-long v12, v10, v4

    if-nez v12, :cond_4

    .line 249
    aput-wide v6, v9, v8

    .line 250
    iget-object v4, v3, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v5, v4, v8

    .line 251
    aput-object v0, v4, v8

    .line 252
    iget v0, v3, La/b/a/r/i;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, La/b/a/r/i;->a:I

    goto :goto_1

    .line 253
    :cond_4
    iget v0, v3, La/b/a/r/i;->d:I

    iget v6, v3, La/b/a/r/i;->e:I

    add-int/2addr v6, v0

    :goto_0
    if-ge v0, v6, :cond_6

    .line 254
    aget-wide v7, v9, v0

    cmp-long v10, v7, v4

    if-nez v10, :cond_5

    .line 255
    iget-object v4, v3, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v4, v4, v0

    .line 256
    invoke-virtual {v3, v0}, La/b/a/r/i;->a(I)V

    .line 257
    iget v0, v3, La/b/a/r/i;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, La/b/a/r/i;->a:I

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_6
    :goto_1
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->b(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/ByteBuffer;)V

    .line 260
    :cond_7
    iget-object v0, p0, La/b/a/o/m/i/a;->a:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    .line 261
    iget-wide v3, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->doneFreeType(J)V

    .line 262
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->b:La/b/a/r/i;

    .line 263
    iget-object v1, v0, La/b/a/r/i;->p:La/b/a/r/i$d;

    if-nez v1, :cond_8

    .line 264
    new-instance v1, La/b/a/r/i$d;

    invoke-direct {v1, v0}, La/b/a/r/i$d;-><init>(La/b/a/r/i;)V

    iput-object v1, v0, La/b/a/r/i;->p:La/b/a/r/i$d;

    .line 265
    new-instance v1, La/b/a/r/i$d;

    invoke-direct {v1, v0}, La/b/a/r/i$d;-><init>(La/b/a/r/i;)V

    iput-object v1, v0, La/b/a/r/i;->q:La/b/a/r/i$d;

    .line 266
    :cond_8
    iget-object v1, v0, La/b/a/r/i;->p:La/b/a/r/i$d;

    iget-boolean v3, v1, La/b/a/r/i$c;->e:Z

    const/4 v4, 0x1

    if-nez v3, :cond_9

    .line 267
    invoke-virtual {v1}, La/b/a/r/i$c;->b()V

    .line 268
    iget-object v1, v0, La/b/a/r/i;->p:La/b/a/r/i$d;

    iput-boolean v4, v1, La/b/a/r/i$c;->e:Z

    .line 269
    iget-object v0, v0, La/b/a/r/i;->q:La/b/a/r/i$d;

    iput-boolean v2, v0, La/b/a/r/i$c;->e:Z

    goto :goto_2

    .line 270
    :cond_9
    iget-object v1, v0, La/b/a/r/i;->q:La/b/a/r/i$d;

    invoke-virtual {v1}, La/b/a/r/i$c;->b()V

    .line 271
    iget-object v1, v0, La/b/a/r/i;->q:La/b/a/r/i$d;

    iput-boolean v4, v1, La/b/a/r/i$c;->e:Z

    .line 272
    iget-object v0, v0, La/b/a/r/i;->p:La/b/a/r/i$d;

    iput-boolean v2, v0, La/b/a/r/i$c;->e:Z

    .line 273
    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 274
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->b(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 275
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_b
    return-void
.end method

.method public final a(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 2
    iget-wide v0, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->loadChar(JII)Z

    move-result p1

    return p1
.end method

.method public final b(La/b/a/o/m/i/a$b;)I
    .locals 2

    .line 1
    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->c:I

    .line 2
    iget-object p1, p1, La/b/a/o/m/i/a$b;->c:La/b/a/o/m/i/a$c;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->e:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->h:I

    goto :goto_0

    .line 4
    :pswitch_1
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->e:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->f:I

    goto :goto_0

    .line 5
    :pswitch_2
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->e:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->g:I

    :goto_0
    or-int/2addr p1, v1

    goto :goto_1

    .line 6
    :pswitch_3
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->h:I

    goto :goto_1

    .line 7
    :pswitch_4
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->f:I

    goto :goto_1

    .line 8
    :pswitch_5
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->g:I

    goto :goto_1

    .line 9
    :pswitch_6
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->d:I

    :goto_1
    or-int/2addr v0, p1

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(II)V
    .locals 2

    .line 10
    iget-boolean v0, p0, La/b/a/o/m/i/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 11
    iget-wide v0, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->setPixelSizes(JII)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, La/b/a/r/d;

    const-string p2, "Couldn\'t set size for font"

    invoke-direct {p1, p2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/m/i/a;->c:Ljava/lang/String;

    return-object v0
.end method
