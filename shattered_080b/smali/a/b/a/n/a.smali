.class public La/b/a/n/a;
.super Ljava/lang/Object;
.source "FileHandle.java"


# instance fields
.field public a:Ljava/io/File;

.field public b:La/b/a/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;La/b/a/d$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, La/b/a/n/a;->a:Ljava/io/File;

    .line 7
    iput-object p2, p0, La/b/a/n/a;->b:La/b/a/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La/b/a/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, La/b/a/n/a;->b:La/b/a/d$a;

    .line 4
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, La/b/a/n/a;->a:Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/io/File;Z)V
    .locals 4

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 33
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 34
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 36
    aget-object v2, p0, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, La/b/a/n/a;->a(Ljava/io/File;Z)V

    goto :goto_1

    .line 37
    :cond_1
    aget-object v2, p0, v0

    invoke-static {v2}, La/b/a/n/a;->a(Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0}, La/b/a/n/a;->a(Ljava/io/File;Z)V

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)La/b/a/n/a;
    .locals 3

    .line 25
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, La/b/a/n/a;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-direct {v0, v1, p1}, La/b/a/n/a;-><init>(Ljava/io/File;La/b/a/d$a;)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, La/b/a/n/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-direct {v0, v1, p1}, La/b/a/n/a;-><init>(Ljava/io/File;La/b/a/d$a;)V

    return-object v0
.end method

.method public a(Z)Ljava/io/OutputStream;
    .locals 5

    .line 11
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->a:La/b/a/d$a;

    if-eq v0, v1, :cond_4

    .line 12
    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-eq v0, v1, :cond_3

    .line 13
    invoke-virtual {p0}, La/b/a/n/a;->g()La/b/a/n/a;

    move-result-object v0

    .line 14
    iget-object v1, v0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v2, La/b/a/d$a;->a:La/b/a/d$a;

    if-eq v1, v2, :cond_2

    .line 15
    sget-object v2, La/b/a/d$a;->b:La/b/a/d$a;

    if-eq v1, v2, :cond_1

    .line 16
    invoke-virtual {v0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 17
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, ")"

    const-string v2, " ("

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, La/b/a/r/d;

    const-string v3, "Cannot open a stream to a directory: "

    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 20
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v3, "Error writing file: "

    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 21
    :cond_1
    new-instance p1, La/b/a/r/d;

    const-string v1, "Cannot mkdirs with an internal file: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2
    new-instance p1, La/b/a/r/d;

    const-string v1, "Cannot mkdirs with a classpath file: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_3
    new-instance p1, La/b/a/r/d;

    const-string v0, "Cannot write to an internal file: "

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_4
    new-instance p1, La/b/a/r/d;

    const-string v0, "Cannot write to a classpath file: "

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/ByteBuffer;
    .locals 10

    .line 1
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->a:La/b/a/d$a;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, La/b/a/n/a;->a:Ljava/io/File;

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p1, v3, :cond_0

    const-string v3, "r"

    goto :goto_0

    :cond_0
    const-string v3, "rw"

    :goto_0
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v6, 0x0

    .line 4
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    .line 5
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 7
    :goto_1
    :try_start_3
    new-instance v1, La/b/a/r/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error memory mapping file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v0, :cond_1

    .line 8
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 9
    :catchall_3
    :cond_1
    throw p1

    .line 10
    :cond_2
    new-instance p1, La/b/a/r/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot map a classpath file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 6

    .line 27
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 28
    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    .line 29
    :cond_0
    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 30
    :cond_1
    const-class v0, La/b/a/n/a;

    const-string v2, "/"

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->c:La/b/a/d$a;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, La/b/a/e;->e:La/b/a/d;

    check-cast v1, La/b/a/m/a/i;

    .line 2
    iget-object v1, v1, La/b/a/m/a/i;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3

    .line 5
    invoke-virtual {p0}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 7
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :catchall_0
    :cond_0
    new-instance v0, La/b/a/r/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)La/b/a/n/a;
    .locals 3

    .line 3
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, La/b/a/n/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-direct {v0, v1, p1}, La/b/a/n/a;-><init>(Ljava/io/File;La/b/a/d$a;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p1, La/b/a/r/d;

    const-string v0, "Cannot get the sibling of the root."

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->a:La/b/a/d$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->a:La/b/a/d$a;

    if-eq v0, v1, :cond_1

    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v1, v1

    .line 5
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-wide v1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6
    :catchall_2
    :cond_2
    throw v1

    :catch_0
    if-eqz v0, :cond_3

    .line 7
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, La/b/a/n/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, La/b/a/n/a;

    .line 3
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    iget-object v2, p1, La/b/a/n/a;->b:La/b/a/d$a;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, La/b/a/n/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, La/b/a/n/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()La/b/a/n/a;
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->d:La/b/a/d$a;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    new-instance v1, La/b/a/n/a;

    iget-object v2, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-direct {v1, v0, v2}, La/b/a/n/a;-><init>(Ljava/io/File;La/b/a/d$a;)V

    return-object v1
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x43

    .line 2
    invoke-virtual {p0}, La/b/a/n/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public i()Ljava/io/InputStream;
    .locals 7

    .line 1
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->a:La/b/a/d$a;

    const-string v2, ")"

    const-string v3, " ("

    if-eq v0, v1, :cond_3

    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->e:La/b/a/d$a;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, La/b/a/r/d;

    const-string v4, "Cannot open a stream to a directory: "

    invoke-static {v4}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_2
    new-instance v1, La/b/a/r/d;

    const-string v4, "Error reading file: "

    invoke-static {v4}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_3
    :goto_0
    const-class v0, La/b/a/n/a;

    const-string v1, "/"

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    new-instance v0, La/b/a/r/d;

    const-string v1, "File not found: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, La/b/a/n/a;->d()J

    move-result-wide v1

    long-to-int v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x200

    .line 3
    :goto_0
    invoke-static {v0, v2}, La/b/a/r/q;->a(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    .line 5
    :goto_1
    :try_start_2
    new-instance v2, La/b/a/r/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v0, :cond_2

    .line 6
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    :catchall_2
    :cond_2
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
