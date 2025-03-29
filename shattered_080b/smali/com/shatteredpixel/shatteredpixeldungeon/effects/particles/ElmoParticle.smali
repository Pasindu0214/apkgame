.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;
.super Lcom/watabou/noosa/particles/PixelParticle$Shrinking;
.source "ElmoParticle.java"


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;-><init>()V

    const v0, 0x22ee66

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const v0, 0x3f19999a    # 0.6f

    .line 3
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, -0x3d600000    # -80.0f

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/particles/PixelParticle$Shrinking;->update()V

    .line 2
    iget v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iget v1, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    sub-float/2addr v1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v1, v1, v0

    .line 3
    :cond_0
    iput v1, p0, Lcom/watabou/noosa/Visual;->am:F

    return-void
.end method
