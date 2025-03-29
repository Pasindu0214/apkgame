.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "SnowParticle.java"


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SnowParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    const v0, 0x3f99999a    # 1.2f

    .line 5
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

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

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    :goto_0
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    .line 3
    iput v0, p0, Lcom/watabou/noosa/Visual;->am:F

    return-void
.end method
