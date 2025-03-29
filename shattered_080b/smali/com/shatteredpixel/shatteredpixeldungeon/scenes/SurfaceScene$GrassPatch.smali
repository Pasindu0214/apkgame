.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;
.super Lcom/watabou/noosa/Image;
.source "SurfaceScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrassPatch"
.end annotation


# instance fields
.field public a:D

.field public angle:D

.field public forward:Z

.field public tx:F

.field public ty:F


# direct methods
.method public constructor <init>(FFZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v0, "surface.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 3
    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->a:D

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    const/16 v1, 0x10

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x58

    const/16 v2, 0x3c

    const/16 v3, 0xe

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/watabou/noosa/Image;->frame(IIII)V

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->tx:F

    .line 6
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->ty:F

    .line 7
    iput-boolean p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->forward:Z

    return-void
.end method


# virtual methods
.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget-wide v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->a:D

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->a:D

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->forward:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    goto :goto_0

    :cond_0
    const-wide v2, -0x4036666666666666L    # -0.2

    :goto_0
    mul-double v0, v0, v2

    iput-wide v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->angle:D

    .line 4
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v2, Lcom/watabou/utils/PointF;->y:F

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->tx:F

    iget-wide v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->angle:D

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/watabou/noosa/Visual;->width:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->ty:F

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    iget v2, p0, Lcom/watabou/noosa/Visual;->height:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public updateMatrix()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->updateMatrix()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget-wide v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;->angle:D

    const-wide v3, 0x3f91df46a0000000L    # 0.01745329238474369

    div-double/2addr v1, v3

    double-to-float v1, v1

    const v2, 0x3c8efa35

    mul-float v1, v1, v2

    float-to-double v1, v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const/4 v3, 0x4

    .line 4
    aget v4, v0, v3

    float-to-double v4, v4

    const/4 v6, 0x0

    aget v6, v0, v6

    neg-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    double-to-float v4, v6

    aput v4, v0, v3

    const/4 v3, 0x5

    .line 5
    aget v4, v0, v3

    float-to-double v4, v4

    const/4 v6, 0x1

    aget v6, v0, v6

    neg-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    double-to-float v1, v6

    aput v1, v0, v3

    return-void
.end method
