.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShaftParticle;
.super Lcom/watabou/noosa/particles/PixelParticle;
.source "ShaftParticle.java"


# static fields
.field public static final FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;


# instance fields
.field public offs:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShaftParticle$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShaftParticle$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ShaftParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    const v0, 0x3f99999a    # 1.2f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, -0x3f400000    # -6.0f

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

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    sub-float v2, v1, v0

    .line 3
    :goto_0
    iput v2, p0, Lcom/watabou/noosa/Visual;->am:F

    .line 4
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    sub-float/2addr v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    iput v0, v2, Lcom/watabou/utils/PointF;->x:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float v1, v1, v0

    add-float/2addr v1, v0

    .line 5
    iput v1, v2, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method
