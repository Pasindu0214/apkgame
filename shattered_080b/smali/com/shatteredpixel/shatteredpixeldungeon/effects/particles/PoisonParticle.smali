.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PoisonParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "PoisonParticle.java"


# static fields
.field public static final SPLASH:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PoisonParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PoisonParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PoisonParticle;->SPLASH:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

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

    const/high16 v1, 0x41f00000    # 30.0f

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

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

    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    .line 3
    iget v0, p0, Lcom/watabou/noosa/Visual;->am:F

    const v1, 0xff00

    const v2, 0x8844ff

    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->interpolate(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    return-void
.end method
