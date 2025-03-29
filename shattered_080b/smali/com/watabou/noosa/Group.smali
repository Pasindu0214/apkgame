.class public Lcom/watabou/noosa/Group;
.super Lcom/watabou/noosa/Gizmo;
.source "Group.java"


# static fields
.field public static freezeEmitters:Z = false


# instance fields
.field public length:I

.field public members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/noosa/Gizmo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Gizmo;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/watabou/noosa/Group;->length:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcom/watabou/noosa/Group;->length:I

    if-ge v0, v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iput-object p0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 12
    iget v0, p0, Lcom/watabou/noosa/Group;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/watabou/noosa/Group;->length:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-ne v0, p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->sendToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object p1

    .line 10
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 11
    iput-object p0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 12
    iget v0, p0, Lcom/watabou/noosa/Group;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/watabou/noosa/Group;->length:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    :cond_1
    iget v0, p0, Lcom/watabou/noosa/Group;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 6
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object p0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-object p1

    .line 11
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iput-object p0, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 13
    iget v0, p0, Lcom/watabou/noosa/Group;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/watabou/noosa/Group;->length:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized bringToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/watabou/noosa/Group;->length:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/noosa/Gizmo;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 3
    iput-object v3, v2, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    iput v0, p0, Lcom/watabou/noosa/Group;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized countLiving()I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/watabou/noosa/Group;->length:I

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/noosa/Gizmo;

    if-eqz v2, :cond_0

    .line 3
    iget-boolean v3, v2, Lcom/watabou/noosa/Gizmo;->exists:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lcom/watabou/noosa/Gizmo;->alive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized destroy()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lcom/watabou/noosa/Group;->length:I

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/watabou/noosa/Gizmo;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/watabou/noosa/Gizmo;->destroy()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 7
    iput-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    .line 8
    :cond_2
    iput v1, p0, Lcom/watabou/noosa/Group;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized draw()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/watabou/noosa/Group;->length:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/Gizmo;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->exists:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->draw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized erase(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object v2, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFirstAvailable(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/watabou/noosa/Gizmo;",
            ">;)",
            "Lcom/watabou/noosa/Gizmo;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/watabou/noosa/Group;->length:I

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/Gizmo;

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->exists:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_1

    .line 4
    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized kill()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/watabou/noosa/Group;->length:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/Gizmo;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->exists:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->kill()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/watabou/noosa/Gizmo;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/watabou/noosa/Gizmo;",
            ">;)",
            "Lcom/watabou/noosa/Gizmo;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->getFirstAvailable(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/watabou/noosa/Gizmo;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 6
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/watabou/noosa/Group;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/watabou/noosa/Group;->length:I

    .line 3
    iput-object v1, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/watabou/noosa/Group;->length:I

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/watabou/noosa/Group;->members:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/noosa/Gizmo;

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->exists:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/watabou/noosa/Group;->freezeEmitters:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/watabou/noosa/Game;->timeTotal:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    instance-of v2, v1, Lcom/watabou/noosa/particles/Emitter;

    if-nez v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
