.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;
.super Lcom/watabou/noosa/Halo;
.source "ShieldHalo.java"


# instance fields
.field public phase:F

.field public target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->height()F

    move-result v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0xbbaacc

    invoke-direct {p0, v0, v2, v1}, Lcom/watabou/noosa/Halo;-><init>(FIF)V

    const v0, -0x41570a3d    # -0.33f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    const v0, 0x3ea8f5c3    # 0.33f

    .line 3
    iput v0, p0, Lcom/watabou/noosa/Visual;->aa:F

    .line 4
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;->phase:F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setLightMode()V

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Image;->draw()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;->phase:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 3
    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;->phase:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/watabou/noosa/Halo;->radius:F

    mul-float v3, v3, v4

    const/high16 v4, 0x43000000    # 128.0f

    div-float/2addr v3, v4

    .line 6
    iput v3, v2, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v3, v2, Lcom/watabou/utils/PointF;->y:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v2, v2, v0

    .line 8
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    mul-float v0, v0, v1

    .line 9
    iput v0, p0, Lcom/watabou/noosa/Visual;->aa:F

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShieldHalo;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    .line 12
    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    invoke-virtual {p0, v1, v0}, Lcom/watabou/noosa/Halo;->point(FF)Lcom/watabou/noosa/Halo;

    :cond_2
    return-void
.end method
