.class public final Lcom/badlogic/gdx/graphics/glutils/ETC1$a;
.super Ljava/lang/Object;
.source "ETC1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/glutils/ETC1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/nio/ByteBuffer;

.field public final d:I


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->a:I

    .line 3
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->b:I

    .line 4
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    .line 5
    iput p4, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->d:I

    .line 6
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->a()V

    return-void
.end method

.method public constructor <init>(La/b/a/n/a;)V
    .locals 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2800

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 8
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 10
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    .line 11
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    .line 12
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :catchall_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getWidthPKM(Ljava/nio/ByteBuffer;I)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->a:I

    .line 17
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getHeightPKM(Ljava/nio/ByteBuffer;I)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->b:I

    const/16 p1, 0x10

    .line 18
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->d:I

    .line 19
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->a()V

    return-void

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 21
    :goto_1
    :try_start_3
    new-instance v2, La/b/a/r/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load pkm file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v1, :cond_1

    .line 22
    :try_start_4
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 23
    :catchall_3
    :cond_1
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->a:I

    invoke-static {v0}, La/b/a/p/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->b:I

    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ETC1Data warning: non-power-of-two ETC1 textures may crash the driver of PowerVR GPUs"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->d:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "], compressed: "

    const-string v4, "x"

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-static {v5, v1}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->isValidPKM(Ljava/nio/ByteBuffer;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "valid"

    goto :goto_1

    :cond_1
    const-string v5, "invalid"

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pkm ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-static {v5, v1}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getWidthPKM(Ljava/nio/ByteBuffer;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {v4, v1}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getHeightPKM(Ljava/nio/ByteBuffer;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "raw ["

    .line 5
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
