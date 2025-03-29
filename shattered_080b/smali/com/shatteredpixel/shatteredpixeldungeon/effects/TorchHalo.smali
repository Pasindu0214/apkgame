.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;
.super Lcom/watabou/noosa/Halo;
.source "TorchHalo.java"


# instance fields
.field public phase:F

.field public target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V
    .locals 3

    const/high16 v0, 0x41a00000    # 20.0f

    const v1, 0xffddcc

    const v2, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/watabou/noosa/Halo;-><init>(FIF)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;->phase:F

    .line 3
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 4
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

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
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;->phase:F

    const/high16 v1, 0x43000000    # 128.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    sget v4, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;->phase:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    add-float v4, v0, v3

    iget v5, p0, Lcom/watabou/noosa/Halo;->radius:F

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    .line 6
    iput v4, v2, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v4, v2, Lcom/watabou/utils/PointF;->y:F

    neg-float v0, v0

    .line 8
    iget v1, p0, Lcom/watabou/noosa/Halo;->brightness:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v2

    if-gez v4, :cond_3

    .line 9
    sget v4, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;->phase:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 10
    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;->phase:F

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;->phase:F

    iget v4, p0, Lcom/watabou/noosa/Halo;->radius:F

    mul-float v4, v4, v2

    div-float/2addr v4, v1

    .line 12
    iput v4, v0, Lcom/watabou/utils/PointF;->x:F

    .line 13
    iput v4, v0, Lcom/watabou/utils/PointF;->y:F

    .line 14
    iget v0, p0, Lcom/watabou/noosa/Halo;->brightness:F

    mul-float v2, v2, v0

    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/TorchHalo;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, v0, Lcom/watabou/noosa/Visual;->x:F

    iget v2, v0, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v1, v0, Lcom/watabou/noosa/Visual;->y:F

    iget v0, v0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/watabou/noosa/Halo;->point(FF)Lcom/watabou/noosa/Halo;

    return-void
.end method
