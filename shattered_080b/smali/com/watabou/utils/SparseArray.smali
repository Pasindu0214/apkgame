.class public Lcom/watabou/utils/SparseArray;
.super La/b/a/r/g;
.source "SparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La/b/a/r/g<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/b/a/r/g;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, La/b/a/r/g;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keyArray()[I
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, La/b/a/r/g;->keys()La/b/a/r/g$c;

    move-result-object v0

    invoke-virtual {v0}, La/b/a/r/g$c;->toArray()La/b/a/r/f;

    move-result-object v0

    .line 2
    iget v1, v0, La/b/a/r/f;->b:I

    new-array v2, v1, [I

    .line 3
    iget-object v0, v0, La/b/a/r/f;->a:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, La/b/a/r/g;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, La/b/a/r/g;->remove(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized valueList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, La/b/a/r/g;->values()La/b/a/r/g$e;

    move-result-object v0

    .line 2
    new-instance v1, La/b/a/r/a;

    iget-object v2, v0, La/b/a/r/g$d;->b:La/b/a/r/g;

    iget v2, v2, La/b/a/r/g;->size:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, La/b/a/r/a;-><init>(ZI)V

    .line 3
    :goto_0
    iget-boolean v2, v0, La/b/a/r/g$d;->a:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, La/b/a/r/g$e;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v1, La/b/a/r/a;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 6
    iget v2, v1, La/b/a/r/a;->b:I

    .line 7
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, [Ljava/lang/Object;

    .line 9
    iget-object v2, v1, La/b/a/r/a;->a:[Ljava/lang/Object;

    iget v1, v1, La/b/a/r/a;->b:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
