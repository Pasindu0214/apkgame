.class public Lcom/watabou/noosa/Visual;
.super Lcom/watabou/noosa/Gizmo;
.source "Visual.java"


# instance fields
.field public aa:F

.field public acc:Lcom/watabou/utils/PointF;

.field public am:F

.field public angle:F

.field public angularSpeed:F

.field public ba:F

.field public bm:F

.field public ga:F

.field public gm:F

.field public height:F

.field public lastA:F

.field public lastH:F

.field public lastOrigin:Lcom/watabou/utils/PointF;

.field public lastScale:Lcom/watabou/utils/PointF;

.field public lastW:F

.field public lastX:F

.field public lastY:F

.field public matrix:[F

.field public origin:Lcom/watabou/utils/PointF;

.field public ra:F

.field public rm:F

.field public scale:Lcom/watabou/utils/PointF;

.field public speed:Lcom/watabou/utils/PointF;

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Gizmo;-><init>()V

    .line 2
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object v0, p0, Lcom/watabou/noosa/Visual;->lastScale:Lcom/watabou/utils/PointF;

    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object v0, p0, Lcom/watabou/noosa/Visual;->lastOrigin:Lcom/watabou/utils/PointF;

    .line 3
    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iput p3, p0, Lcom/watabou/noosa/Visual;->width:F

    .line 6
    iput p4, p0, Lcom/watabou/noosa/Visual;->height:F

    .line 7
    new-instance p1, Lcom/watabou/utils/PointF;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p2}, Lcom/watabou/utils/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 8
    new-instance p1, Lcom/watabou/utils/PointF;

    invoke-direct {p1}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object p1, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 9
    iput-object p1, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    .line 10
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 11
    new-instance p1, Lcom/watabou/utils/PointF;

    invoke-direct {p1}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object p1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    .line 12
    new-instance p1, Lcom/watabou/utils/PointF;

    invoke-direct {p1}, Lcom/watabou/utils/PointF;-><init>()V

    iput-object p1, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    return-void
.end method


# virtual methods
.method public alpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/watabou/noosa/Visual;->am:F

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/watabou/noosa/Visual;->aa:F

    return-void
.end method

