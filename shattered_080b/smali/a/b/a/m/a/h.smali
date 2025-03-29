.class public La/b/a/m/a/h;
.super La/b/a/n/a;
.source "AndroidFileHandle.java"


# instance fields
.field public final c:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/io/File;La/b/a/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, La/b/a/n/a;-><init>(Ljava/io/File;La/b/a/d$a;)V

    .line 4
    iput-object p1, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, La/b/a/n/a;-><init>(Ljava/lang/String;La/b/a/d$a;)V

    .line 2
    iput-object p1, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)La/b/a/n/a;
    .locals 4

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, La/b/a/m/a/h;

    iget-object v1, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-direct {v0, v1, v2, p1}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;La/b/a/d$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, La/b/a/m/a/h;

    iget-object v1, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-direct {v0, v1, v2, p1}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;La/b/a/d$a;)V

    return-object v0
.end method

.method public a(Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/ByteBuffer;
    .locals 9

    .line 4
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, La/b/a/m/a/h;->k()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 7
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6

    .line 8
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, v8

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v8

    goto :goto_0

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12
    :goto_0
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

    :goto_1
    if-eqz v0, :cond_0

    .line 13
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 14
    :catchall_3
    :cond_0
    throw p1

    .line 15
    :cond_1
    invoke-super {p0, p1}, La/b/a/n/a;->a(Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 4

    .line 16
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 18
    :try_start_0
    iget-object v2, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v2, 0x0

    .line 19
    :try_start_1
    iget-object v3, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_1
    return v2

    .line 20
    :cond_1
    invoke-super {p0}, La/b/a/n/a;->a()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->e:La/b/a/d$a;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, La/b/a/e;->e:La/b/a/d;

    check-cast v1, La/b/a/m/a/i;

    .line 2
    iget-object v1, v1, La/b/a/m/a/i;->b:Ljava/lang/String;

    .line 3
    iget-object v2, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)La/b/a/n/a;
    .locals 3

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, La/b/a/e;->e:La/b/a/d;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, La/b/a/n/a;->b:La/b/a/d$a;

    check-cast v0, La/b/a/m/a/i;

    invoke-virtual {v0, p1, v1}, La/b/a/m/a/i;->a(Ljava/lang/String;La/b/a/d$a;)La/b/a/n/a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, La/b/a/r/d;

    const-string v0, "Cannot get the sibling of the root."

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Z
    .locals 3

    .line 5
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    iget-object v2, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0

    .line 7
    :cond_1
    invoke-super {p0}, La/b/a/n/a;->c()Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    iget-object v2, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-wide v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5
    :catch_1
    :cond_0
    throw v1

    :catch_2
    nop

    if-eqz v0, :cond_1

    .line 6
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 7
    :catch_3
    :cond_1
    invoke-super {p0}, La/b/a/n/a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()La/b/a/n/a;
    .locals 4

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
    new-instance v1, La/b/a/m/a/h;

    iget-object v2, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    iget-object v3, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-direct {v1, v2, v0, v3}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;La/b/a/d$a;)V

    return-object v1
.end method

.method public i()Ljava/io/InputStream;
    .locals 4

    .line 1
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-ne v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    iget-object v1, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, La/b/a/r/d;

    const-string v2, "Error reading file: "

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La/b/a/n/a;->b:La/b/a/d$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    invoke-super {p0}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/content/res/AssetFileDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m/a/h;->c:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/b/a/n/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
