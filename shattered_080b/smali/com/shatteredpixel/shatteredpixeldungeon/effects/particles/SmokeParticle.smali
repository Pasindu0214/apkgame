.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "SmokeParticle.java"


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

.field public static final SPEW:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle$2;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle$2;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SmokeParticle;->SPEW:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const v0, 0x222222

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, -0x3de00000    # -40.0f

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

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v1, v1, v0

    .line 3
    :goto_0
    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/PseudoPixel;->size(F)V

    return-void
.end method
