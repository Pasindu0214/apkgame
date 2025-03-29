.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification$Speck;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "Identification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Speck"
.end annotation


# direct methods
.method public constructor <init>(FFII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const v0, 0x4488cc

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    mul-int/lit8 p3, p3, 0x3

    int-to-float p3, p3

    add-float/2addr p3, p1

    mul-int/lit8 p4, p4, 0x3

    int-to-float p4, p4

    add-float/2addr p4, p2

    const v0, 0x40c90fda

    .line 3
    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    float-to-double v2, v0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v0, v0, v1

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr p1, v0

    add-float/2addr p2, v1

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    .line 6
    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 7
    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 8
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    .line 9
    iput p3, p1, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iput p4, p1, Lcom/watabou/utils/PointF;->y:F

    .line 11
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    neg-float p2, p3

    const/high16 p3, 0x40800000    # 4.0f

    div-float/2addr p2, p3

    neg-float p4, p4

    div-float/2addr p4, p3

    .line 12
    iput p2, p1, Lcom/watabou/utils/PointF;->x:F

    .line 13
    iput p4, p1, Lcom/watabou/utils/PointF;->y:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 14
    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    mul-float v1, v1, v1

    .line 3
    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v1, v1, v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
