.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene$PixelCamera;
.super Lcom/watabou/noosa/Camera;
.source "PixelScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PixelCamera"
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 13

    .line 1
    sget v0, Lcom/watabou/noosa/Game;->width:I

    int-to-double v1, v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-double v3, v0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    double-to-int v0, v1

    div-int/lit8 v8, v0, 0x2

    sget v0, Lcom/watabou/noosa/Game;->height:I

    int-to-double v1, v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-double v3, v0

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    double-to-int v0, v1

    div-int/lit8 v9, v0, 0x2

    sget v0, Lcom/watabou/noosa/Game;->width:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v10, v0

    sget v0, Lcom/watabou/noosa/Game;->height:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v11, v0

    move-object v7, p0

    move v12, p1

    .line 6
    invoke-direct/range {v7 .. v12}, Lcom/watabou/noosa/Camera;-><init>(IIIIF)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/watabou/noosa/Camera;->fullScreen:Z

    return-void
.end method


# virtual methods
.method public updateMatrix()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    iget v1, p0, Lcom/watabou/noosa/Camera;->shakeX:F

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/watabou/noosa/Camera;->scroll:Lcom/watabou/utils/PointF;

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    iget v2, p0, Lcom/watabou/noosa/Camera;->shakeY:F

    add-float/2addr v1, v2

    invoke-static {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Camera;F)F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/watabou/noosa/Camera;->matrix:[F

    iget v3, p0, Lcom/watabou/noosa/Camera;->zoom:F

    sget v4, Lcom/watabou/noosa/Camera;->invW2:F

    mul-float v4, v4, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    neg-float v3, v3

    .line 4
    sget v4, Lcom/watabou/noosa/Camera;->invH2:F

    mul-float v3, v3, v4

    const/4 v4, 0x5

    aput v3, v2, v4

    .line 5
    iget v3, p0, Lcom/watabou/noosa/Camera;->x:I

    int-to-float v3, v3

    sget v6, Lcom/watabou/noosa/Camera;->invW2:F

    mul-float v3, v3, v6

    const/high16 v6, -0x40800000    # -1.0f

    add-float/2addr v3, v6

    aget v5, v2, v5

    mul-float v0, v0, v5

    sub-float/2addr v3, v0

    const/16 v0, 0xc

    aput v3, v2, v0

    .line 6
    iget v0, p0, Lcom/watabou/noosa/Camera;->y:I

    int-to-float v0, v0

    sget v3, Lcom/watabou/noosa/Camera;->invH2:F

    mul-float v0, v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    aget v0, v2, v4

    mul-float v1, v1, v0

    sub-float/2addr v3, v1

    const/16 v0, 0xd

    aput v3, v2, v0

    return-void
.end method
