.class public Lcom/watabou/utils/Signal;
.super Ljava/lang/Object;
.source "Signal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/watabou/utils/Signal$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public listeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/watabou/utils/Signal$Listener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public stackMode:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/watabou/utils/Signal;->listeners:Ljava/util/LinkedList;

    .line 3
    iput-boolean p1, p0, Lcom/watabou/utils/Signal;->stackMode:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/watabou/utils/Signal$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/watabou/utils/Signal$Listener<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Signal;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/watabou/utils/Signal;->stackMode:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/watabou/utils/Signal;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/watabou/utils/Signal;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dispatch(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Signal;->listeners:Ljava/util/LinkedList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/watabou/utils/Signal$Listener;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/watabou/utils/Signal$Listener;

    .line 2
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 3
    iget-object v4, p0, Lcom/watabou/utils/Signal;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-interface {v3, p1}, Lcom/watabou/utils/Signal$Listener;->onSignal(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized remove(Lcom/watabou/utils/Signal$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/watabou/utils/Signal$Listener<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Signal;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAll()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Signal;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(Lcom/watabou/utils/Signal$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/watabou/utils/Signal$Listener<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/watabou/utils/Signal;->removeAll()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/watabou/utils/Signal;->add(Lcom/watabou/utils/Signal$Listener;)V
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
