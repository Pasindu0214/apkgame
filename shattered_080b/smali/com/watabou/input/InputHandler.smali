.class public Lcom/watabou/input/InputHandler;
.super La/b/a/h;
.source "InputHandler.java"


# static fields
.field public static pointerHoverPos:Lcom/watabou/utils/PointF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0}, Lcom/watabou/utils/PointF;-><init>()V

    sput-object v0, Lcom/watabou/input/InputHandler;->pointerHoverPos:Lcom/watabou/utils/PointF;

    return-void
.end method

.method public constructor <init>(La/b/a/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La/b/a/h;-><init>()V

    .line 2
    invoke-interface {p1, p0}, La/b/a/g;->a(La/b/a/h;)V

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 3
    invoke-interface {p1, v1, v0}, La/b/a/g;->a(IZ)V

    const/16 v1, 0x52

    .line 4
    invoke-interface {p1, v1, v0}, La/b/a/g;->a(IZ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized keyDown(I)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->isKeyBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/watabou/input/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/watabou/input/KeyEvent;-><init>(IZ)V

    invoke-static {v0}, Lcom/watabou/input/KeyEvent;->addKeyEvent(Lcom/watabou/input/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keyUp(I)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->isKeyBound(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/watabou/input/KeyEvent;

    invoke-direct {v0, p1, v1}, Lcom/watabou/input/KeyEvent;-><init>(IZ)V

    invoke-static {v0}, Lcom/watabou/input/KeyEvent;->addKeyEvent(Lcom/watabou/input/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public mouseMoved(II)Z
    .locals 2

    int-to-float p1, p1

    .line 1
    sget v0, Lcom/watabou/noosa/Game;->dispWidth:I

    int-to-float v0, v0

    sget v1, Lcom/watabou/noosa/Game;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    .line 2
    sget v0, Lcom/watabou/noosa/Game;->dispHeight:I

    int-to-float v0, v0

    sget v1, Lcom/watabou/noosa/Game;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 3
    sget-object v0, Lcom/watabou/input/InputHandler;->pointerHoverPos:Lcom/watabou/utils/PointF;

    int-to-float p1, p1

    iput p1, v0, Lcom/watabou/utils/PointF;->x:F

    int-to-float p1, p2

    .line 4
    iput p1, v0, Lcom/watabou/utils/PointF;->y:F

    const/4 p1, 0x1

    return p1
.end method

.method public scrolled(I)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/input/ScrollEvent;

    sget-object v1, Lcom/watabou/input/InputHandler;->pointerHoverPos:Lcom/watabou/utils/PointF;

    invoke-direct {v0, v1, p1}, Lcom/watabou/input/ScrollEvent;-><init>(Lcom/watabou/utils/PointF;I)V

    invoke-static {v0}, Lcom/watabou/input/ScrollEvent;->addScrollEvent(Lcom/watabou/input/ScrollEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized touchDown(IIII)Z
    .locals 1

    monitor-enter p0

    int-to-float p1, p1

    .line 1
    :try_start_0
    sget p4, Lcom/watabou/noosa/Game;->dispWidth:I

    int-to-float p4, p4

    sget v0, Lcom/watabou/noosa/Game;->width:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    div-float/2addr p1, p4

    float-to-int p1, p1

    int-to-float p2, p2

    .line 2
    sget p4, Lcom/watabou/noosa/Game;->dispHeight:I

    int-to-float p4, p4

    sget v0, Lcom/watabou/noosa/Game;->height:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    div-float/2addr p2, p4

    float-to-int p2, p2

    .line 3
    new-instance p4, Lcom/watabou/input/PointerEvent;

    const/4 v0, 0x1

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/watabou/input/PointerEvent;-><init>(IIIZ)V

    invoke-static {p4}, Lcom/watabou/input/PointerEvent;->addPointerEvent(Lcom/watabou/input/PointerEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchDragged(III)Z
    .locals 2

    monitor-enter p0

    int-to-float p1, p1

    .line 1
    :try_start_0
    sget v0, Lcom/watabou/noosa/Game;->dispWidth:I

    int-to-float v0, v0

    sget v1, Lcom/watabou/noosa/Game;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    .line 2
    sget v0, Lcom/watabou/noosa/Game;->dispHeight:I

    int-to-float v0, v0

    sget v1, Lcom/watabou/noosa/Game;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 3
    new-instance v0, Lcom/watabou/input/PointerEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/watabou/input/PointerEvent;-><init>(IIIZ)V

    invoke-static {v0}, Lcom/watabou/input/PointerEvent;->addPointerEvent(Lcom/watabou/input/PointerEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchUp(IIII)Z
    .locals 1

    monitor-enter p0

    int-to-float p1, p1

    .line 1
    :try_start_0
    sget p4, Lcom/watabou/noosa/Game;->dispWidth:I

    int-to-float p4, p4

    sget v0, Lcom/watabou/noosa/Game;->width:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    div-float/2addr p1, p4

    float-to-int p1, p1

    int-to-float p2, p2

    .line 2
    sget p4, Lcom/watabou/noosa/Game;->dispHeight:I

    int-to-float p4, p4

    sget v0, Lcom/watabou/noosa/Game;->height:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    div-float/2addr p2, p4

    float-to-int p2, p2

    .line 3
    new-instance p4, Lcom/watabou/input/PointerEvent;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/watabou/input/PointerEvent;-><init>(IIIZ)V

    invoke-static {p4}, Lcom/watabou/input/PointerEvent;->addPointerEvent(Lcom/watabou/input/PointerEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
