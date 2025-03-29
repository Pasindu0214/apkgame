.class public La/b/a/o/n/f;
.super Ljava/lang/Object;
.source "KTXTextureData.java"

# interfaces
.implements La/b/a/o/l;


# instance fields
.field public a:La/b/a/n/a;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/nio/ByteBuffer;

.field public m:Z


# direct methods
.method public constructor <init>(La/b/a/n/a;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, La/b/a/o/n/f;->e:I

    .line 3
    iput v0, p0, La/b/a/o/n/f;->f:I

    .line 4
    iput v0, p0, La/b/a/o/n/f;->g:I

    .line 5
    iput-object p1, p0, La/b/a/o/n/f;->a:La/b/a/n/a;

    .line 6
    iput-boolean p2, p0, La/b/a/o/n/f;->m:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_17

    .line 2
    iget-object v0, p0, La/b/a/o/n/f;->a:La/b/a/n/a;

    if-eqz v0, :cond_16

    .line 3
    invoke-virtual {v0}, La/b/a/n/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zktx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x2800

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    iget-object v6, p0, La/b/a/o/n/f;->a:La/b/a/n/a;

    invoke-virtual {v6}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 6
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    .line 7
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 8
    iget-object v4, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    iget-object v2, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    nop

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 12
    :goto_1
    :try_start_3
    new-instance v1, La/b/a/r/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load zktx file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La/b/a/o/n/f;->a:La/b/a/n/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v2, :cond_1

    .line 13
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 14
    :catchall_3
    :cond_1
    throw v0

    .line 15
    :cond_2
    iget-object v0, p0, La/b/a/o/n/f;->a:La/b/a/n/a;

    invoke-virtual {v0}, La/b/a/n/a;->j()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    .line 16
    :goto_3
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, -0x55

    const-string v3, "Invalid KTX Header"

    if-ne v0, v2, :cond_15

    .line 17
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x4b

    if-ne v0, v2, :cond_14

    .line 18
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_13

    .line 19
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x58

    if-ne v0, v2, :cond_12

    .line 20
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_11

    .line 21
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_10

    .line 22
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_f

    .line 23
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, -0x45

    if-ne v0, v2, :cond_e

    .line 24
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_d

    .line 25
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_c

    .line 26
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v4, 0x1a

    if-ne v0, v4, :cond_b

    .line 27
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_a

    .line 28
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v2, 0x4030201

    if-eq v0, v2, :cond_4

    const v4, 0x1020304

    if-ne v0, v4, :cond_3

    goto :goto_4

    .line 29
    :cond_3
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    if-eq v0, v2, :cond_6

    .line 30
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_5

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :cond_5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 31
    :cond_6
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, La/b/a/o/n/f;->b:I

    .line 32
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 33
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, La/b/a/o/n/f;->c:I

    .line 34
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, La/b/a/o/n/f;->d:I

    .line 35
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 36
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, La/b/a/o/n/f;->e:I

    .line 37
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, La/b/a/o/n/f;->f:I

    .line 38
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, La/b/a/o/n/f;->g:I

    .line 39
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, La/b/a/o/n/f;->h:I

    .line 40
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, La/b/a/o/n/f;->i:I

    .line 41
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, La/b/a/o/n/f;->j:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 42
    iput v0, p0, La/b/a/o/n/f;->j:I

    .line 43
    iput-boolean v0, p0, La/b/a/o/n/f;->m:Z

    .line 44
    :cond_7
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 45
    iget-object v2, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, La/b/a/o/n/f;->k:I

    .line 46
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_9

    .line 47
    iget v0, p0, La/b/a/o/n/f;->k:I

    const/4 v2, 0x0

    .line 48
    :goto_5
    iget v3, p0, La/b/a/o/n/f;->j:I

    if-ge v2, v3, :cond_8

    .line 49
    iget-object v3, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, -0x4

    .line 50
    iget v4, p0, La/b/a/o/n/f;->i:I

    mul-int v3, v3, v4

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 51
    :cond_8
    iget-object v2, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 52
    iget-object v2, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    iget-object v1, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 55
    iget-object v1, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 56
    iput-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    :cond_9
    return-void

    .line 57
    :cond_a
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_b
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_c
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_d
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_e
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_f
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_10
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_11
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_12
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_13
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_14
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_15
    new-instance v0, La/b/a/r/d;

    invoke-direct {v0, v3}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_16
    new-instance v0, La/b/a/r/d;

    const-string v1, "Need a file to load from"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_17
    new-instance v0, La/b/a/r/d;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public a(I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 71
    iget-object v2, v0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_26

    const/16 v2, 0x10

    .line 72
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->b(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 73
    iget v3, v0, La/b/a/o/n/f;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget v3, v0, La/b/a/o/n/f;->c:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    iget v3, v0, La/b/a/o/n/f;->b:I

    iget v6, v0, La/b/a/o/n/f;->c:I

    add-int/2addr v3, v6

    if-nez v3, :cond_25

    const/4 v3, 0x1

    .line 75
    :goto_1
    iget v6, v0, La/b/a/o/n/f;->f:I

    const/16 v7, 0xde1

    const/4 v8, 0x2

    const/16 v9, 0x1234

    if-lez v6, :cond_2

    const/4 v6, 0x2

    const/16 v10, 0xde1

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    const/16 v10, 0x1234

    .line 76
    :goto_2
    iget v11, v0, La/b/a/o/n/f;->g:I

    if-lez v11, :cond_3

    const/4 v6, 0x3

    const/16 v10, 0x1234

    .line 77
    :cond_3
    iget v11, v0, La/b/a/o/n/f;->i:I

    const/4 v12, 0x6

    const v13, 0x8513

    if-ne v11, v12, :cond_5

    if-ne v6, v8, :cond_4

    const v10, 0x8513

    goto :goto_3

    .line 78
    :cond_4
    new-instance v1, La/b/a/r/d;

    const-string v2, "cube map needs 2D faces"

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-ne v11, v5, :cond_24

    .line 79
    :goto_3
    iget v8, v0, La/b/a/o/n/f;->h:I

    if-lez v8, :cond_8

    if-ne v10, v9, :cond_6

    goto :goto_4

    :cond_6
    if-ne v10, v7, :cond_7

    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x1234

    goto :goto_5

    .line 80
    :cond_7
    new-instance v1, La/b/a/r/d;

    const-string v2, "No API for 3D and cube arrays yet"

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_5
    if-eq v10, v9, :cond_23

    .line 81
    iget v8, v0, La/b/a/o/n/f;->i:I

    const v9, 0x851a

    const v11, 0x8515

    if-ne v8, v12, :cond_a

    if-eq v1, v13, :cond_a

    if-gt v11, v1, :cond_9

    if-gt v1, v9, :cond_9

    sub-int/2addr v1, v11

    goto :goto_7

    .line 82
    :cond_9
    new-instance v1, La/b/a/r/d;

    const-string v2, "You must specify either GL_TEXTURE_CUBE_MAP to bind all 6 faces of the cube or the requested face GL_TEXTURE_CUBE_MAP_POSITIVE_X and followings."

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_a
    iget v8, v0, La/b/a/o/n/f;->i:I

    if-ne v8, v12, :cond_b

    if-ne v1, v13, :cond_b

    const v1, 0x8515

    goto :goto_6

    :cond_b
    if-eq v1, v10, :cond_d

    if-gt v11, v1, :cond_c

    if-gt v1, v9, :cond_c

    if-ne v1, v7, :cond_c

    goto :goto_6

    .line 84
    :cond_c
    new-instance v2, La/b/a/r/d;

    const-string v3, "Invalid target requested : 0x"

    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expecting : 0x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    :goto_6
    const/4 v7, -0x1

    move v11, v1

    const/4 v1, -0x1

    .line 86
    :goto_7
    sget-object v7, La/b/a/e;->g:La/b/a/o/d;

    check-cast v7, La/b/a/m/a/j;

    const/4 v8, 0x0

    if-eqz v7, :cond_22

    const/16 v7, 0xcf5

    .line 87
    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 88
    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_f

    .line 89
    sget-object v9, La/b/a/e;->g:La/b/a/o/d;

    check-cast v9, La/b/a/m/a/j;

    if-eqz v9, :cond_e

    .line 90
    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_8

    :cond_e
    throw v8

    .line 91
    :cond_f
    :goto_8
    iget v7, v0, La/b/a/o/n/f;->d:I

    .line 92
    iget v8, v0, La/b/a/o/n/f;->c:I

    .line 93
    iget v9, v0, La/b/a/o/n/f;->k:I

    const/4 v10, 0x0

    .line 94
    :goto_9
    iget v12, v0, La/b/a/o/n/f;->j:I

    if-ge v10, v12, :cond_1c

    .line 95
    iget v12, v0, La/b/a/o/n/f;->e:I

    shr-int/2addr v12, v10

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 96
    iget v12, v0, La/b/a/o/n/f;->f:I

    shr-int/2addr v12, v10

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 97
    iget v13, v0, La/b/a/o/n/f;->g:I

    shr-int/2addr v13, v10

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    .line 98
    iget-object v5, v0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v5, v0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    add-int/lit8 v13, v5, 0x3

    and-int/lit8 v14, v13, -0x4

    add-int/2addr v9, v4

    const/4 v4, 0x0

    .line 100
    :goto_a
    iget v13, v0, La/b/a/o/n/f;->i:I

    if-ge v4, v13, :cond_1b

    .line 101
    iget-object v13, v0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v9, v14

    const/4 v13, -0x1

    if-eq v1, v13, :cond_10

    if-eq v1, v4, :cond_10

    move/from16 p1, v1

    goto :goto_b

    .line 102
    :cond_10
    iget-object v13, v0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 103
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move/from16 p1, v1

    const/4 v1, 0x1

    if-ne v6, v1, :cond_12

    :cond_11
    :goto_b
    move/from16 v21, v3

    move/from16 v22, v6

    move/from16 v23, v9

    move/from16 v24, v14

    move/from16 v25, v15

    goto/16 :goto_e

    :cond_12
    const/4 v1, 0x2

    if-ne v6, v1, :cond_11

    .line 104
    iget v1, v0, La/b/a/o/n/f;->h:I

    if-lez v1, :cond_13

    goto :goto_c

    :cond_13
    move v1, v12

    :goto_c
    if-eqz v3, :cond_19

    const v12, 0x8d64

    if-ne v7, v12, :cond_17

    .line 105
    sget-object v12, La/b/a/e;->b:La/b/a/f;

    check-cast v12, La/b/a/m/a/l;

    move/from16 v21, v3

    const-string v3, "GL_OES_compressed_ETC1_RGB8_texture"

    invoke-virtual {v12, v3}, La/b/a/m/a/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 106
    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;

    const/4 v12, 0x0

    invoke-direct {v3, v15, v1, v13, v12}, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;-><init>(IILjava/nio/ByteBuffer;I)V

    .line 107
    sget-object v12, La/b/a/o/g$c;->f:La/b/a/o/g$c;

    invoke-static {v3, v12}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->a(Lcom/badlogic/gdx/graphics/glutils/ETC1$a;La/b/a/o/g$c;)La/b/a/o/g;

    move-result-object v3

    .line 108
    sget-object v12, La/b/a/e;->g:La/b/a/o/d;

    add-int v13, v11, v4

    invoke-virtual {v3}, La/b/a/o/g;->e()I

    move-result v16

    move/from16 v22, v6

    .line 109
    iget-object v6, v3, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move/from16 v23, v9

    .line 110
    iget v9, v6, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 111
    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    const/16 v17, 0x0

    .line 112
    invoke-virtual {v3}, La/b/a/o/g;->d()I

    move-result v18

    invoke-virtual {v3}, La/b/a/o/g;->f()I

    move-result v19

    invoke-virtual {v3}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 113
    check-cast v12, La/b/a/m/a/j;

    if-eqz v12, :cond_14

    move v12, v13

    move v13, v10

    move/from16 v24, v14

    move/from16 v14, v16

    move/from16 v25, v15

    move v15, v9

    move/from16 v16, v6

    .line 114
    invoke-static/range {v12 .. v20}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 115
    invoke-virtual {v3}, La/b/a/o/g;->a()V

    goto/16 :goto_d

    :cond_14
    const/4 v1, 0x0

    .line 116
    throw v1

    :cond_15
    move/from16 v22, v6

    move/from16 v23, v9

    move/from16 v24, v14

    move/from16 v25, v15

    .line 117
    sget-object v3, La/b/a/e;->g:La/b/a/o/d;

    add-int v12, v11, v4

    const/16 v17, 0x0

    check-cast v3, La/b/a/m/a/j;

    if-eqz v3, :cond_16

    move-object v3, v13

    move v13, v10

    move v14, v7

    move/from16 v15, v25

    move/from16 v16, v1

    move/from16 v18, v5

    move-object/from16 v19, v3

    .line 118
    invoke-static/range {v12 .. v19}, Landroid/opengl/GLES20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_d

    :cond_16
    const/4 v1, 0x0

    throw v1

    :cond_17
    move/from16 v21, v3

    move/from16 v22, v6

    move/from16 v23, v9

    move-object v3, v13

    move/from16 v24, v14

    move/from16 v25, v15

    .line 119
    sget-object v6, La/b/a/e;->g:La/b/a/o/d;

    add-int v12, v11, v4

    const/16 v17, 0x0

    check-cast v6, La/b/a/m/a/j;

    if-eqz v6, :cond_18

    move v13, v10

    move v14, v7

    move/from16 v15, v25

    move/from16 v16, v1

    move/from16 v18, v5

    move-object/from16 v19, v3

    .line 120
    invoke-static/range {v12 .. v19}, Landroid/opengl/GLES20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_d

    :cond_18
    const/4 v1, 0x0

    throw v1

    :cond_19
    move/from16 v21, v3

    move/from16 v22, v6

    move/from16 v23, v9

    move-object v3, v13

    move/from16 v24, v14

    move/from16 v25, v15

    .line 121
    sget-object v6, La/b/a/e;->g:La/b/a/o/d;

    add-int v12, v11, v4

    const/16 v17, 0x0

    iget v9, v0, La/b/a/o/n/f;->b:I

    check-cast v6, La/b/a/m/a/j;

    if-eqz v6, :cond_1a

    move v13, v10

    move v14, v7

    move/from16 v15, v25

    move/from16 v16, v1

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v3

    .line 122
    invoke-static/range {v12 .. v20}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_d
    move v12, v1

    goto :goto_e

    :cond_1a
    const/4 v1, 0x0

    throw v1

    :goto_e
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v9, v23

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_a

    :cond_1b
    move/from16 p1, v1

    move/from16 v21, v3

    move/from16 v22, v6

    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    const/4 v4, 0x4

    goto/16 :goto_9

    :cond_1c
    const/4 v1, 0x4

    if-eq v2, v1, :cond_1e

    .line 123
    sget-object v1, La/b/a/e;->g:La/b/a/o/d;

    check-cast v1, La/b/a/m/a/j;

    if-eqz v1, :cond_1d

    const/16 v1, 0xcf5

    .line 124
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_f

    :cond_1d
    const/4 v1, 0x0

    throw v1

    :cond_1e
    :goto_f
    const/4 v1, 0x0

    .line 125
    iget-boolean v2, v0, La/b/a/o/n/f;->m:Z

    if-eqz v2, :cond_20

    .line 126
    sget-object v2, La/b/a/e;->g:La/b/a/o/d;

    check-cast v2, La/b/a/m/a/j;

    if-eqz v2, :cond_1f

    .line 127
    invoke-static {v11}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    goto :goto_10

    :cond_1f
    throw v1

    .line 128
    :cond_20
    :goto_10
    iget-object v2, v0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_21

    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/ByteBuffer;)V

    .line 129
    :cond_21
    iput-object v1, v0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    return-void

    .line 130
    :cond_22
    throw v8

    .line 131
    :cond_23
    new-instance v1, La/b/a/r/d;

    const-string v2, "Unsupported texture format (only 2D texture are supported in LibGdx for the time being)"

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_24
    new-instance v1, La/b/a/r/d;

    const-string v2, "numberOfFaces must be either 1 or 6"

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_25
    new-instance v1, La/b/a/r/d;

    const-string v2, "either both or none of glType, glFormat must be zero"

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_26
    new-instance v1, La/b/a/r/d;

    const-string v2, "Call prepare() before calling consumeCompressedData()"

    invoke-direct {v1, v2}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    throw v1

    :goto_12
    goto :goto_11
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, La/b/a/o/n/f;->e:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, La/b/a/o/n/f;->f:I

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
    iget-object v0, p0, La/b/a/o/n/f;->l:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    .locals 2

    .line 1
    new-instance v0, La/b/a/r/d;

    const-string v1, "This TextureData implementation directly handles texture formats."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/f;->m:Z

    return v0
.end method
