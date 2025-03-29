.class public final Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$SmokeParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "CityLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmokeParticle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    neg-float v2, v2

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v1, v1, v0

    .line 3
    :goto_0
    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
