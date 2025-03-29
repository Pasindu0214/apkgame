.class public final enum Lcom/watabou/noosa/audio/Music;
.super Ljava/lang/Enum;
.source "Music.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/watabou/noosa/audio/Music;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/watabou/noosa/audio/Music;

.field public static final enum INSTANCE:Lcom/watabou/noosa/audio/Music;


# instance fields
.field public enabled:Z

.field public lastPlayed:Ljava/lang/String;

.field public looping:Z

.field public player:La/b/a/l/a;

.field public volume:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/noosa/audio/Music;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/audio/Music;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/watabou/noosa/audio/Music;

    aput-object v0, v2, v1

    .line 2
    sput-object v2, Lcom/watabou/noosa/audio/Music;->$VALUES:[Lcom/watabou/noosa/audio/Music;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/watabou/noosa/audio/Music;->enabled:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/watabou/noosa/audio/Music;->volume:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/watabou/noosa/audio/Music;
    .locals 1

    .line 1
    const-class v0, Lcom/watabou/noosa/audio/Music;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/watabou/noosa/audio/Music;

    return-object p0
.end method

.method public static values()[Lcom/watabou/noosa/audio/Music;
    .locals 1

    .line 1
    sget-object v0, Lcom/watabou/noosa/audio/Music;->$VALUES:[Lcom/watabou/noosa/audio/Music;

    invoke-virtual {v0}, [Lcom/watabou/noosa/audio/Music;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/watabou/noosa/audio/Music;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized enable(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/watabou/noosa/audio/Music;->enabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/audio/Music;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/audio/Music;->stop()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/watabou/noosa/audio/Music;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/watabou/noosa/audio/Music;->lastPlayed:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/watabou/noosa/audio/Music;->looping:Z

    invoke-virtual {p0, p1, v0}, Lcom/watabou/noosa/audio/Music;->play(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isPlaying()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;

    check-cast v0, La/b/a/m/a/q;

    .line 2
    iget-object v0, v0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play(Ljava/lang/String;Z)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/watabou/noosa/audio/Music;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/watabou/noosa/audio/Music;->lastPlayed:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/watabou/noosa/audio/Music;->lastPlayed:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/watabou/noosa/audio/Music;->stop()V

    .line 4
    iput-object p1, p0, Lcom/watabou/noosa/audio/Music;->lastPlayed:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/watabou/noosa/audio/Music;->looping:Z

    .line 6
    iget-boolean v0, p0, Lcom/watabou/noosa/audio/Music;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    :try_start_2
    sget-object v0, La/b/a/e;->c:La/b/a/c;

    sget-object v1, La/b/a/e;->e:La/b/a/d;

    check-cast v1, La/b/a/m/a/i;

    .line 8
    new-instance v2, La/b/a/m/a/h;

    iget-object v1, v1, La/b/a/m/a/i;->c:Landroid/content/res/AssetManager;

    sget-object v3, La/b/a/d$a;->b:La/b/a/d$a;

    invoke-direct {v2, v1, p1, v3}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    check-cast v0, La/b/a/m/a/f;

    :try_start_3
    invoke-virtual {v0, v2}, La/b/a/m/a/f;->a(La/b/a/n/a;)La/b/a/l/a;

    move-result-object p1

    iput-object p1, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;

    .line 10
    check-cast p1, La/b/a/m/a/q;

    .line 11
    iget-object p1, p1, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    if-nez p1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;

    iget p2, p0, Lcom/watabou/noosa/audio/Music;->volume:F

    check-cast p1, La/b/a/m/a/q;

    .line 14
    iget-object p1, p1, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    if-nez p1, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 16
    :goto_1
    iget-object p1, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    check-cast p1, La/b/a/m/a/q;

    :try_start_4
    invoke-virtual {p1}, La/b/a/m/a/q;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    :try_start_5
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 19
    :goto_2
    monitor-exit p0

    return-void

    .line 20
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;

    check-cast v0, La/b/a/m/a/q;

    .line 3
    iget-object v1, v0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v2, v0, La/b/a/m/a/q;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 6
    :cond_1
    iget-object v1, v0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 7
    iput-boolean v3, v0, La/b/a/m/a/q;->c:Z

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, La/b/a/m/a/q;

    :try_start_1
    invoke-virtual {v0}, La/b/a/m/a/q;->a()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized volume(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/watabou/noosa/audio/Music;->volume:F

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/audio/Music;->player:La/b/a/l/a;

    check-cast v0, La/b/a/m/a/q;

    .line 4
    iget-object v0, v0, La/b/a/m/a/q;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
