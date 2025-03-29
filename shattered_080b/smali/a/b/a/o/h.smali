.class public La/b/a/o/h;
.super Ljava/lang/Object;
.source "PixmapIO.java"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7d00

    new-array v0, v0, [B

    .line 1
    sput-object v0, La/b/a/o/h;->a:[B

    return-void
.end method

.method public static a(La/b/a/n/a;)La/b/a/o/g;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, La/b/a/o/g$c;->a(I)La/b/a/o/g$c;

    move-result-object v3

    .line 5
    new-instance v4, La/b/a/o/g;

    invoke-direct {v4, v0, v2, v3}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    .line 6
    invoke-virtual {v4}, La/b/a/o/g;->g()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    sget-object v3, La/b/a/o/h;->a:[B

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 10
    :goto_0
    :try_start_2
    sget-object v5, La/b/a/o/h;->a:[B

    invoke-virtual {v1, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0

    .line 11
    sget-object v6, La/b/a/o/h;->a:[B

    invoke-virtual {v0, v6, v2, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 12
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 15
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    return-object v4

    :catchall_1
    move-exception v0

    .line 16
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 17
    :goto_1
    :try_start_7
    new-instance v2, La/b/a/r/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read Pixmap from file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    .line 18
    :try_start_8
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 19
    :catchall_4
    :cond_1
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