.method public brightness(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/watabou/noosa/Visual;->bm:F

    iput p1, p0, Lcom/watabou/noosa/Visual;->gm:F

    iput p1, p0, Lcom/watabou/noosa/Visual;->rm:F

    return-void
.end method

.method public center()Lcom/watabou/utils/PointF;
    .locals 5

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v1, p0, Lcom/watabou/noosa/Visual;->y:F

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    invoke-direct {v0, v2, v4}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v0
.end method

.method public center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;
    .locals 5

    .line 2
    new-instance v0, Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v1, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->height()F

    move-result p1

    sub-float/2addr v4, p1

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    invoke-direct {v0, v2, v4}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v0
.end method

.method public color(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/watabou/noosa/Visual;->bm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->gm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->rm:F

    .line 2
    iput p1, p0, Lcom/watabou/noosa/Visual;->ra:F

    .line 3
    iput p2, p0, Lcom/watabou/noosa/Visual;->ga:F

    .line 4
    iput p3, p0, Lcom/watabou/noosa/Visual;->ba:F

    return-void
.end method

.method public color(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 5
    invoke-virtual {p0, v0, v2, p1}, Lcom/watabou/noosa/Visual;->color(FFF)V

    return-void
.end method

.method public draw()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/watabou/noosa/Visual;->lastX:F

    iget v1, p0, Lcom/watabou/noosa/Visual;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/watabou/noosa/Visual;->lastY:F

    iget v1, p0, Lcom/watabou/noosa/Visual;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/watabou/noosa/Visual;->lastW:F

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/watabou/noosa/Visual;->lastH:F

    iget v1, p0, Lcom/watabou/noosa/Visual;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/watabou/noosa/Visual;->lastA:F

    iget v1, p0, Lcom/watabou/noosa/Visual;->angle:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/watabou/noosa/Visual;->lastScale:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget-object v2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    iget v1, v2, Lcom/watabou/utils/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/watabou/noosa/Visual;->lastOrigin:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget-object v2, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    iget v1, v2, Lcom/watabou/utils/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/watabou/noosa/Visual;->x:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->lastX:F

    .line 3
    iget v0, p0, Lcom/watabou/noosa/Visual;->y:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->lastY:F

    .line 4
    iget v0, p0, Lcom/watabou/noosa/Visual;->width:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->lastW:F

    .line 5
    iget v0, p0, Lcom/watabou/noosa/Visual;->height:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->lastH:F

    .line 6
    iget v0, p0, Lcom/watabou/noosa/Visual;->angle:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->lastA:F

    .line 7
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->lastScale:Lcom/watabou/utils/PointF;

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 9
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->lastOrigin:Lcom/watabou/utils/PointF;

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 11
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->updateMatrix()V

    :cond_1
    return-void
.end method

.method public hardlight(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/watabou/noosa/Visual;->ba:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->ga:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->ra:F

    .line 2
    iput p1, p0, Lcom/watabou/noosa/Visual;->rm:F

    .line 3
    iput p2, p0, Lcom/watabou/noosa/Visual;->gm:F

    .line 4
    iput p3, p0, Lcom/watabou/noosa/Visual;->bm:F

    return-void
.end method

.method public hardlight(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x10

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 5
    invoke-virtual {p0, v0, v2, p1}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    return-void
.end method

.method public height()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/noosa/Visual;->height:F

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    mul-float v0, v0, v1

    return v0
.end method

.method public isVisible()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-boolean v2, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v2, p0, Lcom/watabou/noosa/Visual;->angle:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    return v4

    .line 4
    :cond_1
    iget v2, p0, Lcom/watabou/noosa/Visual;->x:F

    iget-object v3, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v3, v3, Lcom/watabou/utils/PointF;->x:F

    iget v5, v0, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    return v1

    :cond_2
    cmpl-float v3, v2, v3

    if-gez v3, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    add-float/2addr v3, v2

    iget-object v2, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v2, v2, Lcom/watabou/utils/PointF;->x:F

    cmpl-float v2, v3, v2

    if-gez v2, :cond_3

    return v1

    .line 6
    :cond_3
    iget v2, p0, Lcom/watabou/noosa/Visual;->y:F

    iget-object v3, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v3, v3, Lcom/watabou/utils/PointF;->y:F

    iget v5, v0, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, v2, v5

    if-lez v5, :cond_4

    return v1

    :cond_4
    cmpl-float v3, v2, v3

    if-gez v3, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    add-float/2addr v3, v2

    iget-object v0, v0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    cmpl-float v0, v3, v0

    if-gez v0, :cond_5

    return v1

    :cond_5
    return v4

    :cond_6
    :goto_0
    return v1
.end method

.method public overlapsPoint(FF)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/watabou/noosa/Visual;->x:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    iget-object v2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    mul-float v1, v1, v3

    add-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iget p1, p0, Lcom/watabou/noosa/Visual;->y:F

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/watabou/noosa/Visual;->height:F

    iget v1, v2, Lcom/watabou/utils/PointF;->y:F

    mul-float v0, v0, v1

    add-float/2addr v0, p1

    cmpg-float p1, p2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public overlapsScreenPoint(II)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/watabou/noosa/Camera;->screenToCamera(II)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 3
    iget p2, p1, Lcom/watabou/utils/PointF;->x:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {p0, p2, p1}, Lcom/watabou/noosa/Visual;->overlapsPoint(FF)Z

    move-result p1

    return p1
.end method

.method public point()Lcom/watabou/utils/PointF;
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->x:F

    iget v2, p0, Lcom/watabou/noosa/Visual;->y:F

    invoke-direct {v0, v1, v2}, Lcom/watabou/utils/PointF;-><init>(FF)V

    return-object v0
.end method

.method public point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;
    .locals 1

    .line 2
    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v0, p1, Lcom/watabou/utils/PointF;->y:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    return-object p1
.end method

.method public resetColor()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->bm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->gm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->rm:F

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/watabou/noosa/Visual;->aa:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->ba:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->ga:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->ra:F

    return-void
.end method

.method public tint(FFFF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    .line 1
    iput v0, p0, Lcom/watabou/noosa/Visual;->bm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->gm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->rm:F

    mul-float p1, p1, p4

    .line 2
    iput p1, p0, Lcom/watabou/noosa/Visual;->ra:F

    mul-float p2, p2, p4

    .line 3
    iput p2, p0, Lcom/watabou/noosa/Visual;->ga:F

    mul-float p3, p3, p4

    .line 4
    iput p3, p0, Lcom/watabou/noosa/Visual;->ba:F

    return-void
.end method

.method public tint(I)V
    .locals 2

    const v0, 0xffffff

    and-int/2addr v0, p1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/watabou/noosa/Visual;->tint(IF)V

    return-void
.end method

.method public tint(IF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 5
    iput v0, p0, Lcom/watabou/noosa/Visual;->bm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->gm:F

    iput v0, p0, Lcom/watabou/noosa/Visual;->rm:F

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    mul-float v0, v0, p2

    .line 6
    iput v0, p0, Lcom/watabou/noosa/Visual;->ra:F

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float v0, v0, p2

    .line 7
    iput v0, p0, Lcom/watabou/noosa/Visual;->ga:F

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float p1, p1, p2

    .line 8
    iput p1, p0, Lcom/watabou/noosa/Visual;->ba:F

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->x:F

    sget v4, Lcom/watabou/noosa/Game;->elapsed:F

    mul-float v0, v0, v4

    add-float/2addr v0, v3

    iput v0, v2, Lcom/watabou/utils/PointF;->x:F

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    .line 4
    iget v2, p0, Lcom/watabou/noosa/Visual;->x:F

    sget v3, Lcom/watabou/noosa/Game;->elapsed:F

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v3, v2, Lcom/watabou/utils/PointF;->y:F

    sget v4, Lcom/watabou/noosa/Game;->elapsed:F

    mul-float v0, v0, v4

    add-float/2addr v0, v3

    iput v0, v2, Lcom/watabou/utils/PointF;->y:F

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 8
    iget v2, p0, Lcom/watabou/noosa/Visual;->y:F

    sget v3, Lcom/watabou/noosa/Game;->elapsed:F

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 9
    :cond_3
    iget v0, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    .line 10
    iget v1, p0, Lcom/watabou/noosa/Visual;->angle:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->angle:F

    :cond_4
    return-void
.end method

.method public updateMatrix()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-static {v0}, Lcom/watabou/glwrap/Matrix;->setIdentity([F)V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget v1, p0, Lcom/watabou/noosa/Visual;->x:F

    iget v2, p0, Lcom/watabou/noosa/Visual;->y:F

    invoke-static {v0, v1, v2}, Lcom/watabou/glwrap/Matrix;->translate([FFF)V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v3, v1, Lcom/watabou/utils/PointF;->x:F

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    invoke-static {v0, v3, v1}, Lcom/watabou/glwrap/Matrix;->translate([FFF)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/watabou/noosa/Visual;->angle:F

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-static {v1, v0}, Lcom/watabou/glwrap/Matrix;->rotate([FF)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v3, v1, Lcom/watabou/utils/PointF;->x:F

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    invoke-static {v0, v3, v1}, Lcom/watabou/glwrap/Matrix;->scale([FFF)V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    neg-float v2, v2

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    neg-float v1, v1

    invoke-static {v0, v2, v1}, Lcom/watabou/glwrap/Matrix;->translate([FFF)V

    :cond_6
    return-void
.end method

.method public width()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/noosa/Visual;->width:F

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, v1, Lcom/watabou/utils/PointF;->x:F

    mul-float v0, v0, v1

    return v0
.end method
