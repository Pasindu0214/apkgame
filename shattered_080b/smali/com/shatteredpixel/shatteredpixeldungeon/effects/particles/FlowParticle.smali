.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlowParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "FlowParticle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlowParticle$Flow;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x42000000    # 32.0f

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v0, -0x3c4c0000    # -360.0f

    const/high16 v1, 0x43b40000    # 360.0f

    .line 6
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    return-void
.end method


# virtual methods
.method public reset(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    .line 3
    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 4
    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 6
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    .line 7
    iget-object p2, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    .line 8
    iput p1, p2, Lcom/watabou/utils/PointF;->x:F

    .line 9
    iput p1, p2, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    sub-float v2, v1, v0

    :goto_0
    const v3, 0x3f19999a    # 0.6f

    mul-float v2, v2, v3

    .line 3
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v1, v1, v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
