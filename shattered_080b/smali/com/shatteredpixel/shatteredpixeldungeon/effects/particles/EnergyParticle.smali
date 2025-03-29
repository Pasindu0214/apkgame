.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EnergyParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "EnergyParticle.java"


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EnergyParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EnergyParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/EnergyParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    const v0, 0xffffaa

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const v1, 0x40c90fda

    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

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

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    mul-float v0, v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 3
    :goto_0
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 4
    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    mul-float v1, v1, v0

    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v1, v0

    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
