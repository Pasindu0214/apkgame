.class public La/b/a/m/a/q;
.super Ljava/lang/Object;
.source "AndroidMusic.java"

# interfaces
.implements La/b/a/l/a;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final a:La/b/a/m/a/f;

.field public b:Landroid/media/MediaPlayer;

.field public c:Z

.field public d:Z

.field public e:La/b/a/l/a$a;


# direct methods
.method public constructor <init>(La/b/a/m/a/f;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/b/a/m/a/q;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, La/b/a/m/a/q;->d:Z

    .line 4
    iput-object p1, p0, La/b/a/m/a/q;->a:La/b/a/m/a/f;

    .line 5
    iput-object p2, p0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, La/b/a/m/a/q;->e:La/b/a/l/a$a;

    .line 7
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    iput-object v1, p0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    .line 4
    iput-object v1, p0, La/b/a/m/a/q;->e:La/b/a/l/a$a;

    .line 5
    iget-object v0, p0, La/b/a/m/a/q;->a:La/b/a/m/a/f;

    iget-object v0, v0, La/b/a/m/a/f;->c:Ljava/util/List;

    monitor-enter v0

    .line 6
    :try_start_1
    iget-object v1, p0, La/b/a/m/a/q;->a:La/b/a/m/a/f;

    iget-object v1, v1, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 8
    :catchall_1
    :try_start_2
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    const-string v2, "AndroidMusic"

    const-string v3, "error while disposing AndroidMusic instance, non-fatal"

    invoke-interface {v0, v2, v3}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 9
    iput-object v1, p0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    .line 10
    iput-object v1, p0, La/b/a/m/a/q;->e:La/b/a/l/a$a;

    .line 11
    iget-object v0, p0, La/b/a/m/a/q;->a:La/b/a/m/a/f;

    iget-object v0, v0, La/b/a/m/a/f;->c:Ljava/util/List;

    monitor-enter v0

    .line 12
    :try_start_3
    iget-object v1, p0, La/b/a/m/a/q;->a:La/b/a/m/a/f;

    iget-object v1, v1, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    :goto_0
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    .line 14
    iput-object v1, p0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    .line 15
    iput-object v1, p0, La/b/a/m/a/q;->e:La/b/a/l/a$a;

    .line 16
    iget-object v1, p0, La/b/a/m/a/q;->a:La/b/a/m/a/f;

    iget-object v1, v1, La/b/a/m/a/f;->c:Ljava/util/List;

    monitor-enter v1

    .line 17
    :try_start_4
    iget-object v2, p0, La/b/a/m/a/q;->a:La/b/a/m/a/f;

    iget-object v2, v2, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_1
    iget-boolean v0, p0, La/b/a/m/a/q;->c:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, La/b/a/m/a/q;->c:Z

    .line 6
    :cond_2
    iget-object v0, p0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void

    :catch_2
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/b/a/m/a/q;->e:La/b/a/l/a$a;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, La/b/a/e;->a:La/b/a/a;

    new-instance v0, La/b/a/m/a/q$a;

    invoke-direct {v0, p0}, La/b/a/m/a/q$a;-><init>(La/b/a/m/a/q;)V

    invoke-interface {p1, v0}, La/b/a/a;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
