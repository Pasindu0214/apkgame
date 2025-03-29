.class public final La/b/a/r/q;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/r/q$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;I)[B
    .locals 4

    .line 1
    new-instance v0, La/b/a/r/q$a;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, p1}, La/b/a/r/q$a;-><init>(I)V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3
    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, La/b/a/r/q$a;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
