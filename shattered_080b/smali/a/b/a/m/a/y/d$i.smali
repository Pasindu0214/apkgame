.class public La/b/a/m/a/y/d$i;
.super Ljava/lang/Thread;
.source "GLSurfaceViewAPI18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/m/a/y/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:La/b/a/m/a/y/d$h;

.field public t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "La/b/a/m/a/y/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "La/b/a/m/a/y/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/b/a/m/a/y/d$i;->q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, La/b/a/m/a/y/d$i;->r:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, La/b/a/m/a/y/d$i;->l:I

    .line 5
    iput v1, p0, La/b/a/m/a/y/d$i;->m:I

    .line 6
    iput-boolean v0, p0, La/b/a/m/a/y/d$i;->o:Z

    .line 7
    iput v0, p0, La/b/a/m/a/y/d$i;->n:I

    .line 8
    iput-object p1, p0, La/b/a/m/a/y/d$i;->t:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, La/b/a/m/a/y/d$i;->n:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 20
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iput p1, p0, La/b/a/m/a/y/d$i;->n:I

    .line 23
    sget-object p1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 2

    .line 5
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput p1, p0, La/b/a/m/a/y/d$i;->l:I

    .line 8
    iput p2, p0, La/b/a/m/a/y/d$i;->m:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, La/b/a/m/a/y/d$i;->r:Z

    .line 10
    iput-boolean p1, p0, La/b/a/m/a/y/d$i;->o:Z

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, La/b/a/m/a/y/d$i;->p:Z

    .line 12
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    :goto_0
    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->b:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->p:Z

    if-nez v1, :cond_1

    .line 15
    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, La/b/a/m/a/y/d$i;->e()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 16
    :try_start_1
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 19
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final b()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    new-instance v0, La/b/a/m/a/y/d$h;

    iget-object v2, v1, La/b/a/m/a/y/d$i;->t:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, La/b/a/m/a/y/d$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, La/b/a/m/a/y/d$i;->s:La/b/a/m/a/y/d$h;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->h:Z

    .line 3
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->i:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4
    :goto_0
    :try_start_0
    sget-object v15, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 5
    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 6
    :goto_1
    :try_start_1
    iget-boolean v2, v1, La/b/a/m/a/y/d$i;->a:Z

    if-eqz v2, :cond_0

    .line 7
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 8
    sget-object v2, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_2
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->i()V

    .line 11
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->h()V

    .line 12
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 13
    :cond_0
    :try_start_3
    iget-object v2, v1, La/b/a/m/a/y/d$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    iget-object v2, v1, La/b/a/m/a/y/d$i;->q:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_9

    .line 15
    :cond_1
    iget-boolean v2, v1, La/b/a/m/a/y/d$i;->d:Z

    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->c:Z

    if-eq v2, v0, :cond_2

    .line 16
    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->c:Z

    .line 17
    iget-boolean v2, v1, La/b/a/m/a/y/d$i;->c:Z

    iput-boolean v2, v1, La/b/a/m/a/y/d$i;->d:Z

    .line 18
    sget-object v2, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_2
    iget-boolean v2, v1, La/b/a/m/a/y/d$i;->k:Z

    if-eqz v2, :cond_3

    .line 21
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->i()V

    .line 22
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->h()V

    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v1, La/b/a/m/a/y/d$i;->k:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 24
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->i()V

    .line 25
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->h()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 26
    iget-boolean v2, v1, La/b/a/m/a/y/d$i;->i:Z

    if-eqz v2, :cond_5

    .line 27
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->i()V

    :cond_5
    if-eqz v0, :cond_8

    .line 28
    iget-boolean v2, v1, La/b/a/m/a/y/d$i;->h:Z

    if-eqz v2, :cond_8

    .line 29
    iget-object v2, v1, La/b/a/m/a/y/d$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/m/a/y/d;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    .line 30
    :cond_6
    iget-boolean v2, v2, La/b/a/m/a/y/d;->k:Z

    :goto_3
    if-eqz v2, :cond_7

    .line 31
    sget-object v2, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 32
    invoke-virtual {v2}, La/b/a/m/a/y/d$j;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 33
    :cond_7
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->h()V

    :cond_8
    if-eqz v0, :cond_9

    .line 34
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 35
    invoke-virtual {v0}, La/b/a/m/a/y/d$j;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, v1, La/b/a/m/a/y/d$i;->s:La/b/a/m/a/y/d$h;

    invoke-virtual {v0}, La/b/a/m/a/y/d$h;->c()V

    .line 37
    :cond_9
    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->g:Z

    if-nez v0, :cond_b

    .line 38
    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->i:Z

    if-eqz v0, :cond_a

    .line 39
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->i()V

    :cond_a
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->g:Z

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->f:Z

    .line 42
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    :cond_b
    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->e:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->g:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->g:Z

    .line 46
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v4, :cond_d

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->p:Z

    .line 49
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 51
    :cond_d
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->e()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 52
    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->h:Z

    if-nez v0, :cond_14

    if-eqz v5, :cond_e

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto :goto_7

    .line 53
    :cond_e
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 54
    iget-object v2, v0, La/b/a/m/a/y/d$j;->f:La/b/a/m/a/y/d$i;

    if-eq v2, v1, :cond_12

    if-nez v2, :cond_f

    goto :goto_4

    .line 55
    :cond_f
    invoke-virtual {v0}, La/b/a/m/a/y/d$j;->a()V

    .line 56
    iget-boolean v2, v0, La/b/a/m/a/y/d$j;->d:Z

    if-eqz v2, :cond_10

    goto :goto_5

    .line 57
    :cond_10
    iget-object v0, v0, La/b/a/m/a/y/d$j;->f:La/b/a/m/a/y/d$i;

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    .line 58
    iput-boolean v2, v0, La/b/a/m/a/y/d$i;->k:Z

    .line 59
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_11
    const/4 v0, 0x0

    goto :goto_6

    .line 61
    :cond_12
    :goto_4
    iput-object v1, v0, La/b/a/m/a/y/d$j;->f:La/b/a/m/a/y/d$i;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_14

    .line 63
    :try_start_4
    iget-object v0, v1, La/b/a/m/a/y/d$i;->s:La/b/a/m/a/y/d$h;

    invoke-virtual {v0}, La/b/a/m/a/y/d$h;->d()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    .line 64
    :try_start_5
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->h:Z

    .line 65
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    .line 67
    sget-object v2, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 68
    iget-object v3, v2, La/b/a/m/a/y/d$j;->f:La/b/a/m/a/y/d$i;

    if-ne v3, v1, :cond_13

    const/4 v3, 0x0

    .line 69
    iput-object v3, v2, La/b/a/m/a/y/d$j;->f:La/b/a/m/a/y/d$i;

    .line 70
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 71
    throw v0

    :cond_14
    const/4 v2, 0x0

    .line 72
    :goto_7
    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->h:Z

    if-eqz v0, :cond_15

    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->i:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->i:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 74
    :cond_15
    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->i:Z

    if-eqz v0, :cond_28

    .line 75
    iget-boolean v0, v1, La/b/a/m/a/y/d$i;->r:Z

    if-eqz v0, :cond_16

    .line 76
    iget v0, v1, La/b/a/m/a/y/d$i;->l:I

    .line 77
    iget v8, v1, La/b/a/m/a/y/d$i;->m:I

    const/4 v10, 0x0

    .line 78
    iput-boolean v10, v1, La/b/a/m/a/y/d$i;->r:Z

    move v11, v0

    move v12, v8

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_8

    :cond_16
    const/4 v0, 0x0

    .line 79
    :goto_8
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->o:Z

    .line 80
    sget-object v16, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 81
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->notifyAll()V

    .line 82
    :goto_9
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v14, :cond_17

    .line 83
    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    move-object v14, v2

    goto/16 :goto_0

    :cond_17
    if-eqz v8, :cond_19

    .line 84
    iget-object v15, v1, La/b/a/m/a/y/d$i;->s:La/b/a/m/a/y/d$h;

    invoke-virtual {v15}, La/b/a/m/a/y/d$h;->a()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 85
    sget-object v8, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 86
    monitor-enter v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v15, 0x1

    .line 87
    :try_start_7
    iput-boolean v15, v1, La/b/a/m/a/y/d$i;->j:Z

    .line 88
    sget-object v15, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 89
    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit v8

    goto :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 91
    :cond_18
    sget-object v15, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 92
    monitor-enter v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v0, 0x1

    .line 93
    :try_start_9
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->j:Z

    .line 94
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->f:Z

    .line 95
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit v15

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_19
    move v0, v8

    :goto_a
    if-eqz v9, :cond_1e

    .line 98
    iget-object v6, v1, La/b/a/m/a/y/d$i;->s:La/b/a/m/a/y/d$h;

    .line 99
    iget-object v8, v6, La/b/a/m/a/y/d$h;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v8}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v8

    .line 100
    iget-object v6, v6, La/b/a/m/a/y/d$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/b/a/m/a/y/d;

    if-eqz v6, :cond_1d

    .line 101
    iget-object v9, v6, La/b/a/m/a/y/d;->h:La/b/a/m/a/y/d$k;

    if-eqz v9, :cond_1a

    .line 102
    invoke-interface {v9, v8}, La/b/a/m/a/y/d$k;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v8

    .line 103
    :cond_1a
    iget v9, v6, La/b/a/m/a/y/d;->i:I

    and-int/lit8 v15, v9, 0x3

    if-eqz v15, :cond_1d

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1b

    const/4 v9, 0x1

    goto :goto_b

    :cond_1b
    const/4 v9, 0x0

    .line 104
    :goto_b
    iget v6, v6, La/b/a/m/a/y/d;->i:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1c

    .line 105
    new-instance v6, La/b/a/m/a/y/d$l;

    invoke-direct {v6}, La/b/a/m/a/y/d$l;-><init>()V

    goto :goto_c

    :cond_1c
    move-object v6, v2

    .line 106
    :goto_c
    invoke-static {v8, v9, v6}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v8

    .line 107
    :cond_1d
    move-object v6, v8

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    .line 108
    sget-object v8, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 109
    invoke-virtual {v8, v6}, La/b/a/m/a/y/d$j;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v9, 0x0

    :cond_1e
    if-eqz v7, :cond_20

    .line 110
    iget-object v7, v1, La/b/a/m/a/y/d$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La/b/a/m/a/y/d;

    if-eqz v7, :cond_1f

    .line 111
    iget-object v7, v7, La/b/a/m/a/y/d;->c:Landroid/opengl/GLSurfaceView$Renderer;

    .line 112
    iget-object v8, v1, La/b/a/m/a/y/d$i;->s:La/b/a/m/a/y/d$h;

    iget-object v8, v8, La/b/a/m/a/y/d$h;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v7, v6, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_1f
    const/4 v7, 0x0

    :cond_20
    if-eqz v10, :cond_22

    .line 113
    iget-object v8, v1, La/b/a/m/a/y/d$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/b/a/m/a/y/d;

    if-eqz v8, :cond_21

    .line 114
    iget-object v8, v8, La/b/a/m/a/y/d;->c:Landroid/opengl/GLSurfaceView$Renderer;

    .line 115
    invoke-interface {v8, v6, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_21
    const/4 v10, 0x0

    .line 116
    :cond_22
    iget-object v8, v1, La/b/a/m/a/y/d$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/b/a/m/a/y/d;

    if-eqz v8, :cond_23

    .line 117
    iget-object v8, v8, La/b/a/m/a/y/d;->c:Landroid/opengl/GLSurfaceView$Renderer;

    .line 118
    invoke-interface {v8, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 119
    :cond_23
    iget-object v8, v1, La/b/a/m/a/y/d$i;->s:La/b/a/m/a/y/d$h;

    .line 120
    iget-object v15, v8, La/b/a/m/a/y/d$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v8, La/b/a/m/a/y/d$h;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    move/from16 v17, v0

    iget-object v0, v8, La/b/a/m/a/y/d$h;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v15, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    const/16 v2, 0x3000

    if-nez v0, :cond_24

    .line 121
    iget-object v0, v8, La/b/a/m/a/y/d$h;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    goto :goto_d

    :cond_24
    const/16 v0, 0x3000

    :goto_d
    if-eq v0, v2, :cond_26

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_25

    const-string v2, "GLThread"

    const-string v8, "eglSwapBuffers"

    .line 122
    invoke-static {v8, v0}, La/b/a/m/a/y/d$h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v2, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 124
    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v0, 0x1

    .line 125
    :try_start_b
    iput-boolean v0, v1, La/b/a/m/a/y/d$i;->f:Z

    .line 126
    sget-object v8, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 127
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v2

    goto :goto_e

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_25
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_e

    :cond_26
    const/4 v0, 0x1

    :goto_e
    move/from16 v8, v17

    if-eqz v13, :cond_27

    const/4 v4, 0x1

    :cond_27
    :goto_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 129
    :cond_28
    :try_start_d
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    .line 131
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 132
    sget-object v2, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 133
    monitor-enter v2

    .line 134
    :try_start_f
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->i()V

    .line 135
    invoke-virtual/range {p0 .. p0}, La/b/a/m/a/y/d$i;->h()V

    .line 136
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method

.method public c()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 2
    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, La/b/a/m/a/y/d$i;->c:Z

    .line 4
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :goto_0
    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public d()V
    .locals 3

    .line 1
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, La/b/a/m/a/y/d$i;->c:Z

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, La/b/a/m/a/y/d$i;->o:Z

    .line 5
    iput-boolean v1, p0, La/b/a/m/a/y/d$i;->p:Z

    .line 6
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    :goto_0
    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 9
    :try_start_1
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 12
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/m/a/y/d$i;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, La/b/a/m/a/y/d$i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La/b/a/m/a/y/d$i;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, La/b/a/m/a/y/d$i;->l:I

    if-lez v0, :cond_0

    iget v0, p0, La/b/a/m/a/y/d$i;->m:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, La/b/a/m/a/y/d$i;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, La/b/a/m/a/y/d$i;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public f()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 2
    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, La/b/a/m/a/y/d$i;->a:Z

    .line 4
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :goto_0
    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public g()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 2
    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, La/b/a/m/a/y/d$i;->o:Z

    .line 4
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/m/a/y/d$i;->h:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, La/b/a/m/a/y/d$i;->s:La/b/a/m/a/y/d$h;

    invoke-virtual {v0}, La/b/a/m/a/y/d$h;->c()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, La/b/a/m/a/y/d$i;->h:Z

    .line 4
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 5
    iget-object v1, v0, La/b/a/m/a/y/d$j;->f:La/b/a/m/a/y/d$i;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, La/b/a/m/a/y/d$j;->f:La/b/a/m/a/y/d$i;

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/m/a/y/d$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, La/b/a/m/a/y/d$i;->i:Z

    .line 3
    iget-object v0, p0, La/b/a/m/a/y/d$i;->s:La/b/a/m/a/y/d$h;

    .line 4
    invoke-virtual {v0}, La/b/a/m/a/y/d$h;->b()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 2
    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, La/b/a/m/a/y/d$i;->e:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, La/b/a/m/a/y/d$i;->j:Z

    .line 5
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    :goto_0
    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 8
    :try_start_1
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public k()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, La/b/a/m/a/y/d$i;->e:Z

    .line 4
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :goto_0
    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, La/b/a/m/a/y/d$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public run()V
    .locals 3

    const-string v0, "GLThread "

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, La/b/a/m/a/y/d$i;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 4
    invoke-virtual {v1, p0}, La/b/a/m/a/y/d$j;->a(La/b/a/m/a/y/d$i;)V

    throw v0

    .line 5
    :catch_0
    :goto_0
    sget-object v0, La/b/a/m/a/y/d;->l:La/b/a/m/a/y/d$j;

    .line 6
    invoke-virtual {v0, p0}, La/b/a/m/a/y/d$j;->a(La/b/a/m/a/y/d$i;)V

    return-void
.end method
