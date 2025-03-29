.class public Lcom/watabou/noosa/Camera;
.super Lcom/watabou/noosa/Gizmo;
.source "Camera.java"


# static fields
.field public static all:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/watabou/noosa/Camera;",
            ">;"
        }
    .end annotation
.end field

.field public static invH2:F

.field public static invW2:F

.field public static main:Lcom/watabou/noosa/Camera;


# instance fields
.field public followTarget:Lcom/watabou/noosa/Visual;

.field public fullScreen:Z

.field public height:I

.field public matrix:[F

.field public panIntensity:F

.field public panTarget:Lcom/watabou/utils/PointF;

.field public screenHeight:I

.field public screenWidth:I

.field public scroll:Lcom/watabou/utils/PointF;

.field public shakeDuration:F

.field public shakeMagX:F

.field public shakeMagY:F

.field public shakeTime:F

.field public shakeX:F

.field public shakeY:F

.field public width:I

.field public x:I

.field public y:I

.field public zoom:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/watabou/noosa/Camera;->all:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IIIIF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Gizmo;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/Camera;->shakeMagX:F

    .line 3
    iput v0, p0, Lcom/watabou/noosa/Camera;->shakeMagY:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/watabou/noosa/Camera;->shakeTime:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lcom/watabou/noosa/Camera;->shakeDuration:F

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/watabou/noosa/Camera;->followTarget:Lcom/watabou/noosa/Visual;

    .line 7
    iput v0, p0, Lcom/watabou/noosa/Camera;->panIntensity:F

    .line 8
    iput p1, p0, Lcom/watabou/noosa/Camera;->x:I

    .line 9
    iput p2, p0, Lcom/watabou/noosa/Camera;->y:I

    .line 10
    iput p3, p0, Lcom/watabou/noosa/Camera;->width:I

    .line 11
    iput p4, p0, Lcom/watabou/noosa/Camera;->height:I

    .line 12
    iput p5, p0, Lcom/watabou/noosa/Camera;->zoom:F

    int-to-float p1, p3

    mul-float p1, p1, p5

    float-to-int p1, p1

    .line 13
    iput p1, p0, Lcom/watabou/noosa/Camera;->screenWidth:I

    int-to-float p1, p4

    mul-float p1, p1, p5

    float-to-int p1, p1

    .line 14
    iput p1, p0, Lcom/watabou/noosa/Camera;->screenHeight:I

    .line 15
    new-instance p1, Lcom/watabou/utils/PointF;

    invoke-direct {p1}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object p1, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 16
    iput-object p1, p0, Lcom/watabou/noosa/Camera;->matrix:[F

    .line 17
    invoke-static {p1}, Lcom/watabou/glwrap/Matrix;->setIdentity([F)V

    return-void
.end method

.method public static declared-synchronized add(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;
    .locals 2

    const-class v0, Lcom/watabou/noosa/Camera;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/noosa/Camera;->all:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static createFullscreen(F)Lcom/watabou/noosa/Camera;
    .locals 8

    .line 1
    sget v0, Lcom/watabou/noosa/Game;->width:I

    int-to-float v0, v0

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 2
    sget v0, Lcom/watabou/noosa/Game;->height:I

    int-to-float v0, v0

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 3
    new-instance v0, Lcom/watabou/noosa/Camera;

    sget v1, Lcom/watabou/noosa/Game;->width:I

    int-to-float v1, v1

    int-to-float v2, v5

    mul-float v2, v2, p0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v3, v1, 0x2

    sget v1, Lcom/watabou/noosa/Game;->height:I

    int-to-float v1, v1

    int-to-float v2, v6

    mul-float v2, v2, p0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v4, v1, 0x2

    move-object v2, v0

    move v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/watabou/noosa/Camera;-><init>(IIIIF)V

    const/4 p0, 0x1

    .line 4
    iput-boolean p0, v0, Lcom/watabou/noosa/Camera;->fullScreen:Z

    return-object v0
.end method

.method public static declared-synchronized remove(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;
    .locals 2

    const-class v0, Lcom/watabou/noosa/Camera;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/noosa/Camera;->all:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reset(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;
    .locals 5

    const-class v0, Lcom/watabou/noosa/Camera;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/watabou/noosa/Game;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v2, v1

    sput v1, Lcom/watabou/noosa/Camera;->invW2:F

    .line 2
    sget v1, Lcom/watabou/noosa/Game;->height:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    sput v2, Lcom/watabou/noosa/Camera;->invH2:F

    .line 3
    sget-object v1, Lcom/watabou/noosa/Camera;->all:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    sget-object v3, Lcom/watabou/noosa/Camera;->all:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/watabou/noosa/Camera;

    const/4 v4, 0x0

    .line 5
    iput v4, v3, Lcom/watabou/noosa/Camera;->panIntensity:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/watabou/noosa/Camera;->all:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    invoke-static {p0}, Lcom/watabou/noosa/Camera;->add(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    sput-object p0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized updateAll()V
    .locals 5

    const-class v0, Lcom/watabou/noosa/Camera;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/noosa/Camera;->all:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2
    sget-object v3, Lcom/watabou/noosa/Camera;->all:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/watabou/noosa/Camera;

    .line 3
    iget-boolean v4, v3, Lcom/watabou/noosa/Gizmo;->exists:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/watabou/noosa/Camera;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
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


# virtual methods
.method public cameraToScreen(FF)Lcom/watabou/utils/Point;
    .locals 4

    .line 1
    new-instance v0, Lcom/watabou/utils/Point;

    iget-object v1, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/watabou/noosa/Camera;->zoom:F

    mul-float p1, p1, v2

    iget v3, p0, Lcom/watabou/noosa/Camera;->x:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    float-to-int p1, p1

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr p2, v1

    mul-float p2, p2, v2

    iget v1, p0, Lcom/watabou/noosa/Camera;->y:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-direct {v0, p1, p2}, Lcom/watabou/utils/Point;-><init>(II)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/watabou/noosa/Camera;->panIntensity:F

    return-void
.end method

.method public resize(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/watabou/noosa/Camera;->width:I

    .line 2
    iput p2, p0, Lcom/watabou/noosa/Camera;->height:I

    int-to-float p1, p1

    .line 3
    iget v0, p0, Lcom/watabou/noosa/Camera;->zoom:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/watabou/noosa/Camera;->screenWidth:I

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 4
    iput p1, p0, Lcom/watabou/noosa/Camera;->screenHeight:I

    return-void
.end method

.method public screenToCamera(II)Lcom/watabou/utils/PointF;
    .locals 4

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Camera;->x:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/watabou/noosa/Camera;->zoom:F

    div-float/2addr p1, v1

    iget-object v2, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    add-float/2addr p1, v3

    iget v3, p0, Lcom/watabou/noosa/Camera;->y:I

    sub-int/2addr p2, v3

    int-to-float p2, p2

    div-float/2addr p2, v1

    iget v1, v2, Lcom/watabou/utils/PointF;->y:F

    add-float/2addr p2, v1

    invoke-direct {v0, p1, p2}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v0
.end method

.method public shake(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/watabou/noosa/Camera;->shakeMagY:F

    iput p1, p0, Lcom/watabou/noosa/Camera;->shakeMagX:F

    .line 2
    iput p2, p0, Lcom/watabou/noosa/Camera;->shakeDuration:F

    iput p2, p0, Lcom/watabou/noosa/Camera;->shakeTime:F

    return-void
.end method

.method public snapTo(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Camera;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/watabou/noosa/Camera;->height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p2, v1

    .line 2
    iput p1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 3
    iput p2, v0, Lcom/watabou/utils/PointF;->y:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/watabou/noosa/Camera;->panIntensity:F

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/watabou/noosa/Camera;->followTarget:Lcom/watabou/noosa/Visual;

    return-void
.end method

.method public update()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Camera;->followTarget:Lcom/watabou/noosa/Visual;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/watabou/noosa/Camera;->panTarget:Lcom/watabou/utils/PointF;

    .line 3
    :cond_0
    iget v0, p0, Lcom/watabou/noosa/Camera;->panIntensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 4
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0}, Lcom/watabou/utils/PointF;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/watabou/noosa/Camera;->panTarget:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    iget-object v4, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v5, v4, Lcom/watabou/utils/PointF;->x:F

    iget v6, p0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    sub-float/2addr v3, v6

    iput v3, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iget v2, v2, Lcom/watabou/utils/PointF;->y:F

    iget v3, v4, Lcom/watabou/utils/PointF;->y:F

    iget v4, p0, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    sget v3, Lcom/watabou/noosa/Game;->elapsed:F

    iget v4, p0, Lcom/watabou/noosa/Camera;->panIntensity:F

    mul-float v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/watabou/utils/PointF;->scale(F)Lcom/watabou/utils/PointF;

    .line 8
    iget-object v2, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    invoke-virtual {v2, v0}, Lcom/watabou/utils/PointF;->offset(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 9
    :cond_1
    iget v0, p0, Lcom/watabou/noosa/Camera;->shakeTime:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/watabou/noosa/Camera;->shakeTime:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 10
    iget v1, p0, Lcom/watabou/noosa/Camera;->shakeDuration:F

    div-float/2addr v0, v1

    .line 11
    iget v1, p0, Lcom/watabou/noosa/Camera;->shakeMagX:F

    neg-float v2, v1

    invoke-static {v2, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/watabou/noosa/Camera;->shakeX:F

    .line 12
    iget v1, p0, Lcom/watabou/noosa/Camera;->shakeMagY:F

    neg-float v2, v1

    invoke-static {v2, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/watabou/noosa/Camera;->shakeY:F

    goto :goto_0

    .line 13
    :cond_2
    iput v1, p0, Lcom/watabou/noosa/Camera;->shakeX:F

    .line 14
    iput v1, p0, Lcom/watabou/noosa/Camera;->shakeY:F

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/watabou/noosa/Camera;->updateMatrix()V

    return-void
.end method

.method public updateMatrix()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Camera;->matrix:[F

    iget v1, p0, Lcom/watabou/noosa/Camera;->zoom:F

    sget v2, Lcom/watabou/noosa/Camera;->invW2:F

    mul-float v3, v1, v2

    const/4 v4, 0x0

    aput v3, v0, v4

    neg-float v1, v1

    .line 2
    sget v3, Lcom/watabou/noosa/Camera;->invH2:F

    mul-float v1, v1, v3

    const/4 v5, 0x5

    aput v1, v0, v5

    .line 3
    iget v1, p0, Lcom/watabou/noosa/Camera;->x:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v6, v2, Lcom/watabou/utils/PointF;->x:F

    iget v7, p0, Lcom/watabou/noosa/Camera;->shakeX:F

    add-float/2addr v6, v7

    aget v4, v0, v4

    mul-float v6, v6, v4

    sub-float/2addr v1, v6

    const/16 v4, 0xc

    aput v1, v0, v4

    .line 4
    iget v1, p0, Lcom/watabou/noosa/Camera;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    iget v1, v2, Lcom/watabou/utils/PointF;->y:F

    iget v2, p0, Lcom/watabou/noosa/Camera;->shakeY:F

    add-float/2addr v1, v2

    aget v2, v0, v5

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    return-void
.end method

.method public zoom(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget v2, p0, Lcom/watabou/noosa/Camera;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    iget v2, p0, Lcom/watabou/noosa/Camera;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 2
    iput p1, p0, Lcom/watabou/noosa/Camera;->zoom:F

    .line 3
    iget v2, p0, Lcom/watabou/noosa/Camera;->screenWidth:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Lcom/watabou/noosa/Camera;->width:I

    .line 4
    iget v2, p0, Lcom/watabou/noosa/Camera;->screenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Lcom/watabou/noosa/Camera;->height:I

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/watabou/noosa/Camera;->snapTo(FF)V

    return-void
.end method
