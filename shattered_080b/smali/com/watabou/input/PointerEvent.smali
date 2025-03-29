.class public Lcom/watabou/input/PointerEvent;
.super Ljava/lang/Object;
.source "PointerEvent.java"


# static fields
.field public static activePointers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/watabou/input/PointerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static pointerEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/input/PointerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static pointerSignal:Lcom/watabou/utils/Signal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/Signal<",
            "Lcom/watabou/input/PointerEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public current:Lcom/watabou/utils/PointF;

.field public down:Z

.field public id:I

.field public start:Lcom/watabou/utils/PointF;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/utils/Signal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/watabou/utils/Signal;-><init>(Z)V

    sput-object v0, Lcom/watabou/input/PointerEvent;->pointerSignal:Lcom/watabou/utils/Signal;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/watabou/input/PointerEvent;->pointerEvents:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/watabou/input/PointerEvent;->activePointers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/watabou/utils/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Lcom/watabou/utils/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iput-object v0, p0, Lcom/watabou/input/PointerEvent;->start:Lcom/watabou/utils/PointF;

    .line 3
    iput p3, p0, Lcom/watabou/input/PointerEvent;->id:I

    .line 4
    iput-boolean p4, p0, Lcom/watabou/input/PointerEvent;->down:Z

    return-void
.end method

.method public static declared-synchronized addPointerEvent(Lcom/watabou/input/PointerEvent;)V
    .locals 2

    const-class v0, Lcom/watabou/input/PointerEvent;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/input/PointerEvent;->pointerEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized processPointerEvents()V
    .locals 6

    const-class v0, Lcom/watabou/input/PointerEvent;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/input/PointerEvent;->pointerEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/input/PointerEvent;

    .line 2
    sget-object v3, Lcom/watabou/input/PointerEvent;->activePointers:Ljava/util/HashMap;

    iget v4, v2, Lcom/watabou/input/PointerEvent;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    sget-object v3, Lcom/watabou/input/PointerEvent;->activePointers:Ljava/util/HashMap;

    iget v4, v2, Lcom/watabou/input/PointerEvent;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/watabou/input/PointerEvent;

    .line 4
    iget-object v4, v2, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iput-object v4, v3, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    .line 5
    iget-boolean v4, v3, Lcom/watabou/input/PointerEvent;->down:Z

    iget-boolean v5, v2, Lcom/watabou/input/PointerEvent;->down:Z

    if-ne v4, v5, :cond_0

    .line 6
    sget-object v2, Lcom/watabou/input/PointerEvent;->pointerSignal:Lcom/watabou/utils/Signal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/watabou/utils/Signal;->dispatch(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v2, v2, Lcom/watabou/input/PointerEvent;->down:Z

    if-eqz v2, :cond_1

    .line 8
    sget-object v2, Lcom/watabou/input/PointerEvent;->pointerSignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v2, v3}, Lcom/watabou/utils/Signal;->dispatch(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Lcom/watabou/input/PointerEvent;->activePointers:Ljava/util/HashMap;

    iget v4, v3, Lcom/watabou/input/PointerEvent;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Lcom/watabou/input/PointerEvent;->pointerSignal:Lcom/watabou/utils/Signal;

    const/4 v4, 0x0

    .line 11
    iput-boolean v4, v3, Lcom/watabou/input/PointerEvent;->down:Z

    .line 12
    invoke-virtual {v2, v3}, Lcom/watabou/utils/Signal;->dispatch(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-boolean v3, v2, Lcom/watabou/input/PointerEvent;->down:Z

    if-eqz v3, :cond_3

    .line 14
    sget-object v3, Lcom/watabou/input/PointerEvent;->activePointers:Ljava/util/HashMap;

    iget v4, v2, Lcom/watabou/input/PointerEvent;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    sget-object v3, Lcom/watabou/input/PointerEvent;->pointerSignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v3, v2}, Lcom/watabou/utils/Signal;->dispatch(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_4
    sget-object v1, Lcom/watabou/input/PointerEvent;->pointerEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
