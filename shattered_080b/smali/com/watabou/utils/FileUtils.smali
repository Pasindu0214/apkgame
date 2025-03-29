.class public Lcom/watabou/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static defaultFileType:La/b/a/d$a; = null

.field public static defaultPath:Ljava/lang/String; = ""


# direct methods
.method public static bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/watabou/utils/FileUtils;->getFileHandle(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, La/b/a/n/a;->i()Ljava/io/InputStream;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/watabou/utils/Bundle;->read(Ljava/io/InputStream;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch La/b/a/r/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static bundleToFile(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/watabou/utils/FileUtils;->getFileHandle(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/b/a/n/a;->a(Z)Ljava/io/OutputStream;

    move-result-object p0

    .line 2
    invoke-static {p1, p0}, Lcom/watabou/utils/Bundle;->write(Lcom/watabou/utils/Bundle;Ljava/io/OutputStream;)Z

    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch La/b/a/r/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static deleteDir(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/watabou/utils/FileUtils;->getFileHandle(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p0}, La/b/a/n/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v2, La/b/a/d$a;->a:La/b/a/d$a;

    if-eq v1, v2, :cond_2

    .line 4
    sget-object v2, La/b/a/d$a;->b:La/b/a/d$a;

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object p0

    .line 6
    invoke-static {p0, v0}, La/b/a/n/a;->a(Ljava/io/File;Z)V

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 8
    :cond_1
    new-instance v0, La/b/a/r/d;

    const-string v1, "Cannot delete an internal file: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, La/b/a/r/d;

    const-string v1, "Cannot delete a classpath file: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/watabou/utils/FileUtils;->getFileHandle(Ljava/lang/String;)La/b/a/n/a;

    move-result-object p0

    .line 2
    iget-object v0, p0, La/b/a/n/a;->b:La/b/a/d$a;

    sget-object v1, La/b/a/d$a;->a:La/b/a/d$a;

    if-eq v0, v1, :cond_1

    .line 3
    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, La/b/a/n/a;->b()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 5
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Cannot delete an internal file: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, La/b/a/r/d;

    const-string v1, "Cannot delete a classpath file: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFileHandle(Ljava/lang/String;)La/b/a/n/a;
    .locals 4

    .line 1
    sget-object v0, Lcom/watabou/utils/FileUtils;->defaultFileType:La/b/a/d$a;

    sget-object v1, Lcom/watabou/utils/FileUtils;->defaultPath:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, La/b/a/e;->e:La/b/a/d;

    invoke-static {v1, p0}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, La/b/a/m/a/i;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, La/b/a/m/a/h;

    sget-object v1, La/b/a/d$a;->e:La/b/a/d$a;

    invoke-direct {v0, v3, p0, v1}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V

    goto :goto_0

    :cond_1
    throw v3

    .line 5
    :cond_2
    sget-object v0, La/b/a/e;->e:La/b/a/d;

    invoke-static {v1, p0}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, La/b/a/m/a/i;

    invoke-virtual {v0, p0}, La/b/a/m/a/i;->a(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v3

    goto :goto_1

    .line 6
    :cond_3
    sget-object v0, La/b/a/e;->e:La/b/a/d;

    invoke-static {v1, p0}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, La/b/a/m/a/i;

    if-eqz v0, :cond_4

    .line 7
    new-instance v0, La/b/a/m/a/h;

    sget-object v1, La/b/a/d$a;->c:La/b/a/d$a;

    invoke-direct {v0, v3, p0, v1}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_4
    throw v3

    .line 8
    :cond_5
    sget-object v0, La/b/a/e;->e:La/b/a/d;

    invoke-static {v1, p0}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, La/b/a/m/a/i;

    invoke-virtual {v0, p0}, La/b/a/m/a/i;->c(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v3

    goto :goto_1

    .line 9
    :cond_6
    sget-object v0, La/b/a/e;->e:La/b/a/d;

    invoke-static {v1, p0}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, La/b/a/m/a/i;

    invoke-virtual {v0, p0}, La/b/a/m/a/i;->b(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v3

    :goto_1
    return-object v3
.end method
