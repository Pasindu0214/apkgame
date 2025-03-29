.class public La/b/a/q/a;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/q/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:La/b/a/r/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/j<",
            "La/b/a/j$a;",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final c:La/b/a/r/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/j<",
            "La/b/a/j$a;",
            "La/b/a/j$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, La/b/a/q/a$a;

    invoke-direct {v7, p0}, La/b/a/q/a$a;-><init>(La/b/a/q/a;)V

    const/4 v1, 0x0

    const-wide/16 v3, 0x3c

    move-object v0, v8

    move v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, La/b/a/q/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance p1, La/b/a/r/j;

    invoke-direct {p1}, La/b/a/r/j;-><init>()V

    iput-object p1, p0, La/b/a/q/a;->b:La/b/a/r/j;

    .line 4
    new-instance p1, La/b/a/r/j;

    invoke-direct {p1}, La/b/a/r/j;-><init>()V

    iput-object p1, p0, La/b/a/q/a;->c:La/b/a/r/j;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(La/b/a/j$a;)La/b/a/j$c;
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, La/b/a/q/a;->c:La/b/a/r/j;

    invoke-virtual {v0, p1}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/b/a/j$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(La/b/a/j$a;La/b/a/j$c;Ljava/net/HttpURLConnection;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La/b/a/q/a;->b:La/b/a/r/j;

    invoke-virtual {v0, p1, p3}, La/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p3, p0, La/b/a/q/a;->c:La/b/a/r/j;

    invoke-virtual {p3, p1, p2}, La/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(La/b/a/j$a;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La/b/a/q/a;->b:La/b/a/r/j;

    invoke-virtual {v0, p1}, La/b/a/r/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, La/b/a/q/a;->c:La/b/a/r/j;

    invoke-virtual {v0, p1}, La/b/a/r/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
