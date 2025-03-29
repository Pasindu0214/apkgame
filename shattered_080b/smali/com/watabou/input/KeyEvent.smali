.class public Lcom/watabou/input/KeyEvent;
.super Ljava/lang/Object;
.source "KeyEvent.java"


# static fields
.field public static keyEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static keySignal:Lcom/watabou/utils/Signal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/Signal<",
            "Lcom/watabou/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:I

.field public pressed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/utils/Signal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/watabou/utils/Signal;-><init>(Z)V

    sput-object v0, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/watabou/input/KeyEvent;->keyEvents:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/watabou/input/KeyEvent;->code:I

    .line 3
    iput-boolean p2, p0, Lcom/watabou/input/KeyEvent;->pressed:Z

    return-void
.end method

.method public static declared-synchronized addKeyEvent(Lcom/watabou/input/KeyEvent;)V
    .locals 2

    const-class v0, Lcom/watabou/input/KeyEvent;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/input/KeyEvent;->keyEvents:Ljava/util/ArrayList;

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

.method public static declared-synchronized processKeyEvents()V
    .locals 4

    const-class v0, Lcom/watabou/input/KeyEvent;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/input/KeyEvent;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/input/KeyEvent;

    .line 2
    sget-object v3, Lcom/watabou/input/KeyEvent;->keySignal:Lcom/watabou/utils/Signal;

    invoke-virtual {v3, v2}, Lcom/watabou/utils/Signal;->dispatch(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/watabou/input/KeyEvent;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
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
