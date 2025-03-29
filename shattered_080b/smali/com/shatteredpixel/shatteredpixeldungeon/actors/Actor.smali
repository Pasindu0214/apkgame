.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.super Ljava/lang/Object;
.source "Actor.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# static fields
.field public static all:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;",
            ">;"
        }
    .end annotation
.end field

.field public static chars:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor; = null

.field public static ids:Lcom/watabou/utils/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/SparseArray<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;",
            ">;"
        }
    .end annotation
.end field

.field public static keepActorThreadAlive:Z = false

.field public static nextID:I = 0x1

.field public static now:F


# instance fields
.field public actPriority:I

.field public id:I

.field public time:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars:Ljava/util/HashSet;

    .line 3
    new-instance v0, Lcom/watabou/utils/SparseArray;

    invoke-direct {v0}, Lcom/watabou/utils/SparseArray;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->ids:Lcom/watabou/utils/SparseArray;

    const/4 v0, 0x0

    .line 4
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->keepActorThreadAlive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const/16 v0, -0x64

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method

.method public static add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V
    .locals 1

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    return-void
.end method

.method public static declared-synchronized add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V
    .locals 3

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->ids:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lcom/watabou/utils/SparseArray;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->onAdd()V

    .line 8
    instance-of p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz p1, :cond_2

    .line 9
    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 10
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 12
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 13
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V
    .locals 1

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    add-float/2addr v0, p1

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    return-void
.end method

.method public static declared-synchronized all()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized chars()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->ids:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1}, La/b/a/r/g;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->ids:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v1, p0}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;
    .locals 4

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 2
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p0, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p0, 0x0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method public static declared-synchronized fixTime()V
    .locals 5

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    :try_start_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    .line 3
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    .line 4
    iget v1, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    goto :goto_0

    :cond_2
    float-to-int v1, v1

    int-to-float v1, v1

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    .line 6
    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    sub-float/2addr v4, v1

    iput v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    goto :goto_1

    .line 7
    :cond_3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->duration:F

    add-float/2addr v2, v1

    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->duration:F

    .line 9
    :cond_4
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    sub-float/2addr v2, v1

    sput v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static process()V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    const/4 v3, 0x0

    .line 2
    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    if-nez v2, :cond_3

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    sput v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    .line 4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    .line 5
    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    sget v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    cmpg-float v8, v6, v7

    if-ltz v8, :cond_2

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    if-eqz v6, :cond_2

    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    iget v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    if-le v6, v7, :cond_1

    .line 6
    :cond_2
    iget v6, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    sput v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    .line 7
    sput-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    .line 9
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    .line 10
    instance-of v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v6, :cond_5

    move-object v6, v4

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v6, :cond_5

    .line 11
    :try_start_0
    move-object v6, v4

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    move-object v7, v4

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->isMoving:Z

    if-eqz v7, :cond_4

    .line 13
    move-object v7, v4

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v7, v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    .line 14
    :cond_4
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 v2, 0x1

    :cond_5
    :goto_1
    if-nez v2, :cond_7

    .line 15
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_8

    .line 16
    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    goto :goto_4

    .line 17
    :cond_8
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->act()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 18
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v6

    if-nez v6, :cond_b

    .line 19
    :cond_9
    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    :cond_a
    :goto_4
    const/4 v4, 0x0

    :cond_b
    if-nez v4, :cond_f

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4

    if-nez v2, :cond_d

    .line 21
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_d
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_e

    .line 22
    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    const/4 v2, 0x0

    .line 23
    :cond_e
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 25
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 26
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v5, v2

    .line 27
    :catch_1
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v2, v5

    goto :goto_8

    :catchall_2
    move-exception v1

    .line 28
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    .line 29
    :goto_7
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 30
    :cond_f
    :goto_8
    sget-boolean v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->keepActorThreadAlive:Z

    if-nez v3, :cond_0

    return-void
.end method

.method public static declared-synchronized remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V
    .locals 2

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->all:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->onRemove()V

    .line 4
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    if-lez v1, :cond_0

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->ids:Lcom/watabou/utils/SparseArray;

    iget p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    invoke-virtual {v1, p0}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static restoreNextID(Lcom/watabou/utils/Bundle;)V
    .locals 1

    const-string v0, "nextid"

    .line 1
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->nextID:I

    return-void
.end method


# virtual methods
.method public abstract act()Z
.end method

.method public cooldown()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public id()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->nextID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->nextID:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    return v0
.end method

.method public next()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->current:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    :cond_0
    return-void
.end method

.method public onAdd()V
    .locals 0

    return-void
.end method

.method public onRemove()V
    .locals 0

    return-void
.end method

.method public postpone(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    add-float v2, v1, p1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    add-float/2addr v1, p1

    .line 2
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const/high16 p1, 0x3f800000    # 1.0f

    rem-float/2addr v1, p1

    .line 3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 4
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    :cond_0
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    const-string v0, "time"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    return-void
.end method

.method public spend(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const/high16 p1, 0x3f800000    # 1.0f

    rem-float/2addr v0, p1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    :cond_0
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
