.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "SparkParticle.java"


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final STATIC:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->STATIC:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x42480000    # 50.0f

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public reset(FF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 2
    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 4
    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    const/high16 p1, 0x3f000000    # 0.5f

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    invoke-static {p1, p2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p1

    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    .line 6
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const p2, 0x40490fda

    invoke-static {p2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p2

    neg-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    return-void
.end method

.method public resetStatic(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->reset(FF)V

    const/high16 p1, 0x3e800000    # 0.25f

    const/high16 p2, 0x3f000000    # 0.5f

    .line 2
    invoke-static {p1, p2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result p1

    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    iput p1, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    .line 3
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 p2, 0x0

    .line 4
    iput p2, p1, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    .line 6
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    .line 7
    iput p2, p1, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iput p2, p1, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->size:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
