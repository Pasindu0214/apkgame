.class public final Lcom/badlogic/gdx/utils/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field public static a:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->a:La/b/a/r/a;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->b:I

    return-void
.end method

.method public static a(Ljava/nio/Buffer;)I
    .locals 2

    .line 3
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    return p0

    .line 7
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    return p0

    .line 9
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0

    .line 11
    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0

    .line 13
    :cond_4
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0

    .line 15
    :cond_5
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0

    .line 17
    :cond_6
    new-instance v0, La/b/a/r/d;

    const-string v1, "Can\'t copy to a "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instance"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/nio/Buffer;I)I
    .locals 1

    .line 18
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    return p1

    .line 19
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    ushr-int/lit8 p0, p1, 0x1

    return p0

    .line 20
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    ushr-int/lit8 p0, p1, 0x1

    return p0

    .line 21
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    ushr-int/lit8 p0, p1, 0x2

    return p0

    .line 22
    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    ushr-int/lit8 p0, p1, 0x3

    return p0

    .line 23
    :cond_4
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    ushr-int/lit8 p0, p1, 0x2

    return p0

    .line 24
    :cond_5
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_6

    ushr-int/lit8 p0, p1, 0x3

    return p0

    .line 25
    :cond_6
    new-instance p1, La/b/a/r/d;

    const-string v0, "Can\'t copy to a "

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instance"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 36
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 37
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static a(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V
    .locals 2

    .line 26
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_3

    .line 27
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    :goto_0
    shl-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 29
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 30
    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    :goto_1
    shl-int/lit8 p2, p2, 0x2

    goto :goto_3

    .line 32
    :cond_5
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_6

    :goto_2
    shl-int/lit8 p2, p2, 0x3

    .line 33
    :goto_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 34
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V

    return-void

    .line 35
    :cond_6
    new-instance p1, La/b/a/r/d;

    const-string p2, "Can\'t copy to a "

    invoke-static {p2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instance"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 38
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 39
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->a:La/b/a/r/a;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/utils/BufferUtils;->a:La/b/a/r/a;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, La/b/a/r/a;->a(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->b:I

    sub-int/2addr v1, v0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->b:I

    .line 43
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->freeMemory(Ljava/nio/ByteBuffer;)V

    return-void

    .line 44
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer not allocated with newUnsafeByteBuffer or already disposed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a([BILjava/nio/Buffer;I)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 2
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->a(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([BILjava/nio/Buffer;II)V

    return-void
.end method

.method public static b(I)Ljava/nio/IntBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Z
    .locals 5

    .line 4
    sget-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->a:La/b/a/r/a;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->a:La/b/a/r/a;

    .line 6
    iget-object v2, v1, La/b/a/r/a;->a:[Ljava/lang/Object;

    .line 7
    iget v1, v1, La/b/a/r/a;->b:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 8
    aget-object v1, v2, v1

    if-ne v1, p0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 9
    :goto_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static c(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->b:I

    add-int/2addr v1, p0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->b:I

    .line 4
    sget-object p0, Lcom/badlogic/gdx/utils/BufferUtils;->a:La/b/a/r/a;

    monitor-enter p0

    .line 5
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->a:La/b/a/r/a;

    invoke-virtual {v1, v0}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static native copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V
.end method

.method public static native copyJni([BILjava/nio/Buffer;II)V
.end method

.method public static native freeMemory(Ljava/nio/ByteBuffer;)V
.end method

.method public static native newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;
.end method
