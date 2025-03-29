.class public La/b/a/r/c;
.super Ljava/lang/Object;
.source "GdxNativesLoader.java"


# static fields
.field public static a:Z


# direct methods
.method public static declared-synchronized a()V
    .locals 3

    const-class v0, La/b/a/r/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, La/b/a/r/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_1
    sput-boolean v1, La/b/a/r/c;->a:Z

    .line 3
    new-instance v1, La/b/a/r/o;

    invoke-direct {v1}, La/b/a/r/o;-><init>()V

    const-string v2, "gdx"

    invoke-virtual {v1, v2}, La/b/a/r/o;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
