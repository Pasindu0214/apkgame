.class public La/b/a/q/b;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:La/b/a/j$a;

.field public final synthetic c:Ljava/net/HttpURLConnection;

.field public final synthetic d:La/b/a/j$c;

.field public final synthetic e:La/b/a/q/a;


# direct methods
.method public constructor <init>(La/b/a/q/a;ZLa/b/a/j$a;Ljava/net/HttpURLConnection;La/b/a/j$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/q/b;->e:La/b/a/q/a;

    iput-boolean p2, p0, La/b/a/q/b;->a:Z

    iput-object p3, p0, La/b/a/q/b;->b:La/b/a/j$a;

    iput-object p4, p0, La/b/a/q/b;->c:Ljava/net/HttpURLConnection;

    iput-object p5, p0, La/b/a/q/b;->d:La/b/a/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-boolean v0, p0, La/b/a/q/b;->a:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, La/b/a/q/b;->b:La/b/a/j$a;

    .line 3
    iget-object v0, v0, La/b/a/j$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, La/b/a/q/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7
    :catchall_1
    :try_start_4
    throw v0

    .line 8
    :cond_0
    iget-object v0, p0, La/b/a/q/b;->b:La/b/a/j$a;

    .line 9
    iget-object v0, v0, La/b/a/j$a;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p0, La/b/a/q/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v2, 0x1000

    :try_start_5
    new-array v2, v2, [B

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 13
    :try_start_6
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_7
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 14
    :catchall_3
    :cond_2
    :try_start_8
    throw v0

    .line 15
    :catchall_4
    :cond_3
    :goto_1
    iget-object v0, p0, La/b/a/q/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 16
    new-instance v0, La/b/a/q/a$b;

    iget-object v1, p0, La/b/a/q/b;->c:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, La/b/a/q/a$b;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 17
    :try_start_9
    iget-object v1, p0, La/b/a/q/b;->e:La/b/a/q/a;

    iget-object v2, p0, La/b/a/q/b;->b:La/b/a/j$a;

    invoke-virtual {v1, v2}, La/b/a/q/a;->a(La/b/a/j$a;)La/b/a/j$c;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 18
    invoke-interface {v1, v0}, La/b/a/j$c;->handleHttpResponse(La/b/a/j$b;)V

    .line 19
    :cond_4
    iget-object v0, p0, La/b/a/q/b;->e:La/b/a/q/a;

    iget-object v1, p0, La/b/a/q/b;->b:La/b/a/j$a;

    invoke-virtual {v0, v1}, La/b/a/q/a;->b(La/b/a/j$a;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 20
    :try_start_a
    iget-object v0, p0, La/b/a/q/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_5
    move-exception v0

    iget-object v1, p0, La/b/a/q/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 21
    iget-object v1, p0, La/b/a/q/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 22
    :try_start_b
    iget-object v1, p0, La/b/a/q/b;->d:La/b/a/j$c;

    invoke-interface {v1, v0}, La/b/a/j$c;->failed(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 23
    iget-object v0, p0, La/b/a/q/b;->e:La/b/a/q/a;

    iget-object v1, p0, La/b/a/q/b;->b:La/b/a/j$a;

    invoke-virtual {v0, v1}, La/b/a/q/a;->b(La/b/a/j$a;)V

    :goto_2
    return-void

    :catchall_6
    move-exception v0

    iget-object v1, p0, La/b/a/q/b;->e:La/b/a/q/a;

    iget-object v2, p0, La/b/a/q/b;->b:La/b/a/j$a;

    invoke-virtual {v1, v2}, La/b/a/q/a;->b(La/b/a/j$a;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
