.class public La/b/a/r/o;
.super Ljava/lang/Object;
.source "SharedLibraryLoader.java"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Ljava/lang/String;

.field public static final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "os.name"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, La/b/a/r/o;->a:Z

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Linux"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, La/b/a/r/o;->b:Z

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, La/b/a/r/o;->c:Z

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, La/b/a/r/o;->d:Z

    .line 5
    sput-boolean v0, La/b/a/r/o;->e:Z

    const-string v1, "os.arch"

    .line 6
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, La/b/a/r/o;->f:Z

    .line 7
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "amd64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 8
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86_64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, La/b/a/r/o;->g:Z

    const-string v1, "sun.arch.abi"

    .line 9
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    sput-object v1, La/b/a/r/o;->h:Ljava/lang/String;

    const-string v1, "moe.platform.name"

    .line 10
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iOS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "java.runtime.name"

    .line 11
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "Android Runtime"

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    sput-boolean v3, La/b/a/r/o;->e:Z

    .line 14
    sput-boolean v0, La/b/a/r/o;->a:Z

    .line 15
    sput-boolean v0, La/b/a/r/o;->b:Z

    .line 16
    sput-boolean v0, La/b/a/r/o;->c:Z

    .line 17
    sput-boolean v0, La/b/a/r/o;->g:Z

    :cond_3
    if-nez v1, :cond_4

    .line 18
    sget-boolean v1, La/b/a/r/o;->e:Z

    if-nez v1, :cond_5

    sget-boolean v1, La/b/a/r/o;->a:Z

    if-nez v1, :cond_5

    sget-boolean v1, La/b/a/r/o;->b:Z

    if-nez v1, :cond_5

    sget-boolean v1, La/b/a/r/o;->c:Z

    if-nez v1, :cond_5

    .line 19
    :cond_4
    sput-boolean v3, La/b/a/r/o;->d:Z

    .line 20
    sput-boolean v0, La/b/a/r/o;->e:Z

    .line 21
    sput-boolean v0, La/b/a/r/o;->a:Z

    .line 22
    sput-boolean v0, La/b/a/r/o;->b:Z

    .line 23
    sput-boolean v0, La/b/a/r/o;->c:Z

    .line 24
    sput-boolean v0, La/b/a/r/o;->g:Z

    .line 25
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, La/b/a/r/o;->i:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized e(Ljava/lang/String;)Z
    .locals 2

    const-class v0, La/b/a/r/o;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, La/b/a/r/o;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized f(Ljava/lang/String;)V
    .locals 2

    const-class v0, La/b/a/r/o;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, La/b/a/r/o;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 6

    .line 21
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, La/b/a/r/o;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 24
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, La/b/a/r/o;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 25
    :try_start_2
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 26
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v1, 0x1000

    :try_start_3
    new-array v1, v1, [B

    .line 27
    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 28
    :try_start_4
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    :catchall_0
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :cond_2
    return-object p3

    :cond_3
    const/4 v3, 0x0

    .line 30
    :try_start_6
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, v1

    :goto_2
    move-object v1, p2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_3
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception p2

    move-object v0, v1

    move-object v1, p2

    move-object p2, v0

    .line 31
    :goto_3
    :try_start_7
    new-instance v2, La/b/a/r/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error extracting file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nTo: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_2

    :goto_4
    if-eqz v1, :cond_4

    .line 32
    :try_start_8
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    :cond_4
    if-eqz v0, :cond_5

    .line 33
    :try_start_9
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 34
    :catchall_6
    :cond_5
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3
    :catch_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 4
    :try_start_2
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6
    :catchall_1
    throw v0

    .line 7
    :catchall_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/16 p1, 0x10

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 9
    sget-boolean v0, La/b/a/r/o;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    const-class v0, La/b/a/r/o;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-static {p1}, La/b/a/r/o;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, La/b/a/r/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    sget-boolean v2, La/b/a/r/o;->e:Z

    if-eqz v2, :cond_2

    .line 14
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, v1}, La/b/a/r/o;->b(Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-static {p1}, La/b/a/r/o;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    new-instance v2, La/b/a/r/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load shared library \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for target: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.name"

    .line 19
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, La/b/a/r/o;->g:Z

    if-eqz v1, :cond_3

    const-string v1, ", 64-bit"

    goto :goto_1

    :cond_3
    const-string v1, ", 32-bit"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;
    .locals 0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, La/b/a/r/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, La/b/a/r/o;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, La/b/a/r/o;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/libgdx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, v0, v2}, La/b/a/r/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {v0, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, v0, v3}, La/b/a/r/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    return-void

    :catchall_0
    nop

    .line 7
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/.libgdx/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1, v0, v3}, La/b/a/r/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance v3, Ljava/io/File;

    const-string v4, ".temp/"

    invoke-static {v4, v0}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1, v0, v3}, La/b/a/r/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 11
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4
    new-instance p1, La/b/a/r/d;

    invoke-direct {p1, v2}, La/b/a/r/d;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, La/b/a/r/o;->a:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, La/b/a/r/o;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "64.dll"

    goto :goto_0

    :cond_0
    const-string v0, ".dll"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_1
    sget-boolean v0, La/b/a/r/o;->b:Z

    const-string v1, "lib"

    if-eqz v0, :cond_4

    invoke-static {v1, p1}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, La/b/a/r/o;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "arm"

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, La/b/a/r/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, La/b/a/r/o;->g:Z

    if-eqz v0, :cond_3

    const-string v0, "64.so"

    goto :goto_2

    :cond_3
    const-string v0, ".so"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_4
    sget-boolean v0, La/b/a/r/o;->c:Z

    if-eqz v0, :cond_6

    invoke-static {v1, p1}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, La/b/a/r/o;->g:Z

    if-eqz v0, :cond_5

    const-string v0, "64.dylib"

    goto :goto_3

    :cond_5
    const-string v0, ".dylib"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 1
    const-class v0, La/b/a/r/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Unable to read file for extraction: "

    invoke-static {v1, p1}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
