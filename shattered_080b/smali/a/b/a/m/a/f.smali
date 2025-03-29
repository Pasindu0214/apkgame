.class public final La/b/a/m/a/f;
.super Ljava/lang/Object;
.source "AndroidAudio.java"

# interfaces
.implements La/b/a/c;


# instance fields
.field public final a:Landroid/media/SoundPool;

.field public final b:Landroid/media/AudioManager;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/b/a/m/a/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;La/b/a/m/a/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    .line 3
    iget-boolean v0, p2, La/b/a/m/a/d;->p:Z

    if-nez v0, :cond_1

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x3

    if-lt v0, v1, :cond_0

    .line 5
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    iget p2, p2, La/b/a/m/a/d;->q:I

    invoke-virtual {v0, p2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p2

    iput-object p2, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    iget p2, p2, La/b/a/m/a/d;->q:I

    const/4 v1, 0x0

    invoke-direct {v0, p2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    :goto_0
    const-string p2, "audio"

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, La/b/a/m/a/f;->b:Landroid/media/AudioManager;

    .line 12
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 13
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    .line 15
    iput-object p1, p0, La/b/a/m/a/f;->b:Landroid/media/AudioManager;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(La/b/a/n/a;)La/b/a/l/a;
    .locals 8

    .line 1
    iget-object v0, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, La/b/a/m/a/h;

    .line 3
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    .line 4
    iget-object v1, v0, La/b/a/n/a;->b:La/b/a/d$a;

    .line 5
    sget-object v2, La/b/a/d$a;->b:La/b/a/d$a;

    if-ne v1, v2, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {v0}, La/b/a/m/a/h;->k()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 8
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 9
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    .line 10
    new-instance v0, La/b/a/m/a/q;

    invoke-direct {v0, p0, v7}, La/b/a/m/a/q;-><init>(La/b/a/m/a/f;Landroid/media/MediaPlayer;)V

    .line 11
    iget-object v1, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iget-object v2, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, La/b/a/r/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading audio file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nNote: Internal audio files must be placed in the assets directory."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 15
    :cond_0
    :try_start_3
    invoke-virtual {v0}, La/b/a/m/a/h;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    .line 17
    new-instance v0, La/b/a/m/a/q;

    invoke-direct {v0, p0, v7}, La/b/a/m/a/q;-><init>(La/b/a/m/a/f;Landroid/media/MediaPlayer;)V

    .line 18
    iget-object v1, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 19
    :try_start_4
    iget-object v2, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 21
    new-instance v1, La/b/a/r/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading audio file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 22
    :cond_1
    new-instance p1, La/b/a/r/d;

    const-string v0, "Android audio is not enabled by the application config."

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 3

    .line 23
    iget-object v0, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    monitor-enter v0

    .line 25
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/m/a/q;

    .line 27
    invoke-virtual {v2}, La/b/a/m/a/q;->a()V

    goto :goto_0

    .line 28
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void

    :catchall_0
    move-exception v1

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/m/a/q;

    .line 4
    iget-object v3, v2, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 6
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 7
    iget-object v3, v2, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, v2, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v3

    .line 10
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_3
    :goto_3
    iput-boolean v4, v2, La/b/a/m/a/q;->d:Z

    :goto_4
    const/4 v3, 0x1

    .line 12
    iput-boolean v3, v2, La/b/a/m/a/q;->d:Z

    goto :goto_0

    .line 13
    :cond_4
    iput-boolean v4, v2, La/b/a/m/a/q;->d:Z

    goto :goto_0

    .line 14
    :cond_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    iget-object v0, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    return-void

    :catchall_0
    move-exception v1

    .line 16
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/m/a/q;

    iget-boolean v2, v2, La/b/a/m/a/q;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, La/b/a/m/a/f;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/m/a/q;

    invoke-virtual {v2}, La/b/a/m/a/q;->b()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
